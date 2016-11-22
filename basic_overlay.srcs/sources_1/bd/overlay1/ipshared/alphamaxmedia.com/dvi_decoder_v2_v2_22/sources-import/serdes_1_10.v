module serdes_1_10_diff (
			 input wire 	    pclk,
			 input wire 	    pclkx5,
			 input wire 	    pclkx1p25,
			 input wire 	    bitslip,
			 input wire 	    din_p, // diff buffer inside this block
			 input wire 	    din_n,
			 input wire 	    reset,
			 output wire [9:0]  dout,
			 output wire [31:0] eye_info,
			 output wire [31:0] m_delay_1hot
		    );

   wire [7:0]			      mdataoutd;

   wire 			      rx_data_in_m, rx_data_in_s;

   wire 			      rx_data_delay_m, rx_data_delay_s;
   wire [4:0] 			      m_delay_val_in;
   wire [4:0] 			      s_delay_val_in;
   wire [7:0] 			      mdout;
   wire [7:0] 			      sdout;
   
   // to use two IDELAYE2's, you connect one to the +, and one to the -, of the diff pair
   IBUFDS_DIFF_OUT #(
		     .DIFF_TERM 		("FALSE"),
		     .IBUF_LOW_PWR		("FALSE")) 
   data_in (
	    .I    		(din_p),
	    .IB       		(din_n),
	    .O         		(rx_data_in_m),
	    .OB         	(rx_data_in_s));

   
   wire 			      del_mech;
   wire [4:0] 			      bt_val ;  
//   assign bt_val = 5'd9;
   assign bt_val = 5'd8;
   assign del_mech = 1'b1;
