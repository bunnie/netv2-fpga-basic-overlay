//////////////////////////////////////////////////////////////////////////////
//
//  Alphamax LLC NeTV2 dvi decoder for Artix FPGAs
//  GPLv3 / 2016
//
//////////////////////////////////////////////////////////////////////////////
//
//  Inspried by Spartan-6 code from a Xilinx XAPP by Bob Feng, but modified beyond recognition...
//
//////////////////////////////////////////////////////////////////////////////
`timescale 1 ns / 1ps

module dvi_decoder (
  input wire 	     rx_clk, // tmds clock, already as BUFG
  input wire 	     blue_p, // Blue data in
  input wire 	     blue_n,
  input wire 	     green_p, // Green data in
  input wire 	     green_n,
  input wire 	     red_p, // Red data in
  input wire 	     red_n,
		    
  input wire 	     ex_reset, // external reset input, e.g. reset button

  input wire 	     mhz200_clk, // 200 MHz clock input for IDELAY calibration
  output reg 	     reset, // rx reset
  output wire 	     p_clk, // regenerated pixel clock
  output wire 	     px5_clk, // 5x pixel as IOCLK, to be used /only/ by IOSERDES (placement errors otherwise)
  output wire        px1p25_dbg_clk,  // 1.25x pixel clock, for debug purposes only

  output wire 	     pll_lckd, // send pll_lckd out so it can be fed into a different BUFPLL

  output reg 	     hsync, // hsync data
  output reg 	     vsync, // vsync data
  output reg 	     de, // data enable
  output wire 	     basic_de, // a DE that strobes even during data guardbands
  
  output wire 	     blue_vld,
  output wire 	     green_vld,
  output wire 	     red_vld,
  output wire 	     blue_rdy,
  output wire 	     green_rdy,
  output wire 	     red_rdy,

  output wire 	     psalgnerr,

  output wire [29:0] sdout, // note this comes 2 pixclk earlier than pix colors
  output wire [7:0]   red, // pixel data out
  output wire [7:0]   green, // pixel data out
  output wire [7:0]   blue, // pixel data out

  output reg 	     encoding, // high when data island is valid
  output wire 	     hdcp_ena, // OR of data and video encyrption internal signals
  output wire [3:0]  red_di, // red data island
  output wire [3:0]  green_di, // green data island
  output wire [3:0]  blue_di, // blue data island
  output reg 	     data_gb, // guardbands
  output reg 	     video_gb,
  output reg [3:0]   ctl_code, // control code
  output reg 	     cv,
  output wire 	     line_end, // fast-track signal that line ends for HDCP rekey
	   
  output wire [31:0] green_eye, // eye-centering state machine status & debug
  output wire [31:0] blue_eye,
  output wire [31:0] red_eye,
  output wire [31:0] green_debug,
  output wire [31:0] blue_debug,
  output wire [31:0] red_debug
		    ) ; 


   wire 	    g_dgb, b_dgb, r_dgb;
   wire 	    g_vgb, b_vgb, r_vgb;
   wire             g_cv, b_cv, r_cv;

   wire [3:0] 	    r_t4;
   wire [3:0] 	    b_t4;
   wire [3:0] 	    g_t4;
   
   wire [9:0] 	    sdout_blue;
   wire [9:0] 	    sdout_green;
   wire [9:0] 	    sdout_red;

   reg 	     de_q1, de_reg;
   reg       hsync_q1, vsync_q1;
   wire      de_q2;
   wire      hsync_q2, vsync_q2;
   reg       cv_q;

   reg 	     data_gb_q, video_gb_q;
   reg [3:0] ctl_code_q;
   wire [3:0]  ctl_code_wire;

   always @ (posedge p_clk) begin
      reset <= ex_reset || !pll_lckd;
   end
   
/*
  assign sdout = {sdout_red[9], sdout_green[9], sdout_blue[9], sdout_red[8], sdout_green[8], sdout_blue[8],
                  sdout_red[7], sdout_green[7], sdout_blue[7], sdout_red[6], sdout_green[6], sdout_blue[6],
                  sdout_red[5], sdout_green[5], sdout_blue[5], sdout_red[4], sdout_green[4], sdout_blue[4],
                  sdout_red[3], sdout_green[3], sdout_blue[3], sdout_red[2], sdout_green[2], sdout_blue[2],
                  sdout_red[1], sdout_green[1], sdout_blue[1], sdout_red[0], sdout_green[0], sdout_blue[0]} ;
*/
   parameter INIT =      8'b1 << 0;
   parameter GOING_T4 =  8'b1 << 1;
   parameter TERC4 =     8'b1 << 2;
   parameter LEAVE_T4 =  8'b1 << 3;
   parameter GOING_VID = 8'b1 << 4;
   parameter VIDEO =     8'b1 << 5;
   parameter PREAM_T4  = 8'b1 << 6;
   parameter PREAM_VID = 8'b1 << 7;
   parameter nSTATES =   8;

   reg [(nSTATES-1):0] cstate = {{(nSTATES-1){1'b0}},1'b1};
   reg [(nSTATES-1):0] nstate;

   parameter ENC_TMDS = 1'b0;
   parameter ENC_TERC4 = 1'b1;
   parameter HDCP_OFF = 1'b0;
   parameter HDCP_ON  = 1'b1;
   
//   reg 		       encoding;
   reg 		       encrypting_data;
   reg 		       encrypting_video;

   assign hdcp_ena = encrypting_data | encrypting_video;

   always @ (posedge p_clk) begin
      if (reset)
	cstate <= INIT;
            else
	cstate <=#1 nstate;
   end

   always @ (*) begin
      case (cstate) //synthesis parallel_case full_case
	//// NOTE NOTE NOTE
	//// green channel uses same code for video and data gb
	//// so we can't consider its information in this state machine
	INIT: begin
	   if( b_vgb & r_vgb & g_vgb ) begin
//	   if( b_vgb | r_vgb | g_vgb ) begin
	      nstate = GOING_VID;
	   end else if (ctl_code_wire == 4'b0101) begin
	      // we've found a preamble for data
	      nstate =  PREAM_T4;
	   end else if (ctl_code_wire == 4'b0001) begin
	      nstate = PREAM_VID;
	   end else begin
	      nstate = INIT;
	   end
	end
	PREAM_T4: begin
	   if( b_vgb & r_vgb & g_vgb ) begin
//	   if( b_vgb | r_vgb | g_vgb ) begin
	      nstate = GOING_VID;
	   end else if (r_dgb & g_dgb) begin
	      // data guardband only happens on b/r channels
	      nstate =  GOING_T4;
	   end else if (ctl_code_wire == 4'b0101) begin
	      nstate = PREAM_T4;
	   end else begin
	      nstate = INIT;
	   end
	end
	GOING_T4: begin
	    // wait till both dgb signals drop
	   nstate = (r_dgb & g_dgb) ? GOING_T4 : TERC4;
	end
	TERC4: begin
	   if( b_cv | r_cv | g_cv ) begin
	      nstate = INIT;
	   end else if( b_vgb & r_vgb & g_vgb ) begin
//	   end else if( b_vgb | r_vgb | g_vgb ) begin
	      // if we see a video guardband and we think we're in terc4 encoding
	      // it means we missed the end of data guardband; simply re-initialize
	      // the machine so we always recover from bit error drops
	      nstate = GOING_VID;
	   end else if( r_dgb & g_dgb ) begin
	      // otherwise, gracefully leave
	      nstate = LEAVE_T4;
	   end else begin
	      nstate = TERC4;
	   end
	end // case: TERC4
	LEAVE_T4: begin
	   // wait till both dgb signals drop
	   nstate = (r_dgb & g_dgb) ? LEAVE_T4 : INIT;
	end
	PREAM_VID: begin
	   if( ctl_code_wire == 4'b0001 ) begin
	      nstate = PREAM_VID;
	   end else if( b_vgb & r_vgb & g_vgb ) begin
//	   end else if( b_vgb | r_vgb | g_vgb ) begin
	      nstate = GOING_VID;
	   end else  begin
	      nstate = INIT;
	   end
	end
	GOING_VID: begin
	   nstate = ( b_vgb & r_vgb & g_vgb ) ? GOING_VID : VIDEO;
//	   nstate = ( b_vgb | r_vgb | g_vgb ) ? GOING_VID : VIDEO;
	end
	VIDEO: begin
	   if( b_cv | r_cv | g_cv ) begin
//	   if( b_cv & r_cv & g_cv ) begin
	      nstate = INIT;
	   end else begin
	      nstate = VIDEO;
	   end
	end
      endcase // case (cstate)
   end

   always @ (posedge p_clk) begin
      if( reset ) begin
	 encoding <=#1 ENC_TMDS;
	 encrypting_data <=#1 HDCP_OFF;
      end else begin
	 case (cstate) // synthesis parallel_case full_case
	   INIT: begin
	      encoding         <= #1 ENC_TMDS;
	      encrypting_data  <= #1 HDCP_OFF;
	      encrypting_video <= #1 HDCP_OFF;
	      de <= #1 1'b0;
	   end
	   PREAM_T4: begin
	      encoding         <= #1 ENC_TMDS;
	      encrypting_data  <= #1 HDCP_OFF;
	      encrypting_video <= #1 HDCP_OFF;
	      de <= #1 1'b0;
	   end
	   GOING_T4: begin
	      encoding         <= #1 ENC_TERC4;
	      encrypting_data  <= #1 HDCP_OFF;
	      encrypting_video <= #1 HDCP_OFF;
	      de <= #1 1'b0;
	   end
	   TERC4: begin
	      encoding         <= #1 ENC_TERC4;
	      encrypting_data  <= #1 HDCP_ON;
	      encrypting_video <= #1 HDCP_OFF;
	      de <= #1 1'b0;
	   end
	   LEAVE_T4: begin
	      encoding         <= #1 ENC_TERC4;
	      encrypting_video <= #1 HDCP_OFF;
	      encrypting_data  <= #1 HDCP_OFF;
	      de <= #1 1'b0;
	   end
	   PREAM_VID: begin
	      encoding         <= #1 ENC_TMDS;
	      encrypting_data  <= #1 HDCP_OFF;
	      encrypting_video <= #1 HDCP_OFF;
	      de <= #1 1'b0;
	   end
	   GOING_VID: begin
	      encoding         <= #1 ENC_TMDS;
	      encrypting_data  <= #1 HDCP_OFF;
	      encrypting_video <= #1 HDCP_OFF;
	      de <= #1 1'b0;
	   end
	   VIDEO: begin
	      encoding         <= #1 ENC_TMDS;
	      encrypting_data  <= #1 HDCP_OFF;
	      encrypting_video <= #1 HDCP_ON;
	      de <= #1 1'b1;
	   end
	 endcase // case (cstate)
      end // else: !if( reset )
   end // always @ (posedge p_clk or posedge reset)
   
   
   assign sdout = {sdout_red[9:0], sdout_green[9:0], sdout_blue[9:0]};

   // what the fuck is this all about....
//  assign sdout = {sdout_red[9:5], sdout_green[9:5], sdout_blue[9:5],
//                  sdout_red[4:0], sdout_green[4:0], sdout_blue[4:0]};

  wire de_b, de_g, de_r;

   assign de_q2 = de_b;
   // to do: modify this against guard bands -- if dgb activates, set a flag to set terc4 coding
   // until dgb triggers again; include a force-clear if a vgb is encountered

 //wire blue_vld, green_vld, red_vld;
 //wire blue_rdy, green_rdy, red_rdy;

  wire blue_psalgnerr, green_psalgnerr, red_psalgnerr;


  //
  // PLL is used to generate three clocks:
  // 1. p_clk:    same rate as TMDS clock
  // 2. pclkx2:  double rate of pclk used for 5:10 soft gear box and ISERDES DIVCLK
  // 3. pclkx10: 10x rate of pclk used as IO clock
  //
   wire clkfb_2;
   wire clk_pixel_raw;
   wire clk_pixel_x5_raw;
   wire clk_pixel_x1p25_raw;
   wire clk_pixel_x1p25_dbg_raw;
   
   MMCME2_BASE #(
		 .BANDWIDTH("OPTIMIZED"), // Jitter programming (OPTIMIZED, HIGH, LOW)
		 .DIVCLK_DIVIDE(1), // Master division value (1-106)
		 .CLKFBOUT_MULT_F(5.0), // Multiply value for all CLKOUT (2.000-64.000).
		 .CLKFBOUT_PHASE(0.0), // Phase offset in degrees of CLKFB (-360.000-360.000).
		 .CLKIN1_PERIOD(6.734), // 6.734ns -> 148.5MHz
		 // CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for each CLKOUT (1-128)
		 .CLKOUT0_DIVIDE_F(5.0), // Divide amount for CLKOUT0 (1.000-128.000).
		 .CLKOUT1_DIVIDE(5),
		 .CLKOUT2_DIVIDE(1),
		 .CLKOUT3_DIVIDE(4),
		 .CLKOUT4_DIVIDE(4),
		 .CLKOUT5_DIVIDE(1),
		 .CLKOUT6_DIVIDE(1),
		 // CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for each CLKOUT (0.01-0.99).
		 .CLKOUT0_DUTY_CYCLE(0.5),
		 .CLKOUT1_DUTY_CYCLE(0.5),
		 .CLKOUT2_DUTY_CYCLE(0.5),
		 .CLKOUT3_DUTY_CYCLE(0.5),
		 .CLKOUT4_DUTY_CYCLE(0.5),
		 .CLKOUT5_DUTY_CYCLE(0.5),
		 .CLKOUT6_DUTY_CYCLE(0.5),
		 // CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
		 .CLKOUT0_PHASE(0.0),
		 .CLKOUT1_PHASE(0.0),
		 .CLKOUT2_PHASE(0.0),
		 .CLKOUT3_PHASE(0.0),
		 .CLKOUT4_PHASE(0.0),
		 .CLKOUT5_PHASE(0.0),
		 .CLKOUT6_PHASE(0.0),
		 .CLKOUT4_CASCADE("FALSE"), // Cascade CLKOUT4 counter with CLKOUT6 (FALSE, TRUE)
		 .REF_JITTER1(0.0), // Reference input jitter in UI (0.000-0.999).
		 .STARTUP_WAIT("FALSE") // Delays DONE until MMCM is locked (FALSE, TRUE)
		 )
   MMCME2_BASE_inst (
		     // Clock Outputs: 1-bit (each) output: User configurable clock outputs
		     .CLKOUT0(clk_pixel_raw), // 1-bit output: CLKOUT0
		     //.CLKOUT0B(CLKOUT0B), // 1-bit output: Inverted CLKOUT0
		     //.CLKOUT1(CLKOUT1), // 1-bit output: CLKOUT1
		     //.CLKOUT1B(CLKOUT1B), // 1-bit output: Inverted CLKOUT1
		     .CLKOUT2(clk_pixel_x5_raw), // 1-bit output: CLKOUT2
		     //.CLKOUT2B(CLKOUT2B), // 1-bit output: Inverted CLKOUT2
		     .CLKOUT3(clk_pixel_x1p25_raw), // 1-bit output: CLKOUT3
		     //.CLKOUT3B(CLKOUT3B), // 1-bit output: Inverted CLKOUT3
		     .CLKOUT4(clk_pixel_x1p25_dbg_raw), // 1-bit output: CLKOUT4
		     //.CLKOUT5(CLKOUT5), // 1-bit output: CLKOUT5
		     //.CLKOUT6(CLKOUT6), // 1-bit output: CLKOUT6
		     // Feedback Clocks: 1-bit (each) output: Clock feedback ports
		     .CLKFBOUT(clkfb_2), // 1-bit output: Feedback clock
		     //.CLKFBOUTB(CLKFBOUTB), // 1-bit output: Inverted CLKFBOUT
		     // Status Ports: 1-bit (each) output: MMCM status ports
		     .LOCKED(pll_lckd), // 1-bit output: LOCK
		     // Clock Inputs: 1-bit (each) input: Clock input
		     .CLKIN1(rx_clk), // 1-bit input: Clock
		     // Control Ports: 1-bit (each) input: MMCM control ports
		     .PWRDWN(1'b0), // 1-bit input: Power-down
		     .RST(1'b0), // 1-bit input: Reset
		     // Feedback Clocks: 1-bit (each) input: Clock feedback ports
		     .CLKFBIN(clkfb_2) // 1-bit input: Feedback clock
		     );

   // in this implementation, no deskew of source clock is done, since
   // refclk is mesochronous (fixed frequency but no known phase)
   // feedback to source-synchronize the clock
   // BUFG pclkfbk (.I(clkfbout), .O(clkfbin) );
   // BUFIO2FB pclkfbk_fb (.I(clkfbin), .O(clkfbin_fb) );
   
  //
  // Pixel Rate clock buffer
  //
  BUFG pclkbufg (.I(clk_pixel_raw), .O(p_clk));

  BUFR pclkx1p25bufg (.CLR(1'b0), .CE(1'b1), .I(clk_pixel_x1p25_raw), .O(px1p25_clk));
   BUFG pclkx1p25bufgdbg (.I(clk_pixel_x1p25_dbg_raw), .O(px1p25_dbg_clk));  // global buffer to ILAs
   
  //////////////////////////////////////////////////////////////////
  // 5x pclk is going to be used to drive IOSERDES2 DIVCLK
  //////////////////////////////////////////////////////////////////
  BUFIO pclkx5bufio (.I(clk_pixel_x5_raw), .O(px5_clk));

   wire line_end_r;
   wire line_end_g;
   wire line_end_b;

   // this is the master idelay controller for all the idelayE's in the decoder blocks
   //(* IODELAY_GROUP = idelay_group *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
   IDELAYCTRL IDELAYCTRL_inst (
			       .RDY(), // 1-bit output: Ready output
			       .REFCLK(mhz200_clk), // 1-bit input: Reference clock input
			       .RST(reset) // 1-bit input: Active high reset input
			       );
   
   // note instance-specific decode since each channel has its own specific
   // guardband character. 
  decodeb dec_b (
    .reset        (reset),
    .pclk         (p_clk),
    .pclkx1p25    (px1p25_clk),		 
    .pclkx5       (px5_clk),
    .din_p        (blue_p),
    .din_n        (blue_n),
    .other_ch0_rdy(green_rdy),
    .other_ch1_rdy(red_rdy),
    .other_ch0_vld(green_vld),
    .other_ch1_vld(red_vld),

    .iamvld       (blue_vld),
    .iamrdy       (blue_rdy),
    .psalgnerr    (blue_psalgnerr),
    .c0           (hsync_q2),
    .c1           (vsync_q2),
    .de           (de_b),
    .sdout        (sdout_blue),
    .dout         (blu_q1),
    .dgb          (b_dgb),
    .vgb          (b_vgb),
    .ctl_vld      (b_cv),
    .line_end     (line_end_b),
    .eye_info     (blue_eye),
    .debug_phase  (blue_debug)) ;

   // adds two pipe stages so no need to rebalance later on
   tmds_data_dec tmds_b (
			 .clk(p_clk),
			 .de(de_b),
			 .tmds_dat(sdout_blue),
			 .dec_dat(blue) );

  decodeg dec_g (
    .reset        (reset),
    .pclk         (p_clk),
    .pclkx1p25    (px1p25_clk),		 
    .pclkx5       (px5_clk),
    .din_p        (green_p),
    .din_n        (green_n),
    .other_ch0_rdy(blue_rdy),
    .other_ch1_rdy(red_rdy),
    .other_ch0_vld(blue_vld),
    .other_ch1_vld(red_vld),

    .iamvld       (green_vld),
    .iamrdy       (green_rdy),
    .psalgnerr    (green_psalgnerr),
    .c0           (ctl_code_wire[0]),
    .c1           (ctl_code_wire[1]),
    .de           (de_g),
    .sdout        (sdout_green),
    .dout         (grn_q1),
    .dgb          (g_dgb),
    .vgb          (g_vgb),
    .ctl_vld      (g_cv),
    .line_end     (line_end_g),
    .eye_info     (green_eye),
    .debug_phase  (green_debug)) ;

   tmds_data_dec tmds_g (
			 .clk(p_clk),
			 .de(de_g),
			 .tmds_dat(sdout_green),
			 .dec_dat(green) );
    
  decoder dec_r (
    .reset        (reset),
    .pclk         (p_clk),
    .pclkx1p25    (px1p25_clk),
    .pclkx5       (px5_clk),
    .din_p        (red_p),
    .din_n        (red_n),
    .other_ch0_rdy(blue_rdy),
    .other_ch1_rdy(green_rdy),
    .other_ch0_vld(blue_vld),
    .other_ch1_vld(green_vld),

    .iamvld       (red_vld),
    .iamrdy       (red_rdy),
    .psalgnerr    (red_psalgnerr),
    .c0           (ctl_code_wire[2]),
    .c1           (ctl_code_wire[3]),
    .de           (de_r),
    .sdout        (sdout_red),
    .dout         (red_q1),
    .dgb          (r_dgb),
    .vgb          (r_vgb),
    .ctl_vld      (r_cv),
    .line_end     (line_end_r),
    .eye_info     (red_eye),
    .debug_phase  (red_debug)) ;

   tmds_data_dec tmds_r (
			 .clk(p_clk),
			 .de(de_r),
			 .tmds_dat(sdout_red),
			 .dec_dat(red) );
   
   assign basic_de = de_b | de_r | de_g | b_vgb | r_vgb | g_vgb;
   
   assign line_end = line_end_g | line_end_r | line_end_b;

  assign psalgnerr = red_psalgnerr | blue_psalgnerr | green_psalgnerr;

   /*
   wire [7:0] red_q1;
   wire [7:0] blu_q1;
   wire [7:0] grn_q1;

   reg [7:0] red_q2;
   reg [7:0] blu_q2;
   reg [7:0] grn_q2;
    */

   // pipe alignment registers
   always @(posedge p_clk) begin
      /*
	 red_q2 <= red_q1;
	 red <= red_q2;

	 blu_q2 <= blu_q1;
	 blue <= blu_q2;

	 grn_q2 <= grn_q1;
	 green <= grn_q2;
       */

	 // reversed the naming convention for the following pipe stages
	 hsync <= hsync_q1;
	 hsync_q1 <= hsync_q2;

	 vsync <= vsync_q1;
	 vsync_q1 <= vsync_q2;

	 de_reg <= de_q1;
	 de_q1 <= de_q2;

	 data_gb_q <= r_dgb & g_vgb; // data guardbands only on red and green channels
	 data_gb <= data_gb_q;
	 
	 video_gb_q <= r_vgb & b_vgb & g_vgb;
	 video_gb <= video_gb_q;
	 
	 ctl_code_q <= ctl_code_wire;
	 ctl_code <= ctl_code_q;

	 cv_q <= b_cv & r_cv & g_cv;
	 cv <= cv_q;
   end // always @ (posedge p_clk or posedge reset)
//   assign de = de_reg & (encoding == ENC_TMDS);

   // looks like maybe the terc4 path is short by one pipeline stage...
   decode_terc4 dec_t4_g (
			 .rstin( reset ),
			 .clkin(p_clk),
			 .din(sdout_green),
			 .dout(g_t4));
   
   decode_terc4 dec_t4_r (
			 .rstin( reset ),
			 .clkin(p_clk),
			 .din(sdout_red),
			 .dout(r_t4));
   
   decode_terc4 dec_t4_b (
			 .rstin( reset ),
			 .clkin(p_clk),
			 .din(sdout_blue),
			 .dout(b_t4));
   assign red_di = r_t4;
   assign green_di = g_t4;
   assign blue_di = b_t4;

endmodule
