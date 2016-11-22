module gearbox_8_to_10 (input_clock, output_clock, datain, reset, dataout) ;
   input wire input_clock;
   input wire output_clock;
   input wire [7:0] datain;
   input wire      reset;
   output reg [9:0] dataout;

   genvar 	i ;

   reg [3:0] 	read_addra;  // only 10 locations used
   reg [3:0] 	read_addrb;  // only 10 locations used
   reg [3:0] 	write_addr;
   reg 		write_reset;
   reg 		read_reset;
   reg 		read_enable;
   reg 		read_enable_oclk;
   
   always @(posedge input_clock) begin
      write_reset <= reset;
   end

   always @(posedge input_clock) begin
      if( write_reset == 1'b1) begin
	 write_addr <= 4'h0;
	 read_enable <= 1'b0;
      end else begin
	 if (write_addr == 4'h9) begin
	    write_addr <= 4'h0;
	 end else begin
	    write_addr <= write_addr + 4'h1;
	 end

	 if( write_addr == 4'h3 ) begin
	    read_enable <= 1'b1;
	 end else begin
	    read_enable <= read_enable;
	 end
      end // else: !if( write_reset == 1'b1)
   end // always @ (posedge input_clock)

   always @(posedge output_clock) begin
      read_reset <= reset;
      read_enable_oclk <= read_enable;
   end

   /*
    // original lolfail guess of bit mappings
    ram addr:  
    0:        0 1 2 3 4 5 6 7  8 9 0 1 2 3 4 5
    2:        6 7 8 9 0 1 2 3  4 5 6 7 8 9 0 1
    4:        2 3 4 5 6 7 8 9  0 1 2 3 4 5 6 7 
    6:        8 9 0 1 2 3 4 5  6 7 8 9 0 1 2 3
    8:        4 5 6 7 8 9 0 1  2 3 4 5 6 7 8 9
    
    // second lolfail guess
    bitpos:   7 6 5 4 3 2 1 0  7 6 5 4 3 2 1 0
    ------------------------------------------
    0:        9 8 7 6 5 4 3 2  1 0 9 8 7 6 5 4
    2:        3 2 1 0 9 8 7 6  5 4 3 2 1 0 9 8
    4:        7 6 5 4 3 2 1 0  9 8 7 6 5 4 3 2
    6:        1 0 9 8 7 6 5 4  3 2 1 0 9 8 7 6
    8:        5 4 3 2 1 0 9 8  7 6 5 4 3 2 1 0
    
    // actual position based on simulation
    bitpos:   7 6 5 4 3 2 1 0  7 6 5 4 3 2 1 0
    ------------------------------------------
    0:        7 6 5 4 3 2 1 0  5 4 3 2 1 0 9 8
    2:        3 2 1 0 9 8 7 6  1 0 9 8 7 6 5 4
    4:        9 8 7 6 5 4 3 2  7 6 5 4 3 2 1 0
    6:        5 4 3 2 1 0 9 8  3 2 1 0 9 8 7 6
    8:        1 0 9 8 7 6 5 4  9 8 7 6 5 4 3 2
    
    */
   wire [7:0] ramouta;
   wire [7:0] ramoutb;
   
   always @(posedge output_clock) begin
      if( read_reset || !read_enable_oclk ) begin
	 read_addra <= 4'h0;
	 read_addrb <= 4'h1;
      end
      else begin
	 case( read_addra ) // compute next address based on current address
	   4'h0: begin 
	      read_addra <= 4'h1;
	      read_addrb <= 4'h2;
	   end
	   4'h1: begin
	      read_addra <= 4'h2;
	      read_addrb <= 4'h3;
	   end
	   4'h2: begin
	      read_addra <= 4'h3;
	      read_addrb <= 4'h4;
	   end
	   4'h3: begin
	      read_addra <= 4'h5;
	      read_addrb <= 4'h6;
	   end
	   // 4'h4 is invalid
	   4'h5: begin
	      read_addra <= 4'h6;
	      read_addrb <= 4'h7;
	   end
	   4'h6: begin
	      read_addra <= 4'h7;
	      read_addrb <= 4'h8;
	   end
	   4'h7: begin
	      read_addra <= 4'h8;
	      read_addrb <= 4'h9;
	   end
	   default: begin
	      read_addra <= 4'h0;
	      read_addrb <= 4'h1;
	   end
	 endcase // case ( read_addra )
      end // else: !if( read_reset || !read_enable_oclk )
   end // always @ (posedge output_clock)
   
   always @(posedge output_clock) begin
      case( read_addra ) 
	4'h0: begin
	   dataout[9:0] <= {ramoutb[1:0],ramouta[7:0]};
	end
	4'h1: begin
	   dataout[9:0] <= {ramoutb[3:0],ramouta[7:2]};
	end
	4'h2: begin
	   dataout[9:0] <= {ramoutb[5:0],ramouta[7:4]};
	end
	4'h3: begin
	   dataout[9:0] <= {ramoutb[7:0],ramouta[7:6]};
	end

	4'h5: begin
	   dataout[9:0] <= {ramoutb[1:0],ramouta[7:0]};
	end
	4'h6: begin
	   dataout[9:0] <= {ramoutb[3:0],ramouta[7:2]};
	end
	4'h7: begin
	   dataout[9:0] <= {ramoutb[5:0],ramouta[7:4]};
	end
	4'h8: begin
	   dataout[9:0] <= {ramoutb[7:0],ramouta[7:6]};
	end

	default: begin
	   dataout[9:0] <= 10'hxxx;
	end
      endcase // case ( read_addra )
   end // always @ (posedge output_clock)
   

   // we want an 8-bit wide, single-write, dual read memory
   generate
      for (i = 0 ; i <= 3 ; i = i+1)
	begin : loop2

	   RAM32M ram_inst ( 
			     .DOA    (ramouta[2*i+1:2*i]), 
			     .DOB    (ramoutb[2*i+1:2*i]),
			     .DOC    (), 
			     .DOD    (),
			     .ADDRA  ({1'b0, read_addra}), 
			     .ADDRB  ({1'b0, read_addrb}), 
			     .ADDRC  ({5'b0}), 
			     .ADDRD  ({1'b0, write_addr}),
			     .DIA    (datain[2*i+1:2*i]), 
			     .DIB    (datain[2*i+1:2*i]),
			     .DIC    (datain[2*i+1:2*i]),
			     .DID    (datain[2*i+1:2*i]),
			     .WE 	(1'b1), 
			     .WCLK	(input_clock));
	end
   endgenerate 
   

endmodule // gearbox_8_to_10

