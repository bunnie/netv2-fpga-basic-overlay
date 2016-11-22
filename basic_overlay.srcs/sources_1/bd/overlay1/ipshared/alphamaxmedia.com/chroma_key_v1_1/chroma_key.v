module chroma_key(
		    input 	 clk,

		    input [7:0]  blue_video,
		    input [7:0]  green_video,
		    input [7:0]  red_video,

		    input [7:0]  blue_comp,
		    input [7:0]  green_comp,
		    input [7:0]  red_comp,

		    output [7:0] blue_blend,
		    output [7:0] green_blend,
		    output [7:0] red_blend,

		    input [23:0] cipher_stream,

		    input 	 chroma_en,

		    input 	 hsync,
		    input 	 vsync,
		    input 	 de,
		    input 	 vid_gb,
		    input 	 dat_gb,
		    input 	 dat_ena,
		    input [3:0]  ctl_code,

		    input [3:0]  blue_di,
		    input [3:0]  red_di,
		    input [3:0]  green_di,

		    output 	 hsync_pipe,
		    output 	 vsync_pipe,
		    output 	 de_pipe,
		    output 	 vid_gb_pipe,
		    output 	 dat_gb_pipe,
		    output 	 dat_ena_pipe,
		    output [3:0] ctl_code_pipe,

		    output [3:0] blue_di_pipe,
		    output [3:0] green_di_pipe,
		    output [3:0] red_di_pipe
		    );

   reg [7:0] 			 blue_video_chroma;
   reg [7:0] 			 green_video_chroma;
   reg [7:0] 			 red_video_chroma;

   reg [7:0] 			 blue_comp_chroma;
   reg [7:0] 			 green_comp_chroma;
   reg [7:0] 			 red_comp_chroma;

   reg [7:0] 			 blue_add;
   reg [7:0] 			 green_add;
   reg [7:0] 			 red_add;
   
   reg [7:0] 			 b1;
   reg [7:0] 			 b2;
   reg [7:0] 			 g1;
   reg [7:0] 			 g2;
   reg [7:0] 			 r1;
   reg [7:0] 			 r2;

   reg [23:0] 			 cipherpipe;

   reg 				 chroma_on;
      
   always @(posedge clk) begin
      b1 <= blue_video;
      g1 <= green_video;
      r1 <= red_video;

      b2 <= b1;
      g2 <= g1;
      r2 <= r1;

      blue_video_chroma <= b2;
      green_video_chroma <= g2;
      red_video_chroma <= r2;

      blue_comp_chroma <= blue_comp;
      green_comp_chroma <= green_comp;
      red_comp_chroma <= red_comp;

      chroma_on <= ((blue_comp == 8'hf0) && (green_comp == 8'h00) && (red_comp == 8'hf0)) && chroma_en;

      // _comp channel is unencrypted, so xor with cipher stream to encrypt it
      blue_add <= chroma_on ? blue_video_chroma : blue_comp_chroma ^ cipherpipe[7:0];
      green_add <= chroma_on ? green_video_chroma : green_comp_chroma ^ cipherpipe[15:8];
      red_add <= chroma_on ? red_video_chroma : red_comp_chroma ^ cipherpipe[23:16];

      cipherpipe <= cipher_stream;
      
   end // always @ (posedge clk)
   assign blue_blend = blue_add;
   assign green_blend = green_add;
   assign red_blend = red_add;

   // 4 pipe delays total necessary on all other pass-through signals
   parameter D = 4;
   reg[D-1:0] hsync_p;
   reg[D-1:0] vsync_p;
   reg[D-1:0] de_p;
   reg[D-1:0] vid_gb_p;
   reg[D-1:0] dat_gb_p;
   reg[D-1:0] dat_ena_p;

   always @(posedge clk) begin
      hsync_p[D-1:0] <= {hsync_p[D-2:0], hsync};
      vsync_p[D-1:0] <= {vsync_p[D-2:0], vsync};
      de_p[D-1:0] <= {de_p[D-2:0], de};
      vid_gb_p[D-1:0] <= {vid_gb_p[D-2:0], vid_gb};
      dat_gb_p[D-1:0] <= {dat_gb_p[D-2:0], dat_gb};
      dat_ena_p[D-1:0] <= {dat_ena_p[D-2:0], dat_ena};
   end
   assign hsync_pipe = hsync_p[D-1];
   assign vsync_pipe = vsync_p[D-1];
   assign de_pipe = de_p[D-1];
   assign vid_gb_pipe = vid_gb_p[D-1];
   assign dat_gb_pipe = dat_gb_p[D-1];
   assign dat_ena_pipe = dat_ena_p[D-1];

   // manually do the bus...
   reg [15:0] p1;
   reg [15:0] p2;
   reg [15:0] p3;
   reg [15:0] p4;
   always @(posedge clk) begin
      p1 <= {red_di, green_di, blue_di, ctl_code};
      p2 <= p1;
      p3 <= p2;
      p4 <= p3;
   end
   assign red_di_pipe = p4[15:12];
   assign green_di_pipe = p4[11:8];
   assign blue_di_pipe = p4[7:4];
   assign ctl_code_pipe = p4[3:0];
   
   
endmodule // chroma_key

