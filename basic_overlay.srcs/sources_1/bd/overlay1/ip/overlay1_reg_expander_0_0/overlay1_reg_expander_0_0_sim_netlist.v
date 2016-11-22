// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Sun Oct 30 00:03:23 2016
// Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_reg_expander_0_0/overlay1_reg_expander_0_0_sim_netlist.v
// Design      : overlay1_reg_expander_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tcsg325-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "overlay1_reg_expander_0_0,reg_expander,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "reg_expander,Vivado 2016.1" *) 
(* NotValidForBitStream *)
module overlay1_reg_expander_0_0
   (wr_clk,
    reset,
    rd_clk,
    wr_addr,
    wr_data,
    we,
    bank0,
    bank1);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 wr_clk CLK" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rd_clk CLK" *) input rd_clk;
  input [2:0]wr_addr;
  input [7:0]wr_data;
  input we;
  output [55:0]bank0;
  output [7:0]bank1;

  wire [55:0]bank0;
  wire [7:0]bank1;
  wire rd_clk;
  wire reset;
  wire we;
  wire [2:0]wr_addr;
  wire wr_clk;
  wire [7:0]wr_data;

  overlay1_reg_expander_0_0_reg_expander inst
       (.bank0(bank0),
        .bank1(bank1),
        .rd_clk(rd_clk),
        .reset(reset),
        .we(we),
        .wr_addr(wr_addr),
        .wr_clk(wr_clk),
        .wr_data(wr_data));
endmodule

