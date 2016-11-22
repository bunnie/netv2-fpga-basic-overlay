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


// IP VLNV: alphamaxmedia.com:bunnie:hdcp_snoop:1.4
// IP Revision: 8

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module overlay1_hdcp_snoop_0_0 (
  SCL,
  SDA,
  clk,
  reset,
  reg_addr,
  reg_dout,
  An,
  Aksv14_write
);

input wire SCL;
input wire SDA;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
input wire [4 : 0] reg_addr;
output wire [7 : 0] reg_dout;
output wire [63 : 0] An;
output wire Aksv14_write;

  hdcp_snoop #(
    .TRF_CYCLES(5'B00100),
    .I2C_START(1),
    .I2C_RESTART(2),
    .I2C_DADDR(4),
    .I2C_ACK_DADDR(8),
    .I2C_ADDR(16),
    .I2C_ACK_ADDR(32),
    .I2C_WR_DATA(64),
    .I2C_ACK_WR(128),
    .I2C_END_WR(256),
    .I2C_RD_DATA(512),
    .I2C_ACK_RD(1024),
    .I2C_END_RD(2048),
    .I2C_END_RD2(4096),
    .I2C_WAITSTOP(8192),
    .I2C_nSTATES(14),
    .RAM_WIDTH(8),
    .RAM_ADDR_BITS(5),
    .SCL_HIGH(1),
    .SCL_FALL(2),
    .SCL_LOW(4),
    .SCL_RISE(8),
    .SCL_nSTATES(4),
    .SDA_HIGH(1),
    .SDA_FALL(2),
    .SDA_LOW(4),
    .SDA_RISE(8),
    .SDA_nSTATES(4)
  ) inst (
    .SCL(SCL),
    .SDA(SDA),
    .clk(clk),
    .reset(reset),
    .reg_addr(reg_addr),
    .reg_dout(reg_dout),
    .An(An),
    .Aksv14_write(Aksv14_write)
  );
endmodule
