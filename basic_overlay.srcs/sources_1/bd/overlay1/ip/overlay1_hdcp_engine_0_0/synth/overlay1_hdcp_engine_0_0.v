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


// IP VLNV: alphamaxmedia.com:bunnie:hdcp_engine:1.1
// IP Revision: 3

(* X_CORE_INFO = "hdcp_engine,Vivado 2016.1" *)
(* CHECK_LICENSE_TYPE = "overlay1_hdcp_engine_0_0,hdcp_engine,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module overlay1_hdcp_engine_0_0 (
  clk,
  reset,
  hpd,
  ctl_code,
  cv,
  de,
  line_end,
  hsync,
  vsync,
  hdcp_ena,
  Km_rdy,
  Km,
  An_rdy,
  An,
  cipher_stream,
  hdcp_is_ready
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
input wire hpd;
input wire [3 : 0] ctl_code;
input wire cv;
input wire de;
input wire line_end;
input wire hsync;
input wire vsync;
input wire hdcp_ena;
input wire Km_rdy;
input wire [55 : 0] Km;
input wire An_rdy;
input wire [63 : 0] An;
output wire [23 : 0] cipher_stream;
output wire hdcp_is_ready;

  hdcp_engine #(
    .HDCP_UNPLUG(1),
    .HDCP_WAIT_AKSV(2),
    .HDCP_AUTH_PULSE(4),
    .HDCP_AUTH(8),
    .HDCP_AUTH_WAIT(16),
    .HDCP_AUTH_VSYNC_PULSE(32),
    .HDCP_AUTH_VSYNC(64),
    .HDCP_AUTH_VSYNC_WAIT(128),
    .HDCP_WAIT_1001(256),
    .HDCP_WAIT_1001_END(512),
    .HDCP_VSYNC(1024),
    .HDCP_VSYNC_PULSE(2048),
    .HDCP_VSYNC_WAIT(4096),
    .HDCP_READY(8192),
    .HDCP_REKEY(16384),
    .HDCP_REKEY_PULSE(32768),
    .HDCP_REKEY_WAIT(65536),
    .HDCP_WAIT_KMRDY(131072),
    .HDCP_nSTATES(18)
  ) inst (
    .clk(clk),
    .reset(reset),
    .hpd(hpd),
    .ctl_code(ctl_code),
    .cv(cv),
    .de(de),
    .line_end(line_end),
    .hsync(hsync),
    .vsync(vsync),
    .hdcp_ena(hdcp_ena),
    .Km_rdy(Km_rdy),
    .Km(Km),
    .An_rdy(An_rdy),
    .An(An),
    .cipher_stream(cipher_stream),
    .hdcp_is_ready(hdcp_is_ready)
  );
endmodule
