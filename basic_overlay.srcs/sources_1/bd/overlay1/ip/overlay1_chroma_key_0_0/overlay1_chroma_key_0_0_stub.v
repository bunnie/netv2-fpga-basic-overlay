// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Mon Nov 21 13:24:16 2016
// Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               f:/largework/fpga/netv2/basic-overlay/basic_overlay.srcs/sources_1/bd/overlay1/ip/overlay1_chroma_key_0_0/overlay1_chroma_key_0_0_stub.v
// Design      : overlay1_chroma_key_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a50tcsg325-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "chroma_key,Vivado 2016.1" *)
module overlay1_chroma_key_0_0(clk, blue_video, green_video, red_video, blue_comp, green_comp, red_comp, blue_blend, green_blend, red_blend, cipher_stream, chroma_en, hsync, vsync, de, vid_gb, dat_gb, dat_ena, ctl_code, blue_di, red_di, green_di, hsync_pipe, vsync_pipe, de_pipe, vid_gb_pipe, dat_gb_pipe, dat_ena_pipe, ctl_code_pipe, blue_di_pipe, green_di_pipe, red_di_pipe)
/* synthesis syn_black_box black_box_pad_pin="clk,blue_video[7:0],green_video[7:0],red_video[7:0],blue_comp[7:0],green_comp[7:0],red_comp[7:0],blue_blend[7:0],green_blend[7:0],red_blend[7:0],cipher_stream[23:0],chroma_en,hsync,vsync,de,vid_gb,dat_gb,dat_ena,ctl_code[3:0],blue_di[3:0],red_di[3:0],green_di[3:0],hsync_pipe,vsync_pipe,de_pipe,vid_gb_pipe,dat_gb_pipe,dat_ena_pipe,ctl_code_pipe[3:0],blue_di_pipe[3:0],green_di_pipe[3:0],red_di_pipe[3:0]" */;
  input clk;
  input [7:0]blue_video;
  input [7:0]green_video;
  input [7:0]red_video;
  input [7:0]blue_comp;
  input [7:0]green_comp;
  input [7:0]red_comp;
  output [7:0]blue_blend;
  output [7:0]green_blend;
  output [7:0]red_blend;
  input [23:0]cipher_stream;
  input chroma_en;
  input hsync;
  input vsync;
  input de;
  input vid_gb;
  input dat_gb;
  input dat_ena;
  input [3:0]ctl_code;
  input [3:0]blue_di;
  input [3:0]red_di;
  input [3:0]green_di;
  output hsync_pipe;
  output vsync_pipe;
  output de_pipe;
  output vid_gb_pipe;
  output dat_gb_pipe;
  output dat_ena_pipe;
  output [3:0]ctl_code_pipe;
  output [3:0]blue_di_pipe;
  output [3:0]green_di_pipe;
  output [3:0]red_di_pipe;
endmodule
