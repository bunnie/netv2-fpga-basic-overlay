module hdcp_engine (
		   input wire 	 clk,
		   input 	 reset,

		    // this comes directly from the HPD input
		   input 	 hpd,

		    // these come from the input decoder
		   input [3:0] 	 ctl_code,
		   input 	 cv,
		   input 	 de,
		   input 	 line_end,
		   input 	 hsync,
		   input 	 vsync,
		   input 	 hdcp_ena,

		    // this is computed by the host via fancy linear algebra and session keys
		   input 	 Km_rdy,
		   input [55:0]  Km, // shared secret value
		    
		    // directly from i2c_snoop block watching address 0x74
		   input 	 An_rdy,
		   input [63:0]  An, // session random number

		    // cipher stream output
		   output [23:0] cipher_stream, 
		   output 	 hdcp_is_ready
		    );

   wire 			 Aksv14_write;
   assign Aksv14_write = An_rdy;
   
   reg 				 hpd_n;
   always @(posedge clk) begin
      // retime and invert HPD
      hpd_n <= !hpd;
   end

   // autodetect sync polarity
   reg 	hdmi_vsync_pol;
   reg 	hdmi_hsync_pol;
   reg 	vsync_v_raw, hsync_v_raw;
   reg  hdmi_de_d;
   wire hdmi_de_rising;
   
   assign hdmi_de_rising = !hdmi_de_d & de;
   // hdmi sync polarity detector
   always @(posedge clk) begin
      if(reset) begin
	 hdmi_vsync_pol <= 0;
	 hdmi_hsync_pol <= 0;
	 vsync_v_raw <= 0;
	 hsync_v_raw <= 0;
      end else begin
	 hdmi_de_d <= de;

	 if(cv) begin
	    vsync_v_raw <= vsync;
	    hsync_v_raw <= hsync;
	 end else begin
	    vsync_v_raw <= vsync_v_raw;
	    hsync_v_raw <= hsync_v_raw;
	 end
	 // the theory goes that de is always active high so use this to adjust sync polarities
	 if( hdmi_de_rising ) begin
	    hdmi_vsync_pol <= !vsync_v_raw;
	    hdmi_hsync_pol <= !hsync_v_raw;
	 end else begin
	    hdmi_vsync_pol <= hdmi_vsync_pol;
	    hdmi_hsync_pol <= hdmi_hsync_pol;
	 end
      end
   end // always @ (posedge clk)

   reg 	      vsync_v;
   reg 	      hsync_v;
   reg 	      hsync_v2;
   reg 	      vsync_v2;
   
   always @(posedge clk) begin
      if( reset == 1'b1 ) begin
	 vsync_v <= 0;
	 hsync_v <= 0;
	 hsync_v2 <= 0;
	 vsync_v2 <= 0;
      end else begin
	 hsync_v2 <= hsync_v;
	 vsync_v2 <= vsync_v;
   	 if(cv) begin
	    vsync_v <= vsync ^ !hdmi_vsync_pol;
	    hsync_v <= hsync ^ !hdmi_hsync_pol;
	 end else begin
	    vsync_v <= vsync_v;
	    hsync_v <= hsync_v;
	 end
      end // else: !if( reset == 1'b1 )
   end // always @ (posedge clk)
   assign vsync_rising = vsync_v & !vsync_v2;
   
   ///////
   // HDCP
   ///////
   // HDCP initialization procedure
   //
   // 1. Sniff An, KSV going across the wire
   // 2. Generate private key table for one of the KSV's
   // 3. Perform the Km computation using derived private key table
   // 4. Enter An, Km into the register for the HDCP cipher
   // 5. Initiate the authentication (pulse hdcpBlockCipher_init and 
   //    authentication high one cycle simultaneously)
   // 6. Wait until stream_ready is high
   //
   // Now begins the main loop:
   // There is an ambiguity in the spec. Either a rekey operation happens immediately
   // (since this happens during vertical retrace), or not. Either way, this is roughly
   // what happens.
   //
   // 1. If hdcp_ena activates (or of de and data island enable), advance cipher
   // 2. If vertical sync happens, pulse hdcpBlockCipher_init one cycle and wait 
   //    until stream_ready; return to 1
   // 3. If horizontal sync happens, pulse hdcpRekeyCipher once cycle, wait until
   //    stream_ready; return to 1
   //
   // That's it. So the only question is if vsync "happens" immediately after an authentication.
   // The test vectors would suggest this is the case but I can't find it in the state machine
   // diagrams, so perhaps good to try both options...?
   parameter HDCP_UNPLUG      = 18'b1 << 0;
   parameter HDCP_WAIT_AKSV   = 18'b1 << 1;
   parameter HDCP_AUTH_PULSE  = 18'b1 << 2;
   parameter HDCP_AUTH        = 18'b1 << 3;
   parameter HDCP_AUTH_WAIT   = 18'b1 << 4;
   parameter HDCP_AUTH_VSYNC_PULSE  = 18'b1 << 5;
   parameter HDCP_AUTH_VSYNC        = 18'b1 << 6;
   parameter HDCP_AUTH_VSYNC_WAIT   = 18'b1 << 7;
   parameter HDCP_WAIT_1001   = 18'b1 << 8;
   parameter HDCP_WAIT_1001_END = 18'b1 << 9;
   parameter HDCP_VSYNC       = 18'b1 << 10;
   parameter HDCP_VSYNC_PULSE = 18'b1 << 11;
   parameter HDCP_VSYNC_WAIT  = 18'b1 << 12;
   parameter HDCP_READY       = 18'b1 << 13;
   parameter HDCP_REKEY       = 18'b1 << 14;
   parameter HDCP_REKEY_PULSE = 18'b1 << 15;
   parameter HDCP_REKEY_WAIT  = 18'b1 << 16;
   parameter HDCP_WAIT_KMRDY  = 18'b1 << 17;

   parameter HDCP_nSTATES = 18;
   
   wire   		    stream_ready;   // asserted when stream is ready (after init seq)
   reg [(HDCP_nSTATES-1):0] HDCP_cstate = {{(HDCP_nSTATES-1){1'b0}}, 1'b1};
   reg [(HDCP_nSTATES-1):0] HDCP_nstate;

   reg 			    auth_mode;
   reg 			    hdcp_init;
   reg 			    hdcp_rekey;
   wire 		    hdcp_stream_ena;

   reg 			    active_line;
   reg 			    hdcp_rekey_2;
   reg 			    hdcp_rekey_1;

   reg 			    appleTV2_bug;

   reg 			    Km_rdy0;
   reg 			    Km_rdy1;
   reg 			    Km_rdy2;
   wire 		    Km_ready;
   reg 			    hdcp_requested;
   
   // Apple TV version 2 has a bug where the 1001 EESS happens by far too early in the window of oppty
   // spec is a window 512 cycles after vsync start, in practice ATV2 is a window about 94 clocks after vsync
   always @ (posedge clk) begin
      if( reset == 1'b1 ) begin
	 appleTV2_bug <= 0;
      end else begin
	 if( (HDCP_cstate == HDCP_VSYNC_WAIT) && (ctl_code[3:0] == 4'b1001) ) begin
	    appleTV2_bug <= 1;
	 end else if( (HDCP_cstate == HDCP_READY) ) begin
	    appleTV2_bug <= 0;
	 end else begin
	    appleTV2_bug <= appleTV2_bug;
	 end
      end // else: !if( reset == 1'b1 )
   end // always @ (posedge clk or posedge reset)
   
   assign hdcp_is_ready = (HDCP_cstate == HDCP_READY);
   
   // compute active_line. This tells you if the last line had active data
   // in it or not. Reset the computation on falling edge of hsync
   always @ (posedge clk) begin
      if( reset == 1'b1 ) begin
	 active_line <= 1'b0;
	 hdcp_rekey_2 <= 1'b0;
	 hdcp_rekey_1 <= 1'b0;
      end else begin
	 hdcp_rekey_2 <= hdcp_rekey_1;
	 hdcp_rekey_1 <= hdcp_rekey || 
			 (line_end && (HDCP_cstate == HDCP_READY) && de);
	 if( de ) begin
	    active_line <= 1'b1;
	 end else if( !hsync_v & hsync_v2 ) begin // hsync falling
	    active_line <= 1'b0;
	 end
      end
   end
   
   always @ (posedge clk) begin
      if ( reset | hpd_n )
	HDCP_cstate <= HDCP_UNPLUG; 
      else
	if( Aksv14_write ) begin
	   HDCP_cstate <= HDCP_AUTH_PULSE; // hack for tivo series 3
	end else begin
	   HDCP_cstate <=#1 HDCP_nstate;
	end
   end

   always @ (*) begin
      case (HDCP_cstate) //synthesis parallel_case full_case
	HDCP_UNPLUG: begin
	   HDCP_nstate = hpd_n ? HDCP_UNPLUG : HDCP_WAIT_AKSV;
	end
	HDCP_WAIT_AKSV: begin
	   // wait until the 14th byte is written to the HDCP register set
	   // this is the MSB of AKsv, and this triggers an authentication event
	   HDCP_nstate = Aksv14_write ? HDCP_AUTH_PULSE : HDCP_WAIT_AKSV;
//	   HDCP_nstate = Aksv14_write ? HDCP_WAIT_KMRDY : HDCP_WAIT_AKSV;
	   // in this implementation, skip the HDCP_WAIT_KMRDY state
	end

	// this state is unreachable
	HDCP_WAIT_KMRDY: begin
	   HDCP_nstate = Km_ready ? HDCP_AUTH_PULSE : HDCP_WAIT_KMRDY;
	end
	
	////////
	// maybe put a state here to wait for Km to become ready
	// but for now, we assume host has pre-loaded Km. Km is fixed for every Tx/Rx HDMI pair.
	// So once you have computed it, it can be pre-loaded even before the transaction happens.
	// One way around this is to snag AKsv, Bksv; and if they are a new pair, compute Km 
	// and load it; and then override hpd_n high for a second to force a re-key *only* if
	// this is new pair. Thus, the first time you plug in a new device you *might* see it
	// flicker once, but it would never happen again, but I think typically you would
	// not notice because the screen would stay dark the entire time.
	//
	// --> above is the wait KMRDY state. The way this should work now is:
	// 1. Aksv is written, byte 14 triggers an interrupt to the CPU.
	// 2. CPU derives Km, writes Km, sets Km ready
	// 3. state machine then moves on to initiate auth pulse
	//
	////////
	HDCP_AUTH_PULSE: begin
	   HDCP_nstate = HDCP_AUTH;
	end
	HDCP_AUTH: begin
	   HDCP_nstate = stream_ready? HDCP_AUTH : HDCP_AUTH_WAIT;
	end
	HDCP_AUTH_WAIT: begin
	   HDCP_nstate = stream_ready ? HDCP_AUTH_VSYNC_PULSE : HDCP_AUTH_WAIT;
	end

	// this is a special vsync-update state just for after auth
	// because I don't know if there is more than 1 vsync period between
	// the conclusion of auth and the first 1001 assertion
	// if there is, then we end up unsynchronized on the Mi state
	HDCP_AUTH_VSYNC_PULSE: begin
	   HDCP_nstate = HDCP_AUTH_VSYNC;
	end
	HDCP_AUTH_VSYNC: begin
	   HDCP_nstate = stream_ready ? HDCP_AUTH_VSYNC : HDCP_AUTH_VSYNC_WAIT;
	end
	HDCP_AUTH_VSYNC_WAIT: begin
	   HDCP_nstate = stream_ready ? HDCP_WAIT_1001 : HDCP_AUTH_VSYNC_WAIT;
	end

	// our primary wait state
	HDCP_WAIT_1001: begin
	   HDCP_nstate = ((vsync_v && (ctl_code[3:0] == 4'b1001)) || appleTV2_bug) ? 
			 HDCP_WAIT_1001_END : HDCP_WAIT_1001;
	end
	HDCP_WAIT_1001_END: begin
	   HDCP_nstate = (vsync_v && (ctl_code[3:0] == 4'b1001)) ?
			 HDCP_WAIT_1001_END : HDCP_READY;
	end
	

	HDCP_VSYNC_PULSE: begin
	   HDCP_nstate = HDCP_VSYNC;
	end
	HDCP_VSYNC: begin
	   HDCP_nstate = stream_ready ? HDCP_VSYNC : HDCP_VSYNC_WAIT;
	end
	HDCP_VSYNC_WAIT: begin
	   HDCP_nstate = stream_ready ? HDCP_WAIT_1001 : HDCP_VSYNC_WAIT;
	end

	// our primary cipher state
	HDCP_READY: begin
	   // i've now got a signal banging rekey outside this state machine
	   // it's unclean, but necessary to get rekey to happen early enough
	   // to meet hdcp spec requirement for rekey time.
	   // Core assumption: the only way stream becomes un-ready during
	   // HDCP_READY is due to the external rekey event. vsync_rising
	   // will never result in this triggering because it itself must
	   // transition this state machine to a new state before stream_ready
	   // changes; and furthermore, stream_ready is guaranteed to be high
	   // upon return to this state.
	   HDCP_nstate = (stream_ready == 1'b0) ? HDCP_REKEY_WAIT : 
			 vsync_rising ? HDCP_VSYNC_PULSE :
			 HDCP_READY;
	end

	HDCP_REKEY_PULSE: begin
	   HDCP_nstate = HDCP_REKEY;
	end
	HDCP_REKEY: begin
	   HDCP_nstate = stream_ready ? HDCP_REKEY : HDCP_REKEY_WAIT;
	end
	HDCP_REKEY_WAIT: begin
	   HDCP_nstate = stream_ready ? HDCP_READY : HDCP_REKEY_WAIT;
	end
      endcase // case (HDCP_cstate)
   end

//   assign Km_ready = !Km_rdy2 & Km_rdy1; // rising edge pulse
   assign Km_ready = Km_rdy2; // for now make it level triggered ("cheezy mode")
		     
   always @ (posedge clk) begin
      if( reset | hpd_n ) begin
	 auth_mode <=#1 1'b0;
	 hdcp_init <=#1 1'b0;
	 hdcp_rekey <=#1 1'b0;
	 hdcp_requested <=#1 1'b0;
	 
	 Km_rdy0 <= 1'b0;
	 Km_rdy1 <= 1'b0;
	 Km_rdy2 <= 1'b0;
      end else begin
	 Km_rdy0 <= Km_rdy;
	 Km_rdy1 <= Km_rdy0;
	 Km_rdy2 <= Km_rdy1;

	 case (HDCP_cstate) //synthesis parallel_case full_case
	   HDCP_UNPLUG: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b0;
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b0;
	   end
	   HDCP_WAIT_AKSV: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b0;
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b0;
	   end
	   
	   HDCP_WAIT_KMRDY: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b0;
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b0;
	   end
	   
	   HDCP_AUTH_PULSE: begin
	      auth_mode <=#1 1'b1;
	      hdcp_init <=#1 1'b1; // pulse just one cycle
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b0;
	   end
	   HDCP_AUTH: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b0;
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b0;
	   end
	   HDCP_AUTH_WAIT: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b0;
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b0;
	   end

	   HDCP_AUTH_VSYNC_PULSE: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b1;  // pulse init, but not with auth_mode
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b0;
	   end
	   HDCP_AUTH_VSYNC: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b0;
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b0;
	   end
	   HDCP_AUTH_VSYNC_WAIT: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b0;
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b0;
	   end
	   
	   HDCP_WAIT_1001: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b0;
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b0;
	   end
	   HDCP_WAIT_1001_END: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b0;
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b0;
	   end
	   
	   HDCP_VSYNC_PULSE: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b1;  // pulse init, but not with auth_mode
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b1;
	   end
	   HDCP_VSYNC: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b0;
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b1;
	   end
	   HDCP_VSYNC_WAIT: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b0;
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b1;
	   end
	   
	   HDCP_READY: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b0;
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b1;
	   end
	   
	   HDCP_REKEY_PULSE: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b0;
//	      hdcp_rekey <=#1 1'b1; // pulse rekey
	      hdcp_rekey <=#1 1'b0; // we're going to do this asychronously to save some cycles
	      // yes, it means hdcp_rekey gets optimized out
	      // but structurally this helps me remember what the code was intended to do
	      hdcp_requested <=#1 1'b1;
	   end
	   HDCP_REKEY: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b0;
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b1;
	   end
	   HDCP_REKEY_WAIT: begin
	      auth_mode <=#1 1'b0;
	      hdcp_init <=#1 1'b0;
	      hdcp_rekey <=#1 1'b0;
	      hdcp_requested <=#1 1'b1;
	   end
	 endcase // case (HDCP_cstate)
      end // else: !if( reset )
   end // always @ (posedge clk)
   
   hdcp_cipher  cipher (
		.clk(clk),
		.reset(reset),
		.Km(Km),
		.An(An),
		.hdcpBlockCipher_init(hdcp_init),
		.authentication(auth_mode),
		.hdcpRekeyCipher(hdcp_rekey_2),
		.hdcpStreamCipher(hdcp_ena && (HDCP_cstate == HDCP_READY)),
		.pr_data(cipher_stream),
		.stream_ready(stream_ready)
		);
   

endmodule // hdcp_engine

