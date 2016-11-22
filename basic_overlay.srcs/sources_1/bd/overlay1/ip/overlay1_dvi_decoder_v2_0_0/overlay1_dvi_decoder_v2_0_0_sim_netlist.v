// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Tue Nov 01 00:07:16 2016
// Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_dvi_decoder_v2_0_0/overlay1_dvi_decoder_v2_0_0_sim_netlist.v
// Design      : overlay1_dvi_decoder_v2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tcsg325-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "overlay1_dvi_decoder_v2_0_0,dvi_decoder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "dvi_decoder,Vivado 2016.1" *) 
(* NotValidForBitStream *)
module overlay1_dvi_decoder_v2_0_0
   (rx_clk,
    blue_p,
    blue_n,
    green_p,
    green_n,
    red_p,
    red_n,
    ex_reset,
    mhz200_clk,
    reset,
    p_clk,
    px5_clk,
    px1p25_dbg_clk,
    pll_lckd,
    hsync,
    vsync,
    de,
    basic_de,
    blue_vld,
    green_vld,
    red_vld,
    blue_rdy,
    green_rdy,
    red_rdy,
    psalgnerr,
    sdout,
    red,
    green,
    blue,
    encoding,
    hdcp_ena,
    red_di,
    green_di,
    blue_di,
    data_gb,
    video_gb,
    ctl_code,
    cv,
    line_end,
    green_eye,
    blue_eye,
    red_eye,
    green_debug,
    blue_debug,
    red_debug);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rx_clk CLK" *) input rx_clk;
  input blue_p;
  input blue_n;
  input green_p;
  input green_n;
  input red_p;
  input red_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ex_reset RST" *) input ex_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 mhz200_clk CLK" *) input mhz200_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) output reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 p_clk CLK" *) output p_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 px5_clk CLK" *) output px5_clk;
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

  wire \<const0> ;
  wire basic_de;
  wire [7:0]blue;
  wire [31:0]blue_debug;
  wire [3:0]blue_di;
  wire [31:0]blue_eye;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) wire blue_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) wire blue_p;
  wire blue_rdy;
  wire blue_vld;
  wire [3:0]ctl_code;
  wire cv;
  wire data_gb;
  wire de;
  wire encoding;
  wire ex_reset;
  wire [7:0]green;
  wire [31:0]green_debug;
  wire [3:0]green_di;
  wire [31:0]green_eye;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) wire green_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) wire green_p;
  wire green_rdy;
  wire green_vld;
  wire hdcp_ena;
  wire hsync;
  wire line_end;
  wire mhz200_clk;
  wire p_clk;
  wire pll_lckd;
  wire px1p25_dbg_clk;
  wire px5_clk;
  wire [7:0]red;
  wire [31:0]red_debug;
  wire [3:0]red_di;
  wire [31:0]red_eye;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) wire red_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) wire red_p;
  wire red_rdy;
  wire red_vld;
  wire reset;
  wire rx_clk;
  wire [29:0]sdout;
  wire video_gb;
  wire vsync;

  assign psalgnerr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  overlay1_dvi_decoder_v2_0_0_dvi_decoder inst
       (.CLKB0(px5_clk),
        .SR(reset),
        .basic_de(basic_de),
        .blue(blue),
        .blue_debug(blue_debug),
        .blue_di(blue_di),
        .blue_eye(blue_eye),
        .blue_n(blue_n),
        .blue_p(blue_p),
        .blue_rdy(blue_rdy),
        .blue_vld(blue_vld),
        .ctl_code(ctl_code),
        .cv(cv),
        .data_gb(data_gb),
        .de(de),
        .encoding(encoding),
        .ex_reset(ex_reset),
        .green(green),
        .green_debug(green_debug),
        .green_di(green_di),
        .green_eye(green_eye),
        .green_n(green_n),
        .green_p(green_p),
        .green_rdy(green_rdy),
        .green_vld(green_vld),
        .hdcp_ena(hdcp_ena),
        .hsync(hsync),
        .line_end(line_end),
        .mhz200_clk(mhz200_clk),
        .p_clk(p_clk),
        .pll_lckd(pll_lckd),
        .px1p25_dbg_clk(px1p25_dbg_clk),
        .px5_clk(px5_clk),
        .red(red),
        .red_debug(red_debug),
        .red_di(red_di),
        .red_eye(red_eye),
        .red_n(red_n),
        .red_p(red_p),
        .red_rdy(red_rdy),
        .red_vld(red_vld),
        .rx_clk(rx_clk),
        .sdout({sdout[29:10],sdout[8:0]}),
        .\sdout_9__s_port_] (sdout[9]),
        .video_gb(video_gb),
        .vsync(vsync));
endmodule

(* ORIG_REF_NAME = "DRAM16XN" *) 
module overlay1_dvi_decoder_v2_0_0_DRAM16XN
   (O_DATA_OUT_DP,
    rx_clk,
    \dataout_reg[9] ,
    WRITE_EN,
    Q,
    \ra_reg[3] );
  output [9:0]O_DATA_OUT_DP;
  input rx_clk;
  input [9:0]\dataout_reg[9] ;
  input WRITE_EN;
  input [3:0]Q;
  input [3:0]\ra_reg[3] ;

  wire [9:0]O_DATA_OUT_DP;
  wire [3:0]Q;
  wire WRITE_EN;
  wire [9:0]\dataout_reg[9] ;
  wire \dram16s[0].i_RAM16X1D_U_n_1 ;
  wire \dram16s[1].i_RAM16X1D_U_n_1 ;
  wire \dram16s[2].i_RAM16X1D_U_n_1 ;
  wire \dram16s[3].i_RAM16X1D_U_n_1 ;
  wire \dram16s[4].i_RAM16X1D_U_n_1 ;
  wire \dram16s[5].i_RAM16X1D_U_n_1 ;
  wire \dram16s[6].i_RAM16X1D_U_n_1 ;
  wire \dram16s[7].i_RAM16X1D_U_n_1 ;
  wire \dram16s[8].i_RAM16X1D_U_n_1 ;
  wire \dram16s[9].i_RAM16X1D_U_n_1 ;
  wire [3:0]\ra_reg[3] ;
  wire rx_clk;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[0].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [0]),
        .DPO(O_DATA_OUT_DP[0]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[0].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[1].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [1]),
        .DPO(O_DATA_OUT_DP[1]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[1].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[2].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [2]),
        .DPO(O_DATA_OUT_DP[2]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[2].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[3].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [3]),
        .DPO(O_DATA_OUT_DP[3]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[3].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[4].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [4]),
        .DPO(O_DATA_OUT_DP[4]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[4].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[5].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [5]),
        .DPO(O_DATA_OUT_DP[5]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[5].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[6].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [6]),
        .DPO(O_DATA_OUT_DP[6]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[6].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[7].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [7]),
        .DPO(O_DATA_OUT_DP[7]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[7].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[8].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [8]),
        .DPO(O_DATA_OUT_DP[8]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[8].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[9].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [9]),
        .DPO(O_DATA_OUT_DP[9]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[9].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
endmodule

(* ORIG_REF_NAME = "DRAM16XN" *) 
module overlay1_dvi_decoder_v2_0_0_DRAM16XN_15
   (O_DATA_OUT_DP,
    rx_clk,
    \dataout_reg[9] ,
    WRITE_EN,
    Q,
    \ra_reg[3] );
  output [9:0]O_DATA_OUT_DP;
  input rx_clk;
  input [9:0]\dataout_reg[9] ;
  input WRITE_EN;
  input [3:0]Q;
  input [3:0]\ra_reg[3] ;

  wire [9:0]O_DATA_OUT_DP;
  wire [3:0]Q;
  wire WRITE_EN;
  wire [9:0]\dataout_reg[9] ;
  wire \dram16s[0].i_RAM16X1D_U_n_1 ;
  wire \dram16s[1].i_RAM16X1D_U_n_1 ;
  wire \dram16s[2].i_RAM16X1D_U_n_1 ;
  wire \dram16s[3].i_RAM16X1D_U_n_1 ;
  wire \dram16s[4].i_RAM16X1D_U_n_1 ;
  wire \dram16s[5].i_RAM16X1D_U_n_1 ;
  wire \dram16s[6].i_RAM16X1D_U_n_1 ;
  wire \dram16s[7].i_RAM16X1D_U_n_1 ;
  wire \dram16s[8].i_RAM16X1D_U_n_1 ;
  wire \dram16s[9].i_RAM16X1D_U_n_1 ;
  wire [3:0]\ra_reg[3] ;
  wire rx_clk;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[0].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [0]),
        .DPO(O_DATA_OUT_DP[0]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[0].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[1].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [1]),
        .DPO(O_DATA_OUT_DP[1]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[1].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[2].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [2]),
        .DPO(O_DATA_OUT_DP[2]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[2].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[3].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [3]),
        .DPO(O_DATA_OUT_DP[3]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[3].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[4].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [4]),
        .DPO(O_DATA_OUT_DP[4]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[4].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[5].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [5]),
        .DPO(O_DATA_OUT_DP[5]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[5].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[6].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [6]),
        .DPO(O_DATA_OUT_DP[6]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[6].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[7].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [7]),
        .DPO(O_DATA_OUT_DP[7]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[7].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[8].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [8]),
        .DPO(O_DATA_OUT_DP[8]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[8].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[9].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [9]),
        .DPO(O_DATA_OUT_DP[9]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[9].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
endmodule

(* ORIG_REF_NAME = "DRAM16XN" *) 
module overlay1_dvi_decoder_v2_0_0_DRAM16XN_9
   (O_DATA_OUT_DP,
    rx_clk,
    \dataout_reg[9] ,
    WRITE_EN,
    Q,
    \ra_reg[3] );
  output [9:0]O_DATA_OUT_DP;
  input rx_clk;
  input [9:0]\dataout_reg[9] ;
  input WRITE_EN;
  input [3:0]Q;
  input [3:0]\ra_reg[3] ;

  wire [9:0]O_DATA_OUT_DP;
  wire [3:0]Q;
  wire WRITE_EN;
  wire [9:0]\dataout_reg[9] ;
  wire \dram16s[0].i_RAM16X1D_U_n_1 ;
  wire \dram16s[1].i_RAM16X1D_U_n_1 ;
  wire \dram16s[2].i_RAM16X1D_U_n_1 ;
  wire \dram16s[3].i_RAM16X1D_U_n_1 ;
  wire \dram16s[4].i_RAM16X1D_U_n_1 ;
  wire \dram16s[5].i_RAM16X1D_U_n_1 ;
  wire \dram16s[6].i_RAM16X1D_U_n_1 ;
  wire \dram16s[7].i_RAM16X1D_U_n_1 ;
  wire \dram16s[8].i_RAM16X1D_U_n_1 ;
  wire \dram16s[9].i_RAM16X1D_U_n_1 ;
  wire [3:0]\ra_reg[3] ;
  wire rx_clk;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[0].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [0]),
        .DPO(O_DATA_OUT_DP[0]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[0].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[1].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [1]),
        .DPO(O_DATA_OUT_DP[1]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[1].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[2].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [2]),
        .DPO(O_DATA_OUT_DP[2]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[2].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[3].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [3]),
        .DPO(O_DATA_OUT_DP[3]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[3].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[4].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [4]),
        .DPO(O_DATA_OUT_DP[4]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[4].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[5].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [5]),
        .DPO(O_DATA_OUT_DP[5]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[5].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[6].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [6]),
        .DPO(O_DATA_OUT_DP[6]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[6].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[7].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [7]),
        .DPO(O_DATA_OUT_DP[7]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[7].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[8].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [8]),
        .DPO(O_DATA_OUT_DP[8]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[8].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \dram16s[9].i_RAM16X1D_U 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\dataout_reg[9] [9]),
        .DPO(O_DATA_OUT_DP[9]),
        .DPRA0(\ra_reg[3] [0]),
        .DPRA1(\ra_reg[3] [1]),
        .DPRA2(\ra_reg[3] [2]),
        .DPRA3(\ra_reg[3] [3]),
        .DPRA4(1'b0),
        .SPO(\dram16s[9].i_RAM16X1D_U_n_1 ),
        .WCLK(rx_clk),
        .WE(WRITE_EN));
endmodule

(* ORIG_REF_NAME = "chnlbond" *) 
module overlay1_dvi_decoder_v2_0_0_chnlbond
   (rcvd_ctkn0_1,
    we,
    red_rdy,
    c1_reg,
    Q,
    c0_reg,
    \sdout_reg[0] ,
    line_end,
    vgb_reg,
    dgb_reg,
    de_reg,
    rx_clk,
    rawdata_vld,
    psaligned_reg,
    psaligned_reg_0,
    c1_reg_0,
    c0_reg_0,
    iamrdy_reg_0,
    iamrdy_reg_1,
    de_r,
    de_g,
    rcvd_ctkn0,
    de_b,
    rcvd_ctkn0_0,
    \dataout_reg[9] );
  output rcvd_ctkn0_1;
  output we;
  output red_rdy;
  output c1_reg;
  output [9:0]Q;
  output c0_reg;
  output \sdout_reg[0] ;
  output line_end;
  output vgb_reg;
  output dgb_reg;
  output de_reg;
  input rx_clk;
  input rawdata_vld;
  input psaligned_reg;
  input [0:0]psaligned_reg_0;
  input c1_reg_0;
  input c0_reg_0;
  input iamrdy_reg_0;
  input iamrdy_reg_1;
  input de_r;
  input de_g;
  input rcvd_ctkn0;
  input de_b;
  input rcvd_ctkn0_0;
  input [9:0]\dataout_reg[9] ;

  wire [9:0]Q;
  wire blnkbgn;
  wire blnkbgn_i_1__1_n_0;
  wire c0_reg;
  wire c0_reg_0;
  wire c1_reg;
  wire c1_reg_0;
  wire [9:0]\dataout_reg[9] ;
  wire de_b;
  wire de_g;
  wire de_i_2__1_n_0;
  wire de_i_3__1_n_0;
  wire de_i_4__1_n_0;
  wire de_r;
  wire de_reg;
  wire \dec_b/c01 ;
  wire dgb_i_2__0_n_0;
  wire dgb_reg;
  wire [9:0]dpfo_dout;
  wire iamrdy_i_2__1_n_0;
  wire iamrdy_reg_0;
  wire iamrdy_reg_1;
  wire line_end;
  wire line_end_INST_0_i_4_n_0;
  wire line_end_INST_0_i_5_n_0;
  wire [3:0]p_0_in__3;
  wire [3:0]p_0_in__4;
  wire psaligned_reg;
  wire [0:0]psaligned_reg_0;
  wire ra_en;
  wire ra_en_i_1__1_n_0;
  wire [3:0]ra_reg;
  wire rawdata_vld;
  wire rawdata_vld_rising;
  wire rcvd_ctkn;
  wire rcvd_ctkn0;
  wire rcvd_ctkn0_0;
  wire rcvd_ctkn0_1;
  wire rcvd_ctkn_q;
  wire red_rdy;
  wire rx_clk;
  wire \sdout_reg[0] ;
  wire skip_line;
  wire skip_line_i_1__1_n_0;
  wire vgb_i_2_n_0;
  wire vgb_i_3_n_0;
  wire vgb_reg;
  wire [3:0]wa_reg;
  wire we;

  LUT2 #(
    .INIT(4'h2)) 
    blnkbgn_i_1__1
       (.I0(rcvd_ctkn),
        .I1(rcvd_ctkn_q),
        .O(blnkbgn_i_1__1_n_0));
  FDRE blnkbgn_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(blnkbgn_i_1__1_n_0),
        .Q(blnkbgn),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h15FF1500)) 
    c0_i_1__1
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[6]),
        .I3(de_i_2__1_n_0),
        .I4(c0_reg_0),
        .O(c0_reg));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT5 #(
    .INIT(32'h18FF1800)) 
    c1_i_1__1
       (.I0(Q[6]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(de_i_2__1_n_0),
        .I4(c1_reg_0),
        .O(c1_reg));
  overlay1_dvi_decoder_v2_0_0_DRAM16XN cbfifo_i
       (.O_DATA_OUT_DP(dpfo_dout),
        .Q(wa_reg),
        .WRITE_EN(we),
        .\dataout_reg[9] (\dataout_reg[9] ),
        .\ra_reg[3] (ra_reg),
        .rx_clk(rx_clk));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT1 #(
    .INIT(2'h1)) 
    de_i_1__1
       (.I0(de_i_2__1_n_0),
        .O(de_reg));
  LUT5 #(
    .INIT(32'h000000DB)) 
    de_i_2__1
       (.I0(Q[7]),
        .I1(Q[9]),
        .I2(Q[6]),
        .I3(de_i_3__1_n_0),
        .I4(de_i_4__1_n_0),
        .O(de_i_2__1_n_0));
  LUT5 #(
    .INIT(32'hFF6FF6FF)) 
    de_i_3__1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(de_i_3__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDBFFDBFFFFF)) 
    de_i_4__1
       (.I0(Q[1]),
        .I1(Q[6]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(de_i_4__1_n_0));
  LUT5 #(
    .INIT(32'h00004000)) 
    dgb_i_1__0
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(dgb_i_2__0_n_0),
        .O(dgb_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    dgb_i_2__0
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[8]),
        .I5(Q[6]),
        .O(dgb_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    iamrdy_i_2__1
       (.I0(blnkbgn),
        .I1(skip_line),
        .I2(red_rdy),
        .O(iamrdy_i_2__1_n_0));
  FDRE iamrdy_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(iamrdy_i_2__1_n_0),
        .Q(red_rdy),
        .R(psaligned_reg_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    line_end_INST_0
       (.I0(rcvd_ctkn0_1),
        .I1(de_r),
        .I2(de_g),
        .I3(rcvd_ctkn0),
        .I4(de_b),
        .I5(rcvd_ctkn0_0),
        .O(line_end));
  LUT6 #(
    .INIT(64'h0044000000000F00)) 
    line_end_INST_0_i_1
       (.I0(line_end_INST_0_i_4_n_0),
        .I1(Q[5]),
        .I2(line_end_INST_0_i_5_n_0),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(rcvd_ctkn0_1));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    line_end_INST_0_i_4
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[6]),
        .O(line_end_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    line_end_INST_0_i_5
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(line_end_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ra[0]_i_1__1 
       (.I0(ra_reg[0]),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ra[1]_i_1__1 
       (.I0(ra_reg[0]),
        .I1(ra_reg[1]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ra[2]_i_1__1 
       (.I0(ra_reg[0]),
        .I1(ra_reg[1]),
        .I2(ra_reg[2]),
        .O(p_0_in__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ra[3]_i_1__1 
       (.I0(ra_reg[1]),
        .I1(ra_reg[0]),
        .I2(ra_reg[2]),
        .I3(ra_reg[3]),
        .O(p_0_in__4[3]));
  LUT5 #(
    .INIT(32'hFFFFFF70)) 
    ra_en_i_1__1
       (.I0(blnkbgn),
        .I1(skip_line),
        .I2(ra_en),
        .I3(\dec_b/c01 ),
        .I4(rawdata_vld_rising),
        .O(ra_en_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ra_en_i_2
       (.I0(red_rdy),
        .I1(iamrdy_reg_1),
        .I2(iamrdy_reg_0),
        .O(\dec_b/c01 ));
  FDRE #(
    .INIT(1'b0)) 
    ra_en_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(ra_en_i_1__1_n_0),
        .Q(ra_en),
        .R(1'b0));
  FDRE \ra_reg[0] 
       (.C(rx_clk),
        .CE(ra_en),
        .D(p_0_in__4[0]),
        .Q(ra_reg[0]),
        .R(psaligned_reg_0));
  FDRE \ra_reg[1] 
       (.C(rx_clk),
        .CE(ra_en),
        .D(p_0_in__4[1]),
        .Q(ra_reg[1]),
        .R(psaligned_reg_0));
  FDRE \ra_reg[2] 
       (.C(rx_clk),
        .CE(ra_en),
        .D(p_0_in__4[2]),
        .Q(ra_reg[2]),
        .R(psaligned_reg_0));
  FDRE \ra_reg[3] 
       (.C(rx_clk),
        .CE(ra_en),
        .D(p_0_in__4[3]),
        .Q(ra_reg[3]),
        .R(psaligned_reg_0));
  FDRE rawdata_vld_rising_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(psaligned_reg),
        .Q(rawdata_vld_rising),
        .R(1'b0));
  FDRE rcvd_ctkn_q_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(rcvd_ctkn),
        .Q(rcvd_ctkn_q),
        .R(1'b0));
  FDRE rcvd_ctkn_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(rcvd_ctkn0_1),
        .Q(rcvd_ctkn),
        .R(1'b0));
  FDRE \sdata_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \sdata_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \sdata_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \sdata_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \sdata_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \sdata_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \sdata_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \sdata_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \sdata_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \sdata_reg[9] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \sdout[9]_i_1__0 
       (.I0(red_rdy),
        .I1(iamrdy_reg_0),
        .I2(iamrdy_reg_1),
        .O(\sdout_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'hE)) 
    skip_line_i_1__1
       (.I0(blnkbgn),
        .I1(skip_line),
        .O(skip_line_i_1__1_n_0));
  FDRE skip_line_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(skip_line_i_1__1_n_0),
        .Q(skip_line),
        .R(psaligned_reg_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    vgb_i_1
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[7]),
        .I3(vgb_i_2_n_0),
        .I4(vgb_i_3_n_0),
        .I5(Q[2]),
        .O(vgb_reg));
  LUT4 #(
    .INIT(16'hFFEF)) 
    vgb_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[9]),
        .I3(Q[8]),
        .O(vgb_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    vgb_i_3
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(vgb_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wa[0]_i_1__1 
       (.I0(wa_reg[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wa[1]_i_1__1 
       (.I0(wa_reg[0]),
        .I1(wa_reg[1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wa[2]_i_1__1 
       (.I0(wa_reg[0]),
        .I1(wa_reg[1]),
        .I2(wa_reg[2]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wa[3]_i_1__1 
       (.I0(wa_reg[1]),
        .I1(wa_reg[0]),
        .I2(wa_reg[2]),
        .I3(wa_reg[3]),
        .O(p_0_in__3[3]));
  FDRE \wa_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_0_in__3[0]),
        .Q(wa_reg[0]),
        .R(psaligned_reg_0));
  FDRE \wa_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_0_in__3[1]),
        .Q(wa_reg[1]),
        .R(psaligned_reg_0));
  FDRE \wa_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_0_in__3[2]),
        .Q(wa_reg[2]),
        .R(psaligned_reg_0));
  FDRE \wa_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_0_in__3[3]),
        .Q(wa_reg[3]),
        .R(psaligned_reg_0));
  FDRE we_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(rawdata_vld),
        .Q(we),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "chnlbond" *) 
module overlay1_dvi_decoder_v2_0_0_chnlbond_10
   (rcvd_ctkn0,
    we,
    blue_rdy,
    c1_reg,
    Q,
    c0_reg,
    vgb_reg,
    de_reg,
    rx_clk,
    rawdata_vld,
    psaligned_reg,
    psaligned_reg_0,
    iamrdy_reg_0,
    iamrdy_reg_1,
    vsync_q2,
    hsync_q2,
    \dataout_reg[9] );
  output rcvd_ctkn0;
  output we;
  output blue_rdy;
  output c1_reg;
  output [9:0]Q;
  output c0_reg;
  output vgb_reg;
  output de_reg;
  input rx_clk;
  input rawdata_vld;
  input psaligned_reg;
  input [0:0]psaligned_reg_0;
  input iamrdy_reg_0;
  input iamrdy_reg_1;
  input vsync_q2;
  input hsync_q2;
  input [9:0]\dataout_reg[9] ;

  wire [9:0]Q;
  wire blnkbgn;
  wire blnkbgn_i_1_n_0;
  wire blue_rdy;
  wire c0_reg;
  wire c1_reg;
  wire [9:0]\dataout_reg[9] ;
  wire de_i_2_n_0;
  wire de_i_3_n_0;
  wire de_i_4_n_0;
  wire de_reg;
  wire [9:0]dpfo_dout;
  wire hsync_q2;
  wire iamrdy_i_2_n_0;
  wire iamrdy_reg_0;
  wire iamrdy_reg_1;
  wire line_end_INST_0_i_7_n_0;
  wire [3:0]p_0_in__0__0;
  wire [3:0]p_0_in__2;
  wire psaligned_reg;
  wire [0:0]psaligned_reg_0;
  wire ra_en;
  wire ra_en11_out;
  wire ra_en_i_1_n_0;
  wire [3:0]ra_reg__0;
  wire rawdata_vld;
  wire rawdata_vld_rising;
  wire rcvd_ctkn;
  wire rcvd_ctkn0;
  wire rcvd_ctkn_q;
  wire rx_clk;
  wire skip_line;
  wire skip_line_i_1_n_0;
  wire vgb_i_2__0_n_0;
  wire vgb_reg;
  wire vsync_q2;
  wire [3:0]wa_reg__0;
  wire we;

  LUT2 #(
    .INIT(4'h2)) 
    blnkbgn_i_1
       (.I0(rcvd_ctkn),
        .I1(rcvd_ctkn_q),
        .O(blnkbgn_i_1_n_0));
  FDRE blnkbgn_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(blnkbgn_i_1_n_0),
        .Q(blnkbgn),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h07FF0700)) 
    c0_i_1__0
       (.I0(Q[9]),
        .I1(Q[6]),
        .I2(Q[8]),
        .I3(de_i_2_n_0),
        .I4(hsync_q2),
        .O(c0_reg));
  LUT5 #(
    .INIT(32'h18FF1800)) 
    c1_i_1__0
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(Q[9]),
        .I3(de_i_2_n_0),
        .I4(vsync_q2),
        .O(c1_reg));
  overlay1_dvi_decoder_v2_0_0_DRAM16XN_15 cbfifo_i
       (.O_DATA_OUT_DP(dpfo_dout),
        .Q(wa_reg__0),
        .WRITE_EN(we),
        .\dataout_reg[9] (\dataout_reg[9] ),
        .\ra_reg[3] (ra_reg__0),
        .rx_clk(rx_clk));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    de_i_1
       (.I0(de_i_2_n_0),
        .O(de_reg));
  LUT5 #(
    .INIT(32'h000000E7)) 
    de_i_2
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[9]),
        .I3(de_i_3_n_0),
        .I4(de_i_4_n_0),
        .O(de_i_2_n_0));
  LUT5 #(
    .INIT(32'hFF6FF6FF)) 
    de_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(de_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDBFFDBFFFFF)) 
    de_i_4
       (.I0(Q[1]),
        .I1(Q[6]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(de_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    iamrdy_i_2
       (.I0(blnkbgn),
        .I1(skip_line),
        .I2(blue_rdy),
        .O(iamrdy_i_2_n_0));
  FDRE iamrdy_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(iamrdy_i_2_n_0),
        .Q(blue_rdy),
        .R(psaligned_reg_0));
  LUT6 #(
    .INIT(64'h0000000000100800)) 
    line_end_INST_0_i_3
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(line_end_INST_0_i_7_n_0),
        .O(rcvd_ctkn0));
  LUT6 #(
    .INIT(64'hFFFFFFE7E7FFFFFF)) 
    line_end_INST_0_i_7
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[7]),
        .O(line_end_INST_0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ra[0]_i_1 
       (.I0(ra_reg__0[0]),
        .O(p_0_in__0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ra[1]_i_1 
       (.I0(ra_reg__0[0]),
        .I1(ra_reg__0[1]),
        .O(p_0_in__0__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ra[2]_i_1 
       (.I0(ra_reg__0[0]),
        .I1(ra_reg__0[1]),
        .I2(ra_reg__0[2]),
        .O(p_0_in__0__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ra[3]_i_1 
       (.I0(ra_reg__0[1]),
        .I1(ra_reg__0[0]),
        .I2(ra_reg__0[2]),
        .I3(ra_reg__0[3]),
        .O(p_0_in__0__0[3]));
  LUT3 #(
    .INIT(8'h80)) 
    ra_en1
       (.I0(blue_rdy),
        .I1(iamrdy_reg_0),
        .I2(iamrdy_reg_1),
        .O(ra_en11_out));
  LUT5 #(
    .INIT(32'hFFFFFF70)) 
    ra_en_i_1
       (.I0(blnkbgn),
        .I1(skip_line),
        .I2(ra_en),
        .I3(ra_en11_out),
        .I4(rawdata_vld_rising),
        .O(ra_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ra_en_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(ra_en_i_1_n_0),
        .Q(ra_en),
        .R(1'b0));
  FDRE \ra_reg[0] 
       (.C(rx_clk),
        .CE(ra_en),
        .D(p_0_in__0__0[0]),
        .Q(ra_reg__0[0]),
        .R(psaligned_reg_0));
  FDRE \ra_reg[1] 
       (.C(rx_clk),
        .CE(ra_en),
        .D(p_0_in__0__0[1]),
        .Q(ra_reg__0[1]),
        .R(psaligned_reg_0));
  FDRE \ra_reg[2] 
       (.C(rx_clk),
        .CE(ra_en),
        .D(p_0_in__0__0[2]),
        .Q(ra_reg__0[2]),
        .R(psaligned_reg_0));
  FDRE \ra_reg[3] 
       (.C(rx_clk),
        .CE(ra_en),
        .D(p_0_in__0__0[3]),
        .Q(ra_reg__0[3]),
        .R(psaligned_reg_0));
  FDRE rawdata_vld_rising_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(psaligned_reg),
        .Q(rawdata_vld_rising),
        .R(1'b0));
  FDRE rcvd_ctkn_q_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(rcvd_ctkn),
        .Q(rcvd_ctkn_q),
        .R(1'b0));
  FDRE rcvd_ctkn_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(rcvd_ctkn0),
        .Q(rcvd_ctkn),
        .R(1'b0));
  FDRE \sdata_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \sdata_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \sdata_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \sdata_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \sdata_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \sdata_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \sdata_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \sdata_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \sdata_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \sdata_reg[9] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    skip_line_i_1
       (.I0(blnkbgn),
        .I1(skip_line),
        .O(skip_line_i_1_n_0));
  FDRE skip_line_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(skip_line_i_1_n_0),
        .Q(skip_line),
        .R(psaligned_reg_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    vgb_i_1__0
       (.I0(Q[8]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(vgb_i_2__0_n_0),
        .O(vgb_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    vgb_i_2__0
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[2]),
        .I3(Q[9]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(vgb_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wa[0]_i_1 
       (.I0(wa_reg__0[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wa[1]_i_1 
       (.I0(wa_reg__0[0]),
        .I1(wa_reg__0[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wa[2]_i_1 
       (.I0(wa_reg__0[0]),
        .I1(wa_reg__0[1]),
        .I2(wa_reg__0[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wa[3]_i_1 
       (.I0(wa_reg__0[1]),
        .I1(wa_reg__0[0]),
        .I2(wa_reg__0[2]),
        .I3(wa_reg__0[3]),
        .O(p_0_in__2[3]));
  FDRE \wa_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_0_in__2[0]),
        .Q(wa_reg__0[0]),
        .R(psaligned_reg_0));
  FDRE \wa_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_0_in__2[1]),
        .Q(wa_reg__0[1]),
        .R(psaligned_reg_0));
  FDRE \wa_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_0_in__2[2]),
        .Q(wa_reg__0[2]),
        .R(psaligned_reg_0));
  FDRE \wa_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_0_in__2[3]),
        .Q(wa_reg__0[3]),
        .R(psaligned_reg_0));
  FDRE we_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(rawdata_vld),
        .Q(we),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "chnlbond" *) 
module overlay1_dvi_decoder_v2_0_0_chnlbond_4
   (rcvd_ctkn0,
    we,
    green_rdy,
    c0_reg,
    Q,
    c1_reg,
    \sdout_reg[0] ,
    vgb_reg,
    dgb,
    de_reg,
    rx_clk,
    rawdata_vld,
    psaligned_reg,
    psaligned_reg_0,
    iamrdy_reg_0,
    iamrdy_reg_1,
    ctl_code_wire,
    \dataout_reg[9] );
  output rcvd_ctkn0;
  output we;
  output green_rdy;
  output c0_reg;
  output [9:0]Q;
  output c1_reg;
  output \sdout_reg[0] ;
  output vgb_reg;
  output dgb;
  output de_reg;
  input rx_clk;
  input rawdata_vld;
  input psaligned_reg;
  input [0:0]psaligned_reg_0;
  input iamrdy_reg_0;
  input iamrdy_reg_1;
  input [1:0]ctl_code_wire;
  input [9:0]\dataout_reg[9] ;

  wire [9:0]Q;
  wire blnkbgn;
  wire blnkbgn_i_1__0_n_0;
  wire c0_reg;
  wire c1_reg;
  wire [1:0]ctl_code_wire;
  wire [9:0]\dataout_reg[9] ;
  wire de_i_2__0_n_0;
  wire de_i_3__0_n_0;
  wire de_i_4__0_n_0;
  wire de_i_5_n_0;
  wire de_reg;
  wire dgb;
  wire dgb_i_2_n_0;
  wire dgb_i_3_n_0;
  wire [9:0]dpfo_dout;
  wire green_rdy;
  wire iamrdy_i_2__0_n_0;
  wire iamrdy_reg_0;
  wire iamrdy_reg_1;
  wire line_end_INST_0_i_6_n_0;
  wire [3:0]p_0_in__1__0;
  wire [3:0]p_0_in__2__0;
  wire psaligned_reg;
  wire [0:0]psaligned_reg_0;
  wire ra_en;
  wire ra_en11_out;
  wire ra_en_i_1__0_n_0;
  wire [3:0]ra_reg;
  wire rawdata_vld;
  wire rawdata_vld_rising;
  wire rcvd_ctkn;
  wire rcvd_ctkn0;
  wire rcvd_ctkn_q;
  wire rx_clk;
  wire \sdout_reg[0] ;
  wire skip_line;
  wire skip_line_i_1__0_n_0;
  wire vgb_reg;
  wire [3:0]wa_reg;
  wire we;

  LUT2 #(
    .INIT(4'h2)) 
    blnkbgn_i_1__0
       (.I0(rcvd_ctkn),
        .I1(rcvd_ctkn_q),
        .O(blnkbgn_i_1__0_n_0));
  FDRE blnkbgn_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(blnkbgn_i_1__0_n_0),
        .Q(blnkbgn),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h74)) 
    c0_i_1
       (.I0(Q[8]),
        .I1(de_i_2__0_n_0),
        .I2(ctl_code_wire[0]),
        .O(c0_reg));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h62FF6200)) 
    c1_i_1
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(de_i_2__0_n_0),
        .I4(ctl_code_wire[1]),
        .O(c1_reg));
  overlay1_dvi_decoder_v2_0_0_DRAM16XN_9 cbfifo_i
       (.O_DATA_OUT_DP(dpfo_dout),
        .Q(wa_reg),
        .WRITE_EN(we),
        .\dataout_reg[9] (\dataout_reg[9] ),
        .\ra_reg[3] (ra_reg),
        .rx_clk(rx_clk));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT1 #(
    .INIT(2'h1)) 
    de_i_1__0
       (.I0(de_i_2__0_n_0),
        .O(de_reg));
  LUT6 #(
    .INIT(64'h0004000404000404)) 
    de_i_2__0
       (.I0(de_i_3__0_n_0),
        .I1(de_i_4__0_n_0),
        .I2(de_i_5_n_0),
        .I3(Q[3]),
        .I4(Q[9]),
        .I5(Q[2]),
        .O(de_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9FF9FFFFFFFF9FF9)) 
    de_i_3__0
       (.I0(Q[4]),
        .I1(Q[7]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[6]),
        .I5(Q[2]),
        .O(de_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    de_i_4__0
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(de_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hF99F)) 
    de_i_5
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[2]),
        .O(de_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    dgb_i_1
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(dgb_i_2_n_0),
        .I4(Q[9]),
        .I5(dgb_i_3_n_0),
        .O(dgb));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    dgb_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[8]),
        .I3(Q[7]),
        .O(dgb_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hB)) 
    dgb_i_3
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(dgb_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    iamrdy_i_2__0
       (.I0(blnkbgn),
        .I1(skip_line),
        .I2(green_rdy),
        .O(iamrdy_i_2__0_n_0));
  FDRE iamrdy_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(iamrdy_i_2__0_n_0),
        .Q(green_rdy),
        .R(psaligned_reg_0));
  LUT6 #(
    .INIT(64'h0000000010000008)) 
    line_end_INST_0_i_2
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(line_end_INST_0_i_6_n_0),
        .O(rcvd_ctkn0));
  LUT5 #(
    .INIT(32'hFBFFFFDF)) 
    line_end_INST_0_i_6
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(Q[6]),
        .O(line_end_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ra[0]_i_1__0 
       (.I0(ra_reg[0]),
        .O(p_0_in__2__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ra[1]_i_1__0 
       (.I0(ra_reg[0]),
        .I1(ra_reg[1]),
        .O(p_0_in__2__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ra[2]_i_1__0 
       (.I0(ra_reg[0]),
        .I1(ra_reg[1]),
        .I2(ra_reg[2]),
        .O(p_0_in__2__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ra[3]_i_1__0 
       (.I0(ra_reg[1]),
        .I1(ra_reg[0]),
        .I2(ra_reg[2]),
        .I3(ra_reg[3]),
        .O(p_0_in__2__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ra_en1
       (.I0(green_rdy),
        .I1(iamrdy_reg_0),
        .I2(iamrdy_reg_1),
        .O(ra_en11_out));
  LUT5 #(
    .INIT(32'hFFFFFF70)) 
    ra_en_i_1__0
       (.I0(blnkbgn),
        .I1(skip_line),
        .I2(ra_en),
        .I3(ra_en11_out),
        .I4(rawdata_vld_rising),
        .O(ra_en_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ra_en_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(ra_en_i_1__0_n_0),
        .Q(ra_en),
        .R(1'b0));
  FDRE \ra_reg[0] 
       (.C(rx_clk),
        .CE(ra_en),
        .D(p_0_in__2__0[0]),
        .Q(ra_reg[0]),
        .R(psaligned_reg_0));
  FDRE \ra_reg[1] 
       (.C(rx_clk),
        .CE(ra_en),
        .D(p_0_in__2__0[1]),
        .Q(ra_reg[1]),
        .R(psaligned_reg_0));
  FDRE \ra_reg[2] 
       (.C(rx_clk),
        .CE(ra_en),
        .D(p_0_in__2__0[2]),
        .Q(ra_reg[2]),
        .R(psaligned_reg_0));
  FDRE \ra_reg[3] 
       (.C(rx_clk),
        .CE(ra_en),
        .D(p_0_in__2__0[3]),
        .Q(ra_reg[3]),
        .R(psaligned_reg_0));
  FDRE rawdata_vld_rising_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(psaligned_reg),
        .Q(rawdata_vld_rising),
        .R(1'b0));
  FDRE rcvd_ctkn_q_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(rcvd_ctkn),
        .Q(rcvd_ctkn_q),
        .R(1'b0));
  FDRE rcvd_ctkn_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(rcvd_ctkn0),
        .Q(rcvd_ctkn),
        .R(1'b0));
  FDRE \sdata_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \sdata_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \sdata_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \sdata_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \sdata_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \sdata_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \sdata_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \sdata_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \sdata_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \sdata_reg[9] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(dpfo_dout[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h7F)) 
    \sdout[9]_i_1 
       (.I0(green_rdy),
        .I1(iamrdy_reg_0),
        .I2(iamrdy_reg_1),
        .O(vgb_reg));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \sdout[9]_i_1__1 
       (.I0(green_rdy),
        .I1(iamrdy_reg_1),
        .I2(iamrdy_reg_0),
        .O(\sdout_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'hE)) 
    skip_line_i_1__0
       (.I0(blnkbgn),
        .I1(skip_line),
        .O(skip_line_i_1__0_n_0));
  FDRE skip_line_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(skip_line_i_1__0_n_0),
        .Q(skip_line),
        .R(psaligned_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wa[0]_i_1__0 
       (.I0(wa_reg[0]),
        .O(p_0_in__1__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wa[1]_i_1__0 
       (.I0(wa_reg[0]),
        .I1(wa_reg[1]),
        .O(p_0_in__1__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wa[2]_i_1__0 
       (.I0(wa_reg[0]),
        .I1(wa_reg[1]),
        .I2(wa_reg[2]),
        .O(p_0_in__1__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wa[3]_i_1__0 
       (.I0(wa_reg[1]),
        .I1(wa_reg[0]),
        .I2(wa_reg[2]),
        .I3(wa_reg[3]),
        .O(p_0_in__1__0[3]));
  FDRE \wa_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_0_in__1__0[0]),
        .Q(wa_reg[0]),
        .R(psaligned_reg_0));
  FDRE \wa_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_0_in__1__0[1]),
        .Q(wa_reg[1]),
        .R(psaligned_reg_0));
  FDRE \wa_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_0_in__1__0[2]),
        .Q(wa_reg[2]),
        .R(psaligned_reg_0));
  FDRE \wa_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_0_in__1__0[3]),
        .Q(wa_reg[3]),
        .R(psaligned_reg_0));
  FDRE we_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(rawdata_vld),
        .Q(we),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "decode_terc4" *) 
module overlay1_dvi_decoder_v2_0_0_decode_terc4
   (blue_di,
    SR,
    D,
    rx_clk);
  output [3:0]blue_di;
  input [0:0]SR;
  input [9:0]D;
  input rx_clk;

  wire [9:0]D;
  wire [0:0]SR;
  wire [3:0]blue_di;
  wire \din_r_reg_n_0_[0] ;
  wire \din_r_reg_n_0_[1] ;
  wire \din_r_reg_n_0_[2] ;
  wire \din_r_reg_n_0_[3] ;
  wire \din_r_reg_n_0_[4] ;
  wire \din_r_reg_n_0_[5] ;
  wire \din_r_reg_n_0_[6] ;
  wire \din_r_reg_n_0_[7] ;
  wire \din_r_reg_n_0_[8] ;
  wire \din_r_reg_n_0_[9] ;
  wire dout;
  wire \dout[0]_i_1__1_n_0 ;
  wire \dout[1]_i_1__1_n_0 ;
  wire \dout[2]_i_1__1_n_0 ;
  wire \dout[3]_i_2__1_n_0 ;
  wire \dout[3]_i_3__1_n_0 ;
  wire \dout[3]_i_4__1_n_0 ;
  wire \dout[3]_i_5__1_n_0 ;
  wire \dout[3]_i_6__1_n_0 ;
  wire \dout[3]_i_7__1_n_0 ;
  wire \dout[3]_i_8__1_n_0 ;
  wire \dout[3]_i_9__1_n_0 ;
  wire rx_clk;

  FDRE \din_r_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\din_r_reg_n_0_[0] ),
        .R(SR));
  FDRE \din_r_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\din_r_reg_n_0_[1] ),
        .R(SR));
  FDRE \din_r_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\din_r_reg_n_0_[2] ),
        .R(SR));
  FDRE \din_r_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\din_r_reg_n_0_[3] ),
        .R(SR));
  FDRE \din_r_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\din_r_reg_n_0_[4] ),
        .R(SR));
  FDRE \din_r_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\din_r_reg_n_0_[5] ),
        .R(SR));
  FDRE \din_r_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\din_r_reg_n_0_[6] ),
        .R(SR));
  FDRE \din_r_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\din_r_reg_n_0_[7] ),
        .R(SR));
  FDRE \din_r_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\din_r_reg_n_0_[8] ),
        .R(SR));
  FDRE \din_r_reg[9] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\din_r_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hEFEF000000AF00AF)) 
    \dout[0]_i_1__1 
       (.I0(\din_r_reg_n_0_[1] ),
        .I1(\din_r_reg_n_0_[5] ),
        .I2(\din_r_reg_n_0_[2] ),
        .I3(\din_r_reg_n_0_[8] ),
        .I4(\din_r_reg_n_0_[4] ),
        .I5(\din_r_reg_n_0_[3] ),
        .O(\dout[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hA8CCA8FC80CC80FF)) 
    \dout[1]_i_1__1 
       (.I0(\din_r_reg_n_0_[2] ),
        .I1(\din_r_reg_n_0_[8] ),
        .I2(\din_r_reg_n_0_[7] ),
        .I3(\din_r_reg_n_0_[4] ),
        .I4(\din_r_reg_n_0_[3] ),
        .I5(\din_r_reg_n_0_[5] ),
        .O(\dout[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA04550)) 
    \dout[2]_i_1__1 
       (.I0(\din_r_reg_n_0_[2] ),
        .I1(\din_r_reg_n_0_[8] ),
        .I2(\din_r_reg_n_0_[1] ),
        .I3(\din_r_reg_n_0_[5] ),
        .I4(\din_r_reg_n_0_[3] ),
        .O(\dout[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hDFD5CFC0757F303F)) 
    \dout[3]_i_2__1 
       (.I0(\din_r_reg_n_0_[2] ),
        .I1(\din_r_reg_n_0_[7] ),
        .I2(\din_r_reg_n_0_[8] ),
        .I3(\din_r_reg_n_0_[5] ),
        .I4(\din_r_reg_n_0_[3] ),
        .I5(\din_r_reg_n_0_[4] ),
        .O(\dout[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h00AF00A0C000C000)) 
    \dout[3]_i_3__1 
       (.I0(\dout[3]_i_5__1_n_0 ),
        .I1(\dout[3]_i_6__1_n_0 ),
        .I2(\din_r_reg_n_0_[2] ),
        .I3(\din_r_reg_n_0_[8] ),
        .I4(\dout[3]_i_7__1_n_0 ),
        .I5(\din_r_reg_n_0_[9] ),
        .O(\dout[3]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'h00005808)) 
    \dout[3]_i_4__1 
       (.I0(\din_r_reg_n_0_[8] ),
        .I1(\dout[3]_i_8__1_n_0 ),
        .I2(\din_r_reg_n_0_[9] ),
        .I3(\dout[3]_i_9__1_n_0 ),
        .I4(\din_r_reg_n_0_[2] ),
        .O(\dout[3]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h0012102800000000)) 
    \dout[3]_i_5__1 
       (.I0(\din_r_reg_n_0_[6] ),
        .I1(\din_r_reg_n_0_[5] ),
        .I2(\din_r_reg_n_0_[3] ),
        .I3(\din_r_reg_n_0_[4] ),
        .I4(\din_r_reg_n_0_[1] ),
        .I5(\din_r_reg_n_0_[7] ),
        .O(\dout[3]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004404080)) 
    \dout[3]_i_6__1 
       (.I0(\din_r_reg_n_0_[5] ),
        .I1(\din_r_reg_n_0_[3] ),
        .I2(\din_r_reg_n_0_[4] ),
        .I3(\din_r_reg_n_0_[1] ),
        .I4(\din_r_reg_n_0_[7] ),
        .I5(\din_r_reg_n_0_[6] ),
        .O(\dout[3]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \dout[3]_i_7__1 
       (.I0(\din_r_reg_n_0_[7] ),
        .I1(\din_r_reg_n_0_[5] ),
        .I2(\din_r_reg_n_0_[3] ),
        .I3(\din_r_reg_n_0_[4] ),
        .I4(\din_r_reg_n_0_[1] ),
        .I5(\din_r_reg_n_0_[6] ),
        .O(\dout[3]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010280000)) 
    \dout[3]_i_8__1 
       (.I0(\din_r_reg_n_0_[6] ),
        .I1(\din_r_reg_n_0_[1] ),
        .I2(\din_r_reg_n_0_[4] ),
        .I3(\din_r_reg_n_0_[3] ),
        .I4(\din_r_reg_n_0_[5] ),
        .I5(\din_r_reg_n_0_[7] ),
        .O(\dout[3]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'h0100020800000000)) 
    \dout[3]_i_9__1 
       (.I0(\din_r_reg_n_0_[5] ),
        .I1(\din_r_reg_n_0_[4] ),
        .I2(\din_r_reg_n_0_[3] ),
        .I3(\din_r_reg_n_0_[1] ),
        .I4(\din_r_reg_n_0_[7] ),
        .I5(\din_r_reg_n_0_[6] ),
        .O(\dout[3]_i_9__1_n_0 ));
  FDRE \dout_reg[0] 
       (.C(rx_clk),
        .CE(dout),
        .D(\dout[0]_i_1__1_n_0 ),
        .Q(blue_di[0]),
        .R(SR));
  FDRE \dout_reg[1] 
       (.C(rx_clk),
        .CE(dout),
        .D(\dout[1]_i_1__1_n_0 ),
        .Q(blue_di[1]),
        .R(SR));
  FDRE \dout_reg[2] 
       (.C(rx_clk),
        .CE(dout),
        .D(\dout[2]_i_1__1_n_0 ),
        .Q(blue_di[2]),
        .R(SR));
  FDRE \dout_reg[3] 
       (.C(rx_clk),
        .CE(dout),
        .D(\dout[3]_i_2__1_n_0 ),
        .Q(blue_di[3]),
        .R(SR));
  MUXF7 \dout_reg[3]_i_1__1 
       (.I0(\dout[3]_i_3__1_n_0 ),
        .I1(\dout[3]_i_4__1_n_0 ),
        .O(dout),
        .S(\din_r_reg_n_0_[0] ));
endmodule

(* ORIG_REF_NAME = "decode_terc4" *) 
module overlay1_dvi_decoder_v2_0_0_decode_terc4_0
   (green_di,
    SR,
    D,
    rx_clk);
  output [3:0]green_di;
  input [0:0]SR;
  input [9:0]D;
  input rx_clk;

  wire [9:0]D;
  wire [0:0]SR;
  wire [9:0]din_r;
  wire dout;
  wire \dout[0]_i_1_n_0 ;
  wire \dout[1]_i_1_n_0 ;
  wire \dout[2]_i_1_n_0 ;
  wire \dout[3]_i_2_n_0 ;
  wire \dout[3]_i_3_n_0 ;
  wire \dout[3]_i_4_n_0 ;
  wire \dout[3]_i_5_n_0 ;
  wire \dout[3]_i_6_n_0 ;
  wire \dout[3]_i_7_n_0 ;
  wire \dout[3]_i_8_n_0 ;
  wire \dout[3]_i_9_n_0 ;
  wire [3:0]green_di;
  wire rx_clk;

  FDRE \din_r_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(din_r[0]),
        .R(SR));
  FDRE \din_r_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(din_r[1]),
        .R(SR));
  FDRE \din_r_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(din_r[2]),
        .R(SR));
  FDRE \din_r_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(din_r[3]),
        .R(SR));
  FDRE \din_r_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(din_r[4]),
        .R(SR));
  FDRE \din_r_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(din_r[5]),
        .R(SR));
  FDRE \din_r_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(din_r[6]),
        .R(SR));
  FDRE \din_r_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(din_r[7]),
        .R(SR));
  FDRE \din_r_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(din_r[8]),
        .R(SR));
  FDRE \din_r_reg[9] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(din_r[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hEFEF000000AF00AF)) 
    \dout[0]_i_1 
       (.I0(din_r[1]),
        .I1(din_r[5]),
        .I2(din_r[2]),
        .I3(din_r[8]),
        .I4(din_r[4]),
        .I5(din_r[3]),
        .O(\dout[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8CCA8FC80CC80FF)) 
    \dout[1]_i_1 
       (.I0(din_r[2]),
        .I1(din_r[8]),
        .I2(din_r[7]),
        .I3(din_r[4]),
        .I4(din_r[3]),
        .I5(din_r[5]),
        .O(\dout[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA04550)) 
    \dout[2]_i_1 
       (.I0(din_r[2]),
        .I1(din_r[8]),
        .I2(din_r[1]),
        .I3(din_r[5]),
        .I4(din_r[3]),
        .O(\dout[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFD5CFC0757F303F)) 
    \dout[3]_i_2 
       (.I0(din_r[2]),
        .I1(din_r[7]),
        .I2(din_r[8]),
        .I3(din_r[5]),
        .I4(din_r[3]),
        .I5(din_r[4]),
        .O(\dout[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00AF00A0C000C000)) 
    \dout[3]_i_3 
       (.I0(\dout[3]_i_5_n_0 ),
        .I1(\dout[3]_i_6_n_0 ),
        .I2(din_r[2]),
        .I3(din_r[8]),
        .I4(\dout[3]_i_7_n_0 ),
        .I5(din_r[9]),
        .O(\dout[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00005808)) 
    \dout[3]_i_4 
       (.I0(din_r[8]),
        .I1(\dout[3]_i_8_n_0 ),
        .I2(din_r[9]),
        .I3(\dout[3]_i_9_n_0 ),
        .I4(din_r[2]),
        .O(\dout[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0012102800000000)) 
    \dout[3]_i_5 
       (.I0(din_r[6]),
        .I1(din_r[5]),
        .I2(din_r[3]),
        .I3(din_r[4]),
        .I4(din_r[1]),
        .I5(din_r[7]),
        .O(\dout[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004404080)) 
    \dout[3]_i_6 
       (.I0(din_r[5]),
        .I1(din_r[3]),
        .I2(din_r[4]),
        .I3(din_r[1]),
        .I4(din_r[7]),
        .I5(din_r[6]),
        .O(\dout[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \dout[3]_i_7 
       (.I0(din_r[7]),
        .I1(din_r[5]),
        .I2(din_r[3]),
        .I3(din_r[4]),
        .I4(din_r[1]),
        .I5(din_r[6]),
        .O(\dout[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010280000)) 
    \dout[3]_i_8 
       (.I0(din_r[6]),
        .I1(din_r[1]),
        .I2(din_r[4]),
        .I3(din_r[3]),
        .I4(din_r[5]),
        .I5(din_r[7]),
        .O(\dout[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0100020800000000)) 
    \dout[3]_i_9 
       (.I0(din_r[5]),
        .I1(din_r[4]),
        .I2(din_r[3]),
        .I3(din_r[1]),
        .I4(din_r[7]),
        .I5(din_r[6]),
        .O(\dout[3]_i_9_n_0 ));
  FDRE \dout_reg[0] 
       (.C(rx_clk),
        .CE(dout),
        .D(\dout[0]_i_1_n_0 ),
        .Q(green_di[0]),
        .R(SR));
  FDRE \dout_reg[1] 
       (.C(rx_clk),
        .CE(dout),
        .D(\dout[1]_i_1_n_0 ),
        .Q(green_di[1]),
        .R(SR));
  FDRE \dout_reg[2] 
       (.C(rx_clk),
        .CE(dout),
        .D(\dout[2]_i_1_n_0 ),
        .Q(green_di[2]),
        .R(SR));
  FDRE \dout_reg[3] 
       (.C(rx_clk),
        .CE(dout),
        .D(\dout[3]_i_2_n_0 ),
        .Q(green_di[3]),
        .R(SR));
  MUXF7 \dout_reg[3]_i_1 
       (.I0(\dout[3]_i_3_n_0 ),
        .I1(\dout[3]_i_4_n_0 ),
        .O(dout),
        .S(din_r[0]));
endmodule

(* ORIG_REF_NAME = "decode_terc4" *) 
module overlay1_dvi_decoder_v2_0_0_decode_terc4_1
   (red_di,
    SR,
    D,
    rx_clk);
  output [3:0]red_di;
  input [0:0]SR;
  input [9:0]D;
  input rx_clk;

  wire [9:0]D;
  wire [0:0]SR;
  wire \din_r_reg_n_0_[0] ;
  wire \din_r_reg_n_0_[1] ;
  wire \din_r_reg_n_0_[2] ;
  wire \din_r_reg_n_0_[3] ;
  wire \din_r_reg_n_0_[4] ;
  wire \din_r_reg_n_0_[5] ;
  wire \din_r_reg_n_0_[6] ;
  wire \din_r_reg_n_0_[7] ;
  wire \din_r_reg_n_0_[8] ;
  wire \din_r_reg_n_0_[9] ;
  wire dout;
  wire \dout[0]_i_1__0_n_0 ;
  wire \dout[1]_i_1__0_n_0 ;
  wire \dout[2]_i_1__0_n_0 ;
  wire \dout[3]_i_2__0_n_0 ;
  wire \dout[3]_i_3__0_n_0 ;
  wire \dout[3]_i_4__0_n_0 ;
  wire \dout[3]_i_5__0_n_0 ;
  wire \dout[3]_i_6__0_n_0 ;
  wire \dout[3]_i_7__0_n_0 ;
  wire \dout[3]_i_8__0_n_0 ;
  wire \dout[3]_i_9__0_n_0 ;
  wire [3:0]red_di;
  wire rx_clk;

  FDRE \din_r_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\din_r_reg_n_0_[0] ),
        .R(SR));
  FDRE \din_r_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\din_r_reg_n_0_[1] ),
        .R(SR));
  FDRE \din_r_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\din_r_reg_n_0_[2] ),
        .R(SR));
  FDRE \din_r_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\din_r_reg_n_0_[3] ),
        .R(SR));
  FDRE \din_r_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\din_r_reg_n_0_[4] ),
        .R(SR));
  FDRE \din_r_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\din_r_reg_n_0_[5] ),
        .R(SR));
  FDRE \din_r_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\din_r_reg_n_0_[6] ),
        .R(SR));
  FDRE \din_r_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\din_r_reg_n_0_[7] ),
        .R(SR));
  FDRE \din_r_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\din_r_reg_n_0_[8] ),
        .R(SR));
  FDRE \din_r_reg[9] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\din_r_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hEFEF000000AF00AF)) 
    \dout[0]_i_1__0 
       (.I0(\din_r_reg_n_0_[1] ),
        .I1(\din_r_reg_n_0_[5] ),
        .I2(\din_r_reg_n_0_[2] ),
        .I3(\din_r_reg_n_0_[8] ),
        .I4(\din_r_reg_n_0_[4] ),
        .I5(\din_r_reg_n_0_[3] ),
        .O(\dout[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8CCA8FC80CC80FF)) 
    \dout[1]_i_1__0 
       (.I0(\din_r_reg_n_0_[2] ),
        .I1(\din_r_reg_n_0_[8] ),
        .I2(\din_r_reg_n_0_[7] ),
        .I3(\din_r_reg_n_0_[4] ),
        .I4(\din_r_reg_n_0_[3] ),
        .I5(\din_r_reg_n_0_[5] ),
        .O(\dout[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAA04550)) 
    \dout[2]_i_1__0 
       (.I0(\din_r_reg_n_0_[2] ),
        .I1(\din_r_reg_n_0_[8] ),
        .I2(\din_r_reg_n_0_[1] ),
        .I3(\din_r_reg_n_0_[5] ),
        .I4(\din_r_reg_n_0_[3] ),
        .O(\dout[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hDFD5CFC0757F303F)) 
    \dout[3]_i_2__0 
       (.I0(\din_r_reg_n_0_[2] ),
        .I1(\din_r_reg_n_0_[7] ),
        .I2(\din_r_reg_n_0_[8] ),
        .I3(\din_r_reg_n_0_[5] ),
        .I4(\din_r_reg_n_0_[3] ),
        .I5(\din_r_reg_n_0_[4] ),
        .O(\dout[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00AF00A0C000C000)) 
    \dout[3]_i_3__0 
       (.I0(\dout[3]_i_5__0_n_0 ),
        .I1(\dout[3]_i_6__0_n_0 ),
        .I2(\din_r_reg_n_0_[2] ),
        .I3(\din_r_reg_n_0_[8] ),
        .I4(\dout[3]_i_7__0_n_0 ),
        .I5(\din_r_reg_n_0_[9] ),
        .O(\dout[3]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'h00005808)) 
    \dout[3]_i_4__0 
       (.I0(\din_r_reg_n_0_[8] ),
        .I1(\dout[3]_i_8__0_n_0 ),
        .I2(\din_r_reg_n_0_[9] ),
        .I3(\dout[3]_i_9__0_n_0 ),
        .I4(\din_r_reg_n_0_[2] ),
        .O(\dout[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0012102800000000)) 
    \dout[3]_i_5__0 
       (.I0(\din_r_reg_n_0_[6] ),
        .I1(\din_r_reg_n_0_[5] ),
        .I2(\din_r_reg_n_0_[3] ),
        .I3(\din_r_reg_n_0_[4] ),
        .I4(\din_r_reg_n_0_[1] ),
        .I5(\din_r_reg_n_0_[7] ),
        .O(\dout[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004404080)) 
    \dout[3]_i_6__0 
       (.I0(\din_r_reg_n_0_[5] ),
        .I1(\din_r_reg_n_0_[3] ),
        .I2(\din_r_reg_n_0_[4] ),
        .I3(\din_r_reg_n_0_[1] ),
        .I4(\din_r_reg_n_0_[7] ),
        .I5(\din_r_reg_n_0_[6] ),
        .O(\dout[3]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \dout[3]_i_7__0 
       (.I0(\din_r_reg_n_0_[7] ),
        .I1(\din_r_reg_n_0_[5] ),
        .I2(\din_r_reg_n_0_[3] ),
        .I3(\din_r_reg_n_0_[4] ),
        .I4(\din_r_reg_n_0_[1] ),
        .I5(\din_r_reg_n_0_[6] ),
        .O(\dout[3]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010280000)) 
    \dout[3]_i_8__0 
       (.I0(\din_r_reg_n_0_[6] ),
        .I1(\din_r_reg_n_0_[1] ),
        .I2(\din_r_reg_n_0_[4] ),
        .I3(\din_r_reg_n_0_[3] ),
        .I4(\din_r_reg_n_0_[5] ),
        .I5(\din_r_reg_n_0_[7] ),
        .O(\dout[3]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h0100020800000000)) 
    \dout[3]_i_9__0 
       (.I0(\din_r_reg_n_0_[5] ),
        .I1(\din_r_reg_n_0_[4] ),
        .I2(\din_r_reg_n_0_[3] ),
        .I3(\din_r_reg_n_0_[1] ),
        .I4(\din_r_reg_n_0_[7] ),
        .I5(\din_r_reg_n_0_[6] ),
        .O(\dout[3]_i_9__0_n_0 ));
  FDRE \dout_reg[0] 
       (.C(rx_clk),
        .CE(dout),
        .D(\dout[0]_i_1__0_n_0 ),
        .Q(red_di[0]),
        .R(SR));
  FDRE \dout_reg[1] 
       (.C(rx_clk),
        .CE(dout),
        .D(\dout[1]_i_1__0_n_0 ),
        .Q(red_di[1]),
        .R(SR));
  FDRE \dout_reg[2] 
       (.C(rx_clk),
        .CE(dout),
        .D(\dout[2]_i_1__0_n_0 ),
        .Q(red_di[2]),
        .R(SR));
  FDRE \dout_reg[3] 
       (.C(rx_clk),
        .CE(dout),
        .D(\dout[3]_i_2__0_n_0 ),
        .Q(red_di[3]),
        .R(SR));
  MUXF7 \dout_reg[3]_i_1__0 
       (.I0(\dout[3]_i_3__0_n_0 ),
        .I1(\dout[3]_i_4__0_n_0 ),
        .O(dout),
        .S(\din_r_reg_n_0_[0] ));
endmodule

(* ORIG_REF_NAME = "decodeb" *) 
module overlay1_dvi_decoder_v2_0_0_decodeb
   (read_enable_oclk,
    blue_debug,
    rcvd_ctkn0,
    de_b,
    b_vgb,
    b_cv,
    blue_vld,
    blue_rdy,
    hsync_q2,
    vsync_q2,
    D,
    \cstate_reg[4] ,
    \cstate_reg[0] ,
    blue_eye,
    \sdout[9] ,
    blue_p,
    blue_n,
    CLK,
    rx_clk,
    CLKB0,
    reset_1p25,
    rx_clk_0,
    p_12_in,
    iamrdy_reg,
    SR,
    psaligned_reg,
    iamrdy_reg_0,
    iamrdy_reg_1,
    Q,
    c1_reg_0,
    psaligned_reg_0,
    psaligned_reg_1,
    data_gb_q0,
    c1_reg_1,
    g_cv,
    r_cv,
    g_vgb,
    r_vgb,
    read_reset_reg);
  output read_enable_oclk;
  output [31:0]blue_debug;
  output rcvd_ctkn0;
  output de_b;
  output b_vgb;
  output b_cv;
  output blue_vld;
  output blue_rdy;
  output hsync_q2;
  output vsync_q2;
  output [1:0]D;
  output \cstate_reg[4] ;
  output \cstate_reg[0] ;
  output [31:0]blue_eye;
  output [9:0]\sdout[9] ;
  input blue_p;
  input blue_n;
  input CLK;
  input rx_clk;
  input CLKB0;
  input reset_1p25;
  input rx_clk_0;
  input p_12_in;
  input iamrdy_reg;
  input [0:0]SR;
  input [0:0]psaligned_reg;
  input iamrdy_reg_0;
  input iamrdy_reg_1;
  input [5:0]Q;
  input c1_reg_0;
  input psaligned_reg_0;
  input psaligned_reg_1;
  input data_gb_q0;
  input c1_reg_1;
  input g_cv;
  input r_cv;
  input g_vgb;
  input r_vgb;
  input [0:0]read_reset_reg;

  wire CLK;
  wire CLKB0;
  wire [1:0]D;
  wire [5:0]Q;
  wire [0:0]SR;
  wire b_cv;
  wire b_vgb;
  wire bitslip;
  wire bitslip_q;
  wire bitslip_q2;
  wire bitslip_q20;
  wire bitslip_q3;
  wire bitslip_qn;
  wire bitslipx1p25;
  wire bitslipx1p25_i_1_n_0;
  wire [31:0]blue_debug;
  wire [31:0]blue_eye;
  wire blue_n;
  wire blue_p;
  wire blue_rdy;
  wire blue_vld;
  wire c1_reg_0;
  wire c1_reg_1;
  wire cbnd_n_14;
  wire cbnd_n_15;
  wire cbnd_n_16;
  wire cbnd_n_3;
  wire \cstate[0]_i_4_n_0 ;
  wire \cstate[4]_i_2_n_0 ;
  wire \cstate_reg[0] ;
  wire \cstate_reg[4] ;
  wire data_gb_q0;
  wire de_b;
  wire des_0_n_75;
  wire g_cv;
  wire g_vgb;
  wire hsync_q2;
  wire iamrdy_reg;
  wire iamrdy_reg_0;
  wire iamrdy_reg_1;
  wire p_12_in;
  wire phsalgn_0_n_2;
  wire [0:0]psaligned_reg;
  wire psaligned_reg_0;
  wire psaligned_reg_1;
  wire r_cv;
  wire r_vgb;
  wire [9:0]rawdata;
  wire rawdata_vld;
  wire rcvd_ctkn0;
  wire read_enable_oclk;
  wire [0:0]read_reset_reg;
  wire reset_1p25;
  wire rx_clk;
  wire rx_clk_0;
  wire [9:0]sdata;
  wire [9:0]\sdout[9] ;
  wire vsync_q2;
  wire we;

  LUT2 #(
    .INIT(4'hE)) 
    bitslip_q2_i_1
       (.I0(bitslip_q),
        .I1(bitslip_qn),
        .O(bitslip_q20));
  FDRE #(
    .INIT(1'b0)) 
    bitslip_q2_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bitslip_q20),
        .Q(bitslip_q2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bitslip_q3_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bitslip_q2),
        .Q(bitslip_q3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bitslip_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bitslip),
        .Q(bitslip_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    bitslip_qn_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bitslip),
        .Q(bitslip_qn),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    bitslipx1p25_i_1
       (.I0(bitslip_q2),
        .I1(bitslip_q3),
        .O(bitslipx1p25_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bitslipx1p25_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_i_1_n_0),
        .Q(bitslipx1p25),
        .R(1'b0));
  FDRE c0_reg
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(cbnd_n_14),
        .Q(hsync_q2),
        .R(iamrdy_reg));
  FDRE c1_reg
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(cbnd_n_3),
        .Q(vsync_q2),
        .R(iamrdy_reg));
  overlay1_dvi_decoder_v2_0_0_chnlbond_10 cbnd
       (.Q(sdata),
        .blue_rdy(blue_rdy),
        .c0_reg(cbnd_n_14),
        .c1_reg(cbnd_n_3),
        .\dataout_reg[9] (rawdata),
        .de_reg(cbnd_n_16),
        .hsync_q2(hsync_q2),
        .iamrdy_reg_0(iamrdy_reg_0),
        .iamrdy_reg_1(iamrdy_reg_1),
        .psaligned_reg(phsalgn_0_n_2),
        .psaligned_reg_0(psaligned_reg),
        .rawdata_vld(rawdata_vld),
        .rcvd_ctkn0(rcvd_ctkn0),
        .rx_clk(rx_clk_0),
        .vgb_reg(cbnd_n_15),
        .vsync_q2(vsync_q2),
        .we(we));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEAEAEAE)) 
    \cstate[0]_i_3 
       (.I0(\cstate[0]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(data_gb_q0),
        .I3(Q[0]),
        .I4(\cstate_reg[4] ),
        .I5(c1_reg_1),
        .O(\cstate_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hFEFEFE00)) 
    \cstate[0]_i_4 
       (.I0(b_cv),
        .I1(r_cv),
        .I2(g_cv),
        .I3(Q[4]),
        .I4(Q[1]),
        .O(\cstate[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555555155555555)) 
    \cstate[4]_i_1__2 
       (.I0(\cstate_reg[4] ),
        .I1(\cstate[4]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(c1_reg_0),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \cstate[4]_i_2 
       (.I0(b_cv),
        .I1(r_cv),
        .I2(g_cv),
        .I3(Q[1]),
        .O(\cstate[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF010001000100)) 
    \cstate[5]_i_1__0 
       (.I0(g_cv),
        .I1(r_cv),
        .I2(b_cv),
        .I3(Q[4]),
        .I4(\cstate_reg[4] ),
        .I5(Q[3]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h7F)) 
    \cstate[6]_i_2 
       (.I0(b_vgb),
        .I1(g_vgb),
        .I2(r_vgb),
        .O(\cstate_reg[4] ));
  FDRE ctl_vld_reg
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(rcvd_ctkn0),
        .Q(b_cv),
        .R(iamrdy_reg));
  FDRE de_reg
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(cbnd_n_16),
        .Q(de_b),
        .R(iamrdy_reg));
  overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff_11 des_0
       (.CLK(CLK),
        .CLKB0(CLKB0),
        .Q(rawdata),
        .bitslipx1p25(bitslipx1p25),
        .blue_debug(blue_debug),
        .blue_eye(blue_eye),
        .blue_n(blue_n),
        .blue_p(blue_p),
        .p_12_in(p_12_in),
        .rcvd_ctkn_reg(des_0_n_75),
        .read_enable_oclk(read_enable_oclk),
        .read_reset_reg(read_reset_reg),
        .reset_1p25(reset_1p25),
        .rx_clk(rx_clk),
        .rx_clk_0(rx_clk_0));
  overlay1_dvi_decoder_v2_0_0_phsaligner_12 phsalgn_0
       (.SR(SR),
        .bitslip(bitslip),
        .blue_vld(blue_vld),
        .\dataout_reg[6] (des_0_n_75),
        .psaligned_reg_0(psaligned_reg_0),
        .psaligned_reg_1(psaligned_reg_1),
        .rawdata_vld(rawdata_vld),
        .rawdata_vld_rising_reg(phsalgn_0_n_2),
        .rx_clk(rx_clk_0),
        .we(we));
  FDRE \sdout_reg[0] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[0]),
        .Q(\sdout[9] [0]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[1] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[1]),
        .Q(\sdout[9] [1]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[2] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[2]),
        .Q(\sdout[9] [2]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[3] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[3]),
        .Q(\sdout[9] [3]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[4] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[4]),
        .Q(\sdout[9] [4]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[5] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[5]),
        .Q(\sdout[9] [5]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[6] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[6]),
        .Q(\sdout[9] [6]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[7] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[7]),
        .Q(\sdout[9] [7]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[8] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[8]),
        .Q(\sdout[9] [8]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[9] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[9]),
        .Q(\sdout[9] [9]),
        .R(iamrdy_reg));
  FDRE vgb_reg
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(cbnd_n_15),
        .Q(b_vgb),
        .R(iamrdy_reg));
endmodule

(* ORIG_REF_NAME = "decodeg" *) 
module overlay1_dvi_decoder_v2_0_0_decodeg
   (reset_1p25,
    p_12_in,
    green_debug,
    rcvd_ctkn0,
    de_g,
    g_vgb,
    g_cv,
    green_vld,
    green_rdy,
    ctl_code_wire,
    D,
    \sdout_reg[0]_0 ,
    \FSM_sequential_read_addra_reg[0] ,
    \FSM_sequential_read_addra_reg[0]_0 ,
    vgb_reg,
    data_gb_q0,
    \cstate_reg[6] ,
    cv_q0,
    green_eye,
    \wa_reg[0] ,
    \sdout[19] ,
    green_p,
    green_n,
    CLK,
    rx_clk,
    CLKB0,
    rx_clk_0,
    iamrdy_reg,
    SR,
    psaligned_reg,
    iamrdy_reg_0,
    iamrdy_reg_1,
    r_dgb,
    vgb_reg_0,
    Q,
    psaligned_reg_0,
    psaligned_reg_1,
    read_enable_oclk,
    read_enable_oclk_0,
    c1_reg_0,
    r_cv,
    b_cv);
  output reset_1p25;
  output p_12_in;
  output [31:0]green_debug;
  output rcvd_ctkn0;
  output de_g;
  output g_vgb;
  output g_cv;
  output green_vld;
  output green_rdy;
  output [1:0]ctl_code_wire;
  output [2:0]D;
  output \sdout_reg[0]_0 ;
  output [0:0]\FSM_sequential_read_addra_reg[0] ;
  output [0:0]\FSM_sequential_read_addra_reg[0]_0 ;
  output vgb_reg;
  output data_gb_q0;
  output \cstate_reg[6] ;
  output cv_q0;
  output [31:0]green_eye;
  output [0:0]\wa_reg[0] ;
  output [9:0]\sdout[19] ;
  input green_p;
  input green_n;
  input CLK;
  input rx_clk;
  input CLKB0;
  input rx_clk_0;
  input iamrdy_reg;
  input [0:0]SR;
  input [0:0]psaligned_reg;
  input iamrdy_reg_0;
  input iamrdy_reg_1;
  input r_dgb;
  input vgb_reg_0;
  input [4:0]Q;
  input psaligned_reg_0;
  input psaligned_reg_1;
  input read_enable_oclk;
  input read_enable_oclk_0;
  input [1:0]c1_reg_0;
  input r_cv;
  input b_cv;

  wire CLK;
  wire CLKB0;
  wire [2:0]D;
  wire [0:0]\FSM_sequential_read_addra_reg[0] ;
  wire [0:0]\FSM_sequential_read_addra_reg[0]_0 ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire b_cv;
  wire bitslip;
  wire bitslip_q;
  wire bitslip_q2;
  wire bitslip_q20;
  wire bitslip_q3;
  wire bitslip_qn;
  wire bitslipx1p25;
  wire bitslipx1p25_i_1__0_n_0;
  wire [1:0]c1_reg_0;
  wire cbnd_n_14;
  wire cbnd_n_18;
  wire cbnd_n_3;
  wire \cstate[3]_i_2_n_0 ;
  wire \cstate_reg[6] ;
  wire [1:0]ctl_code_wire;
  wire cv_q0;
  wire data_gb_q0;
  wire de_g;
  wire des_0_n_78;
  wire dgb;
  wire g_cv;
  wire g_vgb;
  wire [31:0]green_debug;
  wire [31:0]green_eye;
  wire green_n;
  wire green_p;
  wire green_rdy;
  wire green_vld;
  wire iamrdy_reg;
  wire iamrdy_reg_0;
  wire iamrdy_reg_1;
  wire p_12_in;
  wire phsalgn_0_n_2;
  wire [0:0]psaligned_reg;
  wire psaligned_reg_0;
  wire psaligned_reg_1;
  wire r_cv;
  wire r_dgb;
  wire [9:0]rawdata;
  wire rawdata_vld;
  wire rcvd_ctkn0;
  wire read_enable_oclk;
  wire read_enable_oclk_0;
  wire reset_1p25;
  wire rx_clk;
  wire rx_clk_0;
  wire [9:0]sdata;
  wire [9:0]\sdout[19] ;
  wire \sdout_reg[0]_0 ;
  wire vgb_reg;
  wire vgb_reg_0;
  wire [0:0]\wa_reg[0] ;
  wire we;

  LUT2 #(
    .INIT(4'hE)) 
    bitslip_q2_i_1__0
       (.I0(bitslip_q),
        .I1(bitslip_qn),
        .O(bitslip_q20));
  FDRE #(
    .INIT(1'b0)) 
    bitslip_q2_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bitslip_q20),
        .Q(bitslip_q2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bitslip_q3_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bitslip_q2),
        .Q(bitslip_q3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bitslip_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bitslip),
        .Q(bitslip_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    bitslip_qn_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bitslip),
        .Q(bitslip_qn),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    bitslipx1p25_i_1__0
       (.I0(bitslip_q2),
        .I1(bitslip_q3),
        .O(bitslipx1p25_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bitslipx1p25_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_i_1__0_n_0),
        .Q(bitslipx1p25),
        .R(1'b0));
  FDRE c0_reg
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(cbnd_n_3),
        .Q(ctl_code_wire[0]),
        .R(iamrdy_reg));
  FDRE c1_reg
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(cbnd_n_14),
        .Q(ctl_code_wire[1]),
        .R(iamrdy_reg));
  overlay1_dvi_decoder_v2_0_0_chnlbond_4 cbnd
       (.Q(sdata),
        .c0_reg(cbnd_n_3),
        .c1_reg(cbnd_n_14),
        .ctl_code_wire(ctl_code_wire),
        .\dataout_reg[9] (rawdata),
        .de_reg(cbnd_n_18),
        .dgb(dgb),
        .green_rdy(green_rdy),
        .iamrdy_reg_0(iamrdy_reg_0),
        .iamrdy_reg_1(iamrdy_reg_1),
        .psaligned_reg(phsalgn_0_n_2),
        .psaligned_reg_0(psaligned_reg),
        .rawdata_vld(rawdata_vld),
        .rcvd_ctkn0(rcvd_ctkn0),
        .rx_clk(rx_clk_0),
        .\sdout_reg[0] (\sdout_reg[0]_0 ),
        .vgb_reg(vgb_reg),
        .we(we));
  LUT6 #(
    .INIT(64'h7777777700007000)) 
    \cstate[2]_i_1__2 
       (.I0(r_dgb),
        .I1(g_vgb),
        .I2(vgb_reg_0),
        .I3(Q[2]),
        .I4(\cstate[3]_i_2_n_0 ),
        .I5(Q[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h8888888800008000)) 
    \cstate[3]_i_1__0 
       (.I0(r_dgb),
        .I1(g_vgb),
        .I2(vgb_reg_0),
        .I3(Q[2]),
        .I4(\cstate[3]_i_2_n_0 ),
        .I5(Q[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \cstate[3]_i_2 
       (.I0(g_cv),
        .I1(r_cv),
        .I2(b_cv),
        .O(\cstate[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CC400000)) 
    \cstate[6]_i_1 
       (.I0(data_gb_q0),
        .I1(vgb_reg_0),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(c1_reg_0[0]),
        .I5(\cstate_reg[6] ),
        .O(D[2]));
  LUT3 #(
    .INIT(8'hFB)) 
    \cstate[6]_i_3 
       (.I0(c1_reg_0[1]),
        .I1(ctl_code_wire[0]),
        .I2(ctl_code_wire[1]),
        .O(\cstate_reg[6] ));
  FDRE ctl_vld_reg
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(rcvd_ctkn0),
        .Q(g_cv),
        .R(iamrdy_reg));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h80)) 
    cv_q_i_1
       (.I0(g_cv),
        .I1(r_cv),
        .I2(b_cv),
        .O(cv_q0));
  LUT2 #(
    .INIT(4'h8)) 
    data_gb_q_i_1
       (.I0(g_vgb),
        .I1(r_dgb),
        .O(data_gb_q0));
  FDRE de_reg
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(cbnd_n_18),
        .Q(de_g),
        .R(iamrdy_reg));
  overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff_5 des_0
       (.CLK(CLK),
        .CLKB0(CLKB0),
        .\FSM_sequential_read_addra_reg[0] (\FSM_sequential_read_addra_reg[0] ),
        .\FSM_sequential_read_addra_reg[0]_0 (\FSM_sequential_read_addra_reg[0]_0 ),
        .Q(rawdata),
        .SR(reset_1p25),
        .bitslipx1p25(bitslipx1p25),
        .green_debug(green_debug),
        .green_eye(green_eye),
        .green_n(green_n),
        .green_p(green_p),
        .pd_min_reg(p_12_in),
        .rcvd_ctkn_reg(des_0_n_78),
        .read_enable_oclk(read_enable_oclk),
        .read_enable_oclk_0(read_enable_oclk_0),
        .reset_reg(SR),
        .rx_clk(rx_clk),
        .rx_clk_0(rx_clk_0));
  FDRE dgb_reg
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(dgb),
        .Q(g_vgb),
        .R(iamrdy_reg));
  overlay1_dvi_decoder_v2_0_0_phsaligner_6 phsalgn_0
       (.SR(SR),
        .bitslip(bitslip),
        .\dataout_reg[6] (des_0_n_78),
        .green_vld(green_vld),
        .psaligned_reg_0(psaligned_reg_0),
        .psaligned_reg_1(psaligned_reg_1),
        .rawdata_vld(rawdata_vld),
        .rawdata_vld_rising_reg(phsalgn_0_n_2),
        .rx_clk(rx_clk_0),
        .\wa_reg[0] (\wa_reg[0] ),
        .we(we));
  FDRE \sdout_reg[0] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[0]),
        .Q(\sdout[19] [0]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[1] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[1]),
        .Q(\sdout[19] [1]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[2] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[2]),
        .Q(\sdout[19] [2]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[3] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[3]),
        .Q(\sdout[19] [3]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[4] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[4]),
        .Q(\sdout[19] [4]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[5] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[5]),
        .Q(\sdout[19] [5]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[6] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[6]),
        .Q(\sdout[19] [6]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[7] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[7]),
        .Q(\sdout[19] [7]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[8] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[8]),
        .Q(\sdout[19] [8]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[9] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[9]),
        .Q(\sdout[19] [9]),
        .R(iamrdy_reg));
endmodule

(* ORIG_REF_NAME = "decoder" *) 
module overlay1_dvi_decoder_v2_0_0_decoder
   (read_enable_oclk,
    red_debug,
    r_dgb,
    r_vgb,
    r_cv,
    red_vld,
    red_rdy,
    \ctl_code_q_reg[3] ,
    \sdout_reg[0]_0 ,
    D,
    nstate10_out,
    line_end,
    basic_de,
    \cstate_reg[4] ,
    red_eye,
    \wa_reg[0] ,
    \wa_reg[0]_0 ,
    \sdout[29] ,
    red_p,
    red_n,
    CLK,
    rx_clk,
    CLKB0,
    reset_1p25,
    rx_clk_0,
    p_12_in,
    iamrdy_reg,
    SR,
    psaligned_reg,
    b_vgb,
    g_vgb,
    Q,
    psaligned_reg_0,
    psaligned_reg_1,
    iamrdy_reg_0,
    iamrdy_reg_1,
    \cstate_reg[3] ,
    vgb_reg_0,
    c1_reg_0,
    c1_reg_1,
    de_g,
    rcvd_ctkn0,
    de_b,
    rcvd_ctkn0_0,
    read_reset_reg);
  output read_enable_oclk;
  output [31:0]red_debug;
  output r_dgb;
  output r_vgb;
  output r_cv;
  output red_vld;
  output red_rdy;
  output [1:0]\ctl_code_q_reg[3] ;
  output \sdout_reg[0]_0 ;
  output [2:0]D;
  output nstate10_out;
  output line_end;
  output basic_de;
  output \cstate_reg[4] ;
  output [31:0]red_eye;
  output [0:0]\wa_reg[0] ;
  output [0:0]\wa_reg[0]_0 ;
  output [9:0]\sdout[29] ;
  input red_p;
  input red_n;
  input CLK;
  input rx_clk;
  input CLKB0;
  input reset_1p25;
  input rx_clk_0;
  input p_12_in;
  input iamrdy_reg;
  input [0:0]SR;
  input [0:0]psaligned_reg;
  input b_vgb;
  input g_vgb;
  input [3:0]Q;
  input psaligned_reg_0;
  input psaligned_reg_1;
  input iamrdy_reg_0;
  input iamrdy_reg_1;
  input \cstate_reg[3] ;
  input vgb_reg_0;
  input c1_reg_0;
  input [1:0]c1_reg_1;
  input de_g;
  input rcvd_ctkn0;
  input de_b;
  input rcvd_ctkn0_0;
  input [0:0]read_reset_reg;

  wire CLK;
  wire CLKB0;
  wire [2:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire b_vgb;
  wire basic_de;
  wire bitslip;
  wire bitslip_q;
  wire bitslip_q2;
  wire bitslip_q20;
  wire bitslip_q3;
  wire bitslip_qn;
  wire bitslipx1p25;
  wire bitslipx1p25_i_1__1_n_0;
  wire c1_reg_0;
  wire [1:0]c1_reg_1;
  wire cbnd_n_14;
  wire cbnd_n_17;
  wire cbnd_n_18;
  wire cbnd_n_19;
  wire cbnd_n_3;
  wire \cstate[0]_i_2_n_0 ;
  wire \cstate[7]_i_2_n_0 ;
  wire \cstate_reg[3] ;
  wire \cstate_reg[4] ;
  wire [1:0]\ctl_code_q_reg[3] ;
  wire de_b;
  wire de_g;
  wire de_r;
  wire des_0_n_75;
  wire g_vgb;
  wire iamrdy_reg;
  wire iamrdy_reg_0;
  wire iamrdy_reg_1;
  wire line_end;
  wire nstate10_out;
  wire p_12_in;
  wire phsalgn_0_n_2;
  wire [0:0]psaligned_reg;
  wire psaligned_reg_0;
  wire psaligned_reg_1;
  wire r_cv;
  wire r_dgb;
  wire r_vgb;
  wire [9:0]rawdata;
  wire rawdata_vld;
  wire rcvd_ctkn0;
  wire rcvd_ctkn0_0;
  wire rcvd_ctkn0_1;
  wire read_enable_oclk;
  wire [0:0]read_reset_reg;
  wire [31:0]red_debug;
  wire [31:0]red_eye;
  wire red_n;
  wire red_p;
  wire red_rdy;
  wire red_vld;
  wire reset_1p25;
  wire rx_clk;
  wire rx_clk_0;
  wire [9:0]sdata;
  wire [9:0]\sdout[29] ;
  wire \sdout_reg[0]_0 ;
  wire vgb_reg_0;
  wire [0:0]\wa_reg[0] ;
  wire [0:0]\wa_reg[0]_0 ;
  wire we;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    basic_de_INST_0
       (.I0(r_vgb),
        .I1(b_vgb),
        .I2(g_vgb),
        .I3(de_g),
        .I4(de_b),
        .I5(de_r),
        .O(basic_de));
  LUT2 #(
    .INIT(4'hE)) 
    bitslip_q2_i_1__1
       (.I0(bitslip_q),
        .I1(bitslip_qn),
        .O(bitslip_q20));
  FDRE #(
    .INIT(1'b0)) 
    bitslip_q2_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bitslip_q20),
        .Q(bitslip_q2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bitslip_q3_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bitslip_q2),
        .Q(bitslip_q3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bitslip_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bitslip),
        .Q(bitslip_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    bitslip_qn_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bitslip),
        .Q(bitslip_qn),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    bitslipx1p25_i_1__1
       (.I0(bitslip_q2),
        .I1(bitslip_q3),
        .O(bitslipx1p25_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bitslipx1p25_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_i_1__1_n_0),
        .Q(bitslipx1p25),
        .R(1'b0));
  FDRE c0_reg
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(cbnd_n_14),
        .Q(\ctl_code_q_reg[3] [0]),
        .R(iamrdy_reg));
  FDRE c1_reg
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(cbnd_n_3),
        .Q(\ctl_code_q_reg[3] [1]),
        .R(iamrdy_reg));
  overlay1_dvi_decoder_v2_0_0_chnlbond cbnd
       (.Q(sdata),
        .c0_reg(cbnd_n_14),
        .c0_reg_0(\ctl_code_q_reg[3] [0]),
        .c1_reg(cbnd_n_3),
        .c1_reg_0(\ctl_code_q_reg[3] [1]),
        .\dataout_reg[9] (rawdata),
        .de_b(de_b),
        .de_g(de_g),
        .de_r(de_r),
        .de_reg(cbnd_n_19),
        .dgb_reg(cbnd_n_18),
        .iamrdy_reg_0(iamrdy_reg_0),
        .iamrdy_reg_1(iamrdy_reg_1),
        .line_end(line_end),
        .psaligned_reg(phsalgn_0_n_2),
        .psaligned_reg_0(psaligned_reg),
        .rawdata_vld(rawdata_vld),
        .rcvd_ctkn0(rcvd_ctkn0),
        .rcvd_ctkn0_0(rcvd_ctkn0_0),
        .rcvd_ctkn0_1(rcvd_ctkn0_1),
        .red_rdy(red_rdy),
        .rx_clk(rx_clk_0),
        .\sdout_reg[0] (\sdout_reg[0]_0 ),
        .vgb_reg(cbnd_n_17),
        .we(we));
  LUT6 #(
    .INIT(64'hFDDDFDDDFCCCDDDD)) 
    \cstate[0]_i_1 
       (.I0(\cstate[0]_i_2_n_0 ),
        .I1(\cstate_reg[3] ),
        .I2(vgb_reg_0),
        .I3(Q[3]),
        .I4(\ctl_code_q_reg[3] [0]),
        .I5(c1_reg_0),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT5 #(
    .INIT(32'hE0A0FFFF)) 
    \cstate[0]_i_2 
       (.I0(r_dgb),
        .I1(b_vgb),
        .I2(g_vgb),
        .I3(r_vgb),
        .I4(Q[2]),
        .O(\cstate[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA0008008800)) 
    \cstate[1]_i_1__0 
       (.I0(r_dgb),
        .I1(Q[2]),
        .I2(r_vgb),
        .I3(g_vgb),
        .I4(b_vgb),
        .I5(Q[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h0004FFFF)) 
    \cstate[4]_i_3 
       (.I0(\ctl_code_q_reg[3] [1]),
        .I1(c1_reg_1[0]),
        .I2(c1_reg_1[1]),
        .I3(\ctl_code_q_reg[3] [0]),
        .I4(Q[3]),
        .O(\cstate_reg[4] ));
  LUT6 #(
    .INIT(64'h0004000000040004)) 
    \cstate[7]_i_1 
       (.I0(\ctl_code_q_reg[3] [1]),
        .I1(c1_reg_1[0]),
        .I2(c1_reg_1[1]),
        .I3(\ctl_code_q_reg[3] [0]),
        .I4(Q[3]),
        .I5(\cstate[7]_i_2_n_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hD555)) 
    \cstate[7]_i_2 
       (.I0(Q[0]),
        .I1(r_vgb),
        .I2(g_vgb),
        .I3(b_vgb),
        .O(\cstate[7]_i_2_n_0 ));
  FDRE ctl_vld_reg
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(rcvd_ctkn0_1),
        .Q(r_cv),
        .R(iamrdy_reg));
  FDRE de_reg
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(cbnd_n_19),
        .Q(de_r),
        .R(iamrdy_reg));
  overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff des_0
       (.CLK(CLK),
        .CLKB0(CLKB0),
        .Q(rawdata),
        .bitslipx1p25(bitslipx1p25),
        .p_12_in(p_12_in),
        .rcvd_ctkn_reg(des_0_n_75),
        .read_enable_oclk(read_enable_oclk),
        .read_reset_reg(read_reset_reg),
        .red_debug(red_debug),
        .red_eye(red_eye),
        .red_n(red_n),
        .red_p(red_p),
        .reset_1p25(reset_1p25),
        .rx_clk(rx_clk),
        .rx_clk_0(rx_clk_0));
  FDRE dgb_reg
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(cbnd_n_18),
        .Q(r_dgb),
        .R(iamrdy_reg));
  overlay1_dvi_decoder_v2_0_0_phsaligner phsalgn_0
       (.SR(SR),
        .bitslip(bitslip),
        .\dataout_reg[6] (des_0_n_75),
        .psaligned_reg_0(psaligned_reg_0),
        .psaligned_reg_1(psaligned_reg_1),
        .rawdata_vld(rawdata_vld),
        .rawdata_vld_rising_reg(phsalgn_0_n_2),
        .red_vld(red_vld),
        .rx_clk(rx_clk_0),
        .\wa_reg[0] (\wa_reg[0] ),
        .\wa_reg[0]_0 (\wa_reg[0]_0 ),
        .we(we));
  FDRE \sdout_reg[0] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[0]),
        .Q(\sdout[29] [0]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[1] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[1]),
        .Q(\sdout[29] [1]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[2] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[2]),
        .Q(\sdout[29] [2]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[3] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[3]),
        .Q(\sdout[29] [3]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[4] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[4]),
        .Q(\sdout[29] [4]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[5] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[5]),
        .Q(\sdout[29] [5]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[6] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[6]),
        .Q(\sdout[29] [6]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[7] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[7]),
        .Q(\sdout[29] [7]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[8] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[8]),
        .Q(\sdout[29] [8]),
        .R(iamrdy_reg));
  FDRE \sdout_reg[9] 
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(sdata[9]),
        .Q(\sdout[29] [9]),
        .R(iamrdy_reg));
  FDRE vgb_reg
       (.C(rx_clk_0),
        .CE(1'b1),
        .D(cbnd_n_17),
        .Q(r_vgb),
        .R(iamrdy_reg));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT3 #(
    .INIT(8'h80)) 
    video_gb_q_i_1
       (.I0(r_vgb),
        .I1(g_vgb),
        .I2(b_vgb),
        .O(nstate10_out));
endmodule

(* ORIG_REF_NAME = "delay_controller_wrap" *) 
module overlay1_dvi_decoder_v2_0_0_delay_controller_wrap
   (red_debug,
    Q,
    red_eye,
    \sdataouta_reg[7]_0 ,
    \dataout_reg[7] ,
    p_12_in,
    CLK,
    reset_1p25,
    D,
    bitslipx1p25_reg);
  output [31:0]red_debug;
  output [4:0]Q;
  output [31:0]red_eye;
  output [4:0]\sdataouta_reg[7]_0 ;
  output [7:0]\dataout_reg[7] ;
  input p_12_in;
  input CLK;
  input reset_1p25;
  input [7:0]D;
  input [7:0]bitslipx1p25_reg;

  wire CLK;
  wire [7:0]D;
  wire [4:0]Q;
  wire [1:0]action;
  wire \action[0]_i_2__1_n_0 ;
  wire \action[0]_i_3__1_n_0 ;
  wire \action[1]_i_2__1_n_0 ;
  wire \action[1]_i_3__1_n_0 ;
  wire \action_reg_n_0_[0] ;
  wire [7:0]bitslipx1p25_reg;
  wire data_mux;
  wire data_mux_i_1__1_n_0;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire [7:0]\dataout_reg[7] ;
  wire dec_run_i_1__1_n_0;
  wire dec_run_i_2__1_n_0;
  wire dec_run_reg_n_0;
  wire delay_change_i_1__1_n_0;
  wire delay_change_reg_n_0;
  wire eye_run_i_1__1_n_0;
  wire eye_run_i_2__1_n_0;
  wire eye_run_reg_n_0;
  wire inc_run_i_1__1_n_0;
  wire inc_run_i_2__1_n_0;
  wire inc_run_reg_n_0;
  wire [1:0]m_delay_mux;
  wire \m_delay_mux[0]_i_1__1_n_0 ;
  wire \m_delay_mux[1]_i_1__1_n_0 ;
  wire \m_delay_mux[1]_i_2__1_n_0 ;
  wire \m_delay_val_int[0]_i_1__1_n_0 ;
  wire \m_delay_val_int[1]_i_1__0_n_0 ;
  wire \m_delay_val_int[2]_i_1__0_n_0 ;
  wire \m_delay_val_int[3]_i_1__1_n_0 ;
  wire \m_delay_val_int[3]_i_2__1_n_0 ;
  wire \m_delay_val_int[4]_i_10_n_0 ;
  wire \m_delay_val_int[4]_i_11_n_0 ;
  wire \m_delay_val_int[4]_i_1__1_n_0 ;
  wire \m_delay_val_int[4]_i_2__1_n_0 ;
  wire \m_delay_val_int[4]_i_3__1_n_0 ;
  wire \m_delay_val_int[4]_i_4__1_n_0 ;
  wire \m_delay_val_int[4]_i_5__1_n_0 ;
  wire \m_delay_val_int[4]_i_7__1_n_0 ;
  wire \m_delay_val_int[4]_i_8_n_0 ;
  wire \m_delay_val_int[4]_i_9_n_0 ;
  wire [7:7]match;
  wire \match[0]_i_1__1_n_0 ;
  wire \match[0]_i_2__1_n_0 ;
  wire \match[0]_i_3__1_n_0 ;
  wire \mdataouta_reg_n_0_[0] ;
  wire mdataoutb;
  wire [7:0]mdataoutc;
  wire \mdataoutc[0]_i_1__1_n_0 ;
  wire \mdataoutc[1]_i_1__1_n_0 ;
  wire \mdataoutc[2]_i_1__1_n_0 ;
  wire \mdataoutc[3]_i_1__1_n_0 ;
  wire \mdataoutc[4]_i_1__1_n_0 ;
  wire \mdataoutc[5]_i_1__1_n_0 ;
  wire \mdataoutc[6]_i_1__1_n_0 ;
  wire \mdataoutc[7]_i_1__1_n_0 ;
  wire meq_max;
  wire meq_min_i_1__1_n_0;
  wire meq_min_i_2__1_n_0;
  wire meq_min_reg_n_0;
  wire \msxor_ctd[0]_i_1__1_n_0 ;
  wire \msxor_ctd[1]_i_1__1_n_0 ;
  wire \msxor_ctd[1]_i_2__1_n_0 ;
  wire \msxor_ctd[1]_i_3__1_n_0 ;
  wire \msxor_ctd[1]_i_4__1_n_0 ;
  wire \msxor_ctd[1]_i_5__1_n_0 ;
  wire \msxor_ctd_reg_n_0_[0] ;
  wire \msxor_ctd_reg_n_0_[1] ;
  wire \msxor_ctdx[0]_i_1__1_n_0 ;
  wire \msxor_ctdx[1]_i_1__1_n_0 ;
  wire \msxor_ctdx[1]_i_2__1_n_0 ;
  wire \msxor_ctdx[1]_i_3__1_n_0 ;
  wire \msxor_ctdx[1]_i_4__1_n_0 ;
  wire \msxor_ctdx[1]_i_5__1_n_0 ;
  wire \msxor_ctdx_reg_n_0_[0] ;
  wire \msxor_ctdx_reg_n_0_[1] ;
  wire \msxor_cti[0]_i_1__1_n_0 ;
  wire \msxor_cti[1]_i_1__1_n_0 ;
  wire \msxor_cti[1]_i_2__1_n_0 ;
  wire \msxor_cti[1]_i_3__1_n_0 ;
  wire \msxor_cti[1]_i_4__1_n_0 ;
  wire \msxor_cti[1]_i_5__1_n_0 ;
  wire \msxor_cti_reg_n_0_[0] ;
  wire \msxor_cti_reg_n_0_[1] ;
  wire \msxor_ctix[0]_i_1__1_n_0 ;
  wire \msxor_ctix[1]_i_1__1_n_0 ;
  wire \msxor_ctix[1]_i_2__1_n_0 ;
  wire \msxor_ctix[1]_i_3__1_n_0 ;
  wire \msxor_ctix[1]_i_4__1_n_0 ;
  wire \msxor_ctix[1]_i_5__1_n_0 ;
  wire \msxor_ctix_reg_n_0_[0] ;
  wire \msxor_ctix_reg_n_0_[1] ;
  wire p_0_in;
  wire p_0_in110_in;
  wire p_0_in124_in;
  wire p_0_in138_in;
  wire p_0_in152_in;
  wire p_0_in15_in;
  wire p_0_in166_in;
  wire p_0_in180_in;
  wire [7:1]p_0_in1_in;
  wire p_0_in200_in;
  wire p_0_in28_in;
  wire p_0_in40_in;
  wire p_0_in52_in;
  wire p_0_in64_in;
  wire p_0_in76_in;
  wire p_0_in88_in;
  wire p_0_in97_in;
  wire [4:0]p_0_in__1;
  wire p_12_in;
  wire [7:1]p_2_in;
  wire \pd_hold[1]_i_1__1_n_0 ;
  wire \pd_hold[2]_i_1__1_n_0 ;
  wire \pd_hold[3]_i_1__1_n_0 ;
  wire \pd_hold[4]_i_1__1_n_0 ;
  wire \pd_hold[5]_i_1__1_n_0 ;
  wire \pd_hold[6]_i_1__1_n_0 ;
  wire \pd_hold[7]_i_1__1_n_0 ;
  wire \pd_hold[7]_i_2__1_n_0 ;
  wire pd_max;
  wire pd_max0;
  wire pd_max_i_2__1_n_0;
  wire pd_min;
  wire pd_min0;
  wire pd_min_i_2__1_n_0;
  wire pdcount1;
  wire \pdcount[0]_i_1__1_n_0 ;
  wire \pdcount[1]_i_1__1_n_0 ;
  wire \pdcount[2]_i_1__1_n_0 ;
  wire \pdcount[3]_i_1__1_n_0 ;
  wire \pdcount[4]_i_1__1_n_0 ;
  wire \pdcount[5]_i_1__1_n_0 ;
  wire \pdcount[5]_i_2__1_n_0 ;
  wire \pdcount[5]_i_3__1_n_0 ;
  wire \pdcount[5]_i_4__1_n_0 ;
  wire \pdcount[5]_i_5__1_n_0 ;
  wire [5:0]pdcount_reg;
  wire [31:0]red_debug;
  wire [31:0]red_eye;
  wire reset_1p25;
  wire [31:0]results;
  wire \results[31]_i_3__1_n_0 ;
  wire \results[31]_i_4__1_n_0 ;
  wire \results[31]_i_5__1_n_0 ;
  wire [1:0]s_delay_mux;
  wire \s_delay_mux[0]_i_1__1_n_0 ;
  wire \s_delay_mux[1]_i_1__1_n_0 ;
  wire \s_delay_mux[1]_i_2__1_n_0 ;
  wire s_delay_val_eye;
  wire [4:0]s_delay_val_eye_reg;
  wire \s_delay_val_int[0]_i_1__1_n_0 ;
  wire \s_delay_val_int[1]_i_1__1_n_0 ;
  wire \s_delay_val_int[2]_i_1__1_n_0 ;
  wire \s_delay_val_int[3]_i_1__1_n_0 ;
  wire \s_delay_val_int[3]_i_2__1_n_0 ;
  wire \s_delay_val_int[4]_i_1__1_n_0 ;
  wire \s_delay_val_int[4]_i_2__1_n_0 ;
  wire \s_delay_val_int[4]_i_3__1_n_0 ;
  wire \s_delay_val_int[4]_i_4__1_n_0 ;
  wire \s_delay_val_int[4]_i_5__1_n_0 ;
  wire s_ovflw1120_out;
  wire s_ovflw_i_1__1_n_0;
  wire s_ovflw_reg_n_0;
  wire [4:0]s_state;
  wire \s_state[0]_i_1__1_n_0 ;
  wire \s_state[1]_i_1__1_n_0 ;
  wire \s_state[2]_i_1__1_n_0 ;
  wire \s_state[3]_i_1__1_n_0 ;
  wire \s_state[3]_i_2__1_n_0 ;
  wire \s_state[3]_i_3__1_n_0 ;
  wire \s_state[3]_i_4_n_0 ;
  wire \s_state[4]_i_1__1_n_0 ;
  wire \s_state[4]_i_2__1_n_0 ;
  wire [4:0]\sdataouta_reg[7]_0 ;
  wire \sdataouta_reg_n_0_[0] ;
  wire sdataoutb;
  wire [7:0]sdataoutc;
  wire \sdataoutc[0]_i_1__1_n_0 ;
  wire \sdataoutc[1]_i_1__1_n_0 ;
  wire \sdataoutc[2]_i_1__1_n_0 ;
  wire \sdataoutc[3]_i_1__1_n_0 ;
  wire \sdataoutc[4]_i_1__1_n_0 ;
  wire \sdataoutc[5]_i_1__1_n_0 ;
  wire \sdataoutc[6]_i_1__1_n_0 ;
  wire \sdataoutc[7]_i_1__1_n_0 ;
  wire [31:0]shifter;
  wire \shifter[0]_i_1__1_n_0 ;
  wire \shifter[10]_i_1__1_n_0 ;
  wire \shifter[11]_i_1__1_n_0 ;
  wire \shifter[12]_i_1__1_n_0 ;
  wire \shifter[13]_i_1__1_n_0 ;
  wire \shifter[14]_i_1__1_n_0 ;
  wire \shifter[15]_i_1__1_n_0 ;
  wire \shifter[16]_i_1__1_n_0 ;
  wire \shifter[17]_i_1__1_n_0 ;
  wire \shifter[18]_i_1__1_n_0 ;
  wire \shifter[19]_i_1__1_n_0 ;
  wire \shifter[1]_i_1__1_n_0 ;
  wire \shifter[20]_i_1__1_n_0 ;
  wire \shifter[21]_i_1__1_n_0 ;
  wire \shifter[22]_i_1__1_n_0 ;
  wire \shifter[23]_i_1__1_n_0 ;
  wire \shifter[24]_i_1__1_n_0 ;
  wire \shifter[25]_i_1__1_n_0 ;
  wire \shifter[26]_i_1__1_n_0 ;
  wire \shifter[27]_i_1__1_n_0 ;
  wire \shifter[28]_i_1__1_n_0 ;
  wire \shifter[29]_i_1__1_n_0 ;
  wire \shifter[2]_i_1__1_n_0 ;
  wire \shifter[30]_i_1__1_n_0 ;
  wire \shifter[31]_i_1__1_n_0 ;
  wire \shifter[3]_i_1__1_n_0 ;
  wire \shifter[4]_i_1__1_n_0 ;
  wire \shifter[5]_i_1__1_n_0 ;
  wire \shifter[6]_i_1__1_n_0 ;
  wire \shifter[7]_i_1__1_n_0 ;
  wire \shifter[8]_i_1__1_n_0 ;
  wire \shifter[9]_i_1__1_n_0 ;

  LUT6 #(
    .INIT(64'h8EEF088E8EEF0008)) 
    \action[0]_i_1__1 
       (.I0(\msxor_cti_reg_n_0_[1] ),
        .I1(\msxor_ctix_reg_n_0_[1] ),
        .I2(\msxor_ctd_reg_n_0_[1] ),
        .I3(\msxor_ctdx_reg_n_0_[1] ),
        .I4(\action[0]_i_2__1_n_0 ),
        .I5(\action[0]_i_3__1_n_0 ),
        .O(action[0]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT4 #(
    .INIT(16'h088E)) 
    \action[0]_i_2__1 
       (.I0(\msxor_cti_reg_n_0_[0] ),
        .I1(\msxor_ctix_reg_n_0_[0] ),
        .I2(\msxor_ctd_reg_n_0_[0] ),
        .I3(\msxor_ctdx_reg_n_0_[0] ),
        .O(\action[0]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \action[0]_i_3__1 
       (.I0(\msxor_ctix_reg_n_0_[0] ),
        .I1(\msxor_cti_reg_n_0_[0] ),
        .I2(\msxor_ctdx_reg_n_0_[0] ),
        .I3(\msxor_ctd_reg_n_0_[0] ),
        .O(\action[0]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hCEEF0CCE0CCE000C)) 
    \action[1]_i_1__1 
       (.I0(\action[1]_i_2__1_n_0 ),
        .I1(\action[1]_i_3__1_n_0 ),
        .I2(\msxor_ctix_reg_n_0_[1] ),
        .I3(\msxor_cti_reg_n_0_[1] ),
        .I4(\msxor_ctdx_reg_n_0_[1] ),
        .I5(\msxor_ctd_reg_n_0_[1] ),
        .O(action[1]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \action[1]_i_2__1 
       (.I0(\msxor_ctix_reg_n_0_[0] ),
        .I1(\msxor_cti_reg_n_0_[0] ),
        .I2(\msxor_ctdx_reg_n_0_[0] ),
        .I3(\msxor_ctd_reg_n_0_[0] ),
        .O(\action[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT4 #(
    .INIT(16'h088E)) 
    \action[1]_i_3__1 
       (.I0(\msxor_ctd_reg_n_0_[0] ),
        .I1(\msxor_ctdx_reg_n_0_[0] ),
        .I2(\msxor_cti_reg_n_0_[0] ),
        .I3(\msxor_ctix_reg_n_0_[0] ),
        .O(\action[1]_i_3__1_n_0 ));
  FDRE \action_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(action[0]),
        .Q(\action_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \action_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(action[1]),
        .Q(p_0_in200_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000040)) 
    data_mux_i_1__1
       (.I0(s_state[3]),
        .I1(s_state[2]),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(\s_state[3]_i_3__1_n_0 ),
        .I5(data_mux),
        .O(data_mux_i_1__1_n_0));
  FDRE data_mux_reg
       (.C(CLK),
        .CE(1'b1),
        .D(data_mux_i_1__1_n_0),
        .Q(data_mux),
        .R(reset_1p25));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[0]_i_1 
       (.I0(sdataoutc[0]),
        .I1(mdataoutc[0]),
        .I2(data_mux),
        .O(\data_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[1]_i_1 
       (.I0(sdataoutc[1]),
        .I1(mdataoutc[1]),
        .I2(data_mux),
        .O(\data_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[2]_i_1 
       (.I0(sdataoutc[2]),
        .I1(mdataoutc[2]),
        .I2(data_mux),
        .O(\data_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[3]_i_1 
       (.I0(sdataoutc[3]),
        .I1(mdataoutc[3]),
        .I2(data_mux),
        .O(\data_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[4]_i_1 
       (.I0(sdataoutc[4]),
        .I1(mdataoutc[4]),
        .I2(data_mux),
        .O(\data_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[5]_i_1 
       (.I0(sdataoutc[5]),
        .I1(mdataoutc[5]),
        .I2(data_mux),
        .O(\data_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[6]_i_1 
       (.I0(sdataoutc[6]),
        .I1(mdataoutc[6]),
        .I2(data_mux),
        .O(\data_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[7]_i_1 
       (.I0(sdataoutc[7]),
        .I1(mdataoutc[7]),
        .I2(data_mux),
        .O(\data_out[7]_i_1_n_0 ));
  FDRE \data_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(\dataout_reg[7] [0]),
        .R(1'b0));
  FDRE \data_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(\dataout_reg[7] [1]),
        .R(1'b0));
  FDRE \data_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(\dataout_reg[7] [2]),
        .R(1'b0));
  FDRE \data_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(\dataout_reg[7] [3]),
        .R(1'b0));
  FDRE \data_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(\dataout_reg[7] [4]),
        .R(1'b0));
  FDRE \data_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(\dataout_reg[7] [5]),
        .R(1'b0));
  FDRE \data_out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(\dataout_reg[7] [6]),
        .R(1'b0));
  FDRE \data_out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(\dataout_reg[7] [7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7FFFFFFF6F770000)) 
    dec_run_i_1__1
       (.I0(s_state[1]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[0]),
        .I4(dec_run_i_2__1_n_0),
        .I5(dec_run_reg_n_0),
        .O(dec_run_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h0000C0C00000CECC)) 
    dec_run_i_2__1
       (.I0(meq_min_reg_n_0),
        .I1(dec_run_reg_n_0),
        .I2(delay_change_reg_n_0),
        .I3(pd_min),
        .I4(inc_run_reg_n_0),
        .I5(pd_max),
        .O(dec_run_i_2__1_n_0));
  FDRE dec_run_reg
       (.C(CLK),
        .CE(1'b1),
        .D(dec_run_i_1__1_n_0),
        .Q(dec_run_reg_n_0),
        .R(reset_1p25));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT5 #(
    .INIT(32'hFFFFCCFE)) 
    delay_change_i_1__1
       (.I0(pd_max),
        .I1(inc_run_reg_n_0),
        .I2(pd_min),
        .I3(delay_change_reg_n_0),
        .I4(dec_run_reg_n_0),
        .O(delay_change_i_1__1_n_0));
  FDRE delay_change_reg
       (.C(CLK),
        .CE(1'b1),
        .D(delay_change_i_1__1_n_0),
        .Q(delay_change_reg_n_0),
        .R(reset_1p25));
  LUT6 #(
    .INIT(64'hCCCCCCCCCACCCAC8)) 
    eye_run_i_1__1
       (.I0(eye_run_i_2__1_n_0),
        .I1(eye_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(pd_min),
        .I5(s_ovflw1120_out),
        .O(eye_run_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    eye_run_i_2__1
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(s_state[4]),
        .O(eye_run_i_2__1_n_0));
  FDRE eye_run_reg
       (.C(CLK),
        .CE(1'b1),
        .D(eye_run_i_1__1_n_0),
        .Q(eye_run_reg_n_0),
        .R(reset_1p25));
  LUT6 #(
    .INIT(64'h7FFFFFFF6F770000)) 
    inc_run_i_1__1
       (.I0(s_state[1]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[0]),
        .I4(inc_run_i_2__1_n_0),
        .I5(inc_run_reg_n_0),
        .O(inc_run_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    inc_run_i_2__1
       (.I0(pd_max),
        .I1(delay_change_reg_n_0),
        .I2(meq_max),
        .I3(inc_run_reg_n_0),
        .O(inc_run_i_2__1_n_0));
  FDRE inc_run_reg
       (.C(CLK),
        .CE(1'b1),
        .D(inc_run_i_1__1_n_0),
        .Q(inc_run_reg_n_0),
        .R(reset_1p25));
  LUT6 #(
    .INIT(64'hFEFFFFFF01000000)) 
    \m_delay_mux[0]_i_1__1 
       (.I0(\s_state[3]_i_3__1_n_0 ),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(s_state[0]),
        .I5(m_delay_mux[0]),
        .O(\m_delay_mux[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFF9F0060)) 
    \m_delay_mux[1]_i_1__1 
       (.I0(s_ovflw1120_out),
        .I1(m_delay_mux[0]),
        .I2(\m_delay_mux[1]_i_2__1_n_0 ),
        .I3(\s_state[3]_i_3__1_n_0 ),
        .I4(m_delay_mux[1]),
        .O(\m_delay_mux[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_delay_mux[1]_i_2__1 
       (.I0(s_state[1]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[0]),
        .O(\m_delay_mux[1]_i_2__1_n_0 ));
  FDSE \m_delay_mux_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\m_delay_mux[0]_i_1__1_n_0 ),
        .Q(m_delay_mux[0]),
        .S(reset_1p25));
  FDRE \m_delay_mux_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\m_delay_mux[1]_i_1__1_n_0 ),
        .Q(m_delay_mux[1]),
        .R(reset_1p25));
  LUT6 #(
    .INIT(64'h00010001000F0000)) 
    \m_delay_val_int[0]_i_1__1 
       (.I0(inc_run_reg_n_0),
        .I1(meq_max),
        .I2(Q[0]),
        .I3(reset_1p25),
        .I4(\m_delay_val_int[4]_i_4__1_n_0 ),
        .I5(s_ovflw1120_out),
        .O(\m_delay_val_int[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002FF22002)) 
    \m_delay_val_int[1]_i_1__0 
       (.I0(\m_delay_val_int[4]_i_4__1_n_0 ),
        .I1(s_ovflw1120_out),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\m_delay_val_int[4]_i_5__1_n_0 ),
        .I5(reset_1p25),
        .O(\m_delay_val_int[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEECC00A)) 
    \m_delay_val_int[2]_i_1__0 
       (.I0(\m_delay_val_int[4]_i_10_n_0 ),
        .I1(\m_delay_val_int[4]_i_5__1_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(reset_1p25),
        .O(\m_delay_val_int[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000415555554155)) 
    \m_delay_val_int[3]_i_1__1 
       (.I0(reset_1p25),
        .I1(Q[3]),
        .I2(\m_delay_val_int[4]_i_9_n_0 ),
        .I3(\m_delay_val_int[4]_i_4__1_n_0 ),
        .I4(s_ovflw1120_out),
        .I5(\m_delay_val_int[3]_i_2__1_n_0 ),
        .O(\m_delay_val_int[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF807F)) 
    \m_delay_val_int[3]_i_2__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(meq_max),
        .I5(inc_run_reg_n_0),
        .O(\m_delay_val_int[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT5 #(
    .INIT(32'h00001101)) 
    \m_delay_val_int[4]_i_10 
       (.I0(meq_min_reg_n_0),
        .I1(dec_run_reg_n_0),
        .I2(pd_max),
        .I3(delay_change_reg_n_0),
        .I4(inc_run_reg_n_0),
        .O(\m_delay_val_int[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_delay_val_int[4]_i_11 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\m_delay_val_int[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF5)) 
    \m_delay_val_int[4]_i_1__1 
       (.I0(\m_delay_val_int[4]_i_3__1_n_0 ),
        .I1(\m_delay_val_int[4]_i_4__1_n_0 ),
        .I2(reset_1p25),
        .I3(\m_delay_val_int[4]_i_5__1_n_0 ),
        .I4(s_ovflw1120_out),
        .I5(\m_delay_val_int[4]_i_7__1_n_0 ),
        .O(\m_delay_val_int[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h5554444544444444)) 
    \m_delay_val_int[4]_i_2__1 
       (.I0(reset_1p25),
        .I1(\m_delay_val_int[4]_i_8_n_0 ),
        .I2(Q[3]),
        .I3(\m_delay_val_int[4]_i_9_n_0 ),
        .I4(Q[4]),
        .I5(\m_delay_val_int[4]_i_10_n_0 ),
        .O(\m_delay_val_int[4]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT5 #(
    .INIT(32'hCCEEFFEF)) 
    \m_delay_val_int[4]_i_3__1 
       (.I0(pd_max),
        .I1(inc_run_reg_n_0),
        .I2(pd_min),
        .I3(delay_change_reg_n_0),
        .I4(dec_run_reg_n_0),
        .O(\m_delay_val_int[4]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_delay_val_int[4]_i_4__1 
       (.I0(dec_run_reg_n_0),
        .I1(meq_min_reg_n_0),
        .O(\m_delay_val_int[4]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \m_delay_val_int[4]_i_5__1 
       (.I0(delay_change_reg_n_0),
        .I1(pd_max),
        .I2(meq_max),
        .I3(inc_run_reg_n_0),
        .O(\m_delay_val_int[4]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_delay_val_int[4]_i_6__0 
       (.I0(inc_run_reg_n_0),
        .I1(delay_change_reg_n_0),
        .I2(pd_max),
        .O(s_ovflw1120_out));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \m_delay_val_int[4]_i_7__1 
       (.I0(s_state[3]),
        .I1(s_state[2]),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .O(\m_delay_val_int[4]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200020000)) 
    \m_delay_val_int[4]_i_8 
       (.I0(pd_max),
        .I1(delay_change_reg_n_0),
        .I2(inc_run_reg_n_0),
        .I3(meq_max),
        .I4(Q[4]),
        .I5(\m_delay_val_int[4]_i_11_n_0 ),
        .O(\m_delay_val_int[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \m_delay_val_int[4]_i_9 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\m_delay_val_int[4]_i_9_n_0 ));
  FDRE \m_delay_val_int_reg[0] 
       (.C(CLK),
        .CE(\m_delay_val_int[4]_i_1__1_n_0 ),
        .D(\m_delay_val_int[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[1] 
       (.C(CLK),
        .CE(\m_delay_val_int[4]_i_1__1_n_0 ),
        .D(\m_delay_val_int[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[2] 
       (.C(CLK),
        .CE(\m_delay_val_int[4]_i_1__1_n_0 ),
        .D(\m_delay_val_int[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[3] 
       (.C(CLK),
        .CE(\m_delay_val_int[4]_i_1__1_n_0 ),
        .D(\m_delay_val_int[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[4] 
       (.C(CLK),
        .CE(\m_delay_val_int[4]_i_1__1_n_0 ),
        .D(\m_delay_val_int[4]_i_2__1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \match[0]_i_1__1 
       (.I0(p_0_in180_in),
        .I1(p_0_in88_in),
        .I2(p_0_in166_in),
        .I3(p_0_in76_in),
        .I4(\match[0]_i_2__1_n_0 ),
        .I5(\match[0]_i_3__1_n_0 ),
        .O(\match[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \match[0]_i_2__1 
       (.I0(\sdataouta_reg_n_0_[0] ),
        .I1(\mdataouta_reg_n_0_[0] ),
        .I2(p_0_in97_in),
        .I3(p_0_in15_in),
        .I4(p_0_in110_in),
        .I5(p_0_in28_in),
        .O(\match[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \match[0]_i_3__1 
       (.I0(p_0_in40_in),
        .I1(p_0_in124_in),
        .I2(p_0_in152_in),
        .I3(p_0_in64_in),
        .I4(p_0_in138_in),
        .I5(p_0_in52_in),
        .O(\match[0]_i_3__1_n_0 ));
  FDRE \match_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\match[0]_i_1__1_n_0 ),
        .Q(p_2_in[1]),
        .R(1'b0));
  FDRE \match_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[1]),
        .Q(p_2_in[2]),
        .R(1'b0));
  FDRE \match_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[2]),
        .Q(p_2_in[3]),
        .R(1'b0));
  FDRE \match_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[3]),
        .Q(p_2_in[4]),
        .R(1'b0));
  FDRE \match_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[4]),
        .Q(p_2_in[5]),
        .R(1'b0));
  FDRE \match_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[5]),
        .Q(p_2_in[6]),
        .R(1'b0));
  FDRE \match_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[6]),
        .Q(p_2_in[7]),
        .R(1'b0));
  FDRE \match_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[7]),
        .Q(match),
        .R(1'b0));
  FDRE \mdataouta_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[0]),
        .Q(\mdataouta_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mdataouta_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[1]),
        .Q(p_0_in97_in),
        .R(1'b0));
  FDRE \mdataouta_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[2]),
        .Q(p_0_in110_in),
        .R(1'b0));
  FDRE \mdataouta_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[3]),
        .Q(p_0_in124_in),
        .R(1'b0));
  FDRE \mdataouta_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[4]),
        .Q(p_0_in138_in),
        .R(1'b0));
  FDRE \mdataouta_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[5]),
        .Q(p_0_in152_in),
        .R(1'b0));
  FDRE \mdataouta_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[6]),
        .Q(p_0_in166_in),
        .R(1'b0));
  FDRE \mdataouta_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[7]),
        .Q(p_0_in180_in),
        .R(1'b0));
  FDRE mdataoutb_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in180_in),
        .Q(mdataoutb),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[0]_i_1__1 
       (.I0(\mdataouta_reg_n_0_[0] ),
        .I1(m_delay_mux[0]),
        .I2(p_0_in97_in),
        .I3(m_delay_mux[1]),
        .I4(mdataoutb),
        .O(\mdataoutc[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[1]_i_1__1 
       (.I0(p_0_in97_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in110_in),
        .I3(m_delay_mux[1]),
        .I4(\mdataouta_reg_n_0_[0] ),
        .O(\mdataoutc[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[2]_i_1__1 
       (.I0(p_0_in110_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in124_in),
        .I3(m_delay_mux[1]),
        .I4(p_0_in97_in),
        .O(\mdataoutc[2]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[3]_i_1__1 
       (.I0(p_0_in124_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in138_in),
        .I3(m_delay_mux[1]),
        .I4(p_0_in110_in),
        .O(\mdataoutc[3]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[4]_i_1__1 
       (.I0(p_0_in138_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in152_in),
        .I3(m_delay_mux[1]),
        .I4(p_0_in124_in),
        .O(\mdataoutc[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[5]_i_1__1 
       (.I0(p_0_in152_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in166_in),
        .I3(m_delay_mux[1]),
        .I4(p_0_in138_in),
        .O(\mdataoutc[5]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[6]_i_1__1 
       (.I0(p_0_in166_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in180_in),
        .I3(m_delay_mux[1]),
        .I4(p_0_in152_in),
        .O(\mdataoutc[6]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[7]_i_1__1 
       (.I0(p_0_in180_in),
        .I1(m_delay_mux[0]),
        .I2(bitslipx1p25_reg[0]),
        .I3(m_delay_mux[1]),
        .I4(p_0_in166_in),
        .O(\mdataoutc[7]_i_1__1_n_0 ));
  FDRE \mdataoutc_reg[0] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\mdataoutc[0]_i_1__1_n_0 ),
        .Q(mdataoutc[0]),
        .R(1'b0));
  FDRE \mdataoutc_reg[1] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\mdataoutc[1]_i_1__1_n_0 ),
        .Q(mdataoutc[1]),
        .R(1'b0));
  FDRE \mdataoutc_reg[2] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\mdataoutc[2]_i_1__1_n_0 ),
        .Q(mdataoutc[2]),
        .R(1'b0));
  FDRE \mdataoutc_reg[3] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\mdataoutc[3]_i_1__1_n_0 ),
        .Q(mdataoutc[3]),
        .R(1'b0));
  FDRE \mdataoutc_reg[4] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\mdataoutc[4]_i_1__1_n_0 ),
        .Q(mdataoutc[4]),
        .R(1'b0));
  FDRE \mdataoutc_reg[5] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\mdataoutc[5]_i_1__1_n_0 ),
        .Q(mdataoutc[5]),
        .R(1'b0));
  FDRE \mdataoutc_reg[6] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\mdataoutc[6]_i_1__1_n_0 ),
        .Q(mdataoutc[6]),
        .R(1'b0));
  FDRE \mdataoutc_reg[7] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\mdataoutc[7]_i_1__1_n_0 ),
        .Q(mdataoutc[7]),
        .R(1'b0));
  FDRE meq_max_reg
       (.C(CLK),
        .CE(p_12_in),
        .D(red_debug[8]),
        .Q(meq_max),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88888888888888B8)) 
    meq_min_i_1__1
       (.I0(meq_min_reg_n_0),
        .I1(reset_1p25),
        .I2(meq_min_i_2__1_n_0),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(meq_min_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    meq_min_i_2__1
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(meq_min_i_2__1_n_0));
  FDRE meq_min_reg
       (.C(CLK),
        .CE(1'b1),
        .D(meq_min_i_1__1_n_0),
        .Q(meq_min_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT4 #(
    .INIT(16'h6B96)) 
    \msxor_ctd[0]_i_1__1 
       (.I0(\msxor_ctd[1]_i_2__1_n_0 ),
        .I1(\msxor_ctd[1]_i_3__1_n_0 ),
        .I2(\msxor_ctd[1]_i_4__1_n_0 ),
        .I3(\msxor_ctd[1]_i_5__1_n_0 ),
        .O(\msxor_ctd[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT4 #(
    .INIT(16'hBF2B)) 
    \msxor_ctd[1]_i_1__1 
       (.I0(\msxor_ctd[1]_i_2__1_n_0 ),
        .I1(\msxor_ctd[1]_i_3__1_n_0 ),
        .I2(\msxor_ctd[1]_i_4__1_n_0 ),
        .I3(\msxor_ctd[1]_i_5__1_n_0 ),
        .O(\msxor_ctd[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_ctd[1]_i_2__1 
       (.I0(p_0_in28_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in15_in),
        .I3(p_0_in110_in),
        .I4(p_0_in97_in),
        .O(\msxor_ctd[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_ctd[1]_i_3__1 
       (.I0(p_0_in40_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in28_in),
        .I3(p_0_in124_in),
        .I4(p_0_in110_in),
        .O(\msxor_ctd[1]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT5 #(
    .INIT(32'hFFB847FF)) 
    \msxor_ctd[1]_i_4__1 
       (.I0(p_0_in15_in),
        .I1(s_ovflw_reg_n_0),
        .I2(\sdataouta_reg_n_0_[0] ),
        .I3(\mdataouta_reg_n_0_[0] ),
        .I4(p_0_in97_in),
        .O(\msxor_ctd[1]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT5 #(
    .INIT(32'h0047B800)) 
    \msxor_ctd[1]_i_5__1 
       (.I0(\sdataouta_reg_n_0_[0] ),
        .I1(s_ovflw_reg_n_0),
        .I2(sdataoutb),
        .I3(mdataoutb),
        .I4(\mdataouta_reg_n_0_[0] ),
        .O(\msxor_ctd[1]_i_5__1_n_0 ));
  FDRE \msxor_ctd_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctd[0]_i_1__1_n_0 ),
        .Q(\msxor_ctd_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \msxor_ctd_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctd[1]_i_1__1_n_0 ),
        .Q(\msxor_ctd_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT4 #(
    .INIT(16'h69D6)) 
    \msxor_ctdx[0]_i_1__1 
       (.I0(\msxor_ctdx[1]_i_5__1_n_0 ),
        .I1(\msxor_ctdx[1]_i_4__1_n_0 ),
        .I2(\msxor_ctdx[1]_i_2__1_n_0 ),
        .I3(\msxor_ctdx[1]_i_3__1_n_0 ),
        .O(\msxor_ctdx[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT4 #(
    .INIT(16'hB2FB)) 
    \msxor_ctdx[1]_i_1__1 
       (.I0(\msxor_ctdx[1]_i_2__1_n_0 ),
        .I1(\msxor_ctdx[1]_i_3__1_n_0 ),
        .I2(\msxor_ctdx[1]_i_4__1_n_0 ),
        .I3(\msxor_ctdx[1]_i_5__1_n_0 ),
        .O(\msxor_ctdx[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT5 #(
    .INIT(32'h0047B800)) 
    \msxor_ctdx[1]_i_2__1 
       (.I0(p_0_in64_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in52_in),
        .I3(p_0_in138_in),
        .I4(p_0_in152_in),
        .O(\msxor_ctdx[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_ctdx[1]_i_3__1 
       (.I0(p_0_in52_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in40_in),
        .I3(p_0_in138_in),
        .I4(p_0_in124_in),
        .O(\msxor_ctdx[1]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_ctdx[1]_i_4__1 
       (.I0(p_0_in88_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in76_in),
        .I3(p_0_in180_in),
        .I4(p_0_in166_in),
        .O(\msxor_ctdx[1]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_ctdx[1]_i_5__1 
       (.I0(p_0_in76_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in64_in),
        .I3(p_0_in166_in),
        .I4(p_0_in152_in),
        .O(\msxor_ctdx[1]_i_5__1_n_0 ));
  FDRE \msxor_ctdx_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctdx[0]_i_1__1_n_0 ),
        .Q(\msxor_ctdx_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \msxor_ctdx_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctdx[1]_i_1__1_n_0 ),
        .Q(\msxor_ctdx_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT4 #(
    .INIT(16'h6B96)) 
    \msxor_cti[0]_i_1__1 
       (.I0(\msxor_cti[1]_i_2__1_n_0 ),
        .I1(\msxor_cti[1]_i_3__1_n_0 ),
        .I2(\msxor_cti[1]_i_4__1_n_0 ),
        .I3(\msxor_cti[1]_i_5__1_n_0 ),
        .O(\msxor_cti[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT4 #(
    .INIT(16'hBF2B)) 
    \msxor_cti[1]_i_1__1 
       (.I0(\msxor_cti[1]_i_2__1_n_0 ),
        .I1(\msxor_cti[1]_i_3__1_n_0 ),
        .I2(\msxor_cti[1]_i_4__1_n_0 ),
        .I3(\msxor_cti[1]_i_5__1_n_0 ),
        .O(\msxor_cti[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_cti[1]_i_2__1 
       (.I0(p_0_in28_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in15_in),
        .I3(p_0_in97_in),
        .I4(p_0_in110_in),
        .O(\msxor_cti[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_cti[1]_i_3__1 
       (.I0(p_0_in40_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in28_in),
        .I3(p_0_in110_in),
        .I4(p_0_in124_in),
        .O(\msxor_cti[1]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT5 #(
    .INIT(32'hFFB847FF)) 
    \msxor_cti[1]_i_4__1 
       (.I0(p_0_in15_in),
        .I1(s_ovflw_reg_n_0),
        .I2(\sdataouta_reg_n_0_[0] ),
        .I3(p_0_in97_in),
        .I4(\mdataouta_reg_n_0_[0] ),
        .O(\msxor_cti[1]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_cti[1]_i_5__1 
       (.I0(\sdataouta_reg_n_0_[0] ),
        .I1(s_ovflw_reg_n_0),
        .I2(sdataoutb),
        .I3(mdataoutb),
        .I4(\mdataouta_reg_n_0_[0] ),
        .O(\msxor_cti[1]_i_5__1_n_0 ));
  FDRE \msxor_cti_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_cti[0]_i_1__1_n_0 ),
        .Q(\msxor_cti_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \msxor_cti_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_cti[1]_i_1__1_n_0 ),
        .Q(\msxor_cti_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT4 #(
    .INIT(16'h69D6)) 
    \msxor_ctix[0]_i_1__1 
       (.I0(\msxor_ctix[1]_i_5__1_n_0 ),
        .I1(\msxor_ctix[1]_i_4__1_n_0 ),
        .I2(\msxor_ctix[1]_i_2__1_n_0 ),
        .I3(\msxor_ctix[1]_i_3__1_n_0 ),
        .O(\msxor_ctix[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT4 #(
    .INIT(16'hB2FB)) 
    \msxor_ctix[1]_i_1__1 
       (.I0(\msxor_ctix[1]_i_2__1_n_0 ),
        .I1(\msxor_ctix[1]_i_3__1_n_0 ),
        .I2(\msxor_ctix[1]_i_4__1_n_0 ),
        .I3(\msxor_ctix[1]_i_5__1_n_0 ),
        .O(\msxor_ctix[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_ctix[1]_i_2__1 
       (.I0(p_0_in64_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in52_in),
        .I3(p_0_in138_in),
        .I4(p_0_in152_in),
        .O(\msxor_ctix[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_ctix[1]_i_3__1 
       (.I0(p_0_in52_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in40_in),
        .I3(p_0_in124_in),
        .I4(p_0_in138_in),
        .O(\msxor_ctix[1]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT5 #(
    .INIT(32'h0047B800)) 
    \msxor_ctix[1]_i_4__1 
       (.I0(p_0_in88_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in76_in),
        .I3(p_0_in180_in),
        .I4(p_0_in166_in),
        .O(\msxor_ctix[1]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_ctix[1]_i_5__1 
       (.I0(p_0_in76_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in64_in),
        .I3(p_0_in152_in),
        .I4(p_0_in166_in),
        .O(\msxor_ctix[1]_i_5__1_n_0 ));
  FDRE \msxor_ctix_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctix[0]_i_1__1_n_0 ),
        .Q(\msxor_ctix_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \msxor_ctix_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctix[1]_i_1__1_n_0 ),
        .Q(\msxor_ctix_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pd_hold[0]_i_1__1 
       (.I0(eye_run_reg_n_0),
        .I1(delay_change_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(inc_run_reg_n_0),
        .O(pdcount1));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[1]_i_1__1 
       (.I0(p_0_in1_in[1]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[2]_i_1__1 
       (.I0(p_0_in1_in[2]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[2]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[3]_i_1__1 
       (.I0(p_0_in1_in[3]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[3]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[4]_i_1__1 
       (.I0(p_0_in1_in[4]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[5]_i_1__1 
       (.I0(p_0_in1_in[5]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[5]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[6]_i_1__1 
       (.I0(p_0_in1_in[6]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[6]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[7]_i_1__1 
       (.I0(p_0_in),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[7]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[7]_i_2__1 
       (.I0(p_0_in1_in[7]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[7]_i_2__1_n_0 ));
  FDRE \pd_hold_reg[0] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1__1_n_0 ),
        .D(pdcount1),
        .Q(p_0_in1_in[1]),
        .R(reset_1p25));
  FDRE \pd_hold_reg[1] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1__1_n_0 ),
        .D(\pd_hold[1]_i_1__1_n_0 ),
        .Q(p_0_in1_in[2]),
        .R(reset_1p25));
  FDRE \pd_hold_reg[2] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1__1_n_0 ),
        .D(\pd_hold[2]_i_1__1_n_0 ),
        .Q(p_0_in1_in[3]),
        .R(reset_1p25));
  FDRE \pd_hold_reg[3] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1__1_n_0 ),
        .D(\pd_hold[3]_i_1__1_n_0 ),
        .Q(p_0_in1_in[4]),
        .R(reset_1p25));
  FDRE \pd_hold_reg[4] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1__1_n_0 ),
        .D(\pd_hold[4]_i_1__1_n_0 ),
        .Q(p_0_in1_in[5]),
        .R(reset_1p25));
  FDRE \pd_hold_reg[5] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1__1_n_0 ),
        .D(\pd_hold[5]_i_1__1_n_0 ),
        .Q(p_0_in1_in[6]),
        .R(reset_1p25));
  FDRE \pd_hold_reg[6] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1__1_n_0 ),
        .D(\pd_hold[6]_i_1__1_n_0 ),
        .Q(p_0_in1_in[7]),
        .R(reset_1p25));
  FDRE \pd_hold_reg[7] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1__1_n_0 ),
        .D(\pd_hold[7]_i_2__1_n_0 ),
        .Q(p_0_in),
        .R(reset_1p25));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'h02)) 
    pd_max_i_1__1
       (.I0(pd_max_i_2__1_n_0),
        .I1(pd_max),
        .I2(delay_change_reg_n_0),
        .O(pd_max0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    pd_max_i_2__1
       (.I0(pdcount_reg[0]),
        .I1(pdcount_reg[1]),
        .I2(pdcount_reg[2]),
        .I3(pdcount_reg[3]),
        .I4(pdcount_reg[4]),
        .I5(pdcount_reg[5]),
        .O(pd_max_i_2__1_n_0));
  FDRE pd_max_reg
       (.C(CLK),
        .CE(p_12_in),
        .D(pd_max0),
        .Q(pd_max),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'h02)) 
    pd_min_i_1__1
       (.I0(pd_min_i_2__1_n_0),
        .I1(pd_min),
        .I2(delay_change_reg_n_0),
        .O(pd_min0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    pd_min_i_2__1
       (.I0(pdcount_reg[4]),
        .I1(pdcount_reg[5]),
        .I2(pdcount_reg[2]),
        .I3(pdcount_reg[3]),
        .I4(pdcount_reg[0]),
        .I5(pdcount_reg[1]),
        .O(pd_min_i_2__1_n_0));
  FDRE pd_min_reg
       (.C(CLK),
        .CE(p_12_in),
        .D(pd_min0),
        .Q(pd_min),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pdcount[0]_i_1__1 
       (.I0(pdcount_reg[0]),
        .O(\pdcount[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'hD22D)) 
    \pdcount[1]_i_1__1 
       (.I0(\action_reg_n_0_[0] ),
        .I1(pd_max_i_2__1_n_0),
        .I2(pdcount_reg[0]),
        .I3(pdcount_reg[1]),
        .O(\pdcount[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT5 #(
    .INIT(32'hAAA96AA9)) 
    \pdcount[2]_i_1__1 
       (.I0(pdcount_reg[2]),
        .I1(pdcount_reg[0]),
        .I2(pdcount_reg[1]),
        .I3(\action_reg_n_0_[0] ),
        .I4(pd_max_i_2__1_n_0),
        .O(\pdcount[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF4000FFFC0003)) 
    \pdcount[3]_i_1__1 
       (.I0(pd_max_i_2__1_n_0),
        .I1(\action_reg_n_0_[0] ),
        .I2(pdcount_reg[1]),
        .I3(pdcount_reg[0]),
        .I4(pdcount_reg[3]),
        .I5(pdcount_reg[2]),
        .O(\pdcount[3]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h66656666)) 
    \pdcount[4]_i_1__1 
       (.I0(pdcount_reg[4]),
        .I1(\pdcount[5]_i_4__1_n_0 ),
        .I2(pdcount_reg[3]),
        .I3(pdcount_reg[2]),
        .I4(\pdcount[5]_i_5__1_n_0 ),
        .O(\pdcount[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pdcount[5]_i_1__1 
       (.I0(inc_run_reg_n_0),
        .I1(dec_run_reg_n_0),
        .I2(delay_change_reg_n_0),
        .I3(eye_run_reg_n_0),
        .I4(p_0_in),
        .I5(reset_1p25),
        .O(\pdcount[5]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h22F2)) 
    \pdcount[5]_i_2__1 
       (.I0(p_0_in200_in),
        .I1(pd_min_i_2__1_n_0),
        .I2(\action_reg_n_0_[0] ),
        .I3(pd_max_i_2__1_n_0),
        .O(\pdcount[5]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h6A6A6A996A6A6A6A)) 
    \pdcount[5]_i_3__1 
       (.I0(pdcount_reg[5]),
        .I1(pdcount_reg[4]),
        .I2(\pdcount[5]_i_4__1_n_0 ),
        .I3(pdcount_reg[3]),
        .I4(pdcount_reg[2]),
        .I5(\pdcount[5]_i_5__1_n_0 ),
        .O(\pdcount[5]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \pdcount[5]_i_4__1 
       (.I0(pdcount_reg[3]),
        .I1(pdcount_reg[2]),
        .I2(pd_max_i_2__1_n_0),
        .I3(\action_reg_n_0_[0] ),
        .I4(pdcount_reg[1]),
        .I5(pdcount_reg[0]),
        .O(\pdcount[5]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \pdcount[5]_i_5__1 
       (.I0(\action_reg_n_0_[0] ),
        .I1(pdcount_reg[0]),
        .I2(pdcount_reg[1]),
        .O(\pdcount[5]_i_5__1_n_0 ));
  FDRE \pdcount_reg[0] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2__1_n_0 ),
        .D(\pdcount[0]_i_1__1_n_0 ),
        .Q(pdcount_reg[0]),
        .R(\pdcount[5]_i_1__1_n_0 ));
  FDRE \pdcount_reg[1] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2__1_n_0 ),
        .D(\pdcount[1]_i_1__1_n_0 ),
        .Q(pdcount_reg[1]),
        .R(\pdcount[5]_i_1__1_n_0 ));
  FDRE \pdcount_reg[2] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2__1_n_0 ),
        .D(\pdcount[2]_i_1__1_n_0 ),
        .Q(pdcount_reg[2]),
        .R(\pdcount[5]_i_1__1_n_0 ));
  FDRE \pdcount_reg[3] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2__1_n_0 ),
        .D(\pdcount[3]_i_1__1_n_0 ),
        .Q(pdcount_reg[3]),
        .R(\pdcount[5]_i_1__1_n_0 ));
  FDRE \pdcount_reg[4] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2__1_n_0 ),
        .D(\pdcount[4]_i_1__1_n_0 ),
        .Q(pdcount_reg[4]),
        .R(\pdcount[5]_i_1__1_n_0 ));
  FDSE \pdcount_reg[5] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2__1_n_0 ),
        .D(\pdcount[5]_i_3__1_n_0 ),
        .Q(pdcount_reg[5]),
        .S(\pdcount[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \red_debug[0]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(red_debug[0]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \red_debug[10]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(red_debug[10]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \red_debug[11]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(red_debug[11]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \red_debug[12]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(red_debug[12]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \red_debug[13]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(red_debug[13]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \red_debug[14]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(red_debug[14]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \red_debug[15]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(red_debug[15]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \red_debug[16]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(red_debug[16]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \red_debug[17]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(red_debug[17]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \red_debug[18]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(red_debug[18]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \red_debug[19]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(red_debug[19]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \red_debug[1]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(red_debug[1]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \red_debug[20]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(red_debug[20]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \red_debug[21]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(red_debug[21]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \red_debug[22]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(red_debug[22]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \red_debug[23]_INST_0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(red_debug[23]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \red_debug[24]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(red_debug[24]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \red_debug[25]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(red_debug[25]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \red_debug[26]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(red_debug[26]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \red_debug[27]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(red_debug[27]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \red_debug[28]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(red_debug[28]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \red_debug[29]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(red_debug[29]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \red_debug[2]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(red_debug[2]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \red_debug[30]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(red_debug[30]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \red_debug[31]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(red_debug[31]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \red_debug[3]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(red_debug[3]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \red_debug[4]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(red_debug[4]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \red_debug[5]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(red_debug[5]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \red_debug[6]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(red_debug[6]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \red_debug[7]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(red_debug[7]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \red_debug[8]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(red_debug[8]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \red_debug[9]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(red_debug[9]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[0]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[0]),
        .I2(red_eye[0]),
        .O(results[0]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[10]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[10]),
        .I2(red_eye[10]),
        .O(results[10]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[11]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[11]),
        .I2(red_eye[11]),
        .O(results[11]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[12]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[12]),
        .I2(red_eye[12]),
        .O(results[12]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[13]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[13]),
        .I2(red_eye[13]),
        .O(results[13]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[14]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[14]),
        .I2(red_eye[14]),
        .O(results[14]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[15]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[15]),
        .I2(red_eye[15]),
        .O(results[15]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[16]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[16]),
        .I2(red_eye[16]),
        .O(results[16]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[17]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[17]),
        .I2(red_eye[17]),
        .O(results[17]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[18]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[18]),
        .I2(red_eye[18]),
        .O(results[18]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[19]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[19]),
        .I2(red_eye[19]),
        .O(results[19]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[1]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[1]),
        .I2(red_eye[1]),
        .O(results[1]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[20]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[20]),
        .I2(red_eye[20]),
        .O(results[20]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[21]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[21]),
        .I2(red_eye[21]),
        .O(results[21]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[22]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[22]),
        .I2(red_eye[22]),
        .O(results[22]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[23]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[23]),
        .I2(red_eye[23]),
        .O(results[23]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[24]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[24]),
        .I2(red_eye[24]),
        .O(results[24]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[25]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[25]),
        .I2(red_eye[25]),
        .O(results[25]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[26]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[26]),
        .I2(red_eye[26]),
        .O(results[26]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[27]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[27]),
        .I2(red_eye[27]),
        .O(results[27]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[28]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[28]),
        .I2(red_eye[28]),
        .O(results[28]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[29]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[29]),
        .I2(red_eye[29]),
        .O(results[29]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[2]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[2]),
        .I2(red_eye[2]),
        .O(results[2]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[30]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[30]),
        .I2(red_eye[30]),
        .O(results[30]));
  LUT3 #(
    .INIT(8'hA8)) 
    \results[31]_i_1__1 
       (.I0(\results[31]_i_3__1_n_0 ),
        .I1(eye_run_reg_n_0),
        .I2(delay_change_reg_n_0),
        .O(s_delay_val_eye));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[31]_i_2__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[31]),
        .I2(red_eye[31]),
        .O(results[31]));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \results[31]_i_3__1 
       (.I0(delay_change_i_1__1_n_0),
        .I1(s_state[4]),
        .I2(s_state[3]),
        .I3(s_state[2]),
        .I4(s_state[1]),
        .I5(s_state[0]),
        .O(\results[31]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \results[31]_i_4__1 
       (.I0(p_2_in[7]),
        .I1(p_2_in[3]),
        .I2(p_2_in[1]),
        .I3(p_2_in[4]),
        .I4(\results[31]_i_5__1_n_0 ),
        .O(\results[31]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \results[31]_i_5__1 
       (.I0(p_2_in[2]),
        .I1(match),
        .I2(p_2_in[5]),
        .I3(p_2_in[6]),
        .O(\results[31]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[3]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[3]),
        .I2(red_eye[3]),
        .O(results[3]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[4]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[4]),
        .I2(red_eye[4]),
        .O(results[4]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[5]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[5]),
        .I2(red_eye[5]),
        .O(results[5]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[6]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[6]),
        .I2(red_eye[6]),
        .O(results[6]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[7]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[7]),
        .I2(red_eye[7]),
        .O(results[7]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[8]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[8]),
        .I2(red_eye[8]),
        .O(results[8]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[9]_i_1__1 
       (.I0(\results[31]_i_4__1_n_0 ),
        .I1(shifter[9]),
        .I2(red_eye[9]),
        .O(results[9]));
  FDRE \results_reg[0] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[0]),
        .Q(red_eye[0]),
        .R(reset_1p25));
  FDRE \results_reg[10] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[10]),
        .Q(red_eye[10]),
        .R(reset_1p25));
  FDRE \results_reg[11] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[11]),
        .Q(red_eye[11]),
        .R(reset_1p25));
  FDRE \results_reg[12] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[12]),
        .Q(red_eye[12]),
        .R(reset_1p25));
  FDRE \results_reg[13] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[13]),
        .Q(red_eye[13]),
        .R(reset_1p25));
  FDRE \results_reg[14] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[14]),
        .Q(red_eye[14]),
        .R(reset_1p25));
  FDRE \results_reg[15] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[15]),
        .Q(red_eye[15]),
        .R(reset_1p25));
  FDRE \results_reg[16] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[16]),
        .Q(red_eye[16]),
        .R(reset_1p25));
  FDRE \results_reg[17] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[17]),
        .Q(red_eye[17]),
        .R(reset_1p25));
  FDRE \results_reg[18] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[18]),
        .Q(red_eye[18]),
        .R(reset_1p25));
  FDRE \results_reg[19] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[19]),
        .Q(red_eye[19]),
        .R(reset_1p25));
  FDRE \results_reg[1] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[1]),
        .Q(red_eye[1]),
        .R(reset_1p25));
  FDRE \results_reg[20] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[20]),
        .Q(red_eye[20]),
        .R(reset_1p25));
  FDRE \results_reg[21] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[21]),
        .Q(red_eye[21]),
        .R(reset_1p25));
  FDRE \results_reg[22] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[22]),
        .Q(red_eye[22]),
        .R(reset_1p25));
  FDRE \results_reg[23] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[23]),
        .Q(red_eye[23]),
        .R(reset_1p25));
  FDRE \results_reg[24] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[24]),
        .Q(red_eye[24]),
        .R(reset_1p25));
  FDRE \results_reg[25] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[25]),
        .Q(red_eye[25]),
        .R(reset_1p25));
  FDRE \results_reg[26] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[26]),
        .Q(red_eye[26]),
        .R(reset_1p25));
  FDRE \results_reg[27] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[27]),
        .Q(red_eye[27]),
        .R(reset_1p25));
  FDRE \results_reg[28] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[28]),
        .Q(red_eye[28]),
        .R(reset_1p25));
  FDRE \results_reg[29] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[29]),
        .Q(red_eye[29]),
        .R(reset_1p25));
  FDRE \results_reg[2] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[2]),
        .Q(red_eye[2]),
        .R(reset_1p25));
  FDRE \results_reg[30] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[30]),
        .Q(red_eye[30]),
        .R(reset_1p25));
  FDRE \results_reg[31] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[31]),
        .Q(red_eye[31]),
        .R(reset_1p25));
  FDRE \results_reg[3] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[3]),
        .Q(red_eye[3]),
        .R(reset_1p25));
  FDRE \results_reg[4] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[4]),
        .Q(red_eye[4]),
        .R(reset_1p25));
  FDRE \results_reg[5] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[5]),
        .Q(red_eye[5]),
        .R(reset_1p25));
  FDRE \results_reg[6] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[6]),
        .Q(red_eye[6]),
        .R(reset_1p25));
  FDRE \results_reg[7] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[7]),
        .Q(red_eye[7]),
        .R(reset_1p25));
  FDRE \results_reg[8] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[8]),
        .Q(red_eye[8]),
        .R(reset_1p25));
  FDRE \results_reg[9] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[9]),
        .Q(red_eye[9]),
        .R(reset_1p25));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \s_delay_mux[0]_i_1__1 
       (.I0(m_delay_mux[0]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\s_delay_mux[1]_i_2__1_n_0 ),
        .I4(\s_state[3]_i_3__1_n_0 ),
        .I5(s_delay_mux[0]),
        .O(\s_delay_mux[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \s_delay_mux[1]_i_1__1 
       (.I0(m_delay_mux[1]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\s_delay_mux[1]_i_2__1_n_0 ),
        .I4(\s_state[3]_i_3__1_n_0 ),
        .I5(s_delay_mux[1]),
        .O(\s_delay_mux[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_delay_mux[1]_i_2__1 
       (.I0(s_state[2]),
        .I1(s_state[1]),
        .O(\s_delay_mux[1]_i_2__1_n_0 ));
  FDSE \s_delay_mux_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_delay_mux[0]_i_1__1_n_0 ),
        .Q(s_delay_mux[0]),
        .S(reset_1p25));
  FDRE \s_delay_mux_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_delay_mux[1]_i_1__1_n_0 ),
        .Q(s_delay_mux[1]),
        .R(reset_1p25));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT5 #(
    .INIT(32'h00FF00EF)) 
    \s_delay_val_eye[0]_i_1__1 
       (.I0(s_delay_val_eye_reg[4]),
        .I1(s_delay_val_eye_reg[2]),
        .I2(s_delay_val_eye_reg[3]),
        .I3(s_delay_val_eye_reg[0]),
        .I4(s_delay_val_eye_reg[1]),
        .O(p_0_in__1[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \s_delay_val_eye[1]_i_1__1 
       (.I0(s_delay_val_eye_reg[0]),
        .I1(s_delay_val_eye_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \s_delay_val_eye[2]_i_1__1 
       (.I0(s_delay_val_eye_reg[2]),
        .I1(s_delay_val_eye_reg[1]),
        .I2(s_delay_val_eye_reg[0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT5 #(
    .INIT(32'h3FFEC000)) 
    \s_delay_val_eye[3]_i_1__1 
       (.I0(s_delay_val_eye_reg[4]),
        .I1(s_delay_val_eye_reg[2]),
        .I2(s_delay_val_eye_reg[1]),
        .I3(s_delay_val_eye_reg[0]),
        .I4(s_delay_val_eye_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \s_delay_val_eye[4]_i_1__1 
       (.I0(s_delay_val_eye_reg[4]),
        .I1(s_delay_val_eye_reg[3]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[1]),
        .I4(s_delay_val_eye_reg[0]),
        .O(p_0_in__1[4]));
  FDRE \s_delay_val_eye_reg[0] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(p_0_in__1[0]),
        .Q(s_delay_val_eye_reg[0]),
        .R(reset_1p25));
  FDRE \s_delay_val_eye_reg[1] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(p_0_in__1[1]),
        .Q(s_delay_val_eye_reg[1]),
        .R(reset_1p25));
  FDRE \s_delay_val_eye_reg[2] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(p_0_in__1[2]),
        .Q(s_delay_val_eye_reg[2]),
        .R(reset_1p25));
  FDRE \s_delay_val_eye_reg[3] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(p_0_in__1[3]),
        .Q(s_delay_val_eye_reg[3]),
        .R(reset_1p25));
  FDRE \s_delay_val_eye_reg[4] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(p_0_in__1[4]),
        .Q(s_delay_val_eye_reg[4]),
        .R(reset_1p25));
  LUT6 #(
    .INIT(64'h1010101110101000)) 
    \s_delay_val_int[0]_i_1__1 
       (.I0(delay_change_i_1__1_n_0),
        .I1(reset_1p25),
        .I2(s_delay_val_eye_reg[0]),
        .I3(eye_run_reg_n_0),
        .I4(delay_change_reg_n_0),
        .I5(Q[0]),
        .O(\s_delay_val_int[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h1010101110101000)) 
    \s_delay_val_int[1]_i_1__1 
       (.I0(delay_change_i_1__1_n_0),
        .I1(reset_1p25),
        .I2(s_delay_val_eye_reg[1]),
        .I3(eye_run_reg_n_0),
        .I4(delay_change_reg_n_0),
        .I5(Q[1]),
        .O(\s_delay_val_int[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22202223)) 
    \s_delay_val_int[2]_i_1__1 
       (.I0(s_delay_val_eye_reg[2]),
        .I1(delay_change_i_1__1_n_0),
        .I2(delay_change_reg_n_0),
        .I3(eye_run_reg_n_0),
        .I4(Q[2]),
        .I5(reset_1p25),
        .O(\s_delay_val_int[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCCCEECE)) 
    \s_delay_val_int[3]_i_1__1 
       (.I0(\s_delay_val_int[3]_i_2__1_n_0 ),
        .I1(s_ovflw1120_out),
        .I2(pd_min),
        .I3(delay_change_reg_n_0),
        .I4(dec_run_reg_n_0),
        .I5(reset_1p25),
        .O(\s_delay_val_int[3]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF60006)) 
    \s_delay_val_int[3]_i_2__1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(delay_change_reg_n_0),
        .I3(eye_run_reg_n_0),
        .I4(s_delay_val_eye_reg[3]),
        .O(\s_delay_val_int[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FCF0FEFAFEFAFE)) 
    \s_delay_val_int[4]_i_1__1 
       (.I0(\s_delay_val_int[4]_i_3__1_n_0 ),
        .I1(\s_delay_val_int[4]_i_4__1_n_0 ),
        .I2(reset_1p25),
        .I3(delay_change_i_1__1_n_0),
        .I4(s_state[4]),
        .I5(\s_state[3]_i_3__1_n_0 ),
        .O(\s_delay_val_int[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h08A8A8A8A8080808)) 
    \s_delay_val_int[4]_i_2__1 
       (.I0(\s_delay_val_int[4]_i_5__1_n_0 ),
        .I1(s_delay_val_eye_reg[4]),
        .I2(\s_delay_val_int[4]_i_4__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\s_delay_val_int[4]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \s_delay_val_int[4]_i_3__1 
       (.I0(s_state[0]),
        .I1(s_state[2]),
        .I2(s_state[1]),
        .I3(s_state[3]),
        .O(\s_delay_val_int[4]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_delay_val_int[4]_i_4__1 
       (.I0(delay_change_reg_n_0),
        .I1(eye_run_reg_n_0),
        .O(\s_delay_val_int[4]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000101000001011)) 
    \s_delay_val_int[4]_i_5__1 
       (.I0(reset_1p25),
        .I1(dec_run_reg_n_0),
        .I2(delay_change_reg_n_0),
        .I3(pd_min),
        .I4(inc_run_reg_n_0),
        .I5(pd_max),
        .O(\s_delay_val_int[4]_i_5__1_n_0 ));
  FDRE \s_delay_val_int_reg[0] 
       (.C(CLK),
        .CE(\s_delay_val_int[4]_i_1__1_n_0 ),
        .D(\s_delay_val_int[0]_i_1__1_n_0 ),
        .Q(\sdataouta_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \s_delay_val_int_reg[1] 
       (.C(CLK),
        .CE(\s_delay_val_int[4]_i_1__1_n_0 ),
        .D(\s_delay_val_int[1]_i_1__1_n_0 ),
        .Q(\sdataouta_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \s_delay_val_int_reg[2] 
       (.C(CLK),
        .CE(\s_delay_val_int[4]_i_1__1_n_0 ),
        .D(\s_delay_val_int[2]_i_1__1_n_0 ),
        .Q(\sdataouta_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \s_delay_val_int_reg[3] 
       (.C(CLK),
        .CE(\s_delay_val_int[4]_i_1__1_n_0 ),
        .D(\s_delay_val_int[3]_i_1__1_n_0 ),
        .Q(\sdataouta_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \s_delay_val_int_reg[4] 
       (.C(CLK),
        .CE(\s_delay_val_int[4]_i_1__1_n_0 ),
        .D(\s_delay_val_int[4]_i_2__1_n_0 ),
        .Q(\sdataouta_reg[7]_0 [4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    s_ovflw_i_1__1
       (.I0(s_ovflw1120_out),
        .I1(pd_min),
        .I2(delay_change_reg_n_0),
        .I3(dec_run_reg_n_0),
        .I4(eye_run_reg_n_0),
        .I5(s_ovflw_reg_n_0),
        .O(s_ovflw_i_1__1_n_0));
  FDRE s_ovflw_reg
       (.C(CLK),
        .CE(1'b1),
        .D(s_ovflw_i_1__1_n_0),
        .Q(s_ovflw_reg_n_0),
        .R(reset_1p25));
  LUT6 #(
    .INIT(64'h5555555555155555)) 
    \s_state[0]_i_1__1 
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(s_state[4]),
        .I5(delay_change_i_1__1_n_0),
        .O(\s_state[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666266666)) 
    \s_state[1]_i_1__1 
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(s_state[4]),
        .I5(delay_change_i_1__1_n_0),
        .O(\s_state[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7878787878387878)) 
    \s_state[2]_i_1__1 
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(s_state[4]),
        .I5(delay_change_i_1__1_n_0),
        .O(\s_state[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h00510050FFFFFFFF)) 
    \s_state[3]_i_1__1 
       (.I0(s_ovflw1120_out),
        .I1(pd_min),
        .I2(delay_change_reg_n_0),
        .I3(dec_run_reg_n_0),
        .I4(eye_run_reg_n_0),
        .I5(\s_state[3]_i_3__1_n_0 ),
        .O(\s_state[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \s_state[3]_i_2__1 
       (.I0(s_state[3]),
        .I1(s_state[1]),
        .I2(s_state[0]),
        .I3(s_state[2]),
        .O(\s_state[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h8888BB8B8888BBBB)) 
    \s_state[3]_i_3__1 
       (.I0(\s_state[3]_i_4_n_0 ),
        .I1(s_ovflw1120_out),
        .I2(pd_min),
        .I3(delay_change_reg_n_0),
        .I4(dec_run_reg_n_0),
        .I5(meq_min_reg_n_0),
        .O(\s_state[3]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \s_state[3]_i_4 
       (.I0(inc_run_reg_n_0),
        .I1(meq_max),
        .O(\s_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FF7FFFF80000000)) 
    \s_state[4]_i_1__1 
       (.I0(s_state[1]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[0]),
        .I4(\s_state[4]_i_2__1_n_0 ),
        .I5(s_state[4]),
        .O(\s_state[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000303000003032)) 
    \s_state[4]_i_2__1 
       (.I0(eye_run_reg_n_0),
        .I1(dec_run_reg_n_0),
        .I2(delay_change_reg_n_0),
        .I3(pd_min),
        .I4(inc_run_reg_n_0),
        .I5(pd_max),
        .O(\s_state[4]_i_2__1_n_0 ));
  FDRE \s_state_reg[0] 
       (.C(CLK),
        .CE(\s_state[3]_i_1__1_n_0 ),
        .D(\s_state[0]_i_1__1_n_0 ),
        .Q(s_state[0]),
        .R(reset_1p25));
  FDRE \s_state_reg[1] 
       (.C(CLK),
        .CE(\s_state[3]_i_1__1_n_0 ),
        .D(\s_state[1]_i_1__1_n_0 ),
        .Q(s_state[1]),
        .R(reset_1p25));
  FDRE \s_state_reg[2] 
       (.C(CLK),
        .CE(\s_state[3]_i_1__1_n_0 ),
        .D(\s_state[2]_i_1__1_n_0 ),
        .Q(s_state[2]),
        .R(reset_1p25));
  FDRE \s_state_reg[3] 
       (.C(CLK),
        .CE(\s_state[3]_i_1__1_n_0 ),
        .D(\s_state[3]_i_2__1_n_0 ),
        .Q(s_state[3]),
        .R(reset_1p25));
  FDRE \s_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_state[4]_i_1__1_n_0 ),
        .Q(s_state[4]),
        .R(reset_1p25));
  FDRE \sdataouta_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(\sdataouta_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \sdataouta_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(p_0_in15_in),
        .R(1'b0));
  FDRE \sdataouta_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(p_0_in28_in),
        .R(1'b0));
  FDRE \sdataouta_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(p_0_in40_in),
        .R(1'b0));
  FDRE \sdataouta_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(p_0_in52_in),
        .R(1'b0));
  FDRE \sdataouta_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(p_0_in64_in),
        .R(1'b0));
  FDRE \sdataouta_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(p_0_in76_in),
        .R(1'b0));
  FDRE \sdataouta_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(p_0_in88_in),
        .R(1'b0));
  FDRE sdataoutb_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in88_in),
        .Q(sdataoutb),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[0]_i_1__1 
       (.I0(\sdataouta_reg_n_0_[0] ),
        .I1(s_delay_mux[0]),
        .I2(p_0_in15_in),
        .I3(s_delay_mux[1]),
        .I4(sdataoutb),
        .O(\sdataoutc[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[1]_i_1__1 
       (.I0(p_0_in15_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in28_in),
        .I3(s_delay_mux[1]),
        .I4(\sdataouta_reg_n_0_[0] ),
        .O(\sdataoutc[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[2]_i_1__1 
       (.I0(p_0_in28_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in40_in),
        .I3(s_delay_mux[1]),
        .I4(p_0_in15_in),
        .O(\sdataoutc[2]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[3]_i_1__1 
       (.I0(p_0_in40_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in52_in),
        .I3(s_delay_mux[1]),
        .I4(p_0_in28_in),
        .O(\sdataoutc[3]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[4]_i_1__1 
       (.I0(p_0_in52_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in64_in),
        .I3(s_delay_mux[1]),
        .I4(p_0_in40_in),
        .O(\sdataoutc[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[5]_i_1__1 
       (.I0(p_0_in64_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in76_in),
        .I3(s_delay_mux[1]),
        .I4(p_0_in52_in),
        .O(\sdataoutc[5]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[6]_i_1__1 
       (.I0(p_0_in76_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in88_in),
        .I3(s_delay_mux[1]),
        .I4(p_0_in64_in),
        .O(\sdataoutc[6]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[7]_i_1__1 
       (.I0(p_0_in88_in),
        .I1(s_delay_mux[0]),
        .I2(D[0]),
        .I3(s_delay_mux[1]),
        .I4(p_0_in76_in),
        .O(\sdataoutc[7]_i_1__1_n_0 ));
  FDRE \sdataoutc_reg[0] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\sdataoutc[0]_i_1__1_n_0 ),
        .Q(sdataoutc[0]),
        .R(1'b0));
  FDRE \sdataoutc_reg[1] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\sdataoutc[1]_i_1__1_n_0 ),
        .Q(sdataoutc[1]),
        .R(1'b0));
  FDRE \sdataoutc_reg[2] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\sdataoutc[2]_i_1__1_n_0 ),
        .Q(sdataoutc[2]),
        .R(1'b0));
  FDRE \sdataoutc_reg[3] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\sdataoutc[3]_i_1__1_n_0 ),
        .Q(sdataoutc[3]),
        .R(1'b0));
  FDRE \sdataoutc_reg[4] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\sdataoutc[4]_i_1__1_n_0 ),
        .Q(sdataoutc[4]),
        .R(1'b0));
  FDRE \sdataoutc_reg[5] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\sdataoutc[5]_i_1__1_n_0 ),
        .Q(sdataoutc[5]),
        .R(1'b0));
  FDRE \sdataoutc_reg[6] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\sdataoutc[6]_i_1__1_n_0 ),
        .Q(sdataoutc[6]),
        .R(1'b0));
  FDRE \sdataoutc_reg[7] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\sdataoutc[7]_i_1__1_n_0 ),
        .Q(sdataoutc[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \shifter[0]_i_1__1 
       (.I0(shifter[31]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[10]_i_1__1 
       (.I0(shifter[9]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[10]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[11]_i_1__1 
       (.I0(shifter[10]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[11]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[12]_i_1__1 
       (.I0(shifter[11]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[12]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[13]_i_1__1 
       (.I0(shifter[12]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[13]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[14]_i_1__1 
       (.I0(shifter[13]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[14]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[15]_i_1__1 
       (.I0(shifter[14]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[15]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[16]_i_1__1 
       (.I0(shifter[15]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[16]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[17]_i_1__1 
       (.I0(shifter[16]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[17]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[18]_i_1__1 
       (.I0(shifter[17]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[18]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[19]_i_1__1 
       (.I0(shifter[18]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[19]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[1]_i_1__1 
       (.I0(shifter[0]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[20]_i_1__1 
       (.I0(shifter[19]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[20]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[21]_i_1__1 
       (.I0(shifter[20]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[21]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[22]_i_1__1 
       (.I0(shifter[21]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[22]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[23]_i_1__1 
       (.I0(shifter[22]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[23]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[24]_i_1__1 
       (.I0(shifter[23]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[24]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[25]_i_1__1 
       (.I0(shifter[24]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[25]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[26]_i_1__1 
       (.I0(shifter[25]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[26]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[27]_i_1__1 
       (.I0(shifter[26]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[27]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[28]_i_1__1 
       (.I0(shifter[27]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[28]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[29]_i_1__1 
       (.I0(shifter[28]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[29]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[2]_i_1__1 
       (.I0(shifter[1]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[30]_i_1__1 
       (.I0(shifter[29]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[30]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[31]_i_1__1 
       (.I0(shifter[30]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[31]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[3]_i_1__1 
       (.I0(shifter[2]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[4]_i_1__1 
       (.I0(shifter[3]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[5]_i_1__1 
       (.I0(shifter[4]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[6]_i_1__1 
       (.I0(shifter[5]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[7]_i_1__1 
       (.I0(shifter[6]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[8]_i_1__1 
       (.I0(shifter[7]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[9]_i_1__1 
       (.I0(shifter[8]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[9]_i_1__1_n_0 ));
  FDSE \shifter_reg[0] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[0]_i_1__1_n_0 ),
        .Q(shifter[0]),
        .S(reset_1p25));
  FDRE \shifter_reg[10] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[10]_i_1__1_n_0 ),
        .Q(shifter[10]),
        .R(reset_1p25));
  FDRE \shifter_reg[11] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[11]_i_1__1_n_0 ),
        .Q(shifter[11]),
        .R(reset_1p25));
  FDRE \shifter_reg[12] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[12]_i_1__1_n_0 ),
        .Q(shifter[12]),
        .R(reset_1p25));
  FDRE \shifter_reg[13] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[13]_i_1__1_n_0 ),
        .Q(shifter[13]),
        .R(reset_1p25));
  FDRE \shifter_reg[14] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[14]_i_1__1_n_0 ),
        .Q(shifter[14]),
        .R(reset_1p25));
  FDRE \shifter_reg[15] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[15]_i_1__1_n_0 ),
        .Q(shifter[15]),
        .R(reset_1p25));
  FDRE \shifter_reg[16] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[16]_i_1__1_n_0 ),
        .Q(shifter[16]),
        .R(reset_1p25));
  FDRE \shifter_reg[17] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[17]_i_1__1_n_0 ),
        .Q(shifter[17]),
        .R(reset_1p25));
  FDRE \shifter_reg[18] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[18]_i_1__1_n_0 ),
        .Q(shifter[18]),
        .R(reset_1p25));
  FDRE \shifter_reg[19] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[19]_i_1__1_n_0 ),
        .Q(shifter[19]),
        .R(reset_1p25));
  FDRE \shifter_reg[1] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[1]_i_1__1_n_0 ),
        .Q(shifter[1]),
        .R(reset_1p25));
  FDRE \shifter_reg[20] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[20]_i_1__1_n_0 ),
        .Q(shifter[20]),
        .R(reset_1p25));
  FDRE \shifter_reg[21] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[21]_i_1__1_n_0 ),
        .Q(shifter[21]),
        .R(reset_1p25));
  FDRE \shifter_reg[22] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[22]_i_1__1_n_0 ),
        .Q(shifter[22]),
        .R(reset_1p25));
  FDRE \shifter_reg[23] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[23]_i_1__1_n_0 ),
        .Q(shifter[23]),
        .R(reset_1p25));
  FDRE \shifter_reg[24] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[24]_i_1__1_n_0 ),
        .Q(shifter[24]),
        .R(reset_1p25));
  FDRE \shifter_reg[25] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[25]_i_1__1_n_0 ),
        .Q(shifter[25]),
        .R(reset_1p25));
  FDRE \shifter_reg[26] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[26]_i_1__1_n_0 ),
        .Q(shifter[26]),
        .R(reset_1p25));
  FDRE \shifter_reg[27] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[27]_i_1__1_n_0 ),
        .Q(shifter[27]),
        .R(reset_1p25));
  FDRE \shifter_reg[28] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[28]_i_1__1_n_0 ),
        .Q(shifter[28]),
        .R(reset_1p25));
  FDRE \shifter_reg[29] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[29]_i_1__1_n_0 ),
        .Q(shifter[29]),
        .R(reset_1p25));
  FDRE \shifter_reg[2] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[2]_i_1__1_n_0 ),
        .Q(shifter[2]),
        .R(reset_1p25));
  FDRE \shifter_reg[30] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[30]_i_1__1_n_0 ),
        .Q(shifter[30]),
        .R(reset_1p25));
  FDRE \shifter_reg[31] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[31]_i_1__1_n_0 ),
        .Q(shifter[31]),
        .R(reset_1p25));
  FDRE \shifter_reg[3] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[3]_i_1__1_n_0 ),
        .Q(shifter[3]),
        .R(reset_1p25));
  FDRE \shifter_reg[4] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[4]_i_1__1_n_0 ),
        .Q(shifter[4]),
        .R(reset_1p25));
  FDRE \shifter_reg[5] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[5]_i_1__1_n_0 ),
        .Q(shifter[5]),
        .R(reset_1p25));
  FDRE \shifter_reg[6] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[6]_i_1__1_n_0 ),
        .Q(shifter[6]),
        .R(reset_1p25));
  FDRE \shifter_reg[7] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[7]_i_1__1_n_0 ),
        .Q(shifter[7]),
        .R(reset_1p25));
  FDRE \shifter_reg[8] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[8]_i_1__1_n_0 ),
        .Q(shifter[8]),
        .R(reset_1p25));
  FDRE \shifter_reg[9] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[9]_i_1__1_n_0 ),
        .Q(shifter[9]),
        .R(reset_1p25));
endmodule

(* ORIG_REF_NAME = "delay_controller_wrap" *) 
module overlay1_dvi_decoder_v2_0_0_delay_controller_wrap_13
   (blue_debug,
    m_delay_val_in,
    blue_eye,
    Q,
    \dataout_reg[7] ,
    p_12_in,
    CLK,
    reset_1p25,
    D,
    bitslipx1p25_reg);
  output [31:0]blue_debug;
  output [4:0]m_delay_val_in;
  output [31:0]blue_eye;
  output [4:0]Q;
  output [7:0]\dataout_reg[7] ;
  input p_12_in;
  input CLK;
  input reset_1p25;
  input [7:0]D;
  input [7:0]bitslipx1p25_reg;

  wire CLK;
  wire [7:0]D;
  wire [4:0]Q;
  wire [1:0]action;
  wire \action[0]_i_2_n_0 ;
  wire \action[0]_i_3_n_0 ;
  wire \action[1]_i_2_n_0 ;
  wire \action[1]_i_3_n_0 ;
  wire \action_reg_n_0_[0] ;
  wire [7:0]bitslipx1p25_reg;
  wire [31:0]blue_debug;
  wire [31:0]blue_eye;
  wire data_mux;
  wire data_mux_i_1_n_0;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire [7:0]\dataout_reg[7] ;
  wire dec_run_i_1_n_0;
  wire dec_run_i_2_n_0;
  wire dec_run_reg_n_0;
  wire delay_change_i_1_n_0;
  wire delay_change_reg_n_0;
  wire eye_run_i_1_n_0;
  wire eye_run_i_2__0_n_0;
  wire eye_run_reg_n_0;
  wire inc_run_i_1_n_0;
  wire inc_run_i_2_n_0;
  wire inc_run_reg_n_0;
  wire [1:0]m_delay_mux;
  wire \m_delay_mux[0]_i_1_n_0 ;
  wire \m_delay_mux[1]_i_1_n_0 ;
  wire \m_delay_mux[1]_i_2_n_0 ;
  wire [4:0]m_delay_val_in;
  wire \m_delay_val_int[0]_i_1_n_0 ;
  wire \m_delay_val_int[1]_i_1__1_n_0 ;
  wire \m_delay_val_int[2]_i_1_n_0 ;
  wire \m_delay_val_int[2]_i_2_n_0 ;
  wire \m_delay_val_int[3]_i_1_n_0 ;
  wire \m_delay_val_int[3]_i_2__0_n_0 ;
  wire \m_delay_val_int[3]_i_3_n_0 ;
  wire \m_delay_val_int[3]_i_4_n_0 ;
  wire \m_delay_val_int[4]_i_1_n_0 ;
  wire \m_delay_val_int[4]_i_2_n_0 ;
  wire \m_delay_val_int[4]_i_3_n_0 ;
  wire \m_delay_val_int[4]_i_4_n_0 ;
  wire \m_delay_val_int[4]_i_5_n_0 ;
  wire \m_delay_val_int[4]_i_6__1_n_0 ;
  wire \m_delay_val_int[4]_i_7_n_0 ;
  wire \m_delay_val_int[4]_i_8__0_n_0 ;
  wire \m_delay_val_int[4]_i_9__1_n_0 ;
  wire [7:7]match;
  wire \match[0]_i_1_n_0 ;
  wire \match[0]_i_2_n_0 ;
  wire \match[0]_i_3_n_0 ;
  wire \mdataouta_reg_n_0_[0] ;
  wire mdataoutb;
  wire [7:0]mdataoutc;
  wire \mdataoutc[0]_i_1_n_0 ;
  wire \mdataoutc[1]_i_1_n_0 ;
  wire \mdataoutc[2]_i_1_n_0 ;
  wire \mdataoutc[3]_i_1_n_0 ;
  wire \mdataoutc[4]_i_1_n_0 ;
  wire \mdataoutc[5]_i_1_n_0 ;
  wire \mdataoutc[6]_i_1_n_0 ;
  wire \mdataoutc[7]_i_1_n_0 ;
  wire meq_max;
  wire meq_min_i_1_n_0;
  wire meq_min_i_2_n_0;
  wire meq_min_reg_n_0;
  wire \msxor_ctd[0]_i_1_n_0 ;
  wire \msxor_ctd[1]_i_1_n_0 ;
  wire \msxor_ctd[1]_i_2_n_0 ;
  wire \msxor_ctd[1]_i_3_n_0 ;
  wire \msxor_ctd[1]_i_4_n_0 ;
  wire \msxor_ctd[1]_i_5_n_0 ;
  wire \msxor_ctd_reg_n_0_[0] ;
  wire \msxor_ctd_reg_n_0_[1] ;
  wire \msxor_ctdx[0]_i_1_n_0 ;
  wire \msxor_ctdx[1]_i_1_n_0 ;
  wire \msxor_ctdx[1]_i_2_n_0 ;
  wire \msxor_ctdx[1]_i_3_n_0 ;
  wire \msxor_ctdx[1]_i_4_n_0 ;
  wire \msxor_ctdx[1]_i_5_n_0 ;
  wire \msxor_ctdx_reg_n_0_[0] ;
  wire \msxor_ctdx_reg_n_0_[1] ;
  wire \msxor_cti[0]_i_1_n_0 ;
  wire \msxor_cti[1]_i_1_n_0 ;
  wire \msxor_cti[1]_i_2_n_0 ;
  wire \msxor_cti[1]_i_3_n_0 ;
  wire \msxor_cti[1]_i_4_n_0 ;
  wire \msxor_cti[1]_i_5_n_0 ;
  wire \msxor_cti_reg_n_0_[0] ;
  wire \msxor_cti_reg_n_0_[1] ;
  wire \msxor_ctix[0]_i_1_n_0 ;
  wire \msxor_ctix[1]_i_1_n_0 ;
  wire \msxor_ctix[1]_i_2_n_0 ;
  wire \msxor_ctix[1]_i_3_n_0 ;
  wire \msxor_ctix[1]_i_4_n_0 ;
  wire \msxor_ctix[1]_i_5_n_0 ;
  wire \msxor_ctix_reg_n_0_[0] ;
  wire \msxor_ctix_reg_n_0_[1] ;
  wire [4:0]p_0_in;
  wire p_0_in110_in;
  wire p_0_in124_in;
  wire p_0_in138_in;
  wire p_0_in152_in;
  wire p_0_in15_in;
  wire p_0_in166_in;
  wire p_0_in180_in;
  wire [7:1]p_0_in1_in;
  wire p_0_in200_in;
  wire p_0_in28_in;
  wire p_0_in40_in;
  wire p_0_in52_in;
  wire p_0_in64_in;
  wire p_0_in76_in;
  wire p_0_in88_in;
  wire p_0_in97_in;
  wire p_0_in_0;
  wire p_12_in;
  wire [7:1]p_2_in;
  wire \pd_hold[1]_i_1_n_0 ;
  wire \pd_hold[2]_i_1_n_0 ;
  wire \pd_hold[3]_i_1_n_0 ;
  wire \pd_hold[4]_i_1_n_0 ;
  wire \pd_hold[5]_i_1_n_0 ;
  wire \pd_hold[6]_i_1_n_0 ;
  wire \pd_hold[7]_i_1_n_0 ;
  wire \pd_hold[7]_i_2_n_0 ;
  wire pd_max;
  wire pd_max0;
  wire pd_max_i_2_n_0;
  wire pd_min;
  wire pd_min0;
  wire pd_min_i_3_n_0;
  wire pdcount1;
  wire \pdcount[0]_i_1_n_0 ;
  wire \pdcount[1]_i_1_n_0 ;
  wire \pdcount[2]_i_1_n_0 ;
  wire \pdcount[3]_i_1_n_0 ;
  wire \pdcount[4]_i_1_n_0 ;
  wire \pdcount[5]_i_1_n_0 ;
  wire \pdcount[5]_i_2_n_0 ;
  wire \pdcount[5]_i_3_n_0 ;
  wire \pdcount[5]_i_4_n_0 ;
  wire \pdcount[5]_i_5_n_0 ;
  wire [5:0]pdcount_reg__0;
  wire reset_1p25;
  wire [31:0]results;
  wire \results[31]_i_3_n_0 ;
  wire \results[31]_i_4_n_0 ;
  wire \results[31]_i_5_n_0 ;
  wire [1:0]s_delay_mux;
  wire \s_delay_mux[0]_i_1_n_0 ;
  wire \s_delay_mux[1]_i_1_n_0 ;
  wire \s_delay_mux[1]_i_2__0_n_0 ;
  wire s_delay_val_eye;
  wire [4:0]s_delay_val_eye_reg__0;
  wire \s_delay_val_int[0]_i_1_n_0 ;
  wire \s_delay_val_int[1]_i_1_n_0 ;
  wire \s_delay_val_int[2]_i_1_n_0 ;
  wire \s_delay_val_int[3]_i_1_n_0 ;
  wire \s_delay_val_int[3]_i_2_n_0 ;
  wire \s_delay_val_int[4]_i_1_n_0 ;
  wire \s_delay_val_int[4]_i_2_n_0 ;
  wire \s_delay_val_int[4]_i_3_n_0 ;
  wire \s_delay_val_int[4]_i_4_n_0 ;
  wire \s_delay_val_int[4]_i_5_n_0 ;
  wire s_ovflw_i_1_n_0;
  wire s_ovflw_reg_n_0;
  wire [4:0]s_state;
  wire \s_state[0]_i_1_n_0 ;
  wire \s_state[1]_i_1_n_0 ;
  wire \s_state[2]_i_1_n_0 ;
  wire \s_state[2]_i_2_n_0 ;
  wire \s_state[3]_i_1_n_0 ;
  wire \s_state[3]_i_2_n_0 ;
  wire \s_state[3]_i_3_n_0 ;
  wire \s_state[4]_i_1_n_0 ;
  wire \s_state[4]_i_2_n_0 ;
  wire \sdataouta_reg_n_0_[0] ;
  wire sdataoutb;
  wire [7:0]sdataoutc;
  wire \sdataoutc[0]_i_1_n_0 ;
  wire \sdataoutc[1]_i_1_n_0 ;
  wire \sdataoutc[2]_i_1_n_0 ;
  wire \sdataoutc[3]_i_1_n_0 ;
  wire \sdataoutc[4]_i_1_n_0 ;
  wire \sdataoutc[5]_i_1_n_0 ;
  wire \sdataoutc[6]_i_1_n_0 ;
  wire \sdataoutc[7]_i_1_n_0 ;
  wire [31:0]shifter;
  wire \shifter[0]_i_1_n_0 ;
  wire \shifter[10]_i_1_n_0 ;
  wire \shifter[11]_i_1_n_0 ;
  wire \shifter[12]_i_1_n_0 ;
  wire \shifter[13]_i_1_n_0 ;
  wire \shifter[14]_i_1_n_0 ;
  wire \shifter[15]_i_1_n_0 ;
  wire \shifter[16]_i_1_n_0 ;
  wire \shifter[17]_i_1_n_0 ;
  wire \shifter[18]_i_1_n_0 ;
  wire \shifter[19]_i_1_n_0 ;
  wire \shifter[1]_i_1_n_0 ;
  wire \shifter[20]_i_1_n_0 ;
  wire \shifter[21]_i_1_n_0 ;
  wire \shifter[22]_i_1_n_0 ;
  wire \shifter[23]_i_1_n_0 ;
  wire \shifter[24]_i_1_n_0 ;
  wire \shifter[25]_i_1_n_0 ;
  wire \shifter[26]_i_1_n_0 ;
  wire \shifter[27]_i_1_n_0 ;
  wire \shifter[28]_i_1_n_0 ;
  wire \shifter[29]_i_1_n_0 ;
  wire \shifter[2]_i_1_n_0 ;
  wire \shifter[30]_i_1_n_0 ;
  wire \shifter[31]_i_1_n_0 ;
  wire \shifter[3]_i_1_n_0 ;
  wire \shifter[4]_i_1_n_0 ;
  wire \shifter[5]_i_1_n_0 ;
  wire \shifter[6]_i_1_n_0 ;
  wire \shifter[7]_i_1_n_0 ;
  wire \shifter[8]_i_1_n_0 ;
  wire \shifter[9]_i_1_n_0 ;

  LUT6 #(
    .INIT(64'h8EEF088E8EEF0008)) 
    \action[0]_i_1 
       (.I0(\msxor_cti_reg_n_0_[1] ),
        .I1(\msxor_ctix_reg_n_0_[1] ),
        .I2(\msxor_ctd_reg_n_0_[1] ),
        .I3(\msxor_ctdx_reg_n_0_[1] ),
        .I4(\action[0]_i_2_n_0 ),
        .I5(\action[0]_i_3_n_0 ),
        .O(action[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h088E)) 
    \action[0]_i_2 
       (.I0(\msxor_cti_reg_n_0_[0] ),
        .I1(\msxor_ctix_reg_n_0_[0] ),
        .I2(\msxor_ctd_reg_n_0_[0] ),
        .I3(\msxor_ctdx_reg_n_0_[0] ),
        .O(\action[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \action[0]_i_3 
       (.I0(\msxor_ctix_reg_n_0_[0] ),
        .I1(\msxor_cti_reg_n_0_[0] ),
        .I2(\msxor_ctdx_reg_n_0_[0] ),
        .I3(\msxor_ctd_reg_n_0_[0] ),
        .O(\action[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCEEF0CCE0CCE000C)) 
    \action[1]_i_1 
       (.I0(\action[1]_i_2_n_0 ),
        .I1(\action[1]_i_3_n_0 ),
        .I2(\msxor_ctix_reg_n_0_[1] ),
        .I3(\msxor_cti_reg_n_0_[1] ),
        .I4(\msxor_ctdx_reg_n_0_[1] ),
        .I5(\msxor_ctd_reg_n_0_[1] ),
        .O(action[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \action[1]_i_2 
       (.I0(\msxor_ctix_reg_n_0_[0] ),
        .I1(\msxor_cti_reg_n_0_[0] ),
        .I2(\msxor_ctdx_reg_n_0_[0] ),
        .I3(\msxor_ctd_reg_n_0_[0] ),
        .O(\action[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h088E)) 
    \action[1]_i_3 
       (.I0(\msxor_ctd_reg_n_0_[0] ),
        .I1(\msxor_ctdx_reg_n_0_[0] ),
        .I2(\msxor_cti_reg_n_0_[0] ),
        .I3(\msxor_ctix_reg_n_0_[0] ),
        .O(\action[1]_i_3_n_0 ));
  FDRE \action_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(action[0]),
        .Q(\action_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \action_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(action[1]),
        .Q(p_0_in200_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \blue_debug[0]_INST_0 
       (.I0(m_delay_val_in[4]),
        .I1(m_delay_val_in[3]),
        .I2(m_delay_val_in[0]),
        .I3(m_delay_val_in[1]),
        .I4(m_delay_val_in[2]),
        .O(blue_debug[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \blue_debug[10]_INST_0 
       (.I0(m_delay_val_in[0]),
        .I1(m_delay_val_in[1]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[3]),
        .I4(m_delay_val_in[4]),
        .O(blue_debug[10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \blue_debug[11]_INST_0 
       (.I0(m_delay_val_in[0]),
        .I1(m_delay_val_in[1]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[3]),
        .I4(m_delay_val_in[4]),
        .O(blue_debug[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \blue_debug[12]_INST_0 
       (.I0(m_delay_val_in[1]),
        .I1(m_delay_val_in[0]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[4]),
        .I4(m_delay_val_in[3]),
        .O(blue_debug[12]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \blue_debug[13]_INST_0 
       (.I0(m_delay_val_in[1]),
        .I1(m_delay_val_in[0]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[3]),
        .I4(m_delay_val_in[4]),
        .O(blue_debug[13]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \blue_debug[14]_INST_0 
       (.I0(m_delay_val_in[0]),
        .I1(m_delay_val_in[1]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[3]),
        .I4(m_delay_val_in[4]),
        .O(blue_debug[14]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \blue_debug[15]_INST_0 
       (.I0(m_delay_val_in[1]),
        .I1(m_delay_val_in[0]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[4]),
        .I4(m_delay_val_in[3]),
        .O(blue_debug[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \blue_debug[16]_INST_0 
       (.I0(m_delay_val_in[0]),
        .I1(m_delay_val_in[1]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[4]),
        .I4(m_delay_val_in[3]),
        .O(blue_debug[16]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \blue_debug[17]_INST_0 
       (.I0(m_delay_val_in[1]),
        .I1(m_delay_val_in[0]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[4]),
        .I4(m_delay_val_in[3]),
        .O(blue_debug[17]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \blue_debug[18]_INST_0 
       (.I0(m_delay_val_in[0]),
        .I1(m_delay_val_in[1]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[4]),
        .I4(m_delay_val_in[3]),
        .O(blue_debug[18]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \blue_debug[19]_INST_0 
       (.I0(m_delay_val_in[0]),
        .I1(m_delay_val_in[1]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[4]),
        .I4(m_delay_val_in[3]),
        .O(blue_debug[19]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \blue_debug[1]_INST_0 
       (.I0(m_delay_val_in[4]),
        .I1(m_delay_val_in[3]),
        .I2(m_delay_val_in[1]),
        .I3(m_delay_val_in[0]),
        .I4(m_delay_val_in[2]),
        .O(blue_debug[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \blue_debug[20]_INST_0 
       (.I0(m_delay_val_in[0]),
        .I1(m_delay_val_in[1]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[4]),
        .I4(m_delay_val_in[3]),
        .O(blue_debug[20]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \blue_debug[21]_INST_0 
       (.I0(m_delay_val_in[1]),
        .I1(m_delay_val_in[0]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[4]),
        .I4(m_delay_val_in[3]),
        .O(blue_debug[21]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \blue_debug[22]_INST_0 
       (.I0(m_delay_val_in[0]),
        .I1(m_delay_val_in[1]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[4]),
        .I4(m_delay_val_in[3]),
        .O(blue_debug[22]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \blue_debug[23]_INST_0 
       (.I0(m_delay_val_in[2]),
        .I1(m_delay_val_in[0]),
        .I2(m_delay_val_in[1]),
        .I3(m_delay_val_in[4]),
        .I4(m_delay_val_in[3]),
        .O(blue_debug[23]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \blue_debug[24]_INST_0 
       (.I0(m_delay_val_in[4]),
        .I1(m_delay_val_in[3]),
        .I2(m_delay_val_in[0]),
        .I3(m_delay_val_in[1]),
        .I4(m_delay_val_in[2]),
        .O(blue_debug[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \blue_debug[25]_INST_0 
       (.I0(m_delay_val_in[1]),
        .I1(m_delay_val_in[0]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[4]),
        .I4(m_delay_val_in[3]),
        .O(blue_debug[25]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \blue_debug[26]_INST_0 
       (.I0(m_delay_val_in[0]),
        .I1(m_delay_val_in[1]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[4]),
        .I4(m_delay_val_in[3]),
        .O(blue_debug[26]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \blue_debug[27]_INST_0 
       (.I0(m_delay_val_in[0]),
        .I1(m_delay_val_in[1]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[4]),
        .I4(m_delay_val_in[3]),
        .O(blue_debug[27]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \blue_debug[28]_INST_0 
       (.I0(m_delay_val_in[0]),
        .I1(m_delay_val_in[1]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[4]),
        .I4(m_delay_val_in[3]),
        .O(blue_debug[28]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \blue_debug[29]_INST_0 
       (.I0(m_delay_val_in[1]),
        .I1(m_delay_val_in[0]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[4]),
        .I4(m_delay_val_in[3]),
        .O(blue_debug[29]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \blue_debug[2]_INST_0 
       (.I0(m_delay_val_in[4]),
        .I1(m_delay_val_in[3]),
        .I2(m_delay_val_in[0]),
        .I3(m_delay_val_in[1]),
        .I4(m_delay_val_in[2]),
        .O(blue_debug[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \blue_debug[30]_INST_0 
       (.I0(m_delay_val_in[0]),
        .I1(m_delay_val_in[1]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[4]),
        .I4(m_delay_val_in[3]),
        .O(blue_debug[30]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \blue_debug[31]_INST_0 
       (.I0(m_delay_val_in[0]),
        .I1(m_delay_val_in[1]),
        .I2(m_delay_val_in[3]),
        .I3(m_delay_val_in[2]),
        .I4(m_delay_val_in[4]),
        .O(blue_debug[31]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \blue_debug[3]_INST_0 
       (.I0(m_delay_val_in[4]),
        .I1(m_delay_val_in[3]),
        .I2(m_delay_val_in[0]),
        .I3(m_delay_val_in[1]),
        .I4(m_delay_val_in[2]),
        .O(blue_debug[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \blue_debug[4]_INST_0 
       (.I0(m_delay_val_in[4]),
        .I1(m_delay_val_in[3]),
        .I2(m_delay_val_in[0]),
        .I3(m_delay_val_in[1]),
        .I4(m_delay_val_in[2]),
        .O(blue_debug[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \blue_debug[5]_INST_0 
       (.I0(m_delay_val_in[4]),
        .I1(m_delay_val_in[3]),
        .I2(m_delay_val_in[1]),
        .I3(m_delay_val_in[0]),
        .I4(m_delay_val_in[2]),
        .O(blue_debug[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \blue_debug[6]_INST_0 
       (.I0(m_delay_val_in[4]),
        .I1(m_delay_val_in[3]),
        .I2(m_delay_val_in[0]),
        .I3(m_delay_val_in[1]),
        .I4(m_delay_val_in[2]),
        .O(blue_debug[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \blue_debug[7]_INST_0 
       (.I0(m_delay_val_in[4]),
        .I1(m_delay_val_in[3]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[0]),
        .I4(m_delay_val_in[1]),
        .O(blue_debug[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \blue_debug[8]_INST_0 
       (.I0(m_delay_val_in[0]),
        .I1(m_delay_val_in[1]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[3]),
        .I4(m_delay_val_in[4]),
        .O(blue_debug[8]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \blue_debug[9]_INST_0 
       (.I0(m_delay_val_in[1]),
        .I1(m_delay_val_in[0]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[3]),
        .I4(m_delay_val_in[4]),
        .O(blue_debug[9]));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000040)) 
    data_mux_i_1
       (.I0(s_state[3]),
        .I1(s_state[2]),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(\s_state[3]_i_3_n_0 ),
        .I5(data_mux),
        .O(data_mux_i_1_n_0));
  FDRE data_mux_reg
       (.C(CLK),
        .CE(1'b1),
        .D(data_mux_i_1_n_0),
        .Q(data_mux),
        .R(reset_1p25));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[0]_i_1 
       (.I0(sdataoutc[0]),
        .I1(mdataoutc[0]),
        .I2(data_mux),
        .O(\data_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[1]_i_1 
       (.I0(sdataoutc[1]),
        .I1(mdataoutc[1]),
        .I2(data_mux),
        .O(\data_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[2]_i_1 
       (.I0(sdataoutc[2]),
        .I1(mdataoutc[2]),
        .I2(data_mux),
        .O(\data_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[3]_i_1 
       (.I0(sdataoutc[3]),
        .I1(mdataoutc[3]),
        .I2(data_mux),
        .O(\data_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[4]_i_1 
       (.I0(sdataoutc[4]),
        .I1(mdataoutc[4]),
        .I2(data_mux),
        .O(\data_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[5]_i_1 
       (.I0(sdataoutc[5]),
        .I1(mdataoutc[5]),
        .I2(data_mux),
        .O(\data_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[6]_i_1 
       (.I0(sdataoutc[6]),
        .I1(mdataoutc[6]),
        .I2(data_mux),
        .O(\data_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[7]_i_1 
       (.I0(sdataoutc[7]),
        .I1(mdataoutc[7]),
        .I2(data_mux),
        .O(\data_out[7]_i_1_n_0 ));
  FDRE \data_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(\dataout_reg[7] [0]),
        .R(1'b0));
  FDRE \data_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(\dataout_reg[7] [1]),
        .R(1'b0));
  FDRE \data_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(\dataout_reg[7] [2]),
        .R(1'b0));
  FDRE \data_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(\dataout_reg[7] [3]),
        .R(1'b0));
  FDRE \data_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(\dataout_reg[7] [4]),
        .R(1'b0));
  FDRE \data_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(\dataout_reg[7] [5]),
        .R(1'b0));
  FDRE \data_out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(\dataout_reg[7] [6]),
        .R(1'b0));
  FDRE \data_out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(\dataout_reg[7] [7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7FFFFFFF6F770000)) 
    dec_run_i_1
       (.I0(s_state[1]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[0]),
        .I4(dec_run_i_2_n_0),
        .I5(dec_run_reg_n_0),
        .O(dec_run_i_1_n_0));
  LUT6 #(
    .INIT(64'h3033000230330000)) 
    dec_run_i_2
       (.I0(meq_min_reg_n_0),
        .I1(inc_run_reg_n_0),
        .I2(delay_change_reg_n_0),
        .I3(pd_max),
        .I4(dec_run_reg_n_0),
        .I5(pd_min),
        .O(dec_run_i_2_n_0));
  FDRE dec_run_reg
       (.C(CLK),
        .CE(1'b1),
        .D(dec_run_i_1_n_0),
        .Q(dec_run_reg_n_0),
        .R(reset_1p25));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFCCFE)) 
    delay_change_i_1
       (.I0(pd_min),
        .I1(dec_run_reg_n_0),
        .I2(pd_max),
        .I3(delay_change_reg_n_0),
        .I4(inc_run_reg_n_0),
        .O(delay_change_i_1_n_0));
  FDRE delay_change_reg
       (.C(CLK),
        .CE(1'b1),
        .D(delay_change_i_1_n_0),
        .Q(delay_change_reg_n_0),
        .R(reset_1p25));
  LUT6 #(
    .INIT(64'hCACCCAC8CCCCCCCC)) 
    eye_run_i_1
       (.I0(eye_run_i_2__0_n_0),
        .I1(eye_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(pd_min),
        .I5(\m_delay_val_int[4]_i_5_n_0 ),
        .O(eye_run_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    eye_run_i_2__0
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(s_state[4]),
        .O(eye_run_i_2__0_n_0));
  FDRE eye_run_reg
       (.C(CLK),
        .CE(1'b1),
        .D(eye_run_i_1_n_0),
        .Q(eye_run_reg_n_0),
        .R(reset_1p25));
  LUT6 #(
    .INIT(64'hFFFF7FFF00006F77)) 
    inc_run_i_1
       (.I0(s_state[1]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[0]),
        .I4(inc_run_i_2_n_0),
        .I5(inc_run_reg_n_0),
        .O(inc_run_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    inc_run_i_2
       (.I0(pd_max),
        .I1(delay_change_reg_n_0),
        .I2(meq_max),
        .I3(inc_run_reg_n_0),
        .O(inc_run_i_2_n_0));
  FDRE inc_run_reg
       (.C(CLK),
        .CE(1'b1),
        .D(inc_run_i_1_n_0),
        .Q(inc_run_reg_n_0),
        .R(reset_1p25));
  LUT6 #(
    .INIT(64'hFEFFFFFF01000000)) 
    \m_delay_mux[0]_i_1 
       (.I0(\s_state[3]_i_3_n_0 ),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(s_state[0]),
        .I5(m_delay_mux[0]),
        .O(\m_delay_mux[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF6F0090)) 
    \m_delay_mux[1]_i_1 
       (.I0(\m_delay_val_int[4]_i_5_n_0 ),
        .I1(m_delay_mux[0]),
        .I2(\m_delay_mux[1]_i_2_n_0 ),
        .I3(\s_state[3]_i_3_n_0 ),
        .I4(m_delay_mux[1]),
        .O(\m_delay_mux[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_delay_mux[1]_i_2 
       (.I0(s_state[1]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[0]),
        .O(\m_delay_mux[1]_i_2_n_0 ));
  FDSE \m_delay_mux_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\m_delay_mux[0]_i_1_n_0 ),
        .Q(m_delay_mux[0]),
        .S(reset_1p25));
  FDRE \m_delay_mux_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\m_delay_mux[1]_i_1_n_0 ),
        .Q(m_delay_mux[1]),
        .R(reset_1p25));
  LUT6 #(
    .INIT(64'h000F000100000001)) 
    \m_delay_val_int[0]_i_1 
       (.I0(inc_run_reg_n_0),
        .I1(meq_max),
        .I2(m_delay_val_in[0]),
        .I3(reset_1p25),
        .I4(\m_delay_val_int[4]_i_5_n_0 ),
        .I5(\m_delay_val_int[3]_i_4_n_0 ),
        .O(\m_delay_val_int[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4141140000001400)) 
    \m_delay_val_int[1]_i_1__1 
       (.I0(reset_1p25),
        .I1(m_delay_val_in[0]),
        .I2(m_delay_val_in[1]),
        .I3(\m_delay_val_int[4]_i_7_n_0 ),
        .I4(\m_delay_val_int[4]_i_5_n_0 ),
        .I5(\m_delay_val_int[3]_i_4_n_0 ),
        .O(\m_delay_val_int[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFACA)) 
    \m_delay_val_int[2]_i_1 
       (.I0(m_delay_val_in[2]),
        .I1(\m_delay_val_int[2]_i_2_n_0 ),
        .I2(\m_delay_val_int[4]_i_1_n_0 ),
        .I3(reset_1p25),
        .O(\m_delay_val_int[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8B83030000088)) 
    \m_delay_val_int[2]_i_2 
       (.I0(\m_delay_val_int[3]_i_4_n_0 ),
        .I1(\m_delay_val_int[4]_i_5_n_0 ),
        .I2(\m_delay_val_int[4]_i_7_n_0 ),
        .I3(m_delay_val_in[0]),
        .I4(m_delay_val_in[1]),
        .I5(m_delay_val_in[2]),
        .O(\m_delay_val_int[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5101015151515151)) 
    \m_delay_val_int[3]_i_1 
       (.I0(reset_1p25),
        .I1(\m_delay_val_int[3]_i_2__0_n_0 ),
        .I2(\m_delay_val_int[4]_i_5_n_0 ),
        .I3(m_delay_val_in[3]),
        .I4(\m_delay_val_int[3]_i_3_n_0 ),
        .I5(\m_delay_val_int[3]_i_4_n_0 ),
        .O(\m_delay_val_int[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF807F)) 
    \m_delay_val_int[3]_i_2__0 
       (.I0(m_delay_val_in[1]),
        .I1(m_delay_val_in[0]),
        .I2(m_delay_val_in[2]),
        .I3(m_delay_val_in[3]),
        .I4(meq_max),
        .I5(inc_run_reg_n_0),
        .O(\m_delay_val_int[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \m_delay_val_int[3]_i_3 
       (.I0(m_delay_val_in[2]),
        .I1(m_delay_val_in[1]),
        .I2(m_delay_val_in[0]),
        .O(\m_delay_val_int[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_delay_val_int[3]_i_4 
       (.I0(dec_run_reg_n_0),
        .I1(meq_min_reg_n_0),
        .O(\m_delay_val_int[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF01FF01FF55FFFF)) 
    \m_delay_val_int[4]_i_1 
       (.I0(\m_delay_val_int[4]_i_3_n_0 ),
        .I1(meq_min_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(\m_delay_val_int[4]_i_4_n_0 ),
        .I4(\m_delay_val_int[4]_i_5_n_0 ),
        .I5(\m_delay_val_int[4]_i_6__1_n_0 ),
        .O(\m_delay_val_int[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000044055550440)) 
    \m_delay_val_int[4]_i_2 
       (.I0(reset_1p25),
        .I1(\m_delay_val_int[4]_i_7_n_0 ),
        .I2(m_delay_val_in[4]),
        .I3(\m_delay_val_int[4]_i_8__0_n_0 ),
        .I4(\m_delay_val_int[4]_i_5_n_0 ),
        .I5(\m_delay_val_int[4]_i_9__1_n_0 ),
        .O(\m_delay_val_int[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFF33F1)) 
    \m_delay_val_int[4]_i_3 
       (.I0(pd_min),
        .I1(dec_run_reg_n_0),
        .I2(pd_max),
        .I3(delay_change_reg_n_0),
        .I4(inc_run_reg_n_0),
        .O(\m_delay_val_int[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \m_delay_val_int[4]_i_4 
       (.I0(reset_1p25),
        .I1(inc_run_reg_n_0),
        .I2(meq_max),
        .I3(pd_max),
        .I4(delay_change_reg_n_0),
        .O(\m_delay_val_int[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \m_delay_val_int[4]_i_5 
       (.I0(inc_run_reg_n_0),
        .I1(delay_change_reg_n_0),
        .I2(pd_max),
        .O(\m_delay_val_int[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \m_delay_val_int[4]_i_6__1 
       (.I0(s_state[3]),
        .I1(s_state[2]),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .O(\m_delay_val_int[4]_i_6__1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_delay_val_int[4]_i_7 
       (.I0(inc_run_reg_n_0),
        .I1(meq_max),
        .O(\m_delay_val_int[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_delay_val_int[4]_i_8__0 
       (.I0(m_delay_val_in[2]),
        .I1(m_delay_val_in[3]),
        .I2(m_delay_val_in[1]),
        .I3(m_delay_val_in[0]),
        .O(\m_delay_val_int[4]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFEFFFFFFFF)) 
    \m_delay_val_int[4]_i_9__1 
       (.I0(m_delay_val_in[3]),
        .I1(m_delay_val_in[0]),
        .I2(m_delay_val_in[1]),
        .I3(m_delay_val_in[2]),
        .I4(m_delay_val_in[4]),
        .I5(\m_delay_val_int[3]_i_4_n_0 ),
        .O(\m_delay_val_int[4]_i_9__1_n_0 ));
  FDRE \m_delay_val_int_reg[0] 
       (.C(CLK),
        .CE(\m_delay_val_int[4]_i_1_n_0 ),
        .D(\m_delay_val_int[0]_i_1_n_0 ),
        .Q(m_delay_val_in[0]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[1] 
       (.C(CLK),
        .CE(\m_delay_val_int[4]_i_1_n_0 ),
        .D(\m_delay_val_int[1]_i_1__1_n_0 ),
        .Q(m_delay_val_in[1]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\m_delay_val_int[2]_i_1_n_0 ),
        .Q(m_delay_val_in[2]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[3] 
       (.C(CLK),
        .CE(\m_delay_val_int[4]_i_1_n_0 ),
        .D(\m_delay_val_int[3]_i_1_n_0 ),
        .Q(m_delay_val_in[3]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[4] 
       (.C(CLK),
        .CE(\m_delay_val_int[4]_i_1_n_0 ),
        .D(\m_delay_val_int[4]_i_2_n_0 ),
        .Q(m_delay_val_in[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \match[0]_i_1 
       (.I0(p_0_in166_in),
        .I1(p_0_in76_in),
        .I2(p_0_in180_in),
        .I3(p_0_in88_in),
        .I4(\match[0]_i_2_n_0 ),
        .I5(\match[0]_i_3_n_0 ),
        .O(\match[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \match[0]_i_2 
       (.I0(\sdataouta_reg_n_0_[0] ),
        .I1(\mdataouta_reg_n_0_[0] ),
        .I2(p_0_in110_in),
        .I3(p_0_in28_in),
        .I4(p_0_in97_in),
        .I5(p_0_in15_in),
        .O(\match[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \match[0]_i_3 
       (.I0(p_0_in40_in),
        .I1(p_0_in124_in),
        .I2(p_0_in152_in),
        .I3(p_0_in64_in),
        .I4(p_0_in138_in),
        .I5(p_0_in52_in),
        .O(\match[0]_i_3_n_0 ));
  FDRE \match_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\match[0]_i_1_n_0 ),
        .Q(p_2_in[1]),
        .R(1'b0));
  FDRE \match_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[1]),
        .Q(p_2_in[2]),
        .R(1'b0));
  FDRE \match_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[2]),
        .Q(p_2_in[3]),
        .R(1'b0));
  FDRE \match_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[3]),
        .Q(p_2_in[4]),
        .R(1'b0));
  FDRE \match_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[4]),
        .Q(p_2_in[5]),
        .R(1'b0));
  FDRE \match_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[5]),
        .Q(p_2_in[6]),
        .R(1'b0));
  FDRE \match_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[6]),
        .Q(p_2_in[7]),
        .R(1'b0));
  FDRE \match_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[7]),
        .Q(match),
        .R(1'b0));
  FDRE \mdataouta_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[0]),
        .Q(\mdataouta_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mdataouta_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[1]),
        .Q(p_0_in97_in),
        .R(1'b0));
  FDRE \mdataouta_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[2]),
        .Q(p_0_in110_in),
        .R(1'b0));
  FDRE \mdataouta_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[3]),
        .Q(p_0_in124_in),
        .R(1'b0));
  FDRE \mdataouta_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[4]),
        .Q(p_0_in138_in),
        .R(1'b0));
  FDRE \mdataouta_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[5]),
        .Q(p_0_in152_in),
        .R(1'b0));
  FDRE \mdataouta_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[6]),
        .Q(p_0_in166_in),
        .R(1'b0));
  FDRE \mdataouta_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[7]),
        .Q(p_0_in180_in),
        .R(1'b0));
  FDRE mdataoutb_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in180_in),
        .Q(mdataoutb),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[0]_i_1 
       (.I0(\mdataouta_reg_n_0_[0] ),
        .I1(m_delay_mux[0]),
        .I2(p_0_in97_in),
        .I3(m_delay_mux[1]),
        .I4(mdataoutb),
        .O(\mdataoutc[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[1]_i_1 
       (.I0(p_0_in97_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in110_in),
        .I3(m_delay_mux[1]),
        .I4(\mdataouta_reg_n_0_[0] ),
        .O(\mdataoutc[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[2]_i_1 
       (.I0(p_0_in110_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in124_in),
        .I3(m_delay_mux[1]),
        .I4(p_0_in97_in),
        .O(\mdataoutc[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[3]_i_1 
       (.I0(p_0_in124_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in138_in),
        .I3(m_delay_mux[1]),
        .I4(p_0_in110_in),
        .O(\mdataoutc[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[4]_i_1 
       (.I0(p_0_in138_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in152_in),
        .I3(m_delay_mux[1]),
        .I4(p_0_in124_in),
        .O(\mdataoutc[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[5]_i_1 
       (.I0(p_0_in152_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in166_in),
        .I3(m_delay_mux[1]),
        .I4(p_0_in138_in),
        .O(\mdataoutc[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[6]_i_1 
       (.I0(p_0_in166_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in180_in),
        .I3(m_delay_mux[1]),
        .I4(p_0_in152_in),
        .O(\mdataoutc[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[7]_i_1 
       (.I0(p_0_in180_in),
        .I1(m_delay_mux[0]),
        .I2(bitslipx1p25_reg[0]),
        .I3(m_delay_mux[1]),
        .I4(p_0_in166_in),
        .O(\mdataoutc[7]_i_1_n_0 ));
  FDRE \mdataoutc_reg[0] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\mdataoutc[0]_i_1_n_0 ),
        .Q(mdataoutc[0]),
        .R(1'b0));
  FDRE \mdataoutc_reg[1] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\mdataoutc[1]_i_1_n_0 ),
        .Q(mdataoutc[1]),
        .R(1'b0));
  FDRE \mdataoutc_reg[2] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\mdataoutc[2]_i_1_n_0 ),
        .Q(mdataoutc[2]),
        .R(1'b0));
  FDRE \mdataoutc_reg[3] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\mdataoutc[3]_i_1_n_0 ),
        .Q(mdataoutc[3]),
        .R(1'b0));
  FDRE \mdataoutc_reg[4] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\mdataoutc[4]_i_1_n_0 ),
        .Q(mdataoutc[4]),
        .R(1'b0));
  FDRE \mdataoutc_reg[5] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\mdataoutc[5]_i_1_n_0 ),
        .Q(mdataoutc[5]),
        .R(1'b0));
  FDRE \mdataoutc_reg[6] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\mdataoutc[6]_i_1_n_0 ),
        .Q(mdataoutc[6]),
        .R(1'b0));
  FDRE \mdataoutc_reg[7] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\mdataoutc[7]_i_1_n_0 ),
        .Q(mdataoutc[7]),
        .R(1'b0));
  FDRE meq_max_reg
       (.C(CLK),
        .CE(p_12_in),
        .D(blue_debug[8]),
        .Q(meq_max),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88888888888888B8)) 
    meq_min_i_1
       (.I0(meq_min_reg_n_0),
        .I1(reset_1p25),
        .I2(meq_min_i_2_n_0),
        .I3(m_delay_val_in[0]),
        .I4(m_delay_val_in[1]),
        .I5(m_delay_val_in[2]),
        .O(meq_min_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    meq_min_i_2
       (.I0(m_delay_val_in[3]),
        .I1(m_delay_val_in[4]),
        .O(meq_min_i_2_n_0));
  FDRE meq_min_reg
       (.C(CLK),
        .CE(1'b1),
        .D(meq_min_i_1_n_0),
        .Q(meq_min_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6B96)) 
    \msxor_ctd[0]_i_1 
       (.I0(\msxor_ctd[1]_i_2_n_0 ),
        .I1(\msxor_ctd[1]_i_3_n_0 ),
        .I2(\msxor_ctd[1]_i_4_n_0 ),
        .I3(\msxor_ctd[1]_i_5_n_0 ),
        .O(\msxor_ctd[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hBF2B)) 
    \msxor_ctd[1]_i_1 
       (.I0(\msxor_ctd[1]_i_2_n_0 ),
        .I1(\msxor_ctd[1]_i_3_n_0 ),
        .I2(\msxor_ctd[1]_i_4_n_0 ),
        .I3(\msxor_ctd[1]_i_5_n_0 ),
        .O(\msxor_ctd[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_ctd[1]_i_2 
       (.I0(p_0_in28_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in15_in),
        .I3(p_0_in110_in),
        .I4(p_0_in97_in),
        .O(\msxor_ctd[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_ctd[1]_i_3 
       (.I0(p_0_in40_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in28_in),
        .I3(p_0_in124_in),
        .I4(p_0_in110_in),
        .O(\msxor_ctd[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFB847FF)) 
    \msxor_ctd[1]_i_4 
       (.I0(p_0_in15_in),
        .I1(s_ovflw_reg_n_0),
        .I2(\sdataouta_reg_n_0_[0] ),
        .I3(\mdataouta_reg_n_0_[0] ),
        .I4(p_0_in97_in),
        .O(\msxor_ctd[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h0047B800)) 
    \msxor_ctd[1]_i_5 
       (.I0(\sdataouta_reg_n_0_[0] ),
        .I1(s_ovflw_reg_n_0),
        .I2(sdataoutb),
        .I3(mdataoutb),
        .I4(\mdataouta_reg_n_0_[0] ),
        .O(\msxor_ctd[1]_i_5_n_0 ));
  FDRE \msxor_ctd_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctd[0]_i_1_n_0 ),
        .Q(\msxor_ctd_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \msxor_ctd_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctd[1]_i_1_n_0 ),
        .Q(\msxor_ctd_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h69D6)) 
    \msxor_ctdx[0]_i_1 
       (.I0(\msxor_ctdx[1]_i_5_n_0 ),
        .I1(\msxor_ctdx[1]_i_4_n_0 ),
        .I2(\msxor_ctdx[1]_i_2_n_0 ),
        .I3(\msxor_ctdx[1]_i_3_n_0 ),
        .O(\msxor_ctdx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hB2FB)) 
    \msxor_ctdx[1]_i_1 
       (.I0(\msxor_ctdx[1]_i_2_n_0 ),
        .I1(\msxor_ctdx[1]_i_3_n_0 ),
        .I2(\msxor_ctdx[1]_i_4_n_0 ),
        .I3(\msxor_ctdx[1]_i_5_n_0 ),
        .O(\msxor_ctdx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h0047B800)) 
    \msxor_ctdx[1]_i_2 
       (.I0(p_0_in64_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in52_in),
        .I3(p_0_in138_in),
        .I4(p_0_in152_in),
        .O(\msxor_ctdx[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_ctdx[1]_i_3 
       (.I0(p_0_in52_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in40_in),
        .I3(p_0_in138_in),
        .I4(p_0_in124_in),
        .O(\msxor_ctdx[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_ctdx[1]_i_4 
       (.I0(p_0_in88_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in76_in),
        .I3(p_0_in180_in),
        .I4(p_0_in166_in),
        .O(\msxor_ctdx[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_ctdx[1]_i_5 
       (.I0(p_0_in76_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in64_in),
        .I3(p_0_in166_in),
        .I4(p_0_in152_in),
        .O(\msxor_ctdx[1]_i_5_n_0 ));
  FDRE \msxor_ctdx_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctdx[0]_i_1_n_0 ),
        .Q(\msxor_ctdx_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \msxor_ctdx_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctdx[1]_i_1_n_0 ),
        .Q(\msxor_ctdx_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h6B96)) 
    \msxor_cti[0]_i_1 
       (.I0(\msxor_cti[1]_i_2_n_0 ),
        .I1(\msxor_cti[1]_i_3_n_0 ),
        .I2(\msxor_cti[1]_i_4_n_0 ),
        .I3(\msxor_cti[1]_i_5_n_0 ),
        .O(\msxor_cti[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hBF2B)) 
    \msxor_cti[1]_i_1 
       (.I0(\msxor_cti[1]_i_2_n_0 ),
        .I1(\msxor_cti[1]_i_3_n_0 ),
        .I2(\msxor_cti[1]_i_4_n_0 ),
        .I3(\msxor_cti[1]_i_5_n_0 ),
        .O(\msxor_cti[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_cti[1]_i_2 
       (.I0(p_0_in28_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in15_in),
        .I3(p_0_in97_in),
        .I4(p_0_in110_in),
        .O(\msxor_cti[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_cti[1]_i_3 
       (.I0(p_0_in40_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in28_in),
        .I3(p_0_in110_in),
        .I4(p_0_in124_in),
        .O(\msxor_cti[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFB847FF)) 
    \msxor_cti[1]_i_4 
       (.I0(p_0_in15_in),
        .I1(s_ovflw_reg_n_0),
        .I2(\sdataouta_reg_n_0_[0] ),
        .I3(p_0_in97_in),
        .I4(\mdataouta_reg_n_0_[0] ),
        .O(\msxor_cti[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_cti[1]_i_5 
       (.I0(\sdataouta_reg_n_0_[0] ),
        .I1(s_ovflw_reg_n_0),
        .I2(sdataoutb),
        .I3(mdataoutb),
        .I4(\mdataouta_reg_n_0_[0] ),
        .O(\msxor_cti[1]_i_5_n_0 ));
  FDRE \msxor_cti_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_cti[0]_i_1_n_0 ),
        .Q(\msxor_cti_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \msxor_cti_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_cti[1]_i_1_n_0 ),
        .Q(\msxor_cti_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h69D6)) 
    \msxor_ctix[0]_i_1 
       (.I0(\msxor_ctix[1]_i_5_n_0 ),
        .I1(\msxor_ctix[1]_i_4_n_0 ),
        .I2(\msxor_ctix[1]_i_2_n_0 ),
        .I3(\msxor_ctix[1]_i_3_n_0 ),
        .O(\msxor_ctix[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hB2FB)) 
    \msxor_ctix[1]_i_1 
       (.I0(\msxor_ctix[1]_i_2_n_0 ),
        .I1(\msxor_ctix[1]_i_3_n_0 ),
        .I2(\msxor_ctix[1]_i_4_n_0 ),
        .I3(\msxor_ctix[1]_i_5_n_0 ),
        .O(\msxor_ctix[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_ctix[1]_i_2 
       (.I0(p_0_in64_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in52_in),
        .I3(p_0_in138_in),
        .I4(p_0_in152_in),
        .O(\msxor_ctix[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_ctix[1]_i_3 
       (.I0(p_0_in52_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in40_in),
        .I3(p_0_in124_in),
        .I4(p_0_in138_in),
        .O(\msxor_ctix[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h0047B800)) 
    \msxor_ctix[1]_i_4 
       (.I0(p_0_in88_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in76_in),
        .I3(p_0_in180_in),
        .I4(p_0_in166_in),
        .O(\msxor_ctix[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_ctix[1]_i_5 
       (.I0(p_0_in76_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in64_in),
        .I3(p_0_in152_in),
        .I4(p_0_in166_in),
        .O(\msxor_ctix[1]_i_5_n_0 ));
  FDRE \msxor_ctix_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctix[0]_i_1_n_0 ),
        .Q(\msxor_ctix_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \msxor_ctix_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctix[1]_i_1_n_0 ),
        .Q(\msxor_ctix_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pd_hold[0]_i_1 
       (.I0(eye_run_reg_n_0),
        .I1(delay_change_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(inc_run_reg_n_0),
        .O(pdcount1));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[1]_i_1 
       (.I0(p_0_in1_in[1]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[2]_i_1 
       (.I0(p_0_in1_in[2]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[3]_i_1 
       (.I0(p_0_in1_in[3]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[4]_i_1 
       (.I0(p_0_in1_in[4]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[5]_i_1 
       (.I0(p_0_in1_in[5]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[6]_i_1 
       (.I0(p_0_in1_in[6]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[7]_i_1 
       (.I0(p_0_in_0),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[7]_i_2 
       (.I0(p_0_in1_in[7]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[7]_i_2_n_0 ));
  FDRE \pd_hold_reg[0] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1_n_0 ),
        .D(pdcount1),
        .Q(p_0_in1_in[1]),
        .R(reset_1p25));
  FDRE \pd_hold_reg[1] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1_n_0 ),
        .D(\pd_hold[1]_i_1_n_0 ),
        .Q(p_0_in1_in[2]),
        .R(reset_1p25));
  FDRE \pd_hold_reg[2] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1_n_0 ),
        .D(\pd_hold[2]_i_1_n_0 ),
        .Q(p_0_in1_in[3]),
        .R(reset_1p25));
  FDRE \pd_hold_reg[3] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1_n_0 ),
        .D(\pd_hold[3]_i_1_n_0 ),
        .Q(p_0_in1_in[4]),
        .R(reset_1p25));
  FDRE \pd_hold_reg[4] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1_n_0 ),
        .D(\pd_hold[4]_i_1_n_0 ),
        .Q(p_0_in1_in[5]),
        .R(reset_1p25));
  FDRE \pd_hold_reg[5] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1_n_0 ),
        .D(\pd_hold[5]_i_1_n_0 ),
        .Q(p_0_in1_in[6]),
        .R(reset_1p25));
  FDRE \pd_hold_reg[6] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1_n_0 ),
        .D(\pd_hold[6]_i_1_n_0 ),
        .Q(p_0_in1_in[7]),
        .R(reset_1p25));
  FDRE \pd_hold_reg[7] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1_n_0 ),
        .D(\pd_hold[7]_i_2_n_0 ),
        .Q(p_0_in_0),
        .R(reset_1p25));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h02)) 
    pd_max_i_1
       (.I0(pd_max_i_2_n_0),
        .I1(pd_max),
        .I2(delay_change_reg_n_0),
        .O(pd_max0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    pd_max_i_2
       (.I0(pdcount_reg__0[0]),
        .I1(pdcount_reg__0[1]),
        .I2(pdcount_reg__0[2]),
        .I3(pdcount_reg__0[3]),
        .I4(pdcount_reg__0[4]),
        .I5(pdcount_reg__0[5]),
        .O(pd_max_i_2_n_0));
  FDRE pd_max_reg
       (.C(CLK),
        .CE(p_12_in),
        .D(pd_max0),
        .Q(pd_max),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h02)) 
    pd_min_i_2
       (.I0(pd_min_i_3_n_0),
        .I1(pd_min),
        .I2(delay_change_reg_n_0),
        .O(pd_min0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    pd_min_i_3
       (.I0(pdcount_reg__0[4]),
        .I1(pdcount_reg__0[5]),
        .I2(pdcount_reg__0[2]),
        .I3(pdcount_reg__0[3]),
        .I4(pdcount_reg__0[0]),
        .I5(pdcount_reg__0[1]),
        .O(pd_min_i_3_n_0));
  FDRE pd_min_reg
       (.C(CLK),
        .CE(p_12_in),
        .D(pd_min0),
        .Q(pd_min),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pdcount[0]_i_1 
       (.I0(pdcount_reg__0[0]),
        .O(\pdcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hD22D)) 
    \pdcount[1]_i_1 
       (.I0(\action_reg_n_0_[0] ),
        .I1(pd_max_i_2_n_0),
        .I2(pdcount_reg__0[0]),
        .I3(pdcount_reg__0[1]),
        .O(\pdcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hAAA96AA9)) 
    \pdcount[2]_i_1 
       (.I0(pdcount_reg__0[2]),
        .I1(pdcount_reg__0[0]),
        .I2(pdcount_reg__0[1]),
        .I3(\action_reg_n_0_[0] ),
        .I4(pd_max_i_2_n_0),
        .O(\pdcount[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF4000FFFC0003)) 
    \pdcount[3]_i_1 
       (.I0(pd_max_i_2_n_0),
        .I1(\action_reg_n_0_[0] ),
        .I2(pdcount_reg__0[1]),
        .I3(pdcount_reg__0[0]),
        .I4(pdcount_reg__0[3]),
        .I5(pdcount_reg__0[2]),
        .O(\pdcount[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h66656666)) 
    \pdcount[4]_i_1 
       (.I0(pdcount_reg__0[4]),
        .I1(\pdcount[5]_i_4_n_0 ),
        .I2(pdcount_reg__0[3]),
        .I3(pdcount_reg__0[2]),
        .I4(\pdcount[5]_i_5_n_0 ),
        .O(\pdcount[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pdcount[5]_i_1 
       (.I0(inc_run_reg_n_0),
        .I1(dec_run_reg_n_0),
        .I2(delay_change_reg_n_0),
        .I3(eye_run_reg_n_0),
        .I4(p_0_in_0),
        .I5(reset_1p25),
        .O(\pdcount[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22F2)) 
    \pdcount[5]_i_2 
       (.I0(p_0_in200_in),
        .I1(pd_min_i_3_n_0),
        .I2(\action_reg_n_0_[0] ),
        .I3(pd_max_i_2_n_0),
        .O(\pdcount[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6A6A6A996A6A6A6A)) 
    \pdcount[5]_i_3 
       (.I0(pdcount_reg__0[5]),
        .I1(pdcount_reg__0[4]),
        .I2(\pdcount[5]_i_4_n_0 ),
        .I3(pdcount_reg__0[3]),
        .I4(pdcount_reg__0[2]),
        .I5(\pdcount[5]_i_5_n_0 ),
        .O(\pdcount[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \pdcount[5]_i_4 
       (.I0(pdcount_reg__0[3]),
        .I1(pdcount_reg__0[2]),
        .I2(pd_max_i_2_n_0),
        .I3(\action_reg_n_0_[0] ),
        .I4(pdcount_reg__0[1]),
        .I5(pdcount_reg__0[0]),
        .O(\pdcount[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \pdcount[5]_i_5 
       (.I0(\action_reg_n_0_[0] ),
        .I1(pdcount_reg__0[0]),
        .I2(pdcount_reg__0[1]),
        .O(\pdcount[5]_i_5_n_0 ));
  FDRE \pdcount_reg[0] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2_n_0 ),
        .D(\pdcount[0]_i_1_n_0 ),
        .Q(pdcount_reg__0[0]),
        .R(\pdcount[5]_i_1_n_0 ));
  FDRE \pdcount_reg[1] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2_n_0 ),
        .D(\pdcount[1]_i_1_n_0 ),
        .Q(pdcount_reg__0[1]),
        .R(\pdcount[5]_i_1_n_0 ));
  FDRE \pdcount_reg[2] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2_n_0 ),
        .D(\pdcount[2]_i_1_n_0 ),
        .Q(pdcount_reg__0[2]),
        .R(\pdcount[5]_i_1_n_0 ));
  FDRE \pdcount_reg[3] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2_n_0 ),
        .D(\pdcount[3]_i_1_n_0 ),
        .Q(pdcount_reg__0[3]),
        .R(\pdcount[5]_i_1_n_0 ));
  FDRE \pdcount_reg[4] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2_n_0 ),
        .D(\pdcount[4]_i_1_n_0 ),
        .Q(pdcount_reg__0[4]),
        .R(\pdcount[5]_i_1_n_0 ));
  FDSE \pdcount_reg[5] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2_n_0 ),
        .D(\pdcount[5]_i_3_n_0 ),
        .Q(pdcount_reg__0[5]),
        .S(\pdcount[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[0]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[0]),
        .I2(blue_eye[0]),
        .O(results[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[10]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[10]),
        .I2(blue_eye[10]),
        .O(results[10]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[11]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[11]),
        .I2(blue_eye[11]),
        .O(results[11]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[12]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[12]),
        .I2(blue_eye[12]),
        .O(results[12]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[13]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[13]),
        .I2(blue_eye[13]),
        .O(results[13]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[14]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[14]),
        .I2(blue_eye[14]),
        .O(results[14]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[15]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[15]),
        .I2(blue_eye[15]),
        .O(results[15]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[16]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[16]),
        .I2(blue_eye[16]),
        .O(results[16]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[17]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[17]),
        .I2(blue_eye[17]),
        .O(results[17]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[18]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[18]),
        .I2(blue_eye[18]),
        .O(results[18]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[19]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[19]),
        .I2(blue_eye[19]),
        .O(results[19]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[1]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[1]),
        .I2(blue_eye[1]),
        .O(results[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[20]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[20]),
        .I2(blue_eye[20]),
        .O(results[20]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[21]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[21]),
        .I2(blue_eye[21]),
        .O(results[21]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[22]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[22]),
        .I2(blue_eye[22]),
        .O(results[22]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[23]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[23]),
        .I2(blue_eye[23]),
        .O(results[23]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[24]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[24]),
        .I2(blue_eye[24]),
        .O(results[24]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[25]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[25]),
        .I2(blue_eye[25]),
        .O(results[25]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[26]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[26]),
        .I2(blue_eye[26]),
        .O(results[26]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[27]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[27]),
        .I2(blue_eye[27]),
        .O(results[27]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[28]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[28]),
        .I2(blue_eye[28]),
        .O(results[28]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[29]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[29]),
        .I2(blue_eye[29]),
        .O(results[29]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[2]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[2]),
        .I2(blue_eye[2]),
        .O(results[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[30]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[30]),
        .I2(blue_eye[30]),
        .O(results[30]));
  LUT3 #(
    .INIT(8'hA8)) 
    \results[31]_i_1 
       (.I0(\results[31]_i_3_n_0 ),
        .I1(eye_run_reg_n_0),
        .I2(delay_change_reg_n_0),
        .O(s_delay_val_eye));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[31]_i_2 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[31]),
        .I2(blue_eye[31]),
        .O(results[31]));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \results[31]_i_3 
       (.I0(\s_state[2]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(s_state[3]),
        .I3(s_state[2]),
        .I4(s_state[1]),
        .I5(s_state[0]),
        .O(\results[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \results[31]_i_4 
       (.I0(p_2_in[3]),
        .I1(p_2_in[1]),
        .I2(p_2_in[6]),
        .I3(p_2_in[5]),
        .I4(\results[31]_i_5_n_0 ),
        .O(\results[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \results[31]_i_5 
       (.I0(p_2_in[7]),
        .I1(match),
        .I2(p_2_in[4]),
        .I3(p_2_in[2]),
        .O(\results[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[3]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[3]),
        .I2(blue_eye[3]),
        .O(results[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[4]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[4]),
        .I2(blue_eye[4]),
        .O(results[4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[5]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[5]),
        .I2(blue_eye[5]),
        .O(results[5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[6]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[6]),
        .I2(blue_eye[6]),
        .O(results[6]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[7]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[7]),
        .I2(blue_eye[7]),
        .O(results[7]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[8]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[8]),
        .I2(blue_eye[8]),
        .O(results[8]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[9]_i_1 
       (.I0(\results[31]_i_4_n_0 ),
        .I1(shifter[9]),
        .I2(blue_eye[9]),
        .O(results[9]));
  FDRE \results_reg[0] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[0]),
        .Q(blue_eye[0]),
        .R(reset_1p25));
  FDRE \results_reg[10] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[10]),
        .Q(blue_eye[10]),
        .R(reset_1p25));
  FDRE \results_reg[11] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[11]),
        .Q(blue_eye[11]),
        .R(reset_1p25));
  FDRE \results_reg[12] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[12]),
        .Q(blue_eye[12]),
        .R(reset_1p25));
  FDRE \results_reg[13] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[13]),
        .Q(blue_eye[13]),
        .R(reset_1p25));
  FDRE \results_reg[14] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[14]),
        .Q(blue_eye[14]),
        .R(reset_1p25));
  FDRE \results_reg[15] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[15]),
        .Q(blue_eye[15]),
        .R(reset_1p25));
  FDRE \results_reg[16] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[16]),
        .Q(blue_eye[16]),
        .R(reset_1p25));
  FDRE \results_reg[17] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[17]),
        .Q(blue_eye[17]),
        .R(reset_1p25));
  FDRE \results_reg[18] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[18]),
        .Q(blue_eye[18]),
        .R(reset_1p25));
  FDRE \results_reg[19] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[19]),
        .Q(blue_eye[19]),
        .R(reset_1p25));
  FDRE \results_reg[1] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[1]),
        .Q(blue_eye[1]),
        .R(reset_1p25));
  FDRE \results_reg[20] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[20]),
        .Q(blue_eye[20]),
        .R(reset_1p25));
  FDRE \results_reg[21] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[21]),
        .Q(blue_eye[21]),
        .R(reset_1p25));
  FDRE \results_reg[22] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[22]),
        .Q(blue_eye[22]),
        .R(reset_1p25));
  FDRE \results_reg[23] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[23]),
        .Q(blue_eye[23]),
        .R(reset_1p25));
  FDRE \results_reg[24] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[24]),
        .Q(blue_eye[24]),
        .R(reset_1p25));
  FDRE \results_reg[25] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[25]),
        .Q(blue_eye[25]),
        .R(reset_1p25));
  FDRE \results_reg[26] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[26]),
        .Q(blue_eye[26]),
        .R(reset_1p25));
  FDRE \results_reg[27] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[27]),
        .Q(blue_eye[27]),
        .R(reset_1p25));
  FDRE \results_reg[28] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[28]),
        .Q(blue_eye[28]),
        .R(reset_1p25));
  FDRE \results_reg[29] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[29]),
        .Q(blue_eye[29]),
        .R(reset_1p25));
  FDRE \results_reg[2] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[2]),
        .Q(blue_eye[2]),
        .R(reset_1p25));
  FDRE \results_reg[30] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[30]),
        .Q(blue_eye[30]),
        .R(reset_1p25));
  FDRE \results_reg[31] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[31]),
        .Q(blue_eye[31]),
        .R(reset_1p25));
  FDRE \results_reg[3] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[3]),
        .Q(blue_eye[3]),
        .R(reset_1p25));
  FDRE \results_reg[4] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[4]),
        .Q(blue_eye[4]),
        .R(reset_1p25));
  FDRE \results_reg[5] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[5]),
        .Q(blue_eye[5]),
        .R(reset_1p25));
  FDRE \results_reg[6] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[6]),
        .Q(blue_eye[6]),
        .R(reset_1p25));
  FDRE \results_reg[7] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[7]),
        .Q(blue_eye[7]),
        .R(reset_1p25));
  FDRE \results_reg[8] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[8]),
        .Q(blue_eye[8]),
        .R(reset_1p25));
  FDRE \results_reg[9] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[9]),
        .Q(blue_eye[9]),
        .R(reset_1p25));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \s_delay_mux[0]_i_1 
       (.I0(m_delay_mux[0]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\s_delay_mux[1]_i_2__0_n_0 ),
        .I4(\s_state[3]_i_3_n_0 ),
        .I5(s_delay_mux[0]),
        .O(\s_delay_mux[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \s_delay_mux[1]_i_1 
       (.I0(m_delay_mux[1]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\s_delay_mux[1]_i_2__0_n_0 ),
        .I4(\s_state[3]_i_3_n_0 ),
        .I5(s_delay_mux[1]),
        .O(\s_delay_mux[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_delay_mux[1]_i_2__0 
       (.I0(s_state[2]),
        .I1(s_state[1]),
        .O(\s_delay_mux[1]_i_2__0_n_0 ));
  FDSE \s_delay_mux_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_delay_mux[0]_i_1_n_0 ),
        .Q(s_delay_mux[0]),
        .S(reset_1p25));
  FDRE \s_delay_mux_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_delay_mux[1]_i_1_n_0 ),
        .Q(s_delay_mux[1]),
        .R(reset_1p25));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00FF00EF)) 
    \s_delay_val_eye[0]_i_1 
       (.I0(s_delay_val_eye_reg__0[4]),
        .I1(s_delay_val_eye_reg__0[2]),
        .I2(s_delay_val_eye_reg__0[3]),
        .I3(s_delay_val_eye_reg__0[0]),
        .I4(s_delay_val_eye_reg__0[1]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \s_delay_val_eye[1]_i_1 
       (.I0(s_delay_val_eye_reg__0[0]),
        .I1(s_delay_val_eye_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \s_delay_val_eye[2]_i_1 
       (.I0(s_delay_val_eye_reg__0[2]),
        .I1(s_delay_val_eye_reg__0[1]),
        .I2(s_delay_val_eye_reg__0[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h3FFEC000)) 
    \s_delay_val_eye[3]_i_1 
       (.I0(s_delay_val_eye_reg__0[4]),
        .I1(s_delay_val_eye_reg__0[2]),
        .I2(s_delay_val_eye_reg__0[1]),
        .I3(s_delay_val_eye_reg__0[0]),
        .I4(s_delay_val_eye_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \s_delay_val_eye[4]_i_1 
       (.I0(s_delay_val_eye_reg__0[4]),
        .I1(s_delay_val_eye_reg__0[3]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[1]),
        .I4(s_delay_val_eye_reg__0[0]),
        .O(p_0_in[4]));
  FDRE \s_delay_val_eye_reg[0] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(p_0_in[0]),
        .Q(s_delay_val_eye_reg__0[0]),
        .R(reset_1p25));
  FDRE \s_delay_val_eye_reg[1] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(p_0_in[1]),
        .Q(s_delay_val_eye_reg__0[1]),
        .R(reset_1p25));
  FDRE \s_delay_val_eye_reg[2] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(p_0_in[2]),
        .Q(s_delay_val_eye_reg__0[2]),
        .R(reset_1p25));
  FDRE \s_delay_val_eye_reg[3] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(p_0_in[3]),
        .Q(s_delay_val_eye_reg__0[3]),
        .R(reset_1p25));
  FDRE \s_delay_val_eye_reg[4] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(p_0_in[4]),
        .Q(s_delay_val_eye_reg__0[4]),
        .R(reset_1p25));
  LUT6 #(
    .INIT(64'h1010101110101000)) 
    \s_delay_val_int[0]_i_1 
       (.I0(\s_state[2]_i_2_n_0 ),
        .I1(reset_1p25),
        .I2(s_delay_val_eye_reg__0[0]),
        .I3(eye_run_reg_n_0),
        .I4(delay_change_reg_n_0),
        .I5(m_delay_val_in[0]),
        .O(\s_delay_val_int[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1010101110101000)) 
    \s_delay_val_int[1]_i_1 
       (.I0(\s_state[2]_i_2_n_0 ),
        .I1(reset_1p25),
        .I2(s_delay_val_eye_reg__0[1]),
        .I3(eye_run_reg_n_0),
        .I4(delay_change_reg_n_0),
        .I5(m_delay_val_in[1]),
        .O(\s_delay_val_int[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22202223)) 
    \s_delay_val_int[2]_i_1 
       (.I0(s_delay_val_eye_reg__0[2]),
        .I1(\s_state[2]_i_2_n_0 ),
        .I2(delay_change_reg_n_0),
        .I3(eye_run_reg_n_0),
        .I4(m_delay_val_in[2]),
        .I5(reset_1p25),
        .O(\s_delay_val_int[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000A2FFFF)) 
    \s_delay_val_int[3]_i_1 
       (.I0(\s_delay_val_int[3]_i_2_n_0 ),
        .I1(pd_min),
        .I2(delay_change_reg_n_0),
        .I3(dec_run_reg_n_0),
        .I4(\m_delay_val_int[4]_i_5_n_0 ),
        .I5(reset_1p25),
        .O(\s_delay_val_int[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFF60006)) 
    \s_delay_val_int[3]_i_2 
       (.I0(m_delay_val_in[3]),
        .I1(m_delay_val_in[2]),
        .I2(delay_change_reg_n_0),
        .I3(eye_run_reg_n_0),
        .I4(s_delay_val_eye_reg__0[3]),
        .O(\s_delay_val_int[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5050FF70)) 
    \s_delay_val_int[4]_i_1 
       (.I0(\s_state[3]_i_3_n_0 ),
        .I1(s_state[4]),
        .I2(\s_delay_val_int[4]_i_3_n_0 ),
        .I3(\s_delay_val_int[4]_i_4_n_0 ),
        .I4(\s_state[2]_i_2_n_0 ),
        .I5(reset_1p25),
        .O(\s_delay_val_int[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08A8A8A8A8080808)) 
    \s_delay_val_int[4]_i_2 
       (.I0(\s_delay_val_int[4]_i_5_n_0 ),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(\s_delay_val_int[4]_i_4_n_0 ),
        .I3(m_delay_val_in[3]),
        .I4(m_delay_val_in[2]),
        .I5(m_delay_val_in[4]),
        .O(\s_delay_val_int[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \s_delay_val_int[4]_i_3 
       (.I0(s_state[0]),
        .I1(s_state[2]),
        .I2(s_state[1]),
        .I3(s_state[3]),
        .O(\s_delay_val_int[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_delay_val_int[4]_i_4 
       (.I0(delay_change_reg_n_0),
        .I1(eye_run_reg_n_0),
        .O(\s_delay_val_int[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000101000001011)) 
    \s_delay_val_int[4]_i_5 
       (.I0(reset_1p25),
        .I1(dec_run_reg_n_0),
        .I2(delay_change_reg_n_0),
        .I3(pd_min),
        .I4(inc_run_reg_n_0),
        .I5(pd_max),
        .O(\s_delay_val_int[4]_i_5_n_0 ));
  FDRE \s_delay_val_int_reg[0] 
       (.C(CLK),
        .CE(\s_delay_val_int[4]_i_1_n_0 ),
        .D(\s_delay_val_int[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \s_delay_val_int_reg[1] 
       (.C(CLK),
        .CE(\s_delay_val_int[4]_i_1_n_0 ),
        .D(\s_delay_val_int[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \s_delay_val_int_reg[2] 
       (.C(CLK),
        .CE(\s_delay_val_int[4]_i_1_n_0 ),
        .D(\s_delay_val_int[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \s_delay_val_int_reg[3] 
       (.C(CLK),
        .CE(\s_delay_val_int[4]_i_1_n_0 ),
        .D(\s_delay_val_int[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \s_delay_val_int_reg[4] 
       (.C(CLK),
        .CE(\s_delay_val_int[4]_i_1_n_0 ),
        .D(\s_delay_val_int[4]_i_2_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000002)) 
    s_ovflw_i_1
       (.I0(\m_delay_val_int[4]_i_5_n_0 ),
        .I1(pd_min),
        .I2(delay_change_reg_n_0),
        .I3(dec_run_reg_n_0),
        .I4(eye_run_reg_n_0),
        .I5(s_ovflw_reg_n_0),
        .O(s_ovflw_i_1_n_0));
  FDRE s_ovflw_reg
       (.C(CLK),
        .CE(1'b1),
        .D(s_ovflw_i_1_n_0),
        .Q(s_ovflw_reg_n_0),
        .R(reset_1p25));
  LUT6 #(
    .INIT(64'h5555555555155555)) 
    \s_state[0]_i_1 
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(s_state[4]),
        .I5(\s_state[2]_i_2_n_0 ),
        .O(\s_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666266666)) 
    \s_state[1]_i_1 
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(s_state[4]),
        .I5(\s_state[2]_i_2_n_0 ),
        .O(\s_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7878787878387878)) 
    \s_state[2]_i_1 
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(s_state[4]),
        .I5(\s_state[2]_i_2_n_0 ),
        .O(\s_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFCCFE)) 
    \s_state[2]_i_2 
       (.I0(pd_max),
        .I1(inc_run_reg_n_0),
        .I2(pd_min),
        .I3(delay_change_reg_n_0),
        .I4(dec_run_reg_n_0),
        .O(\s_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A200A0FFFFFFFF)) 
    \s_state[3]_i_1 
       (.I0(\m_delay_val_int[4]_i_5_n_0 ),
        .I1(pd_min),
        .I2(delay_change_reg_n_0),
        .I3(dec_run_reg_n_0),
        .I4(eye_run_reg_n_0),
        .I5(\s_state[3]_i_3_n_0 ),
        .O(\s_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \s_state[3]_i_2 
       (.I0(s_state[3]),
        .I1(s_state[1]),
        .I2(s_state[0]),
        .I3(s_state[2]),
        .O(\s_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F3AAAA00FFAAAA)) 
    \s_state[3]_i_3 
       (.I0(\m_delay_val_int[4]_i_7_n_0 ),
        .I1(pd_min),
        .I2(delay_change_reg_n_0),
        .I3(dec_run_reg_n_0),
        .I4(\m_delay_val_int[4]_i_5_n_0 ),
        .I5(meq_min_reg_n_0),
        .O(\s_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FF7FFFF80000000)) 
    \s_state[4]_i_1 
       (.I0(s_state[1]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[0]),
        .I4(\s_state[4]_i_2_n_0 ),
        .I5(s_state[4]),
        .O(\s_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000303000003032)) 
    \s_state[4]_i_2 
       (.I0(eye_run_reg_n_0),
        .I1(dec_run_reg_n_0),
        .I2(delay_change_reg_n_0),
        .I3(pd_min),
        .I4(inc_run_reg_n_0),
        .I5(pd_max),
        .O(\s_state[4]_i_2_n_0 ));
  FDRE \s_state_reg[0] 
       (.C(CLK),
        .CE(\s_state[3]_i_1_n_0 ),
        .D(\s_state[0]_i_1_n_0 ),
        .Q(s_state[0]),
        .R(reset_1p25));
  FDRE \s_state_reg[1] 
       (.C(CLK),
        .CE(\s_state[3]_i_1_n_0 ),
        .D(\s_state[1]_i_1_n_0 ),
        .Q(s_state[1]),
        .R(reset_1p25));
  FDRE \s_state_reg[2] 
       (.C(CLK),
        .CE(\s_state[3]_i_1_n_0 ),
        .D(\s_state[2]_i_1_n_0 ),
        .Q(s_state[2]),
        .R(reset_1p25));
  FDRE \s_state_reg[3] 
       (.C(CLK),
        .CE(\s_state[3]_i_1_n_0 ),
        .D(\s_state[3]_i_2_n_0 ),
        .Q(s_state[3]),
        .R(reset_1p25));
  FDRE \s_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_state[4]_i_1_n_0 ),
        .Q(s_state[4]),
        .R(reset_1p25));
  FDRE \sdataouta_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(\sdataouta_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \sdataouta_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(p_0_in15_in),
        .R(1'b0));
  FDRE \sdataouta_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(p_0_in28_in),
        .R(1'b0));
  FDRE \sdataouta_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(p_0_in40_in),
        .R(1'b0));
  FDRE \sdataouta_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(p_0_in52_in),
        .R(1'b0));
  FDRE \sdataouta_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(p_0_in64_in),
        .R(1'b0));
  FDRE \sdataouta_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(p_0_in76_in),
        .R(1'b0));
  FDRE \sdataouta_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(p_0_in88_in),
        .R(1'b0));
  FDRE sdataoutb_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in88_in),
        .Q(sdataoutb),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[0]_i_1 
       (.I0(\sdataouta_reg_n_0_[0] ),
        .I1(s_delay_mux[0]),
        .I2(p_0_in15_in),
        .I3(s_delay_mux[1]),
        .I4(sdataoutb),
        .O(\sdataoutc[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[1]_i_1 
       (.I0(p_0_in15_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in28_in),
        .I3(s_delay_mux[1]),
        .I4(\sdataouta_reg_n_0_[0] ),
        .O(\sdataoutc[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[2]_i_1 
       (.I0(p_0_in28_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in40_in),
        .I3(s_delay_mux[1]),
        .I4(p_0_in15_in),
        .O(\sdataoutc[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[3]_i_1 
       (.I0(p_0_in40_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in52_in),
        .I3(s_delay_mux[1]),
        .I4(p_0_in28_in),
        .O(\sdataoutc[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[4]_i_1 
       (.I0(p_0_in52_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in64_in),
        .I3(s_delay_mux[1]),
        .I4(p_0_in40_in),
        .O(\sdataoutc[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[5]_i_1 
       (.I0(p_0_in64_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in76_in),
        .I3(s_delay_mux[1]),
        .I4(p_0_in52_in),
        .O(\sdataoutc[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[6]_i_1 
       (.I0(p_0_in76_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in88_in),
        .I3(s_delay_mux[1]),
        .I4(p_0_in64_in),
        .O(\sdataoutc[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[7]_i_1 
       (.I0(p_0_in88_in),
        .I1(s_delay_mux[0]),
        .I2(D[0]),
        .I3(s_delay_mux[1]),
        .I4(p_0_in76_in),
        .O(\sdataoutc[7]_i_1_n_0 ));
  FDRE \sdataoutc_reg[0] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\sdataoutc[0]_i_1_n_0 ),
        .Q(sdataoutc[0]),
        .R(1'b0));
  FDRE \sdataoutc_reg[1] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\sdataoutc[1]_i_1_n_0 ),
        .Q(sdataoutc[1]),
        .R(1'b0));
  FDRE \sdataoutc_reg[2] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\sdataoutc[2]_i_1_n_0 ),
        .Q(sdataoutc[2]),
        .R(1'b0));
  FDRE \sdataoutc_reg[3] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\sdataoutc[3]_i_1_n_0 ),
        .Q(sdataoutc[3]),
        .R(1'b0));
  FDRE \sdataoutc_reg[4] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\sdataoutc[4]_i_1_n_0 ),
        .Q(sdataoutc[4]),
        .R(1'b0));
  FDRE \sdataoutc_reg[5] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\sdataoutc[5]_i_1_n_0 ),
        .Q(sdataoutc[5]),
        .R(1'b0));
  FDRE \sdataoutc_reg[6] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\sdataoutc[6]_i_1_n_0 ),
        .Q(sdataoutc[6]),
        .R(1'b0));
  FDRE \sdataoutc_reg[7] 
       (.C(CLK),
        .CE(p_12_in),
        .D(\sdataoutc[7]_i_1_n_0 ),
        .Q(sdataoutc[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \shifter[0]_i_1 
       (.I0(shifter[31]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[10]_i_1 
       (.I0(shifter[9]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[11]_i_1 
       (.I0(shifter[10]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[12]_i_1 
       (.I0(shifter[11]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[13]_i_1 
       (.I0(shifter[12]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[14]_i_1 
       (.I0(shifter[13]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[15]_i_1 
       (.I0(shifter[14]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[16]_i_1 
       (.I0(shifter[15]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[17]_i_1 
       (.I0(shifter[16]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[18]_i_1 
       (.I0(shifter[17]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[19]_i_1 
       (.I0(shifter[18]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[1]_i_1 
       (.I0(shifter[0]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[20]_i_1 
       (.I0(shifter[19]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[21]_i_1 
       (.I0(shifter[20]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[22]_i_1 
       (.I0(shifter[21]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[23]_i_1 
       (.I0(shifter[22]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[24]_i_1 
       (.I0(shifter[23]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[25]_i_1 
       (.I0(shifter[24]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[26]_i_1 
       (.I0(shifter[25]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[27]_i_1 
       (.I0(shifter[26]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[28]_i_1 
       (.I0(shifter[27]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[29]_i_1 
       (.I0(shifter[28]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[2]_i_1 
       (.I0(shifter[1]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[30]_i_1 
       (.I0(shifter[29]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[31]_i_1 
       (.I0(shifter[30]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[3]_i_1 
       (.I0(shifter[2]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[4]_i_1 
       (.I0(shifter[3]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[5]_i_1 
       (.I0(shifter[4]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[6]_i_1 
       (.I0(shifter[5]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[7]_i_1 
       (.I0(shifter[6]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[8]_i_1 
       (.I0(shifter[7]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[9]_i_1 
       (.I0(shifter[8]),
        .I1(s_delay_val_eye_reg__0[4]),
        .I2(s_delay_val_eye_reg__0[2]),
        .I3(s_delay_val_eye_reg__0[3]),
        .I4(s_delay_val_eye_reg__0[0]),
        .I5(s_delay_val_eye_reg__0[1]),
        .O(\shifter[9]_i_1_n_0 ));
  FDSE \shifter_reg[0] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[0]_i_1_n_0 ),
        .Q(shifter[0]),
        .S(reset_1p25));
  FDRE \shifter_reg[10] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[10]_i_1_n_0 ),
        .Q(shifter[10]),
        .R(reset_1p25));
  FDRE \shifter_reg[11] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[11]_i_1_n_0 ),
        .Q(shifter[11]),
        .R(reset_1p25));
  FDRE \shifter_reg[12] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[12]_i_1_n_0 ),
        .Q(shifter[12]),
        .R(reset_1p25));
  FDRE \shifter_reg[13] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[13]_i_1_n_0 ),
        .Q(shifter[13]),
        .R(reset_1p25));
  FDRE \shifter_reg[14] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[14]_i_1_n_0 ),
        .Q(shifter[14]),
        .R(reset_1p25));
  FDRE \shifter_reg[15] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[15]_i_1_n_0 ),
        .Q(shifter[15]),
        .R(reset_1p25));
  FDRE \shifter_reg[16] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[16]_i_1_n_0 ),
        .Q(shifter[16]),
        .R(reset_1p25));
  FDRE \shifter_reg[17] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[17]_i_1_n_0 ),
        .Q(shifter[17]),
        .R(reset_1p25));
  FDRE \shifter_reg[18] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[18]_i_1_n_0 ),
        .Q(shifter[18]),
        .R(reset_1p25));
  FDRE \shifter_reg[19] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[19]_i_1_n_0 ),
        .Q(shifter[19]),
        .R(reset_1p25));
  FDRE \shifter_reg[1] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[1]_i_1_n_0 ),
        .Q(shifter[1]),
        .R(reset_1p25));
  FDRE \shifter_reg[20] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[20]_i_1_n_0 ),
        .Q(shifter[20]),
        .R(reset_1p25));
  FDRE \shifter_reg[21] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[21]_i_1_n_0 ),
        .Q(shifter[21]),
        .R(reset_1p25));
  FDRE \shifter_reg[22] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[22]_i_1_n_0 ),
        .Q(shifter[22]),
        .R(reset_1p25));
  FDRE \shifter_reg[23] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[23]_i_1_n_0 ),
        .Q(shifter[23]),
        .R(reset_1p25));
  FDRE \shifter_reg[24] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[24]_i_1_n_0 ),
        .Q(shifter[24]),
        .R(reset_1p25));
  FDRE \shifter_reg[25] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[25]_i_1_n_0 ),
        .Q(shifter[25]),
        .R(reset_1p25));
  FDRE \shifter_reg[26] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[26]_i_1_n_0 ),
        .Q(shifter[26]),
        .R(reset_1p25));
  FDRE \shifter_reg[27] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[27]_i_1_n_0 ),
        .Q(shifter[27]),
        .R(reset_1p25));
  FDRE \shifter_reg[28] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[28]_i_1_n_0 ),
        .Q(shifter[28]),
        .R(reset_1p25));
  FDRE \shifter_reg[29] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[29]_i_1_n_0 ),
        .Q(shifter[29]),
        .R(reset_1p25));
  FDRE \shifter_reg[2] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[2]_i_1_n_0 ),
        .Q(shifter[2]),
        .R(reset_1p25));
  FDRE \shifter_reg[30] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[30]_i_1_n_0 ),
        .Q(shifter[30]),
        .R(reset_1p25));
  FDRE \shifter_reg[31] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[31]_i_1_n_0 ),
        .Q(shifter[31]),
        .R(reset_1p25));
  FDRE \shifter_reg[3] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[3]_i_1_n_0 ),
        .Q(shifter[3]),
        .R(reset_1p25));
  FDRE \shifter_reg[4] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[4]_i_1_n_0 ),
        .Q(shifter[4]),
        .R(reset_1p25));
  FDRE \shifter_reg[5] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[5]_i_1_n_0 ),
        .Q(shifter[5]),
        .R(reset_1p25));
  FDRE \shifter_reg[6] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[6]_i_1_n_0 ),
        .Q(shifter[6]),
        .R(reset_1p25));
  FDRE \shifter_reg[7] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[7]_i_1_n_0 ),
        .Q(shifter[7]),
        .R(reset_1p25));
  FDRE \shifter_reg[8] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[8]_i_1_n_0 ),
        .Q(shifter[8]),
        .R(reset_1p25));
  FDRE \shifter_reg[9] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[9]_i_1_n_0 ),
        .Q(shifter[9]),
        .R(reset_1p25));
endmodule

(* ORIG_REF_NAME = "delay_controller_wrap" *) 
module overlay1_dvi_decoder_v2_0_0_delay_controller_wrap_7
   (E,
    green_debug,
    Q,
    green_eye,
    \sdataouta_reg[7]_0 ,
    \dataout_reg[7] ,
    CLK,
    reset_1p25_reg,
    D,
    bitslipx1p25_reg);
  output [0:0]E;
  output [31:0]green_debug;
  output [4:0]Q;
  output [31:0]green_eye;
  output [4:0]\sdataouta_reg[7]_0 ;
  output [7:0]\dataout_reg[7] ;
  input CLK;
  input reset_1p25_reg;
  input [7:0]D;
  input [7:0]bitslipx1p25_reg;

  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [1:0]action;
  wire \action[0]_i_2__0_n_0 ;
  wire \action[0]_i_3__0_n_0 ;
  wire \action[1]_i_2__0_n_0 ;
  wire \action[1]_i_3__0_n_0 ;
  wire \action_reg_n_0_[0] ;
  wire [7:0]bitslipx1p25_reg;
  wire data_mux;
  wire data_mux_i_1__0_n_0;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire [7:0]\dataout_reg[7] ;
  wire dec_run_i_1__0_n_0;
  wire dec_run_i_2__0_n_0;
  wire dec_run_reg_n_0;
  wire delay_change_i_1__0_n_0;
  wire delay_change_reg_n_0;
  wire eye_run_i_1__0_n_0;
  wire eye_run_i_2_n_0;
  wire eye_run_reg_n_0;
  wire [31:0]green_debug;
  wire [31:0]green_eye;
  wire inc_run_i_1__0_n_0;
  wire inc_run_i_2__0_n_0;
  wire inc_run_reg_n_0;
  wire [1:0]m_delay_mux;
  wire \m_delay_mux[0]_i_1__0_n_0 ;
  wire \m_delay_mux[1]_i_1__0_n_0 ;
  wire \m_delay_mux[1]_i_2__0_n_0 ;
  wire \m_delay_val_int[0]_i_1__0_n_0 ;
  wire \m_delay_val_int[1]_i_1_n_0 ;
  wire \m_delay_val_int[2]_i_1_n_0 ;
  wire \m_delay_val_int[2]_i_2__0_n_0 ;
  wire \m_delay_val_int[3]_i_1__0_n_0 ;
  wire \m_delay_val_int[3]_i_2_n_0 ;
  wire \m_delay_val_int[3]_i_3__0_n_0 ;
  wire \m_delay_val_int[4]_i_10__0_n_0 ;
  wire \m_delay_val_int[4]_i_1__0_n_0 ;
  wire \m_delay_val_int[4]_i_2__0_n_0 ;
  wire \m_delay_val_int[4]_i_3__0_n_0 ;
  wire \m_delay_val_int[4]_i_4__0_n_0 ;
  wire \m_delay_val_int[4]_i_5__0_n_0 ;
  wire \m_delay_val_int[4]_i_6_n_0 ;
  wire \m_delay_val_int[4]_i_7__0_n_0 ;
  wire \m_delay_val_int[4]_i_8__1_n_0 ;
  wire \m_delay_val_int[4]_i_9__0_n_0 ;
  wire [7:7]match;
  wire \match[0]_i_1__0_n_0 ;
  wire \match[0]_i_2__0_n_0 ;
  wire \match[0]_i_3__0_n_0 ;
  wire \mdataouta_reg_n_0_[0] ;
  wire mdataoutb;
  wire [7:0]mdataoutc;
  wire \mdataoutc[0]_i_1__0_n_0 ;
  wire \mdataoutc[1]_i_1__0_n_0 ;
  wire \mdataoutc[2]_i_1__0_n_0 ;
  wire \mdataoutc[3]_i_1__0_n_0 ;
  wire \mdataoutc[4]_i_1__0_n_0 ;
  wire \mdataoutc[5]_i_1__0_n_0 ;
  wire \mdataoutc[6]_i_1__0_n_0 ;
  wire \mdataoutc[7]_i_1__0_n_0 ;
  wire meq_max;
  wire meq_min_i_1__0_n_0;
  wire meq_min_i_2__0_n_0;
  wire meq_min_reg_n_0;
  wire \msxor_ctd[0]_i_1__0_n_0 ;
  wire \msxor_ctd[1]_i_1__0_n_0 ;
  wire \msxor_ctd[1]_i_2__0_n_0 ;
  wire \msxor_ctd[1]_i_3__0_n_0 ;
  wire \msxor_ctd[1]_i_4__0_n_0 ;
  wire \msxor_ctd[1]_i_5__0_n_0 ;
  wire \msxor_ctd_reg_n_0_[0] ;
  wire \msxor_ctd_reg_n_0_[1] ;
  wire \msxor_ctdx[0]_i_1__0_n_0 ;
  wire \msxor_ctdx[1]_i_1__0_n_0 ;
  wire \msxor_ctdx[1]_i_2__0_n_0 ;
  wire \msxor_ctdx[1]_i_3__0_n_0 ;
  wire \msxor_ctdx[1]_i_4__0_n_0 ;
  wire \msxor_ctdx[1]_i_5__0_n_0 ;
  wire \msxor_ctdx_reg_n_0_[0] ;
  wire \msxor_ctdx_reg_n_0_[1] ;
  wire \msxor_cti[0]_i_1__0_n_0 ;
  wire \msxor_cti[1]_i_1__0_n_0 ;
  wire \msxor_cti[1]_i_2__0_n_0 ;
  wire \msxor_cti[1]_i_3__0_n_0 ;
  wire \msxor_cti[1]_i_4__0_n_0 ;
  wire \msxor_cti[1]_i_5__0_n_0 ;
  wire \msxor_cti_reg_n_0_[0] ;
  wire \msxor_cti_reg_n_0_[1] ;
  wire \msxor_ctix[0]_i_1__0_n_0 ;
  wire \msxor_ctix[1]_i_1__0_n_0 ;
  wire \msxor_ctix[1]_i_2__0_n_0 ;
  wire \msxor_ctix[1]_i_3__0_n_0 ;
  wire \msxor_ctix[1]_i_4__0_n_0 ;
  wire \msxor_ctix[1]_i_5__0_n_0 ;
  wire \msxor_ctix_reg_n_0_[0] ;
  wire \msxor_ctix_reg_n_0_[1] ;
  wire p_0_in;
  wire p_0_in110_in;
  wire p_0_in124_in;
  wire p_0_in138_in;
  wire p_0_in152_in;
  wire p_0_in15_in;
  wire p_0_in166_in;
  wire p_0_in180_in;
  wire [7:1]p_0_in1_in;
  wire p_0_in200_in;
  wire p_0_in28_in;
  wire p_0_in40_in;
  wire p_0_in52_in;
  wire p_0_in64_in;
  wire p_0_in76_in;
  wire p_0_in88_in;
  wire p_0_in97_in;
  wire [4:0]p_0_in__0;
  wire [7:1]p_2_in;
  wire \pd_hold[1]_i_1__0_n_0 ;
  wire \pd_hold[2]_i_1__0_n_0 ;
  wire \pd_hold[3]_i_1__0_n_0 ;
  wire \pd_hold[4]_i_1__0_n_0 ;
  wire \pd_hold[5]_i_1__0_n_0 ;
  wire \pd_hold[6]_i_1__0_n_0 ;
  wire \pd_hold[7]_i_1__0_n_0 ;
  wire \pd_hold[7]_i_2__0_n_0 ;
  wire pd_max;
  wire pd_max0;
  wire pd_max_i_2__0_n_0;
  wire pd_min;
  wire pd_min0;
  wire pd_min_i_2__0_n_0;
  wire pdcount1;
  wire \pdcount[0]_i_1__0_n_0 ;
  wire \pdcount[1]_i_1__0_n_0 ;
  wire \pdcount[2]_i_1__0_n_0 ;
  wire \pdcount[3]_i_1__0_n_0 ;
  wire \pdcount[4]_i_1__0_n_0 ;
  wire \pdcount[5]_i_1__0_n_0 ;
  wire \pdcount[5]_i_2__0_n_0 ;
  wire \pdcount[5]_i_3__0_n_0 ;
  wire \pdcount[5]_i_4__0_n_0 ;
  wire \pdcount[5]_i_5__0_n_0 ;
  wire [5:0]pdcount_reg;
  wire reset_1p25_reg;
  wire [31:0]results;
  wire \results[31]_i_3__0_n_0 ;
  wire \results[31]_i_4__0_n_0 ;
  wire \results[31]_i_5__0_n_0 ;
  wire [1:0]s_delay_mux;
  wire \s_delay_mux[0]_i_1__0_n_0 ;
  wire \s_delay_mux[1]_i_1__0_n_0 ;
  wire \s_delay_mux[1]_i_2_n_0 ;
  wire s_delay_val_eye;
  wire [4:0]s_delay_val_eye_reg;
  wire \s_delay_val_int[0]_i_1__0_n_0 ;
  wire \s_delay_val_int[1]_i_1__0_n_0 ;
  wire \s_delay_val_int[2]_i_1__0_n_0 ;
  wire \s_delay_val_int[3]_i_1__0_n_0 ;
  wire \s_delay_val_int[3]_i_2__0_n_0 ;
  wire \s_delay_val_int[4]_i_1__0_n_0 ;
  wire \s_delay_val_int[4]_i_2__0_n_0 ;
  wire \s_delay_val_int[4]_i_3__0_n_0 ;
  wire \s_delay_val_int[4]_i_4__0_n_0 ;
  wire \s_delay_val_int[4]_i_5__0_n_0 ;
  wire s_ovflw_i_1__0_n_0;
  wire s_ovflw_reg_n_0;
  wire [4:0]s_state;
  wire \s_state[0]_i_1__0_n_0 ;
  wire \s_state[1]_i_1__0_n_0 ;
  wire \s_state[2]_i_1__0_n_0 ;
  wire \s_state[2]_i_2__0_n_0 ;
  wire \s_state[3]_i_1__0_n_0 ;
  wire \s_state[3]_i_2__0_n_0 ;
  wire \s_state[3]_i_3__0_n_0 ;
  wire \s_state[4]_i_1__0_n_0 ;
  wire \s_state[4]_i_2__0_n_0 ;
  wire [4:0]\sdataouta_reg[7]_0 ;
  wire \sdataouta_reg_n_0_[0] ;
  wire sdataoutb;
  wire [7:0]sdataoutc;
  wire \sdataoutc[0]_i_1__0_n_0 ;
  wire \sdataoutc[1]_i_1__0_n_0 ;
  wire \sdataoutc[2]_i_1__0_n_0 ;
  wire \sdataoutc[3]_i_1__0_n_0 ;
  wire \sdataoutc[4]_i_1__0_n_0 ;
  wire \sdataoutc[5]_i_1__0_n_0 ;
  wire \sdataoutc[6]_i_1__0_n_0 ;
  wire \sdataoutc[7]_i_1__0_n_0 ;
  wire [31:0]shifter;
  wire \shifter[0]_i_1__0_n_0 ;
  wire \shifter[10]_i_1__0_n_0 ;
  wire \shifter[11]_i_1__0_n_0 ;
  wire \shifter[12]_i_1__0_n_0 ;
  wire \shifter[13]_i_1__0_n_0 ;
  wire \shifter[14]_i_1__0_n_0 ;
  wire \shifter[15]_i_1__0_n_0 ;
  wire \shifter[16]_i_1__0_n_0 ;
  wire \shifter[17]_i_1__0_n_0 ;
  wire \shifter[18]_i_1__0_n_0 ;
  wire \shifter[19]_i_1__0_n_0 ;
  wire \shifter[1]_i_1__0_n_0 ;
  wire \shifter[20]_i_1__0_n_0 ;
  wire \shifter[21]_i_1__0_n_0 ;
  wire \shifter[22]_i_1__0_n_0 ;
  wire \shifter[23]_i_1__0_n_0 ;
  wire \shifter[24]_i_1__0_n_0 ;
  wire \shifter[25]_i_1__0_n_0 ;
  wire \shifter[26]_i_1__0_n_0 ;
  wire \shifter[27]_i_1__0_n_0 ;
  wire \shifter[28]_i_1__0_n_0 ;
  wire \shifter[29]_i_1__0_n_0 ;
  wire \shifter[2]_i_1__0_n_0 ;
  wire \shifter[30]_i_1__0_n_0 ;
  wire \shifter[31]_i_1__0_n_0 ;
  wire \shifter[3]_i_1__0_n_0 ;
  wire \shifter[4]_i_1__0_n_0 ;
  wire \shifter[5]_i_1__0_n_0 ;
  wire \shifter[6]_i_1__0_n_0 ;
  wire \shifter[7]_i_1__0_n_0 ;
  wire \shifter[8]_i_1__0_n_0 ;
  wire \shifter[9]_i_1__0_n_0 ;

  LUT6 #(
    .INIT(64'h8EEF088E8EEF0008)) 
    \action[0]_i_1__0 
       (.I0(\msxor_cti_reg_n_0_[1] ),
        .I1(\msxor_ctix_reg_n_0_[1] ),
        .I2(\msxor_ctd_reg_n_0_[1] ),
        .I3(\msxor_ctdx_reg_n_0_[1] ),
        .I4(\action[0]_i_2__0_n_0 ),
        .I5(\action[0]_i_3__0_n_0 ),
        .O(action[0]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h088E)) 
    \action[0]_i_2__0 
       (.I0(\msxor_cti_reg_n_0_[0] ),
        .I1(\msxor_ctix_reg_n_0_[0] ),
        .I2(\msxor_ctd_reg_n_0_[0] ),
        .I3(\msxor_ctdx_reg_n_0_[0] ),
        .O(\action[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \action[0]_i_3__0 
       (.I0(\msxor_ctix_reg_n_0_[0] ),
        .I1(\msxor_cti_reg_n_0_[0] ),
        .I2(\msxor_ctdx_reg_n_0_[0] ),
        .I3(\msxor_ctd_reg_n_0_[0] ),
        .O(\action[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hCEEF0CCE0CCE000C)) 
    \action[1]_i_1__0 
       (.I0(\action[1]_i_2__0_n_0 ),
        .I1(\action[1]_i_3__0_n_0 ),
        .I2(\msxor_ctix_reg_n_0_[1] ),
        .I3(\msxor_cti_reg_n_0_[1] ),
        .I4(\msxor_ctdx_reg_n_0_[1] ),
        .I5(\msxor_ctd_reg_n_0_[1] ),
        .O(action[1]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \action[1]_i_2__0 
       (.I0(\msxor_ctix_reg_n_0_[0] ),
        .I1(\msxor_cti_reg_n_0_[0] ),
        .I2(\msxor_ctdx_reg_n_0_[0] ),
        .I3(\msxor_ctd_reg_n_0_[0] ),
        .O(\action[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h088E)) 
    \action[1]_i_3__0 
       (.I0(\msxor_ctd_reg_n_0_[0] ),
        .I1(\msxor_ctdx_reg_n_0_[0] ),
        .I2(\msxor_cti_reg_n_0_[0] ),
        .I3(\msxor_ctix_reg_n_0_[0] ),
        .O(\action[1]_i_3__0_n_0 ));
  FDRE \action_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(action[0]),
        .Q(\action_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \action_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(action[1]),
        .Q(p_0_in200_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000040)) 
    data_mux_i_1__0
       (.I0(s_state[3]),
        .I1(s_state[2]),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(\s_state[3]_i_3__0_n_0 ),
        .I5(data_mux),
        .O(data_mux_i_1__0_n_0));
  FDRE data_mux_reg
       (.C(CLK),
        .CE(1'b1),
        .D(data_mux_i_1__0_n_0),
        .Q(data_mux),
        .R(reset_1p25_reg));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[0]_i_1 
       (.I0(sdataoutc[0]),
        .I1(mdataoutc[0]),
        .I2(data_mux),
        .O(\data_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[1]_i_1 
       (.I0(sdataoutc[1]),
        .I1(mdataoutc[1]),
        .I2(data_mux),
        .O(\data_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[2]_i_1 
       (.I0(sdataoutc[2]),
        .I1(mdataoutc[2]),
        .I2(data_mux),
        .O(\data_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[3]_i_1 
       (.I0(sdataoutc[3]),
        .I1(mdataoutc[3]),
        .I2(data_mux),
        .O(\data_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[4]_i_1 
       (.I0(sdataoutc[4]),
        .I1(mdataoutc[4]),
        .I2(data_mux),
        .O(\data_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[5]_i_1 
       (.I0(sdataoutc[5]),
        .I1(mdataoutc[5]),
        .I2(data_mux),
        .O(\data_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[6]_i_1 
       (.I0(sdataoutc[6]),
        .I1(mdataoutc[6]),
        .I2(data_mux),
        .O(\data_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[7]_i_1 
       (.I0(sdataoutc[7]),
        .I1(mdataoutc[7]),
        .I2(data_mux),
        .O(\data_out[7]_i_1_n_0 ));
  FDRE \data_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(\dataout_reg[7] [0]),
        .R(1'b0));
  FDRE \data_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(\dataout_reg[7] [1]),
        .R(1'b0));
  FDRE \data_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(\dataout_reg[7] [2]),
        .R(1'b0));
  FDRE \data_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(\dataout_reg[7] [3]),
        .R(1'b0));
  FDRE \data_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(\dataout_reg[7] [4]),
        .R(1'b0));
  FDRE \data_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(\dataout_reg[7] [5]),
        .R(1'b0));
  FDRE \data_out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(\dataout_reg[7] [6]),
        .R(1'b0));
  FDRE \data_out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(\dataout_reg[7] [7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7FFFFFFF6F770000)) 
    dec_run_i_1__0
       (.I0(s_state[1]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[0]),
        .I4(dec_run_i_2__0_n_0),
        .I5(dec_run_reg_n_0),
        .O(dec_run_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h3033000230330000)) 
    dec_run_i_2__0
       (.I0(meq_min_reg_n_0),
        .I1(inc_run_reg_n_0),
        .I2(delay_change_reg_n_0),
        .I3(pd_max),
        .I4(dec_run_reg_n_0),
        .I5(pd_min),
        .O(dec_run_i_2__0_n_0));
  FDRE dec_run_reg
       (.C(CLK),
        .CE(1'b1),
        .D(dec_run_i_1__0_n_0),
        .Q(dec_run_reg_n_0),
        .R(reset_1p25_reg));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'hFFFFCCFE)) 
    delay_change_i_1__0
       (.I0(pd_min),
        .I1(dec_run_reg_n_0),
        .I2(pd_max),
        .I3(delay_change_reg_n_0),
        .I4(inc_run_reg_n_0),
        .O(delay_change_i_1__0_n_0));
  FDRE delay_change_reg
       (.C(CLK),
        .CE(1'b1),
        .D(delay_change_i_1__0_n_0),
        .Q(delay_change_reg_n_0),
        .R(reset_1p25_reg));
  LUT6 #(
    .INIT(64'hCACCCAC8CCCCCCCC)) 
    eye_run_i_1__0
       (.I0(eye_run_i_2_n_0),
        .I1(eye_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(pd_min),
        .I5(\m_delay_val_int[4]_i_6_n_0 ),
        .O(eye_run_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    eye_run_i_2
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(s_state[4]),
        .O(eye_run_i_2_n_0));
  FDRE eye_run_reg
       (.C(CLK),
        .CE(1'b1),
        .D(eye_run_i_1__0_n_0),
        .Q(eye_run_reg_n_0),
        .R(reset_1p25_reg));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \green_debug[0]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(green_debug[0]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \green_debug[10]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(green_debug[10]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \green_debug[11]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(green_debug[11]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \green_debug[12]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(green_debug[12]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \green_debug[13]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(green_debug[13]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \green_debug[14]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(green_debug[14]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \green_debug[15]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(green_debug[15]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \green_debug[16]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(green_debug[16]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \green_debug[17]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(green_debug[17]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \green_debug[18]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(green_debug[18]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \green_debug[19]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(green_debug[19]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \green_debug[1]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(green_debug[1]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \green_debug[20]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(green_debug[20]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \green_debug[21]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(green_debug[21]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \green_debug[22]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(green_debug[22]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \green_debug[23]_INST_0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(green_debug[23]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \green_debug[24]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(green_debug[24]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \green_debug[25]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(green_debug[25]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \green_debug[26]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(green_debug[26]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \green_debug[27]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(green_debug[27]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \green_debug[28]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(green_debug[28]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \green_debug[29]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(green_debug[29]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \green_debug[2]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(green_debug[2]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \green_debug[30]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(green_debug[30]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \green_debug[31]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(green_debug[31]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \green_debug[3]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(green_debug[3]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \green_debug[4]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(green_debug[4]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \green_debug[5]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(green_debug[5]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \green_debug[6]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(green_debug[6]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \green_debug[7]_INST_0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(green_debug[7]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \green_debug[8]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(green_debug[8]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \green_debug[9]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(green_debug[9]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00006F77)) 
    inc_run_i_1__0
       (.I0(s_state[1]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[0]),
        .I4(inc_run_i_2__0_n_0),
        .I5(inc_run_reg_n_0),
        .O(inc_run_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    inc_run_i_2__0
       (.I0(pd_max),
        .I1(delay_change_reg_n_0),
        .I2(meq_max),
        .I3(inc_run_reg_n_0),
        .O(inc_run_i_2__0_n_0));
  FDRE inc_run_reg
       (.C(CLK),
        .CE(1'b1),
        .D(inc_run_i_1__0_n_0),
        .Q(inc_run_reg_n_0),
        .R(reset_1p25_reg));
  LUT6 #(
    .INIT(64'hFEFFFFFF01000000)) 
    \m_delay_mux[0]_i_1__0 
       (.I0(\s_state[3]_i_3__0_n_0 ),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(s_state[0]),
        .I5(m_delay_mux[0]),
        .O(\m_delay_mux[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFF6F0090)) 
    \m_delay_mux[1]_i_1__0 
       (.I0(\m_delay_val_int[4]_i_6_n_0 ),
        .I1(m_delay_mux[0]),
        .I2(\m_delay_mux[1]_i_2__0_n_0 ),
        .I3(\s_state[3]_i_3__0_n_0 ),
        .I4(m_delay_mux[1]),
        .O(\m_delay_mux[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_delay_mux[1]_i_2__0 
       (.I0(s_state[1]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[0]),
        .O(\m_delay_mux[1]_i_2__0_n_0 ));
  FDSE \m_delay_mux_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\m_delay_mux[0]_i_1__0_n_0 ),
        .Q(m_delay_mux[0]),
        .S(reset_1p25_reg));
  FDRE \m_delay_mux_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\m_delay_mux[1]_i_1__0_n_0 ),
        .Q(m_delay_mux[1]),
        .R(reset_1p25_reg));
  LUT6 #(
    .INIT(64'h000F000100000001)) 
    \m_delay_val_int[0]_i_1__0 
       (.I0(inc_run_reg_n_0),
        .I1(meq_max),
        .I2(Q[0]),
        .I3(reset_1p25_reg),
        .I4(\m_delay_val_int[4]_i_6_n_0 ),
        .I5(\m_delay_val_int[4]_i_4__0_n_0 ),
        .O(\m_delay_val_int[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000008FF88008)) 
    \m_delay_val_int[1]_i_1 
       (.I0(\m_delay_val_int[4]_i_6_n_0 ),
        .I1(\m_delay_val_int[4]_i_4__0_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\m_delay_val_int[4]_i_5__0_n_0 ),
        .I5(reset_1p25_reg),
        .O(\m_delay_val_int[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEECC00A)) 
    \m_delay_val_int[2]_i_1 
       (.I0(\m_delay_val_int[2]_i_2__0_n_0 ),
        .I1(\m_delay_val_int[4]_i_5__0_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(reset_1p25_reg),
        .O(\m_delay_val_int[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h0000000D)) 
    \m_delay_val_int[2]_i_2__0 
       (.I0(pd_max),
        .I1(delay_change_reg_n_0),
        .I2(inc_run_reg_n_0),
        .I3(meq_min_reg_n_0),
        .I4(dec_run_reg_n_0),
        .O(\m_delay_val_int[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h5101015151515151)) 
    \m_delay_val_int[3]_i_1__0 
       (.I0(reset_1p25_reg),
        .I1(\m_delay_val_int[3]_i_2_n_0 ),
        .I2(\m_delay_val_int[4]_i_6_n_0 ),
        .I3(Q[3]),
        .I4(\m_delay_val_int[3]_i_3__0_n_0 ),
        .I5(\m_delay_val_int[4]_i_4__0_n_0 ),
        .O(\m_delay_val_int[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF807F)) 
    \m_delay_val_int[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(meq_max),
        .I5(inc_run_reg_n_0),
        .O(\m_delay_val_int[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \m_delay_val_int[3]_i_3__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\m_delay_val_int[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hFFFFFF1E)) 
    \m_delay_val_int[4]_i_10__0 
       (.I0(Q[3]),
        .I1(\m_delay_val_int[3]_i_3__0_n_0 ),
        .I2(Q[4]),
        .I3(meq_min_reg_n_0),
        .I4(dec_run_reg_n_0),
        .O(\m_delay_val_int[4]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFF5FFFF)) 
    \m_delay_val_int[4]_i_1__0 
       (.I0(\m_delay_val_int[4]_i_3__0_n_0 ),
        .I1(\m_delay_val_int[4]_i_4__0_n_0 ),
        .I2(reset_1p25_reg),
        .I3(\m_delay_val_int[4]_i_5__0_n_0 ),
        .I4(\m_delay_val_int[4]_i_6_n_0 ),
        .I5(\m_delay_val_int[4]_i_7__0_n_0 ),
        .O(\m_delay_val_int[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000044055550440)) 
    \m_delay_val_int[4]_i_2__0 
       (.I0(reset_1p25_reg),
        .I1(\m_delay_val_int[4]_i_8__1_n_0 ),
        .I2(Q[4]),
        .I3(\m_delay_val_int[4]_i_9__0_n_0 ),
        .I4(\m_delay_val_int[4]_i_6_n_0 ),
        .I5(\m_delay_val_int[4]_i_10__0_n_0 ),
        .O(\m_delay_val_int[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'hFFFF33F1)) 
    \m_delay_val_int[4]_i_3__0 
       (.I0(pd_min),
        .I1(dec_run_reg_n_0),
        .I2(pd_max),
        .I3(delay_change_reg_n_0),
        .I4(inc_run_reg_n_0),
        .O(\m_delay_val_int[4]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_delay_val_int[4]_i_4__0 
       (.I0(dec_run_reg_n_0),
        .I1(meq_min_reg_n_0),
        .O(\m_delay_val_int[4]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \m_delay_val_int[4]_i_5__0 
       (.I0(delay_change_reg_n_0),
        .I1(pd_max),
        .I2(meq_max),
        .I3(inc_run_reg_n_0),
        .O(\m_delay_val_int[4]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \m_delay_val_int[4]_i_6 
       (.I0(inc_run_reg_n_0),
        .I1(delay_change_reg_n_0),
        .I2(pd_max),
        .O(\m_delay_val_int[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \m_delay_val_int[4]_i_7__0 
       (.I0(s_state[3]),
        .I1(s_state[2]),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .O(\m_delay_val_int[4]_i_7__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_delay_val_int[4]_i_8__1 
       (.I0(inc_run_reg_n_0),
        .I1(meq_max),
        .O(\m_delay_val_int[4]_i_8__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_delay_val_int[4]_i_9__0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\m_delay_val_int[4]_i_9__0_n_0 ));
  FDRE \m_delay_val_int_reg[0] 
       (.C(CLK),
        .CE(\m_delay_val_int[4]_i_1__0_n_0 ),
        .D(\m_delay_val_int[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[1] 
       (.C(CLK),
        .CE(\m_delay_val_int[4]_i_1__0_n_0 ),
        .D(\m_delay_val_int[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[2] 
       (.C(CLK),
        .CE(\m_delay_val_int[4]_i_1__0_n_0 ),
        .D(\m_delay_val_int[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[3] 
       (.C(CLK),
        .CE(\m_delay_val_int[4]_i_1__0_n_0 ),
        .D(\m_delay_val_int[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[4] 
       (.C(CLK),
        .CE(\m_delay_val_int[4]_i_1__0_n_0 ),
        .D(\m_delay_val_int[4]_i_2__0_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \match[0]_i_1__0 
       (.I0(p_0_in166_in),
        .I1(p_0_in76_in),
        .I2(p_0_in180_in),
        .I3(p_0_in88_in),
        .I4(\match[0]_i_2__0_n_0 ),
        .I5(\match[0]_i_3__0_n_0 ),
        .O(\match[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \match[0]_i_2__0 
       (.I0(\sdataouta_reg_n_0_[0] ),
        .I1(\mdataouta_reg_n_0_[0] ),
        .I2(p_0_in97_in),
        .I3(p_0_in15_in),
        .I4(p_0_in110_in),
        .I5(p_0_in28_in),
        .O(\match[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \match[0]_i_3__0 
       (.I0(p_0_in40_in),
        .I1(p_0_in124_in),
        .I2(p_0_in152_in),
        .I3(p_0_in64_in),
        .I4(p_0_in138_in),
        .I5(p_0_in52_in),
        .O(\match[0]_i_3__0_n_0 ));
  FDRE \match_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\match[0]_i_1__0_n_0 ),
        .Q(p_2_in[1]),
        .R(1'b0));
  FDRE \match_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[1]),
        .Q(p_2_in[2]),
        .R(1'b0));
  FDRE \match_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[2]),
        .Q(p_2_in[3]),
        .R(1'b0));
  FDRE \match_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[3]),
        .Q(p_2_in[4]),
        .R(1'b0));
  FDRE \match_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[4]),
        .Q(p_2_in[5]),
        .R(1'b0));
  FDRE \match_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[5]),
        .Q(p_2_in[6]),
        .R(1'b0));
  FDRE \match_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[6]),
        .Q(p_2_in[7]),
        .R(1'b0));
  FDRE \match_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[7]),
        .Q(match),
        .R(1'b0));
  FDRE \mdataouta_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[0]),
        .Q(\mdataouta_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mdataouta_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[1]),
        .Q(p_0_in97_in),
        .R(1'b0));
  FDRE \mdataouta_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[2]),
        .Q(p_0_in110_in),
        .R(1'b0));
  FDRE \mdataouta_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[3]),
        .Q(p_0_in124_in),
        .R(1'b0));
  FDRE \mdataouta_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[4]),
        .Q(p_0_in138_in),
        .R(1'b0));
  FDRE \mdataouta_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[5]),
        .Q(p_0_in152_in),
        .R(1'b0));
  FDRE \mdataouta_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[6]),
        .Q(p_0_in166_in),
        .R(1'b0));
  FDRE \mdataouta_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(bitslipx1p25_reg[7]),
        .Q(p_0_in180_in),
        .R(1'b0));
  FDRE mdataoutb_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in180_in),
        .Q(mdataoutb),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[0]_i_1__0 
       (.I0(\mdataouta_reg_n_0_[0] ),
        .I1(m_delay_mux[0]),
        .I2(p_0_in97_in),
        .I3(m_delay_mux[1]),
        .I4(mdataoutb),
        .O(\mdataoutc[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[1]_i_1__0 
       (.I0(p_0_in97_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in110_in),
        .I3(m_delay_mux[1]),
        .I4(\mdataouta_reg_n_0_[0] ),
        .O(\mdataoutc[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[2]_i_1__0 
       (.I0(p_0_in110_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in124_in),
        .I3(m_delay_mux[1]),
        .I4(p_0_in97_in),
        .O(\mdataoutc[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[3]_i_1__0 
       (.I0(p_0_in124_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in138_in),
        .I3(m_delay_mux[1]),
        .I4(p_0_in110_in),
        .O(\mdataoutc[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[4]_i_1__0 
       (.I0(p_0_in138_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in152_in),
        .I3(m_delay_mux[1]),
        .I4(p_0_in124_in),
        .O(\mdataoutc[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[5]_i_1__0 
       (.I0(p_0_in152_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in166_in),
        .I3(m_delay_mux[1]),
        .I4(p_0_in138_in),
        .O(\mdataoutc[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[6]_i_1__0 
       (.I0(p_0_in166_in),
        .I1(m_delay_mux[0]),
        .I2(p_0_in180_in),
        .I3(m_delay_mux[1]),
        .I4(p_0_in152_in),
        .O(\mdataoutc[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mdataoutc[7]_i_1__0 
       (.I0(p_0_in180_in),
        .I1(m_delay_mux[0]),
        .I2(bitslipx1p25_reg[0]),
        .I3(m_delay_mux[1]),
        .I4(p_0_in166_in),
        .O(\mdataoutc[7]_i_1__0_n_0 ));
  FDRE \mdataoutc_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\mdataoutc[0]_i_1__0_n_0 ),
        .Q(mdataoutc[0]),
        .R(1'b0));
  FDRE \mdataoutc_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\mdataoutc[1]_i_1__0_n_0 ),
        .Q(mdataoutc[1]),
        .R(1'b0));
  FDRE \mdataoutc_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\mdataoutc[2]_i_1__0_n_0 ),
        .Q(mdataoutc[2]),
        .R(1'b0));
  FDRE \mdataoutc_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\mdataoutc[3]_i_1__0_n_0 ),
        .Q(mdataoutc[3]),
        .R(1'b0));
  FDRE \mdataoutc_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\mdataoutc[4]_i_1__0_n_0 ),
        .Q(mdataoutc[4]),
        .R(1'b0));
  FDRE \mdataoutc_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\mdataoutc[5]_i_1__0_n_0 ),
        .Q(mdataoutc[5]),
        .R(1'b0));
  FDRE \mdataoutc_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\mdataoutc[6]_i_1__0_n_0 ),
        .Q(mdataoutc[6]),
        .R(1'b0));
  FDRE \mdataoutc_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\mdataoutc[7]_i_1__0_n_0 ),
        .Q(mdataoutc[7]),
        .R(1'b0));
  FDRE meq_max_reg
       (.C(CLK),
        .CE(E),
        .D(green_debug[8]),
        .Q(meq_max),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88888888888888B8)) 
    meq_min_i_1__0
       (.I0(meq_min_reg_n_0),
        .I1(reset_1p25_reg),
        .I2(meq_min_i_2__0_n_0),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(meq_min_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h1)) 
    meq_min_i_2__0
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(meq_min_i_2__0_n_0));
  FDRE meq_min_reg
       (.C(CLK),
        .CE(1'b1),
        .D(meq_min_i_1__0_n_0),
        .Q(meq_min_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h6B96)) 
    \msxor_ctd[0]_i_1__0 
       (.I0(\msxor_ctd[1]_i_2__0_n_0 ),
        .I1(\msxor_ctd[1]_i_3__0_n_0 ),
        .I2(\msxor_ctd[1]_i_4__0_n_0 ),
        .I3(\msxor_ctd[1]_i_5__0_n_0 ),
        .O(\msxor_ctd[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'hBF2B)) 
    \msxor_ctd[1]_i_1__0 
       (.I0(\msxor_ctd[1]_i_2__0_n_0 ),
        .I1(\msxor_ctd[1]_i_3__0_n_0 ),
        .I2(\msxor_ctd[1]_i_4__0_n_0 ),
        .I3(\msxor_ctd[1]_i_5__0_n_0 ),
        .O(\msxor_ctd[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_ctd[1]_i_2__0 
       (.I0(p_0_in28_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in15_in),
        .I3(p_0_in110_in),
        .I4(p_0_in97_in),
        .O(\msxor_ctd[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_ctd[1]_i_3__0 
       (.I0(p_0_in40_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in28_in),
        .I3(p_0_in124_in),
        .I4(p_0_in110_in),
        .O(\msxor_ctd[1]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'hFFB847FF)) 
    \msxor_ctd[1]_i_4__0 
       (.I0(p_0_in15_in),
        .I1(s_ovflw_reg_n_0),
        .I2(\sdataouta_reg_n_0_[0] ),
        .I3(\mdataouta_reg_n_0_[0] ),
        .I4(p_0_in97_in),
        .O(\msxor_ctd[1]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h0047B800)) 
    \msxor_ctd[1]_i_5__0 
       (.I0(\sdataouta_reg_n_0_[0] ),
        .I1(s_ovflw_reg_n_0),
        .I2(sdataoutb),
        .I3(mdataoutb),
        .I4(\mdataouta_reg_n_0_[0] ),
        .O(\msxor_ctd[1]_i_5__0_n_0 ));
  FDRE \msxor_ctd_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctd[0]_i_1__0_n_0 ),
        .Q(\msxor_ctd_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \msxor_ctd_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctd[1]_i_1__0_n_0 ),
        .Q(\msxor_ctd_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h69D6)) 
    \msxor_ctdx[0]_i_1__0 
       (.I0(\msxor_ctdx[1]_i_5__0_n_0 ),
        .I1(\msxor_ctdx[1]_i_4__0_n_0 ),
        .I2(\msxor_ctdx[1]_i_2__0_n_0 ),
        .I3(\msxor_ctdx[1]_i_3__0_n_0 ),
        .O(\msxor_ctdx[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'hB2FB)) 
    \msxor_ctdx[1]_i_1__0 
       (.I0(\msxor_ctdx[1]_i_2__0_n_0 ),
        .I1(\msxor_ctdx[1]_i_3__0_n_0 ),
        .I2(\msxor_ctdx[1]_i_4__0_n_0 ),
        .I3(\msxor_ctdx[1]_i_5__0_n_0 ),
        .O(\msxor_ctdx[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h0047B800)) 
    \msxor_ctdx[1]_i_2__0 
       (.I0(p_0_in64_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in52_in),
        .I3(p_0_in138_in),
        .I4(p_0_in152_in),
        .O(\msxor_ctdx[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_ctdx[1]_i_3__0 
       (.I0(p_0_in52_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in40_in),
        .I3(p_0_in138_in),
        .I4(p_0_in124_in),
        .O(\msxor_ctdx[1]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_ctdx[1]_i_4__0 
       (.I0(p_0_in88_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in76_in),
        .I3(p_0_in180_in),
        .I4(p_0_in166_in),
        .O(\msxor_ctdx[1]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_ctdx[1]_i_5__0 
       (.I0(p_0_in76_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in64_in),
        .I3(p_0_in166_in),
        .I4(p_0_in152_in),
        .O(\msxor_ctdx[1]_i_5__0_n_0 ));
  FDRE \msxor_ctdx_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctdx[0]_i_1__0_n_0 ),
        .Q(\msxor_ctdx_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \msxor_ctdx_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctdx[1]_i_1__0_n_0 ),
        .Q(\msxor_ctdx_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h6B96)) 
    \msxor_cti[0]_i_1__0 
       (.I0(\msxor_cti[1]_i_2__0_n_0 ),
        .I1(\msxor_cti[1]_i_3__0_n_0 ),
        .I2(\msxor_cti[1]_i_4__0_n_0 ),
        .I3(\msxor_cti[1]_i_5__0_n_0 ),
        .O(\msxor_cti[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'hBF2B)) 
    \msxor_cti[1]_i_1__0 
       (.I0(\msxor_cti[1]_i_2__0_n_0 ),
        .I1(\msxor_cti[1]_i_3__0_n_0 ),
        .I2(\msxor_cti[1]_i_4__0_n_0 ),
        .I3(\msxor_cti[1]_i_5__0_n_0 ),
        .O(\msxor_cti[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_cti[1]_i_2__0 
       (.I0(p_0_in28_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in15_in),
        .I3(p_0_in97_in),
        .I4(p_0_in110_in),
        .O(\msxor_cti[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_cti[1]_i_3__0 
       (.I0(p_0_in40_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in28_in),
        .I3(p_0_in110_in),
        .I4(p_0_in124_in),
        .O(\msxor_cti[1]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'hFFB847FF)) 
    \msxor_cti[1]_i_4__0 
       (.I0(p_0_in15_in),
        .I1(s_ovflw_reg_n_0),
        .I2(\sdataouta_reg_n_0_[0] ),
        .I3(p_0_in97_in),
        .I4(\mdataouta_reg_n_0_[0] ),
        .O(\msxor_cti[1]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_cti[1]_i_5__0 
       (.I0(\sdataouta_reg_n_0_[0] ),
        .I1(s_ovflw_reg_n_0),
        .I2(sdataoutb),
        .I3(mdataoutb),
        .I4(\mdataouta_reg_n_0_[0] ),
        .O(\msxor_cti[1]_i_5__0_n_0 ));
  FDRE \msxor_cti_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_cti[0]_i_1__0_n_0 ),
        .Q(\msxor_cti_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \msxor_cti_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_cti[1]_i_1__0_n_0 ),
        .Q(\msxor_cti_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h69D6)) 
    \msxor_ctix[0]_i_1__0 
       (.I0(\msxor_ctix[1]_i_5__0_n_0 ),
        .I1(\msxor_ctix[1]_i_4__0_n_0 ),
        .I2(\msxor_ctix[1]_i_2__0_n_0 ),
        .I3(\msxor_ctix[1]_i_3__0_n_0 ),
        .O(\msxor_ctix[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hB2FB)) 
    \msxor_ctix[1]_i_1__0 
       (.I0(\msxor_ctix[1]_i_2__0_n_0 ),
        .I1(\msxor_ctix[1]_i_3__0_n_0 ),
        .I2(\msxor_ctix[1]_i_4__0_n_0 ),
        .I3(\msxor_ctix[1]_i_5__0_n_0 ),
        .O(\msxor_ctix[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_ctix[1]_i_2__0 
       (.I0(p_0_in64_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in52_in),
        .I3(p_0_in138_in),
        .I4(p_0_in152_in),
        .O(\msxor_ctix[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_ctix[1]_i_3__0 
       (.I0(p_0_in52_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in40_in),
        .I3(p_0_in124_in),
        .I4(p_0_in138_in),
        .O(\msxor_ctix[1]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h0047B800)) 
    \msxor_ctix[1]_i_4__0 
       (.I0(p_0_in88_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in76_in),
        .I3(p_0_in180_in),
        .I4(p_0_in166_in),
        .O(\msxor_ctix[1]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hFF47B8FF)) 
    \msxor_ctix[1]_i_5__0 
       (.I0(p_0_in76_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in64_in),
        .I3(p_0_in152_in),
        .I4(p_0_in166_in),
        .O(\msxor_ctix[1]_i_5__0_n_0 ));
  FDRE \msxor_ctix_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctix[0]_i_1__0_n_0 ),
        .Q(\msxor_ctix_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \msxor_ctix_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctix[1]_i_1__0_n_0 ),
        .Q(\msxor_ctix_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pd_hold[0]_i_1__0 
       (.I0(eye_run_reg_n_0),
        .I1(delay_change_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(inc_run_reg_n_0),
        .O(pdcount1));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[1]_i_1__0 
       (.I0(p_0_in1_in[1]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[2]_i_1__0 
       (.I0(p_0_in1_in[2]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[3]_i_1__0 
       (.I0(p_0_in1_in[3]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[4]_i_1__0 
       (.I0(p_0_in1_in[4]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[5]_i_1__0 
       (.I0(p_0_in1_in[5]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[6]_i_1__0 
       (.I0(p_0_in1_in[6]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[7]_i_1__0 
       (.I0(p_0_in),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pd_hold[7]_i_2__0 
       (.I0(p_0_in1_in[7]),
        .I1(inc_run_reg_n_0),
        .I2(dec_run_reg_n_0),
        .I3(delay_change_reg_n_0),
        .I4(eye_run_reg_n_0),
        .O(\pd_hold[7]_i_2__0_n_0 ));
  FDRE \pd_hold_reg[0] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1__0_n_0 ),
        .D(pdcount1),
        .Q(p_0_in1_in[1]),
        .R(reset_1p25_reg));
  FDRE \pd_hold_reg[1] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1__0_n_0 ),
        .D(\pd_hold[1]_i_1__0_n_0 ),
        .Q(p_0_in1_in[2]),
        .R(reset_1p25_reg));
  FDRE \pd_hold_reg[2] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1__0_n_0 ),
        .D(\pd_hold[2]_i_1__0_n_0 ),
        .Q(p_0_in1_in[3]),
        .R(reset_1p25_reg));
  FDRE \pd_hold_reg[3] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1__0_n_0 ),
        .D(\pd_hold[3]_i_1__0_n_0 ),
        .Q(p_0_in1_in[4]),
        .R(reset_1p25_reg));
  FDRE \pd_hold_reg[4] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1__0_n_0 ),
        .D(\pd_hold[4]_i_1__0_n_0 ),
        .Q(p_0_in1_in[5]),
        .R(reset_1p25_reg));
  FDRE \pd_hold_reg[5] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1__0_n_0 ),
        .D(\pd_hold[5]_i_1__0_n_0 ),
        .Q(p_0_in1_in[6]),
        .R(reset_1p25_reg));
  FDRE \pd_hold_reg[6] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1__0_n_0 ),
        .D(\pd_hold[6]_i_1__0_n_0 ),
        .Q(p_0_in1_in[7]),
        .R(reset_1p25_reg));
  FDRE \pd_hold_reg[7] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1__0_n_0 ),
        .D(\pd_hold[7]_i_2__0_n_0 ),
        .Q(p_0_in),
        .R(reset_1p25_reg));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'h02)) 
    pd_max_i_1__0
       (.I0(pd_max_i_2__0_n_0),
        .I1(pd_max),
        .I2(delay_change_reg_n_0),
        .O(pd_max0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    pd_max_i_2__0
       (.I0(pdcount_reg[0]),
        .I1(pdcount_reg[1]),
        .I2(pdcount_reg[2]),
        .I3(pdcount_reg[3]),
        .I4(pdcount_reg[4]),
        .I5(pdcount_reg[5]),
        .O(pd_max_i_2__0_n_0));
  FDRE pd_max_reg
       (.C(CLK),
        .CE(E),
        .D(pd_max0),
        .Q(pd_max),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    pd_min_i_1
       (.I0(reset_1p25_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'h02)) 
    pd_min_i_1__0
       (.I0(pd_min_i_2__0_n_0),
        .I1(pd_min),
        .I2(delay_change_reg_n_0),
        .O(pd_min0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    pd_min_i_2__0
       (.I0(pdcount_reg[4]),
        .I1(pdcount_reg[5]),
        .I2(pdcount_reg[2]),
        .I3(pdcount_reg[3]),
        .I4(pdcount_reg[0]),
        .I5(pdcount_reg[1]),
        .O(pd_min_i_2__0_n_0));
  FDRE pd_min_reg
       (.C(CLK),
        .CE(E),
        .D(pd_min0),
        .Q(pd_min),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pdcount[0]_i_1__0 
       (.I0(pdcount_reg[0]),
        .O(\pdcount[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hD22D)) 
    \pdcount[1]_i_1__0 
       (.I0(\action_reg_n_0_[0] ),
        .I1(pd_max_i_2__0_n_0),
        .I2(pdcount_reg[0]),
        .I3(pdcount_reg[1]),
        .O(\pdcount[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'hAAA96AA9)) 
    \pdcount[2]_i_1__0 
       (.I0(pdcount_reg[2]),
        .I1(pdcount_reg[0]),
        .I2(pdcount_reg[1]),
        .I3(\action_reg_n_0_[0] ),
        .I4(pd_max_i_2__0_n_0),
        .O(\pdcount[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF4000FFFC0003)) 
    \pdcount[3]_i_1__0 
       (.I0(pd_max_i_2__0_n_0),
        .I1(\action_reg_n_0_[0] ),
        .I2(pdcount_reg[1]),
        .I3(pdcount_reg[0]),
        .I4(pdcount_reg[3]),
        .I5(pdcount_reg[2]),
        .O(\pdcount[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h66656666)) 
    \pdcount[4]_i_1__0 
       (.I0(pdcount_reg[4]),
        .I1(\pdcount[5]_i_4__0_n_0 ),
        .I2(pdcount_reg[3]),
        .I3(pdcount_reg[2]),
        .I4(\pdcount[5]_i_5__0_n_0 ),
        .O(\pdcount[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pdcount[5]_i_1__0 
       (.I0(inc_run_reg_n_0),
        .I1(dec_run_reg_n_0),
        .I2(delay_change_reg_n_0),
        .I3(eye_run_reg_n_0),
        .I4(p_0_in),
        .I5(reset_1p25_reg),
        .O(\pdcount[5]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h22F2)) 
    \pdcount[5]_i_2__0 
       (.I0(p_0_in200_in),
        .I1(pd_min_i_2__0_n_0),
        .I2(\action_reg_n_0_[0] ),
        .I3(pd_max_i_2__0_n_0),
        .O(\pdcount[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h6A6A6A996A6A6A6A)) 
    \pdcount[5]_i_3__0 
       (.I0(pdcount_reg[5]),
        .I1(pdcount_reg[4]),
        .I2(\pdcount[5]_i_4__0_n_0 ),
        .I3(pdcount_reg[3]),
        .I4(pdcount_reg[2]),
        .I5(\pdcount[5]_i_5__0_n_0 ),
        .O(\pdcount[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \pdcount[5]_i_4__0 
       (.I0(pdcount_reg[3]),
        .I1(pdcount_reg[2]),
        .I2(pd_max_i_2__0_n_0),
        .I3(\action_reg_n_0_[0] ),
        .I4(pdcount_reg[1]),
        .I5(pdcount_reg[0]),
        .O(\pdcount[5]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \pdcount[5]_i_5__0 
       (.I0(\action_reg_n_0_[0] ),
        .I1(pdcount_reg[0]),
        .I2(pdcount_reg[1]),
        .O(\pdcount[5]_i_5__0_n_0 ));
  FDRE \pdcount_reg[0] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2__0_n_0 ),
        .D(\pdcount[0]_i_1__0_n_0 ),
        .Q(pdcount_reg[0]),
        .R(\pdcount[5]_i_1__0_n_0 ));
  FDRE \pdcount_reg[1] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2__0_n_0 ),
        .D(\pdcount[1]_i_1__0_n_0 ),
        .Q(pdcount_reg[1]),
        .R(\pdcount[5]_i_1__0_n_0 ));
  FDRE \pdcount_reg[2] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2__0_n_0 ),
        .D(\pdcount[2]_i_1__0_n_0 ),
        .Q(pdcount_reg[2]),
        .R(\pdcount[5]_i_1__0_n_0 ));
  FDRE \pdcount_reg[3] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2__0_n_0 ),
        .D(\pdcount[3]_i_1__0_n_0 ),
        .Q(pdcount_reg[3]),
        .R(\pdcount[5]_i_1__0_n_0 ));
  FDRE \pdcount_reg[4] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2__0_n_0 ),
        .D(\pdcount[4]_i_1__0_n_0 ),
        .Q(pdcount_reg[4]),
        .R(\pdcount[5]_i_1__0_n_0 ));
  FDSE \pdcount_reg[5] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2__0_n_0 ),
        .D(\pdcount[5]_i_3__0_n_0 ),
        .Q(pdcount_reg[5]),
        .S(\pdcount[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[0]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[0]),
        .I2(green_eye[0]),
        .O(results[0]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[10]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[10]),
        .I2(green_eye[10]),
        .O(results[10]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[11]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[11]),
        .I2(green_eye[11]),
        .O(results[11]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[12]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[12]),
        .I2(green_eye[12]),
        .O(results[12]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[13]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[13]),
        .I2(green_eye[13]),
        .O(results[13]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[14]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[14]),
        .I2(green_eye[14]),
        .O(results[14]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[15]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[15]),
        .I2(green_eye[15]),
        .O(results[15]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[16]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[16]),
        .I2(green_eye[16]),
        .O(results[16]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[17]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[17]),
        .I2(green_eye[17]),
        .O(results[17]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[18]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[18]),
        .I2(green_eye[18]),
        .O(results[18]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[19]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[19]),
        .I2(green_eye[19]),
        .O(results[19]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[1]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[1]),
        .I2(green_eye[1]),
        .O(results[1]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[20]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[20]),
        .I2(green_eye[20]),
        .O(results[20]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[21]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[21]),
        .I2(green_eye[21]),
        .O(results[21]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[22]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[22]),
        .I2(green_eye[22]),
        .O(results[22]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[23]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[23]),
        .I2(green_eye[23]),
        .O(results[23]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[24]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[24]),
        .I2(green_eye[24]),
        .O(results[24]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[25]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[25]),
        .I2(green_eye[25]),
        .O(results[25]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[26]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[26]),
        .I2(green_eye[26]),
        .O(results[26]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[27]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[27]),
        .I2(green_eye[27]),
        .O(results[27]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[28]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[28]),
        .I2(green_eye[28]),
        .O(results[28]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[29]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[29]),
        .I2(green_eye[29]),
        .O(results[29]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[2]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[2]),
        .I2(green_eye[2]),
        .O(results[2]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[30]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[30]),
        .I2(green_eye[30]),
        .O(results[30]));
  LUT3 #(
    .INIT(8'hA8)) 
    \results[31]_i_1__0 
       (.I0(\results[31]_i_3__0_n_0 ),
        .I1(eye_run_reg_n_0),
        .I2(delay_change_reg_n_0),
        .O(s_delay_val_eye));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[31]_i_2__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[31]),
        .I2(green_eye[31]),
        .O(results[31]));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \results[31]_i_3__0 
       (.I0(\s_state[2]_i_2__0_n_0 ),
        .I1(s_state[4]),
        .I2(s_state[3]),
        .I3(s_state[2]),
        .I4(s_state[1]),
        .I5(s_state[0]),
        .O(\results[31]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \results[31]_i_4__0 
       (.I0(p_2_in[3]),
        .I1(p_2_in[1]),
        .I2(p_2_in[6]),
        .I3(p_2_in[5]),
        .I4(\results[31]_i_5__0_n_0 ),
        .O(\results[31]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \results[31]_i_5__0 
       (.I0(p_2_in[7]),
        .I1(match),
        .I2(p_2_in[4]),
        .I3(p_2_in[2]),
        .O(\results[31]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[3]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[3]),
        .I2(green_eye[3]),
        .O(results[3]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[4]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[4]),
        .I2(green_eye[4]),
        .O(results[4]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[5]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[5]),
        .I2(green_eye[5]),
        .O(results[5]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[6]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[6]),
        .I2(green_eye[6]),
        .O(results[6]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[7]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[7]),
        .I2(green_eye[7]),
        .O(results[7]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[8]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[8]),
        .I2(green_eye[8]),
        .O(results[8]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \results[9]_i_1__0 
       (.I0(\results[31]_i_4__0_n_0 ),
        .I1(shifter[9]),
        .I2(green_eye[9]),
        .O(results[9]));
  FDRE \results_reg[0] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[0]),
        .Q(green_eye[0]),
        .R(reset_1p25_reg));
  FDRE \results_reg[10] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[10]),
        .Q(green_eye[10]),
        .R(reset_1p25_reg));
  FDRE \results_reg[11] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[11]),
        .Q(green_eye[11]),
        .R(reset_1p25_reg));
  FDRE \results_reg[12] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[12]),
        .Q(green_eye[12]),
        .R(reset_1p25_reg));
  FDRE \results_reg[13] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[13]),
        .Q(green_eye[13]),
        .R(reset_1p25_reg));
  FDRE \results_reg[14] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[14]),
        .Q(green_eye[14]),
        .R(reset_1p25_reg));
  FDRE \results_reg[15] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[15]),
        .Q(green_eye[15]),
        .R(reset_1p25_reg));
  FDRE \results_reg[16] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[16]),
        .Q(green_eye[16]),
        .R(reset_1p25_reg));
  FDRE \results_reg[17] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[17]),
        .Q(green_eye[17]),
        .R(reset_1p25_reg));
  FDRE \results_reg[18] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[18]),
        .Q(green_eye[18]),
        .R(reset_1p25_reg));
  FDRE \results_reg[19] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[19]),
        .Q(green_eye[19]),
        .R(reset_1p25_reg));
  FDRE \results_reg[1] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[1]),
        .Q(green_eye[1]),
        .R(reset_1p25_reg));
  FDRE \results_reg[20] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[20]),
        .Q(green_eye[20]),
        .R(reset_1p25_reg));
  FDRE \results_reg[21] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[21]),
        .Q(green_eye[21]),
        .R(reset_1p25_reg));
  FDRE \results_reg[22] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[22]),
        .Q(green_eye[22]),
        .R(reset_1p25_reg));
  FDRE \results_reg[23] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[23]),
        .Q(green_eye[23]),
        .R(reset_1p25_reg));
  FDRE \results_reg[24] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[24]),
        .Q(green_eye[24]),
        .R(reset_1p25_reg));
  FDRE \results_reg[25] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[25]),
        .Q(green_eye[25]),
        .R(reset_1p25_reg));
  FDRE \results_reg[26] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[26]),
        .Q(green_eye[26]),
        .R(reset_1p25_reg));
  FDRE \results_reg[27] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[27]),
        .Q(green_eye[27]),
        .R(reset_1p25_reg));
  FDRE \results_reg[28] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[28]),
        .Q(green_eye[28]),
        .R(reset_1p25_reg));
  FDRE \results_reg[29] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[29]),
        .Q(green_eye[29]),
        .R(reset_1p25_reg));
  FDRE \results_reg[2] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[2]),
        .Q(green_eye[2]),
        .R(reset_1p25_reg));
  FDRE \results_reg[30] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[30]),
        .Q(green_eye[30]),
        .R(reset_1p25_reg));
  FDRE \results_reg[31] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[31]),
        .Q(green_eye[31]),
        .R(reset_1p25_reg));
  FDRE \results_reg[3] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[3]),
        .Q(green_eye[3]),
        .R(reset_1p25_reg));
  FDRE \results_reg[4] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[4]),
        .Q(green_eye[4]),
        .R(reset_1p25_reg));
  FDRE \results_reg[5] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[5]),
        .Q(green_eye[5]),
        .R(reset_1p25_reg));
  FDRE \results_reg[6] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[6]),
        .Q(green_eye[6]),
        .R(reset_1p25_reg));
  FDRE \results_reg[7] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[7]),
        .Q(green_eye[7]),
        .R(reset_1p25_reg));
  FDRE \results_reg[8] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[8]),
        .Q(green_eye[8]),
        .R(reset_1p25_reg));
  FDRE \results_reg[9] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(results[9]),
        .Q(green_eye[9]),
        .R(reset_1p25_reg));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \s_delay_mux[0]_i_1__0 
       (.I0(m_delay_mux[0]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\s_delay_mux[1]_i_2_n_0 ),
        .I4(\s_state[3]_i_3__0_n_0 ),
        .I5(s_delay_mux[0]),
        .O(\s_delay_mux[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \s_delay_mux[1]_i_1__0 
       (.I0(m_delay_mux[1]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\s_delay_mux[1]_i_2_n_0 ),
        .I4(\s_state[3]_i_3__0_n_0 ),
        .I5(s_delay_mux[1]),
        .O(\s_delay_mux[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_delay_mux[1]_i_2 
       (.I0(s_state[2]),
        .I1(s_state[1]),
        .O(\s_delay_mux[1]_i_2_n_0 ));
  FDSE \s_delay_mux_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_delay_mux[0]_i_1__0_n_0 ),
        .Q(s_delay_mux[0]),
        .S(reset_1p25_reg));
  FDRE \s_delay_mux_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_delay_mux[1]_i_1__0_n_0 ),
        .Q(s_delay_mux[1]),
        .R(reset_1p25_reg));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h00FF00EF)) 
    \s_delay_val_eye[0]_i_1__0 
       (.I0(s_delay_val_eye_reg[4]),
        .I1(s_delay_val_eye_reg[2]),
        .I2(s_delay_val_eye_reg[3]),
        .I3(s_delay_val_eye_reg[0]),
        .I4(s_delay_val_eye_reg[1]),
        .O(p_0_in__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \s_delay_val_eye[1]_i_1__0 
       (.I0(s_delay_val_eye_reg[0]),
        .I1(s_delay_val_eye_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \s_delay_val_eye[2]_i_1__0 
       (.I0(s_delay_val_eye_reg[2]),
        .I1(s_delay_val_eye_reg[1]),
        .I2(s_delay_val_eye_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h3FFEC000)) 
    \s_delay_val_eye[3]_i_1__0 
       (.I0(s_delay_val_eye_reg[4]),
        .I1(s_delay_val_eye_reg[2]),
        .I2(s_delay_val_eye_reg[1]),
        .I3(s_delay_val_eye_reg[0]),
        .I4(s_delay_val_eye_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \s_delay_val_eye[4]_i_1__0 
       (.I0(s_delay_val_eye_reg[4]),
        .I1(s_delay_val_eye_reg[3]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[1]),
        .I4(s_delay_val_eye_reg[0]),
        .O(p_0_in__0[4]));
  FDRE \s_delay_val_eye_reg[0] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(p_0_in__0[0]),
        .Q(s_delay_val_eye_reg[0]),
        .R(reset_1p25_reg));
  FDRE \s_delay_val_eye_reg[1] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(p_0_in__0[1]),
        .Q(s_delay_val_eye_reg[1]),
        .R(reset_1p25_reg));
  FDRE \s_delay_val_eye_reg[2] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(p_0_in__0[2]),
        .Q(s_delay_val_eye_reg[2]),
        .R(reset_1p25_reg));
  FDRE \s_delay_val_eye_reg[3] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(p_0_in__0[3]),
        .Q(s_delay_val_eye_reg[3]),
        .R(reset_1p25_reg));
  FDRE \s_delay_val_eye_reg[4] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(p_0_in__0[4]),
        .Q(s_delay_val_eye_reg[4]),
        .R(reset_1p25_reg));
  LUT6 #(
    .INIT(64'h1010101110101000)) 
    \s_delay_val_int[0]_i_1__0 
       (.I0(\s_state[2]_i_2__0_n_0 ),
        .I1(reset_1p25_reg),
        .I2(s_delay_val_eye_reg[0]),
        .I3(eye_run_reg_n_0),
        .I4(delay_change_reg_n_0),
        .I5(Q[0]),
        .O(\s_delay_val_int[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1010101110101000)) 
    \s_delay_val_int[1]_i_1__0 
       (.I0(\s_state[2]_i_2__0_n_0 ),
        .I1(reset_1p25_reg),
        .I2(s_delay_val_eye_reg[1]),
        .I3(eye_run_reg_n_0),
        .I4(delay_change_reg_n_0),
        .I5(Q[1]),
        .O(\s_delay_val_int[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22202223)) 
    \s_delay_val_int[2]_i_1__0 
       (.I0(s_delay_val_eye_reg[2]),
        .I1(\s_state[2]_i_2__0_n_0 ),
        .I2(delay_change_reg_n_0),
        .I3(eye_run_reg_n_0),
        .I4(Q[2]),
        .I5(reset_1p25_reg),
        .O(\s_delay_val_int[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000A2FFFF)) 
    \s_delay_val_int[3]_i_1__0 
       (.I0(\s_delay_val_int[3]_i_2__0_n_0 ),
        .I1(pd_min),
        .I2(delay_change_reg_n_0),
        .I3(dec_run_reg_n_0),
        .I4(\m_delay_val_int[4]_i_6_n_0 ),
        .I5(reset_1p25_reg),
        .O(\s_delay_val_int[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFF60006)) 
    \s_delay_val_int[3]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(delay_change_reg_n_0),
        .I3(eye_run_reg_n_0),
        .I4(s_delay_val_eye_reg[3]),
        .O(\s_delay_val_int[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5050FF70)) 
    \s_delay_val_int[4]_i_1__0 
       (.I0(\s_state[3]_i_3__0_n_0 ),
        .I1(s_state[4]),
        .I2(\s_delay_val_int[4]_i_3__0_n_0 ),
        .I3(\s_delay_val_int[4]_i_4__0_n_0 ),
        .I4(\s_state[2]_i_2__0_n_0 ),
        .I5(reset_1p25_reg),
        .O(\s_delay_val_int[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h08A8A8A8A8080808)) 
    \s_delay_val_int[4]_i_2__0 
       (.I0(\s_delay_val_int[4]_i_5__0_n_0 ),
        .I1(s_delay_val_eye_reg[4]),
        .I2(\s_delay_val_int[4]_i_4__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\s_delay_val_int[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \s_delay_val_int[4]_i_3__0 
       (.I0(s_state[0]),
        .I1(s_state[2]),
        .I2(s_state[1]),
        .I3(s_state[3]),
        .O(\s_delay_val_int[4]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_delay_val_int[4]_i_4__0 
       (.I0(delay_change_reg_n_0),
        .I1(eye_run_reg_n_0),
        .O(\s_delay_val_int[4]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000101000001011)) 
    \s_delay_val_int[4]_i_5__0 
       (.I0(reset_1p25_reg),
        .I1(dec_run_reg_n_0),
        .I2(delay_change_reg_n_0),
        .I3(pd_min),
        .I4(inc_run_reg_n_0),
        .I5(pd_max),
        .O(\s_delay_val_int[4]_i_5__0_n_0 ));
  FDRE \s_delay_val_int_reg[0] 
       (.C(CLK),
        .CE(\s_delay_val_int[4]_i_1__0_n_0 ),
        .D(\s_delay_val_int[0]_i_1__0_n_0 ),
        .Q(\sdataouta_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \s_delay_val_int_reg[1] 
       (.C(CLK),
        .CE(\s_delay_val_int[4]_i_1__0_n_0 ),
        .D(\s_delay_val_int[1]_i_1__0_n_0 ),
        .Q(\sdataouta_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \s_delay_val_int_reg[2] 
       (.C(CLK),
        .CE(\s_delay_val_int[4]_i_1__0_n_0 ),
        .D(\s_delay_val_int[2]_i_1__0_n_0 ),
        .Q(\sdataouta_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \s_delay_val_int_reg[3] 
       (.C(CLK),
        .CE(\s_delay_val_int[4]_i_1__0_n_0 ),
        .D(\s_delay_val_int[3]_i_1__0_n_0 ),
        .Q(\sdataouta_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \s_delay_val_int_reg[4] 
       (.C(CLK),
        .CE(\s_delay_val_int[4]_i_1__0_n_0 ),
        .D(\s_delay_val_int[4]_i_2__0_n_0 ),
        .Q(\sdataouta_reg[7]_0 [4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000002)) 
    s_ovflw_i_1__0
       (.I0(\m_delay_val_int[4]_i_6_n_0 ),
        .I1(pd_min),
        .I2(delay_change_reg_n_0),
        .I3(dec_run_reg_n_0),
        .I4(eye_run_reg_n_0),
        .I5(s_ovflw_reg_n_0),
        .O(s_ovflw_i_1__0_n_0));
  FDRE s_ovflw_reg
       (.C(CLK),
        .CE(1'b1),
        .D(s_ovflw_i_1__0_n_0),
        .Q(s_ovflw_reg_n_0),
        .R(reset_1p25_reg));
  LUT6 #(
    .INIT(64'h5555555555155555)) 
    \s_state[0]_i_1__0 
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(s_state[4]),
        .I5(\s_state[2]_i_2__0_n_0 ),
        .O(\s_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666266666)) 
    \s_state[1]_i_1__0 
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(s_state[4]),
        .I5(\s_state[2]_i_2__0_n_0 ),
        .O(\s_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7878787878387878)) 
    \s_state[2]_i_1__0 
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(s_state[4]),
        .I5(\s_state[2]_i_2__0_n_0 ),
        .O(\s_state[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'hFFFFCCFE)) 
    \s_state[2]_i_2__0 
       (.I0(pd_max),
        .I1(inc_run_reg_n_0),
        .I2(pd_min),
        .I3(delay_change_reg_n_0),
        .I4(dec_run_reg_n_0),
        .O(\s_state[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00A200A0FFFFFFFF)) 
    \s_state[3]_i_1__0 
       (.I0(\m_delay_val_int[4]_i_6_n_0 ),
        .I1(pd_min),
        .I2(delay_change_reg_n_0),
        .I3(dec_run_reg_n_0),
        .I4(eye_run_reg_n_0),
        .I5(\s_state[3]_i_3__0_n_0 ),
        .O(\s_state[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \s_state[3]_i_2__0 
       (.I0(s_state[3]),
        .I1(s_state[1]),
        .I2(s_state[0]),
        .I3(s_state[2]),
        .O(\s_state[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00F3AAAA00FFAAAA)) 
    \s_state[3]_i_3__0 
       (.I0(\m_delay_val_int[4]_i_8__1_n_0 ),
        .I1(pd_min),
        .I2(delay_change_reg_n_0),
        .I3(dec_run_reg_n_0),
        .I4(\m_delay_val_int[4]_i_6_n_0 ),
        .I5(meq_min_reg_n_0),
        .O(\s_state[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FF7FFFF80000000)) 
    \s_state[4]_i_1__0 
       (.I0(s_state[1]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[0]),
        .I4(\s_state[4]_i_2__0_n_0 ),
        .I5(s_state[4]),
        .O(\s_state[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000303000003032)) 
    \s_state[4]_i_2__0 
       (.I0(eye_run_reg_n_0),
        .I1(dec_run_reg_n_0),
        .I2(delay_change_reg_n_0),
        .I3(pd_min),
        .I4(inc_run_reg_n_0),
        .I5(pd_max),
        .O(\s_state[4]_i_2__0_n_0 ));
  FDRE \s_state_reg[0] 
       (.C(CLK),
        .CE(\s_state[3]_i_1__0_n_0 ),
        .D(\s_state[0]_i_1__0_n_0 ),
        .Q(s_state[0]),
        .R(reset_1p25_reg));
  FDRE \s_state_reg[1] 
       (.C(CLK),
        .CE(\s_state[3]_i_1__0_n_0 ),
        .D(\s_state[1]_i_1__0_n_0 ),
        .Q(s_state[1]),
        .R(reset_1p25_reg));
  FDRE \s_state_reg[2] 
       (.C(CLK),
        .CE(\s_state[3]_i_1__0_n_0 ),
        .D(\s_state[2]_i_1__0_n_0 ),
        .Q(s_state[2]),
        .R(reset_1p25_reg));
  FDRE \s_state_reg[3] 
       (.C(CLK),
        .CE(\s_state[3]_i_1__0_n_0 ),
        .D(\s_state[3]_i_2__0_n_0 ),
        .Q(s_state[3]),
        .R(reset_1p25_reg));
  FDRE \s_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_state[4]_i_1__0_n_0 ),
        .Q(s_state[4]),
        .R(reset_1p25_reg));
  FDRE \sdataouta_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(\sdataouta_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \sdataouta_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(p_0_in15_in),
        .R(1'b0));
  FDRE \sdataouta_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(p_0_in28_in),
        .R(1'b0));
  FDRE \sdataouta_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(p_0_in40_in),
        .R(1'b0));
  FDRE \sdataouta_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(p_0_in52_in),
        .R(1'b0));
  FDRE \sdataouta_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(p_0_in64_in),
        .R(1'b0));
  FDRE \sdataouta_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(p_0_in76_in),
        .R(1'b0));
  FDRE \sdataouta_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(p_0_in88_in),
        .R(1'b0));
  FDRE sdataoutb_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in88_in),
        .Q(sdataoutb),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[0]_i_1__0 
       (.I0(\sdataouta_reg_n_0_[0] ),
        .I1(s_delay_mux[0]),
        .I2(p_0_in15_in),
        .I3(s_delay_mux[1]),
        .I4(sdataoutb),
        .O(\sdataoutc[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[1]_i_1__0 
       (.I0(p_0_in15_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in28_in),
        .I3(s_delay_mux[1]),
        .I4(\sdataouta_reg_n_0_[0] ),
        .O(\sdataoutc[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[2]_i_1__0 
       (.I0(p_0_in28_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in40_in),
        .I3(s_delay_mux[1]),
        .I4(p_0_in15_in),
        .O(\sdataoutc[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[3]_i_1__0 
       (.I0(p_0_in40_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in52_in),
        .I3(s_delay_mux[1]),
        .I4(p_0_in28_in),
        .O(\sdataoutc[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[4]_i_1__0 
       (.I0(p_0_in52_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in64_in),
        .I3(s_delay_mux[1]),
        .I4(p_0_in40_in),
        .O(\sdataoutc[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[5]_i_1__0 
       (.I0(p_0_in64_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in76_in),
        .I3(s_delay_mux[1]),
        .I4(p_0_in52_in),
        .O(\sdataoutc[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[6]_i_1__0 
       (.I0(p_0_in76_in),
        .I1(s_delay_mux[0]),
        .I2(p_0_in88_in),
        .I3(s_delay_mux[1]),
        .I4(p_0_in64_in),
        .O(\sdataoutc[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sdataoutc[7]_i_1__0 
       (.I0(p_0_in88_in),
        .I1(s_delay_mux[0]),
        .I2(D[0]),
        .I3(s_delay_mux[1]),
        .I4(p_0_in76_in),
        .O(\sdataoutc[7]_i_1__0_n_0 ));
  FDRE \sdataoutc_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\sdataoutc[0]_i_1__0_n_0 ),
        .Q(sdataoutc[0]),
        .R(1'b0));
  FDRE \sdataoutc_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\sdataoutc[1]_i_1__0_n_0 ),
        .Q(sdataoutc[1]),
        .R(1'b0));
  FDRE \sdataoutc_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\sdataoutc[2]_i_1__0_n_0 ),
        .Q(sdataoutc[2]),
        .R(1'b0));
  FDRE \sdataoutc_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\sdataoutc[3]_i_1__0_n_0 ),
        .Q(sdataoutc[3]),
        .R(1'b0));
  FDRE \sdataoutc_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\sdataoutc[4]_i_1__0_n_0 ),
        .Q(sdataoutc[4]),
        .R(1'b0));
  FDRE \sdataoutc_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\sdataoutc[5]_i_1__0_n_0 ),
        .Q(sdataoutc[5]),
        .R(1'b0));
  FDRE \sdataoutc_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\sdataoutc[6]_i_1__0_n_0 ),
        .Q(sdataoutc[6]),
        .R(1'b0));
  FDRE \sdataoutc_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\sdataoutc[7]_i_1__0_n_0 ),
        .Q(sdataoutc[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \shifter[0]_i_1__0 
       (.I0(shifter[31]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[10]_i_1__0 
       (.I0(shifter[9]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[11]_i_1__0 
       (.I0(shifter[10]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[12]_i_1__0 
       (.I0(shifter[11]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[12]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[13]_i_1__0 
       (.I0(shifter[12]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[13]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[14]_i_1__0 
       (.I0(shifter[13]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[14]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[15]_i_1__0 
       (.I0(shifter[14]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[15]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[16]_i_1__0 
       (.I0(shifter[15]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[16]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[17]_i_1__0 
       (.I0(shifter[16]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[17]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[18]_i_1__0 
       (.I0(shifter[17]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[18]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[19]_i_1__0 
       (.I0(shifter[18]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[19]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[1]_i_1__0 
       (.I0(shifter[0]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[20]_i_1__0 
       (.I0(shifter[19]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[20]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[21]_i_1__0 
       (.I0(shifter[20]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[21]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[22]_i_1__0 
       (.I0(shifter[21]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[22]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[23]_i_1__0 
       (.I0(shifter[22]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[23]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[24]_i_1__0 
       (.I0(shifter[23]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[24]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[25]_i_1__0 
       (.I0(shifter[24]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[25]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[26]_i_1__0 
       (.I0(shifter[25]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[26]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[27]_i_1__0 
       (.I0(shifter[26]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[27]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[28]_i_1__0 
       (.I0(shifter[27]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[28]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[29]_i_1__0 
       (.I0(shifter[28]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[29]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[2]_i_1__0 
       (.I0(shifter[1]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[30]_i_1__0 
       (.I0(shifter[29]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[30]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[31]_i_1__0 
       (.I0(shifter[30]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[31]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[3]_i_1__0 
       (.I0(shifter[2]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[4]_i_1__0 
       (.I0(shifter[3]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[5]_i_1__0 
       (.I0(shifter[4]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[6]_i_1__0 
       (.I0(shifter[5]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[7]_i_1__0 
       (.I0(shifter[6]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[8]_i_1__0 
       (.I0(shifter[7]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \shifter[9]_i_1__0 
       (.I0(shifter[8]),
        .I1(s_delay_val_eye_reg[4]),
        .I2(s_delay_val_eye_reg[2]),
        .I3(s_delay_val_eye_reg[3]),
        .I4(s_delay_val_eye_reg[0]),
        .I5(s_delay_val_eye_reg[1]),
        .O(\shifter[9]_i_1__0_n_0 ));
  FDSE \shifter_reg[0] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[0]_i_1__0_n_0 ),
        .Q(shifter[0]),
        .S(reset_1p25_reg));
  FDRE \shifter_reg[10] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[10]_i_1__0_n_0 ),
        .Q(shifter[10]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[11] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[11]_i_1__0_n_0 ),
        .Q(shifter[11]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[12] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[12]_i_1__0_n_0 ),
        .Q(shifter[12]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[13] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[13]_i_1__0_n_0 ),
        .Q(shifter[13]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[14] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[14]_i_1__0_n_0 ),
        .Q(shifter[14]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[15] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[15]_i_1__0_n_0 ),
        .Q(shifter[15]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[16] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[16]_i_1__0_n_0 ),
        .Q(shifter[16]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[17] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[17]_i_1__0_n_0 ),
        .Q(shifter[17]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[18] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[18]_i_1__0_n_0 ),
        .Q(shifter[18]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[19] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[19]_i_1__0_n_0 ),
        .Q(shifter[19]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[1] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[1]_i_1__0_n_0 ),
        .Q(shifter[1]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[20] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[20]_i_1__0_n_0 ),
        .Q(shifter[20]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[21] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[21]_i_1__0_n_0 ),
        .Q(shifter[21]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[22] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[22]_i_1__0_n_0 ),
        .Q(shifter[22]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[23] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[23]_i_1__0_n_0 ),
        .Q(shifter[23]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[24] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[24]_i_1__0_n_0 ),
        .Q(shifter[24]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[25] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[25]_i_1__0_n_0 ),
        .Q(shifter[25]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[26] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[26]_i_1__0_n_0 ),
        .Q(shifter[26]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[27] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[27]_i_1__0_n_0 ),
        .Q(shifter[27]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[28] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[28]_i_1__0_n_0 ),
        .Q(shifter[28]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[29] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[29]_i_1__0_n_0 ),
        .Q(shifter[29]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[2] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[2]_i_1__0_n_0 ),
        .Q(shifter[2]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[30] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[30]_i_1__0_n_0 ),
        .Q(shifter[30]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[31] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[31]_i_1__0_n_0 ),
        .Q(shifter[31]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[3] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[3]_i_1__0_n_0 ),
        .Q(shifter[3]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[4] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[4]_i_1__0_n_0 ),
        .Q(shifter[4]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[5] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[5]_i_1__0_n_0 ),
        .Q(shifter[5]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[6] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[6]_i_1__0_n_0 ),
        .Q(shifter[6]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[7] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[7]_i_1__0_n_0 ),
        .Q(shifter[7]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[8] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[8]_i_1__0_n_0 ),
        .Q(shifter[8]),
        .R(reset_1p25_reg));
  FDRE \shifter_reg[9] 
       (.C(CLK),
        .CE(s_delay_val_eye),
        .D(\shifter[9]_i_1__0_n_0 ),
        .Q(shifter[9]),
        .R(reset_1p25_reg));
endmodule

(* ORIG_REF_NAME = "dvi_decoder" *) 
module overlay1_dvi_decoder_v2_0_0_dvi_decoder
   (pll_lckd,
    p_clk,
    px1p25_dbg_clk,
    px5_clk,
    SR,
    blue_debug,
    green_debug,
    red_debug,
    hsync,
    vsync,
    encoding,
    data_gb,
    video_gb,
    cv,
    blue_vld,
    blue_rdy,
    green_vld,
    green_rdy,
    red_vld,
    red_rdy,
    de,
    hdcp_ena,
    blue_eye,
    \sdout_9__s_port_] ,
    sdout,
    green_eye,
    red_eye,
    ctl_code,
    green_di,
    red_di,
    blue_di,
    line_end,
    basic_de,
    blue,
    green,
    red,
    rx_clk,
    mhz200_clk,
    blue_p,
    blue_n,
    CLKB0,
    green_p,
    green_n,
    red_p,
    red_n,
    ex_reset);
  output pll_lckd;
  output p_clk;
  output px1p25_dbg_clk;
  output px5_clk;
  output [0:0]SR;
  output [31:0]blue_debug;
  output [31:0]green_debug;
  output [31:0]red_debug;
  output hsync;
  output vsync;
  output encoding;
  output data_gb;
  output video_gb;
  output cv;
  output blue_vld;
  output blue_rdy;
  output green_vld;
  output green_rdy;
  output red_vld;
  output red_rdy;
  output de;
  output hdcp_ena;
  output [31:0]blue_eye;
  output \sdout_9__s_port_] ;
  output [28:0]sdout;
  output [31:0]green_eye;
  output [31:0]red_eye;
  output [3:0]ctl_code;
  output [3:0]green_di;
  output [3:0]red_di;
  output [3:0]blue_di;
  output line_end;
  output basic_de;
  output [7:0]blue;
  output [7:0]green;
  output [7:0]red;
  input rx_clk;
  input mhz200_clk;
  input blue_p;
  input blue_n;
  input CLKB0;
  input green_p;
  input green_n;
  input red_p;
  input red_n;
  input ex_reset;

  wire CLKB0;
  wire [0:0]SR;
  wire b_cv;
  wire b_vgb;
  wire basic_de;
  wire [7:0]blue;
  wire [31:0]blue_debug;
  wire [3:0]blue_di;
  wire [31:0]blue_eye;
  wire blue_n;
  wire blue_p;
  wire blue_rdy;
  wire blue_vld;
  wire \cbnd/rcvd_ctkn0 ;
  wire \cbnd/rcvd_ctkn0_0 ;
  wire clear;
  wire clear_1;
  wire clear_2;
  wire clk_pixel_raw;
  wire clk_pixel_x1p25_dbg_raw;
  wire clk_pixel_x1p25_raw;
  wire clk_pixel_x5_raw;
  wire clkfb_2;
  wire [7:0]cstate;
  wire [3:0]ctl_code;
  wire [3:0]ctl_code_q;
  wire [3:0]ctl_code_wire;
  wire cv;
  wire cv_q;
  wire cv_q0;
  wire data_gb;
  wire data_gb_q;
  wire data_gb_q0;
  wire de;
  wire de_b;
  wire de_g;
  wire dec_b_n_42;
  wire dec_b_n_43;
  wire dec_b_n_44;
  wire dec_g_n_44;
  wire dec_g_n_45;
  wire dec_g_n_46;
  wire dec_g_n_47;
  wire dec_g_n_48;
  wire dec_g_n_50;
  wire dec_r_n_40;
  wire dec_r_n_47;
  wire \des_0/dc_inst/p_12_in ;
  wire \des_0/gb8to10/read_enable_oclk ;
  wire \des_0/gb8to10/read_enable_oclk_3 ;
  wire \des_0/reset_1p25 ;
  wire encoding;
  wire encoding_i_1_n_0;
  wire encrypting_data_reg_n_0;
  wire encrypting_video_i_1_n_0;
  wire ex_reset;
  wire g_cv;
  wire g_vgb;
  wire [7:0]green;
  wire [31:0]green_debug;
  wire [3:0]green_di;
  wire [31:0]green_eye;
  wire green_n;
  wire green_p;
  wire green_rdy;
  wire green_vld;
  wire hdcp_ena;
  wire hsync;
  wire hsync_q1;
  wire hsync_q2;
  wire line_end;
  wire mhz200_clk;
  wire [7:0]nstate;
  wire nstate10_out;
  wire p_clk;
  wire pll_lckd;
  wire px1p25_clk;
  wire px1p25_dbg_clk;
  wire px5_clk;
  wire r_cv;
  wire r_dgb;
  wire r_vgb;
  wire [7:0]red;
  wire [31:0]red_debug;
  wire [3:0]red_di;
  wire [31:0]red_eye;
  wire red_n;
  wire red_p;
  wire red_rdy;
  wire red_vld;
  wire reset_i_1_n_0;
  wire rx_clk;
  wire [28:0]sdout;
  wire sdout_9__s_net_1;
  wire video_gb;
  wire video_gb_q;
  wire vsync;
  wire vsync_q1;
  wire vsync_q2;
  wire NLW_IDELAYCTRL_inst_RDY_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT1_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_MMCME2_BASE_inst_DO_UNCONNECTED;

  assign \sdout_9__s_port_]  = sdout_9__s_net_1;
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    IDELAYCTRL_inst
       (.RDY(NLW_IDELAYCTRL_inst_RDY_UNCONNECTED),
        .REFCLK(mhz200_clk),
        .RST(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MMCME2_BASE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(5.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(6.734000),
    .CLKIN2_PERIOD(10.000000),
    .CLKOUT0_DIVIDE_F(5.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(5),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT3_DIVIDE(4),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(4),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .REF_JITTER1(0.000000),
    .STARTUP_WAIT("FALSE")) 
    MMCME2_BASE_inst
       (.CLKFBIN(clkfb_2),
        .CLKFBOUT(clkfb_2),
        .CLKFBOUTB(NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(rx_clk),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_pixel_raw),
        .CLKOUT0B(NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_MMCME2_BASE_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(clk_pixel_x5_raw),
        .CLKOUT2B(NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(clk_pixel_x1p25_raw),
        .CLKOUT3B(NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(clk_pixel_x1p25_dbg_raw),
        .CLKOUT5(NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_MMCME2_BASE_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(pll_lckd),
        .PSCLK(1'b0),
        .PSDONE(NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \cstate_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(nstate[0]),
        .Q(cstate[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cstate_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(nstate[1]),
        .Q(cstate[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cstate_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(dec_g_n_44),
        .Q(cstate[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cstate_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(nstate[3]),
        .Q(cstate[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cstate_reg[4] 
       (.C(p_clk),
        .CE(1'b1),
        .D(dec_b_n_42),
        .Q(cstate[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cstate_reg[5] 
       (.C(p_clk),
        .CE(1'b1),
        .D(nstate[5]),
        .Q(cstate[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cstate_reg[6] 
       (.C(p_clk),
        .CE(1'b1),
        .D(nstate[6]),
        .Q(cstate[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cstate_reg[7] 
       (.C(p_clk),
        .CE(1'b1),
        .D(nstate[7]),
        .Q(cstate[7]),
        .R(SR));
  FDRE \ctl_code_q_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(ctl_code_wire[0]),
        .Q(ctl_code_q[0]),
        .R(1'b0));
  FDRE \ctl_code_q_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(ctl_code_wire[1]),
        .Q(ctl_code_q[1]),
        .R(1'b0));
  FDRE \ctl_code_q_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(ctl_code_wire[2]),
        .Q(ctl_code_q[2]),
        .R(1'b0));
  FDRE \ctl_code_q_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(ctl_code_wire[3]),
        .Q(ctl_code_q[3]),
        .R(1'b0));
  FDRE \ctl_code_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(ctl_code_q[0]),
        .Q(ctl_code[0]),
        .R(1'b0));
  FDRE \ctl_code_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(ctl_code_q[1]),
        .Q(ctl_code[1]),
        .R(1'b0));
  FDRE \ctl_code_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(ctl_code_q[2]),
        .Q(ctl_code[2]),
        .R(1'b0));
  FDRE \ctl_code_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(ctl_code_q[3]),
        .Q(ctl_code[3]),
        .R(1'b0));
  FDRE cv_q_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(cv_q0),
        .Q(cv_q),
        .R(1'b0));
  FDRE cv_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(cv_q),
        .Q(cv),
        .R(1'b0));
  FDRE data_gb_q_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(data_gb_q0),
        .Q(data_gb_q),
        .R(1'b0));
  FDRE data_gb_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(data_gb_q),
        .Q(data_gb),
        .R(1'b0));
  overlay1_dvi_decoder_v2_0_0_decodeb dec_b
       (.CLK(px1p25_clk),
        .CLKB0(CLKB0),
        .D({nstate[5],dec_b_n_42}),
        .Q({cstate[6:2],cstate[0]}),
        .SR(SR),
        .b_cv(b_cv),
        .b_vgb(b_vgb),
        .blue_debug(blue_debug),
        .blue_eye(blue_eye),
        .blue_n(blue_n),
        .blue_p(blue_p),
        .blue_rdy(blue_rdy),
        .blue_vld(blue_vld),
        .c1_reg_0(dec_r_n_47),
        .c1_reg_1(dec_g_n_50),
        .\cstate_reg[0] (dec_b_n_44),
        .\cstate_reg[4] (dec_b_n_43),
        .data_gb_q0(data_gb_q0),
        .de_b(de_b),
        .g_cv(g_cv),
        .g_vgb(g_vgb),
        .hsync_q2(hsync_q2),
        .iamrdy_reg(dec_g_n_48),
        .iamrdy_reg_0(green_rdy),
        .iamrdy_reg_1(red_rdy),
        .p_12_in(\des_0/dc_inst/p_12_in ),
        .psaligned_reg(clear_2),
        .psaligned_reg_0(red_vld),
        .psaligned_reg_1(green_vld),
        .r_cv(r_cv),
        .r_vgb(r_vgb),
        .rcvd_ctkn0(\cbnd/rcvd_ctkn0 ),
        .read_enable_oclk(\des_0/gb8to10/read_enable_oclk ),
        .read_reset_reg(dec_g_n_46),
        .reset_1p25(\des_0/reset_1p25 ),
        .rx_clk(px5_clk),
        .rx_clk_0(p_clk),
        .\sdout[9] ({sdout_9__s_net_1,sdout[8:0]}),
        .vsync_q2(vsync_q2));
  overlay1_dvi_decoder_v2_0_0_decodeg dec_g
       (.CLK(px1p25_clk),
        .CLKB0(CLKB0),
        .D({nstate[6],nstate[3],dec_g_n_44}),
        .\FSM_sequential_read_addra_reg[0] (dec_g_n_46),
        .\FSM_sequential_read_addra_reg[0]_0 (dec_g_n_47),
        .Q({cstate[6],cstate[3:0]}),
        .SR(SR),
        .b_cv(b_cv),
        .c1_reg_0(ctl_code_wire[3:2]),
        .\cstate_reg[6] (dec_g_n_50),
        .ctl_code_wire(ctl_code_wire[1:0]),
        .cv_q0(cv_q0),
        .data_gb_q0(data_gb_q0),
        .de_g(de_g),
        .g_cv(g_cv),
        .g_vgb(g_vgb),
        .green_debug(green_debug),
        .green_eye(green_eye),
        .green_n(green_n),
        .green_p(green_p),
        .green_rdy(green_rdy),
        .green_vld(green_vld),
        .iamrdy_reg(dec_r_n_40),
        .iamrdy_reg_0(blue_rdy),
        .iamrdy_reg_1(red_rdy),
        .p_12_in(\des_0/dc_inst/p_12_in ),
        .psaligned_reg(clear_1),
        .psaligned_reg_0(red_vld),
        .psaligned_reg_1(blue_vld),
        .r_cv(r_cv),
        .r_dgb(r_dgb),
        .rcvd_ctkn0(\cbnd/rcvd_ctkn0_0 ),
        .read_enable_oclk(\des_0/gb8to10/read_enable_oclk ),
        .read_enable_oclk_0(\des_0/gb8to10/read_enable_oclk_3 ),
        .reset_1p25(\des_0/reset_1p25 ),
        .rx_clk(px5_clk),
        .rx_clk_0(p_clk),
        .\sdout[19] (sdout[18:9]),
        .\sdout_reg[0]_0 (dec_g_n_45),
        .vgb_reg(dec_g_n_48),
        .vgb_reg_0(dec_b_n_43),
        .\wa_reg[0] (clear));
  overlay1_dvi_decoder_v2_0_0_decoder dec_r
       (.CLK(px1p25_clk),
        .CLKB0(CLKB0),
        .D({nstate[7],nstate[1:0]}),
        .Q({cstate[7:6],cstate[1:0]}),
        .SR(SR),
        .b_vgb(b_vgb),
        .basic_de(basic_de),
        .c1_reg_0(dec_g_n_50),
        .c1_reg_1(ctl_code_wire[1:0]),
        .\cstate_reg[3] (dec_b_n_44),
        .\cstate_reg[4] (dec_r_n_47),
        .\ctl_code_q_reg[3] (ctl_code_wire[3:2]),
        .de_b(de_b),
        .de_g(de_g),
        .g_vgb(g_vgb),
        .iamrdy_reg(dec_g_n_45),
        .iamrdy_reg_0(green_rdy),
        .iamrdy_reg_1(blue_rdy),
        .line_end(line_end),
        .nstate10_out(nstate10_out),
        .p_12_in(\des_0/dc_inst/p_12_in ),
        .psaligned_reg(clear),
        .psaligned_reg_0(green_vld),
        .psaligned_reg_1(blue_vld),
        .r_cv(r_cv),
        .r_dgb(r_dgb),
        .r_vgb(r_vgb),
        .rcvd_ctkn0(\cbnd/rcvd_ctkn0_0 ),
        .rcvd_ctkn0_0(\cbnd/rcvd_ctkn0 ),
        .read_enable_oclk(\des_0/gb8to10/read_enable_oclk_3 ),
        .read_reset_reg(dec_g_n_47),
        .red_debug(red_debug),
        .red_eye(red_eye),
        .red_n(red_n),
        .red_p(red_p),
        .red_rdy(red_rdy),
        .red_vld(red_vld),
        .reset_1p25(\des_0/reset_1p25 ),
        .rx_clk(px5_clk),
        .rx_clk_0(p_clk),
        .\sdout[29] (sdout[28:19]),
        .\sdout_reg[0]_0 (dec_r_n_40),
        .vgb_reg_0(dec_b_n_43),
        .\wa_reg[0] (clear_2),
        .\wa_reg[0]_0 (clear_1));
  overlay1_dvi_decoder_v2_0_0_decode_terc4 dec_t4_b
       (.D({sdout_9__s_net_1,sdout[8:0]}),
        .SR(SR),
        .blue_di(blue_di),
        .rx_clk(p_clk));
  overlay1_dvi_decoder_v2_0_0_decode_terc4_0 dec_t4_g
       (.D(sdout[18:9]),
        .SR(SR),
        .green_di(green_di),
        .rx_clk(p_clk));
  overlay1_dvi_decoder_v2_0_0_decode_terc4_1 dec_t4_r
       (.D(sdout[28:19]),
        .SR(SR),
        .red_di(red_di),
        .rx_clk(p_clk));
  LUT3 #(
    .INIT(8'hFE)) 
    encoding_i_1
       (.I0(cstate[1]),
        .I1(cstate[3]),
        .I2(cstate[2]),
        .O(encoding_i_1_n_0));
  FDRE encoding_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(encoding_i_1_n_0),
        .Q(encoding),
        .R(SR));
  FDRE encrypting_data_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(cstate[2]),
        .Q(encrypting_data_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    encrypting_video_i_1
       (.I0(de),
        .I1(SR),
        .I2(cstate[5]),
        .O(encrypting_video_i_1_n_0));
  FDRE encrypting_video_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(encrypting_video_i_1_n_0),
        .Q(de),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT2 #(
    .INIT(4'hE)) 
    hdcp_ena_INST_0
       (.I0(encrypting_data_reg_n_0),
        .I1(de),
        .O(hdcp_ena));
  FDRE hsync_q1_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(hsync_q2),
        .Q(hsync_q1),
        .R(1'b0));
  FDRE hsync_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(hsync_q1),
        .Q(hsync),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG pclkbufg
       (.I(clk_pixel_raw),
        .O(p_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("BYPASS"),
    .SIM_DEVICE("7SERIES")) 
    pclkx1p25bufg
       (.CE(1'b1),
        .CLR(1'b0),
        .I(clk_pixel_x1p25_raw),
        .O(px1p25_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG pclkx1p25bufgdbg
       (.I(clk_pixel_x1p25_dbg_raw),
        .O(px1p25_dbg_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFIO pclkx5bufio
       (.I(clk_pixel_x5_raw),
        .O(px5_clk));
  LUT2 #(
    .INIT(4'hB)) 
    reset_i_1
       (.I0(ex_reset),
        .I1(pll_lckd),
        .O(reset_i_1_n_0));
  FDRE reset_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(reset_i_1_n_0),
        .Q(SR),
        .R(1'b0));
  overlay1_dvi_decoder_v2_0_0_tmds_data_dec tmds_b
       (.blue(blue),
        .rx_clk(p_clk),
        .\sdout_reg[9] ({sdout_9__s_net_1,sdout[8:0]}));
  overlay1_dvi_decoder_v2_0_0_tmds_data_dec_2 tmds_g
       (.green(green),
        .rx_clk(p_clk),
        .sdout(sdout[18:9]));
  overlay1_dvi_decoder_v2_0_0_tmds_data_dec_3 tmds_r
       (.red(red),
        .rx_clk(p_clk),
        .sdout(sdout[28:19]));
  FDRE video_gb_q_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(nstate10_out),
        .Q(video_gb_q),
        .R(1'b0));
  FDRE video_gb_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(video_gb_q),
        .Q(video_gb),
        .R(1'b0));
  FDRE vsync_q1_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(vsync_q2),
        .Q(vsync_q1),
        .R(1'b0));
  FDRE vsync_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(vsync_q1),
        .Q(vsync),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gearbox_8_to_10" *) 
module overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10
   (read_enable_oclk,
    Q,
    rcvd_ctkn_reg,
    CLK,
    \data_out_reg[7] ,
    rx_clk,
    reset_1p25,
    read_reset_reg);
  output read_enable_oclk;
  output [9:0]Q;
  output rcvd_ctkn_reg;
  input CLK;
  input [7:0]\data_out_reg[7] ;
  input rx_clk;
  input reset_1p25;
  input [0:0]read_reset_reg;

  wire CLK;
  wire \FSM_sequential_read_addra[0]_i_1__1_n_0 ;
  wire \FSM_sequential_read_addra[1]_i_1__1_n_0 ;
  wire \FSM_sequential_read_addra[2]_i_2__1_n_0 ;
  wire [9:0]Q;
  wire [7:0]\data_out_reg[7] ;
  wire \dataout[0]_i_1_n_0 ;
  wire \dataout[1]_i_1_n_0 ;
  wire \dataout[2]_i_1_n_0 ;
  wire \dataout[3]_i_1_n_0 ;
  wire \dataout[4]_i_1_n_0 ;
  wire \dataout[5]_i_1_n_0 ;
  wire \dataout[6]_i_1_n_0 ;
  wire \dataout[7]_i_1_n_0 ;
  wire \dataout[8]_i_1_n_0 ;
  wire \dataout[9]_i_1_n_0 ;
  wire [1:0]p_0_out;
  wire [1:0]p_2_out;
  wire [1:0]p_4_out;
  wire [1:0]p_6_out;
  wire [7:0]ramouta;
  wire rcvd_ctkn_i_2__1_n_0;
  wire rcvd_ctkn_i_3__1_n_0;
  wire rcvd_ctkn_reg;
  (* RTL_KEEP = "yes" *) wire [2:0]read_addra;
  wire [3:0]read_addra_reg;
  wire [3:0]read_addrb;
  wire \read_addrb_reg_n_0_[0] ;
  wire \read_addrb_reg_n_0_[1] ;
  wire \read_addrb_reg_n_0_[2] ;
  wire \read_addrb_reg_n_0_[3] ;
  wire read_enable;
  wire read_enable_i_1__1_n_0;
  wire read_enable_oclk;
  wire [0:0]read_reset_reg;
  wire reset_1p25;
  wire rx_clk;
  wire [3:0]write_addr;
  wire \write_addr[0]_i_1__1_n_0 ;
  wire \write_addr[1]_i_1_n_0 ;
  wire \write_addr[2]_i_1_n_0 ;
  wire \write_addr[3]_i_1_n_0 ;
  wire [1:0]\NLW_loop2[0].ram_inst_DOC_UNCONNECTED ;
  wire [1:0]\NLW_loop2[0].ram_inst_DOD_UNCONNECTED ;
  wire [1:0]\NLW_loop2[1].ram_inst_DOC_UNCONNECTED ;
  wire [1:0]\NLW_loop2[1].ram_inst_DOD_UNCONNECTED ;
  wire [1:0]\NLW_loop2[2].ram_inst_DOC_UNCONNECTED ;
  wire [1:0]\NLW_loop2[2].ram_inst_DOD_UNCONNECTED ;
  wire [1:0]\NLW_loop2[3].ram_inst_DOC_UNCONNECTED ;
  wire [1:0]\NLW_loop2[3].ram_inst_DOD_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_read_addra[0]_i_1__1 
       (.I0(read_addra[0]),
        .O(\FSM_sequential_read_addra[0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_read_addra[1]_i_1__1 
       (.I0(read_addra[0]),
        .I1(read_addra[1]),
        .O(\FSM_sequential_read_addra[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \FSM_sequential_read_addra[2]_i_2__1 
       (.I0(read_addra[1]),
        .I1(read_addra[0]),
        .I2(read_addra[2]),
        .O(\FSM_sequential_read_addra[2]_i_2__1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_read_addra_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\FSM_sequential_read_addra[0]_i_1__1_n_0 ),
        .Q(read_addra[0]),
        .R(read_reset_reg));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_read_addra_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\FSM_sequential_read_addra[1]_i_1__1_n_0 ),
        .Q(read_addra[1]),
        .R(read_reset_reg));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_read_addra_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\FSM_sequential_read_addra[2]_i_2__1_n_0 ),
        .Q(read_addra[2]),
        .R(read_reset_reg));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[0]_i_1 
       (.I0(ramouta[6]),
        .I1(ramouta[4]),
        .I2(read_addra[1]),
        .I3(ramouta[2]),
        .I4(read_addra[0]),
        .I5(ramouta[0]),
        .O(\dataout[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[1]_i_1 
       (.I0(ramouta[7]),
        .I1(ramouta[5]),
        .I2(read_addra[1]),
        .I3(ramouta[3]),
        .I4(read_addra[0]),
        .I5(ramouta[1]),
        .O(\dataout[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[2]_i_1 
       (.I0(p_6_out[0]),
        .I1(ramouta[6]),
        .I2(read_addra[1]),
        .I3(ramouta[4]),
        .I4(read_addra[0]),
        .I5(ramouta[2]),
        .O(\dataout[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[3]_i_1 
       (.I0(p_6_out[1]),
        .I1(ramouta[7]),
        .I2(read_addra[1]),
        .I3(ramouta[5]),
        .I4(read_addra[0]),
        .I5(ramouta[3]),
        .O(\dataout[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[4]_i_1 
       (.I0(p_4_out[0]),
        .I1(p_6_out[0]),
        .I2(read_addra[1]),
        .I3(ramouta[6]),
        .I4(read_addra[0]),
        .I5(ramouta[4]),
        .O(\dataout[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[5]_i_1 
       (.I0(p_4_out[1]),
        .I1(p_6_out[1]),
        .I2(read_addra[1]),
        .I3(ramouta[7]),
        .I4(read_addra[0]),
        .I5(ramouta[5]),
        .O(\dataout[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[6]_i_1 
       (.I0(p_2_out[0]),
        .I1(p_4_out[0]),
        .I2(read_addra[1]),
        .I3(p_6_out[0]),
        .I4(read_addra[0]),
        .I5(ramouta[6]),
        .O(\dataout[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[7]_i_1 
       (.I0(p_2_out[1]),
        .I1(p_4_out[1]),
        .I2(read_addra[1]),
        .I3(p_6_out[1]),
        .I4(read_addra[0]),
        .I5(ramouta[7]),
        .O(\dataout[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[8]_i_1 
       (.I0(p_0_out[0]),
        .I1(p_2_out[0]),
        .I2(read_addra[1]),
        .I3(p_4_out[0]),
        .I4(read_addra[0]),
        .I5(p_6_out[0]),
        .O(\dataout[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[9]_i_1 
       (.I0(p_0_out[1]),
        .I1(p_2_out[1]),
        .I2(read_addra[1]),
        .I3(p_4_out[1]),
        .I4(read_addra[0]),
        .I5(p_6_out[1]),
        .O(\dataout[9]_i_1_n_0 ));
  FDRE \dataout_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \dataout_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \dataout_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \dataout_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \dataout_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \dataout_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \dataout_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \dataout_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \dataout_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \dataout_reg[9] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \loop2[0].ram_inst 
       (.ADDRA({1'b0,read_addra_reg}),
        .ADDRB({1'b0,\read_addrb_reg_n_0_[3] ,\read_addrb_reg_n_0_[2] ,\read_addrb_reg_n_0_[1] ,\read_addrb_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRD({1'b0,write_addr}),
        .DIA(\data_out_reg[7] [1:0]),
        .DIB(\data_out_reg[7] [1:0]),
        .DIC(\data_out_reg[7] [1:0]),
        .DID(\data_out_reg[7] [1:0]),
        .DOA(ramouta[1:0]),
        .DOB(p_6_out),
        .DOC(\NLW_loop2[0].ram_inst_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_loop2[0].ram_inst_DOD_UNCONNECTED [1:0]),
        .WCLK(CLK),
        .WE(1'b1));
  LUT3 #(
    .INIT(8'h80)) 
    \loop2[0].ram_inst_i_1 
       (.I0(read_addra[1]),
        .I1(read_addra[0]),
        .I2(read_addra[2]),
        .O(read_addra_reg[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    \loop2[0].ram_inst_i_2 
       (.I0(read_addra[2]),
        .I1(read_addra[1]),
        .I2(read_addra[0]),
        .O(read_addra_reg[2]));
  LUT3 #(
    .INIT(8'h78)) 
    \loop2[0].ram_inst_i_3 
       (.I0(read_addra[2]),
        .I1(read_addra[0]),
        .I2(read_addra[1]),
        .O(read_addra_reg[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \loop2[0].ram_inst_i_4 
       (.I0(read_addra[0]),
        .I1(read_addra[2]),
        .O(read_addra_reg[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \loop2[1].ram_inst 
       (.ADDRA({1'b0,read_addra_reg}),
        .ADDRB({1'b0,\read_addrb_reg_n_0_[3] ,\read_addrb_reg_n_0_[2] ,\read_addrb_reg_n_0_[1] ,\read_addrb_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRD({1'b0,write_addr}),
        .DIA(\data_out_reg[7] [3:2]),
        .DIB(\data_out_reg[7] [3:2]),
        .DIC(\data_out_reg[7] [3:2]),
        .DID(\data_out_reg[7] [3:2]),
        .DOA(ramouta[3:2]),
        .DOB(p_4_out),
        .DOC(\NLW_loop2[1].ram_inst_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_loop2[1].ram_inst_DOD_UNCONNECTED [1:0]),
        .WCLK(CLK),
        .WE(1'b1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \loop2[2].ram_inst 
       (.ADDRA({1'b0,read_addra_reg}),
        .ADDRB({1'b0,\read_addrb_reg_n_0_[3] ,\read_addrb_reg_n_0_[2] ,\read_addrb_reg_n_0_[1] ,\read_addrb_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRD({1'b0,write_addr}),
        .DIA(\data_out_reg[7] [5:4]),
        .DIB(\data_out_reg[7] [5:4]),
        .DIC(\data_out_reg[7] [5:4]),
        .DID(\data_out_reg[7] [5:4]),
        .DOA(ramouta[5:4]),
        .DOB(p_2_out),
        .DOC(\NLW_loop2[2].ram_inst_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_loop2[2].ram_inst_DOD_UNCONNECTED [1:0]),
        .WCLK(CLK),
        .WE(1'b1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \loop2[3].ram_inst 
       (.ADDRA({1'b0,read_addra_reg}),
        .ADDRB({1'b0,\read_addrb_reg_n_0_[3] ,\read_addrb_reg_n_0_[2] ,\read_addrb_reg_n_0_[1] ,\read_addrb_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRD({1'b0,write_addr}),
        .DIA(\data_out_reg[7] [7:6]),
        .DIB(\data_out_reg[7] [7:6]),
        .DIC(\data_out_reg[7] [7:6]),
        .DID(\data_out_reg[7] [7:6]),
        .DOA(ramouta[7:6]),
        .DOB(p_0_out),
        .DOC(\NLW_loop2[3].ram_inst_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_loop2[3].ram_inst_DOD_UNCONNECTED [1:0]),
        .WCLK(CLK),
        .WE(1'b1));
  LUT5 #(
    .INIT(32'h80800300)) 
    rcvd_ctkn_i_1__1
       (.I0(rcvd_ctkn_i_2__1_n_0),
        .I1(Q[6]),
        .I2(Q[8]),
        .I3(rcvd_ctkn_i_3__1_n_0),
        .I4(Q[4]),
        .O(rcvd_ctkn_reg));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    rcvd_ctkn_i_2__1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[2]),
        .O(rcvd_ctkn_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    rcvd_ctkn_i_3__1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[2]),
        .O(rcvd_ctkn_i_3__1_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    \read_addrb[0]_i_1 
       (.I0(read_addra[1]),
        .I1(read_addra[0]),
        .I2(read_addra[2]),
        .O(read_addrb[0]));
  LUT3 #(
    .INIT(8'h1D)) 
    \read_addrb[1]_i_1 
       (.I0(read_addra[1]),
        .I1(read_addra[0]),
        .I2(read_addra[2]),
        .O(read_addrb[1]));
  LUT3 #(
    .INIT(8'h26)) 
    \read_addrb[2]_i_1 
       (.I0(read_addra[1]),
        .I1(read_addra[2]),
        .I2(read_addra[0]),
        .O(read_addrb[2]));
  LUT3 #(
    .INIT(8'h28)) 
    \read_addrb[3]_i_1 
       (.I0(read_addra[2]),
        .I1(read_addra[1]),
        .I2(read_addra[0]),
        .O(read_addrb[3]));
  FDSE \read_addrb_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(read_addrb[0]),
        .Q(\read_addrb_reg_n_0_[0] ),
        .S(read_reset_reg));
  FDRE \read_addrb_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(read_addrb[1]),
        .Q(\read_addrb_reg_n_0_[1] ),
        .R(read_reset_reg));
  FDRE \read_addrb_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(read_addrb[2]),
        .Q(\read_addrb_reg_n_0_[2] ),
        .R(read_reset_reg));
  FDRE \read_addrb_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(read_addrb[3]),
        .Q(\read_addrb_reg_n_0_[3] ),
        .R(read_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    read_enable_i_1__1
       (.I0(write_addr[2]),
        .I1(write_addr[3]),
        .I2(write_addr[1]),
        .I3(write_addr[0]),
        .I4(read_enable),
        .O(read_enable_i_1__1_n_0));
  FDRE read_enable_oclk_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(read_enable),
        .Q(read_enable_oclk),
        .R(1'b0));
  FDRE read_enable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(read_enable_i_1__1_n_0),
        .Q(read_enable),
        .R(reset_1p25));
  LUT1 #(
    .INIT(2'h1)) 
    \write_addr[0]_i_1__1 
       (.I0(write_addr[0]),
        .O(\write_addr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT4 #(
    .INIT(16'h2C3C)) 
    \write_addr[1]_i_1 
       (.I0(write_addr[2]),
        .I1(write_addr[1]),
        .I2(write_addr[0]),
        .I3(write_addr[3]),
        .O(\write_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \write_addr[2]_i_1 
       (.I0(write_addr[2]),
        .I1(write_addr[1]),
        .I2(write_addr[0]),
        .O(\write_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \write_addr[3]_i_1 
       (.I0(write_addr[2]),
        .I1(write_addr[1]),
        .I2(write_addr[0]),
        .I3(write_addr[3]),
        .O(\write_addr[3]_i_1_n_0 ));
  FDRE \write_addr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[0]_i_1__1_n_0 ),
        .Q(write_addr[0]),
        .R(reset_1p25));
  FDRE \write_addr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[1]_i_1_n_0 ),
        .Q(write_addr[1]),
        .R(reset_1p25));
  FDRE \write_addr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[2]_i_1_n_0 ),
        .Q(write_addr[2]),
        .R(reset_1p25));
  FDRE \write_addr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[3]_i_1_n_0 ),
        .Q(write_addr[3]),
        .R(reset_1p25));
endmodule

(* ORIG_REF_NAME = "gearbox_8_to_10" *) 
module overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10_14
   (read_enable_oclk,
    Q,
    rcvd_ctkn_reg,
    CLK,
    \data_out_reg[7] ,
    rx_clk,
    reset_1p25,
    read_reset_reg);
  output read_enable_oclk;
  output [9:0]Q;
  output rcvd_ctkn_reg;
  input CLK;
  input [7:0]\data_out_reg[7] ;
  input rx_clk;
  input reset_1p25;
  input [0:0]read_reset_reg;

  wire CLK;
  wire \FSM_sequential_read_addra[0]_i_1_n_0 ;
  wire \FSM_sequential_read_addra[1]_i_1_n_0 ;
  wire \FSM_sequential_read_addra[2]_i_2_n_0 ;
  wire [9:0]Q;
  wire [7:0]\data_out_reg[7] ;
  wire \dataout[0]_i_1_n_0 ;
  wire \dataout[1]_i_1_n_0 ;
  wire \dataout[2]_i_1_n_0 ;
  wire \dataout[3]_i_1_n_0 ;
  wire \dataout[4]_i_1_n_0 ;
  wire \dataout[5]_i_1_n_0 ;
  wire \dataout[6]_i_1_n_0 ;
  wire \dataout[7]_i_1_n_0 ;
  wire \dataout[8]_i_1_n_0 ;
  wire \dataout[9]_i_1_n_0 ;
  wire [1:0]p_0_out;
  wire [1:0]p_2_out;
  wire [1:0]p_4_out;
  wire [1:0]p_6_out;
  wire [7:0]ramouta;
  wire rcvd_ctkn_i_2_n_0;
  wire rcvd_ctkn_i_3_n_0;
  wire rcvd_ctkn_reg;
  (* RTL_KEEP = "yes" *) wire [2:0]read_addra;
  wire [3:0]read_addra_reg;
  wire [3:0]read_addrb;
  wire \read_addrb_reg_n_0_[0] ;
  wire \read_addrb_reg_n_0_[1] ;
  wire \read_addrb_reg_n_0_[2] ;
  wire \read_addrb_reg_n_0_[3] ;
  wire read_enable;
  wire read_enable_i_1_n_0;
  wire read_enable_oclk;
  wire [0:0]read_reset_reg;
  wire reset_1p25;
  wire rx_clk;
  wire [3:0]write_addr;
  wire \write_addr[0]_i_1_n_0 ;
  wire \write_addr[1]_i_1_n_0 ;
  wire \write_addr[2]_i_1_n_0 ;
  wire \write_addr[3]_i_1_n_0 ;
  wire [1:0]\NLW_loop2[0].ram_inst_DOC_UNCONNECTED ;
  wire [1:0]\NLW_loop2[0].ram_inst_DOD_UNCONNECTED ;
  wire [1:0]\NLW_loop2[1].ram_inst_DOC_UNCONNECTED ;
  wire [1:0]\NLW_loop2[1].ram_inst_DOD_UNCONNECTED ;
  wire [1:0]\NLW_loop2[2].ram_inst_DOC_UNCONNECTED ;
  wire [1:0]\NLW_loop2[2].ram_inst_DOD_UNCONNECTED ;
  wire [1:0]\NLW_loop2[3].ram_inst_DOC_UNCONNECTED ;
  wire [1:0]\NLW_loop2[3].ram_inst_DOD_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_read_addra[0]_i_1 
       (.I0(read_addra[0]),
        .O(\FSM_sequential_read_addra[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_read_addra[1]_i_1 
       (.I0(read_addra[0]),
        .I1(read_addra[1]),
        .O(\FSM_sequential_read_addra[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \FSM_sequential_read_addra[2]_i_2 
       (.I0(read_addra[1]),
        .I1(read_addra[0]),
        .I2(read_addra[2]),
        .O(\FSM_sequential_read_addra[2]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_read_addra_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\FSM_sequential_read_addra[0]_i_1_n_0 ),
        .Q(read_addra[0]),
        .R(read_reset_reg));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_read_addra_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\FSM_sequential_read_addra[1]_i_1_n_0 ),
        .Q(read_addra[1]),
        .R(read_reset_reg));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_read_addra_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\FSM_sequential_read_addra[2]_i_2_n_0 ),
        .Q(read_addra[2]),
        .R(read_reset_reg));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[0]_i_1 
       (.I0(ramouta[6]),
        .I1(ramouta[4]),
        .I2(read_addra[1]),
        .I3(ramouta[2]),
        .I4(read_addra[0]),
        .I5(ramouta[0]),
        .O(\dataout[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[1]_i_1 
       (.I0(ramouta[7]),
        .I1(ramouta[5]),
        .I2(read_addra[1]),
        .I3(ramouta[3]),
        .I4(read_addra[0]),
        .I5(ramouta[1]),
        .O(\dataout[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[2]_i_1 
       (.I0(p_6_out[0]),
        .I1(ramouta[6]),
        .I2(read_addra[1]),
        .I3(ramouta[4]),
        .I4(read_addra[0]),
        .I5(ramouta[2]),
        .O(\dataout[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[3]_i_1 
       (.I0(p_6_out[1]),
        .I1(ramouta[7]),
        .I2(read_addra[1]),
        .I3(ramouta[5]),
        .I4(read_addra[0]),
        .I5(ramouta[3]),
        .O(\dataout[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[4]_i_1 
       (.I0(p_4_out[0]),
        .I1(p_6_out[0]),
        .I2(read_addra[1]),
        .I3(ramouta[6]),
        .I4(read_addra[0]),
        .I5(ramouta[4]),
        .O(\dataout[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[5]_i_1 
       (.I0(p_4_out[1]),
        .I1(p_6_out[1]),
        .I2(read_addra[1]),
        .I3(ramouta[7]),
        .I4(read_addra[0]),
        .I5(ramouta[5]),
        .O(\dataout[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[6]_i_1 
       (.I0(p_2_out[0]),
        .I1(p_4_out[0]),
        .I2(read_addra[1]),
        .I3(p_6_out[0]),
        .I4(read_addra[0]),
        .I5(ramouta[6]),
        .O(\dataout[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[7]_i_1 
       (.I0(p_2_out[1]),
        .I1(p_4_out[1]),
        .I2(read_addra[1]),
        .I3(p_6_out[1]),
        .I4(read_addra[0]),
        .I5(ramouta[7]),
        .O(\dataout[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[8]_i_1 
       (.I0(p_0_out[0]),
        .I1(p_2_out[0]),
        .I2(read_addra[1]),
        .I3(p_4_out[0]),
        .I4(read_addra[0]),
        .I5(p_6_out[0]),
        .O(\dataout[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[9]_i_1 
       (.I0(p_0_out[1]),
        .I1(p_2_out[1]),
        .I2(read_addra[1]),
        .I3(p_4_out[1]),
        .I4(read_addra[0]),
        .I5(p_6_out[1]),
        .O(\dataout[9]_i_1_n_0 ));
  FDRE \dataout_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \dataout_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \dataout_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \dataout_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \dataout_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \dataout_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \dataout_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \dataout_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \dataout_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \dataout_reg[9] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \loop2[0].ram_inst 
       (.ADDRA({1'b0,read_addra_reg}),
        .ADDRB({1'b0,\read_addrb_reg_n_0_[3] ,\read_addrb_reg_n_0_[2] ,\read_addrb_reg_n_0_[1] ,\read_addrb_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRD({1'b0,write_addr}),
        .DIA(\data_out_reg[7] [1:0]),
        .DIB(\data_out_reg[7] [1:0]),
        .DIC(\data_out_reg[7] [1:0]),
        .DID(\data_out_reg[7] [1:0]),
        .DOA(ramouta[1:0]),
        .DOB(p_6_out),
        .DOC(\NLW_loop2[0].ram_inst_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_loop2[0].ram_inst_DOD_UNCONNECTED [1:0]),
        .WCLK(CLK),
        .WE(1'b1));
  LUT3 #(
    .INIT(8'h80)) 
    \loop2[0].ram_inst_i_1 
       (.I0(read_addra[1]),
        .I1(read_addra[0]),
        .I2(read_addra[2]),
        .O(read_addra_reg[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    \loop2[0].ram_inst_i_2 
       (.I0(read_addra[2]),
        .I1(read_addra[1]),
        .I2(read_addra[0]),
        .O(read_addra_reg[2]));
  LUT3 #(
    .INIT(8'h78)) 
    \loop2[0].ram_inst_i_3 
       (.I0(read_addra[2]),
        .I1(read_addra[0]),
        .I2(read_addra[1]),
        .O(read_addra_reg[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \loop2[0].ram_inst_i_4 
       (.I0(read_addra[0]),
        .I1(read_addra[2]),
        .O(read_addra_reg[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \loop2[1].ram_inst 
       (.ADDRA({1'b0,read_addra_reg}),
        .ADDRB({1'b0,\read_addrb_reg_n_0_[3] ,\read_addrb_reg_n_0_[2] ,\read_addrb_reg_n_0_[1] ,\read_addrb_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRD({1'b0,write_addr}),
        .DIA(\data_out_reg[7] [3:2]),
        .DIB(\data_out_reg[7] [3:2]),
        .DIC(\data_out_reg[7] [3:2]),
        .DID(\data_out_reg[7] [3:2]),
        .DOA(ramouta[3:2]),
        .DOB(p_4_out),
        .DOC(\NLW_loop2[1].ram_inst_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_loop2[1].ram_inst_DOD_UNCONNECTED [1:0]),
        .WCLK(CLK),
        .WE(1'b1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \loop2[2].ram_inst 
       (.ADDRA({1'b0,read_addra_reg}),
        .ADDRB({1'b0,\read_addrb_reg_n_0_[3] ,\read_addrb_reg_n_0_[2] ,\read_addrb_reg_n_0_[1] ,\read_addrb_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRD({1'b0,write_addr}),
        .DIA(\data_out_reg[7] [5:4]),
        .DIB(\data_out_reg[7] [5:4]),
        .DIC(\data_out_reg[7] [5:4]),
        .DID(\data_out_reg[7] [5:4]),
        .DOA(ramouta[5:4]),
        .DOB(p_2_out),
        .DOC(\NLW_loop2[2].ram_inst_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_loop2[2].ram_inst_DOD_UNCONNECTED [1:0]),
        .WCLK(CLK),
        .WE(1'b1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \loop2[3].ram_inst 
       (.ADDRA({1'b0,read_addra_reg}),
        .ADDRB({1'b0,\read_addrb_reg_n_0_[3] ,\read_addrb_reg_n_0_[2] ,\read_addrb_reg_n_0_[1] ,\read_addrb_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRD({1'b0,write_addr}),
        .DIA(\data_out_reg[7] [7:6]),
        .DIB(\data_out_reg[7] [7:6]),
        .DIC(\data_out_reg[7] [7:6]),
        .DID(\data_out_reg[7] [7:6]),
        .DOA(ramouta[7:6]),
        .DOB(p_0_out),
        .DOC(\NLW_loop2[3].ram_inst_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_loop2[3].ram_inst_DOD_UNCONNECTED [1:0]),
        .WCLK(CLK),
        .WE(1'b1));
  LUT5 #(
    .INIT(32'h80800300)) 
    rcvd_ctkn_i_1
       (.I0(rcvd_ctkn_i_2_n_0),
        .I1(Q[6]),
        .I2(Q[8]),
        .I3(rcvd_ctkn_i_3_n_0),
        .I4(Q[4]),
        .O(rcvd_ctkn_reg));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    rcvd_ctkn_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[2]),
        .O(rcvd_ctkn_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    rcvd_ctkn_i_3
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[2]),
        .O(rcvd_ctkn_i_3_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    \read_addrb[0]_i_1 
       (.I0(read_addra[1]),
        .I1(read_addra[0]),
        .I2(read_addra[2]),
        .O(read_addrb[0]));
  LUT3 #(
    .INIT(8'h1D)) 
    \read_addrb[1]_i_1 
       (.I0(read_addra[1]),
        .I1(read_addra[0]),
        .I2(read_addra[2]),
        .O(read_addrb[1]));
  LUT3 #(
    .INIT(8'h26)) 
    \read_addrb[2]_i_1 
       (.I0(read_addra[1]),
        .I1(read_addra[2]),
        .I2(read_addra[0]),
        .O(read_addrb[2]));
  LUT3 #(
    .INIT(8'h28)) 
    \read_addrb[3]_i_1 
       (.I0(read_addra[2]),
        .I1(read_addra[1]),
        .I2(read_addra[0]),
        .O(read_addrb[3]));
  FDSE \read_addrb_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(read_addrb[0]),
        .Q(\read_addrb_reg_n_0_[0] ),
        .S(read_reset_reg));
  FDRE \read_addrb_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(read_addrb[1]),
        .Q(\read_addrb_reg_n_0_[1] ),
        .R(read_reset_reg));
  FDRE \read_addrb_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(read_addrb[2]),
        .Q(\read_addrb_reg_n_0_[2] ),
        .R(read_reset_reg));
  FDRE \read_addrb_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(read_addrb[3]),
        .Q(\read_addrb_reg_n_0_[3] ),
        .R(read_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    read_enable_i_1
       (.I0(write_addr[2]),
        .I1(write_addr[3]),
        .I2(write_addr[1]),
        .I3(write_addr[0]),
        .I4(read_enable),
        .O(read_enable_i_1_n_0));
  FDRE read_enable_oclk_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(read_enable),
        .Q(read_enable_oclk),
        .R(1'b0));
  FDRE read_enable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(read_enable_i_1_n_0),
        .Q(read_enable),
        .R(reset_1p25));
  LUT1 #(
    .INIT(2'h1)) 
    \write_addr[0]_i_1 
       (.I0(write_addr[0]),
        .O(\write_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h2C3C)) 
    \write_addr[1]_i_1 
       (.I0(write_addr[2]),
        .I1(write_addr[1]),
        .I2(write_addr[0]),
        .I3(write_addr[3]),
        .O(\write_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \write_addr[2]_i_1 
       (.I0(write_addr[2]),
        .I1(write_addr[1]),
        .I2(write_addr[0]),
        .O(\write_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \write_addr[3]_i_1 
       (.I0(write_addr[2]),
        .I1(write_addr[1]),
        .I2(write_addr[0]),
        .I3(write_addr[3]),
        .O(\write_addr[3]_i_1_n_0 ));
  FDRE \write_addr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[0]_i_1_n_0 ),
        .Q(write_addr[0]),
        .R(reset_1p25));
  FDRE \write_addr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[1]_i_1_n_0 ),
        .Q(write_addr[1]),
        .R(reset_1p25));
  FDRE \write_addr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[2]_i_1_n_0 ),
        .Q(write_addr[2]),
        .R(reset_1p25));
  FDRE \write_addr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[3]_i_1_n_0 ),
        .Q(write_addr[3]),
        .R(reset_1p25));
endmodule

(* ORIG_REF_NAME = "gearbox_8_to_10" *) 
module overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10_8
   (\FSM_sequential_read_addra_reg[0]_0 ,
    \FSM_sequential_read_addra_reg[0]_1 ,
    Q,
    rcvd_ctkn_reg,
    CLK,
    \data_out_reg[7] ,
    rx_clk,
    reset_reg,
    SR,
    read_enable_oclk,
    read_enable_oclk_0);
  output [0:0]\FSM_sequential_read_addra_reg[0]_0 ;
  output [0:0]\FSM_sequential_read_addra_reg[0]_1 ;
  output [9:0]Q;
  output rcvd_ctkn_reg;
  input CLK;
  input [7:0]\data_out_reg[7] ;
  input rx_clk;
  input [0:0]reset_reg;
  input [0:0]SR;
  input read_enable_oclk;
  input read_enable_oclk_0;

  wire CLK;
  wire \FSM_sequential_read_addra[0]_i_1__0_n_0 ;
  wire \FSM_sequential_read_addra[1]_i_1__0_n_0 ;
  wire \FSM_sequential_read_addra[2]_i_1__0_n_0 ;
  wire \FSM_sequential_read_addra[2]_i_2__0_n_0 ;
  wire [0:0]\FSM_sequential_read_addra_reg[0]_0 ;
  wire [0:0]\FSM_sequential_read_addra_reg[0]_1 ;
  wire [9:0]Q;
  wire [0:0]SR;
  wire [7:0]\data_out_reg[7] ;
  wire \dataout[0]_i_1_n_0 ;
  wire \dataout[1]_i_1_n_0 ;
  wire \dataout[2]_i_1_n_0 ;
  wire \dataout[3]_i_1_n_0 ;
  wire \dataout[4]_i_1_n_0 ;
  wire \dataout[5]_i_1_n_0 ;
  wire \dataout[6]_i_1_n_0 ;
  wire \dataout[7]_i_1_n_0 ;
  wire \dataout[8]_i_1_n_0 ;
  wire \dataout[9]_i_1_n_0 ;
  wire [1:0]p_0_out;
  wire [1:0]p_2_out;
  wire [1:0]p_4_out;
  wire [1:0]p_6_out;
  wire [7:0]ramouta;
  wire rcvd_ctkn_i_2__0_n_0;
  wire rcvd_ctkn_i_3__0_n_0;
  wire rcvd_ctkn_reg;
  (* RTL_KEEP = "yes" *) wire [2:0]read_addra;
  wire [3:0]read_addra_reg;
  wire [3:0]read_addrb;
  wire \read_addrb_reg_n_0_[0] ;
  wire \read_addrb_reg_n_0_[1] ;
  wire \read_addrb_reg_n_0_[2] ;
  wire \read_addrb_reg_n_0_[3] ;
  wire read_enable;
  wire read_enable_i_1__0_n_0;
  wire read_enable_oclk;
  wire read_enable_oclk_0;
  wire read_enable_oclk_1;
  wire read_reset;
  wire [0:0]reset_reg;
  wire rx_clk;
  wire [3:0]write_addr;
  wire \write_addr[0]_i_1__0_n_0 ;
  wire \write_addr[1]_i_1_n_0 ;
  wire \write_addr[2]_i_1_n_0 ;
  wire \write_addr[3]_i_1_n_0 ;
  wire [1:0]\NLW_loop2[0].ram_inst_DOC_UNCONNECTED ;
  wire [1:0]\NLW_loop2[0].ram_inst_DOD_UNCONNECTED ;
  wire [1:0]\NLW_loop2[1].ram_inst_DOC_UNCONNECTED ;
  wire [1:0]\NLW_loop2[1].ram_inst_DOD_UNCONNECTED ;
  wire [1:0]\NLW_loop2[2].ram_inst_DOC_UNCONNECTED ;
  wire [1:0]\NLW_loop2[2].ram_inst_DOD_UNCONNECTED ;
  wire [1:0]\NLW_loop2[3].ram_inst_DOC_UNCONNECTED ;
  wire [1:0]\NLW_loop2[3].ram_inst_DOD_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_read_addra[0]_i_1__0 
       (.I0(read_addra[0]),
        .O(\FSM_sequential_read_addra[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_read_addra[1]_i_1__0 
       (.I0(read_addra[0]),
        .I1(read_addra[1]),
        .O(\FSM_sequential_read_addra[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_read_addra[2]_i_1 
       (.I0(read_reset),
        .I1(read_enable_oclk),
        .O(\FSM_sequential_read_addra_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_read_addra[2]_i_1__0 
       (.I0(read_reset),
        .I1(read_enable_oclk_1),
        .O(\FSM_sequential_read_addra[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_read_addra[2]_i_1__1 
       (.I0(read_reset),
        .I1(read_enable_oclk_0),
        .O(\FSM_sequential_read_addra_reg[0]_1 ));
  LUT3 #(
    .INIT(8'h78)) 
    \FSM_sequential_read_addra[2]_i_2__0 
       (.I0(read_addra[1]),
        .I1(read_addra[0]),
        .I2(read_addra[2]),
        .O(\FSM_sequential_read_addra[2]_i_2__0_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_read_addra_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\FSM_sequential_read_addra[0]_i_1__0_n_0 ),
        .Q(read_addra[0]),
        .R(\FSM_sequential_read_addra[2]_i_1__0_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_read_addra_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\FSM_sequential_read_addra[1]_i_1__0_n_0 ),
        .Q(read_addra[1]),
        .R(\FSM_sequential_read_addra[2]_i_1__0_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_read_addra_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\FSM_sequential_read_addra[2]_i_2__0_n_0 ),
        .Q(read_addra[2]),
        .R(\FSM_sequential_read_addra[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[0]_i_1 
       (.I0(ramouta[6]),
        .I1(ramouta[4]),
        .I2(read_addra[1]),
        .I3(ramouta[2]),
        .I4(read_addra[0]),
        .I5(ramouta[0]),
        .O(\dataout[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[1]_i_1 
       (.I0(ramouta[7]),
        .I1(ramouta[5]),
        .I2(read_addra[1]),
        .I3(ramouta[3]),
        .I4(read_addra[0]),
        .I5(ramouta[1]),
        .O(\dataout[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[2]_i_1 
       (.I0(p_6_out[0]),
        .I1(ramouta[6]),
        .I2(read_addra[1]),
        .I3(ramouta[4]),
        .I4(read_addra[0]),
        .I5(ramouta[2]),
        .O(\dataout[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[3]_i_1 
       (.I0(p_6_out[1]),
        .I1(ramouta[7]),
        .I2(read_addra[1]),
        .I3(ramouta[5]),
        .I4(read_addra[0]),
        .I5(ramouta[3]),
        .O(\dataout[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[4]_i_1 
       (.I0(p_4_out[0]),
        .I1(p_6_out[0]),
        .I2(read_addra[1]),
        .I3(ramouta[6]),
        .I4(read_addra[0]),
        .I5(ramouta[4]),
        .O(\dataout[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[5]_i_1 
       (.I0(p_4_out[1]),
        .I1(p_6_out[1]),
        .I2(read_addra[1]),
        .I3(ramouta[7]),
        .I4(read_addra[0]),
        .I5(ramouta[5]),
        .O(\dataout[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[6]_i_1 
       (.I0(p_2_out[0]),
        .I1(p_4_out[0]),
        .I2(read_addra[1]),
        .I3(p_6_out[0]),
        .I4(read_addra[0]),
        .I5(ramouta[6]),
        .O(\dataout[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[7]_i_1 
       (.I0(p_2_out[1]),
        .I1(p_4_out[1]),
        .I2(read_addra[1]),
        .I3(p_6_out[1]),
        .I4(read_addra[0]),
        .I5(ramouta[7]),
        .O(\dataout[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[8]_i_1 
       (.I0(p_0_out[0]),
        .I1(p_2_out[0]),
        .I2(read_addra[1]),
        .I3(p_4_out[0]),
        .I4(read_addra[0]),
        .I5(p_6_out[0]),
        .O(\dataout[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[9]_i_1 
       (.I0(p_0_out[1]),
        .I1(p_2_out[1]),
        .I2(read_addra[1]),
        .I3(p_4_out[1]),
        .I4(read_addra[0]),
        .I5(p_6_out[1]),
        .O(\dataout[9]_i_1_n_0 ));
  FDRE \dataout_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \dataout_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \dataout_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \dataout_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \dataout_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \dataout_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \dataout_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \dataout_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \dataout_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \dataout_reg[9] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \loop2[0].ram_inst 
       (.ADDRA({1'b0,read_addra_reg}),
        .ADDRB({1'b0,\read_addrb_reg_n_0_[3] ,\read_addrb_reg_n_0_[2] ,\read_addrb_reg_n_0_[1] ,\read_addrb_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRD({1'b0,write_addr}),
        .DIA(\data_out_reg[7] [1:0]),
        .DIB(\data_out_reg[7] [1:0]),
        .DIC(\data_out_reg[7] [1:0]),
        .DID(\data_out_reg[7] [1:0]),
        .DOA(ramouta[1:0]),
        .DOB(p_6_out),
        .DOC(\NLW_loop2[0].ram_inst_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_loop2[0].ram_inst_DOD_UNCONNECTED [1:0]),
        .WCLK(CLK),
        .WE(1'b1));
  LUT3 #(
    .INIT(8'h80)) 
    \loop2[0].ram_inst_i_1 
       (.I0(read_addra[1]),
        .I1(read_addra[0]),
        .I2(read_addra[2]),
        .O(read_addra_reg[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    \loop2[0].ram_inst_i_2 
       (.I0(read_addra[2]),
        .I1(read_addra[1]),
        .I2(read_addra[0]),
        .O(read_addra_reg[2]));
  LUT3 #(
    .INIT(8'h78)) 
    \loop2[0].ram_inst_i_3 
       (.I0(read_addra[2]),
        .I1(read_addra[0]),
        .I2(read_addra[1]),
        .O(read_addra_reg[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \loop2[0].ram_inst_i_4 
       (.I0(read_addra[0]),
        .I1(read_addra[2]),
        .O(read_addra_reg[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \loop2[1].ram_inst 
       (.ADDRA({1'b0,read_addra_reg}),
        .ADDRB({1'b0,\read_addrb_reg_n_0_[3] ,\read_addrb_reg_n_0_[2] ,\read_addrb_reg_n_0_[1] ,\read_addrb_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRD({1'b0,write_addr}),
        .DIA(\data_out_reg[7] [3:2]),
        .DIB(\data_out_reg[7] [3:2]),
        .DIC(\data_out_reg[7] [3:2]),
        .DID(\data_out_reg[7] [3:2]),
        .DOA(ramouta[3:2]),
        .DOB(p_4_out),
        .DOC(\NLW_loop2[1].ram_inst_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_loop2[1].ram_inst_DOD_UNCONNECTED [1:0]),
        .WCLK(CLK),
        .WE(1'b1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \loop2[2].ram_inst 
       (.ADDRA({1'b0,read_addra_reg}),
        .ADDRB({1'b0,\read_addrb_reg_n_0_[3] ,\read_addrb_reg_n_0_[2] ,\read_addrb_reg_n_0_[1] ,\read_addrb_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRD({1'b0,write_addr}),
        .DIA(\data_out_reg[7] [5:4]),
        .DIB(\data_out_reg[7] [5:4]),
        .DIC(\data_out_reg[7] [5:4]),
        .DID(\data_out_reg[7] [5:4]),
        .DOA(ramouta[5:4]),
        .DOB(p_2_out),
        .DOC(\NLW_loop2[2].ram_inst_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_loop2[2].ram_inst_DOD_UNCONNECTED [1:0]),
        .WCLK(CLK),
        .WE(1'b1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \loop2[3].ram_inst 
       (.ADDRA({1'b0,read_addra_reg}),
        .ADDRB({1'b0,\read_addrb_reg_n_0_[3] ,\read_addrb_reg_n_0_[2] ,\read_addrb_reg_n_0_[1] ,\read_addrb_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRD({1'b0,write_addr}),
        .DIA(\data_out_reg[7] [7:6]),
        .DIB(\data_out_reg[7] [7:6]),
        .DIC(\data_out_reg[7] [7:6]),
        .DID(\data_out_reg[7] [7:6]),
        .DOA(ramouta[7:6]),
        .DOB(p_0_out),
        .DOC(\NLW_loop2[3].ram_inst_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_loop2[3].ram_inst_DOD_UNCONNECTED [1:0]),
        .WCLK(CLK),
        .WE(1'b1));
  LUT5 #(
    .INIT(32'h80800300)) 
    rcvd_ctkn_i_1__0
       (.I0(rcvd_ctkn_i_2__0_n_0),
        .I1(Q[6]),
        .I2(Q[8]),
        .I3(rcvd_ctkn_i_3__0_n_0),
        .I4(Q[4]),
        .O(rcvd_ctkn_reg));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    rcvd_ctkn_i_2__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[2]),
        .O(rcvd_ctkn_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    rcvd_ctkn_i_3__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[2]),
        .O(rcvd_ctkn_i_3__0_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    \read_addrb[0]_i_1 
       (.I0(read_addra[1]),
        .I1(read_addra[0]),
        .I2(read_addra[2]),
        .O(read_addrb[0]));
  LUT3 #(
    .INIT(8'h1D)) 
    \read_addrb[1]_i_1 
       (.I0(read_addra[1]),
        .I1(read_addra[0]),
        .I2(read_addra[2]),
        .O(read_addrb[1]));
  LUT3 #(
    .INIT(8'h26)) 
    \read_addrb[2]_i_1 
       (.I0(read_addra[1]),
        .I1(read_addra[2]),
        .I2(read_addra[0]),
        .O(read_addrb[2]));
  LUT3 #(
    .INIT(8'h28)) 
    \read_addrb[3]_i_1 
       (.I0(read_addra[2]),
        .I1(read_addra[1]),
        .I2(read_addra[0]),
        .O(read_addrb[3]));
  FDSE \read_addrb_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(read_addrb[0]),
        .Q(\read_addrb_reg_n_0_[0] ),
        .S(\FSM_sequential_read_addra[2]_i_1__0_n_0 ));
  FDRE \read_addrb_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(read_addrb[1]),
        .Q(\read_addrb_reg_n_0_[1] ),
        .R(\FSM_sequential_read_addra[2]_i_1__0_n_0 ));
  FDRE \read_addrb_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(read_addrb[2]),
        .Q(\read_addrb_reg_n_0_[2] ),
        .R(\FSM_sequential_read_addra[2]_i_1__0_n_0 ));
  FDRE \read_addrb_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(read_addrb[3]),
        .Q(\read_addrb_reg_n_0_[3] ),
        .R(\FSM_sequential_read_addra[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    read_enable_i_1__0
       (.I0(write_addr[2]),
        .I1(write_addr[3]),
        .I2(write_addr[1]),
        .I3(write_addr[0]),
        .I4(read_enable),
        .O(read_enable_i_1__0_n_0));
  FDRE read_enable_oclk_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(read_enable),
        .Q(read_enable_oclk_1),
        .R(1'b0));
  FDRE read_enable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(read_enable_i_1__0_n_0),
        .Q(read_enable),
        .R(SR));
  FDRE read_reset_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(reset_reg),
        .Q(read_reset),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \write_addr[0]_i_1__0 
       (.I0(write_addr[0]),
        .O(\write_addr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h2C3C)) 
    \write_addr[1]_i_1 
       (.I0(write_addr[2]),
        .I1(write_addr[1]),
        .I2(write_addr[0]),
        .I3(write_addr[3]),
        .O(\write_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \write_addr[2]_i_1 
       (.I0(write_addr[2]),
        .I1(write_addr[1]),
        .I2(write_addr[0]),
        .O(\write_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \write_addr[3]_i_1 
       (.I0(write_addr[2]),
        .I1(write_addr[1]),
        .I2(write_addr[0]),
        .I3(write_addr[3]),
        .O(\write_addr[3]_i_1_n_0 ));
  FDRE \write_addr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[0]_i_1__0_n_0 ),
        .Q(write_addr[0]),
        .R(SR));
  FDRE \write_addr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[1]_i_1_n_0 ),
        .Q(write_addr[1]),
        .R(SR));
  FDRE \write_addr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[2]_i_1_n_0 ),
        .Q(write_addr[2]),
        .R(SR));
  FDRE \write_addr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[3]_i_1_n_0 ),
        .Q(write_addr[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "phsaligner" *) 
module overlay1_dvi_decoder_v2_0_0_phsaligner
   (bitslip,
    red_vld,
    rawdata_vld_rising_reg,
    \wa_reg[0] ,
    \wa_reg[0]_0 ,
    rawdata_vld,
    rx_clk,
    \dataout_reg[6] ,
    SR,
    psaligned_reg_0,
    psaligned_reg_1,
    we);
  output bitslip;
  output red_vld;
  output rawdata_vld_rising_reg;
  output [0:0]\wa_reg[0] ;
  output [0:0]\wa_reg[0]_0 ;
  output rawdata_vld;
  input rx_clk;
  input \dataout_reg[6] ;
  input [0:0]SR;
  input psaligned_reg_0;
  input psaligned_reg_1;
  input we;

  wire [0:0]SR;
  wire bitslip;
  wire bitslip_i_1__1_n_0;
  wire bitslip_i_2__1_n_0;
  wire blnkbgn;
  wire blnkbgn_i_1__4_n_0;
  wire \blnkprd_cnt[0]_i_1__1_n_0 ;
  wire \blnkprd_cnt_reg_n_0_[0] ;
  wire [5:0]cstate;
  wire \cstate[0]_i_1__2_n_0 ;
  wire \cstate[1]_i_2__1_n_0 ;
  wire ctkn_cnt_rst;
  wire ctkn_cnt_rst_i_1__1_n_0;
  wire ctkn_cnt_tout;
  wire ctkn_cnt_tout0_n_0;
  wire [2:0]ctkn_counter;
  wire \ctkn_counter[0]_i_1__1_n_0 ;
  wire \ctkn_counter[1]_i_1__1_n_0 ;
  wire \ctkn_counter[2]_i_1__1_n_0 ;
  wire ctkn_srh_rst;
  wire ctkn_srh_rst_i_1__1_n_0;
  wire \ctkn_srh_timer[0]_i_5__1_n_0 ;
  wire [11:0]ctkn_srh_timer_reg;
  wire \ctkn_srh_timer_reg[0]_i_1__1_n_0 ;
  wire \ctkn_srh_timer_reg[0]_i_1__1_n_1 ;
  wire \ctkn_srh_timer_reg[0]_i_1__1_n_2 ;
  wire \ctkn_srh_timer_reg[0]_i_1__1_n_3 ;
  wire \ctkn_srh_timer_reg[0]_i_1__1_n_4 ;
  wire \ctkn_srh_timer_reg[0]_i_1__1_n_5 ;
  wire \ctkn_srh_timer_reg[0]_i_1__1_n_6 ;
  wire \ctkn_srh_timer_reg[0]_i_1__1_n_7 ;
  wire \ctkn_srh_timer_reg[4]_i_1__1_n_0 ;
  wire \ctkn_srh_timer_reg[4]_i_1__1_n_1 ;
  wire \ctkn_srh_timer_reg[4]_i_1__1_n_2 ;
  wire \ctkn_srh_timer_reg[4]_i_1__1_n_3 ;
  wire \ctkn_srh_timer_reg[4]_i_1__1_n_4 ;
  wire \ctkn_srh_timer_reg[4]_i_1__1_n_5 ;
  wire \ctkn_srh_timer_reg[4]_i_1__1_n_6 ;
  wire \ctkn_srh_timer_reg[4]_i_1__1_n_7 ;
  wire \ctkn_srh_timer_reg[8]_i_1__1_n_1 ;
  wire \ctkn_srh_timer_reg[8]_i_1__1_n_2 ;
  wire \ctkn_srh_timer_reg[8]_i_1__1_n_3 ;
  wire \ctkn_srh_timer_reg[8]_i_1__1_n_4 ;
  wire \ctkn_srh_timer_reg[8]_i_1__1_n_5 ;
  wire \ctkn_srh_timer_reg[8]_i_1__1_n_6 ;
  wire \ctkn_srh_timer_reg[8]_i_1__1_n_7 ;
  wire ctkn_srh_tout;
  wire ctkn_srh_tout_i_1__1_n_0;
  wire ctkn_srh_tout_i_2__1_n_0;
  wire ctkn_srh_tout_i_3__1_n_0;
  wire \dataout_reg[6] ;
  wire [5:1]nstate;
  wire psaligned_i_1__1_n_0;
  wire psaligned_reg_0;
  wire psaligned_reg_1;
  wire rawdata_vld;
  wire rawdata_vld_rising_reg;
  wire rcvd_ctkn;
  wire rcvd_ctkn_q;
  wire red_vld;
  wire rx_clk;
  wire [0:0]\wa_reg[0] ;
  wire [0:0]\wa_reg[0]_0 ;
  wire we;
  wire [3:3]\NLW_ctkn_srh_timer_reg[8]_i_1__1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hB8)) 
    bitslip_i_1__1
       (.I0(cstate[2]),
        .I1(bitslip_i_2__1_n_0),
        .I2(bitslip),
        .O(bitslip_i_1__1_n_0));
  LUT5 #(
    .INIT(32'hFFFFAAAB)) 
    bitslip_i_2__1
       (.I0(cstate[0]),
        .I1(cstate[4]),
        .I2(cstate[3]),
        .I3(cstate[5]),
        .I4(cstate[1]),
        .O(bitslip_i_2__1_n_0));
  FDCE bitslip_reg
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(bitslip_i_1__1_n_0),
        .Q(bitslip));
  LUT2 #(
    .INIT(4'h2)) 
    blnkbgn_i_1__4
       (.I0(rcvd_ctkn),
        .I1(rcvd_ctkn_q),
        .O(blnkbgn_i_1__4_n_0));
  FDRE blnkbgn_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(blnkbgn_i_1__4_n_0),
        .Q(blnkbgn),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFC00000002)) 
    \blnkprd_cnt[0]_i_1__1 
       (.I0(cstate[4]),
        .I1(cstate[5]),
        .I2(cstate[3]),
        .I3(cstate[1]),
        .I4(cstate[2]),
        .I5(\blnkprd_cnt_reg_n_0_[0] ),
        .O(\blnkprd_cnt[0]_i_1__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \blnkprd_cnt_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\blnkprd_cnt[0]_i_1__1_n_0 ),
        .Q(\blnkprd_cnt_reg_n_0_[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    \cstate[0]_i_1__2 
       (.I0(cstate[0]),
        .I1(ctkn_srh_tout),
        .O(\cstate[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \cstate[1]_i_1__2 
       (.I0(\cstate[1]_i_2__1_n_0 ),
        .I1(cstate[4]),
        .I2(\blnkprd_cnt_reg_n_0_[0] ),
        .I3(cstate[3]),
        .I4(rcvd_ctkn),
        .O(nstate[1]));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT5 #(
    .INIT(32'hEECCEEFC)) 
    \cstate[1]_i_2__1 
       (.I0(cstate[0]),
        .I1(cstate[2]),
        .I2(cstate[1]),
        .I3(ctkn_srh_tout),
        .I4(blnkbgn),
        .O(\cstate[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \cstate[2]_i_1__1 
       (.I0(cstate[1]),
        .I1(blnkbgn),
        .I2(ctkn_srh_tout),
        .O(nstate[2]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT5 #(
    .INIT(32'h88F88888)) 
    \cstate[3]_i_1__2 
       (.I0(blnkbgn),
        .I1(cstate[1]),
        .I2(rcvd_ctkn),
        .I3(ctkn_cnt_tout),
        .I4(cstate[3]),
        .O(nstate[3]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cstate[4]_i_1__1 
       (.I0(cstate[3]),
        .I1(rcvd_ctkn),
        .I2(ctkn_cnt_tout),
        .O(nstate[4]));
  LUT3 #(
    .INIT(8'hF8)) 
    \cstate[5]_i_1__2 
       (.I0(\blnkprd_cnt_reg_n_0_[0] ),
        .I1(cstate[4]),
        .I2(cstate[5]),
        .O(nstate[5]));
  FDPE #(
    .INIT(1'b1)) 
    \cstate_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\cstate[0]_i_1__2_n_0 ),
        .PRE(SR),
        .Q(cstate[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cstate_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(nstate[1]),
        .Q(cstate[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cstate_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(nstate[2]),
        .Q(cstate[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cstate_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(nstate[3]),
        .Q(cstate[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cstate_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(nstate[4]),
        .Q(cstate[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cstate_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(nstate[5]),
        .Q(cstate[5]));
  LUT6 #(
    .INIT(64'h7777777544444445)) 
    ctkn_cnt_rst_i_1__1
       (.I0(cstate[3]),
        .I1(cstate[0]),
        .I2(cstate[5]),
        .I3(cstate[2]),
        .I4(cstate[4]),
        .I5(ctkn_cnt_rst),
        .O(ctkn_cnt_rst_i_1__1_n_0));
  FDPE ctkn_cnt_rst_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(ctkn_cnt_rst_i_1__1_n_0),
        .PRE(SR),
        .Q(ctkn_cnt_rst));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ctkn_cnt_tout0
       (.I0(ctkn_counter[1]),
        .I1(ctkn_counter[2]),
        .I2(ctkn_counter[0]),
        .O(ctkn_cnt_tout0_n_0));
  FDRE ctkn_cnt_tout_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(ctkn_cnt_tout0_n_0),
        .Q(ctkn_cnt_tout),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ctkn_counter[0]_i_1__1 
       (.I0(ctkn_counter[0]),
        .I1(ctkn_cnt_rst),
        .O(\ctkn_counter[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \ctkn_counter[1]_i_1__1 
       (.I0(ctkn_counter[1]),
        .I1(ctkn_counter[0]),
        .I2(ctkn_cnt_rst),
        .O(\ctkn_counter[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \ctkn_counter[2]_i_1__1 
       (.I0(ctkn_counter[2]),
        .I1(ctkn_counter[1]),
        .I2(ctkn_counter[0]),
        .I3(ctkn_cnt_rst),
        .O(\ctkn_counter[2]_i_1__1_n_0 ));
  FDRE \ctkn_counter_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_counter[0]_i_1__1_n_0 ),
        .Q(ctkn_counter[0]),
        .R(1'b0));
  FDRE \ctkn_counter_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_counter[1]_i_1__1_n_0 ),
        .Q(ctkn_counter[1]),
        .R(1'b0));
  FDRE \ctkn_counter_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_counter[2]_i_1__1_n_0 ),
        .Q(ctkn_counter[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAABBBAAAAA888A)) 
    ctkn_srh_rst_i_1__1
       (.I0(cstate[2]),
        .I1(cstate[0]),
        .I2(cstate[4]),
        .I3(cstate[5]),
        .I4(cstate[1]),
        .I5(ctkn_srh_rst),
        .O(ctkn_srh_rst_i_1__1_n_0));
  FDPE ctkn_srh_rst_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(ctkn_srh_rst_i_1__1_n_0),
        .PRE(SR),
        .Q(ctkn_srh_rst));
  LUT1 #(
    .INIT(2'h1)) 
    \ctkn_srh_timer[0]_i_5__1 
       (.I0(ctkn_srh_timer_reg[0]),
        .O(\ctkn_srh_timer[0]_i_5__1_n_0 ));
  FDRE \ctkn_srh_timer_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[0]_i_1__1_n_7 ),
        .Q(ctkn_srh_timer_reg[0]),
        .R(ctkn_srh_rst));
  CARRY4 \ctkn_srh_timer_reg[0]_i_1__1 
       (.CI(1'b0),
        .CO({\ctkn_srh_timer_reg[0]_i_1__1_n_0 ,\ctkn_srh_timer_reg[0]_i_1__1_n_1 ,\ctkn_srh_timer_reg[0]_i_1__1_n_2 ,\ctkn_srh_timer_reg[0]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ctkn_srh_timer_reg[0]_i_1__1_n_4 ,\ctkn_srh_timer_reg[0]_i_1__1_n_5 ,\ctkn_srh_timer_reg[0]_i_1__1_n_6 ,\ctkn_srh_timer_reg[0]_i_1__1_n_7 }),
        .S({ctkn_srh_timer_reg[3:1],\ctkn_srh_timer[0]_i_5__1_n_0 }));
  FDRE \ctkn_srh_timer_reg[10] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[8]_i_1__1_n_5 ),
        .Q(ctkn_srh_timer_reg[10]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[11] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[8]_i_1__1_n_4 ),
        .Q(ctkn_srh_timer_reg[11]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[0]_i_1__1_n_6 ),
        .Q(ctkn_srh_timer_reg[1]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[0]_i_1__1_n_5 ),
        .Q(ctkn_srh_timer_reg[2]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[0]_i_1__1_n_4 ),
        .Q(ctkn_srh_timer_reg[3]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[4]_i_1__1_n_7 ),
        .Q(ctkn_srh_timer_reg[4]),
        .R(ctkn_srh_rst));
  CARRY4 \ctkn_srh_timer_reg[4]_i_1__1 
       (.CI(\ctkn_srh_timer_reg[0]_i_1__1_n_0 ),
        .CO({\ctkn_srh_timer_reg[4]_i_1__1_n_0 ,\ctkn_srh_timer_reg[4]_i_1__1_n_1 ,\ctkn_srh_timer_reg[4]_i_1__1_n_2 ,\ctkn_srh_timer_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctkn_srh_timer_reg[4]_i_1__1_n_4 ,\ctkn_srh_timer_reg[4]_i_1__1_n_5 ,\ctkn_srh_timer_reg[4]_i_1__1_n_6 ,\ctkn_srh_timer_reg[4]_i_1__1_n_7 }),
        .S(ctkn_srh_timer_reg[7:4]));
  FDRE \ctkn_srh_timer_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[4]_i_1__1_n_6 ),
        .Q(ctkn_srh_timer_reg[5]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[4]_i_1__1_n_5 ),
        .Q(ctkn_srh_timer_reg[6]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[4]_i_1__1_n_4 ),
        .Q(ctkn_srh_timer_reg[7]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[8]_i_1__1_n_7 ),
        .Q(ctkn_srh_timer_reg[8]),
        .R(ctkn_srh_rst));
  CARRY4 \ctkn_srh_timer_reg[8]_i_1__1 
       (.CI(\ctkn_srh_timer_reg[4]_i_1__1_n_0 ),
        .CO({\NLW_ctkn_srh_timer_reg[8]_i_1__1_CO_UNCONNECTED [3],\ctkn_srh_timer_reg[8]_i_1__1_n_1 ,\ctkn_srh_timer_reg[8]_i_1__1_n_2 ,\ctkn_srh_timer_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctkn_srh_timer_reg[8]_i_1__1_n_4 ,\ctkn_srh_timer_reg[8]_i_1__1_n_5 ,\ctkn_srh_timer_reg[8]_i_1__1_n_6 ,\ctkn_srh_timer_reg[8]_i_1__1_n_7 }),
        .S(ctkn_srh_timer_reg[11:8]));
  FDRE \ctkn_srh_timer_reg[9] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[8]_i_1__1_n_6 ),
        .Q(ctkn_srh_timer_reg[9]),
        .R(ctkn_srh_rst));
  LUT2 #(
    .INIT(4'h2)) 
    ctkn_srh_tout_i_1__1
       (.I0(ctkn_srh_tout_i_2__1_n_0),
        .I1(ctkn_srh_tout_i_3__1_n_0),
        .O(ctkn_srh_tout_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    ctkn_srh_tout_i_2__1
       (.I0(ctkn_srh_timer_reg[9]),
        .I1(ctkn_srh_timer_reg[11]),
        .I2(ctkn_srh_timer_reg[10]),
        .I3(ctkn_srh_timer_reg[8]),
        .I4(ctkn_srh_timer_reg[6]),
        .I5(ctkn_srh_timer_reg[7]),
        .O(ctkn_srh_tout_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    ctkn_srh_tout_i_3__1
       (.I0(ctkn_srh_timer_reg[0]),
        .I1(ctkn_srh_timer_reg[1]),
        .I2(ctkn_srh_timer_reg[2]),
        .I3(ctkn_srh_timer_reg[3]),
        .I4(ctkn_srh_timer_reg[4]),
        .I5(ctkn_srh_timer_reg[5]),
        .O(ctkn_srh_tout_i_3__1_n_0));
  FDRE ctkn_srh_tout_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(ctkn_srh_tout_i_1__1_n_0),
        .Q(ctkn_srh_tout),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    iamrdy_i_1
       (.I0(red_vld),
        .I1(psaligned_reg_0),
        .I2(psaligned_reg_1),
        .O(\wa_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    iamrdy_i_1__0
       (.I0(red_vld),
        .I1(psaligned_reg_1),
        .I2(psaligned_reg_0),
        .O(\wa_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBA8888888A)) 
    psaligned_i_1__1
       (.I0(cstate[5]),
        .I1(cstate[1]),
        .I2(cstate[4]),
        .I3(cstate[2]),
        .I4(cstate[3]),
        .I5(red_vld),
        .O(psaligned_i_1__1_n_0));
  FDCE psaligned_reg
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(psaligned_i_1__1_n_0),
        .Q(red_vld));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    rawdata_vld_rising_i_1__1
       (.I0(psaligned_reg_0),
        .I1(psaligned_reg_1),
        .I2(red_vld),
        .I3(we),
        .O(rawdata_vld_rising_reg));
  FDRE rcvd_ctkn_q_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(rcvd_ctkn),
        .Q(rcvd_ctkn_q),
        .R(1'b0));
  FDRE rcvd_ctkn_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout_reg[6] ),
        .Q(rcvd_ctkn),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT3 #(
    .INIT(8'h80)) 
    we_i_1__1
       (.I0(red_vld),
        .I1(psaligned_reg_1),
        .I2(psaligned_reg_0),
        .O(rawdata_vld));
endmodule

(* ORIG_REF_NAME = "phsaligner" *) 
module overlay1_dvi_decoder_v2_0_0_phsaligner_12
   (bitslip,
    blue_vld,
    rawdata_vld_rising_reg,
    rawdata_vld,
    rx_clk,
    \dataout_reg[6] ,
    SR,
    psaligned_reg_0,
    psaligned_reg_1,
    we);
  output bitslip;
  output blue_vld;
  output rawdata_vld_rising_reg;
  output rawdata_vld;
  input rx_clk;
  input \dataout_reg[6] ;
  input [0:0]SR;
  input psaligned_reg_0;
  input psaligned_reg_1;
  input we;

  wire [0:0]SR;
  wire bitslip;
  wire bitslip_i_1_n_0;
  wire bitslip_i_2_n_0;
  wire blnkbgn;
  wire blnkbgn_i_1__2_n_0;
  wire \blnkprd_cnt[0]_i_1_n_0 ;
  wire \blnkprd_cnt_reg_n_0_[0] ;
  wire blue_vld;
  wire [5:0]cstate;
  wire \cstate[0]_i_1__0_n_0 ;
  wire \cstate[1]_i_2_n_0 ;
  wire ctkn_cnt_rst;
  wire ctkn_cnt_rst_i_1_n_0;
  wire ctkn_cnt_tout;
  wire ctkn_cnt_tout0_n_0;
  wire [2:0]ctkn_counter;
  wire \ctkn_counter[0]_i_1_n_0 ;
  wire \ctkn_counter[1]_i_1_n_0 ;
  wire \ctkn_counter[2]_i_1_n_0 ;
  wire ctkn_srh_rst;
  wire ctkn_srh_rst_i_1_n_0;
  wire \ctkn_srh_timer[0]_i_5_n_0 ;
  wire [11:0]ctkn_srh_timer_reg;
  wire \ctkn_srh_timer_reg[0]_i_1_n_0 ;
  wire \ctkn_srh_timer_reg[0]_i_1_n_1 ;
  wire \ctkn_srh_timer_reg[0]_i_1_n_2 ;
  wire \ctkn_srh_timer_reg[0]_i_1_n_3 ;
  wire \ctkn_srh_timer_reg[0]_i_1_n_4 ;
  wire \ctkn_srh_timer_reg[0]_i_1_n_5 ;
  wire \ctkn_srh_timer_reg[0]_i_1_n_6 ;
  wire \ctkn_srh_timer_reg[0]_i_1_n_7 ;
  wire \ctkn_srh_timer_reg[4]_i_1_n_0 ;
  wire \ctkn_srh_timer_reg[4]_i_1_n_1 ;
  wire \ctkn_srh_timer_reg[4]_i_1_n_2 ;
  wire \ctkn_srh_timer_reg[4]_i_1_n_3 ;
  wire \ctkn_srh_timer_reg[4]_i_1_n_4 ;
  wire \ctkn_srh_timer_reg[4]_i_1_n_5 ;
  wire \ctkn_srh_timer_reg[4]_i_1_n_6 ;
  wire \ctkn_srh_timer_reg[4]_i_1_n_7 ;
  wire \ctkn_srh_timer_reg[8]_i_1_n_1 ;
  wire \ctkn_srh_timer_reg[8]_i_1_n_2 ;
  wire \ctkn_srh_timer_reg[8]_i_1_n_3 ;
  wire \ctkn_srh_timer_reg[8]_i_1_n_4 ;
  wire \ctkn_srh_timer_reg[8]_i_1_n_5 ;
  wire \ctkn_srh_timer_reg[8]_i_1_n_6 ;
  wire \ctkn_srh_timer_reg[8]_i_1_n_7 ;
  wire ctkn_srh_tout;
  wire ctkn_srh_tout_i_1_n_0;
  wire ctkn_srh_tout_i_2_n_0;
  wire ctkn_srh_tout_i_3_n_0;
  wire \dataout_reg[6] ;
  wire [5:1]nstate;
  wire psaligned_i_1_n_0;
  wire psaligned_reg_0;
  wire psaligned_reg_1;
  wire rawdata_vld;
  wire rawdata_vld_rising_reg;
  wire rcvd_ctkn;
  wire rcvd_ctkn_q;
  wire rx_clk;
  wire we;
  wire [3:3]\NLW_ctkn_srh_timer_reg[8]_i_1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hB8)) 
    bitslip_i_1
       (.I0(cstate[2]),
        .I1(bitslip_i_2_n_0),
        .I2(bitslip),
        .O(bitslip_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFAAAB)) 
    bitslip_i_2
       (.I0(cstate[0]),
        .I1(cstate[4]),
        .I2(cstate[3]),
        .I3(cstate[5]),
        .I4(cstate[1]),
        .O(bitslip_i_2_n_0));
  FDCE bitslip_reg
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(bitslip_i_1_n_0),
        .Q(bitslip));
  LUT2 #(
    .INIT(4'h2)) 
    blnkbgn_i_1__2
       (.I0(rcvd_ctkn),
        .I1(rcvd_ctkn_q),
        .O(blnkbgn_i_1__2_n_0));
  FDRE blnkbgn_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(blnkbgn_i_1__2_n_0),
        .Q(blnkbgn),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFC00000002)) 
    \blnkprd_cnt[0]_i_1 
       (.I0(cstate[4]),
        .I1(cstate[5]),
        .I2(cstate[3]),
        .I3(cstate[1]),
        .I4(cstate[2]),
        .I5(\blnkprd_cnt_reg_n_0_[0] ),
        .O(\blnkprd_cnt[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \blnkprd_cnt_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\blnkprd_cnt[0]_i_1_n_0 ),
        .Q(\blnkprd_cnt_reg_n_0_[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    \cstate[0]_i_1__0 
       (.I0(cstate[0]),
        .I1(ctkn_srh_tout),
        .O(\cstate[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \cstate[1]_i_1 
       (.I0(\cstate[1]_i_2_n_0 ),
        .I1(cstate[4]),
        .I2(\blnkprd_cnt_reg_n_0_[0] ),
        .I3(cstate[3]),
        .I4(rcvd_ctkn),
        .O(nstate[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hEECCEEFC)) 
    \cstate[1]_i_2 
       (.I0(cstate[0]),
        .I1(cstate[2]),
        .I2(cstate[1]),
        .I3(ctkn_srh_tout),
        .I4(blnkbgn),
        .O(\cstate[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \cstate[2]_i_1 
       (.I0(cstate[1]),
        .I1(blnkbgn),
        .I2(ctkn_srh_tout),
        .O(nstate[2]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h88F88888)) 
    \cstate[3]_i_1 
       (.I0(blnkbgn),
        .I1(cstate[1]),
        .I2(rcvd_ctkn),
        .I3(ctkn_cnt_tout),
        .I4(cstate[3]),
        .O(nstate[3]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cstate[4]_i_1 
       (.I0(cstate[3]),
        .I1(rcvd_ctkn),
        .I2(ctkn_cnt_tout),
        .O(nstate[4]));
  LUT3 #(
    .INIT(8'hF8)) 
    \cstate[5]_i_1 
       (.I0(\blnkprd_cnt_reg_n_0_[0] ),
        .I1(cstate[4]),
        .I2(cstate[5]),
        .O(nstate[5]));
  FDPE #(
    .INIT(1'b1)) 
    \cstate_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\cstate[0]_i_1__0_n_0 ),
        .PRE(SR),
        .Q(cstate[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cstate_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(nstate[1]),
        .Q(cstate[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cstate_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(nstate[2]),
        .Q(cstate[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cstate_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(nstate[3]),
        .Q(cstate[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cstate_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(nstate[4]),
        .Q(cstate[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cstate_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(nstate[5]),
        .Q(cstate[5]));
  LUT6 #(
    .INIT(64'h7777777544444445)) 
    ctkn_cnt_rst_i_1
       (.I0(cstate[3]),
        .I1(cstate[0]),
        .I2(cstate[5]),
        .I3(cstate[2]),
        .I4(cstate[4]),
        .I5(ctkn_cnt_rst),
        .O(ctkn_cnt_rst_i_1_n_0));
  FDPE ctkn_cnt_rst_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(ctkn_cnt_rst_i_1_n_0),
        .PRE(SR),
        .Q(ctkn_cnt_rst));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ctkn_cnt_tout0
       (.I0(ctkn_counter[1]),
        .I1(ctkn_counter[2]),
        .I2(ctkn_counter[0]),
        .O(ctkn_cnt_tout0_n_0));
  FDRE ctkn_cnt_tout_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(ctkn_cnt_tout0_n_0),
        .Q(ctkn_cnt_tout),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ctkn_counter[0]_i_1 
       (.I0(ctkn_counter[0]),
        .I1(ctkn_cnt_rst),
        .O(\ctkn_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \ctkn_counter[1]_i_1 
       (.I0(ctkn_counter[1]),
        .I1(ctkn_counter[0]),
        .I2(ctkn_cnt_rst),
        .O(\ctkn_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \ctkn_counter[2]_i_1 
       (.I0(ctkn_counter[2]),
        .I1(ctkn_counter[1]),
        .I2(ctkn_counter[0]),
        .I3(ctkn_cnt_rst),
        .O(\ctkn_counter[2]_i_1_n_0 ));
  FDRE \ctkn_counter_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_counter[0]_i_1_n_0 ),
        .Q(ctkn_counter[0]),
        .R(1'b0));
  FDRE \ctkn_counter_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_counter[1]_i_1_n_0 ),
        .Q(ctkn_counter[1]),
        .R(1'b0));
  FDRE \ctkn_counter_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_counter[2]_i_1_n_0 ),
        .Q(ctkn_counter[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAABBBAAAAA888A)) 
    ctkn_srh_rst_i_1
       (.I0(cstate[2]),
        .I1(cstate[0]),
        .I2(cstate[4]),
        .I3(cstate[5]),
        .I4(cstate[1]),
        .I5(ctkn_srh_rst),
        .O(ctkn_srh_rst_i_1_n_0));
  FDPE ctkn_srh_rst_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(ctkn_srh_rst_i_1_n_0),
        .PRE(SR),
        .Q(ctkn_srh_rst));
  LUT1 #(
    .INIT(2'h1)) 
    \ctkn_srh_timer[0]_i_5 
       (.I0(ctkn_srh_timer_reg[0]),
        .O(\ctkn_srh_timer[0]_i_5_n_0 ));
  FDRE \ctkn_srh_timer_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[0]_i_1_n_7 ),
        .Q(ctkn_srh_timer_reg[0]),
        .R(ctkn_srh_rst));
  CARRY4 \ctkn_srh_timer_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\ctkn_srh_timer_reg[0]_i_1_n_0 ,\ctkn_srh_timer_reg[0]_i_1_n_1 ,\ctkn_srh_timer_reg[0]_i_1_n_2 ,\ctkn_srh_timer_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ctkn_srh_timer_reg[0]_i_1_n_4 ,\ctkn_srh_timer_reg[0]_i_1_n_5 ,\ctkn_srh_timer_reg[0]_i_1_n_6 ,\ctkn_srh_timer_reg[0]_i_1_n_7 }),
        .S({ctkn_srh_timer_reg[3:1],\ctkn_srh_timer[0]_i_5_n_0 }));
  FDRE \ctkn_srh_timer_reg[10] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[8]_i_1_n_5 ),
        .Q(ctkn_srh_timer_reg[10]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[11] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[8]_i_1_n_4 ),
        .Q(ctkn_srh_timer_reg[11]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[0]_i_1_n_6 ),
        .Q(ctkn_srh_timer_reg[1]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[0]_i_1_n_5 ),
        .Q(ctkn_srh_timer_reg[2]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[0]_i_1_n_4 ),
        .Q(ctkn_srh_timer_reg[3]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[4]_i_1_n_7 ),
        .Q(ctkn_srh_timer_reg[4]),
        .R(ctkn_srh_rst));
  CARRY4 \ctkn_srh_timer_reg[4]_i_1 
       (.CI(\ctkn_srh_timer_reg[0]_i_1_n_0 ),
        .CO({\ctkn_srh_timer_reg[4]_i_1_n_0 ,\ctkn_srh_timer_reg[4]_i_1_n_1 ,\ctkn_srh_timer_reg[4]_i_1_n_2 ,\ctkn_srh_timer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctkn_srh_timer_reg[4]_i_1_n_4 ,\ctkn_srh_timer_reg[4]_i_1_n_5 ,\ctkn_srh_timer_reg[4]_i_1_n_6 ,\ctkn_srh_timer_reg[4]_i_1_n_7 }),
        .S(ctkn_srh_timer_reg[7:4]));
  FDRE \ctkn_srh_timer_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[4]_i_1_n_6 ),
        .Q(ctkn_srh_timer_reg[5]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[4]_i_1_n_5 ),
        .Q(ctkn_srh_timer_reg[6]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[4]_i_1_n_4 ),
        .Q(ctkn_srh_timer_reg[7]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[8]_i_1_n_7 ),
        .Q(ctkn_srh_timer_reg[8]),
        .R(ctkn_srh_rst));
  CARRY4 \ctkn_srh_timer_reg[8]_i_1 
       (.CI(\ctkn_srh_timer_reg[4]_i_1_n_0 ),
        .CO({\NLW_ctkn_srh_timer_reg[8]_i_1_CO_UNCONNECTED [3],\ctkn_srh_timer_reg[8]_i_1_n_1 ,\ctkn_srh_timer_reg[8]_i_1_n_2 ,\ctkn_srh_timer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctkn_srh_timer_reg[8]_i_1_n_4 ,\ctkn_srh_timer_reg[8]_i_1_n_5 ,\ctkn_srh_timer_reg[8]_i_1_n_6 ,\ctkn_srh_timer_reg[8]_i_1_n_7 }),
        .S(ctkn_srh_timer_reg[11:8]));
  FDRE \ctkn_srh_timer_reg[9] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[8]_i_1_n_6 ),
        .Q(ctkn_srh_timer_reg[9]),
        .R(ctkn_srh_rst));
  LUT2 #(
    .INIT(4'h2)) 
    ctkn_srh_tout_i_1
       (.I0(ctkn_srh_tout_i_2_n_0),
        .I1(ctkn_srh_tout_i_3_n_0),
        .O(ctkn_srh_tout_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    ctkn_srh_tout_i_2
       (.I0(ctkn_srh_timer_reg[9]),
        .I1(ctkn_srh_timer_reg[11]),
        .I2(ctkn_srh_timer_reg[10]),
        .I3(ctkn_srh_timer_reg[8]),
        .I4(ctkn_srh_timer_reg[6]),
        .I5(ctkn_srh_timer_reg[7]),
        .O(ctkn_srh_tout_i_2_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    ctkn_srh_tout_i_3
       (.I0(ctkn_srh_timer_reg[0]),
        .I1(ctkn_srh_timer_reg[1]),
        .I2(ctkn_srh_timer_reg[2]),
        .I3(ctkn_srh_timer_reg[3]),
        .I4(ctkn_srh_timer_reg[4]),
        .I5(ctkn_srh_timer_reg[5]),
        .O(ctkn_srh_tout_i_3_n_0));
  FDRE ctkn_srh_tout_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(ctkn_srh_tout_i_1_n_0),
        .Q(ctkn_srh_tout),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBBBBBBA8888888A)) 
    psaligned_i_1
       (.I0(cstate[5]),
        .I1(cstate[1]),
        .I2(cstate[4]),
        .I3(cstate[2]),
        .I4(cstate[3]),
        .I5(blue_vld),
        .O(psaligned_i_1_n_0));
  FDCE psaligned_reg
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(psaligned_i_1_n_0),
        .Q(blue_vld));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    rawdata_vld_rising_i_1
       (.I0(psaligned_reg_0),
        .I1(psaligned_reg_1),
        .I2(blue_vld),
        .I3(we),
        .O(rawdata_vld_rising_reg));
  FDRE rcvd_ctkn_q_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(rcvd_ctkn),
        .Q(rcvd_ctkn_q),
        .R(1'b0));
  FDRE rcvd_ctkn_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout_reg[6] ),
        .Q(rcvd_ctkn),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h80)) 
    we_i_1
       (.I0(blue_vld),
        .I1(psaligned_reg_1),
        .I2(psaligned_reg_0),
        .O(rawdata_vld));
endmodule

(* ORIG_REF_NAME = "phsaligner" *) 
module overlay1_dvi_decoder_v2_0_0_phsaligner_6
   (bitslip,
    green_vld,
    rawdata_vld_rising_reg,
    \wa_reg[0] ,
    rawdata_vld,
    rx_clk,
    \dataout_reg[6] ,
    SR,
    psaligned_reg_0,
    psaligned_reg_1,
    we);
  output bitslip;
  output green_vld;
  output rawdata_vld_rising_reg;
  output [0:0]\wa_reg[0] ;
  output rawdata_vld;
  input rx_clk;
  input \dataout_reg[6] ;
  input [0:0]SR;
  input psaligned_reg_0;
  input psaligned_reg_1;
  input we;

  wire [0:0]SR;
  wire bitslip;
  wire bitslip_i_1__0_n_0;
  wire bitslip_i_2__0_n_0;
  wire blnkbgn;
  wire blnkbgn_i_1__3_n_0;
  wire \blnkprd_cnt[0]_i_1__0_n_0 ;
  wire \blnkprd_cnt_reg_n_0_[0] ;
  wire [5:0]cstate;
  wire \cstate[0]_i_1__1_n_0 ;
  wire \cstate[1]_i_2__0_n_0 ;
  wire ctkn_cnt_rst;
  wire ctkn_cnt_rst_i_1__0_n_0;
  wire ctkn_cnt_tout;
  wire ctkn_cnt_tout0_n_0;
  wire [2:0]ctkn_counter;
  wire \ctkn_counter[0]_i_1__0_n_0 ;
  wire \ctkn_counter[1]_i_1__0_n_0 ;
  wire \ctkn_counter[2]_i_1__0_n_0 ;
  wire ctkn_srh_rst;
  wire ctkn_srh_rst_i_1__0_n_0;
  wire \ctkn_srh_timer[0]_i_5__0_n_0 ;
  wire [11:0]ctkn_srh_timer_reg;
  wire \ctkn_srh_timer_reg[0]_i_1__0_n_0 ;
  wire \ctkn_srh_timer_reg[0]_i_1__0_n_1 ;
  wire \ctkn_srh_timer_reg[0]_i_1__0_n_2 ;
  wire \ctkn_srh_timer_reg[0]_i_1__0_n_3 ;
  wire \ctkn_srh_timer_reg[0]_i_1__0_n_4 ;
  wire \ctkn_srh_timer_reg[0]_i_1__0_n_5 ;
  wire \ctkn_srh_timer_reg[0]_i_1__0_n_6 ;
  wire \ctkn_srh_timer_reg[0]_i_1__0_n_7 ;
  wire \ctkn_srh_timer_reg[4]_i_1__0_n_0 ;
  wire \ctkn_srh_timer_reg[4]_i_1__0_n_1 ;
  wire \ctkn_srh_timer_reg[4]_i_1__0_n_2 ;
  wire \ctkn_srh_timer_reg[4]_i_1__0_n_3 ;
  wire \ctkn_srh_timer_reg[4]_i_1__0_n_4 ;
  wire \ctkn_srh_timer_reg[4]_i_1__0_n_5 ;
  wire \ctkn_srh_timer_reg[4]_i_1__0_n_6 ;
  wire \ctkn_srh_timer_reg[4]_i_1__0_n_7 ;
  wire \ctkn_srh_timer_reg[8]_i_1__0_n_1 ;
  wire \ctkn_srh_timer_reg[8]_i_1__0_n_2 ;
  wire \ctkn_srh_timer_reg[8]_i_1__0_n_3 ;
  wire \ctkn_srh_timer_reg[8]_i_1__0_n_4 ;
  wire \ctkn_srh_timer_reg[8]_i_1__0_n_5 ;
  wire \ctkn_srh_timer_reg[8]_i_1__0_n_6 ;
  wire \ctkn_srh_timer_reg[8]_i_1__0_n_7 ;
  wire ctkn_srh_tout;
  wire ctkn_srh_tout_i_1__0_n_0;
  wire ctkn_srh_tout_i_2__0_n_0;
  wire ctkn_srh_tout_i_3__0_n_0;
  wire \dataout_reg[6] ;
  wire green_vld;
  wire [5:1]nstate;
  wire psaligned_i_1__0_n_0;
  wire psaligned_reg_0;
  wire psaligned_reg_1;
  wire rawdata_vld;
  wire rawdata_vld_rising_reg;
  wire rcvd_ctkn;
  wire rcvd_ctkn_q;
  wire rx_clk;
  wire [0:0]\wa_reg[0] ;
  wire we;
  wire [3:3]\NLW_ctkn_srh_timer_reg[8]_i_1__0_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hB8)) 
    bitslip_i_1__0
       (.I0(cstate[2]),
        .I1(bitslip_i_2__0_n_0),
        .I2(bitslip),
        .O(bitslip_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFAAAB)) 
    bitslip_i_2__0
       (.I0(cstate[0]),
        .I1(cstate[4]),
        .I2(cstate[3]),
        .I3(cstate[5]),
        .I4(cstate[1]),
        .O(bitslip_i_2__0_n_0));
  FDCE bitslip_reg
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(bitslip_i_1__0_n_0),
        .Q(bitslip));
  LUT2 #(
    .INIT(4'h2)) 
    blnkbgn_i_1__3
       (.I0(rcvd_ctkn),
        .I1(rcvd_ctkn_q),
        .O(blnkbgn_i_1__3_n_0));
  FDRE blnkbgn_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(blnkbgn_i_1__3_n_0),
        .Q(blnkbgn),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFC00000002)) 
    \blnkprd_cnt[0]_i_1__0 
       (.I0(cstate[4]),
        .I1(cstate[5]),
        .I2(cstate[3]),
        .I3(cstate[1]),
        .I4(cstate[2]),
        .I5(\blnkprd_cnt_reg_n_0_[0] ),
        .O(\blnkprd_cnt[0]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \blnkprd_cnt_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\blnkprd_cnt[0]_i_1__0_n_0 ),
        .Q(\blnkprd_cnt_reg_n_0_[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    \cstate[0]_i_1__1 
       (.I0(cstate[0]),
        .I1(ctkn_srh_tout),
        .O(\cstate[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \cstate[1]_i_1__1 
       (.I0(\cstate[1]_i_2__0_n_0 ),
        .I1(cstate[4]),
        .I2(\blnkprd_cnt_reg_n_0_[0] ),
        .I3(cstate[3]),
        .I4(rcvd_ctkn),
        .O(nstate[1]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT5 #(
    .INIT(32'hEECCEEFC)) 
    \cstate[1]_i_2__0 
       (.I0(cstate[0]),
        .I1(cstate[2]),
        .I2(cstate[1]),
        .I3(ctkn_srh_tout),
        .I4(blnkbgn),
        .O(\cstate[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \cstate[2]_i_1__0 
       (.I0(cstate[1]),
        .I1(blnkbgn),
        .I2(ctkn_srh_tout),
        .O(nstate[2]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'h88F88888)) 
    \cstate[3]_i_1__1 
       (.I0(blnkbgn),
        .I1(cstate[1]),
        .I2(rcvd_ctkn),
        .I3(ctkn_cnt_tout),
        .I4(cstate[3]),
        .O(nstate[3]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cstate[4]_i_1__0 
       (.I0(cstate[3]),
        .I1(rcvd_ctkn),
        .I2(ctkn_cnt_tout),
        .O(nstate[4]));
  LUT3 #(
    .INIT(8'hF8)) 
    \cstate[5]_i_1__1 
       (.I0(\blnkprd_cnt_reg_n_0_[0] ),
        .I1(cstate[4]),
        .I2(cstate[5]),
        .O(nstate[5]));
  FDPE #(
    .INIT(1'b1)) 
    \cstate_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\cstate[0]_i_1__1_n_0 ),
        .PRE(SR),
        .Q(cstate[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cstate_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(nstate[1]),
        .Q(cstate[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cstate_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(nstate[2]),
        .Q(cstate[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cstate_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(nstate[3]),
        .Q(cstate[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cstate_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(nstate[4]),
        .Q(cstate[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cstate_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(nstate[5]),
        .Q(cstate[5]));
  LUT6 #(
    .INIT(64'h7777777544444445)) 
    ctkn_cnt_rst_i_1__0
       (.I0(cstate[3]),
        .I1(cstate[0]),
        .I2(cstate[5]),
        .I3(cstate[2]),
        .I4(cstate[4]),
        .I5(ctkn_cnt_rst),
        .O(ctkn_cnt_rst_i_1__0_n_0));
  FDPE ctkn_cnt_rst_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(ctkn_cnt_rst_i_1__0_n_0),
        .PRE(SR),
        .Q(ctkn_cnt_rst));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ctkn_cnt_tout0
       (.I0(ctkn_counter[1]),
        .I1(ctkn_counter[2]),
        .I2(ctkn_counter[0]),
        .O(ctkn_cnt_tout0_n_0));
  FDRE ctkn_cnt_tout_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(ctkn_cnt_tout0_n_0),
        .Q(ctkn_cnt_tout),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ctkn_counter[0]_i_1__0 
       (.I0(ctkn_counter[0]),
        .I1(ctkn_cnt_rst),
        .O(\ctkn_counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \ctkn_counter[1]_i_1__0 
       (.I0(ctkn_counter[1]),
        .I1(ctkn_counter[0]),
        .I2(ctkn_cnt_rst),
        .O(\ctkn_counter[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \ctkn_counter[2]_i_1__0 
       (.I0(ctkn_counter[2]),
        .I1(ctkn_counter[1]),
        .I2(ctkn_counter[0]),
        .I3(ctkn_cnt_rst),
        .O(\ctkn_counter[2]_i_1__0_n_0 ));
  FDRE \ctkn_counter_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_counter[0]_i_1__0_n_0 ),
        .Q(ctkn_counter[0]),
        .R(1'b0));
  FDRE \ctkn_counter_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_counter[1]_i_1__0_n_0 ),
        .Q(ctkn_counter[1]),
        .R(1'b0));
  FDRE \ctkn_counter_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_counter[2]_i_1__0_n_0 ),
        .Q(ctkn_counter[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAABBBAAAAA888A)) 
    ctkn_srh_rst_i_1__0
       (.I0(cstate[2]),
        .I1(cstate[0]),
        .I2(cstate[4]),
        .I3(cstate[5]),
        .I4(cstate[1]),
        .I5(ctkn_srh_rst),
        .O(ctkn_srh_rst_i_1__0_n_0));
  FDPE ctkn_srh_rst_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(ctkn_srh_rst_i_1__0_n_0),
        .PRE(SR),
        .Q(ctkn_srh_rst));
  LUT1 #(
    .INIT(2'h1)) 
    \ctkn_srh_timer[0]_i_5__0 
       (.I0(ctkn_srh_timer_reg[0]),
        .O(\ctkn_srh_timer[0]_i_5__0_n_0 ));
  FDRE \ctkn_srh_timer_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[0]_i_1__0_n_7 ),
        .Q(ctkn_srh_timer_reg[0]),
        .R(ctkn_srh_rst));
  CARRY4 \ctkn_srh_timer_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\ctkn_srh_timer_reg[0]_i_1__0_n_0 ,\ctkn_srh_timer_reg[0]_i_1__0_n_1 ,\ctkn_srh_timer_reg[0]_i_1__0_n_2 ,\ctkn_srh_timer_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ctkn_srh_timer_reg[0]_i_1__0_n_4 ,\ctkn_srh_timer_reg[0]_i_1__0_n_5 ,\ctkn_srh_timer_reg[0]_i_1__0_n_6 ,\ctkn_srh_timer_reg[0]_i_1__0_n_7 }),
        .S({ctkn_srh_timer_reg[3:1],\ctkn_srh_timer[0]_i_5__0_n_0 }));
  FDRE \ctkn_srh_timer_reg[10] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[8]_i_1__0_n_5 ),
        .Q(ctkn_srh_timer_reg[10]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[11] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[8]_i_1__0_n_4 ),
        .Q(ctkn_srh_timer_reg[11]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[0]_i_1__0_n_6 ),
        .Q(ctkn_srh_timer_reg[1]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[0]_i_1__0_n_5 ),
        .Q(ctkn_srh_timer_reg[2]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[0]_i_1__0_n_4 ),
        .Q(ctkn_srh_timer_reg[3]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[4]_i_1__0_n_7 ),
        .Q(ctkn_srh_timer_reg[4]),
        .R(ctkn_srh_rst));
  CARRY4 \ctkn_srh_timer_reg[4]_i_1__0 
       (.CI(\ctkn_srh_timer_reg[0]_i_1__0_n_0 ),
        .CO({\ctkn_srh_timer_reg[4]_i_1__0_n_0 ,\ctkn_srh_timer_reg[4]_i_1__0_n_1 ,\ctkn_srh_timer_reg[4]_i_1__0_n_2 ,\ctkn_srh_timer_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctkn_srh_timer_reg[4]_i_1__0_n_4 ,\ctkn_srh_timer_reg[4]_i_1__0_n_5 ,\ctkn_srh_timer_reg[4]_i_1__0_n_6 ,\ctkn_srh_timer_reg[4]_i_1__0_n_7 }),
        .S(ctkn_srh_timer_reg[7:4]));
  FDRE \ctkn_srh_timer_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[4]_i_1__0_n_6 ),
        .Q(ctkn_srh_timer_reg[5]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[4]_i_1__0_n_5 ),
        .Q(ctkn_srh_timer_reg[6]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[4]_i_1__0_n_4 ),
        .Q(ctkn_srh_timer_reg[7]),
        .R(ctkn_srh_rst));
  FDRE \ctkn_srh_timer_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[8]_i_1__0_n_7 ),
        .Q(ctkn_srh_timer_reg[8]),
        .R(ctkn_srh_rst));
  CARRY4 \ctkn_srh_timer_reg[8]_i_1__0 
       (.CI(\ctkn_srh_timer_reg[4]_i_1__0_n_0 ),
        .CO({\NLW_ctkn_srh_timer_reg[8]_i_1__0_CO_UNCONNECTED [3],\ctkn_srh_timer_reg[8]_i_1__0_n_1 ,\ctkn_srh_timer_reg[8]_i_1__0_n_2 ,\ctkn_srh_timer_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctkn_srh_timer_reg[8]_i_1__0_n_4 ,\ctkn_srh_timer_reg[8]_i_1__0_n_5 ,\ctkn_srh_timer_reg[8]_i_1__0_n_6 ,\ctkn_srh_timer_reg[8]_i_1__0_n_7 }),
        .S(ctkn_srh_timer_reg[11:8]));
  FDRE \ctkn_srh_timer_reg[9] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\ctkn_srh_timer_reg[8]_i_1__0_n_6 ),
        .Q(ctkn_srh_timer_reg[9]),
        .R(ctkn_srh_rst));
  LUT2 #(
    .INIT(4'h2)) 
    ctkn_srh_tout_i_1__0
       (.I0(ctkn_srh_tout_i_2__0_n_0),
        .I1(ctkn_srh_tout_i_3__0_n_0),
        .O(ctkn_srh_tout_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    ctkn_srh_tout_i_2__0
       (.I0(ctkn_srh_timer_reg[9]),
        .I1(ctkn_srh_timer_reg[11]),
        .I2(ctkn_srh_timer_reg[10]),
        .I3(ctkn_srh_timer_reg[8]),
        .I4(ctkn_srh_timer_reg[6]),
        .I5(ctkn_srh_timer_reg[7]),
        .O(ctkn_srh_tout_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    ctkn_srh_tout_i_3__0
       (.I0(ctkn_srh_timer_reg[0]),
        .I1(ctkn_srh_timer_reg[1]),
        .I2(ctkn_srh_timer_reg[2]),
        .I3(ctkn_srh_timer_reg[3]),
        .I4(ctkn_srh_timer_reg[4]),
        .I5(ctkn_srh_timer_reg[5]),
        .O(ctkn_srh_tout_i_3__0_n_0));
  FDRE ctkn_srh_tout_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(ctkn_srh_tout_i_1__0_n_0),
        .Q(ctkn_srh_tout),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    iamrdy_i_1__1
       (.I0(green_vld),
        .I1(psaligned_reg_1),
        .I2(psaligned_reg_0),
        .O(\wa_reg[0] ));
  LUT6 #(
    .INIT(64'hBBBBBBBA8888888A)) 
    psaligned_i_1__0
       (.I0(cstate[5]),
        .I1(cstate[1]),
        .I2(cstate[4]),
        .I3(cstate[2]),
        .I4(cstate[3]),
        .I5(green_vld),
        .O(psaligned_i_1__0_n_0));
  FDCE psaligned_reg
       (.C(rx_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(psaligned_i_1__0_n_0),
        .Q(green_vld));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    rawdata_vld_rising_i_1__0
       (.I0(psaligned_reg_0),
        .I1(psaligned_reg_1),
        .I2(green_vld),
        .I3(we),
        .O(rawdata_vld_rising_reg));
  FDRE rcvd_ctkn_q_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(rcvd_ctkn),
        .Q(rcvd_ctkn_q),
        .R(1'b0));
  FDRE rcvd_ctkn_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(\dataout_reg[6] ),
        .Q(rcvd_ctkn),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    we_i_1__0
       (.I0(green_vld),
        .I1(psaligned_reg_1),
        .I2(psaligned_reg_0),
        .O(rawdata_vld));
endmodule

(* ORIG_REF_NAME = "serdes_1_10_diff" *) 
module overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff
   (read_enable_oclk,
    red_debug,
    red_eye,
    Q,
    rcvd_ctkn_reg,
    red_p,
    red_n,
    CLK,
    bitslipx1p25,
    rx_clk,
    CLKB0,
    reset_1p25,
    rx_clk_0,
    p_12_in,
    read_reset_reg);
  output read_enable_oclk;
  output [31:0]red_debug;
  output [31:0]red_eye;
  output [9:0]Q;
  output rcvd_ctkn_reg;
  input red_p;
  input red_n;
  input CLK;
  input bitslipx1p25;
  input rx_clk;
  input CLKB0;
  input reset_1p25;
  input rx_clk_0;
  input p_12_in;
  input [0:0]read_reset_reg;

  wire CLK;
  wire CLKB0;
  wire [9:0]Q;
  wire bitslipx1p25;
  wire [4:0]m_delay_val_in;
  wire [7:0]mdataoutd;
  wire [7:0]mdout;
  wire p_12_in;
  wire rcvd_ctkn_reg;
  wire read_enable_oclk;
  wire [0:0]read_reset_reg;
  wire [31:0]red_debug;
  wire [31:0]red_eye;
  wire red_n;
  wire red_p;
  wire reset_1p25;
  wire rx_clk;
  wire rx_clk_0;
  wire rx_data_delay_m;
  wire rx_data_delay_s;
  wire rx_data_in_m;
  wire rx_data_in_s;
  wire [4:0]s_delay_val_in;
  wire [7:0]sdout;
  wire NLW_ISERDESE2_master_O_UNCONNECTED;
  wire NLW_ISERDESE2_master_SHIFTOUT1_UNCONNECTED;
  wire NLW_ISERDESE2_master_SHIFTOUT2_UNCONNECTED;
  wire NLW_ISERDESE2_slave_O_UNCONNECTED;
  wire NLW_ISERDESE2_slave_SHIFTOUT1_UNCONNECTED;
  wire NLW_ISERDESE2_slave_SHIFTOUT2_UNCONNECTED;
  wire [4:0]NLW_idelay_m_CNTVALUEOUT_UNCONNECTED;
  wire [4:0]NLW_idelay_s_CNTVALUEOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    ISERDESE2_master
       (.BITSLIP(bitslipx1p25),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(rx_clk),
        .CLKB(CLKB0),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(rx_data_delay_m),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_ISERDESE2_master_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(mdout[7]),
        .Q2(mdout[6]),
        .Q3(mdout[5]),
        .Q4(mdout[4]),
        .Q5(mdout[3]),
        .Q6(mdout[2]),
        .Q7(mdout[1]),
        .Q8(mdout[0]),
        .RST(reset_1p25),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_ISERDESE2_master_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_ISERDESE2_master_SHIFTOUT2_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    ISERDESE2_slave
       (.BITSLIP(bitslipx1p25),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(rx_clk),
        .CLKB(CLKB0),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(rx_data_delay_s),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_ISERDESE2_slave_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(sdout[7]),
        .Q2(sdout[6]),
        .Q3(sdout[5]),
        .Q4(sdout[4]),
        .Q5(sdout[3]),
        .Q6(sdout[2]),
        .Q7(sdout[1]),
        .Q8(sdout[0]),
        .RST(reset_1p25),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_ISERDESE2_slave_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_ISERDESE2_slave_SHIFTOUT2_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DQS_BIAS("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    data_in
       (.I(red_p),
        .IB(red_n),
        .O(rx_data_in_m),
        .OB(rx_data_in_s));
  overlay1_dvi_decoder_v2_0_0_delay_controller_wrap dc_inst
       (.CLK(CLK),
        .D(sdout),
        .Q(m_delay_val_in),
        .bitslipx1p25_reg(mdout),
        .\dataout_reg[7] (mdataoutd),
        .p_12_in(p_12_in),
        .red_debug(red_debug),
        .red_eye(red_eye),
        .reset_1p25(reset_1p25),
        .\sdataouta_reg[7]_0 (s_delay_val_in));
  overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10 gb8to10
       (.CLK(CLK),
        .Q(Q),
        .\data_out_reg[7] (mdataoutd),
        .rcvd_ctkn_reg(rcvd_ctkn_reg),
        .read_enable_oclk(read_enable_oclk),
        .read_reset_reg(read_reset_reg),
        .reset_1p25(reset_1p25),
        .rx_clk(rx_clk_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    idelay_m
       (.C(CLK),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(m_delay_val_in),
        .CNTVALUEOUT(NLW_idelay_m_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rx_data_delay_m),
        .IDATAIN(rx_data_in_m),
        .INC(1'b0),
        .LD(1'b1),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b1),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    idelay_s
       (.C(CLK),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(s_delay_val_in),
        .CNTVALUEOUT(NLW_idelay_s_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rx_data_delay_s),
        .IDATAIN(rx_data_in_s),
        .INC(1'b0),
        .LD(1'b1),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
endmodule

(* ORIG_REF_NAME = "serdes_1_10_diff" *) 
module overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff_11
   (read_enable_oclk,
    blue_debug,
    blue_eye,
    Q,
    rcvd_ctkn_reg,
    blue_p,
    blue_n,
    CLK,
    bitslipx1p25,
    rx_clk,
    CLKB0,
    reset_1p25,
    rx_clk_0,
    p_12_in,
    read_reset_reg);
  output read_enable_oclk;
  output [31:0]blue_debug;
  output [31:0]blue_eye;
  output [9:0]Q;
  output rcvd_ctkn_reg;
  input blue_p;
  input blue_n;
  input CLK;
  input bitslipx1p25;
  input rx_clk;
  input CLKB0;
  input reset_1p25;
  input rx_clk_0;
  input p_12_in;
  input [0:0]read_reset_reg;

  wire CLK;
  wire CLKB0;
  wire [9:0]Q;
  wire bitslipx1p25;
  wire [31:0]blue_debug;
  wire [31:0]blue_eye;
  wire blue_n;
  wire blue_p;
  wire [4:0]m_delay_val_in;
  wire [7:0]mdataoutd;
  wire [7:0]mdout;
  wire p_12_in;
  wire rcvd_ctkn_reg;
  wire read_enable_oclk;
  wire [0:0]read_reset_reg;
  wire reset_1p25;
  wire rx_clk;
  wire rx_clk_0;
  wire rx_data_delay_m;
  wire rx_data_delay_s;
  wire rx_data_in_m;
  wire rx_data_in_s;
  wire [4:0]s_delay_val_in;
  wire [7:0]sdout;
  wire NLW_ISERDESE2_master_O_UNCONNECTED;
  wire NLW_ISERDESE2_master_SHIFTOUT1_UNCONNECTED;
  wire NLW_ISERDESE2_master_SHIFTOUT2_UNCONNECTED;
  wire NLW_ISERDESE2_slave_O_UNCONNECTED;
  wire NLW_ISERDESE2_slave_SHIFTOUT1_UNCONNECTED;
  wire NLW_ISERDESE2_slave_SHIFTOUT2_UNCONNECTED;
  wire [4:0]NLW_idelay_m_CNTVALUEOUT_UNCONNECTED;
  wire [4:0]NLW_idelay_s_CNTVALUEOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    ISERDESE2_master
       (.BITSLIP(bitslipx1p25),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(rx_clk),
        .CLKB(CLKB0),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(rx_data_delay_m),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_ISERDESE2_master_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(mdout[7]),
        .Q2(mdout[6]),
        .Q3(mdout[5]),
        .Q4(mdout[4]),
        .Q5(mdout[3]),
        .Q6(mdout[2]),
        .Q7(mdout[1]),
        .Q8(mdout[0]),
        .RST(reset_1p25),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_ISERDESE2_master_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_ISERDESE2_master_SHIFTOUT2_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    ISERDESE2_slave
       (.BITSLIP(bitslipx1p25),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(rx_clk),
        .CLKB(CLKB0),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(rx_data_delay_s),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_ISERDESE2_slave_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(sdout[7]),
        .Q2(sdout[6]),
        .Q3(sdout[5]),
        .Q4(sdout[4]),
        .Q5(sdout[3]),
        .Q6(sdout[2]),
        .Q7(sdout[1]),
        .Q8(sdout[0]),
        .RST(reset_1p25),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_ISERDESE2_slave_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_ISERDESE2_slave_SHIFTOUT2_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DQS_BIAS("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    data_in
       (.I(blue_p),
        .IB(blue_n),
        .O(rx_data_in_m),
        .OB(rx_data_in_s));
  overlay1_dvi_decoder_v2_0_0_delay_controller_wrap_13 dc_inst
       (.CLK(CLK),
        .D(sdout),
        .Q(s_delay_val_in),
        .bitslipx1p25_reg(mdout),
        .blue_debug(blue_debug),
        .blue_eye(blue_eye),
        .\dataout_reg[7] (mdataoutd),
        .m_delay_val_in(m_delay_val_in),
        .p_12_in(p_12_in),
        .reset_1p25(reset_1p25));
  overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10_14 gb8to10
       (.CLK(CLK),
        .Q(Q),
        .\data_out_reg[7] (mdataoutd),
        .rcvd_ctkn_reg(rcvd_ctkn_reg),
        .read_enable_oclk(read_enable_oclk),
        .read_reset_reg(read_reset_reg),
        .reset_1p25(reset_1p25),
        .rx_clk(rx_clk_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    idelay_m
       (.C(CLK),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(m_delay_val_in),
        .CNTVALUEOUT(NLW_idelay_m_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rx_data_delay_m),
        .IDATAIN(rx_data_in_m),
        .INC(1'b0),
        .LD(1'b1),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b1),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    idelay_s
       (.C(CLK),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(s_delay_val_in),
        .CNTVALUEOUT(NLW_idelay_s_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rx_data_delay_s),
        .IDATAIN(rx_data_in_s),
        .INC(1'b0),
        .LD(1'b1),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
endmodule

(* ORIG_REF_NAME = "serdes_1_10_diff" *) 
module overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff_5
   (SR,
    pd_min_reg,
    green_debug,
    \FSM_sequential_read_addra_reg[0] ,
    \FSM_sequential_read_addra_reg[0]_0 ,
    green_eye,
    Q,
    rcvd_ctkn_reg,
    green_p,
    green_n,
    CLK,
    bitslipx1p25,
    rx_clk,
    CLKB0,
    rx_clk_0,
    reset_reg,
    read_enable_oclk,
    read_enable_oclk_0);
  output [0:0]SR;
  output pd_min_reg;
  output [31:0]green_debug;
  output [0:0]\FSM_sequential_read_addra_reg[0] ;
  output [0:0]\FSM_sequential_read_addra_reg[0]_0 ;
  output [31:0]green_eye;
  output [9:0]Q;
  output rcvd_ctkn_reg;
  input green_p;
  input green_n;
  input CLK;
  input bitslipx1p25;
  input rx_clk;
  input CLKB0;
  input rx_clk_0;
  input [0:0]reset_reg;
  input read_enable_oclk;
  input read_enable_oclk_0;

  wire CLK;
  wire CLKB0;
  wire [0:0]\FSM_sequential_read_addra_reg[0] ;
  wire [0:0]\FSM_sequential_read_addra_reg[0]_0 ;
  wire [9:0]Q;
  wire [0:0]SR;
  wire bitslipx1p25;
  wire [31:0]green_debug;
  wire [31:0]green_eye;
  wire green_n;
  wire green_p;
  wire [4:0]m_delay_val_in;
  wire [7:0]mdataoutd;
  wire [7:0]mdout;
  wire pd_min_reg;
  wire rcvd_ctkn_reg;
  wire read_enable_oclk;
  wire read_enable_oclk_0;
  wire [0:0]reset_reg;
  wire rx_clk;
  wire rx_clk_0;
  wire rx_data_delay_m;
  wire rx_data_delay_s;
  wire rx_data_in_m;
  wire rx_data_in_s;
  wire [4:0]s_delay_val_in;
  wire [7:0]sdout;
  wire NLW_ISERDESE2_master_O_UNCONNECTED;
  wire NLW_ISERDESE2_master_SHIFTOUT1_UNCONNECTED;
  wire NLW_ISERDESE2_master_SHIFTOUT2_UNCONNECTED;
  wire NLW_ISERDESE2_slave_O_UNCONNECTED;
  wire NLW_ISERDESE2_slave_SHIFTOUT1_UNCONNECTED;
  wire NLW_ISERDESE2_slave_SHIFTOUT2_UNCONNECTED;
  wire [4:0]NLW_idelay_m_CNTVALUEOUT_UNCONNECTED;
  wire [4:0]NLW_idelay_s_CNTVALUEOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    ISERDESE2_master
       (.BITSLIP(bitslipx1p25),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(rx_clk),
        .CLKB(CLKB0),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(rx_data_delay_m),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_ISERDESE2_master_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(mdout[7]),
        .Q2(mdout[6]),
        .Q3(mdout[5]),
        .Q4(mdout[4]),
        .Q5(mdout[3]),
        .Q6(mdout[2]),
        .Q7(mdout[1]),
        .Q8(mdout[0]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_ISERDESE2_master_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_ISERDESE2_master_SHIFTOUT2_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    ISERDESE2_slave
       (.BITSLIP(bitslipx1p25),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(rx_clk),
        .CLKB(CLKB0),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(rx_data_delay_s),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_ISERDESE2_slave_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(sdout[7]),
        .Q2(sdout[6]),
        .Q3(sdout[5]),
        .Q4(sdout[4]),
        .Q5(sdout[3]),
        .Q6(sdout[2]),
        .Q7(sdout[1]),
        .Q8(sdout[0]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_ISERDESE2_slave_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_ISERDESE2_slave_SHIFTOUT2_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DQS_BIAS("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    data_in
       (.I(green_p),
        .IB(green_n),
        .O(rx_data_in_m),
        .OB(rx_data_in_s));
  overlay1_dvi_decoder_v2_0_0_delay_controller_wrap_7 dc_inst
       (.CLK(CLK),
        .D(sdout),
        .E(pd_min_reg),
        .Q(m_delay_val_in),
        .bitslipx1p25_reg(mdout),
        .\dataout_reg[7] (mdataoutd),
        .green_debug(green_debug),
        .green_eye(green_eye),
        .reset_1p25_reg(SR),
        .\sdataouta_reg[7]_0 (s_delay_val_in));
  overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10_8 gb8to10
       (.CLK(CLK),
        .\FSM_sequential_read_addra_reg[0]_0 (\FSM_sequential_read_addra_reg[0] ),
        .\FSM_sequential_read_addra_reg[0]_1 (\FSM_sequential_read_addra_reg[0]_0 ),
        .Q(Q),
        .SR(SR),
        .\data_out_reg[7] (mdataoutd),
        .rcvd_ctkn_reg(rcvd_ctkn_reg),
        .read_enable_oclk(read_enable_oclk),
        .read_enable_oclk_0(read_enable_oclk_0),
        .reset_reg(reset_reg),
        .rx_clk(rx_clk_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    idelay_m
       (.C(CLK),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(m_delay_val_in),
        .CNTVALUEOUT(NLW_idelay_m_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rx_data_delay_m),
        .IDATAIN(rx_data_in_m),
        .INC(1'b0),
        .LD(1'b1),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b1),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    idelay_s
       (.C(CLK),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(s_delay_val_in),
        .CNTVALUEOUT(NLW_idelay_s_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rx_data_delay_s),
        .IDATAIN(rx_data_in_s),
        .INC(1'b0),
        .LD(1'b1),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  FDRE reset_1p25_reg
       (.C(CLK),
        .CE(1'b1),
        .D(reset_reg),
        .Q(SR),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "tmds_data_dec" *) 
module overlay1_dvi_decoder_v2_0_0_tmds_data_dec
   (blue,
    \sdout_reg[9] ,
    rx_clk);
  output [7:0]blue;
  input [9:0]\sdout_reg[9] ;
  input rx_clk;

  wire [7:0]blue;
  wire p_0_in;
  wire [7:1]p_13_out;
  wire p_1_in;
  wire p_1_in1_in;
  wire p_1_in3_in;
  wire p_1_in5_in;
  wire p_1_in7_in;
  wire p_1_in9_in;
  wire [7:0]p_1_out;
  wire rx_clk;
  wire [9:0]\sdout_reg[9] ;
  wire \tmds_d9_reg_n_0_[0] ;
  wire \tmds_d9_reg_n_0_[8] ;

  LUT3 #(
    .INIT(8'h69)) 
    \decoded[1]_i_1 
       (.I0(p_0_in),
        .I1(\tmds_d9_reg_n_0_[0] ),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[2]_i_1 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[3]_i_1 
       (.I0(p_1_in1_in),
        .I1(p_1_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[4]_i_1 
       (.I0(p_1_in3_in),
        .I1(p_1_in1_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[5]_i_1 
       (.I0(p_1_in5_in),
        .I1(p_1_in3_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[6]_i_1 
       (.I0(p_1_in7_in),
        .I1(p_1_in5_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[7]_i_1 
       (.I0(p_1_in9_in),
        .I1(p_1_in7_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[7]));
  FDRE \decoded_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\tmds_d9_reg_n_0_[0] ),
        .Q(blue[0]),
        .R(1'b0));
  FDRE \decoded_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[1]),
        .Q(blue[1]),
        .R(1'b0));
  FDRE \decoded_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[2]),
        .Q(blue[2]),
        .R(1'b0));
  FDRE \decoded_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[3]),
        .Q(blue[3]),
        .R(1'b0));
  FDRE \decoded_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[4]),
        .Q(blue[4]),
        .R(1'b0));
  FDRE \decoded_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[5]),
        .Q(blue[5]),
        .R(1'b0));
  FDRE \decoded_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[6]),
        .Q(blue[6]),
        .R(1'b0));
  FDRE \decoded_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[7]),
        .Q(blue[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[0]_i_1 
       (.I0(\sdout_reg[9] [0]),
        .I1(\sdout_reg[9] [9]),
        .O(p_1_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[1]_i_1 
       (.I0(\sdout_reg[9] [1]),
        .I1(\sdout_reg[9] [9]),
        .O(p_1_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[2]_i_1 
       (.I0(\sdout_reg[9] [2]),
        .I1(\sdout_reg[9] [9]),
        .O(p_1_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[3]_i_1 
       (.I0(\sdout_reg[9] [3]),
        .I1(\sdout_reg[9] [9]),
        .O(p_1_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[4]_i_1 
       (.I0(\sdout_reg[9] [4]),
        .I1(\sdout_reg[9] [9]),
        .O(p_1_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[5]_i_1 
       (.I0(\sdout_reg[9] [5]),
        .I1(\sdout_reg[9] [9]),
        .O(p_1_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[6]_i_1 
       (.I0(\sdout_reg[9] [6]),
        .I1(\sdout_reg[9] [9]),
        .O(p_1_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[7]_i_1 
       (.I0(\sdout_reg[9] [7]),
        .I1(\sdout_reg[9] [9]),
        .O(p_1_out[7]));
  FDRE \tmds_d9_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[0]),
        .Q(\tmds_d9_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmds_d9_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[1]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[2]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[3]),
        .Q(p_1_in1_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[4]),
        .Q(p_1_in3_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[5]),
        .Q(p_1_in5_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[6]),
        .Q(p_1_in7_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[7]),
        .Q(p_1_in9_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\sdout_reg[9] [8]),
        .Q(\tmds_d9_reg_n_0_[8] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "tmds_data_dec" *) 
module overlay1_dvi_decoder_v2_0_0_tmds_data_dec_2
   (green,
    sdout,
    rx_clk);
  output [7:0]green;
  input [9:0]sdout;
  input rx_clk;

  wire [7:0]green;
  wire p_0_in;
  wire [7:1]p_13_out;
  wire p_1_in;
  wire p_1_in1_in;
  wire p_1_in3_in;
  wire p_1_in5_in;
  wire p_1_in7_in;
  wire p_1_in9_in;
  wire [7:0]p_1_out;
  wire rx_clk;
  wire [9:0]sdout;
  wire \tmds_d9_reg_n_0_[0] ;
  wire \tmds_d9_reg_n_0_[8] ;

  LUT3 #(
    .INIT(8'h69)) 
    \decoded[1]_i_1 
       (.I0(p_0_in),
        .I1(\tmds_d9_reg_n_0_[0] ),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[2]_i_1 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[3]_i_1 
       (.I0(p_1_in1_in),
        .I1(p_1_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[4]_i_1 
       (.I0(p_1_in3_in),
        .I1(p_1_in1_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[5]_i_1 
       (.I0(p_1_in5_in),
        .I1(p_1_in3_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[6]_i_1 
       (.I0(p_1_in7_in),
        .I1(p_1_in5_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[7]_i_1 
       (.I0(p_1_in9_in),
        .I1(p_1_in7_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[7]));
  FDRE \decoded_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\tmds_d9_reg_n_0_[0] ),
        .Q(green[0]),
        .R(1'b0));
  FDRE \decoded_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[1]),
        .Q(green[1]),
        .R(1'b0));
  FDRE \decoded_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[2]),
        .Q(green[2]),
        .R(1'b0));
  FDRE \decoded_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[3]),
        .Q(green[3]),
        .R(1'b0));
  FDRE \decoded_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[4]),
        .Q(green[4]),
        .R(1'b0));
  FDRE \decoded_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[5]),
        .Q(green[5]),
        .R(1'b0));
  FDRE \decoded_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[6]),
        .Q(green[6]),
        .R(1'b0));
  FDRE \decoded_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[7]),
        .Q(green[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[0]_i_1 
       (.I0(sdout[0]),
        .I1(sdout[9]),
        .O(p_1_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[1]_i_1 
       (.I0(sdout[1]),
        .I1(sdout[9]),
        .O(p_1_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[2]_i_1 
       (.I0(sdout[2]),
        .I1(sdout[9]),
        .O(p_1_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[3]_i_1 
       (.I0(sdout[3]),
        .I1(sdout[9]),
        .O(p_1_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[4]_i_1 
       (.I0(sdout[4]),
        .I1(sdout[9]),
        .O(p_1_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[5]_i_1 
       (.I0(sdout[5]),
        .I1(sdout[9]),
        .O(p_1_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[6]_i_1 
       (.I0(sdout[6]),
        .I1(sdout[9]),
        .O(p_1_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[7]_i_1 
       (.I0(sdout[7]),
        .I1(sdout[9]),
        .O(p_1_out[7]));
  FDRE \tmds_d9_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[0]),
        .Q(\tmds_d9_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmds_d9_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[1]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[2]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[3]),
        .Q(p_1_in1_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[4]),
        .Q(p_1_in3_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[5]),
        .Q(p_1_in5_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[6]),
        .Q(p_1_in7_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[7]),
        .Q(p_1_in9_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(sdout[8]),
        .Q(\tmds_d9_reg_n_0_[8] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "tmds_data_dec" *) 
module overlay1_dvi_decoder_v2_0_0_tmds_data_dec_3
   (red,
    sdout,
    rx_clk);
  output [7:0]red;
  input [9:0]sdout;
  input rx_clk;

  wire p_0_in;
  wire [7:1]p_13_out;
  wire p_1_in;
  wire p_1_in1_in;
  wire p_1_in3_in;
  wire p_1_in5_in;
  wire p_1_in7_in;
  wire p_1_in9_in;
  wire [7:0]p_1_out;
  wire [7:0]red;
  wire rx_clk;
  wire [9:0]sdout;
  wire \tmds_d9_reg_n_0_[0] ;
  wire \tmds_d9_reg_n_0_[8] ;

  LUT3 #(
    .INIT(8'h69)) 
    \decoded[1]_i_1 
       (.I0(p_0_in),
        .I1(\tmds_d9_reg_n_0_[0] ),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[2]_i_1 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[3]_i_1 
       (.I0(p_1_in1_in),
        .I1(p_1_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[4]_i_1 
       (.I0(p_1_in3_in),
        .I1(p_1_in1_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[5]_i_1 
       (.I0(p_1_in5_in),
        .I1(p_1_in3_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[6]_i_1 
       (.I0(p_1_in7_in),
        .I1(p_1_in5_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \decoded[7]_i_1 
       (.I0(p_1_in9_in),
        .I1(p_1_in7_in),
        .I2(\tmds_d9_reg_n_0_[8] ),
        .O(p_13_out[7]));
  FDRE \decoded_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\tmds_d9_reg_n_0_[0] ),
        .Q(red[0]),
        .R(1'b0));
  FDRE \decoded_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[1]),
        .Q(red[1]),
        .R(1'b0));
  FDRE \decoded_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[2]),
        .Q(red[2]),
        .R(1'b0));
  FDRE \decoded_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[3]),
        .Q(red[3]),
        .R(1'b0));
  FDRE \decoded_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[4]),
        .Q(red[4]),
        .R(1'b0));
  FDRE \decoded_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[5]),
        .Q(red[5]),
        .R(1'b0));
  FDRE \decoded_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[6]),
        .Q(red[6]),
        .R(1'b0));
  FDRE \decoded_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_13_out[7]),
        .Q(red[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[0]_i_1 
       (.I0(sdout[0]),
        .I1(sdout[9]),
        .O(p_1_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[1]_i_1 
       (.I0(sdout[1]),
        .I1(sdout[9]),
        .O(p_1_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[2]_i_1 
       (.I0(sdout[2]),
        .I1(sdout[9]),
        .O(p_1_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[3]_i_1 
       (.I0(sdout[3]),
        .I1(sdout[9]),
        .O(p_1_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[4]_i_1 
       (.I0(sdout[4]),
        .I1(sdout[9]),
        .O(p_1_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[5]_i_1 
       (.I0(sdout[5]),
        .I1(sdout[9]),
        .O(p_1_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[6]_i_1 
       (.I0(sdout[6]),
        .I1(sdout[9]),
        .O(p_1_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds_d9[7]_i_1 
       (.I0(sdout[7]),
        .I1(sdout[9]),
        .O(p_1_out[7]));
  FDRE \tmds_d9_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[0]),
        .Q(\tmds_d9_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmds_d9_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[1]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[2]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[3]),
        .Q(p_1_in1_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[4]),
        .Q(p_1_in3_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[5]),
        .Q(p_1_in5_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[6]),
        .Q(p_1_in7_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(p_1_out[7]),
        .Q(p_1_in9_in),
        .R(1'b0));
  FDRE \tmds_d9_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(sdout[8]),
        .Q(\tmds_d9_reg_n_0_[8] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
