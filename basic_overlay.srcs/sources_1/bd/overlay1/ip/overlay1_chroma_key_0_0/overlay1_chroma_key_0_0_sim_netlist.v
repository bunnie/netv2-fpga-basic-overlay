// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Mon Nov 21 13:24:16 2016
// Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               f:/largework/fpga/netv2/basic-overlay/basic_overlay.srcs/sources_1/bd/overlay1/ip/overlay1_chroma_key_0_0/overlay1_chroma_key_0_0_sim_netlist.v
// Design      : overlay1_chroma_key_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tcsg325-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "overlay1_chroma_key_0_0,chroma_key,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "chroma_key,Vivado 2016.1" *) 
(* NotValidForBitStream *)
module overlay1_chroma_key_0_0
   (clk,
    blue_video,
    green_video,
    red_video,
    blue_comp,
    green_comp,
    red_comp,
    blue_blend,
    green_blend,
    red_blend,
    cipher_stream,
    chroma_en,
    hsync,
    vsync,
    de,
    vid_gb,
    dat_gb,
    dat_ena,
    ctl_code,
    blue_di,
    red_di,
    green_di,
    hsync_pipe,
    vsync_pipe,
    de_pipe,
    vid_gb_pipe,
    dat_gb_pipe,
    dat_ena_pipe,
    ctl_code_pipe,
    blue_di_pipe,
    green_di_pipe,
    red_di_pipe);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
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

  wire [7:0]blue_blend;
  wire [7:0]blue_comp;
  wire [3:0]blue_di;
  wire [3:0]blue_di_pipe;
  wire [7:0]blue_video;
  wire chroma_en;
  wire [23:0]cipher_stream;
  wire clk;
  wire [3:0]ctl_code;
  wire [3:0]ctl_code_pipe;
  wire dat_ena;
  wire dat_ena_pipe;
  wire dat_gb;
  wire dat_gb_pipe;
  wire de;
  wire de_pipe;
  wire [7:0]green_blend;
  wire [7:0]green_comp;
  wire [3:0]green_di;
  wire [3:0]green_di_pipe;
  wire [7:0]green_video;
  wire hsync;
  wire hsync_pipe;
  wire [7:0]red_blend;
  wire [7:0]red_comp;
  wire [3:0]red_di;
  wire [3:0]red_di_pipe;
  wire [7:0]red_video;
  wire vid_gb;
  wire vid_gb_pipe;
  wire vsync;
  wire vsync_pipe;

  overlay1_chroma_key_0_0_chroma_key inst
       (.blue_blend(blue_blend),
        .blue_comp(blue_comp),
        .blue_di(blue_di),
        .blue_di_pipe(blue_di_pipe),
        .blue_video(blue_video),
        .chroma_en(chroma_en),
        .cipher_stream(cipher_stream),
        .clk(clk),
        .ctl_code(ctl_code),
        .ctl_code_pipe(ctl_code_pipe),
        .dat_ena(dat_ena),
        .dat_ena_pipe(dat_ena_pipe),
        .dat_gb(dat_gb),
        .dat_gb_pipe(dat_gb_pipe),
        .de(de),
        .de_pipe(de_pipe),
        .green_blend(green_blend),
        .green_comp(green_comp),
        .green_di(green_di),
        .green_di_pipe(green_di_pipe),
        .green_video(green_video),
        .hsync(hsync),
        .hsync_pipe(hsync_pipe),
        .red_blend(red_blend),
        .red_comp(red_comp),
        .red_di(red_di),
        .red_di_pipe(red_di_pipe),
        .red_video(red_video),
        .vid_gb(vid_gb),
        .vid_gb_pipe(vid_gb_pipe),
        .vsync(vsync),
        .vsync_pipe(vsync_pipe));
endmodule

