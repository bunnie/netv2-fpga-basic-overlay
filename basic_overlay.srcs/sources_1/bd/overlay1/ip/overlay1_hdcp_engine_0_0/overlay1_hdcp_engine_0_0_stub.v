// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Mon Oct 31 00:59:35 2016
// Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_hdcp_engine_0_0/overlay1_hdcp_engine_0_0_stub.v
// Design      : overlay1_hdcp_engine_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a50tcsg325-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "hdcp_engine,Vivado 2016.1" *)
module overlay1_hdcp_engine_0_0(clk, reset, hpd, ctl_code, cv, de, line_end, hsync, vsync, hdcp_ena, Km_rdy, Km, An_rdy, An, cipher_stream, hdcp_is_ready)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,hpd,ctl_code[3:0],cv,de,line_end,hsync,vsync,hdcp_ena,Km_rdy,Km[55:0],An_rdy,An[63:0],cipher_stream[23:0],hdcp_is_ready" */;
  input clk;
  input reset;
  input hpd;
  input [3:0]ctl_code;
  input cv;
  input de;
  input line_end;
  input hsync;
  input vsync;
  input hdcp_ena;
  input Km_rdy;
  input [55:0]Km;
  input An_rdy;
  input [63:0]An;
  output [23:0]cipher_stream;
  output hdcp_is_ready;
endmodule
