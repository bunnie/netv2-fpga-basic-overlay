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


// IP VLNV: alphamaxmedia.com:bunnie:reg_expander:1.3
// IP Revision: 5

(* X_CORE_INFO = "reg_expander,Vivado 2016.1" *)
(* CHECK_LICENSE_TYPE = "overlay1_reg_expander_0_0,reg_expander,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module overlay1_reg_expander_0_0 (
  wr_clk,
  reset,
  rd_clk,
  wr_addr,
  wr_data,
  we,
  bank0,
  bank1
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 wr_clk CLK" *)
input wire wr_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rd_clk CLK" *)
input wire rd_clk;
input wire [2 : 0] wr_addr;
input wire [7 : 0] wr_data;
input wire we;
output wire [55 : 0] bank0;
output wire [7 : 0] bank1;

  reg_expander inst (
    .wr_clk(wr_clk),
    .reset(reset),
    .rd_clk(rd_clk),
    .wr_addr(wr_addr),
    .wr_data(wr_data),
    .we(we),
    .bank0(bank0),
    .bank1(bank1)
  );
endmodule
