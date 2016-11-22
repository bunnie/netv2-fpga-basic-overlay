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


// IP VLNV: alphamaxmedia.com:bunnie:chroma_key:1.1
// IP Revision: 3

(* X_CORE_INFO = "chroma_key,Vivado 2016.1" *)
(* CHECK_LICENSE_TYPE = "overlay1_chroma_key_0_0,chroma_key,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module overlay1_chroma_key_0_0 (
  clk,
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
  red_di_pipe
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire [7 : 0] blue_video;
input wire [7 : 0] green_video;
input wire [7 : 0] red_video;
input wire [7 : 0] blue_comp;
input wire [7 : 0] green_comp;
input wire [7 : 0] red_comp;
output wire [7 : 0] blue_blend;
output wire [7 : 0] green_blend;
output wire [7 : 0] red_blend;
input wire [23 : 0] cipher_stream;
input wire chroma_en;
input wire hsync;
input wire vsync;
input wire de;
input wire vid_gb;
input wire dat_gb;
input wire dat_ena;
input wire [3 : 0] ctl_code;
input wire [3 : 0] blue_di;
input wire [3 : 0] red_di;
input wire [3 : 0] green_di;
output wire hsync_pipe;
output wire vsync_pipe;
output wire de_pipe;
output wire vid_gb_pipe;
output wire dat_gb_pipe;
output wire dat_ena_pipe;
output wire [3 : 0] ctl_code_pipe;
output wire [3 : 0] blue_di_pipe;
output wire [3 : 0] green_di_pipe;
output wire [3 : 0] red_di_pipe;

  chroma_key #(
    .D(4)
  ) inst (
    .clk(clk),
    .blue_video(blue_video),
    .green_video(green_video),
    .red_video(red_video),
    .blue_comp(blue_comp),
    .green_comp(green_comp),
    .red_comp(red_comp),
    .blue_blend(blue_blend),
    .green_blend(green_blend),
    .red_blend(red_blend),
    .cipher_stream(cipher_stream),
    .chroma_en(chroma_en),
    .hsync(hsync),
    .vsync(vsync),
    .de(de),
    .vid_gb(vid_gb),
    .dat_gb(dat_gb),
    .dat_ena(dat_ena),
    .ctl_code(ctl_code),
    .blue_di(blue_di),
    .red_di(red_di),
    .green_di(green_di),
    .hsync_pipe(hsync_pipe),
    .vsync_pipe(vsync_pipe),
    .de_pipe(de_pipe),
    .vid_gb_pipe(vid_gb_pipe),
    .dat_gb_pipe(dat_gb_pipe),
    .dat_ena_pipe(dat_ena_pipe),
    .ctl_code_pipe(ctl_code_pipe),
    .blue_di_pipe(blue_di_pipe),
    .green_di_pipe(green_di_pipe),
    .red_di_pipe(red_di_pipe)
  );
endmodule
