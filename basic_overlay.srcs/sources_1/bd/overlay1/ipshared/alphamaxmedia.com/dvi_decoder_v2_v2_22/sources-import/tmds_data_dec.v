// systolic implementation of TMDS decoding

// accomplish in 3 pipe stages to match current dummy pipeline
// in an attempt to get around an optimizer bug in synthesis

module tmds_data_dec(
		     input 	  clk,
		     input 	  de,
		     input [9:0]  tmds_dat,
		     output [7:0] dec_dat
		     );

   reg [8:0] 			  tmds_d9;
   reg [7:0] 			  decoded;
   reg 				  de_pipe;
   
   always @(posedge clk) begin
      tmds_d9[8] <= tmds_dat[8];
      tmds_d9[7:0] <= tmds_dat[9] ? ~tmds_dat[7:0] : tmds_dat[7:0];

      de_pipe <= de;
   end
   
   always @(posedge clk) begin
      decoded[0] <= tmds_d9[0];
      decoded[1] <= (tmds_d9[8]) ? (tmds_d9[1] ^ tmds_d9[0]) : (tmds_d9[1] ~^ tmds_d9[0]);
      decoded[2] <= (tmds_d9[8]) ? (tmds_d9[2] ^ tmds_d9[1]) : (tmds_d9[2] ~^ tmds_d9[1]);
      decoded[3] <= (tmds_d9[8]) ? (tmds_d9[3] ^ tmds_d9[2]) : (tmds_d9[3] ~^ tmds_d9[2]);
      decoded[4] <= (tmds_d9[8]) ? (tmds_d9[4] ^ tmds_d9[3]) : (tmds_d9[4] ~^ tmds_d9[3]);
      decoded[5] <= (tmds_d9[8]) ? (tmds_d9[5] ^ tmds_d9[4]) : (tmds_d9[5] ~^ tmds_d9[4]);
      decoded[6] <= (tmds_d9[8]) ? (tmds_d9[6] ^ tmds_d9[5]) : (tmds_d9[6] ~^ tmds_d9[5]);
      decoded[7] <= (tmds_d9[8]) ? (tmds_d9[7] ^ tmds_d9[6]) : (tmds_d9[7] ~^ tmds_d9[6]);
   end

   assign dec_dat = decoded;
      
endmodule // tmds_data_dec
