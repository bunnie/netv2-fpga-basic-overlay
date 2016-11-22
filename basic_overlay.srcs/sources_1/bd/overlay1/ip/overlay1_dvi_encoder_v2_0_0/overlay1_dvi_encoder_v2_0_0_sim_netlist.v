// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Mon Oct 31 00:59:30 2016
// Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_dvi_encoder_v2_0_0/overlay1_dvi_encoder_v2_0_0_sim_netlist.v
// Design      : overlay1_dvi_encoder_v2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tcsg325-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "overlay1_dvi_encoder_v2_0_0,dvi_encoder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "dvi_encoder,Vivado 2016.1" *) 
(* NotValidForBitStream *)
module overlay1_dvi_encoder_v2_0_0
   (p_clk,
    px5_clk,
    reset,
    blue_din,
    green_din,
    red_din,
    hsync,
    vsync,
    de,
    TMDS_0_P,
    TMDS_0_N,
    TMDS_1_P,
    TMDS_1_N,
    TMDS_2_P,
    TMDS_2_N,
    TMDS_CLK_P,
    TMDS_CLK_N,
    vid_gb,
    dat_gb,
    dat_ena,
    blue_di,
    green_di,
    red_di,
    ctl_code,
    bypass_sdata,
    bypass_ena,
    bypass_video_only);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 p_clk CLK" *) input p_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 px5_clk CLK" *) input px5_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstin RST" *) input reset;
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

  (* SLEW = "SLOW" *) wire TMDS_0_N;
  (* SLEW = "SLOW" *) wire TMDS_0_P;
  (* SLEW = "SLOW" *) wire TMDS_1_N;
  (* SLEW = "SLOW" *) wire TMDS_1_P;
  (* SLEW = "SLOW" *) wire TMDS_2_N;
  (* SLEW = "SLOW" *) wire TMDS_2_P;
  (* SLEW = "SLOW" *) wire TMDS_CLK_N;
  (* SLEW = "SLOW" *) wire TMDS_CLK_P;
  wire [7:0]blue_din;
  wire bypass_ena;
  wire [29:0]bypass_sdata;
  wire bypass_video_only;
  wire [3:0]ctl_code;
  wire de;
  wire [7:0]green_din;
  wire hsync;
  wire p_clk;
  wire px5_clk;
  wire [7:0]red_din;
  wire reset;
  wire vid_gb;
  wire vsync;

  overlay1_dvi_encoder_v2_0_0_dvi_encoder inst
       (.TMDS_0_N(TMDS_0_N),
        .TMDS_0_P(TMDS_0_P),
        .TMDS_1_N(TMDS_1_N),
        .TMDS_1_P(TMDS_1_P),
        .TMDS_2_N(TMDS_2_N),
        .TMDS_2_P(TMDS_2_P),
        .TMDS_CLK_N(TMDS_CLK_N),
        .TMDS_CLK_P(TMDS_CLK_P),
        .blue_din(blue_din),
        .bypass_ena(bypass_ena),
        .bypass_sdata(bypass_sdata),
        .bypass_video_only(bypass_video_only),
        .ctl_code(ctl_code),
        .de(de),
        .green_din(green_din),
        .hsync(hsync),
        .p_clk(p_clk),
        .px5_clk(px5_clk),
        .red_din(red_din),
        .reset(reset),
        .vid_gb(vid_gb),
        .vsync(vsync));
endmodule