/*
 // I think this table is bollocks, the 16'h should be 16'd....
 // once things are validated can recode this table to bring dynamic clock adjustments
 // back into the picture but for now let's just get it working fixed at 1080p rates:
 // 1080p = 148.5MHz => 1485Mbps => 673.5 ps/bit period
 // each delay tap is 78.125ps long.
 // 673.5ps/bit / 78.125ps/tap => 8.6 taps/bit
 // so bt_val should be 9 (round up on taps), and del_mach is 1.
 
   wire [15:0] 			      bit_rate_value;  // bit rate in Mbps
   // 1485 Mbps = 0x5CD
   assign bit_rate_value = 16'h05CD;  // can make this dynamic for other pixel clock rates, but for now static

  always @ (bit_rate_value) begin						// Generate tap number to be used for input bit rate (200 MHz ref clock)
  	if      (bit_rate_value > 16'h1984) begin bt_val <= 5'h07 ; del_mech <= 1'b1 ; end
  	else if (bit_rate_value > 16'h1717) begin bt_val <= 5'h08 ; del_mech <= 1'b1 ; end
  	else if (bit_rate_value > 16'h1514) begin bt_val <= 5'h09 ; del_mech <= 1'b1 ; end
  	else if (bit_rate_value > 16'h1353) begin bt_val <= 5'h0A ; del_mech <= 1'b1 ; end
  	else if (bit_rate_value > 16'h1224) begin bt_val <= 5'h0B ; del_mech <= 1'b1 ; end
  	else if (bit_rate_value > 16'h1117) begin bt_val <= 5'h0C ; del_mech <= 1'b1 ; end
  	else if (bit_rate_value > 16'h1027) begin bt_val <= 5'h0D ; del_mech <= 1'b1 ; end
  	else if (bit_rate_value > 16'h0951) begin bt_val <= 5'h0E ; del_mech <= 1'b1 ; end
  	else if (bit_rate_value > 16'h0885) begin bt_val <= 5'h0F ; del_mech <= 1'b1 ; end
  	else if (bit_rate_value > 16'h0828) begin bt_val <= 5'h10 ; del_mech <= 1'b1 ; end
  	else if (bit_rate_value > 16'h0778) begin bt_val <= 5'h11 ; del_mech <= 1'b1 ; end
  	else if (bit_rate_value > 16'h0733) begin bt_val <= 5'h12 ; del_mech <= 1'b1 ; end
  	else if (bit_rate_value > 16'h0694) begin bt_val <= 5'h13 ; del_mech <= 1'b1 ; end
  	else if (bit_rate_value > 16'h0658) begin bt_val <= 5'h14 ; del_mech <= 1'b1 ; end
  	else if (bit_rate_value > 16'h0626) begin bt_val <= 5'h15 ; del_mech <= 1'b1 ; end
  	else if (bit_rate_value > 16'h0597) begin bt_val <= 5'h16 ; del_mech <= 1'b0 ; end
  	else if (bit_rate_value > 16'h0570) begin bt_val <= 5'h17 ; del_mech <= 1'b0 ; end
  	else if (bit_rate_value > 16'h0546) begin bt_val <= 5'h18 ; del_mech <= 1'b0 ; end
  	else if (bit_rate_value > 16'h0524) begin bt_val <= 5'h19 ; del_mech <= 1'b0 ; end
  	else if (bit_rate_value > 16'h0503) begin bt_val <= 5'h1A ; del_mech <= 1'b0 ; end
  	else if (bit_rate_value > 16'h0484) begin bt_val <= 5'h1B ; del_mech <= 1'b0 ; end
  	else if (bit_rate_value > 16'h0466) begin bt_val <= 5'h1C ; del_mech <= 1'b0 ; end
  	else if (bit_rate_value > 16'h0450) begin bt_val <= 5'h1D ; del_mech <= 1'b0 ; end
  	else if (bit_rate_value > 16'h0435) begin bt_val <= 5'h1E ; del_mech <= 1'b0 ; end
  	else                                begin bt_val <= 5'h1F ; del_mech <= 1'b0 ; end		// min bit rate 420 Mbps
  end
 */
   
   reg reset_1p25;
   always @(posedge pclkx1p25) begin
      reset_1p25 <= reset;
   end

   gearbox_8_to_10 gb8to10 (
			    .input_clock(pclkx1p25),
			    .output_clock(pclk),
			    .datain(mdataoutd),
// sim bypass		    .datain(mdout),
			    .dataout(dout),
			    .reset(reset)  // may want to consider hooking up to dc_inst 1-hot when delay value is calibrated...
			    );
   

   delay_controller_wrap # (
			    .S 			(8))
   dc_inst (                       
				   .m_datain		(mdout[7:0]),
				   .s_datain		(sdout[7:0]),
				   .enable_phase_detector	(1'b1),
				   .enable_monitor		(1'b1),
				   .clk			(pclkx1p25),
				   .c_delay_in		({1'b0, bt_val[4:1]}),
				   .m_delay_out		(m_delay_val_in[4:0]),
				   .s_delay_out		(s_delay_val_in[4:0]),
				   .data_out		(mdataoutd),
				   .bt_val		(bt_val),
				   .results		(eye_info[31:0]),
				   .m_delay_1hot	(m_delay_1hot[31:0]),
				   .del_mech		(del_mech),
				   .reset		(reset_1p25));
   
   //(* IODELAY_GROUP = idelay_group *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
   IDELAYE2 #(
	      .CINVCTRL_SEL("FALSE"), // Enable dynamic clock inversion (FALSE, TRUE)
	      .DELAY_SRC("IDATAIN"), // Delay input (IDATAIN, DATAIN)
	      .HIGH_PERFORMANCE_MODE("TRUE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
	      .IDELAY_TYPE("VAR_LOAD"), // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
	      .IDELAY_VALUE(0), // Input delay tap setting (0-31)
	      .PIPE_SEL("FALSE"), // Select pipelined mode, FALSE, TRUE
	      .REFCLK_FREQUENCY(200.0), // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
	      .SIGNAL_PATTERN("DATA") // DATA, CLOCK input signal
	      )
   idelay_m (
		  .CNTVALUEOUT(), // 5-bit output: Counter value output
		  .DATAOUT(rx_data_delay_m), // 1-bit output: Delayed data output
		  .C(pclkx1p25), // 1-bit input: Clock input
		  .CE(1'b0), // 1-bit input: Active high enable increment/decrement input
		  .CINVCTRL(1'b0), // 1-bit input: Dynamic clock inversion input
		  .CNTVALUEIN(m_delay_val_in), // 5-bit input: Counter value input
// sim bypass	  .CNTVALUEIN(5'b0), // 5-bit input: Counter value input
		  .DATAIN(1'b0), // 1-bit input: Internal delay data input
		  .IDATAIN(rx_data_in_m), // 1-bit input: Data input from the I/O
		  .INC(1'b0), // 1-bit input: Increment / Decrement tap delay input
		  .LD(1'b1), // 1-bit input: Load IDELAY_VALUE input
		  .LDPIPEEN(1'b0), // 1-bit input: Enable PIPELINE register to load data input
		  .REGRST(1'b0) // 1-bit input: Active-high reset tap-delay input
		  );
   
   ISERDESE2 #(
	       .DATA_RATE("DDR"), // DDR, SDR
	       .DATA_WIDTH(8), // Parallel data width (2-8,10,14)
	       .DYN_CLKDIV_INV_EN("FALSE"), // Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
	       .DYN_CLK_INV_EN("FALSE"), // Enable DYNCLKINVSEL inversion (FALSE, TRUE)
	       // INIT_Q1 - INIT_Q4: Initial value on the Q outputs (0/1)
	       .INIT_Q1(1'b0),
	       .INIT_Q2(1'b0),
	       .INIT_Q3(1'b0),
	       .INIT_Q4(1'b0),
	       .INTERFACE_TYPE("NETWORKING"), // MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
	       .IOBDELAY("IFD"), // NONE, BOTH, IBUF, IFD
	       .NUM_CE(1), // Number of clock enables (1,2)
	       .OFB_USED("FALSE"), // Select OFB path (FALSE, TRUE)
	       .SERDES_MODE("MASTER"), // MASTER, SLAVE
	       // SRVAL_Q1 - SRVAL_Q4: Q output values when SR is used (0/1)
	       .SRVAL_Q1(1'b0),
	       .SRVAL_Q2(1'b0),
	       .SRVAL_Q3(1'b0),
	       .SRVAL_Q4(1'b0)
	       )
   ISERDESE2_master (
		   .O(), // 1-bit output: Combinatorial output
		   // Q1 - Q8: 1-bit (each) output: Registered data outputs
		   .Q1(mdout[7]),
		   .Q2(mdout[6]),
		   .Q3(mdout[5]),
		   .Q4(mdout[4]),
		   .Q5(mdout[3]),
		   .Q6(mdout[2]),
		   .Q7(mdout[1]),
		   .Q8(mdout[0]),
		   // SHIFTOUT1, SHIFTOUT2: 1-bit (each) output: Data width expansion output ports
		   .SHIFTOUT1(),
		   .SHIFTOUT2(),
		   .BITSLIP(bitslip), // 1-bit input: The BITSLIP pin performs a Bitslip operation synchronous to
		   // CLKDIV when asserted (active High). Subsequently, the data seen on the Q1
		   // to Q8 output ports will shift, as in a barrel-shifter operation, one
		   // position every time Bitslip is invoked (DDR operation is different from
		   // SDR).

		   // CE1, CE2: 1-bit (each) input: Data register clock enable inputs
		   .CE1(1'b1),
		   .CE2(1'b1),
		   .CLKDIVP(1'b0), // 1-bit input: TBD
		   // Clocks: 1-bit (each) input: ISERDESE2 clock input ports
		   .CLK(pclkx5), // 1-bit input: High-speed clock
		   .CLKB(!pclkx5), // 1-bit input: High-speed secondary clock
		   .CLKDIV(pclkx1p25), // 1-bit input: Divided clock
		   .OCLK(1'b0), // 1-bit input: High speed output clock used when INTERFACE_TYPE="MEMORY"
		   // Dynamic Clock Inversions: 1-bit (each) input: Dynamic clock inversion pins to switch clock polarity
		   .DYNCLKDIVSEL(1'b0), // 1-bit input: Dynamic CLKDIV inversion
		   .DYNCLKSEL(1'b0), // 1-bit input: Dynamic CLK/CLKB inversion
		   // Input Data: 1-bit (each) input: ISERDESE2 data input ports
		   .D(1'b0), // 1-bit input: Data input
		   .DDLY(rx_data_delay_m), // 1-bit input: Serial data from IDELAYE2
		   .OFB(1'b0), // 1-bit input: Data feedback from OSERDESE2
		   .OCLKB(1'b0), // 1-bit input: High speed negative edge output clock
		   .RST(reset_1p25), // 1-bit input: Active high asynchronous reset
		   // SHIFTIN1, SHIFTIN2: 1-bit (each) input: Data width expansion input ports
		   .SHIFTIN1(1'b0),
		   .SHIFTIN2(1'b0)
		   );		

   //(* IODELAY_GROUP = idelay_group *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
   IDELAYE2 #(
	      .CINVCTRL_SEL("FALSE"), // Enable dynamic clock inversion (FALSE, TRUE)
	      .DELAY_SRC("IDATAIN"), // Delay input (IDATAIN, DATAIN)
	      .HIGH_PERFORMANCE_MODE("TRUE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
	      .IDELAY_TYPE("VAR_LOAD"), // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
	      .IDELAY_VALUE(0), // Input delay tap setting (0-31)
	      .PIPE_SEL("FALSE"), // Select pipelined mode, FALSE, TRUE
	      .REFCLK_FREQUENCY(200.0), // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
	      .SIGNAL_PATTERN("DATA") // DATA, CLOCK input signal
	      )
   idelay_s (
		  .CNTVALUEOUT(), // 5-bit output: Counter value output
		  .DATAOUT(rx_data_delay_s), // 1-bit output: Delayed data output
		  .C(pclkx1p25), // 1-bit input: Clock input
		  .CE(1'b0), // 1-bit input: Active high enable increment/decrement input
		  .CINVCTRL(1'b0), // 1-bit input: Dynamic clock inversion input
		  .CNTVALUEIN(s_delay_val_in), // 5-bit input: Counter value input
		  .DATAIN(1'b0), // 1-bit input: Internal delay data input
		  .IDATAIN(!rx_data_in_s), // 1-bit input: Data input from the I/O   ////// note inversion on slave line
		  .INC(1'b0), // 1-bit input: Increment / Decrement tap delay input
		  .LD(1'b1), // 1-bit input: Load IDELAY_VALUE input
		  .LDPIPEEN(1'b0), // 1-bit input: Enable PIPELINE register to load data input
		  .REGRST(1'b0) // 1-bit input: Active-high reset tap-delay input
		  );
   
   ISERDESE2 #(
	       .DATA_RATE("DDR"), // DDR, SDR
	       .DATA_WIDTH(8), // Parallel data width (2-8,10,14)
	       .DYN_CLKDIV_INV_EN("FALSE"), // Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
	       .DYN_CLK_INV_EN("FALSE"), // Enable DYNCLKINVSEL inversion (FALSE, TRUE)
	       // INIT_Q1 - INIT_Q4: Initial value on the Q outputs (0/1)
	       .INIT_Q1(1'b0),
	       .INIT_Q2(1'b0),
	       .INIT_Q3(1'b0),
	       .INIT_Q4(1'b0),
	       .INTERFACE_TYPE("NETWORKING"), // MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
	       .IOBDELAY("IFD"), // NONE, BOTH, IBUF, IFD
	       .NUM_CE(1), // Number of clock enables (1,2)
	       .OFB_USED("FALSE"), // Select OFB path (FALSE, TRUE)
	       .SERDES_MODE("MASTER"), // MASTER, SLAVE
	       // SRVAL_Q1 - SRVAL_Q4: Q output values when SR is used (0/1)
	       .SRVAL_Q1(1'b0),
	       .SRVAL_Q2(1'b0),
	       .SRVAL_Q3(1'b0),
	       .SRVAL_Q4(1'b0)
	       )
   ISERDESE2_slave (
		   .O(), // 1-bit output: Combinatorial output
		   // Q1 - Q8: 1-bit (each) output: Registered data outputs
		   .Q1(sdout[7]),
		   .Q2(sdout[6]),
		   .Q3(sdout[5]),
		   .Q4(sdout[4]),
		   .Q5(sdout[3]),
		   .Q6(sdout[2]),
		   .Q7(sdout[1]),
		   .Q8(sdout[0]),
		   // SHIFTOUT1, SHIFTOUT2: 1-bit (each) output: Data width expansion output ports
		   .SHIFTOUT1(),
		   .SHIFTOUT2(),
		   .BITSLIP(bitslip), // 1-bit input: The BITSLIP pin performs a Bitslip operation synchronous to
		   // CLKDIV when asserted (active High). Subsequently, the data seen on the Q1
		   // to Q8 output ports will shift, as in a barrel-shifter operation, one
		   // position every time Bitslip is invoked (DDR operation is different from
		   // SDR).

		   // CE1, CE2: 1-bit (each) input: Data register clock enable inputs
		   .CE1(1'b1),
		   .CE2(1'b1),
		   .CLKDIVP(1'b0), // 1-bit input: TBD
		   // Clocks: 1-bit (each) input: ISERDESE2 clock input ports
		   .CLK(pclkx5), // 1-bit input: High-speed clock
		   .CLKB(!pclkx5), // 1-bit input: High-speed secondary clock
		   .CLKDIV(pclkx1p25), // 1-bit input: Divided clock
		   .OCLK(1'b0), // 1-bit input: High speed output clock used when INTERFACE_TYPE="MEMORY"
		   // Dynamic Clock Inversions: 1-bit (each) input: Dynamic clock inversion pins to switch clock polarity
		   .DYNCLKDIVSEL(1'b0), // 1-bit input: Dynamic CLKDIV inversion
		   .DYNCLKSEL(1'b0), // 1-bit input: Dynamic CLK/CLKB inversion
		   // Input Data: 1-bit (each) input: ISERDESE2 data input ports
		   .D(1'b0), // 1-bit input: Data input
		   .DDLY(rx_data_delay_s), // 1-bit input: Serial data from IDELAYE2
		   .OFB(1'b0), // 1-bit input: Data feedback from OSERDESE2
		   .OCLKB(1'b0), // 1-bit input: High speed negative edge output clock
		   .RST(reset_1p25), // 1-bit input: Active high asynchronous reset
		   // SHIFTIN1, SHIFTIN2: 1-bit (each) input: Data width expansion input ports
		   .SHIFTIN1(1'b0),
		   .SHIFTIN2(1'b0)
		   );		

   
endmodule // serdes_1_10
