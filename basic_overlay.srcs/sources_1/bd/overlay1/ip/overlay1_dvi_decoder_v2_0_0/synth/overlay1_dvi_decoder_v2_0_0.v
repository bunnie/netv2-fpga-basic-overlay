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


// IP VLNV: alphamaxmedia.com:bunnie:dvi_decoder_v2:2.22
// IP Revision: 32

(* X_CORE_INFO = "dvi_decoder,Vivado 2016.1" *)
(* CHECK_LICENSE_TYPE = "overlay1_dvi_decoder_v2_0_0,dvi_decoder,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module overlay1_dvi_decoder_v2_0_0 (
  rx_clk,
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
  red_debug
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rx_clk CLK" *)
input wire rx_clk;
input wire blue_p;
input wire blue_n;
input wire green_p;
input wire green_n;
input wire red_p;
input wire red_n;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ex_reset RST" *)
input wire ex_reset;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 mhz200_clk CLK" *)
input wire mhz200_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
output wire reset;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 p_clk CLK" *)
output wire p_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 px5_clk CLK" *)
output wire px5_clk;
output wire px1p25_dbg_clk;
output wire pll_lckd;
output wire hsync;
output wire vsync;
output wire de;
output wire basic_de;
output wire blue_vld;
output wire green_vld;
output wire red_vld;
output wire blue_rdy;
output wire green_rdy;
output wire red_rdy;
output wire psalgnerr;
output wire [29 : 0] sdout;
output wire [7 : 0] red;
output wire [7 : 0] green;
output wire [7 : 0] blue;
output wire encoding;
output wire hdcp_ena;
output wire [3 : 0] red_di;
output wire [3 : 0] green_di;
output wire [3 : 0] blue_di;
output wire data_gb;
output wire video_gb;
output wire [3 : 0] ctl_code;
output wire cv;
output wire line_end;
output wire [31 : 0] green_eye;
output wire [31 : 0] blue_eye;
output wire [31 : 0] red_eye;
output wire [31 : 0] green_debug;
output wire [31 : 0] blue_debug;
output wire [31 : 0] red_debug;

  dvi_decoder #(
    .INIT(1),
    .GOING_T4(2),
    .TERC4(4),
    .LEAVE_T4(8),
    .GOING_VID(16),
    .VIDEO(32),
    .PREAM_T4(64),
    .PREAM_VID(128),
    .nSTATES(8),
    .ENC_TMDS(1'B0),
    .ENC_TERC4(1'B1),
    .HDCP_OFF(1'B0),
    .HDCP_ON(1'B1)
  ) inst (
    .rx_clk(rx_clk),
    .blue_p(blue_p),
    .blue_n(blue_n),
    .green_p(green_p),
    .green_n(green_n),
    .red_p(red_p),
    .red_n(red_n),
    .ex_reset(ex_reset),
    .mhz200_clk(mhz200_clk),
    .reset(reset),
    .p_clk(p_clk),
    .px5_clk(px5_clk),
    .px1p25_dbg_clk(px1p25_dbg_clk),
    .pll_lckd(pll_lckd),
    .hsync(hsync),
    .vsync(vsync),
    .de(de),
    .basic_de(basic_de),
    .blue_vld(blue_vld),
    .green_vld(green_vld),
    .red_vld(red_vld),
    .blue_rdy(blue_rdy),
    .green_rdy(green_rdy),
    .red_rdy(red_rdy),
    .psalgnerr(psalgnerr),
    .sdout(sdout),
    .red(red),
    .green(green),
    .blue(blue),
    .encoding(encoding),
    .hdcp_ena(hdcp_ena),
    .red_di(red_di),
    .green_di(green_di),
    .blue_di(blue_di),
    .data_gb(data_gb),
    .video_gb(video_gb),
    .ctl_code(ctl_code),
    .cv(cv),
    .line_end(line_end),
    .green_eye(green_eye),
    .blue_eye(blue_eye),
    .red_eye(red_eye),
    .green_debug(green_debug),
    .blue_debug(blue_debug),
    .red_debug(red_debug)
  );
endmodule
