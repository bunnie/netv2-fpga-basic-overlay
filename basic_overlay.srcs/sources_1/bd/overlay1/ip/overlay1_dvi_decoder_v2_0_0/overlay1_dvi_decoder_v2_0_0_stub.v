// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Tue Nov 01 00:07:16 2016
// Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_dvi_decoder_v2_0_0/overlay1_dvi_decoder_v2_0_0_stub.v
// Design      : overlay1_dvi_decoder_v2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a50tcsg325-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dvi_decoder,Vivado 2016.1" *)
module overlay1_dvi_decoder_v2_0_0(rx_clk, blue_p, blue_n, green_p, green_n, red_p, red_n, ex_reset, mhz200_clk, reset, p_clk, px5_clk, px1p25_dbg_clk, pll_lckd, hsync, vsync, de, basic_de, blue_vld, green_vld, red_vld, blue_rdy, green_rdy, red_rdy, psalgnerr, sdout, red, green, blue, encoding, hdcp_ena, red_di, green_di, blue_di, data_gb, video_gb, ctl_code, cv, line_end, green_eye, blue_eye, red_eye, green_debug, blue_debug, red_debug)
/* synthesis syn_black_box black_box_pad_pin="rx_clk,blue_p,blue_n,green_p,green_n,red_p,red_n,ex_reset,mhz200_clk,reset,p_clk,px5_clk,px1p25_dbg_clk,pll_lckd,hsync,vsync,de,basic_de,blue_vld,green_vld,red_vld,blue_rdy,green_rdy,red_rdy,psalgnerr,sdout[29:0],red[7:0],green[7:0],blue[7:0],encoding,hdcp_ena,red_di[3:0],green_di[3:0],blue_di[3:0],data_gb,video_gb,ctl_code[3:0],cv,line_end,green_eye[31:0],blue_eye[31:0],red_eye[31:0],green_debug[31:0],blue_debug[31:0],red_debug[31:0]" */;
  input rx_clk;
  input blue_p;
  input blue_n;
  input green_p;
  input green_n;
  input red_p;
  input red_n;
  input ex_reset;
  input mhz200_clk;
  output reset;
  output p_clk;
  output px5_clk;
  output px1p25_dbg_clk;
  output pll_lckd;
  output hsync;
  output vsync;
  output de;
  output basic_de;
  output blue_vld;
  output green_vld;
  output red_vld;
  output blue_rdy;
  output green_rdy;
  output red_rdy;
  output psalgnerr;
  output [29:0]sdout;
  output [7:0]red;
  output [7:0]green;
  output [7:0]blue;
  output encoding;
  output hdcp_ena;
  output [3:0]red_di;
  output [3:0]green_di;
  output [3:0]blue_di;
  output data_gb;
  output video_gb;
  output [3:0]ctl_code;
  output cv;
  output line_end;
  output [31:0]green_eye;
  output [31:0]blue_eye;
  output [31:0]red_eye;
  output [31:0]green_debug;
  output [31:0]blue_debug;
  output [31:0]red_debug;
endmodule
