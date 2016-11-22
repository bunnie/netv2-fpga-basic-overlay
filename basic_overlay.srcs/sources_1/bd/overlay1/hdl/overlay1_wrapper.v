//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
//Date        : Mon Nov 21 13:23:25 2016
//Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target overlay1_wrapper.bd
//Design      : overlay1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module overlay1_wrapper
   (BLINKENLIGHT,
    HDMI_RX_0_N,
    HDMI_RX_0_P,
    HDMI_RX_1_N,
    HDMI_RX_1_P,
    HDMI_RX_2_N,
    HDMI_RX_2_P,
    HDMI_RX_CLK_N,
    HDMI_RX_CLK_P,
    HDMI_TX_0_N,
    HDMI_TX_0_P,
    HDMI_TX_1_N,
    HDMI_TX_1_P,
    HDMI_TX_2_N,
    HDMI_TX_2_P,
    HDMI_TX_CLK_N,
    HDMI_TX_CLK_P,
    HPD,
    HPD_OVER,
    LV_SCL,
    LV_SDA,
    PCI_CLK_N,
    PCI_CLK_P,
    PCI_RX_N,
    PCI_RX_P,
    PCI_TX_N,
    PCI_TX_P,
    PERST_N,
    SYSCLK,
    ddr3_a,
    ddr3_ba,
    ddr3_cas_n,
    ddr3_ck_n,
    ddr3_ck_p,
    ddr3_cke,
    ddr3_cs_n,
    ddr3_dm,
    ddr3_dq,
    ddr3_dqs_n,
    ddr3_dqs_p,
    ddr3_odt,
    ddr3_ras_n,
    ddr3_reset_n,
    ddr3_we_n);
  output [0:0]BLINKENLIGHT;
  input HDMI_RX_0_N;
  input HDMI_RX_0_P;
  input HDMI_RX_1_N;
  input HDMI_RX_1_P;
  input HDMI_RX_2_N;
  input HDMI_RX_2_P;
  input HDMI_RX_CLK_N;
  input HDMI_RX_CLK_P;
  output [0:0]HDMI_TX_0_N;
  output [0:0]HDMI_TX_0_P;
  output [0:0]HDMI_TX_1_N;
  output [0:0]HDMI_TX_1_P;
  output [0:0]HDMI_TX_2_N;
  output [0:0]HDMI_TX_2_P;
  output [0:0]HDMI_TX_CLK_N;
  output [0:0]HDMI_TX_CLK_P;
  input HPD;
  output [0:0]HPD_OVER;
  input LV_SCL;
  input LV_SDA;
  input PCI_CLK_N;
  input PCI_CLK_P;
  input PCI_RX_N;
  input PCI_RX_P;
  output [0:0]PCI_TX_N;
  output [0:0]PCI_TX_P;
  input PERST_N;
  input SYSCLK;
  output [13:0]ddr3_a;
  output [2:0]ddr3_ba;
  output ddr3_cas_n;
  output [0:0]ddr3_ck_n;
  output [0:0]ddr3_ck_p;
  output [0:0]ddr3_cke;
  output [0:0]ddr3_cs_n;
  output [3:0]ddr3_dm;
  inout [31:0]ddr3_dq;
  inout [3:0]ddr3_dqs_n;
  inout [3:0]ddr3_dqs_p;
  output [0:0]ddr3_odt;
  output ddr3_ras_n;
  output ddr3_reset_n;
  output ddr3_we_n;

  wire [0:0]BLINKENLIGHT;
  wire HDMI_RX_0_N;
  wire HDMI_RX_0_P;
  wire HDMI_RX_1_N;
  wire HDMI_RX_1_P;
  wire HDMI_RX_2_N;
  wire HDMI_RX_2_P;
  wire HDMI_RX_CLK_N;
  wire HDMI_RX_CLK_P;
  wire [0:0]HDMI_TX_0_N;
  wire [0:0]HDMI_TX_0_P;
  wire [0:0]HDMI_TX_1_N;
  wire [0:0]HDMI_TX_1_P;
  wire [0:0]HDMI_TX_2_N;
  wire [0:0]HDMI_TX_2_P;
  wire [0:0]HDMI_TX_CLK_N;
  wire [0:0]HDMI_TX_CLK_P;
  wire HPD;
  wire [0:0]HPD_OVER;
  wire LV_SCL;
  wire LV_SDA;
  wire PCI_CLK_N;
  wire PCI_CLK_P;
  wire PCI_RX_N;
  wire PCI_RX_P;
  wire [0:0]PCI_TX_N;
  wire [0:0]PCI_TX_P;
  wire PERST_N;
  wire SYSCLK;
  wire [13:0]ddr3_a;
  wire [2:0]ddr3_ba;
  wire ddr3_cas_n;
  wire [0:0]ddr3_ck_n;
  wire [0:0]ddr3_ck_p;
  wire [0:0]ddr3_cke;
  wire [0:0]ddr3_cs_n;
  wire [3:0]ddr3_dm;
  wire [31:0]ddr3_dq;
  wire [3:0]ddr3_dqs_n;
  wire [3:0]ddr3_dqs_p;
  wire [0:0]ddr3_odt;
  wire ddr3_ras_n;
  wire ddr3_reset_n;
  wire ddr3_we_n;

  overlay1 overlay1_i
       (.BLINKENLIGHT(BLINKENLIGHT),
        .HDMI_RX_0_N(HDMI_RX_0_N),
        .HDMI_RX_0_P(HDMI_RX_0_P),
        .HDMI_RX_1_N(HDMI_RX_1_N),
        .HDMI_RX_1_P(HDMI_RX_1_P),
        .HDMI_RX_2_N(HDMI_RX_2_N),
        .HDMI_RX_2_P(HDMI_RX_2_P),
        .HDMI_RX_CLK_N(HDMI_RX_CLK_N),
        .HDMI_RX_CLK_P(HDMI_RX_CLK_P),
        .HDMI_TX_0_N(HDMI_TX_0_N),
        .HDMI_TX_0_P(HDMI_TX_0_P),
        .HDMI_TX_1_N(HDMI_TX_1_N),
        .HDMI_TX_1_P(HDMI_TX_1_P),
        .HDMI_TX_2_N(HDMI_TX_2_N),
        .HDMI_TX_2_P(HDMI_TX_2_P),
        .HDMI_TX_CLK_N(HDMI_TX_CLK_N),
        .HDMI_TX_CLK_P(HDMI_TX_CLK_P),
        .HPD(HPD),
        .HPD_OVER(HPD_OVER),
        .LV_SCL(LV_SCL),
        .LV_SDA(LV_SDA),
        .PCI_CLK_N(PCI_CLK_N),
        .PCI_CLK_P(PCI_CLK_P),
        .PCI_RX_N(PCI_RX_N),
        .PCI_RX_P(PCI_RX_P),
        .PCI_TX_N(PCI_TX_N),
        .PCI_TX_P(PCI_TX_P),
        .PERST_N(PERST_N),
        .SYSCLK(SYSCLK),
        .ddr3_a(ddr3_a),
        .ddr3_ba(ddr3_ba),
        .ddr3_cas_n(ddr3_cas_n),
        .ddr3_ck_n(ddr3_ck_n),
        .ddr3_ck_p(ddr3_ck_p),
        .ddr3_cke(ddr3_cke),
        .ddr3_cs_n(ddr3_cs_n),
        .ddr3_dm(ddr3_dm),
        .ddr3_dq(ddr3_dq),
        .ddr3_dqs_n(ddr3_dqs_n),
        .ddr3_dqs_p(ddr3_dqs_p),
        .ddr3_odt(ddr3_odt),
        .ddr3_ras_n(ddr3_ras_n),
        .ddr3_reset_n(ddr3_reset_n),
        .ddr3_we_n(ddr3_we_n));
endmodule
