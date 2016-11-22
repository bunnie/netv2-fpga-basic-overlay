module reg_expander(
		    input wire 	     wr_clk,
		    input wire 	     reset,

		    input wire 	     rd_clk,

		    input wire [2:0] wr_addr,
		    input wire [7:0] wr_data,

		    input wire 	     we,

		    output reg [55:0] bank0,
		    output reg [7:0] bank1
		    );

   reg 				     we_d;
   reg 				     we_d2;
   wire 			     we_rising;
   reg [55:0] 			     state0;
   reg [7:0] 			     state1;
   
   always @(posedge wr_clk) begin
      we_d2 <= we_d;
      we_d <= we;
   end
   assign we_rising = !we_d2 & we_d;
   
   always @(posedge wr_clk) begin
      if( reset ) begin
	 state0 <= 56'h0;
	 state1 <= 8'h0;
      end else begin
	 if( we_rising ) begin
	    case( wr_addr )
	      3'h0: begin
		 state0[7:0] <= wr_data;
	      end
	      3'h1: begin
		 state0[15:8] <= wr_data;
	      end
	      3'h2: begin
		 state0[23:16] <= wr_data;
	      end
	      3'h3: begin
		 state0[31:24] <= wr_data;
	      end
	      3'h4: begin
		 state0[39:32] <= wr_data;
	      end
	      3'h5: begin
		 state0[47:40] <= wr_data;
	      end
	      3'h6: begin
		 state0[55:48] <= wr_data;
	      end
	      3'h7: begin
		 state1[7:0] <= wr_data;
	      end
	    endcase
	 end // if ( we )
      end // else: !if( reset )
   end // always @ (posedge wr_clk)

   always @(posedge rd_clk) begin
      bank0 <= state0;
      bank1 <= state1;
   end

endmodule // reg_expander