(* ORIG_REF_NAME = "chroma_key" *) 
module overlay1_chroma_key_0_0_chroma_key
   (hsync_pipe,
    vsync_pipe,
    de_pipe,
    vid_gb_pipe,
    dat_gb_pipe,
    dat_ena_pipe,
    red_di_pipe,
    green_di_pipe,
    blue_di_pipe,
    ctl_code_pipe,
    blue_blend,
    green_blend,
    red_blend,
    clk,
    hsync,
    vsync,
    de,
    vid_gb,
    dat_gb,
    dat_ena,
    red_di,
    green_di,
    blue_di,
    ctl_code,
    chroma_en,
    blue_comp,
    green_comp,
    red_comp,
    cipher_stream,
    blue_video,
    green_video,
    red_video);
  output hsync_pipe;
  output vsync_pipe;
  output de_pipe;
  output vid_gb_pipe;
  output dat_gb_pipe;
  output dat_ena_pipe;
  output [3:0]red_di_pipe;
  output [3:0]green_di_pipe;
  output [3:0]blue_di_pipe;
  output [3:0]ctl_code_pipe;
  output [7:0]blue_blend;
  output [7:0]green_blend;
  output [7:0]red_blend;
  input clk;
  input hsync;
  input vsync;
  input de;
  input vid_gb;
  input dat_gb;
  input dat_ena;
  input [3:0]red_di;
  input [3:0]green_di;
  input [3:0]blue_di;
  input [3:0]ctl_code;
  input chroma_en;
  input [7:0]blue_comp;
  input [7:0]green_comp;
  input [7:0]red_comp;
  input [23:0]cipher_stream;
  input [7:0]blue_video;
  input [7:0]green_video;
  input [7:0]red_video;

  wire [7:0]b1;
  wire [7:0]b2;
  wire \blue_add[0]_i_1_n_0 ;
  wire \blue_add[1]_i_1_n_0 ;
  wire \blue_add[2]_i_1_n_0 ;
  wire \blue_add[3]_i_1_n_0 ;
  wire \blue_add[4]_i_1_n_0 ;
  wire \blue_add[5]_i_1_n_0 ;
  wire \blue_add[6]_i_1_n_0 ;
  wire \blue_add[7]_i_1_n_0 ;
  wire [7:0]blue_blend;
  wire [7:0]blue_comp;
  wire [7:0]blue_comp_chroma;
  wire [3:0]blue_di;
  wire [3:0]blue_di_pipe;
  wire [7:0]blue_video;
  wire [7:0]blue_video_chroma;
  wire chroma_en;
  wire chroma_on;
  wire chroma_on_i_1_n_0;
  wire chroma_on_i_2_n_0;
  wire chroma_on_i_3_n_0;
  wire chroma_on_i_4_n_0;
  wire chroma_on_i_5_n_0;
  wire [23:0]cipher_stream;
  wire \cipherpipe_reg_n_0_[0] ;
  wire \cipherpipe_reg_n_0_[1] ;
  wire \cipherpipe_reg_n_0_[2] ;
  wire \cipherpipe_reg_n_0_[3] ;
  wire \cipherpipe_reg_n_0_[4] ;
  wire \cipherpipe_reg_n_0_[5] ;
  wire \cipherpipe_reg_n_0_[6] ;
  wire \cipherpipe_reg_n_0_[7] ;
  wire clk;
  wire [3:0]ctl_code;
  wire [3:0]ctl_code_pipe;
  wire dat_ena;
  wire \dat_ena_p_reg[2]_srl2_n_0 ;
  wire \dat_ena_p_reg_n_0_[0] ;
  wire dat_ena_pipe;
  wire dat_gb;
  wire \dat_gb_p_reg[2]_srl2_n_0 ;
  wire \dat_gb_p_reg_n_0_[0] ;
  wire dat_gb_pipe;
  wire de;
  wire \de_p_reg[2]_srl2_n_0 ;
  wire \de_p_reg_n_0_[0] ;
  wire de_pipe;
  wire [7:0]g1;
  wire [7:0]g2;
  wire \green_add[0]_i_1_n_0 ;
  wire \green_add[1]_i_1_n_0 ;
  wire \green_add[2]_i_1_n_0 ;
  wire \green_add[3]_i_1_n_0 ;
  wire \green_add[4]_i_1_n_0 ;
  wire \green_add[5]_i_1_n_0 ;
  wire \green_add[6]_i_1_n_0 ;
  wire \green_add[7]_i_1_n_0 ;
  wire [7:0]green_blend;
  wire [7:0]green_comp;
  wire [7:0]green_comp_chroma;
  wire [3:0]green_di;
  wire [3:0]green_di_pipe;
  wire [7:0]green_video;
  wire [7:0]green_video_chroma;
  wire hsync;
  wire \hsync_p_reg[2]_srl2_n_0 ;
  wire \hsync_p_reg_n_0_[0] ;
  wire hsync_pipe;
  wire \p1_reg_n_0_[0] ;
  wire \p1_reg_n_0_[10] ;
  wire \p1_reg_n_0_[11] ;
  wire \p1_reg_n_0_[12] ;
  wire \p1_reg_n_0_[13] ;
  wire \p1_reg_n_0_[14] ;
  wire \p1_reg_n_0_[15] ;
  wire \p1_reg_n_0_[1] ;
  wire \p1_reg_n_0_[2] ;
  wire \p1_reg_n_0_[3] ;
  wire \p1_reg_n_0_[4] ;
  wire \p1_reg_n_0_[5] ;
  wire \p1_reg_n_0_[6] ;
  wire \p1_reg_n_0_[7] ;
  wire \p1_reg_n_0_[8] ;
  wire \p1_reg_n_0_[9] ;
  wire \p3_reg[0]_srl2_n_0 ;
  wire \p3_reg[10]_srl2_n_0 ;
  wire \p3_reg[11]_srl2_n_0 ;
  wire \p3_reg[12]_srl2_n_0 ;
  wire \p3_reg[13]_srl2_n_0 ;
  wire \p3_reg[14]_srl2_n_0 ;
  wire \p3_reg[15]_srl2_n_0 ;
  wire \p3_reg[1]_srl2_n_0 ;
  wire \p3_reg[2]_srl2_n_0 ;
  wire \p3_reg[3]_srl2_n_0 ;
  wire \p3_reg[4]_srl2_n_0 ;
  wire \p3_reg[5]_srl2_n_0 ;
  wire \p3_reg[6]_srl2_n_0 ;
  wire \p3_reg[7]_srl2_n_0 ;
  wire \p3_reg[8]_srl2_n_0 ;
  wire \p3_reg[9]_srl2_n_0 ;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in0_in;
  wire [7:0]r1;
  wire [7:0]r2;
  wire \red_add[0]_i_1_n_0 ;
  wire \red_add[1]_i_1_n_0 ;
  wire \red_add[2]_i_1_n_0 ;
  wire \red_add[3]_i_1_n_0 ;
  wire \red_add[4]_i_1_n_0 ;
  wire \red_add[5]_i_1_n_0 ;
  wire \red_add[6]_i_1_n_0 ;
  wire \red_add[7]_i_1_n_0 ;
  wire [7:0]red_blend;
  wire [7:0]red_comp;
  wire [7:0]red_comp_chroma;
  wire [3:0]red_di;
  wire [3:0]red_di_pipe;
  wire [7:0]red_video;
  wire [7:0]red_video_chroma;
  wire vid_gb;
  wire \vid_gb_p_reg[2]_srl2_n_0 ;
  wire \vid_gb_p_reg_n_0_[0] ;
  wire vid_gb_pipe;
  wire vsync;
  wire \vsync_p_reg[2]_srl2_n_0 ;
  wire \vsync_p_reg_n_0_[0] ;
  wire vsync_pipe;

  FDRE \b1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_video[0]),
        .Q(b1[0]),
        .R(1'b0));
  FDRE \b1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_video[1]),
        .Q(b1[1]),
        .R(1'b0));
  FDRE \b1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_video[2]),
        .Q(b1[2]),
        .R(1'b0));
  FDRE \b1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_video[3]),
        .Q(b1[3]),
        .R(1'b0));
  FDRE \b1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_video[4]),
        .Q(b1[4]),
        .R(1'b0));
  FDRE \b1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_video[5]),
        .Q(b1[5]),
        .R(1'b0));
  FDRE \b1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_video[6]),
        .Q(b1[6]),
        .R(1'b0));
  FDRE \b1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_video[7]),
        .Q(b1[7]),
        .R(1'b0));
  FDRE \b2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(b1[0]),
        .Q(b2[0]),
        .R(1'b0));
  FDRE \b2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(b1[1]),
        .Q(b2[1]),
        .R(1'b0));
  FDRE \b2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(b1[2]),
        .Q(b2[2]),
        .R(1'b0));
  FDRE \b2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(b1[3]),
        .Q(b2[3]),
        .R(1'b0));
  FDRE \b2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(b1[4]),
        .Q(b2[4]),
        .R(1'b0));
  FDRE \b2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(b1[5]),
        .Q(b2[5]),
        .R(1'b0));
  FDRE \b2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(b1[6]),
        .Q(b2[6]),
        .R(1'b0));
  FDRE \b2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(b1[7]),
        .Q(b2[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \blue_add[0]_i_1 
       (.I0(blue_video_chroma[0]),
        .I1(blue_comp_chroma[0]),
        .I2(\cipherpipe_reg_n_0_[0] ),
        .I3(chroma_on),
        .O(\blue_add[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \blue_add[1]_i_1 
       (.I0(blue_video_chroma[1]),
        .I1(blue_comp_chroma[1]),
        .I2(\cipherpipe_reg_n_0_[1] ),
        .I3(chroma_on),
        .O(\blue_add[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \blue_add[2]_i_1 
       (.I0(blue_video_chroma[2]),
        .I1(blue_comp_chroma[2]),
        .I2(\cipherpipe_reg_n_0_[2] ),
        .I3(chroma_on),
        .O(\blue_add[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \blue_add[3]_i_1 
       (.I0(blue_video_chroma[3]),
        .I1(blue_comp_chroma[3]),
        .I2(\cipherpipe_reg_n_0_[3] ),
        .I3(chroma_on),
        .O(\blue_add[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \blue_add[4]_i_1 
       (.I0(blue_video_chroma[4]),
        .I1(blue_comp_chroma[4]),
        .I2(\cipherpipe_reg_n_0_[4] ),
        .I3(chroma_on),
        .O(\blue_add[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \blue_add[5]_i_1 
       (.I0(blue_video_chroma[5]),
        .I1(blue_comp_chroma[5]),
        .I2(\cipherpipe_reg_n_0_[5] ),
        .I3(chroma_on),
        .O(\blue_add[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \blue_add[6]_i_1 
       (.I0(blue_video_chroma[6]),
        .I1(blue_comp_chroma[6]),
        .I2(\cipherpipe_reg_n_0_[6] ),
        .I3(chroma_on),
        .O(\blue_add[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \blue_add[7]_i_1 
       (.I0(blue_video_chroma[7]),
        .I1(blue_comp_chroma[7]),
        .I2(\cipherpipe_reg_n_0_[7] ),
        .I3(chroma_on),
        .O(\blue_add[7]_i_1_n_0 ));
  FDRE \blue_add_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\blue_add[0]_i_1_n_0 ),
        .Q(blue_blend[0]),
        .R(1'b0));
  FDRE \blue_add_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\blue_add[1]_i_1_n_0 ),
        .Q(blue_blend[1]),
        .R(1'b0));
  FDRE \blue_add_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\blue_add[2]_i_1_n_0 ),
        .Q(blue_blend[2]),
        .R(1'b0));
  FDRE \blue_add_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\blue_add[3]_i_1_n_0 ),
        .Q(blue_blend[3]),
        .R(1'b0));
  FDRE \blue_add_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\blue_add[4]_i_1_n_0 ),
        .Q(blue_blend[4]),
        .R(1'b0));
  FDRE \blue_add_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\blue_add[5]_i_1_n_0 ),
        .Q(blue_blend[5]),
        .R(1'b0));
  FDRE \blue_add_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\blue_add[6]_i_1_n_0 ),
        .Q(blue_blend[6]),
        .R(1'b0));
  FDRE \blue_add_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\blue_add[7]_i_1_n_0 ),
        .Q(blue_blend[7]),
        .R(1'b0));
  FDRE \blue_comp_chroma_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_comp[0]),
        .Q(blue_comp_chroma[0]),
        .R(1'b0));
  FDRE \blue_comp_chroma_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_comp[1]),
        .Q(blue_comp_chroma[1]),
        .R(1'b0));
  FDRE \blue_comp_chroma_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_comp[2]),
        .Q(blue_comp_chroma[2]),
        .R(1'b0));
  FDRE \blue_comp_chroma_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_comp[3]),
        .Q(blue_comp_chroma[3]),
        .R(1'b0));
  FDRE \blue_comp_chroma_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_comp[4]),
        .Q(blue_comp_chroma[4]),
        .R(1'b0));
  FDRE \blue_comp_chroma_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_comp[5]),
        .Q(blue_comp_chroma[5]),
        .R(1'b0));
  FDRE \blue_comp_chroma_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_comp[6]),
        .Q(blue_comp_chroma[6]),
        .R(1'b0));
  FDRE \blue_comp_chroma_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_comp[7]),
        .Q(blue_comp_chroma[7]),
        .R(1'b0));
  FDRE \blue_video_chroma_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(b2[0]),
        .Q(blue_video_chroma[0]),
        .R(1'b0));
  FDRE \blue_video_chroma_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(b2[1]),
        .Q(blue_video_chroma[1]),
        .R(1'b0));
  FDRE \blue_video_chroma_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(b2[2]),
        .Q(blue_video_chroma[2]),
        .R(1'b0));
  FDRE \blue_video_chroma_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(b2[3]),
        .Q(blue_video_chroma[3]),
        .R(1'b0));
  FDRE \blue_video_chroma_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(b2[4]),
        .Q(blue_video_chroma[4]),
        .R(1'b0));
  FDRE \blue_video_chroma_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(b2[5]),
        .Q(blue_video_chroma[5]),
        .R(1'b0));
  FDRE \blue_video_chroma_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(b2[6]),
        .Q(blue_video_chroma[6]),
        .R(1'b0));
  FDRE \blue_video_chroma_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(b2[7]),
        .Q(blue_video_chroma[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80000000)) 
    chroma_on_i_1
       (.I0(chroma_on_i_2_n_0),
        .I1(chroma_on_i_3_n_0),
        .I2(chroma_on_i_4_n_0),
        .I3(chroma_en),
        .I4(chroma_on_i_5_n_0),
        .O(chroma_on_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    chroma_on_i_2
       (.I0(green_comp[2]),
        .I1(green_comp[3]),
        .I2(green_comp[0]),
        .I3(green_comp[1]),
        .I4(green_comp[5]),
        .I5(green_comp[4]),
        .O(chroma_on_i_2_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    chroma_on_i_3
       (.I0(red_comp[4]),
        .I1(red_comp[5]),
        .I2(red_comp[2]),
        .I3(red_comp[3]),
        .I4(red_comp[7]),
        .I5(red_comp[6]),
        .O(chroma_on_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    chroma_on_i_4
       (.I0(blue_comp[6]),
        .I1(blue_comp[7]),
        .I2(blue_comp[4]),
        .I3(blue_comp[5]),
        .I4(red_comp[1]),
        .I5(red_comp[0]),
        .O(chroma_on_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    chroma_on_i_5
       (.I0(blue_comp[0]),
        .I1(blue_comp[1]),
        .I2(green_comp[6]),
        .I3(green_comp[7]),
        .I4(blue_comp[3]),
        .I5(blue_comp[2]),
        .O(chroma_on_i_5_n_0));
  FDRE chroma_on_reg
       (.C(clk),
        .CE(1'b1),
        .D(chroma_on_i_1_n_0),
        .Q(chroma_on),
        .R(1'b0));
  FDRE \cipherpipe_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[0]),
        .Q(\cipherpipe_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \cipherpipe_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[10]),
        .Q(p_0_in0_in[2]),
        .R(1'b0));
  FDRE \cipherpipe_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[11]),
        .Q(p_0_in0_in[3]),
        .R(1'b0));
  FDRE \cipherpipe_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[12]),
        .Q(p_0_in0_in[4]),
        .R(1'b0));
  FDRE \cipherpipe_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[13]),
        .Q(p_0_in0_in[5]),
        .R(1'b0));
  FDRE \cipherpipe_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[14]),
        .Q(p_0_in0_in[6]),
        .R(1'b0));
  FDRE \cipherpipe_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[15]),
        .Q(p_0_in0_in[7]),
        .R(1'b0));
  FDRE \cipherpipe_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[16]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \cipherpipe_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[17]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \cipherpipe_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[18]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \cipherpipe_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[19]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \cipherpipe_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[1]),
        .Q(\cipherpipe_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \cipherpipe_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[20]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE \cipherpipe_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[21]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE \cipherpipe_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[22]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE \cipherpipe_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[23]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE \cipherpipe_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[2]),
        .Q(\cipherpipe_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \cipherpipe_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[3]),
        .Q(\cipherpipe_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \cipherpipe_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[4]),
        .Q(\cipherpipe_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \cipherpipe_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[5]),
        .Q(\cipherpipe_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \cipherpipe_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[6]),
        .Q(\cipherpipe_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \cipherpipe_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[7]),
        .Q(\cipherpipe_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \cipherpipe_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[8]),
        .Q(p_0_in0_in[0]),
        .R(1'b0));
  FDRE \cipherpipe_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(cipher_stream[9]),
        .Q(p_0_in0_in[1]),
        .R(1'b0));
  FDRE \dat_ena_p_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(dat_ena),
        .Q(\dat_ena_p_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "\inst/dat_ena_p_reg " *) 
  (* srl_name = "\inst/dat_ena_p_reg[2]_srl2 " *) 
  SRL16E \dat_ena_p_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\dat_ena_p_reg_n_0_[0] ),
        .Q(\dat_ena_p_reg[2]_srl2_n_0 ));
  FDRE \dat_ena_p_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\dat_ena_p_reg[2]_srl2_n_0 ),
        .Q(dat_ena_pipe),
        .R(1'b0));
  FDRE \dat_gb_p_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(dat_gb),
        .Q(\dat_gb_p_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "\inst/dat_gb_p_reg " *) 
  (* srl_name = "\inst/dat_gb_p_reg[2]_srl2 " *) 
  SRL16E \dat_gb_p_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\dat_gb_p_reg_n_0_[0] ),
        .Q(\dat_gb_p_reg[2]_srl2_n_0 ));
  FDRE \dat_gb_p_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\dat_gb_p_reg[2]_srl2_n_0 ),
        .Q(dat_gb_pipe),
        .R(1'b0));
  FDRE \de_p_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(de),
        .Q(\de_p_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "\inst/de_p_reg " *) 
  (* srl_name = "\inst/de_p_reg[2]_srl2 " *) 
  SRL16E \de_p_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\de_p_reg_n_0_[0] ),
        .Q(\de_p_reg[2]_srl2_n_0 ));
  FDRE \de_p_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\de_p_reg[2]_srl2_n_0 ),
        .Q(de_pipe),
        .R(1'b0));
  FDRE \g1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(green_video[0]),
        .Q(g1[0]),
        .R(1'b0));
  FDRE \g1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(green_video[1]),
        .Q(g1[1]),
        .R(1'b0));
  FDRE \g1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(green_video[2]),
        .Q(g1[2]),
        .R(1'b0));
  FDRE \g1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(green_video[3]),
        .Q(g1[3]),
        .R(1'b0));
  FDRE \g1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(green_video[4]),
        .Q(g1[4]),
        .R(1'b0));
  FDRE \g1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(green_video[5]),
        .Q(g1[5]),
        .R(1'b0));
  FDRE \g1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(green_video[6]),
        .Q(g1[6]),
        .R(1'b0));
  FDRE \g1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(green_video[7]),
        .Q(g1[7]),
        .R(1'b0));
  FDRE \g2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(g1[0]),
        .Q(g2[0]),
        .R(1'b0));
  FDRE \g2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(g1[1]),
        .Q(g2[1]),
        .R(1'b0));
  FDRE \g2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(g1[2]),
        .Q(g2[2]),
        .R(1'b0));
  FDRE \g2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(g1[3]),
        .Q(g2[3]),
        .R(1'b0));
  FDRE \g2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(g1[4]),
        .Q(g2[4]),
        .R(1'b0));
  FDRE \g2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(g1[5]),
        .Q(g2[5]),
        .R(1'b0));
  FDRE \g2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(g1[6]),
        .Q(g2[6]),
        .R(1'b0));
  FDRE \g2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(g1[7]),
        .Q(g2[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \green_add[0]_i_1 
       (.I0(green_video_chroma[0]),
        .I1(green_comp_chroma[0]),
        .I2(p_0_in0_in[0]),
        .I3(chroma_on),
        .O(\green_add[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \green_add[1]_i_1 
       (.I0(green_video_chroma[1]),
        .I1(green_comp_chroma[1]),
        .I2(p_0_in0_in[1]),
        .I3(chroma_on),
        .O(\green_add[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \green_add[2]_i_1 
       (.I0(green_video_chroma[2]),
        .I1(green_comp_chroma[2]),
        .I2(p_0_in0_in[2]),
        .I3(chroma_on),
        .O(\green_add[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \green_add[3]_i_1 
       (.I0(green_video_chroma[3]),
        .I1(green_comp_chroma[3]),
        .I2(p_0_in0_in[3]),
        .I3(chroma_on),
        .O(\green_add[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \green_add[4]_i_1 
       (.I0(green_video_chroma[4]),
        .I1(green_comp_chroma[4]),
        .I2(p_0_in0_in[4]),
        .I3(chroma_on),
        .O(\green_add[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \green_add[5]_i_1 
       (.I0(green_video_chroma[5]),
        .I1(green_comp_chroma[5]),
        .I2(p_0_in0_in[5]),
        .I3(chroma_on),
        .O(\green_add[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \green_add[6]_i_1 
       (.I0(green_video_chroma[6]),
        .I1(green_comp_chroma[6]),
        .I2(p_0_in0_in[6]),
        .I3(chroma_on),
        .O(\green_add[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \green_add[7]_i_1 
       (.I0(green_video_chroma[7]),
        .I1(green_comp_chroma[7]),
        .I2(p_0_in0_in[7]),
        .I3(chroma_on),
        .O(\green_add[7]_i_1_n_0 ));
  FDRE \green_add_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\green_add[0]_i_1_n_0 ),
        .Q(green_blend[0]),
        .R(1'b0));
  FDRE \green_add_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\green_add[1]_i_1_n_0 ),
        .Q(green_blend[1]),
        .R(1'b0));
  FDRE \green_add_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\green_add[2]_i_1_n_0 ),
        .Q(green_blend[2]),
        .R(1'b0));
  FDRE \green_add_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\green_add[3]_i_1_n_0 ),
        .Q(green_blend[3]),
        .R(1'b0));
  FDRE \green_add_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\green_add[4]_i_1_n_0 ),
        .Q(green_blend[4]),
        .R(1'b0));
  FDRE \green_add_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\green_add[5]_i_1_n_0 ),
        .Q(green_blend[5]),
        .R(1'b0));
  FDRE \green_add_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\green_add[6]_i_1_n_0 ),
        .Q(green_blend[6]),
        .R(1'b0));
  FDRE \green_add_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\green_add[7]_i_1_n_0 ),
        .Q(green_blend[7]),
        .R(1'b0));
  FDRE \green_comp_chroma_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(green_comp[0]),
        .Q(green_comp_chroma[0]),
        .R(1'b0));
  FDRE \green_comp_chroma_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(green_comp[1]),
        .Q(green_comp_chroma[1]),
        .R(1'b0));
  FDRE \green_comp_chroma_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(green_comp[2]),
        .Q(green_comp_chroma[2]),
        .R(1'b0));
  FDRE \green_comp_chroma_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(green_comp[3]),
        .Q(green_comp_chroma[3]),
        .R(1'b0));
  FDRE \green_comp_chroma_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(green_comp[4]),
        .Q(green_comp_chroma[4]),
        .R(1'b0));
  FDRE \green_comp_chroma_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(green_comp[5]),
        .Q(green_comp_chroma[5]),
        .R(1'b0));
  FDRE \green_comp_chroma_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(green_comp[6]),
        .Q(green_comp_chroma[6]),
        .R(1'b0));
  FDRE \green_comp_chroma_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(green_comp[7]),
        .Q(green_comp_chroma[7]),
        .R(1'b0));
  FDRE \green_video_chroma_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(g2[0]),
        .Q(green_video_chroma[0]),
        .R(1'b0));
  FDRE \green_video_chroma_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(g2[1]),
        .Q(green_video_chroma[1]),
        .R(1'b0));
  FDRE \green_video_chroma_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(g2[2]),
        .Q(green_video_chroma[2]),
        .R(1'b0));
  FDRE \green_video_chroma_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(g2[3]),
        .Q(green_video_chroma[3]),
        .R(1'b0));
  FDRE \green_video_chroma_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(g2[4]),
        .Q(green_video_chroma[4]),
        .R(1'b0));
  FDRE \green_video_chroma_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(g2[5]),
        .Q(green_video_chroma[5]),
        .R(1'b0));
  FDRE \green_video_chroma_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(g2[6]),
        .Q(green_video_chroma[6]),
        .R(1'b0));
  FDRE \green_video_chroma_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(g2[7]),
        .Q(green_video_chroma[7]),
        .R(1'b0));
  FDRE \hsync_p_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(hsync),
        .Q(\hsync_p_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "\inst/hsync_p_reg " *) 
  (* srl_name = "\inst/hsync_p_reg[2]_srl2 " *) 
  SRL16E \hsync_p_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\hsync_p_reg_n_0_[0] ),
        .Q(\hsync_p_reg[2]_srl2_n_0 ));
  FDRE \hsync_p_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\hsync_p_reg[2]_srl2_n_0 ),
        .Q(hsync_pipe),
        .R(1'b0));
  FDRE \p1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(ctl_code[0]),
        .Q(\p1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \p1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(green_di[2]),
        .Q(\p1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \p1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(green_di[3]),
        .Q(\p1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \p1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(red_di[0]),
        .Q(\p1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \p1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(red_di[1]),
        .Q(\p1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \p1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(red_di[2]),
        .Q(\p1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \p1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(red_di[3]),
        .Q(\p1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \p1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ctl_code[1]),
        .Q(\p1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \p1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ctl_code[2]),
        .Q(\p1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \p1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(ctl_code[3]),
        .Q(\p1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \p1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_di[0]),
        .Q(\p1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \p1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_di[1]),
        .Q(\p1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \p1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_di[2]),
        .Q(\p1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \p1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(blue_di[3]),
        .Q(\p1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \p1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(green_di[0]),
        .Q(\p1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \p1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(green_di[1]),
        .Q(\p1_reg_n_0_[9] ),
        .R(1'b0));
  (* srl_bus_name = "\inst/p3_reg " *) 
  (* srl_name = "\inst/p3_reg[0]_srl2 " *) 
  SRL16E \p3_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\p1_reg_n_0_[0] ),
        .Q(\p3_reg[0]_srl2_n_0 ));
  (* srl_bus_name = "\inst/p3_reg " *) 
  (* srl_name = "\inst/p3_reg[10]_srl2 " *) 
  SRL16E \p3_reg[10]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\p1_reg_n_0_[10] ),
        .Q(\p3_reg[10]_srl2_n_0 ));
  (* srl_bus_name = "\inst/p3_reg " *) 
  (* srl_name = "\inst/p3_reg[11]_srl2 " *) 
  SRL16E \p3_reg[11]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\p1_reg_n_0_[11] ),
        .Q(\p3_reg[11]_srl2_n_0 ));
  (* srl_bus_name = "\inst/p3_reg " *) 
  (* srl_name = "\inst/p3_reg[12]_srl2 " *) 
  SRL16E \p3_reg[12]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\p1_reg_n_0_[12] ),
        .Q(\p3_reg[12]_srl2_n_0 ));
  (* srl_bus_name = "\inst/p3_reg " *) 
  (* srl_name = "\inst/p3_reg[13]_srl2 " *) 
  SRL16E \p3_reg[13]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\p1_reg_n_0_[13] ),
        .Q(\p3_reg[13]_srl2_n_0 ));
  (* srl_bus_name = "\inst/p3_reg " *) 
  (* srl_name = "\inst/p3_reg[14]_srl2 " *) 
  SRL16E \p3_reg[14]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\p1_reg_n_0_[14] ),
        .Q(\p3_reg[14]_srl2_n_0 ));
  (* srl_bus_name = "\inst/p3_reg " *) 
  (* srl_name = "\inst/p3_reg[15]_srl2 " *) 
  SRL16E \p3_reg[15]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\p1_reg_n_0_[15] ),
        .Q(\p3_reg[15]_srl2_n_0 ));
  (* srl_bus_name = "\inst/p3_reg " *) 
  (* srl_name = "\inst/p3_reg[1]_srl2 " *) 
  SRL16E \p3_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\p1_reg_n_0_[1] ),
        .Q(\p3_reg[1]_srl2_n_0 ));
  (* srl_bus_name = "\inst/p3_reg " *) 
  (* srl_name = "\inst/p3_reg[2]_srl2 " *) 
  SRL16E \p3_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\p1_reg_n_0_[2] ),
        .Q(\p3_reg[2]_srl2_n_0 ));
  (* srl_bus_name = "\inst/p3_reg " *) 
  (* srl_name = "\inst/p3_reg[3]_srl2 " *) 
  SRL16E \p3_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\p1_reg_n_0_[3] ),
        .Q(\p3_reg[3]_srl2_n_0 ));
  (* srl_bus_name = "\inst/p3_reg " *) 
  (* srl_name = "\inst/p3_reg[4]_srl2 " *) 
  SRL16E \p3_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\p1_reg_n_0_[4] ),
        .Q(\p3_reg[4]_srl2_n_0 ));
  (* srl_bus_name = "\inst/p3_reg " *) 
  (* srl_name = "\inst/p3_reg[5]_srl2 " *) 
  SRL16E \p3_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\p1_reg_n_0_[5] ),
        .Q(\p3_reg[5]_srl2_n_0 ));
  (* srl_bus_name = "\inst/p3_reg " *) 
  (* srl_name = "\inst/p3_reg[6]_srl2 " *) 
  SRL16E \p3_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\p1_reg_n_0_[6] ),
        .Q(\p3_reg[6]_srl2_n_0 ));
  (* srl_bus_name = "\inst/p3_reg " *) 
  (* srl_name = "\inst/p3_reg[7]_srl2 " *) 
  SRL16E \p3_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\p1_reg_n_0_[7] ),
        .Q(\p3_reg[7]_srl2_n_0 ));
  (* srl_bus_name = "\inst/p3_reg " *) 
  (* srl_name = "\inst/p3_reg[8]_srl2 " *) 
  SRL16E \p3_reg[8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\p1_reg_n_0_[8] ),
        .Q(\p3_reg[8]_srl2_n_0 ));
  (* srl_bus_name = "\inst/p3_reg " *) 
  (* srl_name = "\inst/p3_reg[9]_srl2 " *) 
  SRL16E \p3_reg[9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\p1_reg_n_0_[9] ),
        .Q(\p3_reg[9]_srl2_n_0 ));
  FDRE \p4_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\p3_reg[0]_srl2_n_0 ),
        .Q(ctl_code_pipe[0]),
        .R(1'b0));
  FDRE \p4_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\p3_reg[10]_srl2_n_0 ),
        .Q(green_di_pipe[2]),
        .R(1'b0));
  FDRE \p4_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\p3_reg[11]_srl2_n_0 ),
        .Q(green_di_pipe[3]),
        .R(1'b0));
  FDRE \p4_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\p3_reg[12]_srl2_n_0 ),
        .Q(red_di_pipe[0]),
        .R(1'b0));
  FDRE \p4_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\p3_reg[13]_srl2_n_0 ),
        .Q(red_di_pipe[1]),
        .R(1'b0));
  FDRE \p4_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\p3_reg[14]_srl2_n_0 ),
        .Q(red_di_pipe[2]),
        .R(1'b0));
  FDRE \p4_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\p3_reg[15]_srl2_n_0 ),
        .Q(red_di_pipe[3]),
        .R(1'b0));
  FDRE \p4_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\p3_reg[1]_srl2_n_0 ),
        .Q(ctl_code_pipe[1]),
        .R(1'b0));
  FDRE \p4_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\p3_reg[2]_srl2_n_0 ),
        .Q(ctl_code_pipe[2]),
        .R(1'b0));
  FDRE \p4_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\p3_reg[3]_srl2_n_0 ),
        .Q(ctl_code_pipe[3]),
        .R(1'b0));
  FDRE \p4_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\p3_reg[4]_srl2_n_0 ),
        .Q(blue_di_pipe[0]),
        .R(1'b0));
  FDRE \p4_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\p3_reg[5]_srl2_n_0 ),
        .Q(blue_di_pipe[1]),
        .R(1'b0));
  FDRE \p4_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\p3_reg[6]_srl2_n_0 ),
        .Q(blue_di_pipe[2]),
        .R(1'b0));
  FDRE \p4_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\p3_reg[7]_srl2_n_0 ),
        .Q(blue_di_pipe[3]),
        .R(1'b0));
  FDRE \p4_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\p3_reg[8]_srl2_n_0 ),
        .Q(green_di_pipe[0]),
        .R(1'b0));
  FDRE \p4_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\p3_reg[9]_srl2_n_0 ),
        .Q(green_di_pipe[1]),
        .R(1'b0));
  FDRE \r1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(red_video[0]),
        .Q(r1[0]),
        .R(1'b0));
  FDRE \r1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(red_video[1]),
        .Q(r1[1]),
        .R(1'b0));
  FDRE \r1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(red_video[2]),
        .Q(r1[2]),
        .R(1'b0));
  FDRE \r1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(red_video[3]),
        .Q(r1[3]),
        .R(1'b0));
  FDRE \r1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(red_video[4]),
        .Q(r1[4]),
        .R(1'b0));
  FDRE \r1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(red_video[5]),
        .Q(r1[5]),
        .R(1'b0));
  FDRE \r1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(red_video[6]),
        .Q(r1[6]),
        .R(1'b0));
  FDRE \r1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(red_video[7]),
        .Q(r1[7]),
        .R(1'b0));
  FDRE \r2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(r1[0]),
        .Q(r2[0]),
        .R(1'b0));
  FDRE \r2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(r1[1]),
        .Q(r2[1]),
        .R(1'b0));
  FDRE \r2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(r1[2]),
        .Q(r2[2]),
        .R(1'b0));
  FDRE \r2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(r1[3]),
        .Q(r2[3]),
        .R(1'b0));
  FDRE \r2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(r1[4]),
        .Q(r2[4]),
        .R(1'b0));
  FDRE \r2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(r1[5]),
        .Q(r2[5]),
        .R(1'b0));
  FDRE \r2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(r1[6]),
        .Q(r2[6]),
        .R(1'b0));
  FDRE \r2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(r1[7]),
        .Q(r2[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \red_add[0]_i_1 
       (.I0(red_video_chroma[0]),
        .I1(red_comp_chroma[0]),
        .I2(p_0_in[0]),
        .I3(chroma_on),
        .O(\red_add[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \red_add[1]_i_1 
       (.I0(red_video_chroma[1]),
        .I1(red_comp_chroma[1]),
        .I2(p_0_in[1]),
        .I3(chroma_on),
        .O(\red_add[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \red_add[2]_i_1 
       (.I0(red_video_chroma[2]),
        .I1(red_comp_chroma[2]),
        .I2(p_0_in[2]),
        .I3(chroma_on),
        .O(\red_add[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \red_add[3]_i_1 
       (.I0(red_video_chroma[3]),
        .I1(red_comp_chroma[3]),
        .I2(p_0_in[3]),
        .I3(chroma_on),
        .O(\red_add[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \red_add[4]_i_1 
       (.I0(red_video_chroma[4]),
        .I1(red_comp_chroma[4]),
        .I2(p_0_in[4]),
        .I3(chroma_on),
        .O(\red_add[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \red_add[5]_i_1 
       (.I0(red_video_chroma[5]),
        .I1(red_comp_chroma[5]),
        .I2(p_0_in[5]),
        .I3(chroma_on),
        .O(\red_add[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \red_add[6]_i_1 
       (.I0(red_video_chroma[6]),
        .I1(red_comp_chroma[6]),
        .I2(p_0_in[6]),
        .I3(chroma_on),
        .O(\red_add[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \red_add[7]_i_1 
       (.I0(red_video_chroma[7]),
        .I1(red_comp_chroma[7]),
        .I2(p_0_in[7]),
        .I3(chroma_on),
        .O(\red_add[7]_i_1_n_0 ));
  FDRE \red_add_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\red_add[0]_i_1_n_0 ),
        .Q(red_blend[0]),
        .R(1'b0));
  FDRE \red_add_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\red_add[1]_i_1_n_0 ),
        .Q(red_blend[1]),
        .R(1'b0));
  FDRE \red_add_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\red_add[2]_i_1_n_0 ),
        .Q(red_blend[2]),
        .R(1'b0));
  FDRE \red_add_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\red_add[3]_i_1_n_0 ),
        .Q(red_blend[3]),
        .R(1'b0));
  FDRE \red_add_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\red_add[4]_i_1_n_0 ),
        .Q(red_blend[4]),
        .R(1'b0));
  FDRE \red_add_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\red_add[5]_i_1_n_0 ),
        .Q(red_blend[5]),
        .R(1'b0));
  FDRE \red_add_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\red_add[6]_i_1_n_0 ),
        .Q(red_blend[6]),
        .R(1'b0));
  FDRE \red_add_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\red_add[7]_i_1_n_0 ),
        .Q(red_blend[7]),
        .R(1'b0));
  FDRE \red_comp_chroma_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(red_comp[0]),
        .Q(red_comp_chroma[0]),
        .R(1'b0));
  FDRE \red_comp_chroma_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(red_comp[1]),
        .Q(red_comp_chroma[1]),
        .R(1'b0));
  FDRE \red_comp_chroma_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(red_comp[2]),
        .Q(red_comp_chroma[2]),
        .R(1'b0));
  FDRE \red_comp_chroma_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(red_comp[3]),
        .Q(red_comp_chroma[3]),
        .R(1'b0));
  FDRE \red_comp_chroma_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(red_comp[4]),
        .Q(red_comp_chroma[4]),
        .R(1'b0));
  FDRE \red_comp_chroma_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(red_comp[5]),
        .Q(red_comp_chroma[5]),
        .R(1'b0));
  FDRE \red_comp_chroma_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(red_comp[6]),
        .Q(red_comp_chroma[6]),
        .R(1'b0));
  FDRE \red_comp_chroma_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(red_comp[7]),
        .Q(red_comp_chroma[7]),
        .R(1'b0));
  FDRE \red_video_chroma_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(r2[0]),
        .Q(red_video_chroma[0]),
        .R(1'b0));
  FDRE \red_video_chroma_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(r2[1]),
        .Q(red_video_chroma[1]),
        .R(1'b0));
  FDRE \red_video_chroma_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(r2[2]),
        .Q(red_video_chroma[2]),
        .R(1'b0));
  FDRE \red_video_chroma_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(r2[3]),
        .Q(red_video_chroma[3]),
        .R(1'b0));
  FDRE \red_video_chroma_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(r2[4]),
        .Q(red_video_chroma[4]),
        .R(1'b0));
  FDRE \red_video_chroma_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(r2[5]),
        .Q(red_video_chroma[5]),
        .R(1'b0));
  FDRE \red_video_chroma_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(r2[6]),
        .Q(red_video_chroma[6]),
        .R(1'b0));
  FDRE \red_video_chroma_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(r2[7]),
        .Q(red_video_chroma[7]),
        .R(1'b0));
  FDRE \vid_gb_p_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(vid_gb),
        .Q(\vid_gb_p_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "\inst/vid_gb_p_reg " *) 
  (* srl_name = "\inst/vid_gb_p_reg[2]_srl2 " *) 
  SRL16E \vid_gb_p_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\vid_gb_p_reg_n_0_[0] ),
        .Q(\vid_gb_p_reg[2]_srl2_n_0 ));
  FDRE \vid_gb_p_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\vid_gb_p_reg[2]_srl2_n_0 ),
        .Q(vid_gb_pipe),
        .R(1'b0));
  FDRE \vsync_p_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(vsync),
        .Q(\vsync_p_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "\inst/vsync_p_reg " *) 
  (* srl_name = "\inst/vsync_p_reg[2]_srl2 " *) 
  SRL16E \vsync_p_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\vsync_p_reg_n_0_[0] ),
        .Q(\vsync_p_reg[2]_srl2_n_0 ));
  FDRE \vsync_p_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\vsync_p_reg[2]_srl2_n_0 ),
        .Q(vsync_pipe),
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
