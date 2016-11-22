//////////////////////////////////////////////////////////////////////////////
//
//  Xilinx, Inc. 2009                 www.xilinx.com
//
//  XAPP xyz
//
//////////////////////////////////////////////////////////////////////////////
//
//  File name :       dvi_encoder.v
//
//  Description :     dvi_encoder 
//
//  Date - revision : April 2009 - 1.0.0
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
//  Copyright © 2009 Xilinx, Inc.
//  All rights reserved
//
//////////////////////////////////////////////////////////////////////////////
// Modifications copyright (c) 2011, Andrew "bunnie" Huang
// All rights reserved as permitted by law.
//
// Redistribution and use in source and binary forms, with or without modification, 
// are permitted provided that the following conditions are met:
//
//  * Redistributions of source code must retain the above copyright notice, 
//    this list of conditions and the following disclaimer.
//  * Redistributions in binary form must reproduce the above copyright notice, 
//    this list of conditions and the following disclaimer in the documentation and/or 
//    other materials provided with the distribution.
//
//    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
//    EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES 
//    OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
//    SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, 
//    INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
//    LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR 
//    PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
//    WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
//    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
//    POSSIBILITY OF SUCH DAMAGE.
//
//////////////////////////////////////////////////////////////////////////////
`timescale 1 ns / 1ps

module dvi_encoder (
  input wire 	    p_clk, // pixel clock
  input wire 	    px5_clk, // pixel clock x2
  input wire 	    reset, // reset
  input wire [7:0]  blue_din, // Blue data in
  input wire [7:0]  green_din, // Green data in
  input wire [7:0]  red_din, // Red data in
  input wire 	    hsync, // hsync data
  input wire 	    vsync, // vsync data
  input wire 	    de, // data enable
  output wire 	    TMDS_0_P,
  output wire 	    TMDS_0_N,
  output wire 	    TMDS_1_P,
  output wire 	    TMDS_1_N,
  output wire 	    TMDS_2_P,
  output wire 	    TMDS_2_N,
  output wire 	    TMDS_CLK_P,
  output wire 	    TMDS_CLK_N,
  input wire 	    vid_gb,
  input wire 	    dat_gb,
  input wire 	    dat_ena,
  input wire [3:0]  blue_di,
  input wire [3:0]  green_di,
  input wire [3:0]  red_di,
  input wire [3:0]  ctl_code,
  input wire [29:0] bypass_sdata,
  input wire 	    bypass_ena,
  input wire 	    bypass_video_only
);
    
  wire 	[9:0]	red ;
  wire 	[9:0]	green ;
  wire 	[9:0]	blue ;

   wire [9:0] 	red_t4 ;
   wire [9:0] 	green_t4 ;
   wire [9:0] 	blue_t4 ;

  wire [4:0] tmds_data0, tmds_data1, tmds_data2;
  wire [2:0] tmdsint;

   wire [29:0] s_data;
   
   wire      tmds_out_0;
   wire      tmds_out_1;
   wire      tmds_out_2;
   wire      tmds_out_clk;

   wire      vid_pa;
   wire      dat_pa;

   wire [9:0] dat_din;
   
   assign vid_pa = (ctl_code[3:0] == 4'b0001);
   assign dat_pa = (ctl_code[3:0] == 4'b0101);

   assign dat_din = {blue_di[1:0],red_di[3:0],green_di[3:0]};
      
   serialiser_10_to_1 ser_ch0(
			      .clk(p_clk),
			      .clk_x5(px5_clk),
			      .reset(reset),
			      .data(s_data[9:0]),
			      .serial(tmds_out_0)
			      );
   
   serialiser_10_to_1 ser_ch1(
			      .clk(p_clk),
			      .clk_x5(px5_clk),
			      .reset(reset),
			      .data(s_data[19:10]),
			      .serial(tmds_out_1)
			      );
   
   serialiser_10_to_1 ser_ch2(
			      .clk(p_clk),
			      .clk_x5(px5_clk),
			      .reset(reset),
			      .data(s_data[29:20]),
			      .serial(tmds_out_2)
			      );
   
   serialiser_10_to_1 ser_clk(
			      .clk(p_clk),
			      .clk_x5(px5_clk),
			      .reset(reset),
			      .data(10'b0000011111),
			      .serial(tmds_out_clk)
			      );

  OBUFDS TMDS0 (.I(tmds_out_0), .O(TMDS_0_P), .OB(TMDS_0_N)) ;
  OBUFDS TMDS1 (.I(tmds_out_1), .O(TMDS_1_P), .OB(TMDS_1_N)) ;
  OBUFDS TMDS2 (.I(tmds_out_2), .O(TMDS_2_P), .OB(TMDS_2_N)) ;
  OBUFDS TMDS3 (.I(tmds_out_clk), .O(TMDS_CLK_P), .OB(TMDS_CLK_N)) ; // clock

  encodeb encb (
    .clkin	(p_clk),
    .rstin	(reset),
    .din		(blue_din),
    .c0			(hsync),
    .c1			(vsync),
    .de			(de),
    .dout		(blue),
    .vid_gb             (vid_gb)) ;

  encodeg encg (
    .clkin	(p_clk),
    .rstin	(reset),
    .din		(green_din),
    .c0			(ctl_code[0]), // bit 0
    .c1			(ctl_code[1]), // bit 1
    .de			(de),
    .dout		(green),
    .vid_gb             (vid_gb)) ;
    
  encoder encr (
    .clkin	(p_clk),
    .rstin	(reset),
    .din		(red_din),
    .c0			(ctl_code[2]), // bit 2
    .c1			(ctl_code[3]), // bit 3
    .de			(de),
    .dout		(red),
    .vid_gb             (vid_gb)) ;

encode_terc4 engb_t4
  (     .clkin    (p_clk),
	.rstin    (reset),
	.din      ( {dat_din[9] | dat_gb, dat_din[8] | dat_gb, vsync, hsync} ),
	.dout     (blue_t4),
	.dat_gb   (1'b0)  // gb is considered with sync
   );
  
encode_terc4 encg_t4 
  (     .clkin    (p_clk),
	.rstin    (reset),
	.din      (dat_din[3:0]),
	.dout     (green_t4),
	.dat_gb   (dat_gb)
   );

encode_terc4 encr_t4 
  (     .clkin    (p_clk),
	.rstin    (reset),
	.din      (dat_din[7:4]),
	.dout     (red_t4),
	.dat_gb   (dat_gb)
   );
   
   // pipe alignment
   reg 		dat_ena_q, dat_ena_reg, dat_ena_r2;
   reg          dat_gb_q, dat_gb_reg, dat_gb_r2;
   
   always @(posedge p_clk) begin
	 dat_ena_q <= dat_ena;
	 dat_ena_reg <= dat_ena_q;
	 dat_ena_r2 <= dat_ena_reg;
	 
	 dat_gb_q <= dat_gb;
	 dat_gb_reg <= dat_gb_q;
	 dat_gb_r2 <= dat_gb_reg;
   end

   // insert four pipe stages to s_data override
   reg [29:0] byp_sd1;
   reg [29:0] byp_sd2;
   reg [29:0] byp_sd3;
   reg [29:0] byp_sd4;
   reg [29:0] byp_sd5;
   reg [4:0]  bypass_q;
   always @(posedge p_clk) begin
      byp_sd1 <= bypass_sdata;
      byp_sd2 <= byp_sd1;
      byp_sd3 <= byp_sd2;
      byp_sd4 <= byp_sd3;
      byp_sd5 <= byp_sd4;

      bypass_q[4] <= bypass_q[3];
      bypass_q[3] <= bypass_q[2];
      bypass_q[2] <= bypass_q[1];
      bypass_q[1] <= bypass_q[0];
      bypass_q[0] <= bypass_ena || (bypass_video_only & !de);
   end // always @ (posedge p_clk)

   assign s_data = bypass_q[4] ? byp_sd5 : {red, green, blue};
   
endmodule

/*
 TCL script to update IP ports
 
 ipx::remove_all_port [ipx::current_core]
ipx::add_ports_from_hdl [ipx::current_core] -top_level_hdl_file F:/largework/fpga/netv2/dvi_encoder_v2/dvi_encoder_v2.srcs/sources_1/imports/srcs-origin/dvi_encoder_v2.v -top_module_name dvi_encoder
ipx::add_port_map RST [ipx::get_bus_interfaces rstin -of_objects [ipx::current_core]]
set_property physical_name reset [ipx::get_port_maps RST -of_objects [ipx::get_bus_interfaces rstin -of_objects [ipx::current_core]]]
ipx::add_port_map CLK [ipx::get_bus_interfaces p_clk -of_objects [ipx::current_core]]
set_property physical_name p_clk [ipx::get_port_maps CLK -of_objects [ipx::get_bus_interfaces p_clk -of_objects [ipx::current_core]]]
ipx::add_port_map CLK [ipx::get_bus_interfaces px5_clk -of_objects [ipx::current_core]]
set_property physical_name px5_clk [ipx::get_port_maps CLK -of_objects [ipx::get_bus_interfaces px5_clk -of_objects [ipx::current_core]]]
 */
