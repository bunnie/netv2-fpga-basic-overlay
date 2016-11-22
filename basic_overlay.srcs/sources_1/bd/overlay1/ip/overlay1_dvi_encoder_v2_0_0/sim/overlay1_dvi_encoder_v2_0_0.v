// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: alphamaxmedia.com:bunnie:dvi_encoder_v2:2.4
// IP Revision: 6

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module overlay1_dvi_encoder_v2_0_0 (
  p_clk,
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
  bypass_video_only
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 p_clk CLK" *)
input wire p_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 px5_clk CLK" *)
input wire px5_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstin RST" *)
input wire reset;
input wire [7 : 0] blue_din;
input wire [7 : 0] green_din;
input wire [7 : 0] red_din;
input wire hsync;
input wire vsync;
input wire de;
output wire TMDS_0_P;
output wire TMDS_0_N;
output wire TMDS_1_P;
output wire TMDS_1_N;
output wire TMDS_2_P;
output wire TMDS_2_N;
output wire TMDS_CLK_P;
output wire TMDS_CLK_N;
input wire vid_gb;
input wire dat_gb;
input wire dat_ena;
input wire [3 : 0] blue_di;
input wire [3 : 0] green_di;
input wire [3 : 0] red_di;
input wire [3 : 0] ctl_code;
input wire [29 : 0] bypass_sdata;
input wire bypass_ena;
input wire bypass_video_only;

  dvi_encoder inst (
    .p_clk(p_clk),
    .px5_clk(px5_clk),
    .reset(reset),
    .blue_din(blue_din),
    .green_din(green_din),
    .red_din(red_din),
    .hsync(hsync),
    .vsync(vsync),
    .de(de),
    .TMDS_0_P(TMDS_0_P),
    .TMDS_0_N(TMDS_0_N),
    .TMDS_1_P(TMDS_1_P),
    .TMDS_1_N(TMDS_1_N),
    .TMDS_2_P(TMDS_2_P),
    .TMDS_2_N(TMDS_2_N),
    .TMDS_CLK_P(TMDS_CLK_P),
    .TMDS_CLK_N(TMDS_CLK_N),
    .vid_gb(vid_gb),
    .dat_gb(dat_gb),
    .dat_ena(dat_ena),
    .blue_di(blue_di),
    .green_di(green_di),
    .red_di(red_di),
    .ctl_code(ctl_code),
    .bypass_sdata(bypass_sdata),
    .bypass_ena(bypass_ena),
    .bypass_video_only(bypass_video_only)
  );
endmodule
