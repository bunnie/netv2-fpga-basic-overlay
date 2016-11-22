// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Sun Oct 30 00:03:23 2016
// Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_reg_expander_0_0/overlay1_reg_expander_0_0_stub.v
// Design      : overlay1_reg_expander_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a50tcsg325-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "reg_expander,Vivado 2016.1" *)
module overlay1_reg_expander_0_0(wr_clk, reset, rd_clk, wr_addr, wr_data, we, bank0, bank1)
/* synthesis syn_black_box black_box_pad_pin="wr_clk,reset,rd_clk,wr_addr[2:0],wr_data[7:0],we,bank0[55:0],bank1[7:0]" */;
  input wr_clk;
  input reset;
  input rd_clk;
  input [2:0]wr_addr;
  input [7:0]wr_data;
  input we;
  output [55:0]bank0;
  output [7:0]bank1;
endmodule
