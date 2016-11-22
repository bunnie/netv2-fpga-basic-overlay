// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Mon Oct 31 00:59:30 2016
// Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_dvi_encoder_v2_0_0/overlay1_dvi_encoder_v2_0_0_stub.v
// Design      : overlay1_dvi_encoder_v2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a50tcsg325-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dvi_encoder,Vivado 2016.1" *)
module overlay1_dvi_encoder_v2_0_0(p_clk, px5_clk, reset, blue_din, green_din, red_din, hsync, vsync, de, TMDS_0_P, TMDS_0_N, TMDS_1_P, TMDS_1_N, TMDS_2_P, TMDS_2_N, TMDS_CLK_P, TMDS_CLK_N, vid_gb, dat_gb, dat_ena, blue_di, green_di, red_di, ctl_code, bypass_sdata, bypass_ena, bypass_video_only)
/* synthesis syn_black_box black_box_pad_pin="p_clk,px5_clk,reset,blue_din[7:0],green_din[7:0],red_din[7:0],hsync,vsync,de,TMDS_0_P,TMDS_0_N,TMDS_1_P,TMDS_1_N,TMDS_2_P,TMDS_2_N,TMDS_CLK_P,TMDS_CLK_N,vid_gb,dat_gb,dat_ena,blue_di[3:0],green_di[3:0],red_di[3:0],ctl_code[3:0],bypass_sdata[29:0],bypass_ena,bypass_video_only" */;
  input p_clk;
  input px5_clk;
  input reset;
  input [7:0]blue_din;
  input [7:0]green_din;
  input [7:0]red_din;
  input hsync;
  input vsync;
  input de;
  output TMDS_0_P;
  output TMDS_0_N;
  output TMDS_1_P;
  output TMDS_1_N;
  output TMDS_2_P;
  output TMDS_2_N;
  output TMDS_CLK_P;
  output TMDS_CLK_N;
  input vid_gb;
  input dat_gb;
  input dat_ena;
  input [3:0]blue_di;
  input [3:0]green_di;
  input [3:0]red_di;
  input [3:0]ctl_code;
  input [29:0]bypass_sdata;
  input bypass_ena;
  input bypass_video_only;
endmodule
