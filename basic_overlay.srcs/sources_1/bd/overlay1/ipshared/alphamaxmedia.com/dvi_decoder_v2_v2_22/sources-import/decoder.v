//////////////////////////////////////////////////////////////////////////////
//
//  Xilinx, Inc. 2010                 www.xilinx.com
//
//  XAPP xxx
//
//////////////////////////////////////////////////////////////////////////////
//
//  File name :       decoder.v
//
//  Description :     Spartan-6 dvi decoder 
//
//
//  Author :          Bob Feng
//
//  Disclaimer: LIMITED WARRANTY AND DISCLAMER. These designs are
//              provided to you "as is". Xilinx and its licensors makeand you
//              receive no warranties or conditions, express, implied,
//              statutory or otherwise, and Xilinx specificallydisclaims any
//              implied warranties of merchantability, non-infringement,or
//              fitness for a particular purpose. Xilinx does notwarrant that
//              the functions contained in these designs will meet your
//              requirements, or that the operation of these designswill be
//              uninterrupted or error free, or that defects in theDesigns
//              will be corrected. Furthermore, Xilinx does not warrantor
//              make any representations regarding use or the results ofthe
//              use of the designs in terms of correctness, accuracy,
//              reliability, or otherwise.
//
//              LIMITATION OF LIABILITY. In no event will Xilinx or its
//              licensors be liable for any loss of data, lost profits,cost
//              or procurement of substitute goods or services, or forany
//              special, incidental, consequential, or indirect damages
//              arising from the use or operation of the designs or
//              accompanying documentation, however caused and on anytheory
//              of liability. This limitation will apply even if Xilinx
//              has been advised of the possibility of such damage. This
//              limitation shall apply not-withstanding the failure ofthe
//              essential purpose of any limited remedies herein.
//
//  Copyright © 2004 Xilinx, Inc.
//  All rights reserved
//
//////////////////////////////////////////////////////////////////////////////
`timescale 1 ns / 1ps

module decoder (
  input wire 	     reset, //
  input wire 	     pclk, //  pixel clock
  input wire         pclkx1p25, // pixel clock x1.25
  input wire 	     pclkx5, //  pixel clock x5
  input wire 	     din_p, //  data from hdmi, raw pins, ibufds inside serdes_1_10 block
  input wire 	     din_n, //  data from hdmi, raw pins
  input wire 	     other_ch0_vld, //  other channel0 has valid data now
  input wire 	     other_ch1_vld, //  other channel1 has valid data now
  input wire 	     other_ch0_rdy, //  other channel0 has detected a valid starting pixel
  input wire 	     other_ch1_rdy, //  other channel1 has detected a valid starting pixel

  output wire 	     iamvld, //  I have valid data now
  output wire 	     iamrdy, //  I have detected a valid new pixel
  output wire 	     psalgnerr, //  Phase alignment error
  output reg 	     c0,
  output reg 	     c1,
  output reg 	     de, 
  output reg [9:0]   sdout,
  output reg [7:0]   dout,
  output reg 	     dgb,
  output reg 	     vgb,
  output reg 	     ctl_vld,
  output wire 	     line_end,

  output wire [31:0] eye_info,
  output wire [31:0] debug_phase
		);

  ////////////////////////////////
  //
  // bitslip signal sync to pclkx1p25
  //
  ////////////////////////////////
   reg 		     bitslipx1p25 = 1'b0;
   reg 		     bitslip_q = 1'b0;
   reg 		     bitslip_q2 = 1'b0;
   reg 		     bitslip_q3 = 1'b0;
   reg 		     bitslip_qn = 1'b0;
   
   wire 	     bitslip;

   always @ (negedge pclkx1p25) begin
      bitslip_qn <= bitslip;
   end
   
   always @ (posedge pclkx1p25) begin
      bitslip_q <= bitslip;
      bitslip_q2 <= bitslip_q || bitslip_qn; // eliminate glitch on 1.25x worst-case sync timing
      bitslip_q3 <= bitslip_q2;
      bitslipx1p25 <= bitslip_q2 & !bitslip_q3;
   end
   
   wire [9:0] rawdata;

  /////////////////////////////////////////////
  //
  // 1:10 de-serializer working at x5 pclk rate
  //
  /////////////////////////////////////////////
   serdes_1_10_diff des_0 (
		      .pclk(pclk),
		      .bitslip(bitslipx1p25),
		      .pclkx5(pclkx5),
		      .pclkx1p25(pclkx1p25),
		      .din_p(din_p),
		      .din_n(din_n),
		      .reset(reset),
		      .dout(rawdata),
		      .eye_info(eye_info),
		      .m_delay_1hot(debug_phase)
		      );

  ///////////////////////////////////////
  // Phase Alignment Instance
  ///////////////////////////////////////
  phsaligner phsalgn_0 (
     .rst(reset),
     .clk(pclk),
     .sdata(rawdata),
     .bitslip(bitslip),
     .flipgear(flipgear),
     .psaligned(iamvld)
   );

  assign psalgnerr = 1'b0;

  ///////////////////////////////////////
  // Per Channel De-skew Instance
  ///////////////////////////////////////
  wire [9:0] sdata;
  chnlbond cbnd (
    .clk(pclk),
    .rawdata(rawdata),
    .iamvld(iamvld),
    .other_ch0_vld(other_ch0_vld),
    .other_ch1_vld(other_ch1_vld),
    .other_ch0_rdy(other_ch0_rdy),
    .other_ch1_rdy(other_ch1_rdy),
    .iamrdy(iamrdy),
    .sdata(sdata)
  );

   ////------- common above
   ////------- variant below

   ////
   // hack to accelerate detection of line end so that HDCP rekey
   // can meet stringent timing spec requirement
   ////
   assign line_end = de &&
		     ((sdata == CTRLTOKEN0) ||
		      (sdata == CTRLTOKEN1) ||
		      (sdata == CTRLTOKEN2) ||
		      (sdata == CTRLTOKEN3));
   
  /////////////////////////////////////////////////////////////////
  // Below performs the 10B-8B decoding function defined in DVI 1.0
  // Specification: Section 3.3.3, Figure 3-6, page 31. 
  /////////////////////////////////////////////////////////////////
  // Distinct Control Tokens
  parameter CTRLTOKEN0 = 10'b1101010100;
  parameter CTRLTOKEN1 = 10'b0010101011;
  parameter CTRLTOKEN2 = 10'b0101010100;
  parameter CTRLTOKEN3 = 10'b1010101011;

  parameter DATA_GB    = 10'b0100110011;
  parameter VID_B_GB   = 10'b1011001100;
  parameter VID_G_GB   = 10'b0100110011;
  parameter VID_R_GB   = 10'b1011001100;

  wire [7:0] data;
   genvar    i;
   generate
      for( i = 0; i <= 7; i = i + 1 ) begin : genloop
	 assign data[i] = sdata[9] ? !sdata[i] : sdata[i];
      end
   endgenerate
//  assign data = (sdata[9]) ? ~sdata[7:0] : sdata[7:0]; 

  always @ (posedge pclk) begin
    if(iamrdy && other_ch0_rdy && other_ch1_rdy) begin
      case (sdata) 
        CTRLTOKEN0: begin
          c0 <=#1 1'b0;
          c1 <=#1 1'b0;
          de <=#1 1'b0;
           dgb <= #1 1'b0;
	   vgb <= #1 1'b0;
	   ctl_vld <= #1 1'b1;
        end

        CTRLTOKEN1: begin
          c0 <=#1 1'b1;
          c1 <=#1 1'b0;
          de <=#1 1'b0;
           dgb <= #1 1'b0;
	   vgb <= #1 1'b0;
	   ctl_vld <= #1 1'b1;
        end

        CTRLTOKEN2: begin
          c0 <=#1 1'b0;
          c1 <=#1 1'b1;
          de <=#1 1'b0;
           dgb <= #1 1'b0;
	   vgb <= #1 1'b0;
	   ctl_vld <= #1 1'b1;
        end
        
        CTRLTOKEN3: begin
          c0 <=#1 1'b1;
          c1 <=#1 1'b1;
          de <=#1 1'b0;
           dgb <= #1 1'b0;
	   vgb <= #1 1'b0;
	   ctl_vld <= #1 1'b1;
        end

	DATA_GB: begin
	   c0 <=#1 1'b0;
	   c1 <=#1 1'b0;
	   de <=#1 1'b0;
           dgb <= #1 1'b1;
	   vgb <= #1 1'b0;
	   ctl_vld <= #1 1'b0;
	end

	VID_R_GB: begin
	   c0 <=#1 1'b0;
	   c1 <=#1 1'b0;
	   de <=#1 1'b0;
           dgb <= #1 1'b0;
	   vgb <= #1 1'b1;
	   ctl_vld <= #1 1'b0;
	end
        
        default: begin 
          dout[0] <=#1 data[0];
          dout[1] <=#1 (sdata[8]) ? (data[1] ^ data[0]) : (data[1] ~^ data[0]);
          dout[2] <=#1 (sdata[8]) ? (data[2] ^ data[1]) : (data[2] ~^ data[1]);
          dout[3] <=#1 (sdata[8]) ? (data[3] ^ data[2]) : (data[3] ~^ data[2]);
          dout[4] <=#1 (sdata[8]) ? (data[4] ^ data[3]) : (data[4] ~^ data[3]);
          dout[5] <=#1 (sdata[8]) ? (data[5] ^ data[4]) : (data[5] ~^ data[4]);
          dout[6] <=#1 (sdata[8]) ? (data[6] ^ data[5]) : (data[6] ~^ data[5]);
          dout[7] <=#1 (sdata[8]) ? (data[7] ^ data[6]) : (data[7] ~^ data[6]);

          de <=#1 1'b1;

           dgb <= #1 1'b0;
	   vgb <= #1 1'b0;
	   ctl_vld <= #1 1'b0;
        end                                                                      
      endcase                                                                    

      sdout <=#1 sdata;
    end else begin
      c0 <= 1'b0;
      c1 <= 1'b0;
      de <= 1'b0;
      dout <= 8'h0;
      sdout <= 10'h0;

       dgb <= 1'b0;
       vgb <= 1'b0;
       ctl_vld <= 1'b0;
    end
  end
endmodule