(* ORIG_REF_NAME = "reg_expander" *) 
module overlay1_reg_expander_0_0_reg_expander
   (bank0,
    bank1,
    we,
    wr_clk,
    reset,
    wr_data,
    rd_clk,
    wr_addr);
  output [55:0]bank0;
  output [7:0]bank1;
  input we;
  input wr_clk;
  input reset;
  input [7:0]wr_data;
  input rd_clk;
  input [2:0]wr_addr;

  wire [55:0]bank0;
  wire [7:0]bank1;
  wire rd_clk;
  wire reset;
  wire [55:0]state0;
  wire \state0[15]_i_1_n_0 ;
  wire \state0[23]_i_1_n_0 ;
  wire \state0[31]_i_1_n_0 ;
  wire \state0[39]_i_1_n_0 ;
  wire \state0[47]_i_1_n_0 ;
  wire \state0[55]_i_1_n_0 ;
  wire \state0[7]_i_1_n_0 ;
  wire [7:0]state1;
  wire state1_0;
  wire we;
  wire we_d;
  wire we_d2;
  wire [2:0]wr_addr;
  wire wr_clk;
  wire [7:0]wr_data;

  FDRE \bank0_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[0]),
        .Q(bank0[0]),
        .R(1'b0));
  FDRE \bank0_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[10]),
        .Q(bank0[10]),
        .R(1'b0));
  FDRE \bank0_reg[11] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[11]),
        .Q(bank0[11]),
        .R(1'b0));
  FDRE \bank0_reg[12] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[12]),
        .Q(bank0[12]),
        .R(1'b0));
  FDRE \bank0_reg[13] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[13]),
        .Q(bank0[13]),
        .R(1'b0));
  FDRE \bank0_reg[14] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[14]),
        .Q(bank0[14]),
        .R(1'b0));
  FDRE \bank0_reg[15] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[15]),
        .Q(bank0[15]),
        .R(1'b0));
  FDRE \bank0_reg[16] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[16]),
        .Q(bank0[16]),
        .R(1'b0));
  FDRE \bank0_reg[17] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[17]),
        .Q(bank0[17]),
        .R(1'b0));
  FDRE \bank0_reg[18] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[18]),
        .Q(bank0[18]),
        .R(1'b0));
  FDRE \bank0_reg[19] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[19]),
        .Q(bank0[19]),
        .R(1'b0));
  FDRE \bank0_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[1]),
        .Q(bank0[1]),
        .R(1'b0));
  FDRE \bank0_reg[20] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[20]),
        .Q(bank0[20]),
        .R(1'b0));
  FDRE \bank0_reg[21] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[21]),
        .Q(bank0[21]),
        .R(1'b0));
  FDRE \bank0_reg[22] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[22]),
        .Q(bank0[22]),
        .R(1'b0));
  FDRE \bank0_reg[23] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[23]),
        .Q(bank0[23]),
        .R(1'b0));
  FDRE \bank0_reg[24] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[24]),
        .Q(bank0[24]),
        .R(1'b0));
  FDRE \bank0_reg[25] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[25]),
        .Q(bank0[25]),
        .R(1'b0));
  FDRE \bank0_reg[26] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[26]),
        .Q(bank0[26]),
        .R(1'b0));
  FDRE \bank0_reg[27] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[27]),
        .Q(bank0[27]),
        .R(1'b0));
  FDRE \bank0_reg[28] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[28]),
        .Q(bank0[28]),
        .R(1'b0));
  FDRE \bank0_reg[29] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[29]),
        .Q(bank0[29]),
        .R(1'b0));
  FDRE \bank0_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[2]),
        .Q(bank0[2]),
        .R(1'b0));
  FDRE \bank0_reg[30] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[30]),
        .Q(bank0[30]),
        .R(1'b0));
  FDRE \bank0_reg[31] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[31]),
        .Q(bank0[31]),
        .R(1'b0));
  FDRE \bank0_reg[32] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[32]),
        .Q(bank0[32]),
        .R(1'b0));
  FDRE \bank0_reg[33] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[33]),
        .Q(bank0[33]),
        .R(1'b0));
  FDRE \bank0_reg[34] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[34]),
        .Q(bank0[34]),
        .R(1'b0));
  FDRE \bank0_reg[35] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[35]),
        .Q(bank0[35]),
        .R(1'b0));
  FDRE \bank0_reg[36] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[36]),
        .Q(bank0[36]),
        .R(1'b0));
  FDRE \bank0_reg[37] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[37]),
        .Q(bank0[37]),
        .R(1'b0));
  FDRE \bank0_reg[38] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[38]),
        .Q(bank0[38]),
        .R(1'b0));
  FDRE \bank0_reg[39] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[39]),
        .Q(bank0[39]),
        .R(1'b0));
  FDRE \bank0_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[3]),
        .Q(bank0[3]),
        .R(1'b0));
  FDRE \bank0_reg[40] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[40]),
        .Q(bank0[40]),
        .R(1'b0));
  FDRE \bank0_reg[41] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[41]),
        .Q(bank0[41]),
        .R(1'b0));
  FDRE \bank0_reg[42] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[42]),
        .Q(bank0[42]),
        .R(1'b0));
  FDRE \bank0_reg[43] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[43]),
        .Q(bank0[43]),
        .R(1'b0));
  FDRE \bank0_reg[44] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[44]),
        .Q(bank0[44]),
        .R(1'b0));
  FDRE \bank0_reg[45] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[45]),
        .Q(bank0[45]),
        .R(1'b0));
  FDRE \bank0_reg[46] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[46]),
        .Q(bank0[46]),
        .R(1'b0));
  FDRE \bank0_reg[47] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[47]),
        .Q(bank0[47]),
        .R(1'b0));
  FDRE \bank0_reg[48] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[48]),
        .Q(bank0[48]),
        .R(1'b0));
  FDRE \bank0_reg[49] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[49]),
        .Q(bank0[49]),
        .R(1'b0));
  FDRE \bank0_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[4]),
        .Q(bank0[4]),
        .R(1'b0));
  FDRE \bank0_reg[50] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[50]),
        .Q(bank0[50]),
        .R(1'b0));
  FDRE \bank0_reg[51] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[51]),
        .Q(bank0[51]),
        .R(1'b0));
  FDRE \bank0_reg[52] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[52]),
        .Q(bank0[52]),
        .R(1'b0));
  FDRE \bank0_reg[53] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[53]),
        .Q(bank0[53]),
        .R(1'b0));
  FDRE \bank0_reg[54] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[54]),
        .Q(bank0[54]),
        .R(1'b0));
  FDRE \bank0_reg[55] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[55]),
        .Q(bank0[55]),
        .R(1'b0));
  FDRE \bank0_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[5]),
        .Q(bank0[5]),
        .R(1'b0));
  FDRE \bank0_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[6]),
        .Q(bank0[6]),
        .R(1'b0));
  FDRE \bank0_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[7]),
        .Q(bank0[7]),
        .R(1'b0));
  FDRE \bank0_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[8]),
        .Q(bank0[8]),
        .R(1'b0));
  FDRE \bank0_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state0[9]),
        .Q(bank0[9]),
        .R(1'b0));
  FDRE \bank1_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state1[0]),
        .Q(bank1[0]),
        .R(1'b0));
  FDRE \bank1_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state1[1]),
        .Q(bank1[1]),
        .R(1'b0));
  FDRE \bank1_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state1[2]),
        .Q(bank1[2]),
        .R(1'b0));
  FDRE \bank1_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state1[3]),
        .Q(bank1[3]),
        .R(1'b0));
  FDRE \bank1_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state1[4]),
        .Q(bank1[4]),
        .R(1'b0));
  FDRE \bank1_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state1[5]),
        .Q(bank1[5]),
        .R(1'b0));
  FDRE \bank1_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state1[6]),
        .Q(bank1[6]),
        .R(1'b0));
  FDRE \bank1_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(state1[7]),
        .Q(bank1[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000400)) 
    \state0[15]_i_1 
       (.I0(wr_addr[2]),
        .I1(we_d),
        .I2(we_d2),
        .I3(wr_addr[0]),
        .I4(wr_addr[1]),
        .O(\state0[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \state0[23]_i_1 
       (.I0(wr_addr[2]),
        .I1(we_d),
        .I2(we_d2),
        .I3(wr_addr[1]),
        .I4(wr_addr[0]),
        .O(\state0[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \state0[31]_i_1 
       (.I0(wr_addr[2]),
        .I1(we_d),
        .I2(we_d2),
        .I3(wr_addr[1]),
        .I4(wr_addr[0]),
        .O(\state0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \state0[39]_i_1 
       (.I0(wr_addr[1]),
        .I1(we_d),
        .I2(we_d2),
        .I3(wr_addr[2]),
        .I4(wr_addr[0]),
        .O(\state0[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \state0[47]_i_1 
       (.I0(wr_addr[1]),
        .I1(we_d),
        .I2(we_d2),
        .I3(wr_addr[2]),
        .I4(wr_addr[0]),
        .O(\state0[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \state0[55]_i_1 
       (.I0(wr_addr[0]),
        .I1(we_d),
        .I2(we_d2),
        .I3(wr_addr[2]),
        .I4(wr_addr[1]),
        .O(\state0[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \state0[7]_i_1 
       (.I0(wr_addr[2]),
        .I1(we_d),
        .I2(we_d2),
        .I3(wr_addr[1]),
        .I4(wr_addr[0]),
        .O(\state0[7]_i_1_n_0 ));
  FDRE \state0_reg[0] 
       (.C(wr_clk),
        .CE(\state0[7]_i_1_n_0 ),
        .D(wr_data[0]),
        .Q(state0[0]),
        .R(reset));
  FDRE \state0_reg[10] 
       (.C(wr_clk),
        .CE(\state0[15]_i_1_n_0 ),
        .D(wr_data[2]),
        .Q(state0[10]),
        .R(reset));
  FDRE \state0_reg[11] 
       (.C(wr_clk),
        .CE(\state0[15]_i_1_n_0 ),
        .D(wr_data[3]),
        .Q(state0[11]),
        .R(reset));
  FDRE \state0_reg[12] 
       (.C(wr_clk),
        .CE(\state0[15]_i_1_n_0 ),
        .D(wr_data[4]),
        .Q(state0[12]),
        .R(reset));
  FDRE \state0_reg[13] 
       (.C(wr_clk),
        .CE(\state0[15]_i_1_n_0 ),
        .D(wr_data[5]),
        .Q(state0[13]),
        .R(reset));
  FDRE \state0_reg[14] 
       (.C(wr_clk),
        .CE(\state0[15]_i_1_n_0 ),
        .D(wr_data[6]),
        .Q(state0[14]),
        .R(reset));
  FDRE \state0_reg[15] 
       (.C(wr_clk),
        .CE(\state0[15]_i_1_n_0 ),
        .D(wr_data[7]),
        .Q(state0[15]),
        .R(reset));
  FDRE \state0_reg[16] 
       (.C(wr_clk),
        .CE(\state0[23]_i_1_n_0 ),
        .D(wr_data[0]),
        .Q(state0[16]),
        .R(reset));
  FDRE \state0_reg[17] 
       (.C(wr_clk),
        .CE(\state0[23]_i_1_n_0 ),
        .D(wr_data[1]),
        .Q(state0[17]),
        .R(reset));
  FDRE \state0_reg[18] 
       (.C(wr_clk),
        .CE(\state0[23]_i_1_n_0 ),
        .D(wr_data[2]),
        .Q(state0[18]),
        .R(reset));
  FDRE \state0_reg[19] 
       (.C(wr_clk),
        .CE(\state0[23]_i_1_n_0 ),
        .D(wr_data[3]),
        .Q(state0[19]),
        .R(reset));
  FDRE \state0_reg[1] 
       (.C(wr_clk),
        .CE(\state0[7]_i_1_n_0 ),
        .D(wr_data[1]),
        .Q(state0[1]),
        .R(reset));
  FDRE \state0_reg[20] 
       (.C(wr_clk),
        .CE(\state0[23]_i_1_n_0 ),
        .D(wr_data[4]),
        .Q(state0[20]),
        .R(reset));
  FDRE \state0_reg[21] 
       (.C(wr_clk),
        .CE(\state0[23]_i_1_n_0 ),
        .D(wr_data[5]),
        .Q(state0[21]),
        .R(reset));
  FDRE \state0_reg[22] 
       (.C(wr_clk),
        .CE(\state0[23]_i_1_n_0 ),
        .D(wr_data[6]),
        .Q(state0[22]),
        .R(reset));
  FDRE \state0_reg[23] 
       (.C(wr_clk),
        .CE(\state0[23]_i_1_n_0 ),
        .D(wr_data[7]),
        .Q(state0[23]),
        .R(reset));
  FDRE \state0_reg[24] 
       (.C(wr_clk),
        .CE(\state0[31]_i_1_n_0 ),
        .D(wr_data[0]),
        .Q(state0[24]),
        .R(reset));
  FDRE \state0_reg[25] 
       (.C(wr_clk),
        .CE(\state0[31]_i_1_n_0 ),
        .D(wr_data[1]),
        .Q(state0[25]),
        .R(reset));
  FDRE \state0_reg[26] 
       (.C(wr_clk),
        .CE(\state0[31]_i_1_n_0 ),
        .D(wr_data[2]),
        .Q(state0[26]),
        .R(reset));
  FDRE \state0_reg[27] 
       (.C(wr_clk),
        .CE(\state0[31]_i_1_n_0 ),
        .D(wr_data[3]),
        .Q(state0[27]),
        .R(reset));
  FDRE \state0_reg[28] 
       (.C(wr_clk),
        .CE(\state0[31]_i_1_n_0 ),
        .D(wr_data[4]),
        .Q(state0[28]),
        .R(reset));
  FDRE \state0_reg[29] 
       (.C(wr_clk),
        .CE(\state0[31]_i_1_n_0 ),
        .D(wr_data[5]),
        .Q(state0[29]),
        .R(reset));
  FDRE \state0_reg[2] 
       (.C(wr_clk),
        .CE(\state0[7]_i_1_n_0 ),
        .D(wr_data[2]),
        .Q(state0[2]),
        .R(reset));
  FDRE \state0_reg[30] 
       (.C(wr_clk),
        .CE(\state0[31]_i_1_n_0 ),
        .D(wr_data[6]),
        .Q(state0[30]),
        .R(reset));
  FDRE \state0_reg[31] 
       (.C(wr_clk),
        .CE(\state0[31]_i_1_n_0 ),
        .D(wr_data[7]),
        .Q(state0[31]),
        .R(reset));
  FDRE \state0_reg[32] 
       (.C(wr_clk),
        .CE(\state0[39]_i_1_n_0 ),
        .D(wr_data[0]),
        .Q(state0[32]),
        .R(reset));
  FDRE \state0_reg[33] 
       (.C(wr_clk),
        .CE(\state0[39]_i_1_n_0 ),
        .D(wr_data[1]),
        .Q(state0[33]),
        .R(reset));
  FDRE \state0_reg[34] 
       (.C(wr_clk),
        .CE(\state0[39]_i_1_n_0 ),
        .D(wr_data[2]),
        .Q(state0[34]),
        .R(reset));
  FDRE \state0_reg[35] 
       (.C(wr_clk),
        .CE(\state0[39]_i_1_n_0 ),
        .D(wr_data[3]),
        .Q(state0[35]),
        .R(reset));
  FDRE \state0_reg[36] 
       (.C(wr_clk),
        .CE(\state0[39]_i_1_n_0 ),
        .D(wr_data[4]),
        .Q(state0[36]),
        .R(reset));
  FDRE \state0_reg[37] 
       (.C(wr_clk),
        .CE(\state0[39]_i_1_n_0 ),
        .D(wr_data[5]),
        .Q(state0[37]),
        .R(reset));
  FDRE \state0_reg[38] 
       (.C(wr_clk),
        .CE(\state0[39]_i_1_n_0 ),
        .D(wr_data[6]),
        .Q(state0[38]),
        .R(reset));
  FDRE \state0_reg[39] 
       (.C(wr_clk),
        .CE(\state0[39]_i_1_n_0 ),
        .D(wr_data[7]),
        .Q(state0[39]),
        .R(reset));
  FDRE \state0_reg[3] 
       (.C(wr_clk),
        .CE(\state0[7]_i_1_n_0 ),
        .D(wr_data[3]),
        .Q(state0[3]),
        .R(reset));
  FDRE \state0_reg[40] 
       (.C(wr_clk),
        .CE(\state0[47]_i_1_n_0 ),
        .D(wr_data[0]),
        .Q(state0[40]),
        .R(reset));
  FDRE \state0_reg[41] 
       (.C(wr_clk),
        .CE(\state0[47]_i_1_n_0 ),
        .D(wr_data[1]),
        .Q(state0[41]),
        .R(reset));
  FDRE \state0_reg[42] 
       (.C(wr_clk),
        .CE(\state0[47]_i_1_n_0 ),
        .D(wr_data[2]),
        .Q(state0[42]),
        .R(reset));
  FDRE \state0_reg[43] 
       (.C(wr_clk),
        .CE(\state0[47]_i_1_n_0 ),
        .D(wr_data[3]),
        .Q(state0[43]),
        .R(reset));
  FDRE \state0_reg[44] 
       (.C(wr_clk),
        .CE(\state0[47]_i_1_n_0 ),
        .D(wr_data[4]),
        .Q(state0[44]),
        .R(reset));
  FDRE \state0_reg[45] 
       (.C(wr_clk),
        .CE(\state0[47]_i_1_n_0 ),
        .D(wr_data[5]),
        .Q(state0[45]),
        .R(reset));
  FDRE \state0_reg[46] 
       (.C(wr_clk),
        .CE(\state0[47]_i_1_n_0 ),
        .D(wr_data[6]),
        .Q(state0[46]),
        .R(reset));
  FDRE \state0_reg[47] 
       (.C(wr_clk),
        .CE(\state0[47]_i_1_n_0 ),
        .D(wr_data[7]),
        .Q(state0[47]),
        .R(reset));
  FDRE \state0_reg[48] 
       (.C(wr_clk),
        .CE(\state0[55]_i_1_n_0 ),
        .D(wr_data[0]),
        .Q(state0[48]),
        .R(reset));
  FDRE \state0_reg[49] 
       (.C(wr_clk),
        .CE(\state0[55]_i_1_n_0 ),
        .D(wr_data[1]),
        .Q(state0[49]),
        .R(reset));
  FDRE \state0_reg[4] 
       (.C(wr_clk),
        .CE(\state0[7]_i_1_n_0 ),
        .D(wr_data[4]),
        .Q(state0[4]),
        .R(reset));
  FDRE \state0_reg[50] 
       (.C(wr_clk),
        .CE(\state0[55]_i_1_n_0 ),
        .D(wr_data[2]),
        .Q(state0[50]),
        .R(reset));
  FDRE \state0_reg[51] 
       (.C(wr_clk),
        .CE(\state0[55]_i_1_n_0 ),
        .D(wr_data[3]),
        .Q(state0[51]),
        .R(reset));
  FDRE \state0_reg[52] 
       (.C(wr_clk),
        .CE(\state0[55]_i_1_n_0 ),
        .D(wr_data[4]),
        .Q(state0[52]),
        .R(reset));
  FDRE \state0_reg[53] 
       (.C(wr_clk),
        .CE(\state0[55]_i_1_n_0 ),
        .D(wr_data[5]),
        .Q(state0[53]),
        .R(reset));
  FDRE \state0_reg[54] 
       (.C(wr_clk),
        .CE(\state0[55]_i_1_n_0 ),
        .D(wr_data[6]),
        .Q(state0[54]),
        .R(reset));
  FDRE \state0_reg[55] 
       (.C(wr_clk),
        .CE(\state0[55]_i_1_n_0 ),
        .D(wr_data[7]),
        .Q(state0[55]),
        .R(reset));
  FDRE \state0_reg[5] 
       (.C(wr_clk),
        .CE(\state0[7]_i_1_n_0 ),
        .D(wr_data[5]),
        .Q(state0[5]),
        .R(reset));
  FDRE \state0_reg[6] 
       (.C(wr_clk),
        .CE(\state0[7]_i_1_n_0 ),
        .D(wr_data[6]),
        .Q(state0[6]),
        .R(reset));
  FDRE \state0_reg[7] 
       (.C(wr_clk),
        .CE(\state0[7]_i_1_n_0 ),
        .D(wr_data[7]),
        .Q(state0[7]),
        .R(reset));
  FDRE \state0_reg[8] 
       (.C(wr_clk),
        .CE(\state0[15]_i_1_n_0 ),
        .D(wr_data[0]),
        .Q(state0[8]),
        .R(reset));
  FDRE \state0_reg[9] 
       (.C(wr_clk),
        .CE(\state0[15]_i_1_n_0 ),
        .D(wr_data[1]),
        .Q(state0[9]),
        .R(reset));
  LUT5 #(
    .INIT(32'h40000000)) 
    \state1[7]_i_1 
       (.I0(we_d2),
        .I1(we_d),
        .I2(wr_addr[0]),
        .I3(wr_addr[2]),
        .I4(wr_addr[1]),
        .O(state1_0));
  FDRE \state1_reg[0] 
       (.C(wr_clk),
        .CE(state1_0),
        .D(wr_data[0]),
        .Q(state1[0]),
        .R(reset));
  FDRE \state1_reg[1] 
       (.C(wr_clk),
        .CE(state1_0),
        .D(wr_data[1]),
        .Q(state1[1]),
        .R(reset));
  FDRE \state1_reg[2] 
       (.C(wr_clk),
        .CE(state1_0),
        .D(wr_data[2]),
        .Q(state1[2]),
        .R(reset));
  FDRE \state1_reg[3] 
       (.C(wr_clk),
        .CE(state1_0),
        .D(wr_data[3]),
        .Q(state1[3]),
        .R(reset));
  FDRE \state1_reg[4] 
       (.C(wr_clk),
        .CE(state1_0),
        .D(wr_data[4]),
        .Q(state1[4]),
        .R(reset));
  FDRE \state1_reg[5] 
       (.C(wr_clk),
        .CE(state1_0),
        .D(wr_data[5]),
        .Q(state1[5]),
        .R(reset));
  FDRE \state1_reg[6] 
       (.C(wr_clk),
        .CE(state1_0),
        .D(wr_data[6]),
        .Q(state1[6]),
        .R(reset));
  FDRE \state1_reg[7] 
       (.C(wr_clk),
        .CE(state1_0),
        .D(wr_data[7]),
        .Q(state1[7]),
        .R(reset));
  FDRE we_d2_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(we_d),
        .Q(we_d2),
        .R(1'b0));
  FDRE we_d_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(we),
        .Q(we_d),
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