(* ORIG_REF_NAME = "dvi_encoder" *) 
module overlay1_dvi_encoder_v2_0_0_dvi_encoder
   (TMDS_0_P,
    TMDS_0_N,
    TMDS_1_P,
    TMDS_1_N,
    TMDS_2_P,
    TMDS_2_N,
    TMDS_CLK_P,
    TMDS_CLK_N,
    p_clk,
    bypass_sdata,
    px5_clk,
    reset,
    blue_din,
    de,
    vid_gb,
    green_din,
    red_din,
    hsync,
    vsync,
    ctl_code,
    bypass_ena,
    bypass_video_only);
  output TMDS_0_P;
  output TMDS_0_N;
  output TMDS_1_P;
  output TMDS_1_N;
  output TMDS_2_P;
  output TMDS_2_N;
  output TMDS_CLK_P;
  output TMDS_CLK_N;
  input p_clk;
  input [29:0]bypass_sdata;
  input px5_clk;
  input reset;
  input [7:0]blue_din;
  input de;
  input vid_gb;
  input [7:0]green_din;
  input [7:0]red_din;
  input hsync;
  input vsync;
  input [3:0]ctl_code;
  input bypass_ena;
  input bypass_video_only;

  wire TMDS_0_N;
  wire TMDS_0_P;
  wire TMDS_1_N;
  wire TMDS_1_P;
  wire TMDS_2_N;
  wire TMDS_2_P;
  wire TMDS_CLK_N;
  wire TMDS_CLK_P;
  wire [7:0]blue_din;
  wire \byp_sd1_reg_n_0_[0] ;
  wire \byp_sd1_reg_n_0_[10] ;
  wire \byp_sd1_reg_n_0_[11] ;
  wire \byp_sd1_reg_n_0_[12] ;
  wire \byp_sd1_reg_n_0_[13] ;
  wire \byp_sd1_reg_n_0_[14] ;
  wire \byp_sd1_reg_n_0_[15] ;
  wire \byp_sd1_reg_n_0_[16] ;
  wire \byp_sd1_reg_n_0_[17] ;
  wire \byp_sd1_reg_n_0_[18] ;
  wire \byp_sd1_reg_n_0_[19] ;
  wire \byp_sd1_reg_n_0_[1] ;
  wire \byp_sd1_reg_n_0_[20] ;
  wire \byp_sd1_reg_n_0_[21] ;
  wire \byp_sd1_reg_n_0_[22] ;
  wire \byp_sd1_reg_n_0_[23] ;
  wire \byp_sd1_reg_n_0_[24] ;
  wire \byp_sd1_reg_n_0_[25] ;
  wire \byp_sd1_reg_n_0_[26] ;
  wire \byp_sd1_reg_n_0_[27] ;
  wire \byp_sd1_reg_n_0_[28] ;
  wire \byp_sd1_reg_n_0_[29] ;
  wire \byp_sd1_reg_n_0_[2] ;
  wire \byp_sd1_reg_n_0_[3] ;
  wire \byp_sd1_reg_n_0_[4] ;
  wire \byp_sd1_reg_n_0_[5] ;
  wire \byp_sd1_reg_n_0_[6] ;
  wire \byp_sd1_reg_n_0_[7] ;
  wire \byp_sd1_reg_n_0_[8] ;
  wire \byp_sd1_reg_n_0_[9] ;
  wire \byp_sd4_reg[0]_srl3_n_0 ;
  wire \byp_sd4_reg[10]_srl3_n_0 ;
  wire \byp_sd4_reg[11]_srl3_n_0 ;
  wire \byp_sd4_reg[12]_srl3_n_0 ;
  wire \byp_sd4_reg[13]_srl3_n_0 ;
  wire \byp_sd4_reg[14]_srl3_n_0 ;
  wire \byp_sd4_reg[15]_srl3_n_0 ;
  wire \byp_sd4_reg[16]_srl3_n_0 ;
  wire \byp_sd4_reg[17]_srl3_n_0 ;
  wire \byp_sd4_reg[18]_srl3_n_0 ;
  wire \byp_sd4_reg[19]_srl3_n_0 ;
  wire \byp_sd4_reg[1]_srl3_n_0 ;
  wire \byp_sd4_reg[20]_srl3_n_0 ;
  wire \byp_sd4_reg[21]_srl3_n_0 ;
  wire \byp_sd4_reg[22]_srl3_n_0 ;
  wire \byp_sd4_reg[23]_srl3_n_0 ;
  wire \byp_sd4_reg[24]_srl3_n_0 ;
  wire \byp_sd4_reg[25]_srl3_n_0 ;
  wire \byp_sd4_reg[26]_srl3_n_0 ;
  wire \byp_sd4_reg[27]_srl3_n_0 ;
  wire \byp_sd4_reg[28]_srl3_n_0 ;
  wire \byp_sd4_reg[29]_srl3_n_0 ;
  wire \byp_sd4_reg[2]_srl3_n_0 ;
  wire \byp_sd4_reg[3]_srl3_n_0 ;
  wire \byp_sd4_reg[4]_srl3_n_0 ;
  wire \byp_sd4_reg[5]_srl3_n_0 ;
  wire \byp_sd4_reg[6]_srl3_n_0 ;
  wire \byp_sd4_reg[7]_srl3_n_0 ;
  wire \byp_sd4_reg[8]_srl3_n_0 ;
  wire \byp_sd4_reg[9]_srl3_n_0 ;
  wire [29:0]byp_sd5;
  wire bypass_ena;
  wire \bypass_q_reg[3]_srl4_n_0 ;
  wire \bypass_q_reg_n_0_[4] ;
  wire [29:0]bypass_sdata;
  wire bypass_video_only;
  wire [3:0]ctl_code;
  wire de;
  wire de_reg;
  wire [9:0]dout;
  wire encb_n_2;
  wire encb_n_3;
  wire encb_n_4;
  wire encb_n_5;
  wire encb_n_6;
  wire encb_n_7;
  wire encb_n_8;
  wire encg_n_0;
  wire encg_n_1;
  wire encg_n_10;
  wire encg_n_11;
  wire encg_n_2;
  wire encg_n_3;
  wire encg_n_4;
  wire encg_n_5;
  wire encg_n_6;
  wire encg_n_7;
  wire encg_n_8;
  wire encg_n_9;
  wire encr_n_0;
  wire encr_n_1;
  wire encr_n_10;
  wire encr_n_2;
  wire encr_n_3;
  wire encr_n_4;
  wire encr_n_5;
  wire encr_n_6;
  wire encr_n_7;
  wire encr_n_8;
  wire encr_n_9;
  wire [7:0]green_din;
  wire hsync;
  wire [0:0]p_0_out;
  wire p_clk;
  wire px5_clk;
  wire [7:0]red_din;
  wire reset;
  wire [29:0]s_data;
  wire tmds_out_0;
  wire tmds_out_1;
  wire tmds_out_2;
  wire tmds_out_clk;
  wire vid_gb;
  wire vid_gb_reg;
  wire vsync;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    TMDS0
       (.I(tmds_out_0),
        .O(TMDS_0_P),
        .OB(TMDS_0_N));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    TMDS1
       (.I(tmds_out_1),
        .O(TMDS_1_P),
        .OB(TMDS_1_N));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    TMDS2
       (.I(tmds_out_2),
        .O(TMDS_2_P),
        .OB(TMDS_2_N));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    TMDS3
       (.I(tmds_out_clk),
        .O(TMDS_CLK_P),
        .OB(TMDS_CLK_N));
  FDRE \byp_sd1_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[0]),
        .Q(\byp_sd1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[10] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[10]),
        .Q(\byp_sd1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[11] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[11]),
        .Q(\byp_sd1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[12] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[12]),
        .Q(\byp_sd1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[13] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[13]),
        .Q(\byp_sd1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[14] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[14]),
        .Q(\byp_sd1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[15] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[15]),
        .Q(\byp_sd1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[16] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[16]),
        .Q(\byp_sd1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[17] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[17]),
        .Q(\byp_sd1_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[18] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[18]),
        .Q(\byp_sd1_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[19] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[19]),
        .Q(\byp_sd1_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[1]),
        .Q(\byp_sd1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[20] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[20]),
        .Q(\byp_sd1_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[21] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[21]),
        .Q(\byp_sd1_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[22] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[22]),
        .Q(\byp_sd1_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[23] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[23]),
        .Q(\byp_sd1_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[24] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[24]),
        .Q(\byp_sd1_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[25] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[25]),
        .Q(\byp_sd1_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[26] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[26]),
        .Q(\byp_sd1_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[27] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[27]),
        .Q(\byp_sd1_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[28] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[28]),
        .Q(\byp_sd1_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[29] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[29]),
        .Q(\byp_sd1_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[2]),
        .Q(\byp_sd1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[3]),
        .Q(\byp_sd1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[4] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[4]),
        .Q(\byp_sd1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[5] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[5]),
        .Q(\byp_sd1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[6] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[6]),
        .Q(\byp_sd1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[7] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[7]),
        .Q(\byp_sd1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[8] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[8]),
        .Q(\byp_sd1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \byp_sd1_reg[9] 
       (.C(p_clk),
        .CE(1'b1),
        .D(bypass_sdata[9]),
        .Q(\byp_sd1_reg_n_0_[9] ),
        .R(1'b0));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[0]_srl3 " *) 
  SRL16E \byp_sd4_reg[0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[0] ),
        .Q(\byp_sd4_reg[0]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[10]_srl3 " *) 
  SRL16E \byp_sd4_reg[10]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[10] ),
        .Q(\byp_sd4_reg[10]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[11]_srl3 " *) 
  SRL16E \byp_sd4_reg[11]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[11] ),
        .Q(\byp_sd4_reg[11]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[12]_srl3 " *) 
  SRL16E \byp_sd4_reg[12]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[12] ),
        .Q(\byp_sd4_reg[12]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[13]_srl3 " *) 
  SRL16E \byp_sd4_reg[13]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[13] ),
        .Q(\byp_sd4_reg[13]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[14]_srl3 " *) 
  SRL16E \byp_sd4_reg[14]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[14] ),
        .Q(\byp_sd4_reg[14]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[15]_srl3 " *) 
  SRL16E \byp_sd4_reg[15]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[15] ),
        .Q(\byp_sd4_reg[15]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[16]_srl3 " *) 
  SRL16E \byp_sd4_reg[16]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[16] ),
        .Q(\byp_sd4_reg[16]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[17]_srl3 " *) 
  SRL16E \byp_sd4_reg[17]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[17] ),
        .Q(\byp_sd4_reg[17]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[18]_srl3 " *) 
  SRL16E \byp_sd4_reg[18]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[18] ),
        .Q(\byp_sd4_reg[18]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[19]_srl3 " *) 
  SRL16E \byp_sd4_reg[19]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[19] ),
        .Q(\byp_sd4_reg[19]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[1]_srl3 " *) 
  SRL16E \byp_sd4_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[1] ),
        .Q(\byp_sd4_reg[1]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[20]_srl3 " *) 
  SRL16E \byp_sd4_reg[20]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[20] ),
        .Q(\byp_sd4_reg[20]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[21]_srl3 " *) 
  SRL16E \byp_sd4_reg[21]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[21] ),
        .Q(\byp_sd4_reg[21]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[22]_srl3 " *) 
  SRL16E \byp_sd4_reg[22]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[22] ),
        .Q(\byp_sd4_reg[22]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[23]_srl3 " *) 
  SRL16E \byp_sd4_reg[23]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[23] ),
        .Q(\byp_sd4_reg[23]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[24]_srl3 " *) 
  SRL16E \byp_sd4_reg[24]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[24] ),
        .Q(\byp_sd4_reg[24]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[25]_srl3 " *) 
  SRL16E \byp_sd4_reg[25]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[25] ),
        .Q(\byp_sd4_reg[25]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[26]_srl3 " *) 
  SRL16E \byp_sd4_reg[26]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[26] ),
        .Q(\byp_sd4_reg[26]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[27]_srl3 " *) 
  SRL16E \byp_sd4_reg[27]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[27] ),
        .Q(\byp_sd4_reg[27]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[28]_srl3 " *) 
  SRL16E \byp_sd4_reg[28]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[28] ),
        .Q(\byp_sd4_reg[28]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[29]_srl3 " *) 
  SRL16E \byp_sd4_reg[29]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[29] ),
        .Q(\byp_sd4_reg[29]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[2]_srl3 " *) 
  SRL16E \byp_sd4_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[2] ),
        .Q(\byp_sd4_reg[2]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[3]_srl3 " *) 
  SRL16E \byp_sd4_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[3] ),
        .Q(\byp_sd4_reg[3]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[4]_srl3 " *) 
  SRL16E \byp_sd4_reg[4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[4] ),
        .Q(\byp_sd4_reg[4]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[5]_srl3 " *) 
  SRL16E \byp_sd4_reg[5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[5] ),
        .Q(\byp_sd4_reg[5]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[6]_srl3 " *) 
  SRL16E \byp_sd4_reg[6]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[6] ),
        .Q(\byp_sd4_reg[6]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[7]_srl3 " *) 
  SRL16E \byp_sd4_reg[7]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[7] ),
        .Q(\byp_sd4_reg[7]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[8]_srl3 " *) 
  SRL16E \byp_sd4_reg[8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[8] ),
        .Q(\byp_sd4_reg[8]_srl3_n_0 ));
  (* srl_bus_name = "\inst/byp_sd4_reg " *) 
  (* srl_name = "\inst/byp_sd4_reg[9]_srl3 " *) 
  SRL16E \byp_sd4_reg[9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(\byp_sd1_reg_n_0_[9] ),
        .Q(\byp_sd4_reg[9]_srl3_n_0 ));
  FDRE \byp_sd5_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[0]_srl3_n_0 ),
        .Q(byp_sd5[0]),
        .R(1'b0));
  FDRE \byp_sd5_reg[10] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[10]_srl3_n_0 ),
        .Q(byp_sd5[10]),
        .R(1'b0));
  FDRE \byp_sd5_reg[11] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[11]_srl3_n_0 ),
        .Q(byp_sd5[11]),
        .R(1'b0));
  FDRE \byp_sd5_reg[12] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[12]_srl3_n_0 ),
        .Q(byp_sd5[12]),
        .R(1'b0));
  FDRE \byp_sd5_reg[13] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[13]_srl3_n_0 ),
        .Q(byp_sd5[13]),
        .R(1'b0));
  FDRE \byp_sd5_reg[14] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[14]_srl3_n_0 ),
        .Q(byp_sd5[14]),
        .R(1'b0));
  FDRE \byp_sd5_reg[15] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[15]_srl3_n_0 ),
        .Q(byp_sd5[15]),
        .R(1'b0));
  FDRE \byp_sd5_reg[16] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[16]_srl3_n_0 ),
        .Q(byp_sd5[16]),
        .R(1'b0));
  FDRE \byp_sd5_reg[17] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[17]_srl3_n_0 ),
        .Q(byp_sd5[17]),
        .R(1'b0));
  FDRE \byp_sd5_reg[18] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[18]_srl3_n_0 ),
        .Q(byp_sd5[18]),
        .R(1'b0));
  FDRE \byp_sd5_reg[19] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[19]_srl3_n_0 ),
        .Q(byp_sd5[19]),
        .R(1'b0));
  FDRE \byp_sd5_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[1]_srl3_n_0 ),
        .Q(byp_sd5[1]),
        .R(1'b0));
  FDRE \byp_sd5_reg[20] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[20]_srl3_n_0 ),
        .Q(byp_sd5[20]),
        .R(1'b0));
  FDRE \byp_sd5_reg[21] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[21]_srl3_n_0 ),
        .Q(byp_sd5[21]),
        .R(1'b0));
  FDRE \byp_sd5_reg[22] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[22]_srl3_n_0 ),
        .Q(byp_sd5[22]),
        .R(1'b0));
  FDRE \byp_sd5_reg[23] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[23]_srl3_n_0 ),
        .Q(byp_sd5[23]),
        .R(1'b0));
  FDRE \byp_sd5_reg[24] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[24]_srl3_n_0 ),
        .Q(byp_sd5[24]),
        .R(1'b0));
  FDRE \byp_sd5_reg[25] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[25]_srl3_n_0 ),
        .Q(byp_sd5[25]),
        .R(1'b0));
  FDRE \byp_sd5_reg[26] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[26]_srl3_n_0 ),
        .Q(byp_sd5[26]),
        .R(1'b0));
  FDRE \byp_sd5_reg[27] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[27]_srl3_n_0 ),
        .Q(byp_sd5[27]),
        .R(1'b0));
  FDRE \byp_sd5_reg[28] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[28]_srl3_n_0 ),
        .Q(byp_sd5[28]),
        .R(1'b0));
  FDRE \byp_sd5_reg[29] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[29]_srl3_n_0 ),
        .Q(byp_sd5[29]),
        .R(1'b0));
  FDRE \byp_sd5_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[2]_srl3_n_0 ),
        .Q(byp_sd5[2]),
        .R(1'b0));
  FDRE \byp_sd5_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[3]_srl3_n_0 ),
        .Q(byp_sd5[3]),
        .R(1'b0));
  FDRE \byp_sd5_reg[4] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[4]_srl3_n_0 ),
        .Q(byp_sd5[4]),
        .R(1'b0));
  FDRE \byp_sd5_reg[5] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[5]_srl3_n_0 ),
        .Q(byp_sd5[5]),
        .R(1'b0));
  FDRE \byp_sd5_reg[6] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[6]_srl3_n_0 ),
        .Q(byp_sd5[6]),
        .R(1'b0));
  FDRE \byp_sd5_reg[7] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[7]_srl3_n_0 ),
        .Q(byp_sd5[7]),
        .R(1'b0));
  FDRE \byp_sd5_reg[8] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[8]_srl3_n_0 ),
        .Q(byp_sd5[8]),
        .R(1'b0));
  FDRE \byp_sd5_reg[9] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\byp_sd4_reg[9]_srl3_n_0 ),
        .Q(byp_sd5[9]),
        .R(1'b0));
  (* srl_bus_name = "\inst/bypass_q_reg " *) 
  (* srl_name = "\inst/bypass_q_reg[3]_srl4 " *) 
  SRL16E \bypass_q_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(p_clk),
        .D(p_0_out),
        .Q(\bypass_q_reg[3]_srl4_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \bypass_q_reg[3]_srl4_i_1 
       (.I0(bypass_ena),
        .I1(de),
        .I2(bypass_video_only),
        .O(p_0_out));
  FDRE \bypass_q_reg[4] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\bypass_q_reg[3]_srl4_n_0 ),
        .Q(\bypass_q_reg_n_0_[4] ),
        .R(1'b0));
  overlay1_dvi_encoder_v2_0_0_encodeb encb
       (.E(encb_n_7),
        .Q(dout),
        .SR(encb_n_6),
        .blue_din(blue_din),
        .c0_reg_reg_0(encg_n_0),
        .c0_reg_reg_1(encr_n_0),
        .c1_reg_reg_0(encg_n_1),
        .de(de),
        .de_reg(de_reg),
        .\dout_reg[0]_0 (encb_n_3),
        .\dout_reg[2]_0 (encb_n_5),
        .\dout_reg[3]_0 (encb_n_2),
        .\dout_reg[3]_1 (encb_n_4),
        .\dout_reg[9]_0 (encb_n_8),
        .hsync(hsync),
        .p_clk(p_clk),
        .reset(reset),
        .vid_gb(vid_gb),
        .vid_gb_reg(vid_gb_reg),
        .vsync(vsync));
  overlay1_dvi_encoder_v2_0_0_encodeg encg
       (.E(encb_n_7),
        .Q({encg_n_2,encg_n_3,encg_n_4,encg_n_5,encg_n_6,encg_n_7,encg_n_8,encg_n_9,encg_n_10,encg_n_11}),
        .SR(encb_n_6),
        .ctl_code(ctl_code[1:0]),
        .de_reg(de_reg),
        .\dout_reg[8]_0 (encg_n_0),
        .\dout_reg[9]_0 (encg_n_1),
        .green_din(green_din),
        .p_clk(p_clk),
        .reset(reset),
        .vid_gb_reg(vid_gb_reg),
        .vid_gb_reg_reg(encb_n_3),
        .vid_gb_reg_reg_0(encb_n_2),
        .vid_gb_reg_reg_1(encb_n_8));
  overlay1_dvi_encoder_v2_0_0_encoder encr
       (.E(encb_n_7),
        .Q({encr_n_1,encr_n_2,encr_n_3,encr_n_4,encr_n_5,encr_n_6,encr_n_7,encr_n_8,encr_n_9,encr_n_10}),
        .SR(encb_n_6),
        .ctl_code(ctl_code[3:2]),
        .de_reg(de_reg),
        .\dout_reg[8]_0 (encr_n_0),
        .p_clk(p_clk),
        .red_din(red_din),
        .reset(reset),
        .vid_gb_reg(vid_gb_reg),
        .vid_gb_reg_reg(encb_n_5),
        .vid_gb_reg_reg_0(encb_n_4));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_1
       (.I0(byp_sd5[0]),
        .I1(dout[0]),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_1__0
       (.I0(byp_sd5[10]),
        .I1(encg_n_11),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_1__1
       (.I0(byp_sd5[20]),
        .I1(encr_n_10),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_2
       (.I0(byp_sd5[1]),
        .I1(dout[1]),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_2__0
       (.I0(byp_sd5[11]),
        .I1(encg_n_10),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_2__1
       (.I0(byp_sd5[21]),
        .I1(encr_n_9),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_3
       (.I0(byp_sd5[2]),
        .I1(dout[2]),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_3__0
       (.I0(byp_sd5[12]),
        .I1(encg_n_9),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_3__1
       (.I0(byp_sd5[22]),
        .I1(encr_n_8),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[22]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_4
       (.I0(byp_sd5[3]),
        .I1(dout[3]),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_4__0
       (.I0(byp_sd5[13]),
        .I1(encg_n_8),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_4__1
       (.I0(byp_sd5[23]),
        .I1(encr_n_7),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_5
       (.I0(byp_sd5[4]),
        .I1(dout[4]),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_5__0
       (.I0(byp_sd5[14]),
        .I1(encg_n_7),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[14]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_5__1
       (.I0(byp_sd5[24]),
        .I1(encr_n_6),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[24]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_6
       (.I0(byp_sd5[5]),
        .I1(dout[5]),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_6__0
       (.I0(byp_sd5[15]),
        .I1(encg_n_6),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_6__1
       (.I0(byp_sd5[25]),
        .I1(encr_n_5),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[25]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_7
       (.I0(byp_sd5[6]),
        .I1(dout[6]),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_7__0
       (.I0(byp_sd5[16]),
        .I1(encg_n_5),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_7__1
       (.I0(byp_sd5[26]),
        .I1(encr_n_4),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[26]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_8
       (.I0(byp_sd5[7]),
        .I1(dout[7]),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_8__0
       (.I0(byp_sd5[17]),
        .I1(encg_n_4),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    master_serdes_i_8__1
       (.I0(byp_sd5[27]),
        .I1(encr_n_3),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[27]));
  overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1 ser_ch0
       (.data(s_data[9:0]),
        .p_clk(p_clk),
        .px5_clk(px5_clk),
        .reset(reset),
        .serial(tmds_out_0));
  overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_0 ser_ch1
       (.data(s_data[19:10]),
        .p_clk(p_clk),
        .px5_clk(px5_clk),
        .reset(reset),
        .serial(tmds_out_1));
  overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_1 ser_ch2
       (.data(s_data[29:20]),
        .p_clk(p_clk),
        .px5_clk(px5_clk),
        .reset(reset),
        .serial(tmds_out_2));
  overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_2 ser_clk
       (.p_clk(p_clk),
        .px5_clk(px5_clk),
        .reset(reset),
        .serial(tmds_out_clk));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    slave_serdes_i_1
       (.I0(byp_sd5[8]),
        .I1(dout[8]),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    slave_serdes_i_1__0
       (.I0(byp_sd5[18]),
        .I1(encg_n_3),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    slave_serdes_i_1__1
       (.I0(byp_sd5[28]),
        .I1(encr_n_2),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[28]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    slave_serdes_i_2
       (.I0(byp_sd5[9]),
        .I1(dout[9]),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    slave_serdes_i_2__0
       (.I0(byp_sd5[19]),
        .I1(encg_n_2),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    slave_serdes_i_2__1
       (.I0(byp_sd5[29]),
        .I1(encr_n_1),
        .I2(\bypass_q_reg_n_0_[4] ),
        .O(s_data[29]));
endmodule

(* ORIG_REF_NAME = "encodeb" *) 
module overlay1_dvi_encoder_v2_0_0_encodeb
   (de_reg,
    vid_gb_reg,
    \dout_reg[3]_0 ,
    \dout_reg[0]_0 ,
    \dout_reg[3]_1 ,
    \dout_reg[2]_0 ,
    SR,
    E,
    \dout_reg[9]_0 ,
    Q,
    de,
    p_clk,
    vid_gb,
    hsync,
    vsync,
    c0_reg_reg_0,
    c0_reg_reg_1,
    reset,
    c1_reg_reg_0,
    blue_din);
  output de_reg;
  output vid_gb_reg;
  output \dout_reg[3]_0 ;
  output \dout_reg[0]_0 ;
  output \dout_reg[3]_1 ;
  output \dout_reg[2]_0 ;
  output [0:0]SR;
  output [0:0]E;
  output \dout_reg[9]_0 ;
  output [9:0]Q;
  input de;
  input p_clk;
  input vid_gb;
  input hsync;
  input vsync;
  input c0_reg_reg_0;
  input c0_reg_reg_1;
  input reset;
  input c1_reg_reg_0;
  input [7:0]blue_din;

  wire [0:0]E;
  wire [9:0]Q;
  wire [0:0]SR;
  wire [7:0]blue_din;
  wire c0_q;
  wire c0_reg;
  wire c0_reg_reg_0;
  wire c0_reg_reg_1;
  wire c1_q;
  wire c1_reg;
  wire c1_reg_reg_0;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[2]_i_2_n_0 ;
  wire \cnt[2]_i_3_n_0 ;
  wire \cnt[2]_i_4_n_0 ;
  wire \cnt[2]_i_5_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire \cnt[3]_i_3_n_0 ;
  wire \cnt[3]_i_4_n_0 ;
  wire \cnt[3]_i_5_n_0 ;
  wire \cnt[3]_i_6_n_0 ;
  wire \cnt[3]_i_7_n_0 ;
  wire \cnt[4]_i_10__1_n_0 ;
  wire \cnt[4]_i_11_n_0 ;
  wire \cnt[4]_i_12_n_0 ;
  wire \cnt[4]_i_13__1_n_0 ;
  wire \cnt[4]_i_14_n_0 ;
  wire \cnt[4]_i_15_n_0 ;
  wire \cnt[4]_i_16_n_0 ;
  wire \cnt[4]_i_17_n_0 ;
  wire \cnt[4]_i_18_n_0 ;
  wire \cnt[4]_i_19_n_0 ;
  wire \cnt[4]_i_20_n_0 ;
  wire \cnt[4]_i_21_n_0 ;
  wire \cnt[4]_i_22_n_0 ;
  wire \cnt[4]_i_23_n_0 ;
  wire \cnt[4]_i_24_n_0 ;
  wire \cnt[4]_i_25_n_0 ;
  wire \cnt[4]_i_26_n_0 ;
  wire \cnt[4]_i_3_n_0 ;
  wire \cnt[4]_i_4_n_0 ;
  wire \cnt[4]_i_5_n_0 ;
  wire \cnt[4]_i_6_n_0 ;
  wire \cnt[4]_i_7_n_0 ;
  wire \cnt[4]_i_8_n_0 ;
  wire \cnt[4]_i_9_n_0 ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire de;
  wire de_q;
  wire de_reg;
  wire decision1;
  wire \din_q_reg_n_0_[0] ;
  wire \dout[0]_i_1_n_0 ;
  wire \dout[1]_i_1_n_0 ;
  wire \dout[2]_i_1__0_n_0 ;
  wire \dout[3]_i_1__0_n_0 ;
  wire \dout[4]_i_1_n_0 ;
  wire \dout[5]_i_1_n_0 ;
  wire \dout[6]_i_1__0_n_0 ;
  wire \dout[6]_i_2_n_0 ;
  wire \dout[7]_i_1__0_n_0 ;
  wire \dout[7]_i_2_n_0 ;
  wire \dout[8]_i_1_n_0 ;
  wire \dout[9]_i_1__0_n_0 ;
  wire \dout[9]_i_2_n_0 ;
  wire \dout_reg[0]_0 ;
  wire \dout_reg[2]_0 ;
  wire \dout_reg[3]_0 ;
  wire \dout_reg[3]_1 ;
  wire \dout_reg[9]_0 ;
  wire hsync;
  wire [3:1]n0q_m;
  wire [3:1]n0q_m0;
  wire [3:0]n1d;
  wire [3:0]n1d0;
  wire \n1d[0]_i_2_n_0 ;
  wire \n1d[1]_i_2_n_0 ;
  wire \n1d[2]_i_2_n_0 ;
  wire \n1d[3]_i_2_n_0 ;
  wire \n1d[3]_i_3_n_0 ;
  wire \n1d[3]_i_4_n_0 ;
  wire [3:1]n1q_m;
  wire [3:1]n1q_m0;
  wire \n1q_m[2]_i_1_n_0 ;
  wire \n1q_m[3]_i_10_n_0 ;
  wire \n1q_m[3]_i_11_n_0 ;
  wire \n1q_m[3]_i_2_n_0 ;
  wire \n1q_m[3]_i_3_n_0 ;
  wire \n1q_m[3]_i_4_n_0 ;
  wire \n1q_m[3]_i_5_n_0 ;
  wire \n1q_m[3]_i_6_n_0 ;
  wire \n1q_m[3]_i_7_n_0 ;
  wire \n1q_m[3]_i_8_n_0 ;
  wire \n1q_m[3]_i_9_n_0 ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire p_0_in4_in;
  wire p_0_in5_in;
  wire p_clk;
  wire [8:8]q_m;
  wire q_m_2;
  wire q_m_3;
  wire q_m_4;
  wire q_m_5;
  wire q_m_6;
  wire q_m_7;
  wire [8:8]q_m_reg;
  wire \q_m_reg[1]_i_1_n_0 ;
  wire \q_m_reg[5]_i_2_n_0 ;
  wire \q_m_reg_reg_n_0_[0] ;
  wire \q_m_reg_reg_n_0_[1] ;
  wire \q_m_reg_reg_n_0_[2] ;
  wire \q_m_reg_reg_n_0_[3] ;
  wire \q_m_reg_reg_n_0_[4] ;
  wire \q_m_reg_reg_n_0_[5] ;
  wire \q_m_reg_reg_n_0_[6] ;
  wire \q_m_reg_reg_n_0_[7] ;
  wire reset;
  wire vid_gb;
  wire vid_gb_q;
  wire vid_gb_reg;
  wire vsync;

  FDRE c0_q_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(hsync),
        .Q(c0_q),
        .R(1'b0));
  FDRE c0_reg_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(c0_q),
        .Q(c0_reg),
        .R(1'b0));
  FDRE c1_q_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(vsync),
        .Q(c1_q),
        .R(1'b0));
  FDRE c1_reg_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(c1_q),
        .Q(c1_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hE1B41E4B1E4BE1B4)) 
    \cnt[1]_i_1 
       (.I0(\cnt[4]_i_5_n_0 ),
        .I1(\cnt[4]_i_7_n_0 ),
        .I2(n0q_m[1]),
        .I3(q_m_reg),
        .I4(n1q_m[1]),
        .I5(\cnt_reg_n_0_[1] ),
        .O(\cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB888)) 
    \cnt[2]_i_1 
       (.I0(\cnt[2]_i_2_n_0 ),
        .I1(\cnt[4]_i_5_n_0 ),
        .I2(\cnt[2]_i_3_n_0 ),
        .I3(\cnt[4]_i_7_n_0 ),
        .I4(\cnt[2]_i_4_n_0 ),
        .I5(\cnt[2]_i_5_n_0 ),
        .O(\cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6696696666699666)) 
    \cnt[2]_i_2 
       (.I0(\cnt[3]_i_6_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(n0q_m[1]),
        .I4(n1q_m[1]),
        .I5(q_m_reg),
        .O(\cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6696696669669969)) 
    \cnt[2]_i_3 
       (.I0(\cnt[3]_i_6_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(n0q_m[1]),
        .I4(q_m_reg),
        .I5(n1q_m[1]),
        .O(\cnt[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hBEEB)) 
    \cnt[2]_i_4 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(n1q_m[1]),
        .I2(q_m_reg),
        .I3(n0q_m[1]),
        .O(\cnt[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    \cnt[2]_i_5 
       (.I0(n1q_m[2]),
        .I1(n0q_m[2]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(q_m_reg),
        .I4(n1q_m[1]),
        .I5(n0q_m[1]),
        .O(\cnt[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \cnt[3]_i_1 
       (.I0(\cnt[3]_i_2_n_0 ),
        .I1(\cnt[3]_i_3_n_0 ),
        .I2(\cnt[4]_i_5_n_0 ),
        .I3(\cnt[3]_i_4_n_0 ),
        .I4(\cnt[4]_i_7_n_0 ),
        .I5(\cnt[3]_i_5_n_0 ),
        .O(\cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6660066666F66F66)) 
    \cnt[3]_i_2 
       (.I0(\cnt[3]_i_6_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(q_m_reg),
        .I3(n1q_m[1]),
        .I4(n0q_m[1]),
        .I5(\cnt_reg_n_0_[1] ),
        .O(\cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h5965A96A)) 
    \cnt[3]_i_3 
       (.I0(\cnt[4]_i_11_n_0 ),
        .I1(q_m_reg),
        .I2(n1q_m[2]),
        .I3(n0q_m[2]),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\cnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFE80017F017FFE80)) 
    \cnt[3]_i_4 
       (.I0(n1q_m[1]),
        .I1(\cnt[3]_i_7_n_0 ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt[4]_i_21_n_0 ),
        .I4(\cnt[4]_i_18_n_0 ),
        .I5(\cnt[4]_i_19_n_0 ),
        .O(\cnt[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA9A59AA9A5955)) 
    \cnt[3]_i_5 
       (.I0(\cnt[4]_i_25_n_0 ),
        .I1(q_m_reg),
        .I2(n1q_m[1]),
        .I3(n0q_m[1]),
        .I4(\cnt[4]_i_13__1_n_0 ),
        .I5(\cnt_reg_n_0_[1] ),
        .O(\cnt[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[3]_i_6 
       (.I0(n1q_m[2]),
        .I1(n0q_m[2]),
        .O(\cnt[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[3]_i_7 
       (.I0(n0q_m[1]),
        .I1(q_m_reg),
        .O(\cnt[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \cnt[4]_i_1 
       (.I0(reset),
        .I1(de_reg),
        .I2(vid_gb_reg),
        .O(SR));
  LUT5 #(
    .INIT(32'hA69A5695)) 
    \cnt[4]_i_10__1 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(q_m_reg),
        .I2(n1q_m[3]),
        .I3(n0q_m[3]),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\cnt[4]_i_10__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt[4]_i_11 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(n0q_m[3]),
        .I2(n1q_m[3]),
        .O(\cnt[4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2008)) 
    \cnt[4]_i_12 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(n0q_m[1]),
        .I2(n1q_m[1]),
        .I3(q_m_reg),
        .O(\cnt[4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \cnt[4]_i_13__1 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(n0q_m[2]),
        .I2(n1q_m[2]),
        .O(\cnt[4]_i_13__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFBEF)) 
    \cnt[4]_i_14 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(n0q_m[1]),
        .I2(n1q_m[1]),
        .I3(q_m_reg),
        .O(\cnt[4]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB28E)) 
    \cnt[4]_i_15 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(n0q_m[2]),
        .I2(n1q_m[2]),
        .I3(q_m_reg),
        .O(\cnt[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \cnt[4]_i_16 
       (.I0(n1q_m[2]),
        .I1(n0q_m[2]),
        .I2(n1q_m[3]),
        .I3(n0q_m[3]),
        .I4(n1q_m[1]),
        .I5(n0q_m[1]),
        .O(\cnt[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9A55AA9A55659A55)) 
    \cnt[4]_i_17 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(n1q_m[2]),
        .I2(n0q_m[2]),
        .I3(n1q_m[3]),
        .I4(n0q_m[3]),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\cnt[4]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB44B4BB4)) 
    \cnt[4]_i_18 
       (.I0(n1q_m[2]),
        .I1(n0q_m[2]),
        .I2(n1q_m[3]),
        .I3(n0q_m[3]),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\cnt[4]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h4004F44F)) 
    \cnt[4]_i_19 
       (.I0(q_m_reg),
        .I1(n0q_m[1]),
        .I2(n1q_m[2]),
        .I3(n0q_m[2]),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\cnt[4]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[4]_i_2 
       (.I0(vid_gb_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \cnt[4]_i_20 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(n0q_m[1]),
        .I2(q_m_reg),
        .I3(n1q_m[1]),
        .O(\cnt[4]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2DD2D22D)) 
    \cnt[4]_i_21 
       (.I0(n0q_m[1]),
        .I1(q_m_reg),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(n0q_m[2]),
        .I4(n1q_m[2]),
        .O(\cnt[4]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFF6)) 
    \cnt[4]_i_22 
       (.I0(q_m_reg),
        .I1(n0q_m[1]),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(n1q_m[1]),
        .O(\cnt[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD00F0FFFFDDFD)) 
    \cnt[4]_i_23 
       (.I0(n1q_m[1]),
        .I1(n0q_m[1]),
        .I2(n0q_m[3]),
        .I3(n1q_m[3]),
        .I4(n0q_m[2]),
        .I5(n1q_m[2]),
        .O(\cnt[4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFF2FFFFF2222FF2F)) 
    \cnt[4]_i_24 
       (.I0(n1q_m[3]),
        .I1(n0q_m[3]),
        .I2(n0q_m[1]),
        .I3(n1q_m[1]),
        .I4(n0q_m[2]),
        .I5(n1q_m[2]),
        .O(\cnt[4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h6996696996966996)) 
    \cnt[4]_i_25 
       (.I0(n1q_m[3]),
        .I1(n0q_m[3]),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(n1q_m[2]),
        .I5(n0q_m[2]),
        .O(\cnt[4]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \cnt[4]_i_26 
       (.I0(n0q_m[2]),
        .I1(n1q_m[2]),
        .I2(\cnt_reg_n_0_[2] ),
        .O(\cnt[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB888)) 
    \cnt[4]_i_3 
       (.I0(\cnt[4]_i_4_n_0 ),
        .I1(\cnt[4]_i_5_n_0 ),
        .I2(\cnt[4]_i_6_n_0 ),
        .I3(\cnt[4]_i_7_n_0 ),
        .I4(\cnt[4]_i_8_n_0 ),
        .I5(\cnt[4]_i_9_n_0 ),
        .O(\cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55599999999AAAAA)) 
    \cnt[4]_i_4 
       (.I0(\cnt[4]_i_10__1_n_0 ),
        .I1(\cnt[4]_i_11_n_0 ),
        .I2(\cnt[4]_i_12_n_0 ),
        .I3(\cnt[4]_i_13__1_n_0 ),
        .I4(\cnt[4]_i_14_n_0 ),
        .I5(\cnt[4]_i_15_n_0 ),
        .O(\cnt[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \cnt[4]_i_5 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt[4]_i_16_n_0 ),
        .O(\cnt[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h959595A9A9A9A9A9)) 
    \cnt[4]_i_6 
       (.I0(\cnt[4]_i_17_n_0 ),
        .I1(\cnt[4]_i_18_n_0 ),
        .I2(\cnt[4]_i_19_n_0 ),
        .I3(\cnt[4]_i_20_n_0 ),
        .I4(\cnt[4]_i_21_n_0 ),
        .I5(\cnt[4]_i_22_n_0 ),
        .O(\cnt[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hC0CCAA0A)) 
    \cnt[4]_i_7 
       (.I0(\cnt[4]_i_23_n_0 ),
        .I1(\cnt[4]_i_24_n_0 ),
        .I2(n1q_m[3]),
        .I3(n0q_m[3]),
        .I4(\cnt_reg_n_0_[4] ),
        .O(\cnt[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAFBAABAFBFF)) 
    \cnt[4]_i_8 
       (.I0(\cnt[4]_i_25_n_0 ),
        .I1(q_m_reg),
        .I2(n1q_m[1]),
        .I3(n0q_m[1]),
        .I4(\cnt[4]_i_13__1_n_0 ),
        .I5(\cnt_reg_n_0_[1] ),
        .O(\cnt[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h1781E87E)) 
    \cnt[4]_i_9 
       (.I0(\cnt[4]_i_26_n_0 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(n0q_m[3]),
        .I3(n1q_m[3]),
        .I4(\cnt_reg_n_0_[4] ),
        .O(\cnt[4]_i_9_n_0 ));
  FDRE \cnt_reg[1] 
       (.C(p_clk),
        .CE(E),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(SR));
  FDRE \cnt_reg[2] 
       (.C(p_clk),
        .CE(E),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(SR));
  FDRE \cnt_reg[3] 
       (.C(p_clk),
        .CE(E),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(SR));
  FDRE \cnt_reg[4] 
       (.C(p_clk),
        .CE(E),
        .D(\cnt[4]_i_3_n_0 ),
        .Q(\cnt_reg_n_0_[4] ),
        .R(SR));
  FDRE de_q_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(de),
        .Q(de_q),
        .R(1'b0));
  FDRE de_reg_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(de_q),
        .Q(de_reg),
        .R(1'b0));
  FDRE \din_q_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(blue_din[0]),
        .Q(\din_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \din_q_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(blue_din[1]),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE \din_q_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(blue_din[2]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \din_q_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(blue_din[3]),
        .Q(p_0_in3_in),
        .R(1'b0));
  FDRE \din_q_reg[4] 
       (.C(p_clk),
        .CE(1'b1),
        .D(blue_din[4]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \din_q_reg[5] 
       (.C(p_clk),
        .CE(1'b1),
        .D(blue_din[5]),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE \din_q_reg[6] 
       (.C(p_clk),
        .CE(1'b1),
        .D(blue_din[6]),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE \din_q_reg[7] 
       (.C(p_clk),
        .CE(1'b1),
        .D(blue_din[7]),
        .Q(p_0_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA2A2A22A2A2AA22A)) 
    \dout[0]_i_1 
       (.I0(\dout[6]_i_2_n_0 ),
        .I1(de_reg),
        .I2(\q_m_reg_reg_n_0_[0] ),
        .I3(\cnt[4]_i_7_n_0 ),
        .I4(\cnt[4]_i_5_n_0 ),
        .I5(q_m_reg),
        .O(\dout[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A22A2A2AA22A)) 
    \dout[1]_i_1 
       (.I0(\dout[6]_i_2_n_0 ),
        .I1(de_reg),
        .I2(\q_m_reg_reg_n_0_[1] ),
        .I3(\cnt[4]_i_7_n_0 ),
        .I4(\cnt[4]_i_5_n_0 ),
        .I5(q_m_reg),
        .O(\dout[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8470000FFFFFFFF)) 
    \dout[2]_i_1__0 
       (.I0(q_m_reg),
        .I1(\cnt[4]_i_5_n_0 ),
        .I2(\cnt[4]_i_7_n_0 ),
        .I3(\q_m_reg_reg_n_0_[2] ),
        .I4(de_reg),
        .I5(\dout[6]_i_2_n_0 ),
        .O(\dout[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8470000FFFFFFFF)) 
    \dout[3]_i_1__0 
       (.I0(q_m_reg),
        .I1(\cnt[4]_i_5_n_0 ),
        .I2(\cnt[4]_i_7_n_0 ),
        .I3(\q_m_reg_reg_n_0_[3] ),
        .I4(de_reg),
        .I5(\dout[7]_i_2_n_0 ),
        .O(\dout[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A22A2A2AA22A)) 
    \dout[4]_i_1 
       (.I0(\dout[7]_i_2_n_0 ),
        .I1(de_reg),
        .I2(\q_m_reg_reg_n_0_[4] ),
        .I3(\cnt[4]_i_7_n_0 ),
        .I4(\cnt[4]_i_5_n_0 ),
        .I5(q_m_reg),
        .O(\dout[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A22A2A2AA22A)) 
    \dout[5]_i_1 
       (.I0(\dout[6]_i_2_n_0 ),
        .I1(de_reg),
        .I2(\q_m_reg_reg_n_0_[5] ),
        .I3(\cnt[4]_i_7_n_0 ),
        .I4(\cnt[4]_i_5_n_0 ),
        .I5(q_m_reg),
        .O(\dout[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA9590000FFFFFFFF)) 
    \dout[6]_i_1__0 
       (.I0(\q_m_reg_reg_n_0_[6] ),
        .I1(\cnt[4]_i_7_n_0 ),
        .I2(\cnt[4]_i_5_n_0 ),
        .I3(q_m_reg),
        .I4(de_reg),
        .I5(\dout[6]_i_2_n_0 ),
        .O(\dout[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \dout[6]_i_2 
       (.I0(vid_gb_reg),
        .I1(c0_reg),
        .I2(de_reg),
        .O(\dout[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \dout[6]_i_2__0 
       (.I0(vid_gb_reg),
        .I1(de_reg),
        .I2(c0_reg_reg_0),
        .O(\dout_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \dout[6]_i_2__1 
       (.I0(vid_gb_reg),
        .I1(c0_reg_reg_1),
        .I2(de_reg),
        .O(\dout_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hA9590000FFFFFFFF)) 
    \dout[7]_i_1__0 
       (.I0(\q_m_reg_reg_n_0_[7] ),
        .I1(\cnt[4]_i_7_n_0 ),
        .I2(\cnt[4]_i_5_n_0 ),
        .I3(q_m_reg),
        .I4(de_reg),
        .I5(\dout[7]_i_2_n_0 ),
        .O(\dout[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \dout[7]_i_2 
       (.I0(vid_gb_reg),
        .I1(de_reg),
        .I2(c0_reg),
        .O(\dout[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \dout[7]_i_2__0 
       (.I0(vid_gb_reg),
        .I1(c0_reg_reg_0),
        .I2(de_reg),
        .O(\dout_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \dout[7]_i_2__1 
       (.I0(vid_gb_reg),
        .I1(de_reg),
        .I2(c0_reg_reg_1),
        .O(\dout_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h3011)) 
    \dout[8]_i_1 
       (.I0(c0_reg),
        .I1(vid_gb_reg),
        .I2(q_m_reg),
        .I3(de_reg),
        .O(\dout[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \dout[9]_i_1__0 
       (.I0(vid_gb_reg),
        .I1(\dout[9]_i_2_n_0 ),
        .I2(de_reg),
        .I3(\cnt[4]_i_7_n_0 ),
        .I4(\cnt[4]_i_5_n_0 ),
        .I5(q_m_reg),
        .O(\dout[9]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[9]_i_2 
       (.I0(c0_reg),
        .I1(c1_reg),
        .O(\dout[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hABBA)) 
    \dout[9]_i_2__0 
       (.I0(vid_gb_reg),
        .I1(de_reg),
        .I2(c0_reg_reg_0),
        .I3(c1_reg_reg_0),
        .O(\dout_reg[9]_0 ));
  FDRE \dout_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(reset));
  FDRE \dout_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(reset));
  FDRE \dout_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(reset));
  FDRE \dout_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(reset));
  FDRE \dout_reg[4] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(reset));
  FDRE \dout_reg[5] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(reset));
  FDRE \dout_reg[6] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(reset));
  FDRE \dout_reg[7] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(reset));
  FDRE \dout_reg[8] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(reset));
  FDRE \dout_reg[9] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'h6669699996666669)) 
    \n0q_m[1]_i_1 
       (.I0(\n1q_m[3]_i_2_n_0 ),
        .I1(\n1q_m[3]_i_3_n_0 ),
        .I2(\n1q_m[3]_i_6_n_0 ),
        .I3(\n1q_m[3]_i_5_n_0 ),
        .I4(\n1q_m[3]_i_4_n_0 ),
        .I5(\din_q_reg_n_0_[0] ),
        .O(n0q_m0[1]));
  LUT6 #(
    .INIT(64'hFDD4BFFF4000FDD4)) 
    \n0q_m[2]_i_1 
       (.I0(\din_q_reg_n_0_[0] ),
        .I1(\n1q_m[3]_i_4_n_0 ),
        .I2(\n1q_m[3]_i_5_n_0 ),
        .I3(\n1q_m[3]_i_6_n_0 ),
        .I4(\n1q_m[3]_i_3_n_0 ),
        .I5(\n1q_m[3]_i_2_n_0 ),
        .O(n0q_m0[2]));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \n0q_m[3]_i_1 
       (.I0(\n1q_m[3]_i_3_n_0 ),
        .I1(\n1q_m[3]_i_2_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_4_n_0 ),
        .I4(\n1q_m[3]_i_5_n_0 ),
        .I5(\n1q_m[3]_i_6_n_0 ),
        .O(n0q_m0[3]));
  FDRE \n0q_m_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(n0q_m0[1]),
        .Q(n0q_m[1]),
        .R(1'b0));
  FDRE \n0q_m_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(n0q_m0[2]),
        .Q(n0q_m[2]),
        .R(1'b0));
  FDRE \n0q_m_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(n0q_m0[3]),
        .Q(n0q_m[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1d[0]_i_1 
       (.I0(blue_din[0]),
        .I1(blue_din[7]),
        .I2(\n1d[0]_i_2_n_0 ),
        .I3(blue_din[2]),
        .I4(blue_din[1]),
        .I5(blue_din[3]),
        .O(n1d0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[0]_i_2 
       (.I0(blue_din[6]),
        .I1(blue_din[4]),
        .I2(blue_din[5]),
        .O(\n1d[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[1]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[1]_i_2_n_0 ),
        .I2(\n1d[3]_i_3_n_0 ),
        .O(n1d0[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \n1d[1]_i_2 
       (.I0(blue_din[3]),
        .I1(blue_din[2]),
        .I2(blue_din[1]),
        .I3(blue_din[6]),
        .I4(blue_din[5]),
        .I5(blue_din[4]),
        .O(\n1d[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \n1d[2]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(\n1d[2]_i_2_n_0 ),
        .I3(blue_din[4]),
        .I4(blue_din[5]),
        .I5(blue_din[6]),
        .O(n1d0[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[2]_i_2 
       (.I0(blue_din[1]),
        .I1(blue_din[2]),
        .I2(blue_din[3]),
        .O(\n1d[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \n1d[3]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(blue_din[3]),
        .I3(blue_din[2]),
        .I4(blue_din[1]),
        .I5(\n1d[3]_i_4_n_0 ),
        .O(n1d0[3]));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \n1d[3]_i_2 
       (.I0(blue_din[2]),
        .I1(blue_din[1]),
        .I2(blue_din[3]),
        .I3(blue_din[0]),
        .I4(blue_din[7]),
        .I5(\n1d[0]_i_2_n_0 ),
        .O(\n1d[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \n1d[3]_i_3 
       (.I0(blue_din[7]),
        .I1(blue_din[0]),
        .I2(blue_din[5]),
        .I3(blue_din[4]),
        .I4(blue_din[6]),
        .O(\n1d[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[3]_i_4 
       (.I0(blue_din[4]),
        .I1(blue_din[5]),
        .I2(blue_din[6]),
        .O(\n1d[3]_i_4_n_0 ));
  FDRE \n1d_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(n1d0[0]),
        .Q(n1d[0]),
        .R(1'b0));
  FDRE \n1d_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(n1d0[1]),
        .Q(n1d[1]),
        .R(1'b0));
  FDRE \n1d_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(n1d0[2]),
        .Q(n1d[2]),
        .R(1'b0));
  FDRE \n1d_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(n1d0[3]),
        .Q(n1d[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h96C33C963C96693C)) 
    \n1q_m[1]_i_1 
       (.I0(\n1q_m[3]_i_6_n_0 ),
        .I1(\n1q_m[3]_i_3_n_0 ),
        .I2(\n1q_m[3]_i_2_n_0 ),
        .I3(\din_q_reg_n_0_[0] ),
        .I4(\n1q_m[3]_i_4_n_0 ),
        .I5(\n1q_m[3]_i_5_n_0 ),
        .O(n1q_m0[1]));
  LUT6 #(
    .INIT(64'h7F17FEFF01007F17)) 
    \n1q_m[2]_i_1 
       (.I0(\n1q_m[3]_i_6_n_0 ),
        .I1(\n1q_m[3]_i_5_n_0 ),
        .I2(\n1q_m[3]_i_4_n_0 ),
        .I3(\din_q_reg_n_0_[0] ),
        .I4(\n1q_m[3]_i_2_n_0 ),
        .I5(\n1q_m[3]_i_3_n_0 ),
        .O(\n1q_m[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \n1q_m[3]_i_1 
       (.I0(\n1q_m[3]_i_2_n_0 ),
        .I1(\n1q_m[3]_i_3_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_4_n_0 ),
        .I4(\n1q_m[3]_i_5_n_0 ),
        .I5(\n1q_m[3]_i_6_n_0 ),
        .O(n1q_m0[3]));
  LUT6 #(
    .INIT(64'h5656566656565656)) 
    \n1q_m[3]_i_10 
       (.I0(p_0_in1_in),
        .I1(n1d[3]),
        .I2(n1d[2]),
        .I3(n1d[0]),
        .I4(n1d[1]),
        .I5(\din_q_reg_n_0_[0] ),
        .O(\n1q_m[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5656566656565656)) 
    \n1q_m[3]_i_11 
       (.I0(p_0_in),
        .I1(n1d[3]),
        .I2(n1d[2]),
        .I3(n1d[0]),
        .I4(n1d[1]),
        .I5(\din_q_reg_n_0_[0] ),
        .O(\n1q_m[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h69669969)) 
    \n1q_m[3]_i_2 
       (.I0(p_0_in5_in),
        .I1(\din_q_reg_n_0_[0] ),
        .I2(p_0_in4_in),
        .I3(p_0_in3_in),
        .I4(decision1),
        .O(\n1q_m[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2DD2D22DB44B4BB4)) 
    \n1q_m[3]_i_3 
       (.I0(p_0_in0_in),
        .I1(decision1),
        .I2(p_0_in2_in),
        .I3(\q_m_reg[5]_i_2_n_0 ),
        .I4(\n1q_m[3]_i_7_n_0 ),
        .I5(p_0_in1_in),
        .O(\n1q_m[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \n1q_m[3]_i_4 
       (.I0(p_0_in0_in),
        .I1(p_0_in2_in),
        .I2(\q_m_reg[5]_i_2_n_0 ),
        .I3(\n1q_m[3]_i_7_n_0 ),
        .O(\n1q_m[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \n1q_m[3]_i_5 
       (.I0(\n1q_m[3]_i_8_n_0 ),
        .I1(\n1q_m[3]_i_9_n_0 ),
        .I2(\q_m_reg[5]_i_2_n_0 ),
        .I3(\n1q_m[3]_i_7_n_0 ),
        .I4(\n1q_m[3]_i_10_n_0 ),
        .I5(\n1q_m[3]_i_11_n_0 ),
        .O(\n1q_m[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n1q_m[3]_i_6 
       (.I0(p_0_in3_in),
        .I1(p_0_in5_in),
        .I2(\din_q_reg_n_0_[0] ),
        .O(\n1q_m[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \n1q_m[3]_i_7 
       (.I0(p_0_in4_in),
        .I1(p_0_in3_in),
        .O(\n1q_m[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5656566656565656)) 
    \n1q_m[3]_i_8 
       (.I0(p_0_in0_in),
        .I1(n1d[3]),
        .I2(n1d[2]),
        .I3(n1d[0]),
        .I4(n1d[1]),
        .I5(\din_q_reg_n_0_[0] ),
        .O(\n1q_m[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5656566656565656)) 
    \n1q_m[3]_i_9 
       (.I0(p_0_in2_in),
        .I1(n1d[3]),
        .I2(n1d[2]),
        .I3(n1d[0]),
        .I4(n1d[1]),
        .I5(\din_q_reg_n_0_[0] ),
        .O(\n1q_m[3]_i_9_n_0 ));
  FDRE \n1q_m_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(n1q_m0[1]),
        .Q(n1q_m[1]),
        .R(1'b0));
  FDRE \n1q_m_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n1q_m[2]_i_1_n_0 ),
        .Q(n1q_m[2]),
        .R(1'b0));
  FDRE \n1q_m_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(n1q_m0[3]),
        .Q(n1q_m[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9999999999956666)) 
    \q_m_reg[1]_i_1 
       (.I0(p_0_in5_in),
        .I1(\din_q_reg_n_0_[0] ),
        .I2(n1d[1]),
        .I3(n1d[0]),
        .I4(n1d[2]),
        .I5(n1d[3]),
        .O(\q_m_reg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_reg[2]_i_1 
       (.I0(\din_q_reg_n_0_[0] ),
        .I1(p_0_in5_in),
        .I2(p_0_in4_in),
        .O(q_m_2));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[3]_i_1 
       (.I0(p_0_in5_in),
        .I1(\din_q_reg_n_0_[0] ),
        .I2(decision1),
        .I3(p_0_in3_in),
        .I4(p_0_in4_in),
        .O(q_m_3));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[4]_i_1 
       (.I0(p_0_in4_in),
        .I1(p_0_in3_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in5_in),
        .I4(p_0_in2_in),
        .O(q_m_4));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_reg[5]_i_1 
       (.I0(p_0_in2_in),
        .I1(\q_m_reg[5]_i_2_n_0 ),
        .I2(p_0_in3_in),
        .I3(p_0_in4_in),
        .I4(p_0_in1_in),
        .O(q_m_5));
  LUT6 #(
    .INIT(64'h1115EEEEEEEA1111)) 
    \q_m_reg[5]_i_2 
       (.I0(n1d[3]),
        .I1(n1d[2]),
        .I2(n1d[0]),
        .I3(n1d[1]),
        .I4(\din_q_reg_n_0_[0] ),
        .I5(p_0_in5_in),
        .O(\q_m_reg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_reg[6]_i_1 
       (.I0(q_m_5),
        .I1(decision1),
        .I2(p_0_in0_in),
        .O(q_m_6));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFD00)) 
    \q_m_reg[6]_i_2 
       (.I0(\din_q_reg_n_0_[0] ),
        .I1(n1d[1]),
        .I2(n1d[0]),
        .I3(n1d[2]),
        .I4(n1d[3]),
        .O(decision1));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_reg[7]_i_1 
       (.I0(p_0_in),
        .I1(q_m_5),
        .I2(p_0_in0_in),
        .O(q_m_7));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h11151111)) 
    \q_m_reg[8]_i_1 
       (.I0(n1d[3]),
        .I1(n1d[2]),
        .I2(n1d[0]),
        .I3(n1d[1]),
        .I4(\din_q_reg_n_0_[0] ),
        .O(q_m));
  FDRE \q_m_reg_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\din_q_reg_n_0_[0] ),
        .Q(\q_m_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\q_m_reg[1]_i_1_n_0 ),
        .Q(\q_m_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_2),
        .Q(\q_m_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_3),
        .Q(\q_m_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[4] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_4),
        .Q(\q_m_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[5] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_5),
        .Q(\q_m_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[6] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_6),
        .Q(\q_m_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[7] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_7),
        .Q(\q_m_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[8] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m),
        .Q(q_m_reg),
        .R(1'b0));
  FDRE vid_gb_q_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(vid_gb),
        .Q(vid_gb_q),
        .R(1'b0));
  FDRE vid_gb_reg_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(vid_gb_q),
        .Q(vid_gb_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "encodeg" *) 
module overlay1_dvi_encoder_v2_0_0_encodeg
   (\dout_reg[8]_0 ,
    \dout_reg[9]_0 ,
    Q,
    ctl_code,
    p_clk,
    de_reg,
    vid_gb_reg_reg,
    vid_gb_reg_reg_0,
    vid_gb_reg_reg_1,
    vid_gb_reg,
    green_din,
    SR,
    E,
    reset);
  output \dout_reg[8]_0 ;
  output \dout_reg[9]_0 ;
  output [9:0]Q;
  input [1:0]ctl_code;
  input p_clk;
  input de_reg;
  input vid_gb_reg_reg;
  input vid_gb_reg_reg_0;
  input vid_gb_reg_reg_1;
  input vid_gb_reg;
  input [7:0]green_din;
  input [0:0]SR;
  input [0:0]E;
  input reset;

  wire [0:0]E;
  wire [9:0]Q;
  wire [0:0]SR;
  wire c0_q_reg_n_0;
  wire c1_q_reg_n_0;
  wire \cnt[1]_i_1__0_n_0 ;
  wire \cnt[2]_i_1__0_n_0 ;
  wire \cnt[2]_i_2__0_n_0 ;
  wire \cnt[2]_i_3__0_n_0 ;
  wire \cnt[2]_i_4__0_n_0 ;
  wire \cnt[2]_i_5__0_n_0 ;
  wire \cnt[3]_i_1__0_n_0 ;
  wire \cnt[3]_i_2__0_n_0 ;
  wire \cnt[3]_i_3__0_n_0 ;
  wire \cnt[3]_i_4__0_n_0 ;
  wire \cnt[3]_i_5__0_n_0 ;
  wire \cnt[3]_i_6__0_n_0 ;
  wire \cnt[3]_i_7__0_n_0 ;
  wire \cnt[4]_i_10_n_0 ;
  wire \cnt[4]_i_11__0_n_0 ;
  wire \cnt[4]_i_12__0_n_0 ;
  wire \cnt[4]_i_13_n_0 ;
  wire \cnt[4]_i_14__0_n_0 ;
  wire \cnt[4]_i_15__0_n_0 ;
  wire \cnt[4]_i_16__0_n_0 ;
  wire \cnt[4]_i_17__0_n_0 ;
  wire \cnt[4]_i_18__0_n_0 ;
  wire \cnt[4]_i_19__0_n_0 ;
  wire \cnt[4]_i_1__0_n_0 ;
  wire \cnt[4]_i_20__0_n_0 ;
  wire \cnt[4]_i_21__0_n_0 ;
  wire \cnt[4]_i_22__0_n_0 ;
  wire \cnt[4]_i_23__0_n_0 ;
  wire \cnt[4]_i_24__0_n_0 ;
  wire \cnt[4]_i_2__0_n_0 ;
  wire \cnt[4]_i_3__0_n_0 ;
  wire \cnt[4]_i_4__0_n_0 ;
  wire \cnt[4]_i_5__0_n_0 ;
  wire \cnt[4]_i_6__0_n_0 ;
  wire \cnt[4]_i_7__0_n_0 ;
  wire \cnt[4]_i_8__1_n_0 ;
  wire \cnt[4]_i_9__0_n_0 ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire [1:0]ctl_code;
  wire de_reg;
  wire decision1;
  wire \din_q_reg_n_0_[0] ;
  wire \dout[0]_i_1__1_n_0 ;
  wire \dout[1]_i_1__1_n_0 ;
  wire \dout[2]_i_1_n_0 ;
  wire \dout[3]_i_1_n_0 ;
  wire \dout[4]_i_1__0_n_0 ;
  wire \dout[5]_i_1__1_n_0 ;
  wire \dout[6]_i_1_n_0 ;
  wire \dout[7]_i_1_n_0 ;
  wire \dout[8]_i_1__0_n_0 ;
  wire \dout[9]_i_1_n_0 ;
  wire \dout_reg[8]_0 ;
  wire \dout_reg[9]_0 ;
  wire [7:0]green_din;
  wire [3:1]n0q_m;
  wire \n0q_m[1]_i_1__0_n_0 ;
  wire \n0q_m[2]_i_1__0_n_0 ;
  wire \n0q_m[3]_i_1__0_n_0 ;
  wire [3:0]n1d;
  wire \n1d[0]_i_1_n_0 ;
  wire \n1d[0]_i_2_n_0 ;
  wire \n1d[1]_i_1_n_0 ;
  wire \n1d[1]_i_2_n_0 ;
  wire \n1d[2]_i_1_n_0 ;
  wire \n1d[2]_i_2_n_0 ;
  wire \n1d[3]_i_1_n_0 ;
  wire \n1d[3]_i_2_n_0 ;
  wire \n1d[3]_i_3_n_0 ;
  wire \n1d[3]_i_4_n_0 ;
  wire [3:1]n1q_m;
  wire \n1q_m[1]_i_1__0_n_0 ;
  wire \n1q_m[2]_i_1__0_n_0 ;
  wire \n1q_m[3]_i_10__0_n_0 ;
  wire \n1q_m[3]_i_11__0_n_0 ;
  wire \n1q_m[3]_i_1__0_n_0 ;
  wire \n1q_m[3]_i_2__0_n_0 ;
  wire \n1q_m[3]_i_3__0_n_0 ;
  wire \n1q_m[3]_i_4__0_n_0 ;
  wire \n1q_m[3]_i_5__0_n_0 ;
  wire \n1q_m[3]_i_6__0_n_0 ;
  wire \n1q_m[3]_i_7__0_n_0 ;
  wire \n1q_m[3]_i_8__0_n_0 ;
  wire \n1q_m[3]_i_9__0_n_0 ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire p_0_in4_in;
  wire p_0_in5_in;
  wire p_clk;
  wire q_m_2;
  wire q_m_3;
  wire q_m_4;
  wire q_m_5;
  wire q_m_6;
  wire q_m_7;
  wire [8:8]q_m_reg;
  wire \q_m_reg[1]_i_1__0_n_0 ;
  wire \q_m_reg[5]_i_2__0_n_0 ;
  wire \q_m_reg[8]_i_1__0_n_0 ;
  wire \q_m_reg_reg_n_0_[0] ;
  wire \q_m_reg_reg_n_0_[1] ;
  wire \q_m_reg_reg_n_0_[2] ;
  wire \q_m_reg_reg_n_0_[3] ;
  wire \q_m_reg_reg_n_0_[4] ;
  wire \q_m_reg_reg_n_0_[5] ;
  wire \q_m_reg_reg_n_0_[6] ;
  wire \q_m_reg_reg_n_0_[7] ;
  wire reset;
  wire vid_gb_reg;
  wire vid_gb_reg_reg;
  wire vid_gb_reg_reg_0;
  wire vid_gb_reg_reg_1;

  FDRE c0_q_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(ctl_code[0]),
        .Q(c0_q_reg_n_0),
        .R(1'b0));
  FDRE c0_reg_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(c0_q_reg_n_0),
        .Q(\dout_reg[8]_0 ),
        .R(1'b0));
  FDRE c1_q_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(ctl_code[1]),
        .Q(c1_q_reg_n_0),
        .R(1'b0));
  FDRE c1_reg_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(c1_q_reg_n_0),
        .Q(\dout_reg[9]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC93636C99C63639C)) 
    \cnt[1]_i_1__0 
       (.I0(\cnt[4]_i_3__0_n_0 ),
        .I1(n1q_m[1]),
        .I2(q_m_reg),
        .I3(n0q_m[1]),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt[4]_i_5__0_n_0 ),
        .O(\cnt[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB888)) 
    \cnt[2]_i_1__0 
       (.I0(\cnt[2]_i_2__0_n_0 ),
        .I1(\cnt[4]_i_3__0_n_0 ),
        .I2(\cnt[2]_i_3__0_n_0 ),
        .I3(\cnt[4]_i_5__0_n_0 ),
        .I4(\cnt[2]_i_4__0_n_0 ),
        .I5(\cnt[2]_i_5__0_n_0 ),
        .O(\cnt[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6696696666699666)) 
    \cnt[2]_i_2__0 
       (.I0(\cnt[3]_i_6__0_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(n0q_m[1]),
        .I4(n1q_m[1]),
        .I5(q_m_reg),
        .O(\cnt[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h6669966669996669)) 
    \cnt[2]_i_3__0 
       (.I0(\cnt[3]_i_6__0_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(n1q_m[1]),
        .I4(n0q_m[1]),
        .I5(q_m_reg),
        .O(\cnt[2]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hBEEB)) 
    \cnt[2]_i_4__0 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(n0q_m[1]),
        .I2(q_m_reg),
        .I3(n1q_m[1]),
        .O(\cnt[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    \cnt[2]_i_5__0 
       (.I0(n1q_m[2]),
        .I1(n0q_m[2]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(q_m_reg),
        .I4(n1q_m[1]),
        .I5(n0q_m[1]),
        .O(\cnt[2]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \cnt[3]_i_1__0 
       (.I0(\cnt[3]_i_2__0_n_0 ),
        .I1(\cnt[3]_i_3__0_n_0 ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\cnt[3]_i_4__0_n_0 ),
        .I4(\cnt[4]_i_5__0_n_0 ),
        .I5(\cnt[3]_i_5__0_n_0 ),
        .O(\cnt[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6660066666F66F66)) 
    \cnt[3]_i_2__0 
       (.I0(\cnt[3]_i_6__0_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(q_m_reg),
        .I3(n1q_m[1]),
        .I4(n0q_m[1]),
        .I5(\cnt_reg_n_0_[1] ),
        .O(\cnt[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h5965A96A)) 
    \cnt[3]_i_3__0 
       (.I0(\cnt[4]_i_9__0_n_0 ),
        .I1(q_m_reg),
        .I2(n1q_m[2]),
        .I3(n0q_m[2]),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\cnt[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFD4002BF02BFFD40)) 
    \cnt[3]_i_4__0 
       (.I0(\cnt[3]_i_7__0_n_0 ),
        .I1(n1q_m[1]),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt[4]_i_19__0_n_0 ),
        .I4(\cnt[4]_i_16__0_n_0 ),
        .I5(\cnt[4]_i_17__0_n_0 ),
        .O(\cnt[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFEF8E08001071F7)) 
    \cnt[3]_i_5__0 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(q_m_reg),
        .I2(n1q_m[1]),
        .I3(n0q_m[1]),
        .I4(\cnt[4]_i_11__0_n_0 ),
        .I5(\cnt[4]_i_23__0_n_0 ),
        .O(\cnt[3]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[3]_i_6__0 
       (.I0(n1q_m[2]),
        .I1(n0q_m[2]),
        .O(\cnt[3]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cnt[3]_i_7__0 
       (.I0(n0q_m[1]),
        .I1(q_m_reg),
        .O(\cnt[3]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h2008)) 
    \cnt[4]_i_10 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(n0q_m[1]),
        .I2(n1q_m[1]),
        .I3(q_m_reg),
        .O(\cnt[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \cnt[4]_i_11__0 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(n0q_m[2]),
        .I2(n1q_m[2]),
        .O(\cnt[4]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFBEF)) 
    \cnt[4]_i_12__0 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(n0q_m[1]),
        .I2(n1q_m[1]),
        .I3(q_m_reg),
        .O(\cnt[4]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hB28E)) 
    \cnt[4]_i_13 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(n0q_m[2]),
        .I2(n1q_m[2]),
        .I3(q_m_reg),
        .O(\cnt[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \cnt[4]_i_14__0 
       (.I0(n1q_m[2]),
        .I1(n0q_m[2]),
        .I2(n1q_m[3]),
        .I3(n0q_m[3]),
        .I4(n1q_m[1]),
        .I5(n0q_m[1]),
        .O(\cnt[4]_i_14__0_n_0 ));
  LUT6 #(
    .INIT(64'hB0FB04B04F04FB4F)) 
    \cnt[4]_i_15__0 
       (.I0(n1q_m[2]),
        .I1(n0q_m[2]),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(n0q_m[3]),
        .I4(n1q_m[3]),
        .I5(\cnt_reg_n_0_[4] ),
        .O(\cnt[4]_i_15__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h4BB4B44B)) 
    \cnt[4]_i_16__0 
       (.I0(n1q_m[2]),
        .I1(n0q_m[2]),
        .I2(n1q_m[3]),
        .I3(n0q_m[3]),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\cnt[4]_i_16__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hB0FBFBB0)) 
    \cnt[4]_i_17__0 
       (.I0(q_m_reg),
        .I1(n0q_m[1]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(n0q_m[2]),
        .I4(n1q_m[2]),
        .O(\cnt[4]_i_17__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1001)) 
    \cnt[4]_i_18__0 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(n1q_m[1]),
        .I2(n0q_m[1]),
        .I3(q_m_reg),
        .O(\cnt[4]_i_18__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h2DD2D22D)) 
    \cnt[4]_i_19__0 
       (.I0(n0q_m[1]),
        .I1(q_m_reg),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(n0q_m[2]),
        .I4(n1q_m[2]),
        .O(\cnt[4]_i_19__0_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB888)) 
    \cnt[4]_i_1__0 
       (.I0(\cnt[4]_i_2__0_n_0 ),
        .I1(\cnt[4]_i_3__0_n_0 ),
        .I2(\cnt[4]_i_4__0_n_0 ),
        .I3(\cnt[4]_i_5__0_n_0 ),
        .I4(\cnt[4]_i_6__0_n_0 ),
        .I5(\cnt[4]_i_7__0_n_0 ),
        .O(\cnt[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h9FFF)) 
    \cnt[4]_i_20__0 
       (.I0(q_m_reg),
        .I1(n0q_m[1]),
        .I2(n1q_m[1]),
        .I3(\cnt_reg_n_0_[1] ),
        .O(\cnt[4]_i_20__0_n_0 ));
  LUT6 #(
    .INIT(64'hB0FBB0FBFFFFB0FB)) 
    \cnt[4]_i_21__0 
       (.I0(n0q_m[1]),
        .I1(n1q_m[1]),
        .I2(n0q_m[2]),
        .I3(n1q_m[2]),
        .I4(n0q_m[3]),
        .I5(n1q_m[3]),
        .O(\cnt[4]_i_21__0_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F0200002F02)) 
    \cnt[4]_i_22__0 
       (.I0(n0q_m[1]),
        .I1(n1q_m[1]),
        .I2(n1q_m[2]),
        .I3(n0q_m[2]),
        .I4(n1q_m[3]),
        .I5(n0q_m[3]),
        .O(\cnt[4]_i_22__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996696996966996)) 
    \cnt[4]_i_23__0 
       (.I0(n1q_m[3]),
        .I1(n0q_m[3]),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(n1q_m[2]),
        .I5(n0q_m[2]),
        .O(\cnt[4]_i_23__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \cnt[4]_i_24__0 
       (.I0(n0q_m[2]),
        .I1(n1q_m[2]),
        .I2(\cnt_reg_n_0_[2] ),
        .O(\cnt[4]_i_24__0_n_0 ));
  LUT6 #(
    .INIT(64'h55599999999AAAAA)) 
    \cnt[4]_i_2__0 
       (.I0(\cnt[4]_i_8__1_n_0 ),
        .I1(\cnt[4]_i_9__0_n_0 ),
        .I2(\cnt[4]_i_10_n_0 ),
        .I3(\cnt[4]_i_11__0_n_0 ),
        .I4(\cnt[4]_i_12__0_n_0 ),
        .I5(\cnt[4]_i_13_n_0 ),
        .O(\cnt[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \cnt[4]_i_3__0 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt[4]_i_14__0_n_0 ),
        .O(\cnt[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h6A566A6A56565656)) 
    \cnt[4]_i_4__0 
       (.I0(\cnt[4]_i_15__0_n_0 ),
        .I1(\cnt[4]_i_16__0_n_0 ),
        .I2(\cnt[4]_i_17__0_n_0 ),
        .I3(\cnt[4]_i_18__0_n_0 ),
        .I4(\cnt[4]_i_19__0_n_0 ),
        .I5(\cnt[4]_i_20__0_n_0 ),
        .O(\cnt[4]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h2202E2CE)) 
    \cnt[4]_i_5__0 
       (.I0(\cnt[4]_i_21__0_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(n1q_m[3]),
        .I3(n0q_m[3]),
        .I4(\cnt[4]_i_22__0_n_0 ),
        .O(\cnt[4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAFBAABAFBFF)) 
    \cnt[4]_i_6__0 
       (.I0(\cnt[4]_i_23__0_n_0 ),
        .I1(q_m_reg),
        .I2(n1q_m[1]),
        .I3(n0q_m[1]),
        .I4(\cnt[4]_i_11__0_n_0 ),
        .I5(\cnt_reg_n_0_[1] ),
        .O(\cnt[4]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'h56956A56)) 
    \cnt[4]_i_7__0 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(n0q_m[3]),
        .I3(n1q_m[3]),
        .I4(\cnt[4]_i_24__0_n_0 ),
        .O(\cnt[4]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hA69A5695)) 
    \cnt[4]_i_8__1 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(q_m_reg),
        .I2(n1q_m[3]),
        .I3(n0q_m[3]),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\cnt[4]_i_8__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt[4]_i_9__0 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(n0q_m[3]),
        .I2(n1q_m[3]),
        .O(\cnt[4]_i_9__0_n_0 ));
  FDRE \cnt_reg[1] 
       (.C(p_clk),
        .CE(E),
        .D(\cnt[1]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(SR));
  FDRE \cnt_reg[2] 
       (.C(p_clk),
        .CE(E),
        .D(\cnt[2]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(SR));
  FDRE \cnt_reg[3] 
       (.C(p_clk),
        .CE(E),
        .D(\cnt[3]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(SR));
  FDRE \cnt_reg[4] 
       (.C(p_clk),
        .CE(E),
        .D(\cnt[4]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[4] ),
        .R(SR));
  FDRE \din_q_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(green_din[0]),
        .Q(\din_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \din_q_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(green_din[1]),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE \din_q_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(green_din[2]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \din_q_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(green_din[3]),
        .Q(p_0_in3_in),
        .R(1'b0));
  FDRE \din_q_reg[4] 
       (.C(p_clk),
        .CE(1'b1),
        .D(green_din[4]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \din_q_reg[5] 
       (.C(p_clk),
        .CE(1'b1),
        .D(green_din[5]),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE \din_q_reg[6] 
       (.C(p_clk),
        .CE(1'b1),
        .D(green_din[6]),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE \din_q_reg[7] 
       (.C(p_clk),
        .CE(1'b1),
        .D(green_din[7]),
        .Q(p_0_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCA350000FFFFFFFF)) 
    \dout[0]_i_1__1 
       (.I0(\cnt[4]_i_5__0_n_0 ),
        .I1(q_m_reg),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\q_m_reg_reg_n_0_[0] ),
        .I4(de_reg),
        .I5(vid_gb_reg_reg),
        .O(\dout[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hCA350000FFFFFFFF)) 
    \dout[1]_i_1__1 
       (.I0(\cnt[4]_i_5__0_n_0 ),
        .I1(q_m_reg),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\q_m_reg_reg_n_0_[1] ),
        .I4(de_reg),
        .I5(vid_gb_reg_reg),
        .O(\dout[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h88288222AAAAAAAA)) 
    \dout[2]_i_1 
       (.I0(vid_gb_reg_reg),
        .I1(\q_m_reg_reg_n_0_[2] ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(q_m_reg),
        .I4(\cnt[4]_i_5__0_n_0 ),
        .I5(de_reg),
        .O(\dout[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88288222AAAAAAAA)) 
    \dout[3]_i_1 
       (.I0(vid_gb_reg_reg_0),
        .I1(\q_m_reg_reg_n_0_[3] ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(q_m_reg),
        .I4(\cnt[4]_i_5__0_n_0 ),
        .I5(de_reg),
        .O(\dout[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD5D55DD5D55D5D5D)) 
    \dout[4]_i_1__0 
       (.I0(vid_gb_reg_reg_0),
        .I1(de_reg),
        .I2(\q_m_reg_reg_n_0_[4] ),
        .I3(\cnt[4]_i_3__0_n_0 ),
        .I4(q_m_reg),
        .I5(\cnt[4]_i_5__0_n_0 ),
        .O(\dout[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA6950000FFFFFFFF)) 
    \dout[5]_i_1__1 
       (.I0(\q_m_reg_reg_n_0_[5] ),
        .I1(\cnt[4]_i_3__0_n_0 ),
        .I2(q_m_reg),
        .I3(\cnt[4]_i_5__0_n_0 ),
        .I4(de_reg),
        .I5(vid_gb_reg_reg),
        .O(\dout[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h88288222AAAAAAAA)) 
    \dout[6]_i_1 
       (.I0(vid_gb_reg_reg),
        .I1(\q_m_reg_reg_n_0_[6] ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(q_m_reg),
        .I4(\cnt[4]_i_5__0_n_0 ),
        .I5(de_reg),
        .O(\dout[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88288222AAAAAAAA)) 
    \dout[7]_i_1 
       (.I0(vid_gb_reg_reg_0),
        .I1(\q_m_reg_reg_n_0_[7] ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(q_m_reg),
        .I4(\cnt[4]_i_5__0_n_0 ),
        .I5(de_reg),
        .O(\dout[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF8B)) 
    \dout[8]_i_1__0 
       (.I0(q_m_reg),
        .I1(de_reg),
        .I2(\dout_reg[8]_0 ),
        .I3(vid_gb_reg),
        .O(\dout[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h000035FF)) 
    \dout[9]_i_1 
       (.I0(\cnt[4]_i_5__0_n_0 ),
        .I1(q_m_reg),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(de_reg),
        .I4(vid_gb_reg_reg_1),
        .O(\dout[9]_i_1_n_0 ));
  FDRE \dout_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(reset));
  FDRE \dout_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(reset));
  FDRE \dout_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(reset));
  FDRE \dout_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(reset));
  FDRE \dout_reg[4] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(reset));
  FDRE \dout_reg[5] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(reset));
  FDRE \dout_reg[6] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(reset));
  FDRE \dout_reg[7] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(reset));
  FDRE \dout_reg[8] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(reset));
  FDRE \dout_reg[9] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'h6669699996666669)) 
    \n0q_m[1]_i_1__0 
       (.I0(\n1q_m[3]_i_2__0_n_0 ),
        .I1(\n1q_m[3]_i_3__0_n_0 ),
        .I2(\n1q_m[3]_i_6__0_n_0 ),
        .I3(\n1q_m[3]_i_5__0_n_0 ),
        .I4(\n1q_m[3]_i_4__0_n_0 ),
        .I5(\din_q_reg_n_0_[0] ),
        .O(\n0q_m[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFDD4BFFF4000FDD4)) 
    \n0q_m[2]_i_1__0 
       (.I0(\din_q_reg_n_0_[0] ),
        .I1(\n1q_m[3]_i_4__0_n_0 ),
        .I2(\n1q_m[3]_i_5__0_n_0 ),
        .I3(\n1q_m[3]_i_6__0_n_0 ),
        .I4(\n1q_m[3]_i_3__0_n_0 ),
        .I5(\n1q_m[3]_i_2__0_n_0 ),
        .O(\n0q_m[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \n0q_m[3]_i_1__0 
       (.I0(\n1q_m[3]_i_3__0_n_0 ),
        .I1(\n1q_m[3]_i_2__0_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_4__0_n_0 ),
        .I4(\n1q_m[3]_i_5__0_n_0 ),
        .I5(\n1q_m[3]_i_6__0_n_0 ),
        .O(\n0q_m[3]_i_1__0_n_0 ));
  FDRE \n0q_m_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n0q_m[1]_i_1__0_n_0 ),
        .Q(n0q_m[1]),
        .R(1'b0));
  FDRE \n0q_m_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n0q_m[2]_i_1__0_n_0 ),
        .Q(n0q_m[2]),
        .R(1'b0));
  FDRE \n0q_m_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n0q_m[3]_i_1__0_n_0 ),
        .Q(n0q_m[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1d[0]_i_1 
       (.I0(green_din[0]),
        .I1(green_din[7]),
        .I2(\n1d[0]_i_2_n_0 ),
        .I3(green_din[2]),
        .I4(green_din[1]),
        .I5(green_din[3]),
        .O(\n1d[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[0]_i_2 
       (.I0(green_din[6]),
        .I1(green_din[4]),
        .I2(green_din[5]),
        .O(\n1d[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[1]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[1]_i_2_n_0 ),
        .I2(\n1d[3]_i_3_n_0 ),
        .O(\n1d[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \n1d[1]_i_2 
       (.I0(green_din[3]),
        .I1(green_din[2]),
        .I2(green_din[1]),
        .I3(green_din[6]),
        .I4(green_din[5]),
        .I5(green_din[4]),
        .O(\n1d[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \n1d[2]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(\n1d[2]_i_2_n_0 ),
        .I3(green_din[4]),
        .I4(green_din[5]),
        .I5(green_din[6]),
        .O(\n1d[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[2]_i_2 
       (.I0(green_din[1]),
        .I1(green_din[2]),
        .I2(green_din[3]),
        .O(\n1d[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \n1d[3]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(green_din[3]),
        .I3(green_din[2]),
        .I4(green_din[1]),
        .I5(\n1d[3]_i_4_n_0 ),
        .O(\n1d[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \n1d[3]_i_2 
       (.I0(green_din[2]),
        .I1(green_din[1]),
        .I2(green_din[3]),
        .I3(green_din[0]),
        .I4(green_din[7]),
        .I5(\n1d[0]_i_2_n_0 ),
        .O(\n1d[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \n1d[3]_i_3 
       (.I0(green_din[7]),
        .I1(green_din[0]),
        .I2(green_din[5]),
        .I3(green_din[4]),
        .I4(green_din[6]),
        .O(\n1d[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[3]_i_4 
       (.I0(green_din[4]),
        .I1(green_din[5]),
        .I2(green_din[6]),
        .O(\n1d[3]_i_4_n_0 ));
  FDRE \n1d_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n1d[0]_i_1_n_0 ),
        .Q(n1d[0]),
        .R(1'b0));
  FDRE \n1d_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n1d[1]_i_1_n_0 ),
        .Q(n1d[1]),
        .R(1'b0));
  FDRE \n1d_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n1d[2]_i_1_n_0 ),
        .Q(n1d[2]),
        .R(1'b0));
  FDRE \n1d_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n1d[3]_i_1_n_0 ),
        .Q(n1d[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h96C33C963C96693C)) 
    \n1q_m[1]_i_1__0 
       (.I0(\n1q_m[3]_i_6__0_n_0 ),
        .I1(\n1q_m[3]_i_3__0_n_0 ),
        .I2(\n1q_m[3]_i_2__0_n_0 ),
        .I3(\din_q_reg_n_0_[0] ),
        .I4(\n1q_m[3]_i_4__0_n_0 ),
        .I5(\n1q_m[3]_i_5__0_n_0 ),
        .O(\n1q_m[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7F17FEFF01007F17)) 
    \n1q_m[2]_i_1__0 
       (.I0(\n1q_m[3]_i_6__0_n_0 ),
        .I1(\n1q_m[3]_i_5__0_n_0 ),
        .I2(\n1q_m[3]_i_4__0_n_0 ),
        .I3(\din_q_reg_n_0_[0] ),
        .I4(\n1q_m[3]_i_2__0_n_0 ),
        .I5(\n1q_m[3]_i_3__0_n_0 ),
        .O(\n1q_m[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5656566656565656)) 
    \n1q_m[3]_i_10__0 
       (.I0(p_0_in1_in),
        .I1(n1d[3]),
        .I2(n1d[2]),
        .I3(n1d[0]),
        .I4(n1d[1]),
        .I5(\din_q_reg_n_0_[0] ),
        .O(\n1q_m[3]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'h5656566656565656)) 
    \n1q_m[3]_i_11__0 
       (.I0(p_0_in),
        .I1(n1d[3]),
        .I2(n1d[2]),
        .I3(n1d[0]),
        .I4(n1d[1]),
        .I5(\din_q_reg_n_0_[0] ),
        .O(\n1q_m[3]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \n1q_m[3]_i_1__0 
       (.I0(\n1q_m[3]_i_2__0_n_0 ),
        .I1(\n1q_m[3]_i_3__0_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_4__0_n_0 ),
        .I4(\n1q_m[3]_i_5__0_n_0 ),
        .I5(\n1q_m[3]_i_6__0_n_0 ),
        .O(\n1q_m[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h69669969)) 
    \n1q_m[3]_i_2__0 
       (.I0(p_0_in5_in),
        .I1(\din_q_reg_n_0_[0] ),
        .I2(p_0_in4_in),
        .I3(p_0_in3_in),
        .I4(decision1),
        .O(\n1q_m[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h2DD2D22DB44B4BB4)) 
    \n1q_m[3]_i_3__0 
       (.I0(p_0_in0_in),
        .I1(decision1),
        .I2(p_0_in2_in),
        .I3(\q_m_reg[5]_i_2__0_n_0 ),
        .I4(\n1q_m[3]_i_7__0_n_0 ),
        .I5(p_0_in1_in),
        .O(\n1q_m[3]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \n1q_m[3]_i_4__0 
       (.I0(p_0_in0_in),
        .I1(p_0_in2_in),
        .I2(\q_m_reg[5]_i_2__0_n_0 ),
        .I3(\n1q_m[3]_i_7__0_n_0 ),
        .O(\n1q_m[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \n1q_m[3]_i_5__0 
       (.I0(\n1q_m[3]_i_8__0_n_0 ),
        .I1(\n1q_m[3]_i_9__0_n_0 ),
        .I2(\q_m_reg[5]_i_2__0_n_0 ),
        .I3(\n1q_m[3]_i_7__0_n_0 ),
        .I4(\n1q_m[3]_i_10__0_n_0 ),
        .I5(\n1q_m[3]_i_11__0_n_0 ),
        .O(\n1q_m[3]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n1q_m[3]_i_6__0 
       (.I0(p_0_in3_in),
        .I1(p_0_in5_in),
        .I2(\din_q_reg_n_0_[0] ),
        .O(\n1q_m[3]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \n1q_m[3]_i_7__0 
       (.I0(p_0_in4_in),
        .I1(p_0_in3_in),
        .O(\n1q_m[3]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h5656566656565656)) 
    \n1q_m[3]_i_8__0 
       (.I0(p_0_in0_in),
        .I1(n1d[3]),
        .I2(n1d[2]),
        .I3(n1d[0]),
        .I4(n1d[1]),
        .I5(\din_q_reg_n_0_[0] ),
        .O(\n1q_m[3]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h5656566656565656)) 
    \n1q_m[3]_i_9__0 
       (.I0(p_0_in2_in),
        .I1(n1d[3]),
        .I2(n1d[2]),
        .I3(n1d[0]),
        .I4(n1d[1]),
        .I5(\din_q_reg_n_0_[0] ),
        .O(\n1q_m[3]_i_9__0_n_0 ));
  FDRE \n1q_m_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n1q_m[1]_i_1__0_n_0 ),
        .Q(n1q_m[1]),
        .R(1'b0));
  FDRE \n1q_m_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n1q_m[2]_i_1__0_n_0 ),
        .Q(n1q_m[2]),
        .R(1'b0));
  FDRE \n1q_m_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n1q_m[3]_i_1__0_n_0 ),
        .Q(n1q_m[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9999999999956666)) 
    \q_m_reg[1]_i_1__0 
       (.I0(p_0_in5_in),
        .I1(\din_q_reg_n_0_[0] ),
        .I2(n1d[1]),
        .I3(n1d[0]),
        .I4(n1d[2]),
        .I5(n1d[3]),
        .O(\q_m_reg[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_reg[2]_i_1__0 
       (.I0(\din_q_reg_n_0_[0] ),
        .I1(p_0_in5_in),
        .I2(p_0_in4_in),
        .O(q_m_2));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[3]_i_1__0 
       (.I0(p_0_in5_in),
        .I1(\din_q_reg_n_0_[0] ),
        .I2(decision1),
        .I3(p_0_in3_in),
        .I4(p_0_in4_in),
        .O(q_m_3));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[4]_i_1__0 
       (.I0(p_0_in4_in),
        .I1(p_0_in3_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in5_in),
        .I4(p_0_in2_in),
        .O(q_m_4));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_reg[5]_i_1__0 
       (.I0(p_0_in2_in),
        .I1(\q_m_reg[5]_i_2__0_n_0 ),
        .I2(p_0_in3_in),
        .I3(p_0_in4_in),
        .I4(p_0_in1_in),
        .O(q_m_5));
  LUT6 #(
    .INIT(64'h1115EEEEEEEA1111)) 
    \q_m_reg[5]_i_2__0 
       (.I0(n1d[3]),
        .I1(n1d[2]),
        .I2(n1d[0]),
        .I3(n1d[1]),
        .I4(\din_q_reg_n_0_[0] ),
        .I5(p_0_in5_in),
        .O(\q_m_reg[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_reg[6]_i_1__0 
       (.I0(q_m_5),
        .I1(decision1),
        .I2(p_0_in0_in),
        .O(q_m_6));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFFFD00)) 
    \q_m_reg[6]_i_2__0 
       (.I0(\din_q_reg_n_0_[0] ),
        .I1(n1d[1]),
        .I2(n1d[0]),
        .I3(n1d[2]),
        .I4(n1d[3]),
        .O(decision1));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_reg[7]_i_1__0 
       (.I0(p_0_in),
        .I1(q_m_5),
        .I2(p_0_in0_in),
        .O(q_m_7));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h11151111)) 
    \q_m_reg[8]_i_1__0 
       (.I0(n1d[3]),
        .I1(n1d[2]),
        .I2(n1d[0]),
        .I3(n1d[1]),
        .I4(\din_q_reg_n_0_[0] ),
        .O(\q_m_reg[8]_i_1__0_n_0 ));
  FDRE \q_m_reg_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\din_q_reg_n_0_[0] ),
        .Q(\q_m_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\q_m_reg[1]_i_1__0_n_0 ),
        .Q(\q_m_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_2),
        .Q(\q_m_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_3),
        .Q(\q_m_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[4] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_4),
        .Q(\q_m_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[5] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_5),
        .Q(\q_m_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[6] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_6),
        .Q(\q_m_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[7] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_7),
        .Q(\q_m_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[8] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\q_m_reg[8]_i_1__0_n_0 ),
        .Q(q_m_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "encoder" *) 
module overlay1_dvi_encoder_v2_0_0_encoder
   (\dout_reg[8]_0 ,
    Q,
    ctl_code,
    p_clk,
    de_reg,
    vid_gb_reg_reg,
    vid_gb_reg_reg_0,
    vid_gb_reg,
    red_din,
    SR,
    E,
    reset);
  output \dout_reg[8]_0 ;
  output [9:0]Q;
  input [1:0]ctl_code;
  input p_clk;
  input de_reg;
  input vid_gb_reg_reg;
  input vid_gb_reg_reg_0;
  input vid_gb_reg;
  input [7:0]red_din;
  input [0:0]SR;
  input [0:0]E;
  input reset;

  wire [0:0]E;
  wire [9:0]Q;
  wire [0:0]SR;
  wire c0_q_reg_n_0;
  wire c1_q_reg_n_0;
  wire c1_reg_reg_n_0;
  wire \cnt[1]_i_1__1_n_0 ;
  wire \cnt[2]_i_1__1_n_0 ;
  wire \cnt[2]_i_2__1_n_0 ;
  wire \cnt[2]_i_3__1_n_0 ;
  wire \cnt[2]_i_4__1_n_0 ;
  wire \cnt[2]_i_5__1_n_0 ;
  wire \cnt[3]_i_1__1_n_0 ;
  wire \cnt[3]_i_2__1_n_0 ;
  wire \cnt[3]_i_3__1_n_0 ;
  wire \cnt[3]_i_4__1_n_0 ;
  wire \cnt[3]_i_5__1_n_0 ;
  wire \cnt[3]_i_6__1_n_0 ;
  wire \cnt[4]_i_10__0_n_0 ;
  wire \cnt[4]_i_11__1_n_0 ;
  wire \cnt[4]_i_12__1_n_0 ;
  wire \cnt[4]_i_13__0_n_0 ;
  wire \cnt[4]_i_14__1_n_0 ;
  wire \cnt[4]_i_15__1_n_0 ;
  wire \cnt[4]_i_16__1_n_0 ;
  wire \cnt[4]_i_17__1_n_0 ;
  wire \cnt[4]_i_18__1_n_0 ;
  wire \cnt[4]_i_19__1_n_0 ;
  wire \cnt[4]_i_1__1_n_0 ;
  wire \cnt[4]_i_20__1_n_0 ;
  wire \cnt[4]_i_21__1_n_0 ;
  wire \cnt[4]_i_22__1_n_0 ;
  wire \cnt[4]_i_23__1_n_0 ;
  wire \cnt[4]_i_24__1_n_0 ;
  wire \cnt[4]_i_2__1_n_0 ;
  wire \cnt[4]_i_3__1_n_0 ;
  wire \cnt[4]_i_4__1_n_0 ;
  wire \cnt[4]_i_5__1_n_0 ;
  wire \cnt[4]_i_6__1_n_0 ;
  wire \cnt[4]_i_7__1_n_0 ;
  wire \cnt[4]_i_8__0_n_0 ;
  wire \cnt[4]_i_9__1_n_0 ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire [1:0]ctl_code;
  wire de_reg;
  wire decision1;
  wire \din_q_reg_n_0_[0] ;
  wire \dout[0]_i_1__0_n_0 ;
  wire \dout[1]_i_1__0_n_0 ;
  wire \dout[2]_i_1__1_n_0 ;
  wire \dout[3]_i_1__1_n_0 ;
  wire \dout[4]_i_1__1_n_0 ;
  wire \dout[5]_i_1__0_n_0 ;
  wire \dout[6]_i_1__1_n_0 ;
  wire \dout[7]_i_1__1_n_0 ;
  wire \dout[8]_i_1__1_n_0 ;
  wire \dout[9]_i_1__1_n_0 ;
  wire \dout[9]_i_2__1_n_0 ;
  wire \dout_reg[8]_0 ;
  wire [3:1]n0q_m;
  wire \n0q_m[1]_i_1__1_n_0 ;
  wire \n0q_m[2]_i_1__1_n_0 ;
  wire \n0q_m[3]_i_1__1_n_0 ;
  wire [3:0]n1d;
  wire \n1d[0]_i_1_n_0 ;
  wire \n1d[0]_i_2_n_0 ;
  wire \n1d[1]_i_1_n_0 ;
  wire \n1d[1]_i_2_n_0 ;
  wire \n1d[2]_i_1_n_0 ;
  wire \n1d[2]_i_2_n_0 ;
  wire \n1d[3]_i_1_n_0 ;
  wire \n1d[3]_i_2_n_0 ;
  wire \n1d[3]_i_3_n_0 ;
  wire \n1d[3]_i_4_n_0 ;
  wire [3:1]n1q_m;
  wire \n1q_m[1]_i_1__1_n_0 ;
  wire \n1q_m[2]_i_1__1_n_0 ;
  wire \n1q_m[3]_i_10__1_n_0 ;
  wire \n1q_m[3]_i_11__1_n_0 ;
  wire \n1q_m[3]_i_1__1_n_0 ;
  wire \n1q_m[3]_i_2__1_n_0 ;
  wire \n1q_m[3]_i_3__1_n_0 ;
  wire \n1q_m[3]_i_4__1_n_0 ;
  wire \n1q_m[3]_i_5__1_n_0 ;
  wire \n1q_m[3]_i_6__1_n_0 ;
  wire \n1q_m[3]_i_7__1_n_0 ;
  wire \n1q_m[3]_i_8__1_n_0 ;
  wire \n1q_m[3]_i_9__1_n_0 ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire p_0_in4_in;
  wire p_0_in5_in;
  wire p_clk;
  wire q_m_2;
  wire q_m_3;
  wire q_m_4;
  wire q_m_5;
  wire q_m_6;
  wire q_m_7;
  wire [8:8]q_m_reg;
  wire \q_m_reg[1]_i_1__1_n_0 ;
  wire \q_m_reg[5]_i_2__1_n_0 ;
  wire \q_m_reg[8]_i_1__1_n_0 ;
  wire \q_m_reg_reg_n_0_[0] ;
  wire \q_m_reg_reg_n_0_[1] ;
  wire \q_m_reg_reg_n_0_[2] ;
  wire \q_m_reg_reg_n_0_[3] ;
  wire \q_m_reg_reg_n_0_[4] ;
  wire \q_m_reg_reg_n_0_[5] ;
  wire \q_m_reg_reg_n_0_[6] ;
  wire \q_m_reg_reg_n_0_[7] ;
  wire [7:0]red_din;
  wire reset;
  wire vid_gb_reg;
  wire vid_gb_reg_reg;
  wire vid_gb_reg_reg_0;

  FDRE c0_q_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(ctl_code[0]),
        .Q(c0_q_reg_n_0),
        .R(1'b0));
  FDRE c0_reg_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(c0_q_reg_n_0),
        .Q(\dout_reg[8]_0 ),
        .R(1'b0));
  FDRE c1_q_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(ctl_code[1]),
        .Q(c1_q_reg_n_0),
        .R(1'b0));
  FDRE c1_reg_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(c1_q_reg_n_0),
        .Q(c1_reg_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB44B4BB4E11E1EE1)) 
    \cnt[1]_i_1__1 
       (.I0(\cnt[4]_i_3__1_n_0 ),
        .I1(q_m_reg),
        .I2(n1q_m[1]),
        .I3(n0q_m[1]),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt[4]_i_6__1_n_0 ),
        .O(\cnt[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \cnt[2]_i_1__1 
       (.I0(\cnt[2]_i_2__1_n_0 ),
        .I1(\cnt[4]_i_3__1_n_0 ),
        .I2(\cnt[2]_i_3__1_n_0 ),
        .I3(\cnt[2]_i_4__1_n_0 ),
        .I4(\cnt[4]_i_6__1_n_0 ),
        .I5(\cnt[2]_i_5__1_n_0 ),
        .O(\cnt[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h59655695)) 
    \cnt[2]_i_2__1 
       (.I0(\cnt[4]_i_11__1_n_0 ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(n0q_m[1]),
        .I3(n1q_m[1]),
        .I4(q_m_reg),
        .O(\cnt[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h6996696996966996)) 
    \cnt[2]_i_3__1 
       (.I0(n1q_m[2]),
        .I1(n0q_m[2]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(q_m_reg),
        .I4(n1q_m[1]),
        .I5(n0q_m[1]),
        .O(\cnt[2]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h4114)) 
    \cnt[2]_i_4__1 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(n0q_m[1]),
        .I2(n1q_m[1]),
        .I3(q_m_reg),
        .O(\cnt[2]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h566A9556)) 
    \cnt[2]_i_5__1 
       (.I0(\cnt[4]_i_11__1_n_0 ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(n1q_m[1]),
        .I3(q_m_reg),
        .I4(n0q_m[1]),
        .O(\cnt[2]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \cnt[3]_i_1__1 
       (.I0(\cnt[3]_i_2__1_n_0 ),
        .I1(\cnt[3]_i_3__1_n_0 ),
        .I2(\cnt[4]_i_3__1_n_0 ),
        .I3(\cnt[3]_i_4__1_n_0 ),
        .I4(\cnt[4]_i_6__1_n_0 ),
        .I5(\cnt[3]_i_5__1_n_0 ),
        .O(\cnt[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h54155D75)) 
    \cnt[3]_i_2__1 
       (.I0(\cnt[4]_i_11__1_n_0 ),
        .I1(q_m_reg),
        .I2(n1q_m[1]),
        .I3(n0q_m[1]),
        .I4(\cnt_reg_n_0_[1] ),
        .O(\cnt[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h5965A96A)) 
    \cnt[3]_i_3__1 
       (.I0(\cnt[4]_i_13__0_n_0 ),
        .I1(q_m_reg),
        .I2(n1q_m[2]),
        .I3(n0q_m[2]),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\cnt[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hA9AA99A999A99599)) 
    \cnt[3]_i_4__1 
       (.I0(\cnt[4]_i_15__1_n_0 ),
        .I1(\cnt[4]_i_11__1_n_0 ),
        .I2(q_m_reg),
        .I3(n1q_m[1]),
        .I4(n0q_m[1]),
        .I5(\cnt_reg_n_0_[1] ),
        .O(\cnt[3]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFE80017F017FFE80)) 
    \cnt[3]_i_5__1 
       (.I0(\cnt[3]_i_6__1_n_0 ),
        .I1(n1q_m[1]),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt[4]_i_23__1_n_0 ),
        .I4(\cnt[4]_i_20__1_n_0 ),
        .I5(\cnt[4]_i_21__1_n_0 ),
        .O(\cnt[3]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[3]_i_6__1 
       (.I0(n0q_m[1]),
        .I1(q_m_reg),
        .O(\cnt[3]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFBEF)) 
    \cnt[4]_i_10__0 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(n0q_m[1]),
        .I2(n1q_m[1]),
        .I3(q_m_reg),
        .O(\cnt[4]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \cnt[4]_i_11__1 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(n0q_m[2]),
        .I2(n1q_m[2]),
        .O(\cnt[4]_i_11__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h2008)) 
    \cnt[4]_i_12__1 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(n0q_m[1]),
        .I2(n1q_m[1]),
        .I3(q_m_reg),
        .O(\cnt[4]_i_12__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt[4]_i_13__0 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(n0q_m[3]),
        .I2(n1q_m[3]),
        .O(\cnt[4]_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \cnt[4]_i_14__1 
       (.I0(n0q_m[2]),
        .I1(n1q_m[2]),
        .I2(n0q_m[1]),
        .I3(n1q_m[1]),
        .I4(n1q_m[3]),
        .I5(n0q_m[3]),
        .O(\cnt[4]_i_14__1_n_0 ));
  LUT6 #(
    .INIT(64'h6996696996966996)) 
    \cnt[4]_i_15__1 
       (.I0(n1q_m[3]),
        .I1(n0q_m[3]),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(n1q_m[2]),
        .I5(n0q_m[2]),
        .O(\cnt[4]_i_15__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \cnt[4]_i_16__1 
       (.I0(n0q_m[2]),
        .I1(n1q_m[2]),
        .I2(\cnt_reg_n_0_[2] ),
        .O(\cnt[4]_i_16__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF2FFFFF2222FF2F)) 
    \cnt[4]_i_17__1 
       (.I0(n1q_m[3]),
        .I1(n0q_m[3]),
        .I2(n0q_m[1]),
        .I3(n1q_m[1]),
        .I4(n0q_m[2]),
        .I5(n1q_m[2]),
        .O(\cnt[4]_i_17__1_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD00F0FFFFDDFD)) 
    \cnt[4]_i_18__1 
       (.I0(n1q_m[1]),
        .I1(n0q_m[1]),
        .I2(n0q_m[3]),
        .I3(n1q_m[3]),
        .I4(n0q_m[2]),
        .I5(n1q_m[2]),
        .O(\cnt[4]_i_18__1_n_0 ));
  LUT6 #(
    .INIT(64'hB0FB04B04F04FB4F)) 
    \cnt[4]_i_19__1 
       (.I0(n1q_m[2]),
        .I1(n0q_m[2]),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(n0q_m[3]),
        .I4(n1q_m[3]),
        .I5(\cnt_reg_n_0_[4] ),
        .O(\cnt[4]_i_19__1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \cnt[4]_i_1__1 
       (.I0(\cnt[4]_i_2__1_n_0 ),
        .I1(\cnt[4]_i_3__1_n_0 ),
        .I2(\cnt[4]_i_4__1_n_0 ),
        .I3(\cnt[4]_i_5__1_n_0 ),
        .I4(\cnt[4]_i_6__1_n_0 ),
        .I5(\cnt[4]_i_7__1_n_0 ),
        .O(\cnt[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h4BB4B44B)) 
    \cnt[4]_i_20__1 
       (.I0(n1q_m[2]),
        .I1(n0q_m[2]),
        .I2(n1q_m[3]),
        .I3(n0q_m[3]),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\cnt[4]_i_20__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hF6F660F6)) 
    \cnt[4]_i_21__1 
       (.I0(n0q_m[2]),
        .I1(n1q_m[2]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(n0q_m[1]),
        .I4(q_m_reg),
        .O(\cnt[4]_i_21__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h1001)) 
    \cnt[4]_i_22__1 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(n1q_m[1]),
        .I2(q_m_reg),
        .I3(n0q_m[1]),
        .O(\cnt[4]_i_22__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h69966969)) 
    \cnt[4]_i_23__1 
       (.I0(n1q_m[2]),
        .I1(n0q_m[2]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(q_m_reg),
        .I4(n0q_m[1]),
        .O(\cnt[4]_i_23__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hF77F)) 
    \cnt[4]_i_24__1 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(n1q_m[1]),
        .I2(q_m_reg),
        .I3(n0q_m[1]),
        .O(\cnt[4]_i_24__1_n_0 ));
  LUT6 #(
    .INIT(64'h95959555A9A9A999)) 
    \cnt[4]_i_2__1 
       (.I0(\cnt[4]_i_8__0_n_0 ),
        .I1(\cnt[4]_i_9__1_n_0 ),
        .I2(\cnt[4]_i_10__0_n_0 ),
        .I3(\cnt[4]_i_11__1_n_0 ),
        .I4(\cnt[4]_i_12__1_n_0 ),
        .I5(\cnt[4]_i_13__0_n_0 ),
        .O(\cnt[4]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \cnt[4]_i_3__1 
       (.I0(\cnt[4]_i_14__1_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[1] ),
        .O(\cnt[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hABAABBABBBABBFBB)) 
    \cnt[4]_i_4__1 
       (.I0(\cnt[4]_i_15__1_n_0 ),
        .I1(\cnt[4]_i_11__1_n_0 ),
        .I2(q_m_reg),
        .I3(n1q_m[1]),
        .I4(n0q_m[1]),
        .I5(\cnt_reg_n_0_[1] ),
        .O(\cnt[4]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'h56956A56)) 
    \cnt[4]_i_5__1 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(n0q_m[3]),
        .I3(n1q_m[3]),
        .I4(\cnt[4]_i_16__1_n_0 ),
        .O(\cnt[4]_i_5__1_n_0 ));
  LUT5 #(
    .INIT(32'h47C477F7)) 
    \cnt[4]_i_6__1 
       (.I0(\cnt[4]_i_17__1_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(n0q_m[3]),
        .I3(n1q_m[3]),
        .I4(\cnt[4]_i_18__1_n_0 ),
        .O(\cnt[4]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h6A566A6A56565656)) 
    \cnt[4]_i_7__1 
       (.I0(\cnt[4]_i_19__1_n_0 ),
        .I1(\cnt[4]_i_20__1_n_0 ),
        .I2(\cnt[4]_i_21__1_n_0 ),
        .I3(\cnt[4]_i_22__1_n_0 ),
        .I4(\cnt[4]_i_23__1_n_0 ),
        .I5(\cnt[4]_i_24__1_n_0 ),
        .O(\cnt[4]_i_7__1_n_0 ));
  LUT5 #(
    .INIT(32'h5965A96A)) 
    \cnt[4]_i_8__0 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(q_m_reg),
        .I2(n1q_m[3]),
        .I3(n0q_m[3]),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\cnt[4]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hB28E)) 
    \cnt[4]_i_9__1 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(n0q_m[2]),
        .I2(n1q_m[2]),
        .I3(q_m_reg),
        .O(\cnt[4]_i_9__1_n_0 ));
  FDRE \cnt_reg[1] 
       (.C(p_clk),
        .CE(E),
        .D(\cnt[1]_i_1__1_n_0 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(SR));
  FDRE \cnt_reg[2] 
       (.C(p_clk),
        .CE(E),
        .D(\cnt[2]_i_1__1_n_0 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(SR));
  FDRE \cnt_reg[3] 
       (.C(p_clk),
        .CE(E),
        .D(\cnt[3]_i_1__1_n_0 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(SR));
  FDRE \cnt_reg[4] 
       (.C(p_clk),
        .CE(E),
        .D(\cnt[4]_i_1__1_n_0 ),
        .Q(\cnt_reg_n_0_[4] ),
        .R(SR));
  FDRE \din_q_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(red_din[0]),
        .Q(\din_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \din_q_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(red_din[1]),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE \din_q_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(red_din[2]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \din_q_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(red_din[3]),
        .Q(p_0_in3_in),
        .R(1'b0));
  FDRE \din_q_reg[4] 
       (.C(p_clk),
        .CE(1'b1),
        .D(red_din[4]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \din_q_reg[5] 
       (.C(p_clk),
        .CE(1'b1),
        .D(red_din[5]),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE \din_q_reg[6] 
       (.C(p_clk),
        .CE(1'b1),
        .D(red_din[6]),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE \din_q_reg[7] 
       (.C(p_clk),
        .CE(1'b1),
        .D(red_din[7]),
        .Q(p_0_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h82228288AAAAAAAA)) 
    \dout[0]_i_1__0 
       (.I0(vid_gb_reg_reg),
        .I1(\q_m_reg_reg_n_0_[0] ),
        .I2(q_m_reg),
        .I3(\cnt[4]_i_3__1_n_0 ),
        .I4(\cnt[4]_i_6__1_n_0 ),
        .I5(de_reg),
        .O(\dout[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h82228288AAAAAAAA)) 
    \dout[1]_i_1__0 
       (.I0(vid_gb_reg_reg),
        .I1(\q_m_reg_reg_n_0_[1] ),
        .I2(q_m_reg),
        .I3(\cnt[4]_i_3__1_n_0 ),
        .I4(\cnt[4]_i_6__1_n_0 ),
        .I5(de_reg),
        .O(\dout[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA6560000FFFFFFFF)) 
    \dout[2]_i_1__1 
       (.I0(\q_m_reg_reg_n_0_[2] ),
        .I1(\cnt[4]_i_6__1_n_0 ),
        .I2(\cnt[4]_i_3__1_n_0 ),
        .I3(q_m_reg),
        .I4(de_reg),
        .I5(vid_gb_reg_reg),
        .O(\dout[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hA6560000FFFFFFFF)) 
    \dout[3]_i_1__1 
       (.I0(\q_m_reg_reg_n_0_[3] ),
        .I1(\cnt[4]_i_6__1_n_0 ),
        .I2(\cnt[4]_i_3__1_n_0 ),
        .I3(q_m_reg),
        .I4(de_reg),
        .I5(vid_gb_reg_reg_0),
        .O(\dout[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h82228288AAAAAAAA)) 
    \dout[4]_i_1__1 
       (.I0(vid_gb_reg_reg_0),
        .I1(\q_m_reg_reg_n_0_[4] ),
        .I2(q_m_reg),
        .I3(\cnt[4]_i_3__1_n_0 ),
        .I4(\cnt[4]_i_6__1_n_0 ),
        .I5(de_reg),
        .O(\dout[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h82228288AAAAAAAA)) 
    \dout[5]_i_1__0 
       (.I0(vid_gb_reg_reg),
        .I1(\q_m_reg_reg_n_0_[5] ),
        .I2(q_m_reg),
        .I3(\cnt[4]_i_3__1_n_0 ),
        .I4(\cnt[4]_i_6__1_n_0 ),
        .I5(de_reg),
        .O(\dout[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h959A0000FFFFFFFF)) 
    \dout[6]_i_1__1 
       (.I0(\q_m_reg_reg_n_0_[6] ),
        .I1(q_m_reg),
        .I2(\cnt[4]_i_3__1_n_0 ),
        .I3(\cnt[4]_i_6__1_n_0 ),
        .I4(de_reg),
        .I5(vid_gb_reg_reg),
        .O(\dout[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h959A0000FFFFFFFF)) 
    \dout[7]_i_1__1 
       (.I0(\q_m_reg_reg_n_0_[7] ),
        .I1(q_m_reg),
        .I2(\cnt[4]_i_3__1_n_0 ),
        .I3(\cnt[4]_i_6__1_n_0 ),
        .I4(de_reg),
        .I5(vid_gb_reg_reg_0),
        .O(\dout[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h3011)) 
    \dout[8]_i_1__1 
       (.I0(\dout_reg[8]_0 ),
        .I1(vid_gb_reg),
        .I2(q_m_reg),
        .I3(de_reg),
        .O(\dout[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hABABFBABFBFBFBAB)) 
    \dout[9]_i_1__1 
       (.I0(vid_gb_reg),
        .I1(\dout[9]_i_2__1_n_0 ),
        .I2(de_reg),
        .I3(\cnt[4]_i_6__1_n_0 ),
        .I4(\cnt[4]_i_3__1_n_0 ),
        .I5(q_m_reg),
        .O(\dout[9]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dout[9]_i_2__1 
       (.I0(\dout_reg[8]_0 ),
        .I1(c1_reg_reg_n_0),
        .O(\dout[9]_i_2__1_n_0 ));
  FDRE \dout_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(reset));
  FDRE \dout_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(reset));
  FDRE \dout_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(reset));
  FDRE \dout_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(reset));
  FDRE \dout_reg[4] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(reset));
  FDRE \dout_reg[5] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(reset));
  FDRE \dout_reg[6] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(reset));
  FDRE \dout_reg[7] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(reset));
  FDRE \dout_reg[8] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(reset));
  FDRE \dout_reg[9] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\dout[9]_i_1__1_n_0 ),
        .Q(Q[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'h6669699996666669)) 
    \n0q_m[1]_i_1__1 
       (.I0(\n1q_m[3]_i_2__1_n_0 ),
        .I1(\n1q_m[3]_i_3__1_n_0 ),
        .I2(\n1q_m[3]_i_6__1_n_0 ),
        .I3(\n1q_m[3]_i_5__1_n_0 ),
        .I4(\n1q_m[3]_i_4__1_n_0 ),
        .I5(\din_q_reg_n_0_[0] ),
        .O(\n0q_m[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFDD4BFFF4000FDD4)) 
    \n0q_m[2]_i_1__1 
       (.I0(\din_q_reg_n_0_[0] ),
        .I1(\n1q_m[3]_i_4__1_n_0 ),
        .I2(\n1q_m[3]_i_5__1_n_0 ),
        .I3(\n1q_m[3]_i_6__1_n_0 ),
        .I4(\n1q_m[3]_i_3__1_n_0 ),
        .I5(\n1q_m[3]_i_2__1_n_0 ),
        .O(\n0q_m[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \n0q_m[3]_i_1__1 
       (.I0(\n1q_m[3]_i_3__1_n_0 ),
        .I1(\n1q_m[3]_i_2__1_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_4__1_n_0 ),
        .I4(\n1q_m[3]_i_5__1_n_0 ),
        .I5(\n1q_m[3]_i_6__1_n_0 ),
        .O(\n0q_m[3]_i_1__1_n_0 ));
  FDRE \n0q_m_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n0q_m[1]_i_1__1_n_0 ),
        .Q(n0q_m[1]),
        .R(1'b0));
  FDRE \n0q_m_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n0q_m[2]_i_1__1_n_0 ),
        .Q(n0q_m[2]),
        .R(1'b0));
  FDRE \n0q_m_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n0q_m[3]_i_1__1_n_0 ),
        .Q(n0q_m[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1d[0]_i_1 
       (.I0(red_din[0]),
        .I1(red_din[7]),
        .I2(\n1d[0]_i_2_n_0 ),
        .I3(red_din[2]),
        .I4(red_din[1]),
        .I5(red_din[3]),
        .O(\n1d[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[0]_i_2 
       (.I0(red_din[6]),
        .I1(red_din[4]),
        .I2(red_din[5]),
        .O(\n1d[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[1]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[1]_i_2_n_0 ),
        .I2(\n1d[3]_i_3_n_0 ),
        .O(\n1d[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \n1d[1]_i_2 
       (.I0(red_din[3]),
        .I1(red_din[2]),
        .I2(red_din[1]),
        .I3(red_din[6]),
        .I4(red_din[5]),
        .I5(red_din[4]),
        .O(\n1d[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \n1d[2]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(\n1d[2]_i_2_n_0 ),
        .I3(red_din[4]),
        .I4(red_din[5]),
        .I5(red_din[6]),
        .O(\n1d[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[2]_i_2 
       (.I0(red_din[1]),
        .I1(red_din[2]),
        .I2(red_din[3]),
        .O(\n1d[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \n1d[3]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(red_din[3]),
        .I3(red_din[2]),
        .I4(red_din[1]),
        .I5(\n1d[3]_i_4_n_0 ),
        .O(\n1d[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \n1d[3]_i_2 
       (.I0(red_din[2]),
        .I1(red_din[1]),
        .I2(red_din[3]),
        .I3(red_din[0]),
        .I4(red_din[7]),
        .I5(\n1d[0]_i_2_n_0 ),
        .O(\n1d[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \n1d[3]_i_3 
       (.I0(red_din[7]),
        .I1(red_din[0]),
        .I2(red_din[5]),
        .I3(red_din[4]),
        .I4(red_din[6]),
        .O(\n1d[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[3]_i_4 
       (.I0(red_din[4]),
        .I1(red_din[5]),
        .I2(red_din[6]),
        .O(\n1d[3]_i_4_n_0 ));
  FDRE \n1d_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n1d[0]_i_1_n_0 ),
        .Q(n1d[0]),
        .R(1'b0));
  FDRE \n1d_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n1d[1]_i_1_n_0 ),
        .Q(n1d[1]),
        .R(1'b0));
  FDRE \n1d_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n1d[2]_i_1_n_0 ),
        .Q(n1d[2]),
        .R(1'b0));
  FDRE \n1d_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n1d[3]_i_1_n_0 ),
        .Q(n1d[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h96C33C963C96693C)) 
    \n1q_m[1]_i_1__1 
       (.I0(\n1q_m[3]_i_6__1_n_0 ),
        .I1(\n1q_m[3]_i_3__1_n_0 ),
        .I2(\n1q_m[3]_i_2__1_n_0 ),
        .I3(\din_q_reg_n_0_[0] ),
        .I4(\n1q_m[3]_i_4__1_n_0 ),
        .I5(\n1q_m[3]_i_5__1_n_0 ),
        .O(\n1q_m[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7F17FEFF01007F17)) 
    \n1q_m[2]_i_1__1 
       (.I0(\n1q_m[3]_i_6__1_n_0 ),
        .I1(\n1q_m[3]_i_5__1_n_0 ),
        .I2(\n1q_m[3]_i_4__1_n_0 ),
        .I3(\din_q_reg_n_0_[0] ),
        .I4(\n1q_m[3]_i_2__1_n_0 ),
        .I5(\n1q_m[3]_i_3__1_n_0 ),
        .O(\n1q_m[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h5656566656565656)) 
    \n1q_m[3]_i_10__1 
       (.I0(p_0_in1_in),
        .I1(n1d[3]),
        .I2(n1d[2]),
        .I3(n1d[0]),
        .I4(n1d[1]),
        .I5(\din_q_reg_n_0_[0] ),
        .O(\n1q_m[3]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'h5656566656565656)) 
    \n1q_m[3]_i_11__1 
       (.I0(p_0_in),
        .I1(n1d[3]),
        .I2(n1d[2]),
        .I3(n1d[0]),
        .I4(n1d[1]),
        .I5(\din_q_reg_n_0_[0] ),
        .O(\n1q_m[3]_i_11__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \n1q_m[3]_i_1__1 
       (.I0(\n1q_m[3]_i_2__1_n_0 ),
        .I1(\n1q_m[3]_i_3__1_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_4__1_n_0 ),
        .I4(\n1q_m[3]_i_5__1_n_0 ),
        .I5(\n1q_m[3]_i_6__1_n_0 ),
        .O(\n1q_m[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h69669969)) 
    \n1q_m[3]_i_2__1 
       (.I0(p_0_in5_in),
        .I1(\din_q_reg_n_0_[0] ),
        .I2(p_0_in4_in),
        .I3(p_0_in3_in),
        .I4(decision1),
        .O(\n1q_m[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h2DD2D22DB44B4BB4)) 
    \n1q_m[3]_i_3__1 
       (.I0(p_0_in0_in),
        .I1(decision1),
        .I2(p_0_in2_in),
        .I3(\q_m_reg[5]_i_2__1_n_0 ),
        .I4(\n1q_m[3]_i_7__1_n_0 ),
        .I5(p_0_in1_in),
        .O(\n1q_m[3]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \n1q_m[3]_i_4__1 
       (.I0(p_0_in0_in),
        .I1(p_0_in2_in),
        .I2(\q_m_reg[5]_i_2__1_n_0 ),
        .I3(\n1q_m[3]_i_7__1_n_0 ),
        .O(\n1q_m[3]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \n1q_m[3]_i_5__1 
       (.I0(\n1q_m[3]_i_8__1_n_0 ),
        .I1(\n1q_m[3]_i_9__1_n_0 ),
        .I2(\q_m_reg[5]_i_2__1_n_0 ),
        .I3(\n1q_m[3]_i_7__1_n_0 ),
        .I4(\n1q_m[3]_i_10__1_n_0 ),
        .I5(\n1q_m[3]_i_11__1_n_0 ),
        .O(\n1q_m[3]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n1q_m[3]_i_6__1 
       (.I0(p_0_in3_in),
        .I1(p_0_in5_in),
        .I2(\din_q_reg_n_0_[0] ),
        .O(\n1q_m[3]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \n1q_m[3]_i_7__1 
       (.I0(p_0_in4_in),
        .I1(p_0_in3_in),
        .O(\n1q_m[3]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'h5656566656565656)) 
    \n1q_m[3]_i_8__1 
       (.I0(p_0_in0_in),
        .I1(n1d[3]),
        .I2(n1d[2]),
        .I3(n1d[0]),
        .I4(n1d[1]),
        .I5(\din_q_reg_n_0_[0] ),
        .O(\n1q_m[3]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'h5656566656565656)) 
    \n1q_m[3]_i_9__1 
       (.I0(p_0_in2_in),
        .I1(n1d[3]),
        .I2(n1d[2]),
        .I3(n1d[0]),
        .I4(n1d[1]),
        .I5(\din_q_reg_n_0_[0] ),
        .O(\n1q_m[3]_i_9__1_n_0 ));
  FDRE \n1q_m_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n1q_m[1]_i_1__1_n_0 ),
        .Q(n1q_m[1]),
        .R(1'b0));
  FDRE \n1q_m_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n1q_m[2]_i_1__1_n_0 ),
        .Q(n1q_m[2]),
        .R(1'b0));
  FDRE \n1q_m_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\n1q_m[3]_i_1__1_n_0 ),
        .Q(n1q_m[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9999999999956666)) 
    \q_m_reg[1]_i_1__1 
       (.I0(p_0_in5_in),
        .I1(\din_q_reg_n_0_[0] ),
        .I2(n1d[1]),
        .I3(n1d[0]),
        .I4(n1d[2]),
        .I5(n1d[3]),
        .O(\q_m_reg[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_reg[2]_i_1__1 
       (.I0(\din_q_reg_n_0_[0] ),
        .I1(p_0_in5_in),
        .I2(p_0_in4_in),
        .O(q_m_2));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[3]_i_1__1 
       (.I0(p_0_in5_in),
        .I1(\din_q_reg_n_0_[0] ),
        .I2(decision1),
        .I3(p_0_in3_in),
        .I4(p_0_in4_in),
        .O(q_m_3));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[4]_i_1__1 
       (.I0(p_0_in4_in),
        .I1(p_0_in3_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in5_in),
        .I4(p_0_in2_in),
        .O(q_m_4));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_reg[5]_i_1__1 
       (.I0(p_0_in2_in),
        .I1(\q_m_reg[5]_i_2__1_n_0 ),
        .I2(p_0_in3_in),
        .I3(p_0_in4_in),
        .I4(p_0_in1_in),
        .O(q_m_5));
  LUT6 #(
    .INIT(64'h1115EEEEEEEA1111)) 
    \q_m_reg[5]_i_2__1 
       (.I0(n1d[3]),
        .I1(n1d[2]),
        .I2(n1d[0]),
        .I3(n1d[1]),
        .I4(\din_q_reg_n_0_[0] ),
        .I5(p_0_in5_in),
        .O(\q_m_reg[5]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_reg[6]_i_1__1 
       (.I0(q_m_5),
        .I1(decision1),
        .I2(p_0_in0_in),
        .O(q_m_6));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFFFD00)) 
    \q_m_reg[6]_i_2__1 
       (.I0(\din_q_reg_n_0_[0] ),
        .I1(n1d[1]),
        .I2(n1d[0]),
        .I3(n1d[2]),
        .I4(n1d[3]),
        .O(decision1));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_reg[7]_i_1__1 
       (.I0(p_0_in),
        .I1(q_m_5),
        .I2(p_0_in0_in),
        .O(q_m_7));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h11151111)) 
    \q_m_reg[8]_i_1__1 
       (.I0(n1d[3]),
        .I1(n1d[2]),
        .I2(n1d[0]),
        .I3(n1d[1]),
        .I4(\din_q_reg_n_0_[0] ),
        .O(\q_m_reg[8]_i_1__1_n_0 ));
  FDRE \q_m_reg_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\din_q_reg_n_0_[0] ),
        .Q(\q_m_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\q_m_reg[1]_i_1__1_n_0 ),
        .Q(\q_m_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_2),
        .Q(\q_m_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_3),
        .Q(\q_m_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[4] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_4),
        .Q(\q_m_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[5] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_5),
        .Q(\q_m_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[6] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_6),
        .Q(\q_m_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[7] 
       (.C(p_clk),
        .CE(1'b1),
        .D(q_m_7),
        .Q(\q_m_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[8] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\q_m_reg[8]_i_1__1_n_0 ),
        .Q(q_m_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "serialiser_10_to_1" *) 
module overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1
   (serial,
    px5_clk,
    p_clk,
    data,
    reset);
  output serial;
  input px5_clk;
  input p_clk;
  input [9:0]data;
  input reset;

  wire SHIFTIN1;
  wire SHIFTIN2;
  wire [9:0]data;
  wire p_clk;
  wire px5_clk;
  wire reset;
  wire serial;
  wire NLW_master_serdes_OFB_UNCONNECTED;
  wire NLW_master_serdes_SHIFTOUT1_UNCONNECTED;
  wire NLW_master_serdes_SHIFTOUT2_UNCONNECTED;
  wire NLW_master_serdes_TBYTEOUT_UNCONNECTED;
  wire NLW_master_serdes_TFB_UNCONNECTED;
  wire NLW_master_serdes_TQ_UNCONNECTED;
  wire NLW_slave_serdes_OFB_UNCONNECTED;
  wire NLW_slave_serdes_OQ_UNCONNECTED;
  wire NLW_slave_serdes_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_serdes_TFB_UNCONNECTED;
  wire NLW_slave_serdes_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("BUF"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master_serdes
       (.CLK(px5_clk),
        .CLKDIV(p_clk),
        .D1(data[0]),
        .D2(data[1]),
        .D3(data[2]),
        .D4(data[3]),
        .D5(data[4]),
        .D6(data[5]),
        .D7(data[6]),
        .D8(data[7]),
        .OCE(1'b1),
        .OFB(NLW_master_serdes_OFB_UNCONNECTED),
        .OQ(serial),
        .RST(reset),
        .SHIFTIN1(SHIFTIN1),
        .SHIFTIN2(SHIFTIN2),
        .SHIFTOUT1(NLW_master_serdes_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master_serdes_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_serdes_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_serdes_TFB_UNCONNECTED),
        .TQ(NLW_master_serdes_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("BUF"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave_serdes
       (.CLK(px5_clk),
        .CLKDIV(p_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(data[8]),
        .D4(data[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_serdes_OFB_UNCONNECTED),
        .OQ(NLW_slave_serdes_OQ_UNCONNECTED),
        .RST(reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTIN1),
        .SHIFTOUT2(SHIFTIN2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_serdes_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_serdes_TFB_UNCONNECTED),
        .TQ(NLW_slave_serdes_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serialiser_10_to_1" *) 
module overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_0
   (serial,
    px5_clk,
    p_clk,
    data,
    reset);
  output serial;
  input px5_clk;
  input p_clk;
  input [9:0]data;
  input reset;

  wire SHIFTIN1;
  wire SHIFTIN2;
  wire [9:0]data;
  wire p_clk;
  wire px5_clk;
  wire reset;
  wire serial;
  wire NLW_master_serdes_OFB_UNCONNECTED;
  wire NLW_master_serdes_SHIFTOUT1_UNCONNECTED;
  wire NLW_master_serdes_SHIFTOUT2_UNCONNECTED;
  wire NLW_master_serdes_TBYTEOUT_UNCONNECTED;
  wire NLW_master_serdes_TFB_UNCONNECTED;
  wire NLW_master_serdes_TQ_UNCONNECTED;
  wire NLW_slave_serdes_OFB_UNCONNECTED;
  wire NLW_slave_serdes_OQ_UNCONNECTED;
  wire NLW_slave_serdes_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_serdes_TFB_UNCONNECTED;
  wire NLW_slave_serdes_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("BUF"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master_serdes
       (.CLK(px5_clk),
        .CLKDIV(p_clk),
        .D1(data[0]),
        .D2(data[1]),
        .D3(data[2]),
        .D4(data[3]),
        .D5(data[4]),
        .D6(data[5]),
        .D7(data[6]),
        .D8(data[7]),
        .OCE(1'b1),
        .OFB(NLW_master_serdes_OFB_UNCONNECTED),
        .OQ(serial),
        .RST(reset),
        .SHIFTIN1(SHIFTIN1),
        .SHIFTIN2(SHIFTIN2),
        .SHIFTOUT1(NLW_master_serdes_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master_serdes_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_serdes_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_serdes_TFB_UNCONNECTED),
        .TQ(NLW_master_serdes_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("BUF"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave_serdes
       (.CLK(px5_clk),
        .CLKDIV(p_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(data[8]),
        .D4(data[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_serdes_OFB_UNCONNECTED),
        .OQ(NLW_slave_serdes_OQ_UNCONNECTED),
        .RST(reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTIN1),
        .SHIFTOUT2(SHIFTIN2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_serdes_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_serdes_TFB_UNCONNECTED),
        .TQ(NLW_slave_serdes_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serialiser_10_to_1" *) 
module overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_1
   (serial,
    px5_clk,
    p_clk,
    data,
    reset);
  output serial;
  input px5_clk;
  input p_clk;
  input [9:0]data;
  input reset;

  wire SHIFTIN1;
  wire SHIFTIN2;
  wire [9:0]data;
  wire p_clk;
  wire px5_clk;
  wire reset;
  wire serial;
  wire NLW_master_serdes_OFB_UNCONNECTED;
  wire NLW_master_serdes_SHIFTOUT1_UNCONNECTED;
  wire NLW_master_serdes_SHIFTOUT2_UNCONNECTED;
  wire NLW_master_serdes_TBYTEOUT_UNCONNECTED;
  wire NLW_master_serdes_TFB_UNCONNECTED;
  wire NLW_master_serdes_TQ_UNCONNECTED;
  wire NLW_slave_serdes_OFB_UNCONNECTED;
  wire NLW_slave_serdes_OQ_UNCONNECTED;
  wire NLW_slave_serdes_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_serdes_TFB_UNCONNECTED;
  wire NLW_slave_serdes_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("BUF"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master_serdes
       (.CLK(px5_clk),
        .CLKDIV(p_clk),
        .D1(data[0]),
        .D2(data[1]),
        .D3(data[2]),
        .D4(data[3]),
        .D5(data[4]),
        .D6(data[5]),
        .D7(data[6]),
        .D8(data[7]),
        .OCE(1'b1),
        .OFB(NLW_master_serdes_OFB_UNCONNECTED),
        .OQ(serial),
        .RST(reset),
        .SHIFTIN1(SHIFTIN1),
        .SHIFTIN2(SHIFTIN2),
        .SHIFTOUT1(NLW_master_serdes_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master_serdes_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_serdes_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_serdes_TFB_UNCONNECTED),
        .TQ(NLW_master_serdes_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("BUF"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave_serdes
       (.CLK(px5_clk),
        .CLKDIV(p_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(data[8]),
        .D4(data[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_serdes_OFB_UNCONNECTED),
        .OQ(NLW_slave_serdes_OQ_UNCONNECTED),
        .RST(reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTIN1),
        .SHIFTOUT2(SHIFTIN2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_serdes_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_serdes_TFB_UNCONNECTED),
        .TQ(NLW_slave_serdes_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serialiser_10_to_1" *) 
module overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_2
   (serial,
    px5_clk,
    p_clk,
    reset);
  output serial;
  input px5_clk;
  input p_clk;
  input reset;

  wire SHIFTIN1;
  wire SHIFTIN2;
  wire p_clk;
  wire px5_clk;
  wire reset;
  wire serial;
  wire NLW_master_serdes_OFB_UNCONNECTED;
  wire NLW_master_serdes_SHIFTOUT1_UNCONNECTED;
  wire NLW_master_serdes_SHIFTOUT2_UNCONNECTED;
  wire NLW_master_serdes_TBYTEOUT_UNCONNECTED;
  wire NLW_master_serdes_TFB_UNCONNECTED;
  wire NLW_master_serdes_TQ_UNCONNECTED;
  wire NLW_slave_serdes_OFB_UNCONNECTED;
  wire NLW_slave_serdes_OQ_UNCONNECTED;
  wire NLW_slave_serdes_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_serdes_TFB_UNCONNECTED;
  wire NLW_slave_serdes_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("BUF"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master_serdes
       (.CLK(px5_clk),
        .CLKDIV(p_clk),
        .D1(1'b1),
        .D2(1'b1),
        .D3(1'b1),
        .D4(1'b1),
        .D5(1'b1),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_master_serdes_OFB_UNCONNECTED),
        .OQ(serial),
        .RST(reset),
        .SHIFTIN1(SHIFTIN1),
        .SHIFTIN2(SHIFTIN2),
        .SHIFTOUT1(NLW_master_serdes_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master_serdes_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_serdes_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_serdes_TFB_UNCONNECTED),
        .TQ(NLW_master_serdes_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("BUF"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave_serdes
       (.CLK(px5_clk),
        .CLKDIV(p_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_serdes_OFB_UNCONNECTED),
        .OQ(NLW_slave_serdes_OQ_UNCONNECTED),
        .RST(reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTIN1),
        .SHIFTOUT2(SHIFTIN2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_serdes_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_serdes_TFB_UNCONNECTED),
        .TQ(NLW_slave_serdes_TQ_UNCONNECTED));
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
