// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Mon Oct 31 17:13:52 2016
// Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_hdcp_snoop_0_0/overlay1_hdcp_snoop_0_0_sim_netlist.v
// Design      : overlay1_hdcp_snoop_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tcsg325-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "overlay1_hdcp_snoop_0_0,hdcp_snoop,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "hdcp_snoop,Vivado 2016.1" *) 
(* NotValidForBitStream *)
module overlay1_hdcp_snoop_0_0
   (SCL,
    SDA,
    clk,
    reset,
    reg_addr,
    reg_dout,
    An,
    Aksv14_write);
  input SCL;
  input SDA;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) input reset;
  input [4:0]reg_addr;
  output [7:0]reg_dout;
  output [63:0]An;
  output Aksv14_write;

  wire Aksv14_write;
  wire [63:0]An;
  wire SCL;
  wire SDA;
  wire clk;
  wire [4:0]reg_addr;
  wire [7:0]reg_dout;
  wire reset;

  overlay1_hdcp_snoop_0_0_hdcp_snoop inst
       (.Aksv14_write(Aksv14_write),
        .An(An),
        .SCL(SCL),
        .SDA(SDA),
        .clk(clk),
        .reg_addr(reg_addr),
        .reg_dout(reg_dout),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "hdcp_snoop" *) 
module overlay1_hdcp_snoop_0_0_hdcp_snoop
   (An,
    Aksv14_write,
    reg_dout,
    SCL,
    clk,
    reset,
    SDA,
    reg_addr);
  output [63:0]An;
  output Aksv14_write;
  output [7:0]reg_dout;
  input SCL;
  input clk;
  input reset;
  input SDA;
  input [4:0]reg_addr;

  wire Aksv14_write;
  wire Aksv14_write0;
  wire Aksv14_write1__12;
  wire Aksv14_write_i_2_n_0;
  wire [63:0]An;
  wire I2C_addr;
  wire \I2C_addr[0]_i_1_n_0 ;
  wire \I2C_addr[0]_i_2_n_0 ;
  wire \I2C_addr[1]_i_1_n_0 ;
  wire \I2C_addr[2]_i_1_n_0 ;
  wire \I2C_addr[3]_i_1_n_0 ;
  wire \I2C_addr[3]_i_2_n_0 ;
  wire \I2C_addr[4]_i_1_n_0 ;
  wire \I2C_addr[4]_i_2_n_0 ;
  wire \I2C_addr[5]_i_1_n_0 ;
  wire \I2C_addr[5]_i_2_n_0 ;
  wire \I2C_addr[6]_i_1_n_0 ;
  wire \I2C_addr[7]_i_10_n_0 ;
  wire \I2C_addr[7]_i_11_n_0 ;
  wire \I2C_addr[7]_i_12_n_0 ;
  wire \I2C_addr[7]_i_13_n_0 ;
  wire \I2C_addr[7]_i_14_n_0 ;
  wire \I2C_addr[7]_i_15_n_0 ;
  wire \I2C_addr[7]_i_16_n_0 ;
  wire \I2C_addr[7]_i_17_n_0 ;
  wire \I2C_addr[7]_i_18_n_0 ;
  wire \I2C_addr[7]_i_19_n_0 ;
  wire \I2C_addr[7]_i_1_n_0 ;
  wire \I2C_addr[7]_i_20_n_0 ;
  wire \I2C_addr[7]_i_21_n_0 ;
  wire \I2C_addr[7]_i_22_n_0 ;
  wire \I2C_addr[7]_i_23_n_0 ;
  wire \I2C_addr[7]_i_24_n_0 ;
  wire \I2C_addr[7]_i_25_n_0 ;
  wire \I2C_addr[7]_i_26_n_0 ;
  wire \I2C_addr[7]_i_27_n_0 ;
  wire \I2C_addr[7]_i_28_n_0 ;
  wire \I2C_addr[7]_i_3_n_0 ;
  wire \I2C_addr[7]_i_4_n_0 ;
  wire \I2C_addr[7]_i_5_n_0 ;
  wire \I2C_addr[7]_i_6_n_0 ;
  wire \I2C_addr[7]_i_7_n_0 ;
  wire \I2C_addr[7]_i_8_n_0 ;
  wire \I2C_addr[7]_i_9_n_0 ;
  wire \I2C_addr_reg_n_0_[0] ;
  wire \I2C_addr_reg_n_0_[1] ;
  wire \I2C_addr_reg_n_0_[2] ;
  wire \I2C_addr_reg_n_0_[3] ;
  wire \I2C_addr_reg_n_0_[4] ;
  wire \I2C_addr_reg_n_0_[5] ;
  wire \I2C_addr_reg_n_0_[6] ;
  wire \I2C_addr_reg_n_0_[7] ;
  wire I2C_bitcnt;
  wire \I2C_bitcnt[0]_i_1_n_0 ;
  wire \I2C_bitcnt[1]_i_1_n_0 ;
  wire \I2C_bitcnt[2]_i_1_n_0 ;
  wire \I2C_bitcnt[3]_i_10_n_0 ;
  wire \I2C_bitcnt[3]_i_11_n_0 ;
  wire \I2C_bitcnt[3]_i_12_n_0 ;
  wire \I2C_bitcnt[3]_i_1_n_0 ;
  wire \I2C_bitcnt[3]_i_3_n_0 ;
  wire \I2C_bitcnt[3]_i_4_n_0 ;
  wire \I2C_bitcnt[3]_i_5_n_0 ;
  wire \I2C_bitcnt[3]_i_6_n_0 ;
  wire \I2C_bitcnt[3]_i_7_n_0 ;
  wire \I2C_bitcnt[3]_i_8_n_0 ;
  wire \I2C_bitcnt[3]_i_9_n_0 ;
  wire \I2C_bitcnt_reg_n_0_[0] ;
  wire \I2C_bitcnt_reg_n_0_[1] ;
  wire \I2C_bitcnt_reg_n_0_[2] ;
  wire \I2C_bitcnt_reg_n_0_[3] ;
  wire [13:0]I2C_cstate;
  wire I2C_cstate0;
  wire \I2C_cstate[13]_i_3_n_0 ;
  wire \I2C_cstate[13]_i_4_n_0 ;
  wire \I2C_cstate[13]_i_5_n_0 ;
  wire \I2C_cstate[13]_i_6_n_0 ;
  wire \I2C_cstate[13]_i_7_n_0 ;
  wire \I2C_cstate[1]_i_2_n_0 ;
  wire \I2C_cstate[9]_i_2_n_0 ;
  wire I2C_daddr;
  wire \I2C_daddr[0]_i_1_n_0 ;
  wire \I2C_daddr[0]_i_2_n_0 ;
  wire \I2C_daddr[1]_i_1_n_0 ;
  wire \I2C_daddr[1]_i_2_n_0 ;
  wire \I2C_daddr[2]_i_1_n_0 ;
  wire \I2C_daddr[2]_i_2_n_0 ;
  wire \I2C_daddr[3]_i_1_n_0 ;
  wire \I2C_daddr[3]_i_2_n_0 ;
  wire \I2C_daddr[4]_i_1_n_0 ;
  wire \I2C_daddr[4]_i_2_n_0 ;
  wire \I2C_daddr[5]_i_1_n_0 ;
  wire \I2C_daddr[5]_i_2_n_0 ;
  wire \I2C_daddr[6]_i_1_n_0 ;
  wire \I2C_daddr[6]_i_2_n_0 ;
  wire \I2C_daddr[7]_i_10_n_0 ;
  wire \I2C_daddr[7]_i_11_n_0 ;
  wire \I2C_daddr[7]_i_12_n_0 ;
  wire \I2C_daddr[7]_i_13_n_0 ;
  wire \I2C_daddr[7]_i_14_n_0 ;
  wire \I2C_daddr[7]_i_15_n_0 ;
  wire \I2C_daddr[7]_i_16_n_0 ;
  wire \I2C_daddr[7]_i_17_n_0 ;
  wire \I2C_daddr[7]_i_18_n_0 ;
  wire \I2C_daddr[7]_i_19_n_0 ;
  wire \I2C_daddr[7]_i_1_n_0 ;
  wire \I2C_daddr[7]_i_20_n_0 ;
  wire \I2C_daddr[7]_i_21_n_0 ;
  wire \I2C_daddr[7]_i_22_n_0 ;
  wire \I2C_daddr[7]_i_23_n_0 ;
  wire \I2C_daddr[7]_i_3_n_0 ;
  wire \I2C_daddr[7]_i_4_n_0 ;
  wire \I2C_daddr[7]_i_5_n_0 ;
  wire \I2C_daddr[7]_i_6_n_0 ;
  wire \I2C_daddr[7]_i_7_n_0 ;
  wire \I2C_daddr[7]_i_8_n_0 ;
  wire \I2C_daddr[7]_i_9_n_0 ;
  wire \I2C_daddr_reg_n_0_[0] ;
  wire \I2C_daddr_reg_n_0_[1] ;
  wire \I2C_daddr_reg_n_0_[2] ;
  wire \I2C_daddr_reg_n_0_[3] ;
  wire \I2C_daddr_reg_n_0_[4] ;
  wire \I2C_daddr_reg_n_0_[5] ;
  wire \I2C_daddr_reg_n_0_[6] ;
  wire \I2C_daddr_reg_n_0_[7] ;
  wire [13:0]I2C_nstate;
  wire I2C_nstate2__0;
  wire [7:0]I2C_rdata;
  wire \I2C_rdata[0]_i_10_n_0 ;
  wire \I2C_rdata[0]_i_11_n_0 ;
  wire \I2C_rdata[0]_i_12_n_0 ;
  wire \I2C_rdata[0]_i_13_n_0 ;
  wire \I2C_rdata[0]_i_14_n_0 ;
  wire \I2C_rdata[0]_i_15_n_0 ;
  wire \I2C_rdata[0]_i_1_n_0 ;
  wire \I2C_rdata[0]_i_2_n_0 ;
  wire \I2C_rdata[0]_i_8_n_0 ;
  wire \I2C_rdata[0]_i_9_n_0 ;
  wire \I2C_rdata[1]_i_10_n_0 ;
  wire \I2C_rdata[1]_i_11_n_0 ;
  wire \I2C_rdata[1]_i_12_n_0 ;
  wire \I2C_rdata[1]_i_13_n_0 ;
  wire \I2C_rdata[1]_i_14_n_0 ;
  wire \I2C_rdata[1]_i_15_n_0 ;
  wire \I2C_rdata[1]_i_1_n_0 ;
  wire \I2C_rdata[1]_i_2_n_0 ;
  wire \I2C_rdata[1]_i_8_n_0 ;
  wire \I2C_rdata[1]_i_9_n_0 ;
  wire \I2C_rdata[2]_i_10_n_0 ;
  wire \I2C_rdata[2]_i_11_n_0 ;
  wire \I2C_rdata[2]_i_12_n_0 ;
  wire \I2C_rdata[2]_i_13_n_0 ;
  wire \I2C_rdata[2]_i_14_n_0 ;
  wire \I2C_rdata[2]_i_15_n_0 ;
  wire \I2C_rdata[2]_i_1_n_0 ;
  wire \I2C_rdata[2]_i_2_n_0 ;
  wire \I2C_rdata[2]_i_8_n_0 ;
  wire \I2C_rdata[2]_i_9_n_0 ;
  wire \I2C_rdata[3]_i_10_n_0 ;
  wire \I2C_rdata[3]_i_11_n_0 ;
  wire \I2C_rdata[3]_i_12_n_0 ;
  wire \I2C_rdata[3]_i_13_n_0 ;
  wire \I2C_rdata[3]_i_14_n_0 ;
  wire \I2C_rdata[3]_i_15_n_0 ;
  wire \I2C_rdata[3]_i_1_n_0 ;
  wire \I2C_rdata[3]_i_2_n_0 ;
  wire \I2C_rdata[3]_i_8_n_0 ;
  wire \I2C_rdata[3]_i_9_n_0 ;
  wire \I2C_rdata[4]_i_10_n_0 ;
  wire \I2C_rdata[4]_i_11_n_0 ;
  wire \I2C_rdata[4]_i_12_n_0 ;
  wire \I2C_rdata[4]_i_13_n_0 ;
  wire \I2C_rdata[4]_i_14_n_0 ;
  wire \I2C_rdata[4]_i_15_n_0 ;
  wire \I2C_rdata[4]_i_1_n_0 ;
  wire \I2C_rdata[4]_i_2_n_0 ;
  wire \I2C_rdata[4]_i_8_n_0 ;
  wire \I2C_rdata[4]_i_9_n_0 ;
  wire \I2C_rdata[5]_i_10_n_0 ;
  wire \I2C_rdata[5]_i_11_n_0 ;
  wire \I2C_rdata[5]_i_12_n_0 ;
  wire \I2C_rdata[5]_i_13_n_0 ;
  wire \I2C_rdata[5]_i_14_n_0 ;
  wire \I2C_rdata[5]_i_15_n_0 ;
  wire \I2C_rdata[5]_i_1_n_0 ;
  wire \I2C_rdata[5]_i_2_n_0 ;
  wire \I2C_rdata[5]_i_8_n_0 ;
  wire \I2C_rdata[5]_i_9_n_0 ;
  wire \I2C_rdata[6]_i_10_n_0 ;
  wire \I2C_rdata[6]_i_11_n_0 ;
  wire \I2C_rdata[6]_i_12_n_0 ;
  wire \I2C_rdata[6]_i_13_n_0 ;
  wire \I2C_rdata[6]_i_14_n_0 ;
  wire \I2C_rdata[6]_i_15_n_0 ;
  wire \I2C_rdata[6]_i_1_n_0 ;
  wire \I2C_rdata[6]_i_2_n_0 ;
  wire \I2C_rdata[6]_i_8_n_0 ;
  wire \I2C_rdata[6]_i_9_n_0 ;
  wire \I2C_rdata[7]_i_10_n_0 ;
  wire \I2C_rdata[7]_i_11_n_0 ;
  wire \I2C_rdata[7]_i_12_n_0 ;
  wire \I2C_rdata[7]_i_13_n_0 ;
  wire \I2C_rdata[7]_i_14_n_0 ;
  wire \I2C_rdata[7]_i_15_n_0 ;
  wire \I2C_rdata[7]_i_19_n_0 ;
  wire \I2C_rdata[7]_i_1_n_0 ;
  wire \I2C_rdata[7]_i_22_n_0 ;
  wire \I2C_rdata[7]_i_23_n_0 ;
  wire \I2C_rdata[7]_i_24_n_0 ;
  wire \I2C_rdata[7]_i_25_n_0 ;
  wire \I2C_rdata[7]_i_26_n_0 ;
  wire \I2C_rdata[7]_i_27_n_0 ;
  wire \I2C_rdata[7]_i_28_n_0 ;
  wire \I2C_rdata[7]_i_29_n_0 ;
  wire \I2C_rdata[7]_i_3_n_0 ;
  wire \I2C_rdata[7]_i_4_n_0 ;
  wire \I2C_rdata[7]_i_5_n_0 ;
  wire \I2C_rdata[7]_i_6_n_0 ;
  wire \I2C_rdata[7]_i_7_n_0 ;
  wire \I2C_rdata[7]_i_8_n_0 ;
  wire \I2C_rdata[7]_i_9_n_0 ;
  wire I2C_rdata_0;
  wire \I2C_rdata_reg[0]_i_3_n_0 ;
  wire \I2C_rdata_reg[0]_i_4_n_0 ;
  wire \I2C_rdata_reg[0]_i_5_n_0 ;
  wire \I2C_rdata_reg[0]_i_6_n_0 ;
  wire \I2C_rdata_reg[0]_i_7_n_0 ;
  wire \I2C_rdata_reg[1]_i_3_n_0 ;
  wire \I2C_rdata_reg[1]_i_4_n_0 ;
  wire \I2C_rdata_reg[1]_i_5_n_0 ;
  wire \I2C_rdata_reg[1]_i_6_n_0 ;
  wire \I2C_rdata_reg[1]_i_7_n_0 ;
  wire \I2C_rdata_reg[2]_i_3_n_0 ;
  wire \I2C_rdata_reg[2]_i_4_n_0 ;
  wire \I2C_rdata_reg[2]_i_5_n_0 ;
  wire \I2C_rdata_reg[2]_i_6_n_0 ;
  wire \I2C_rdata_reg[2]_i_7_n_0 ;
  wire \I2C_rdata_reg[3]_i_3_n_0 ;
  wire \I2C_rdata_reg[3]_i_4_n_0 ;
  wire \I2C_rdata_reg[3]_i_5_n_0 ;
  wire \I2C_rdata_reg[3]_i_6_n_0 ;
  wire \I2C_rdata_reg[3]_i_7_n_0 ;
  wire \I2C_rdata_reg[4]_i_3_n_0 ;
  wire \I2C_rdata_reg[4]_i_4_n_0 ;
  wire \I2C_rdata_reg[4]_i_5_n_0 ;
  wire \I2C_rdata_reg[4]_i_6_n_0 ;
  wire \I2C_rdata_reg[4]_i_7_n_0 ;
  wire \I2C_rdata_reg[5]_i_3_n_0 ;
  wire \I2C_rdata_reg[5]_i_4_n_0 ;
  wire \I2C_rdata_reg[5]_i_5_n_0 ;
  wire \I2C_rdata_reg[5]_i_6_n_0 ;
  wire \I2C_rdata_reg[5]_i_7_n_0 ;
  wire \I2C_rdata_reg[6]_i_3_n_0 ;
  wire \I2C_rdata_reg[6]_i_4_n_0 ;
  wire \I2C_rdata_reg[6]_i_5_n_0 ;
  wire \I2C_rdata_reg[6]_i_6_n_0 ;
  wire \I2C_rdata_reg[6]_i_7_n_0 ;
  wire \I2C_rdata_reg[7]_i_16_n_0 ;
  wire \I2C_rdata_reg[7]_i_17_n_0 ;
  wire \I2C_rdata_reg[7]_i_18_n_0 ;
  wire \I2C_rdata_reg[7]_i_20_n_0 ;
  wire \I2C_rdata_reg[7]_i_21_n_0 ;
  wire I2C_reg_update;
  wire I2C_reg_update_i_2_n_0;
  wire I2C_reg_update_i_3_n_0;
  wire I2C_reg_update_i_4_n_0;
  wire I2C_reg_update_reg_n_0;
  wire \I2C_regblock[0][7]_i_1_n_0 ;
  wire \I2C_regblock[0][7]_i_2_n_0 ;
  wire \I2C_regblock[10][7]_i_1_n_0 ;
  wire \I2C_regblock[10][7]_i_2_n_0 ;
  wire \I2C_regblock[11][7]_i_1_n_0 ;
  wire \I2C_regblock[12][7]_i_1_n_0 ;
  wire \I2C_regblock[12][7]_i_2_n_0 ;
  wire \I2C_regblock[13][7]_i_1_n_0 ;
  wire \I2C_regblock[13][7]_i_2_n_0 ;
  wire \I2C_regblock[14][7]_i_1_n_0 ;
  wire \I2C_regblock[14][7]_i_2_n_0 ;
  wire \I2C_regblock[14][7]_i_3_n_0 ;
  wire \I2C_regblock[15][7]_i_1_n_0 ;
  wire \I2C_regblock[16][7]_i_1_n_0 ;
  wire \I2C_regblock[16][7]_i_2_n_0 ;
  wire \I2C_regblock[17][7]_i_1_n_0 ;
  wire \I2C_regblock[17][7]_i_2_n_0 ;
  wire \I2C_regblock[18][7]_i_1_n_0 ;
  wire \I2C_regblock[18][7]_i_2_n_0 ;
  wire \I2C_regblock[19][7]_i_1_n_0 ;
  wire \I2C_regblock[19][7]_i_2_n_0 ;
  wire \I2C_regblock[1][7]_i_1_n_0 ;
  wire \I2C_regblock[20][7]_i_1_n_0 ;
  wire \I2C_regblock[20][7]_i_2_n_0 ;
  wire \I2C_regblock[21][7]_i_1_n_0 ;
  wire \I2C_regblock[21][7]_i_2_n_0 ;
  wire \I2C_regblock[22][7]_i_1_n_0 ;
  wire \I2C_regblock[22][7]_i_2_n_0 ;
  wire \I2C_regblock[23][7]_i_1_n_0 ;
  wire \I2C_regblock[24][7]_i_1_n_0 ;
  wire \I2C_regblock[24][7]_i_2_n_0 ;
  wire \I2C_regblock[24][7]_i_3_n_0 ;
  wire \I2C_regblock[25][7]_i_1_n_0 ;
  wire \I2C_regblock[25][7]_i_2_n_0 ;
  wire \I2C_regblock[26][7]_i_1_n_0 ;
  wire \I2C_regblock[26][7]_i_2_n_0 ;
  wire \I2C_regblock[27][7]_i_1_n_0 ;
  wire \I2C_regblock[27][7]_i_2_n_0 ;
  wire \I2C_regblock[28][7]_i_1_n_0 ;
  wire \I2C_regblock[28][7]_i_2_n_0 ;
  wire \I2C_regblock[29][7]_i_1_n_0 ;
  wire \I2C_regblock[29][7]_i_2_n_0 ;
  wire \I2C_regblock[2][7]_i_1_n_0 ;
  wire \I2C_regblock[2][7]_i_2_n_0 ;
  wire \I2C_regblock[30][7]_i_1_n_0 ;
  wire \I2C_regblock[30][7]_i_2_n_0 ;
  wire \I2C_regblock[30][7]_i_3_n_0 ;
  wire \I2C_regblock[30][7]_i_4_n_0 ;
  wire \I2C_regblock[31][7]_i_1_n_0 ;
  wire \I2C_regblock[31][7]_i_3_n_0 ;
  wire \I2C_regblock[31][7]_i_4_n_0 ;
  wire \I2C_regblock[31][7]_i_5_n_0 ;
  wire \I2C_regblock[31][7]_i_6_n_0 ;
  wire \I2C_regblock[31][7]_i_7_n_0 ;
  wire \I2C_regblock[31][7]_i_8_n_0 ;
  wire \I2C_regblock[3][7]_i_1_n_0 ;
  wire \I2C_regblock[3][7]_i_2_n_0 ;
  wire \I2C_regblock[4][7]_i_1_n_0 ;
  wire \I2C_regblock[4][7]_i_2_n_0 ;
  wire \I2C_regblock[4][7]_i_3_n_0 ;
  wire \I2C_regblock[5][7]_i_1_n_0 ;
  wire \I2C_regblock[5][7]_i_2_n_0 ;
  wire \I2C_regblock[6][7]_i_1_n_0 ;
  wire \I2C_regblock[6][7]_i_2_n_0 ;
  wire \I2C_regblock[7][7]_i_1_n_0 ;
  wire \I2C_regblock[7][7]_i_2_n_0 ;
  wire \I2C_regblock[8][7]_i_1_n_0 ;
  wire \I2C_regblock[9][7]_i_1_n_0 ;
  wire [7:0]\I2C_regblock_reg[0] ;
  wire [7:0]\I2C_regblock_reg[10] ;
  wire [7:0]\I2C_regblock_reg[11] ;
  wire [7:0]\I2C_regblock_reg[12] ;
  wire [7:0]\I2C_regblock_reg[13] ;
  wire [7:0]\I2C_regblock_reg[14] ;
  wire [7:0]\I2C_regblock_reg[15] ;
  wire [7:0]\I2C_regblock_reg[16] ;
  wire [7:0]\I2C_regblock_reg[17] ;
  wire [7:0]\I2C_regblock_reg[18] ;
  wire [7:0]\I2C_regblock_reg[19] ;
  wire [7:0]\I2C_regblock_reg[1] ;
  wire [7:0]\I2C_regblock_reg[20] ;
  wire [7:0]\I2C_regblock_reg[21] ;
  wire [7:0]\I2C_regblock_reg[22] ;
  wire [7:0]\I2C_regblock_reg[23] ;
  wire [7:0]\I2C_regblock_reg[2] ;
  wire [7:0]\I2C_regblock_reg[3] ;
  wire [7:0]\I2C_regblock_reg[4] ;
  wire [7:0]\I2C_regblock_reg[5] ;
  wire [7:0]\I2C_regblock_reg[6] ;
  wire [7:0]\I2C_regblock_reg[7] ;
  wire [7:0]\I2C_regblock_reg[8] ;
  wire [7:0]\I2C_regblock_reg[9] ;
  wire [7:0]I2C_wdata;
  wire \I2C_wdata[0]_i_1_n_0 ;
  wire \I2C_wdata[1]_i_1_n_0 ;
  wire \I2C_wdata[2]_i_1_n_0 ;
  wire \I2C_wdata[3]_i_1_n_0 ;
  wire \I2C_wdata[4]_i_1_n_0 ;
  wire \I2C_wdata[5]_i_1_n_0 ;
  wire \I2C_wdata[6]_i_1_n_0 ;
  wire \I2C_wdata[7]_i_1_n_0 ;
  wire \I2C_wdata[7]_i_3_n_0 ;
  wire \I2C_wdata[7]_i_4_n_0 ;
  wire \I2C_wdata[7]_i_5_n_0 ;
  wire \I2C_wdata[7]_i_6_n_0 ;
  wire \I2C_wdata[7]_i_7_n_0 ;
  wire \I2C_wdata[7]_i_8_n_0 ;
  wire I2C_wdata_1;
  wire SCL;
  wire [3:0]SCL_cstate;
  wire \SCL_cstate[1]_i_1_n_0 ;
  wire \SCL_cstate[1]_i_2_n_0 ;
  wire [3:0]SCL_nstate;
  wire SCL_nstate2__0;
  wire \SCL_rfcnt[0]_i_1_n_0 ;
  wire \SCL_rfcnt[1]_i_1_n_0 ;
  wire \SCL_rfcnt[2]_i_1_n_0 ;
  wire \SCL_rfcnt[3]_i_1_n_0 ;
  wire \SCL_rfcnt[4]_i_1_n_0 ;
  wire \SCL_rfcnt[4]_i_2_n_0 ;
  wire \SCL_rfcnt[4]_i_3_n_0 ;
  wire \SCL_rfcnt_reg_n_0_[0] ;
  wire \SCL_rfcnt_reg_n_0_[1] ;
  wire \SCL_rfcnt_reg_n_0_[2] ;
  wire \SCL_rfcnt_reg_n_0_[3] ;
  wire \SCL_rfcnt_reg_n_0_[4] ;
  wire SCL_s;
  wire SCL_sync;
  wire SDA;
  wire \SDA_cstate[1]_i_2_n_0 ;
  wire [3:0]SDA_nstate;
  wire SDA_nstate2__0;
  wire \SDA_rfcnt[0]_i_1_n_0 ;
  wire \SDA_rfcnt[1]_i_1_n_0 ;
  wire \SDA_rfcnt[2]_i_1_n_0 ;
  wire \SDA_rfcnt[3]_i_1_n_0 ;
  wire \SDA_rfcnt[4]_i_1_n_0 ;
  wire \SDA_rfcnt[4]_i_2_n_0 ;
  wire \SDA_rfcnt[4]_i_3_n_0 ;
  wire \SDA_rfcnt_reg_n_0_[0] ;
  wire \SDA_rfcnt_reg_n_0_[1] ;
  wire \SDA_rfcnt_reg_n_0_[2] ;
  wire \SDA_rfcnt_reg_n_0_[3] ;
  wire \SDA_rfcnt_reg_n_0_[4] ;
  wire SDA_s;
  wire SDA_sync;
  wire clk;
  wire [11:11]data8;
  wire [0:0]data9;
  wire [3:0]p_0_in;
  wire [4:0]reg_addr;
  wire [7:0]reg_dout;
  wire \reg_dout[0]_INST_0_i_10_n_0 ;
  wire \reg_dout[0]_INST_0_i_11_n_0 ;
  wire \reg_dout[0]_INST_0_i_12_n_0 ;
  wire \reg_dout[0]_INST_0_i_1_n_0 ;
  wire \reg_dout[0]_INST_0_i_2_n_0 ;
  wire \reg_dout[0]_INST_0_i_3_n_0 ;
  wire \reg_dout[0]_INST_0_i_4_n_0 ;
  wire \reg_dout[0]_INST_0_i_5_n_0 ;
  wire \reg_dout[0]_INST_0_i_6_n_0 ;
  wire \reg_dout[0]_INST_0_i_7_n_0 ;
  wire \reg_dout[0]_INST_0_i_8_n_0 ;
  wire \reg_dout[0]_INST_0_i_9_n_0 ;
  wire \reg_dout[1]_INST_0_i_10_n_0 ;
  wire \reg_dout[1]_INST_0_i_11_n_0 ;
  wire \reg_dout[1]_INST_0_i_12_n_0 ;
  wire \reg_dout[1]_INST_0_i_1_n_0 ;
  wire \reg_dout[1]_INST_0_i_2_n_0 ;
  wire \reg_dout[1]_INST_0_i_3_n_0 ;
  wire \reg_dout[1]_INST_0_i_4_n_0 ;
  wire \reg_dout[1]_INST_0_i_5_n_0 ;
  wire \reg_dout[1]_INST_0_i_6_n_0 ;
  wire \reg_dout[1]_INST_0_i_7_n_0 ;
  wire \reg_dout[1]_INST_0_i_8_n_0 ;
  wire \reg_dout[1]_INST_0_i_9_n_0 ;
  wire \reg_dout[2]_INST_0_i_10_n_0 ;
  wire \reg_dout[2]_INST_0_i_11_n_0 ;
  wire \reg_dout[2]_INST_0_i_12_n_0 ;
  wire \reg_dout[2]_INST_0_i_1_n_0 ;
  wire \reg_dout[2]_INST_0_i_2_n_0 ;
  wire \reg_dout[2]_INST_0_i_3_n_0 ;
  wire \reg_dout[2]_INST_0_i_4_n_0 ;
  wire \reg_dout[2]_INST_0_i_5_n_0 ;
  wire \reg_dout[2]_INST_0_i_6_n_0 ;
  wire \reg_dout[2]_INST_0_i_7_n_0 ;
  wire \reg_dout[2]_INST_0_i_8_n_0 ;
  wire \reg_dout[2]_INST_0_i_9_n_0 ;
  wire \reg_dout[3]_INST_0_i_10_n_0 ;
  wire \reg_dout[3]_INST_0_i_11_n_0 ;
  wire \reg_dout[3]_INST_0_i_12_n_0 ;
  wire \reg_dout[3]_INST_0_i_1_n_0 ;
  wire \reg_dout[3]_INST_0_i_2_n_0 ;
  wire \reg_dout[3]_INST_0_i_3_n_0 ;
  wire \reg_dout[3]_INST_0_i_4_n_0 ;
  wire \reg_dout[3]_INST_0_i_5_n_0 ;
  wire \reg_dout[3]_INST_0_i_6_n_0 ;
  wire \reg_dout[3]_INST_0_i_7_n_0 ;
  wire \reg_dout[3]_INST_0_i_8_n_0 ;
  wire \reg_dout[3]_INST_0_i_9_n_0 ;
  wire \reg_dout[4]_INST_0_i_10_n_0 ;
  wire \reg_dout[4]_INST_0_i_11_n_0 ;
  wire \reg_dout[4]_INST_0_i_12_n_0 ;
  wire \reg_dout[4]_INST_0_i_1_n_0 ;
  wire \reg_dout[4]_INST_0_i_2_n_0 ;
  wire \reg_dout[4]_INST_0_i_3_n_0 ;
  wire \reg_dout[4]_INST_0_i_4_n_0 ;
  wire \reg_dout[4]_INST_0_i_5_n_0 ;
  wire \reg_dout[4]_INST_0_i_6_n_0 ;
  wire \reg_dout[4]_INST_0_i_7_n_0 ;
  wire \reg_dout[4]_INST_0_i_8_n_0 ;
  wire \reg_dout[4]_INST_0_i_9_n_0 ;
  wire \reg_dout[5]_INST_0_i_10_n_0 ;
  wire \reg_dout[5]_INST_0_i_11_n_0 ;
  wire \reg_dout[5]_INST_0_i_12_n_0 ;
  wire \reg_dout[5]_INST_0_i_1_n_0 ;
  wire \reg_dout[5]_INST_0_i_2_n_0 ;
  wire \reg_dout[5]_INST_0_i_3_n_0 ;
  wire \reg_dout[5]_INST_0_i_4_n_0 ;
  wire \reg_dout[5]_INST_0_i_5_n_0 ;
  wire \reg_dout[5]_INST_0_i_6_n_0 ;
  wire \reg_dout[5]_INST_0_i_7_n_0 ;
  wire \reg_dout[5]_INST_0_i_8_n_0 ;
  wire \reg_dout[5]_INST_0_i_9_n_0 ;
  wire \reg_dout[6]_INST_0_i_10_n_0 ;
  wire \reg_dout[6]_INST_0_i_11_n_0 ;
  wire \reg_dout[6]_INST_0_i_12_n_0 ;
  wire \reg_dout[6]_INST_0_i_1_n_0 ;
  wire \reg_dout[6]_INST_0_i_2_n_0 ;
  wire \reg_dout[6]_INST_0_i_3_n_0 ;
  wire \reg_dout[6]_INST_0_i_4_n_0 ;
  wire \reg_dout[6]_INST_0_i_5_n_0 ;
  wire \reg_dout[6]_INST_0_i_6_n_0 ;
  wire \reg_dout[6]_INST_0_i_7_n_0 ;
  wire \reg_dout[6]_INST_0_i_8_n_0 ;
  wire \reg_dout[6]_INST_0_i_9_n_0 ;
  wire \reg_dout[7]_INST_0_i_10_n_0 ;
  wire \reg_dout[7]_INST_0_i_11_n_0 ;
  wire \reg_dout[7]_INST_0_i_12_n_0 ;
  wire \reg_dout[7]_INST_0_i_1_n_0 ;
  wire \reg_dout[7]_INST_0_i_2_n_0 ;
  wire \reg_dout[7]_INST_0_i_3_n_0 ;
  wire \reg_dout[7]_INST_0_i_4_n_0 ;
  wire \reg_dout[7]_INST_0_i_5_n_0 ;
  wire \reg_dout[7]_INST_0_i_6_n_0 ;
  wire \reg_dout[7]_INST_0_i_7_n_0 ;
  wire \reg_dout[7]_INST_0_i_8_n_0 ;
  wire \reg_dout[7]_INST_0_i_9_n_0 ;
  wire reset;

  LUT6 #(
    .INIT(64'h0000000002000000)) 
    Aksv14_write_i_1
       (.I0(\I2C_addr_reg_n_0_[4] ),
        .I1(\I2C_addr_reg_n_0_[3] ),
        .I2(\I2C_addr_reg_n_0_[0] ),
        .I3(\I2C_addr_reg_n_0_[2] ),
        .I4(Aksv14_write1__12),
        .I5(Aksv14_write_i_2_n_0),
        .O(Aksv14_write0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    Aksv14_write_i_2
       (.I0(\I2C_addr_reg_n_0_[1] ),
        .I1(\I2C_addr_reg_n_0_[7] ),
        .I2(\I2C_addr_reg_n_0_[5] ),
        .I3(\I2C_addr_reg_n_0_[6] ),
        .O(Aksv14_write_i_2_n_0));
  FDRE Aksv14_write_reg
       (.C(clk),
        .CE(1'b1),
        .D(Aksv14_write0),
        .Q(Aksv14_write),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00080338)) 
    \I2C_addr[0]_i_1 
       (.I0(\I2C_addr[0]_i_2_n_0 ),
        .I1(I2C_cstate[4]),
        .I2(I2C_cstate[11]),
        .I3(I2C_cstate[8]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .O(\I2C_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \I2C_addr[0]_i_2 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\I2C_addr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h001414A0)) 
    \I2C_addr[1]_i_1 
       (.I0(I2C_cstate[4]),
        .I1(\I2C_addr_reg_n_0_[1] ),
        .I2(\I2C_addr_reg_n_0_[0] ),
        .I3(I2C_cstate[11]),
        .I4(I2C_cstate[8]),
        .O(\I2C_addr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000014441444A0A0)) 
    \I2C_addr[2]_i_1 
       (.I0(I2C_cstate[4]),
        .I1(\I2C_addr_reg_n_0_[2] ),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_addr_reg_n_0_[0] ),
        .I4(I2C_cstate[11]),
        .I5(I2C_cstate[8]),
        .O(\I2C_addr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000044144414A0A0)) 
    \I2C_addr[3]_i_1 
       (.I0(I2C_cstate[4]),
        .I1(\I2C_addr_reg_n_0_[3] ),
        .I2(\I2C_addr_reg_n_0_[2] ),
        .I3(\I2C_addr[3]_i_2_n_0 ),
        .I4(I2C_cstate[11]),
        .I5(I2C_cstate[8]),
        .O(\I2C_addr[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \I2C_addr[3]_i_2 
       (.I0(\I2C_addr_reg_n_0_[1] ),
        .I1(\I2C_addr_reg_n_0_[0] ),
        .O(\I2C_addr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000033003308888)) 
    \I2C_addr[4]_i_1 
       (.I0(\I2C_addr_reg_n_0_[3] ),
        .I1(I2C_cstate[4]),
        .I2(\I2C_addr_reg_n_0_[4] ),
        .I3(\I2C_addr[4]_i_2_n_0 ),
        .I4(I2C_cstate[11]),
        .I5(I2C_cstate[8]),
        .O(\I2C_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \I2C_addr[4]_i_2 
       (.I0(\I2C_addr_reg_n_0_[3] ),
        .I1(\I2C_addr_reg_n_0_[1] ),
        .I2(\I2C_addr_reg_n_0_[0] ),
        .I3(\I2C_addr_reg_n_0_[2] ),
        .O(\I2C_addr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000033003308888)) 
    \I2C_addr[5]_i_1 
       (.I0(\I2C_addr_reg_n_0_[4] ),
        .I1(I2C_cstate[4]),
        .I2(\I2C_addr_reg_n_0_[5] ),
        .I3(\I2C_addr[5]_i_2_n_0 ),
        .I4(I2C_cstate[11]),
        .I5(I2C_cstate[8]),
        .O(\I2C_addr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \I2C_addr[5]_i_2 
       (.I0(\I2C_addr_reg_n_0_[4] ),
        .I1(\I2C_addr_reg_n_0_[2] ),
        .I2(\I2C_addr_reg_n_0_[0] ),
        .I3(\I2C_addr_reg_n_0_[1] ),
        .I4(\I2C_addr_reg_n_0_[3] ),
        .O(\I2C_addr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000033003308888)) 
    \I2C_addr[6]_i_1 
       (.I0(\I2C_addr_reg_n_0_[5] ),
        .I1(I2C_cstate[4]),
        .I2(\I2C_addr_reg_n_0_[6] ),
        .I3(\I2C_addr[7]_i_11_n_0 ),
        .I4(I2C_cstate[11]),
        .I5(I2C_cstate[8]),
        .O(\I2C_addr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFF888)) 
    \I2C_addr[7]_i_1 
       (.I0(\I2C_addr[7]_i_4_n_0 ),
        .I1(I2C_cstate[2]),
        .I2(\I2C_addr[7]_i_5_n_0 ),
        .I3(\I2C_addr[7]_i_6_n_0 ),
        .I4(\I2C_addr[7]_i_7_n_0 ),
        .I5(\I2C_addr[7]_i_8_n_0 ),
        .O(\I2C_addr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000003)) 
    \I2C_addr[7]_i_10 
       (.I0(I2C_cstate[5]),
        .I1(I2C_cstate[7]),
        .I2(\I2C_addr[7]_i_26_n_0 ),
        .I3(I2C_cstate[6]),
        .I4(I2C_cstate[4]),
        .I5(I2C_cstate[3]),
        .O(\I2C_addr[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \I2C_addr[7]_i_11 
       (.I0(\I2C_addr_reg_n_0_[5] ),
        .I1(\I2C_addr_reg_n_0_[3] ),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_addr_reg_n_0_[0] ),
        .I4(\I2C_addr_reg_n_0_[2] ),
        .I5(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_addr[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \I2C_addr[7]_i_12 
       (.I0(I2C_cstate[10]),
        .I1(I2C_cstate[12]),
        .I2(I2C_cstate[13]),
        .I3(I2C_cstate[11]),
        .O(\I2C_addr[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_addr[7]_i_13 
       (.I0(I2C_cstate[9]),
        .I1(I2C_cstate[8]),
        .O(\I2C_addr[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \I2C_addr[7]_i_14 
       (.I0(I2C_cstate[2]),
        .I1(\I2C_rdata[7]_i_8_n_0 ),
        .I2(I2C_cstate[6]),
        .I3(\I2C_addr[7]_i_26_n_0 ),
        .I4(I2C_cstate[7]),
        .I5(I2C_cstate[3]),
        .O(\I2C_addr[7]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \I2C_addr[7]_i_15 
       (.I0(I2C_cstate[4]),
        .I1(I2C_cstate[3]),
        .I2(I2C_cstate[5]),
        .O(\I2C_addr[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \I2C_addr[7]_i_16 
       (.I0(I2C_cstate[7]),
        .I1(I2C_cstate[10]),
        .I2(I2C_reg_update_i_2_n_0),
        .I3(I2C_cstate[11]),
        .I4(I2C_cstate[9]),
        .I5(I2C_cstate[8]),
        .O(\I2C_addr[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEEE)) 
    \I2C_addr[7]_i_17 
       (.I0(\I2C_addr[7]_i_27_n_0 ),
        .I1(I2C_cstate[7]),
        .I2(I2C_cstate[12]),
        .I3(I2C_cstate[13]),
        .I4(I2C_cstate[10]),
        .I5(\I2C_addr[7]_i_13_n_0 ),
        .O(\I2C_addr[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000101000001FF)) 
    \I2C_addr[7]_i_18 
       (.I0(\I2C_addr[7]_i_12_n_0 ),
        .I1(I2C_cstate[9]),
        .I2(I2C_cstate[8]),
        .I3(\I2C_addr[7]_i_28_n_0 ),
        .I4(I2C_cstate[6]),
        .I5(I2C_cstate[11]),
        .O(\I2C_addr[7]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \I2C_addr[7]_i_19 
       (.I0(I2C_cstate[6]),
        .I1(I2C_cstate[7]),
        .I2(I2C_cstate[3]),
        .I3(I2C_cstate[5]),
        .O(\I2C_addr[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAAAAAFFEAEAAA)) 
    \I2C_addr[7]_i_2 
       (.I0(\I2C_addr[7]_i_7_n_0 ),
        .I1(\I2C_addr[7]_i_6_n_0 ),
        .I2(\I2C_addr[7]_i_9_n_0 ),
        .I3(\I2C_addr[7]_i_4_n_0 ),
        .I4(I2C_cstate[2]),
        .I5(\I2C_addr[7]_i_10_n_0 ),
        .O(I2C_addr));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_addr[7]_i_20 
       (.I0(I2C_cstate[11]),
        .I1(I2C_cstate[10]),
        .O(\I2C_addr[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \I2C_addr[7]_i_21 
       (.I0(\I2C_addr[7]_i_22_n_0 ),
        .I1(I2C_cstate[3]),
        .I2(I2C_cstate[4]),
        .I3(I2C_cstate[2]),
        .I4(I2C_cstate[13]),
        .I5(I2C_cstate[12]),
        .O(\I2C_addr[7]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \I2C_addr[7]_i_22 
       (.I0(I2C_cstate[7]),
        .I1(I2C_cstate[9]),
        .I2(I2C_cstate[5]),
        .I3(I2C_cstate[6]),
        .O(\I2C_addr[7]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \I2C_addr[7]_i_23 
       (.I0(I2C_cstate[3]),
        .I1(I2C_cstate[4]),
        .O(\I2C_addr[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \I2C_addr[7]_i_24 
       (.I0(I2C_cstate[6]),
        .I1(I2C_cstate[8]),
        .I2(I2C_cstate[9]),
        .I3(I2C_cstate[11]),
        .I4(I2C_reg_update_i_2_n_0),
        .I5(I2C_cstate[10]),
        .O(\I2C_addr[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \I2C_addr[7]_i_25 
       (.I0(I2C_cstate[11]),
        .I1(I2C_cstate[6]),
        .I2(I2C_cstate[7]),
        .I3(I2C_reg_update_i_2_n_0),
        .I4(I2C_cstate[10]),
        .I5(I2C_cstate[8]),
        .O(\I2C_addr[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \I2C_addr[7]_i_26 
       (.I0(I2C_cstate[8]),
        .I1(I2C_cstate[9]),
        .I2(I2C_cstate[11]),
        .I3(I2C_cstate[13]),
        .I4(I2C_cstate[12]),
        .I5(I2C_cstate[10]),
        .O(\I2C_addr[7]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_addr[7]_i_27 
       (.I0(I2C_cstate[6]),
        .I1(I2C_cstate[11]),
        .O(\I2C_addr[7]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \I2C_addr[7]_i_28 
       (.I0(I2C_cstate[8]),
        .I1(I2C_cstate[10]),
        .I2(I2C_cstate[12]),
        .I3(I2C_cstate[13]),
        .I4(I2C_cstate[7]),
        .O(\I2C_addr[7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h000014441444A0A0)) 
    \I2C_addr[7]_i_3 
       (.I0(I2C_cstate[4]),
        .I1(\I2C_addr_reg_n_0_[7] ),
        .I2(\I2C_addr_reg_n_0_[6] ),
        .I3(\I2C_addr[7]_i_11_n_0 ),
        .I4(I2C_cstate[11]),
        .I5(I2C_cstate[8]),
        .O(\I2C_addr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \I2C_addr[7]_i_4 
       (.I0(I2C_cstate[3]),
        .I1(I2C_cstate[7]),
        .I2(\I2C_addr[7]_i_12_n_0 ),
        .I3(\I2C_addr[7]_i_13_n_0 ),
        .I4(I2C_cstate[6]),
        .I5(\I2C_rdata[7]_i_8_n_0 ),
        .O(\I2C_addr[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0404040444040404)) 
    \I2C_addr[7]_i_5 
       (.I0(\I2C_addr[7]_i_10_n_0 ),
        .I1(\I2C_addr[7]_i_14_n_0 ),
        .I2(\I2C_addr[7]_i_15_n_0 ),
        .I3(\I2C_addr[7]_i_16_n_0 ),
        .I4(\I2C_addr[7]_i_17_n_0 ),
        .I5(\I2C_addr[7]_i_18_n_0 ),
        .O(\I2C_addr[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \I2C_addr[7]_i_6 
       (.I0(\I2C_daddr[7]_i_17_n_0 ),
        .I1(I2C_cstate[12]),
        .I2(I2C_cstate[13]),
        .I3(\I2C_addr[7]_i_19_n_0 ),
        .I4(\I2C_addr[7]_i_20_n_0 ),
        .I5(\I2C_addr[7]_i_13_n_0 ),
        .O(\I2C_addr[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFF0E1E1)) 
    \I2C_addr[7]_i_7 
       (.I0(I2C_cstate[10]),
        .I1(\I2C_addr[7]_i_21_n_0 ),
        .I2(I2C_cstate[0]),
        .I3(\I2C_addr[7]_i_14_n_0 ),
        .I4(I2C_cstate[1]),
        .O(\I2C_addr[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \I2C_addr[7]_i_8 
       (.I0(I2C_cstate[13]),
        .I1(I2C_cstate[10]),
        .I2(I2C_cstate[12]),
        .I3(\I2C_rdata[7]_i_5_n_0 ),
        .I4(\I2C_addr[7]_i_22_n_0 ),
        .O(\I2C_addr[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFDDDDDDDDDDDDDDD)) 
    \I2C_addr[7]_i_9 
       (.I0(\I2C_addr[7]_i_23_n_0 ),
        .I1(I2C_cstate[5]),
        .I2(\I2C_addr[7]_i_16_n_0 ),
        .I3(\I2C_addr[7]_i_17_n_0 ),
        .I4(\I2C_addr[7]_i_24_n_0 ),
        .I5(\I2C_addr[7]_i_25_n_0 ),
        .O(\I2C_addr[7]_i_9_n_0 ));
  FDRE \I2C_addr_reg[0] 
       (.C(clk),
        .CE(I2C_addr),
        .D(\I2C_addr[0]_i_1_n_0 ),
        .Q(\I2C_addr_reg_n_0_[0] ),
        .R(\I2C_addr[7]_i_1_n_0 ));
  FDRE \I2C_addr_reg[1] 
       (.C(clk),
        .CE(I2C_addr),
        .D(\I2C_addr[1]_i_1_n_0 ),
        .Q(\I2C_addr_reg_n_0_[1] ),
        .R(\I2C_addr[7]_i_1_n_0 ));
  FDRE \I2C_addr_reg[2] 
       (.C(clk),
        .CE(I2C_addr),
        .D(\I2C_addr[2]_i_1_n_0 ),
        .Q(\I2C_addr_reg_n_0_[2] ),
        .R(\I2C_addr[7]_i_1_n_0 ));
  FDRE \I2C_addr_reg[3] 
       (.C(clk),
        .CE(I2C_addr),
        .D(\I2C_addr[3]_i_1_n_0 ),
        .Q(\I2C_addr_reg_n_0_[3] ),
        .R(\I2C_addr[7]_i_1_n_0 ));
  FDRE \I2C_addr_reg[4] 
       (.C(clk),
        .CE(I2C_addr),
        .D(\I2C_addr[4]_i_1_n_0 ),
        .Q(\I2C_addr_reg_n_0_[4] ),
        .R(\I2C_addr[7]_i_1_n_0 ));
  FDRE \I2C_addr_reg[5] 
       (.C(clk),
        .CE(I2C_addr),
        .D(\I2C_addr[5]_i_1_n_0 ),
        .Q(\I2C_addr_reg_n_0_[5] ),
        .R(\I2C_addr[7]_i_1_n_0 ));
  FDRE \I2C_addr_reg[6] 
       (.C(clk),
        .CE(I2C_addr),
        .D(\I2C_addr[6]_i_1_n_0 ),
        .Q(\I2C_addr_reg_n_0_[6] ),
        .R(\I2C_addr[7]_i_1_n_0 ));
  FDRE \I2C_addr_reg[7] 
       (.C(clk),
        .CE(I2C_addr),
        .D(\I2C_addr[7]_i_3_n_0 ),
        .Q(\I2C_addr_reg_n_0_[7] ),
        .R(\I2C_addr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \I2C_bitcnt[0]_i_1 
       (.I0(I2C_cstate[13]),
        .I1(I2C_cstate[0]),
        .I2(\I2C_bitcnt_reg_n_0_[0] ),
        .I3(\I2C_bitcnt[3]_i_9_n_0 ),
        .O(\I2C_bitcnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000110)) 
    \I2C_bitcnt[1]_i_1 
       (.I0(I2C_cstate[13]),
        .I1(I2C_cstate[0]),
        .I2(\I2C_bitcnt_reg_n_0_[0] ),
        .I3(\I2C_bitcnt_reg_n_0_[1] ),
        .I4(\I2C_bitcnt[3]_i_9_n_0 ),
        .O(\I2C_bitcnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001111000)) 
    \I2C_bitcnt[2]_i_1 
       (.I0(I2C_cstate[13]),
        .I1(I2C_cstate[0]),
        .I2(\I2C_bitcnt_reg_n_0_[0] ),
        .I3(\I2C_bitcnt_reg_n_0_[1] ),
        .I4(\I2C_bitcnt_reg_n_0_[2] ),
        .I5(\I2C_bitcnt[3]_i_9_n_0 ),
        .O(\I2C_bitcnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF0EEE0E00F)) 
    \I2C_bitcnt[3]_i_1 
       (.I0(\I2C_bitcnt[3]_i_4_n_0 ),
        .I1(\I2C_bitcnt[3]_i_5_n_0 ),
        .I2(I2C_cstate[9]),
        .I3(I2C_cstate[6]),
        .I4(I2C_cstate[4]),
        .I5(I2C_cstate[2]),
        .O(\I2C_bitcnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_bitcnt[3]_i_10 
       (.I0(I2C_cstate[8]),
        .I1(I2C_cstate[7]),
        .O(\I2C_bitcnt[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \I2C_bitcnt[3]_i_11 
       (.I0(I2C_cstate[13]),
        .I1(I2C_cstate[11]),
        .I2(I2C_cstate[10]),
        .I3(\I2C_daddr[7]_i_17_n_0 ),
        .I4(I2C_cstate[12]),
        .O(\I2C_bitcnt[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \I2C_bitcnt[3]_i_12 
       (.I0(I2C_cstate[8]),
        .I1(I2C_cstate[10]),
        .I2(I2C_cstate[11]),
        .I3(I2C_cstate[12]),
        .O(\I2C_bitcnt[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFEFF)) 
    \I2C_bitcnt[3]_i_2 
       (.I0(\I2C_bitcnt[3]_i_6_n_0 ),
        .I1(I2C_cstate[3]),
        .I2(\I2C_bitcnt[3]_i_4_n_0 ),
        .I3(I2C_cstate[2]),
        .I4(\I2C_bitcnt[3]_i_7_n_0 ),
        .I5(I2C_cstate[6]),
        .O(I2C_bitcnt));
  LUT6 #(
    .INIT(64'h000000002AAA8000)) 
    \I2C_bitcnt[3]_i_3 
       (.I0(\I2C_bitcnt[3]_i_8_n_0 ),
        .I1(\I2C_bitcnt_reg_n_0_[1] ),
        .I2(\I2C_bitcnt_reg_n_0_[0] ),
        .I3(\I2C_bitcnt_reg_n_0_[2] ),
        .I4(\I2C_bitcnt_reg_n_0_[3] ),
        .I5(\I2C_bitcnt[3]_i_9_n_0 ),
        .O(\I2C_bitcnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFA)) 
    \I2C_bitcnt[3]_i_4 
       (.I0(I2C_cstate[5]),
        .I1(I2C_cstate[4]),
        .I2(\I2C_bitcnt[3]_i_10_n_0 ),
        .I3(\I2C_bitcnt[3]_i_11_n_0 ),
        .I4(I2C_cstate[6]),
        .I5(I2C_cstate[9]),
        .O(\I2C_bitcnt[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \I2C_bitcnt[3]_i_5 
       (.I0(I2C_cstate[3]),
        .I1(I2C_cstate[0]),
        .I2(I2C_cstate[1]),
        .O(\I2C_bitcnt[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_bitcnt[3]_i_6 
       (.I0(I2C_cstate[1]),
        .I1(I2C_cstate[0]),
        .O(\I2C_bitcnt[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_bitcnt[3]_i_7 
       (.I0(I2C_cstate[9]),
        .I1(I2C_cstate[4]),
        .O(\I2C_bitcnt[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \I2C_bitcnt[3]_i_8 
       (.I0(I2C_cstate[13]),
        .I1(I2C_cstate[0]),
        .O(\I2C_bitcnt[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \I2C_bitcnt[3]_i_9 
       (.I0(\I2C_bitcnt[3]_i_12_n_0 ),
        .I1(I2C_cstate[3]),
        .I2(I2C_cstate[1]),
        .I3(I2C_cstate[7]),
        .I4(I2C_cstate[5]),
        .O(\I2C_bitcnt[3]_i_9_n_0 ));
  FDRE \I2C_bitcnt_reg[0] 
       (.C(clk),
        .CE(I2C_bitcnt),
        .D(\I2C_bitcnt[0]_i_1_n_0 ),
        .Q(\I2C_bitcnt_reg_n_0_[0] ),
        .R(\I2C_bitcnt[3]_i_1_n_0 ));
  FDRE \I2C_bitcnt_reg[1] 
       (.C(clk),
        .CE(I2C_bitcnt),
        .D(\I2C_bitcnt[1]_i_1_n_0 ),
        .Q(\I2C_bitcnt_reg_n_0_[1] ),
        .R(\I2C_bitcnt[3]_i_1_n_0 ));
  FDRE \I2C_bitcnt_reg[2] 
       (.C(clk),
        .CE(I2C_bitcnt),
        .D(\I2C_bitcnt[2]_i_1_n_0 ),
        .Q(\I2C_bitcnt_reg_n_0_[2] ),
        .R(\I2C_bitcnt[3]_i_1_n_0 ));
  FDRE \I2C_bitcnt_reg[3] 
       (.C(clk),
        .CE(I2C_bitcnt),
        .D(\I2C_bitcnt[3]_i_3_n_0 ),
        .Q(\I2C_bitcnt_reg_n_0_[3] ),
        .R(\I2C_bitcnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \I2C_cstate[0]_i_1 
       (.I0(\I2C_cstate[13]_i_6_n_0 ),
        .I1(I2C_cstate[0]),
        .I2(I2C_cstate[13]),
        .I3(\I2C_cstate[13]_i_3_n_0 ),
        .I4(I2C_cstate[11]),
        .I5(data9),
        .O(I2C_nstate[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h20FF2020)) 
    \I2C_cstate[10]_i_1 
       (.I0(I2C_nstate2__0),
        .I1(\I2C_cstate[13]_i_6_n_0 ),
        .I2(I2C_cstate[9]),
        .I3(data8),
        .I4(I2C_cstate[10]),
        .O(I2C_nstate[10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \I2C_cstate[10]_i_2 
       (.I0(\I2C_bitcnt_reg_n_0_[3] ),
        .I1(SCL_cstate[1]),
        .I2(SCL_cstate[3]),
        .I3(SCL_cstate[2]),
        .I4(SCL_cstate[0]),
        .O(I2C_nstate2__0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \I2C_cstate[10]_i_3 
       (.I0(SCL_cstate[2]),
        .I1(SCL_cstate[1]),
        .I2(SCL_cstate[3]),
        .I3(SCL_cstate[0]),
        .O(data8));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \I2C_cstate[11]_i_1 
       (.I0(I2C_cstate[10]),
        .I1(SCL_cstate[0]),
        .I2(SCL_cstate[3]),
        .I3(SCL_cstate[1]),
        .I4(SCL_cstate[2]),
        .O(I2C_nstate[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \I2C_cstate[12]_i_1 
       (.I0(data9),
        .I1(I2C_cstate[11]),
        .I2(\I2C_cstate[13]_i_4_n_0 ),
        .I3(I2C_cstate[12]),
        .O(I2C_nstate[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \I2C_cstate[12]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .O(data9));
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_cstate[13]_i_1 
       (.I0(reset),
        .I1(\I2C_cstate[13]_i_3_n_0 ),
        .O(I2C_cstate0));
  LUT6 #(
    .INIT(64'h202020FF20202020)) 
    \I2C_cstate[13]_i_2 
       (.I0(\I2C_cstate[13]_i_4_n_0 ),
        .I1(\I2C_cstate[13]_i_5_n_0 ),
        .I2(I2C_cstate[3]),
        .I3(\I2C_cstate[13]_i_6_n_0 ),
        .I4(\I2C_cstate[13]_i_3_n_0 ),
        .I5(I2C_cstate[13]),
        .O(I2C_nstate[13]));
  LUT3 #(
    .INIT(8'h40)) 
    \I2C_cstate[13]_i_3 
       (.I0(p_0_in[1]),
        .I1(\I2C_cstate[1]_i_2_n_0 ),
        .I2(p_0_in[3]),
        .O(\I2C_cstate[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \I2C_cstate[13]_i_4 
       (.I0(SCL_cstate[2]),
        .I1(SCL_cstate[3]),
        .I2(SCL_cstate[1]),
        .I3(SCL_cstate[0]),
        .O(\I2C_cstate[13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \I2C_cstate[13]_i_5 
       (.I0(\I2C_daddr_reg_n_0_[7] ),
        .I1(\I2C_daddr_reg_n_0_[1] ),
        .I2(\I2C_daddr_reg_n_0_[3] ),
        .I3(\I2C_cstate[13]_i_7_n_0 ),
        .O(\I2C_cstate[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \I2C_cstate[13]_i_6 
       (.I0(p_0_in[3]),
        .I1(\I2C_cstate[1]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .O(\I2C_cstate[13]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \I2C_cstate[13]_i_7 
       (.I0(\I2C_daddr_reg_n_0_[4] ),
        .I1(\I2C_daddr_reg_n_0_[2] ),
        .I2(\I2C_daddr_reg_n_0_[6] ),
        .I3(\I2C_daddr_reg_n_0_[5] ),
        .O(\I2C_cstate[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000F0000000E000)) 
    \I2C_cstate[1]_i_1 
       (.I0(I2C_cstate[6]),
        .I1(I2C_cstate[13]),
        .I2(p_0_in[1]),
        .I3(\I2C_cstate[1]_i_2_n_0 ),
        .I4(p_0_in[3]),
        .I5(I2C_cstate[9]),
        .O(I2C_nstate[1]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \I2C_cstate[1]_i_2 
       (.I0(SCL_cstate[0]),
        .I1(SCL_cstate[3]),
        .I2(SCL_cstate[2]),
        .I3(SCL_cstate[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\I2C_cstate[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \I2C_cstate[2]_i_1 
       (.I0(\I2C_cstate[13]_i_6_n_0 ),
        .I1(I2C_cstate[0]),
        .I2(I2C_cstate[2]),
        .I3(I2C_nstate2__0),
        .I4(I2C_cstate[1]),
        .O(I2C_nstate[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \I2C_cstate[3]_i_1 
       (.I0(I2C_nstate2__0),
        .I1(I2C_cstate[2]),
        .I2(\I2C_cstate[13]_i_4_n_0 ),
        .I3(I2C_cstate[3]),
        .O(I2C_nstate[3]));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \I2C_cstate[4]_i_1 
       (.I0(\I2C_cstate[13]_i_5_n_0 ),
        .I1(\I2C_cstate[13]_i_4_n_0 ),
        .I2(\I2C_daddr_reg_n_0_[0] ),
        .I3(I2C_cstate[3]),
        .I4(I2C_nstate2__0),
        .I5(I2C_cstate[4]),
        .O(I2C_nstate[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \I2C_cstate[5]_i_1 
       (.I0(I2C_nstate2__0),
        .I1(I2C_cstate[4]),
        .I2(\I2C_cstate[13]_i_4_n_0 ),
        .I3(I2C_cstate[5]),
        .O(I2C_nstate[5]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8F8FFF8)) 
    \I2C_cstate[6]_i_1 
       (.I0(\I2C_cstate[13]_i_4_n_0 ),
        .I1(I2C_cstate[5]),
        .I2(I2C_cstate[8]),
        .I3(I2C_cstate[6]),
        .I4(I2C_nstate2__0),
        .I5(\I2C_cstate[13]_i_6_n_0 ),
        .O(I2C_nstate[6]));
  LUT5 #(
    .INIT(32'h20FF2020)) 
    \I2C_cstate[7]_i_1 
       (.I0(I2C_nstate2__0),
        .I1(\I2C_cstate[13]_i_6_n_0 ),
        .I2(I2C_cstate[6]),
        .I3(\I2C_cstate[13]_i_4_n_0 ),
        .I4(I2C_cstate[7]),
        .O(I2C_nstate[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \I2C_cstate[8]_i_1 
       (.I0(I2C_cstate[7]),
        .I1(SCL_cstate[0]),
        .I2(SCL_cstate[1]),
        .I3(SCL_cstate[3]),
        .I4(SCL_cstate[2]),
        .O(I2C_nstate[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF800000)) 
    \I2C_cstate[9]_i_1 
       (.I0(\I2C_cstate[13]_i_5_n_0 ),
        .I1(\I2C_daddr_reg_n_0_[0] ),
        .I2(I2C_cstate[3]),
        .I3(I2C_cstate[12]),
        .I4(\I2C_cstate[13]_i_4_n_0 ),
        .I5(\I2C_cstate[9]_i_2_n_0 ),
        .O(I2C_nstate[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \I2C_cstate[9]_i_2 
       (.I0(I2C_cstate[9]),
        .I1(\I2C_cstate[13]_i_6_n_0 ),
        .I2(I2C_nstate2__0),
        .O(\I2C_cstate[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \I2C_cstate_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(I2C_nstate[0]),
        .Q(I2C_cstate[0]),
        .S(I2C_cstate0));
  FDRE #(
    .INIT(1'b0)) 
    \I2C_cstate_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(I2C_nstate[10]),
        .Q(I2C_cstate[10]),
        .R(I2C_cstate0));
  FDRE #(
    .INIT(1'b0)) 
    \I2C_cstate_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(I2C_nstate[11]),
        .Q(I2C_cstate[11]),
        .R(I2C_cstate0));
  FDRE #(
    .INIT(1'b0)) 
    \I2C_cstate_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(I2C_nstate[12]),
        .Q(I2C_cstate[12]),
        .R(I2C_cstate0));
  FDRE #(
    .INIT(1'b0)) 
    \I2C_cstate_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(I2C_nstate[13]),
        .Q(I2C_cstate[13]),
        .R(I2C_cstate0));
  FDRE #(
    .INIT(1'b0)) 
    \I2C_cstate_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(I2C_nstate[1]),
        .Q(I2C_cstate[1]),
        .R(I2C_cstate0));
  FDRE #(
    .INIT(1'b0)) 
    \I2C_cstate_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(I2C_nstate[2]),
        .Q(I2C_cstate[2]),
        .R(I2C_cstate0));
  FDRE #(
    .INIT(1'b0)) 
    \I2C_cstate_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(I2C_nstate[3]),
        .Q(I2C_cstate[3]),
        .R(I2C_cstate0));
  FDRE #(
    .INIT(1'b0)) 
    \I2C_cstate_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(I2C_nstate[4]),
        .Q(I2C_cstate[4]),
        .R(I2C_cstate0));
  FDRE #(
    .INIT(1'b0)) 
    \I2C_cstate_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(I2C_nstate[5]),
        .Q(I2C_cstate[5]),
        .R(I2C_cstate0));
  FDRE #(
    .INIT(1'b0)) 
    \I2C_cstate_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(I2C_nstate[6]),
        .Q(I2C_cstate[6]),
        .R(I2C_cstate0));
  FDRE #(
    .INIT(1'b0)) 
    \I2C_cstate_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(I2C_nstate[7]),
        .Q(I2C_cstate[7]),
        .R(I2C_cstate0));
  FDRE #(
    .INIT(1'b0)) 
    \I2C_cstate_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(I2C_nstate[8]),
        .Q(I2C_cstate[8]),
        .R(I2C_cstate0));
  FDRE #(
    .INIT(1'b0)) 
    \I2C_cstate_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(I2C_nstate[9]),
        .Q(I2C_cstate[9]),
        .R(I2C_cstate0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \I2C_daddr[0]_i_1 
       (.I0(\I2C_daddr[7]_i_8_n_0 ),
        .I1(\I2C_daddr[7]_i_9_n_0 ),
        .I2(\I2C_daddr[0]_i_2_n_0 ),
        .I3(\I2C_daddr[7]_i_11_n_0 ),
        .I4(\I2C_daddr[7]_i_12_n_0 ),
        .I5(I2C_cstate[12]),
        .O(\I2C_daddr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \I2C_daddr[0]_i_2 
       (.I0(\I2C_daddr[7]_i_18_n_0 ),
        .I1(I2C_cstate[0]),
        .I2(\I2C_addr[0]_i_2_n_0 ),
        .I3(I2C_cstate[2]),
        .I4(I2C_cstate[1]),
        .I5(\I2C_daddr[7]_i_19_n_0 ),
        .O(\I2C_daddr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \I2C_daddr[1]_i_1 
       (.I0(\I2C_daddr[7]_i_8_n_0 ),
        .I1(\I2C_daddr[7]_i_9_n_0 ),
        .I2(\I2C_daddr[1]_i_2_n_0 ),
        .I3(\I2C_daddr[7]_i_11_n_0 ),
        .I4(\I2C_daddr[7]_i_12_n_0 ),
        .I5(I2C_cstate[12]),
        .O(\I2C_daddr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \I2C_daddr[1]_i_2 
       (.I0(\I2C_daddr[7]_i_18_n_0 ),
        .I1(I2C_cstate[0]),
        .I2(\I2C_daddr_reg_n_0_[0] ),
        .I3(I2C_cstate[2]),
        .I4(I2C_cstate[1]),
        .I5(\I2C_daddr[7]_i_19_n_0 ),
        .O(\I2C_daddr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \I2C_daddr[2]_i_1 
       (.I0(\I2C_daddr[7]_i_8_n_0 ),
        .I1(\I2C_daddr[7]_i_9_n_0 ),
        .I2(\I2C_daddr[2]_i_2_n_0 ),
        .I3(\I2C_daddr[7]_i_11_n_0 ),
        .I4(\I2C_daddr[7]_i_12_n_0 ),
        .I5(I2C_cstate[12]),
        .O(\I2C_daddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \I2C_daddr[2]_i_2 
       (.I0(\I2C_daddr[7]_i_18_n_0 ),
        .I1(I2C_cstate[0]),
        .I2(\I2C_daddr_reg_n_0_[1] ),
        .I3(I2C_cstate[2]),
        .I4(I2C_cstate[1]),
        .I5(\I2C_daddr[7]_i_19_n_0 ),
        .O(\I2C_daddr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \I2C_daddr[3]_i_1 
       (.I0(\I2C_daddr[7]_i_8_n_0 ),
        .I1(\I2C_daddr[7]_i_9_n_0 ),
        .I2(\I2C_daddr[3]_i_2_n_0 ),
        .I3(\I2C_daddr[7]_i_11_n_0 ),
        .I4(\I2C_daddr[7]_i_12_n_0 ),
        .I5(I2C_cstate[12]),
        .O(\I2C_daddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \I2C_daddr[3]_i_2 
       (.I0(\I2C_daddr[7]_i_18_n_0 ),
        .I1(I2C_cstate[0]),
        .I2(\I2C_daddr_reg_n_0_[2] ),
        .I3(I2C_cstate[2]),
        .I4(I2C_cstate[1]),
        .I5(\I2C_daddr[7]_i_19_n_0 ),
        .O(\I2C_daddr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \I2C_daddr[4]_i_1 
       (.I0(\I2C_daddr[7]_i_8_n_0 ),
        .I1(\I2C_daddr[7]_i_9_n_0 ),
        .I2(\I2C_daddr[4]_i_2_n_0 ),
        .I3(\I2C_daddr[7]_i_11_n_0 ),
        .I4(\I2C_daddr[7]_i_12_n_0 ),
        .I5(I2C_cstate[12]),
        .O(\I2C_daddr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \I2C_daddr[4]_i_2 
       (.I0(\I2C_daddr[7]_i_18_n_0 ),
        .I1(I2C_cstate[0]),
        .I2(\I2C_daddr_reg_n_0_[3] ),
        .I3(I2C_cstate[2]),
        .I4(I2C_cstate[1]),
        .I5(\I2C_daddr[7]_i_19_n_0 ),
        .O(\I2C_daddr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \I2C_daddr[5]_i_1 
       (.I0(\I2C_daddr[7]_i_8_n_0 ),
        .I1(\I2C_daddr[7]_i_9_n_0 ),
        .I2(\I2C_daddr[5]_i_2_n_0 ),
        .I3(\I2C_daddr[7]_i_11_n_0 ),
        .I4(\I2C_daddr[7]_i_12_n_0 ),
        .I5(I2C_cstate[12]),
        .O(\I2C_daddr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \I2C_daddr[5]_i_2 
       (.I0(\I2C_daddr[7]_i_18_n_0 ),
        .I1(I2C_cstate[0]),
        .I2(\I2C_daddr_reg_n_0_[4] ),
        .I3(I2C_cstate[2]),
        .I4(I2C_cstate[1]),
        .I5(\I2C_daddr[7]_i_19_n_0 ),
        .O(\I2C_daddr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \I2C_daddr[6]_i_1 
       (.I0(\I2C_daddr[7]_i_8_n_0 ),
        .I1(\I2C_daddr[7]_i_9_n_0 ),
        .I2(\I2C_daddr[6]_i_2_n_0 ),
        .I3(\I2C_daddr[7]_i_11_n_0 ),
        .I4(\I2C_daddr[7]_i_12_n_0 ),
        .I5(I2C_cstate[12]),
        .O(\I2C_daddr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \I2C_daddr[6]_i_2 
       (.I0(\I2C_daddr[7]_i_18_n_0 ),
        .I1(I2C_cstate[0]),
        .I2(\I2C_daddr_reg_n_0_[5] ),
        .I3(I2C_cstate[2]),
        .I4(I2C_cstate[1]),
        .I5(\I2C_daddr[7]_i_19_n_0 ),
        .O(\I2C_daddr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAA8A8A8)) 
    \I2C_daddr[7]_i_1 
       (.I0(I2C_cstate[13]),
        .I1(\I2C_daddr[7]_i_4_n_0 ),
        .I2(\I2C_daddr[7]_i_5_n_0 ),
        .I3(\I2C_daddr[7]_i_6_n_0 ),
        .I4(I2C_cstate[3]),
        .I5(\I2C_daddr[7]_i_7_n_0 ),
        .O(\I2C_daddr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \I2C_daddr[7]_i_10 
       (.I0(\I2C_daddr[7]_i_18_n_0 ),
        .I1(I2C_cstate[0]),
        .I2(\I2C_daddr_reg_n_0_[6] ),
        .I3(I2C_cstate[2]),
        .I4(I2C_cstate[1]),
        .I5(\I2C_daddr[7]_i_19_n_0 ),
        .O(\I2C_daddr[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \I2C_daddr[7]_i_11 
       (.I0(I2C_cstate[8]),
        .I1(I2C_cstate[7]),
        .I2(I2C_cstate[6]),
        .O(\I2C_daddr[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \I2C_daddr[7]_i_12 
       (.I0(I2C_cstate[11]),
        .I1(I2C_cstate[10]),
        .I2(I2C_cstate[9]),
        .O(\I2C_daddr[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \I2C_daddr[7]_i_13 
       (.I0(I2C_cstate[7]),
        .I1(I2C_cstate[11]),
        .I2(I2C_cstate[9]),
        .I3(I2C_reg_update_i_2_n_0),
        .I4(I2C_cstate[10]),
        .I5(I2C_cstate[8]),
        .O(\I2C_daddr[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEAFFFFFFFF)) 
    \I2C_daddr[7]_i_14 
       (.I0(I2C_reg_update_i_2_n_0),
        .I1(I2C_cstate[11]),
        .I2(I2C_cstate[10]),
        .I3(I2C_cstate[9]),
        .I4(I2C_cstate[7]),
        .I5(\I2C_daddr[7]_i_20_n_0 ),
        .O(\I2C_daddr[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000111100001F11)) 
    \I2C_daddr[7]_i_15 
       (.I0(I2C_cstate[8]),
        .I1(\I2C_daddr[7]_i_21_n_0 ),
        .I2(\I2C_daddr[7]_i_22_n_0 ),
        .I3(\I2C_daddr[7]_i_23_n_0 ),
        .I4(I2C_cstate[6]),
        .I5(I2C_cstate[11]),
        .O(\I2C_daddr[7]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \I2C_daddr[7]_i_16 
       (.I0(I2C_cstate[7]),
        .I1(I2C_cstate[8]),
        .I2(I2C_cstate[5]),
        .I3(I2C_cstate[6]),
        .O(\I2C_daddr[7]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \I2C_daddr[7]_i_17 
       (.I0(SCL_cstate[0]),
        .I1(SCL_cstate[2]),
        .I2(SCL_cstate[3]),
        .I3(SCL_cstate[1]),
        .O(\I2C_daddr[7]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \I2C_daddr[7]_i_18 
       (.I0(I2C_cstate[5]),
        .I1(I2C_cstate[4]),
        .I2(I2C_cstate[3]),
        .O(\I2C_daddr[7]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_daddr[7]_i_19 
       (.I0(I2C_cstate[4]),
        .I1(I2C_cstate[5]),
        .O(\I2C_daddr[7]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFE2)) 
    \I2C_daddr[7]_i_2 
       (.I0(\I2C_daddr[7]_i_7_n_0 ),
        .I1(I2C_cstate[3]),
        .I2(\I2C_daddr[7]_i_6_n_0 ),
        .I3(\I2C_daddr[7]_i_5_n_0 ),
        .I4(\I2C_daddr[7]_i_4_n_0 ),
        .O(I2C_daddr));
  LUT2 #(
    .INIT(4'h1)) 
    \I2C_daddr[7]_i_20 
       (.I0(I2C_cstate[6]),
        .I1(I2C_cstate[8]),
        .O(\I2C_daddr[7]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \I2C_daddr[7]_i_21 
       (.I0(I2C_cstate[11]),
        .I1(I2C_cstate[9]),
        .I2(I2C_cstate[12]),
        .I3(I2C_cstate[13]),
        .I4(I2C_cstate[10]),
        .O(\I2C_daddr[7]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \I2C_daddr[7]_i_22 
       (.I0(I2C_cstate[7]),
        .I1(I2C_cstate[13]),
        .I2(I2C_cstate[12]),
        .O(\I2C_daddr[7]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \I2C_daddr[7]_i_23 
       (.I0(I2C_cstate[9]),
        .I1(I2C_cstate[10]),
        .O(\I2C_daddr[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \I2C_daddr[7]_i_3 
       (.I0(\I2C_daddr[7]_i_8_n_0 ),
        .I1(\I2C_daddr[7]_i_9_n_0 ),
        .I2(\I2C_daddr[7]_i_10_n_0 ),
        .I3(\I2C_daddr[7]_i_11_n_0 ),
        .I4(\I2C_daddr[7]_i_12_n_0 ),
        .I5(I2C_cstate[12]),
        .O(\I2C_daddr[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFFEEEB)) 
    \I2C_daddr[7]_i_4 
       (.I0(I2C_cstate[0]),
        .I1(I2C_cstate[2]),
        .I2(\I2C_daddr[7]_i_6_n_0 ),
        .I3(I2C_cstate[3]),
        .I4(I2C_cstate[1]),
        .O(\I2C_daddr[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFEEEE8E8F8E8)) 
    \I2C_daddr[7]_i_5 
       (.I0(I2C_cstate[4]),
        .I1(I2C_cstate[5]),
        .I2(\I2C_daddr[7]_i_13_n_0 ),
        .I3(\I2C_daddr[7]_i_14_n_0 ),
        .I4(\I2C_daddr[7]_i_15_n_0 ),
        .I5(I2C_cstate[6]),
        .O(\I2C_daddr[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \I2C_daddr[7]_i_6 
       (.I0(I2C_cstate[9]),
        .I1(I2C_cstate[4]),
        .I2(I2C_cstate[11]),
        .I3(I2C_cstate[10]),
        .I4(\I2C_daddr[7]_i_16_n_0 ),
        .O(\I2C_daddr[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \I2C_daddr[7]_i_7 
       (.I0(\I2C_daddr[7]_i_17_n_0 ),
        .I1(\I2C_daddr[7]_i_16_n_0 ),
        .I2(I2C_cstate[4]),
        .I3(I2C_cstate[11]),
        .I4(I2C_cstate[10]),
        .I5(I2C_cstate[9]),
        .O(\I2C_daddr[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_daddr[7]_i_8 
       (.I0(I2C_cstate[10]),
        .I1(I2C_cstate[11]),
        .O(\I2C_daddr[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_daddr[7]_i_9 
       (.I0(I2C_cstate[7]),
        .I1(I2C_cstate[8]),
        .O(\I2C_daddr[7]_i_9_n_0 ));
  FDRE \I2C_daddr_reg[0] 
       (.C(clk),
        .CE(I2C_daddr),
        .D(\I2C_daddr[0]_i_1_n_0 ),
        .Q(\I2C_daddr_reg_n_0_[0] ),
        .R(\I2C_daddr[7]_i_1_n_0 ));
  FDRE \I2C_daddr_reg[1] 
       (.C(clk),
        .CE(I2C_daddr),
        .D(\I2C_daddr[1]_i_1_n_0 ),
        .Q(\I2C_daddr_reg_n_0_[1] ),
        .R(\I2C_daddr[7]_i_1_n_0 ));
  FDRE \I2C_daddr_reg[2] 
       (.C(clk),
        .CE(I2C_daddr),
        .D(\I2C_daddr[2]_i_1_n_0 ),
        .Q(\I2C_daddr_reg_n_0_[2] ),
        .R(\I2C_daddr[7]_i_1_n_0 ));
  FDRE \I2C_daddr_reg[3] 
       (.C(clk),
        .CE(I2C_daddr),
        .D(\I2C_daddr[3]_i_1_n_0 ),
        .Q(\I2C_daddr_reg_n_0_[3] ),
        .R(\I2C_daddr[7]_i_1_n_0 ));
  FDRE \I2C_daddr_reg[4] 
       (.C(clk),
        .CE(I2C_daddr),
        .D(\I2C_daddr[4]_i_1_n_0 ),
        .Q(\I2C_daddr_reg_n_0_[4] ),
        .R(\I2C_daddr[7]_i_1_n_0 ));
  FDRE \I2C_daddr_reg[5] 
       (.C(clk),
        .CE(I2C_daddr),
        .D(\I2C_daddr[5]_i_1_n_0 ),
        .Q(\I2C_daddr_reg_n_0_[5] ),
        .R(\I2C_daddr[7]_i_1_n_0 ));
  FDRE \I2C_daddr_reg[6] 
       (.C(clk),
        .CE(I2C_daddr),
        .D(\I2C_daddr[6]_i_1_n_0 ),
        .Q(\I2C_daddr_reg_n_0_[6] ),
        .R(\I2C_daddr[7]_i_1_n_0 ));
  FDRE \I2C_daddr_reg[7] 
       (.C(clk),
        .CE(I2C_daddr),
        .D(\I2C_daddr[7]_i_3_n_0 ),
        .Q(\I2C_daddr_reg_n_0_[7] ),
        .R(\I2C_daddr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4D484848)) 
    \I2C_rdata[0]_i_1 
       (.I0(I2C_cstate[3]),
        .I1(\I2C_rdata[0]_i_2_n_0 ),
        .I2(I2C_cstate[5]),
        .I3(I2C_cstate[9]),
        .I4(\I2C_addr[0]_i_2_n_0 ),
        .O(\I2C_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[0]_i_10 
       (.I0(An[24]),
        .I1(An[16]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(An[8]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(An[0]),
        .O(\I2C_rdata[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[0]_i_11 
       (.I0(An[56]),
        .I1(An[48]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(An[40]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(An[32]),
        .O(\I2C_rdata[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[0]_i_12 
       (.I0(\I2C_regblock_reg[3] [0]),
        .I1(\I2C_regblock_reg[2] [0]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[1] [0]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[0] [0]),
        .O(\I2C_rdata[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[0]_i_13 
       (.I0(\I2C_regblock_reg[7] [0]),
        .I1(\I2C_regblock_reg[6] [0]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[5] [0]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[4] [0]),
        .O(\I2C_rdata[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[0]_i_14 
       (.I0(\I2C_regblock_reg[11] [0]),
        .I1(\I2C_regblock_reg[10] [0]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[9] [0]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[8] [0]),
        .O(\I2C_rdata[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[0]_i_15 
       (.I0(\I2C_regblock_reg[15] [0]),
        .I1(\I2C_regblock_reg[14] [0]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[13] [0]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[12] [0]),
        .O(\I2C_rdata[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \I2C_rdata[0]_i_2 
       (.I0(\I2C_rdata_reg[0]_i_3_n_0 ),
        .I1(\I2C_addr_reg_n_0_[4] ),
        .I2(\I2C_rdata_reg[0]_i_4_n_0 ),
        .I3(\I2C_addr_reg_n_0_[3] ),
        .I4(\I2C_rdata_reg[0]_i_5_n_0 ),
        .I5(I2C_cstate[9]),
        .O(\I2C_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[0]_i_8 
       (.I0(\I2C_regblock_reg[19] [0]),
        .I1(\I2C_regblock_reg[18] [0]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[17] [0]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[16] [0]),
        .O(\I2C_rdata[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[0]_i_9 
       (.I0(\I2C_regblock_reg[23] [0]),
        .I1(\I2C_regblock_reg[22] [0]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[21] [0]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[20] [0]),
        .O(\I2C_rdata[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h4D484848)) 
    \I2C_rdata[1]_i_1 
       (.I0(I2C_cstate[3]),
        .I1(\I2C_rdata[1]_i_2_n_0 ),
        .I2(I2C_cstate[5]),
        .I3(I2C_cstate[9]),
        .I4(I2C_rdata[0]),
        .O(\I2C_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[1]_i_10 
       (.I0(An[25]),
        .I1(An[17]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(An[9]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(An[1]),
        .O(\I2C_rdata[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[1]_i_11 
       (.I0(An[57]),
        .I1(An[49]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(An[41]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(An[33]),
        .O(\I2C_rdata[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[1]_i_12 
       (.I0(\I2C_regblock_reg[3] [1]),
        .I1(\I2C_regblock_reg[2] [1]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[1] [1]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[0] [1]),
        .O(\I2C_rdata[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[1]_i_13 
       (.I0(\I2C_regblock_reg[7] [1]),
        .I1(\I2C_regblock_reg[6] [1]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[5] [1]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[4] [1]),
        .O(\I2C_rdata[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[1]_i_14 
       (.I0(\I2C_regblock_reg[11] [1]),
        .I1(\I2C_regblock_reg[10] [1]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[9] [1]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[8] [1]),
        .O(\I2C_rdata[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[1]_i_15 
       (.I0(\I2C_regblock_reg[15] [1]),
        .I1(\I2C_regblock_reg[14] [1]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[13] [1]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[12] [1]),
        .O(\I2C_rdata[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \I2C_rdata[1]_i_2 
       (.I0(\I2C_rdata_reg[1]_i_3_n_0 ),
        .I1(\I2C_addr_reg_n_0_[4] ),
        .I2(\I2C_rdata_reg[1]_i_4_n_0 ),
        .I3(\I2C_addr_reg_n_0_[3] ),
        .I4(\I2C_rdata_reg[1]_i_5_n_0 ),
        .I5(I2C_cstate[9]),
        .O(\I2C_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[1]_i_8 
       (.I0(\I2C_regblock_reg[19] [1]),
        .I1(\I2C_regblock_reg[18] [1]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[17] [1]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[16] [1]),
        .O(\I2C_rdata[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[1]_i_9 
       (.I0(\I2C_regblock_reg[23] [1]),
        .I1(\I2C_regblock_reg[22] [1]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[21] [1]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[20] [1]),
        .O(\I2C_rdata[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h4D484848)) 
    \I2C_rdata[2]_i_1 
       (.I0(I2C_cstate[3]),
        .I1(\I2C_rdata[2]_i_2_n_0 ),
        .I2(I2C_cstate[5]),
        .I3(I2C_cstate[9]),
        .I4(I2C_rdata[1]),
        .O(\I2C_rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[2]_i_10 
       (.I0(An[26]),
        .I1(An[18]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(An[10]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(An[2]),
        .O(\I2C_rdata[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[2]_i_11 
       (.I0(An[58]),
        .I1(An[50]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(An[42]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(An[34]),
        .O(\I2C_rdata[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[2]_i_12 
       (.I0(\I2C_regblock_reg[3] [2]),
        .I1(\I2C_regblock_reg[2] [2]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[1] [2]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[0] [2]),
        .O(\I2C_rdata[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[2]_i_13 
       (.I0(\I2C_regblock_reg[7] [2]),
        .I1(\I2C_regblock_reg[6] [2]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[5] [2]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[4] [2]),
        .O(\I2C_rdata[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[2]_i_14 
       (.I0(\I2C_regblock_reg[11] [2]),
        .I1(\I2C_regblock_reg[10] [2]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[9] [2]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[8] [2]),
        .O(\I2C_rdata[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[2]_i_15 
       (.I0(\I2C_regblock_reg[15] [2]),
        .I1(\I2C_regblock_reg[14] [2]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[13] [2]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[12] [2]),
        .O(\I2C_rdata[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \I2C_rdata[2]_i_2 
       (.I0(\I2C_rdata_reg[2]_i_3_n_0 ),
        .I1(\I2C_addr_reg_n_0_[4] ),
        .I2(\I2C_rdata_reg[2]_i_4_n_0 ),
        .I3(\I2C_addr_reg_n_0_[3] ),
        .I4(\I2C_rdata_reg[2]_i_5_n_0 ),
        .I5(I2C_cstate[9]),
        .O(\I2C_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[2]_i_8 
       (.I0(\I2C_regblock_reg[19] [2]),
        .I1(\I2C_regblock_reg[18] [2]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[17] [2]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[16] [2]),
        .O(\I2C_rdata[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[2]_i_9 
       (.I0(\I2C_regblock_reg[23] [2]),
        .I1(\I2C_regblock_reg[22] [2]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[21] [2]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[20] [2]),
        .O(\I2C_rdata[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h4D484848)) 
    \I2C_rdata[3]_i_1 
       (.I0(I2C_cstate[3]),
        .I1(\I2C_rdata[3]_i_2_n_0 ),
        .I2(I2C_cstate[5]),
        .I3(I2C_cstate[9]),
        .I4(I2C_rdata[2]),
        .O(\I2C_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[3]_i_10 
       (.I0(An[27]),
        .I1(An[19]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(An[11]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(An[3]),
        .O(\I2C_rdata[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[3]_i_11 
       (.I0(An[59]),
        .I1(An[51]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(An[43]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(An[35]),
        .O(\I2C_rdata[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[3]_i_12 
       (.I0(\I2C_regblock_reg[3] [3]),
        .I1(\I2C_regblock_reg[2] [3]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[1] [3]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[0] [3]),
        .O(\I2C_rdata[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[3]_i_13 
       (.I0(\I2C_regblock_reg[7] [3]),
        .I1(\I2C_regblock_reg[6] [3]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[5] [3]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[4] [3]),
        .O(\I2C_rdata[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[3]_i_14 
       (.I0(\I2C_regblock_reg[11] [3]),
        .I1(\I2C_regblock_reg[10] [3]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[9] [3]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[8] [3]),
        .O(\I2C_rdata[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[3]_i_15 
       (.I0(\I2C_regblock_reg[15] [3]),
        .I1(\I2C_regblock_reg[14] [3]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[13] [3]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[12] [3]),
        .O(\I2C_rdata[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \I2C_rdata[3]_i_2 
       (.I0(\I2C_rdata_reg[3]_i_3_n_0 ),
        .I1(\I2C_addr_reg_n_0_[4] ),
        .I2(\I2C_rdata_reg[3]_i_4_n_0 ),
        .I3(\I2C_addr_reg_n_0_[3] ),
        .I4(\I2C_rdata_reg[3]_i_5_n_0 ),
        .I5(I2C_cstate[9]),
        .O(\I2C_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[3]_i_8 
       (.I0(\I2C_regblock_reg[19] [3]),
        .I1(\I2C_regblock_reg[18] [3]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[17] [3]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[16] [3]),
        .O(\I2C_rdata[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[3]_i_9 
       (.I0(\I2C_regblock_reg[23] [3]),
        .I1(\I2C_regblock_reg[22] [3]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[21] [3]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[20] [3]),
        .O(\I2C_rdata[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h4D484848)) 
    \I2C_rdata[4]_i_1 
       (.I0(I2C_cstate[3]),
        .I1(\I2C_rdata[4]_i_2_n_0 ),
        .I2(I2C_cstate[5]),
        .I3(I2C_cstate[9]),
        .I4(I2C_rdata[3]),
        .O(\I2C_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[4]_i_10 
       (.I0(An[28]),
        .I1(An[20]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(An[12]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(An[4]),
        .O(\I2C_rdata[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[4]_i_11 
       (.I0(An[60]),
        .I1(An[52]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(An[44]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(An[36]),
        .O(\I2C_rdata[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[4]_i_12 
       (.I0(\I2C_regblock_reg[3] [4]),
        .I1(\I2C_regblock_reg[2] [4]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[1] [4]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[0] [4]),
        .O(\I2C_rdata[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[4]_i_13 
       (.I0(\I2C_regblock_reg[7] [4]),
        .I1(\I2C_regblock_reg[6] [4]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[5] [4]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[4] [4]),
        .O(\I2C_rdata[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[4]_i_14 
       (.I0(\I2C_regblock_reg[11] [4]),
        .I1(\I2C_regblock_reg[10] [4]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[9] [4]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[8] [4]),
        .O(\I2C_rdata[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[4]_i_15 
       (.I0(\I2C_regblock_reg[15] [4]),
        .I1(\I2C_regblock_reg[14] [4]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[13] [4]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[12] [4]),
        .O(\I2C_rdata[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \I2C_rdata[4]_i_2 
       (.I0(\I2C_rdata_reg[4]_i_3_n_0 ),
        .I1(\I2C_addr_reg_n_0_[4] ),
        .I2(\I2C_rdata_reg[4]_i_4_n_0 ),
        .I3(\I2C_addr_reg_n_0_[3] ),
        .I4(\I2C_rdata_reg[4]_i_5_n_0 ),
        .I5(I2C_cstate[9]),
        .O(\I2C_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[4]_i_8 
       (.I0(\I2C_regblock_reg[19] [4]),
        .I1(\I2C_regblock_reg[18] [4]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[17] [4]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[16] [4]),
        .O(\I2C_rdata[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[4]_i_9 
       (.I0(\I2C_regblock_reg[23] [4]),
        .I1(\I2C_regblock_reg[22] [4]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[21] [4]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[20] [4]),
        .O(\I2C_rdata[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h4D484848)) 
    \I2C_rdata[5]_i_1 
       (.I0(I2C_cstate[3]),
        .I1(\I2C_rdata[5]_i_2_n_0 ),
        .I2(I2C_cstate[5]),
        .I3(I2C_cstate[9]),
        .I4(I2C_rdata[4]),
        .O(\I2C_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[5]_i_10 
       (.I0(An[29]),
        .I1(An[21]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(An[13]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(An[5]),
        .O(\I2C_rdata[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[5]_i_11 
       (.I0(An[61]),
        .I1(An[53]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(An[45]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(An[37]),
        .O(\I2C_rdata[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[5]_i_12 
       (.I0(\I2C_regblock_reg[3] [5]),
        .I1(\I2C_regblock_reg[2] [5]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[1] [5]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[0] [5]),
        .O(\I2C_rdata[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[5]_i_13 
       (.I0(\I2C_regblock_reg[7] [5]),
        .I1(\I2C_regblock_reg[6] [5]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[5] [5]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[4] [5]),
        .O(\I2C_rdata[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[5]_i_14 
       (.I0(\I2C_regblock_reg[11] [5]),
        .I1(\I2C_regblock_reg[10] [5]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[9] [5]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[8] [5]),
        .O(\I2C_rdata[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[5]_i_15 
       (.I0(\I2C_regblock_reg[15] [5]),
        .I1(\I2C_regblock_reg[14] [5]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[13] [5]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[12] [5]),
        .O(\I2C_rdata[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \I2C_rdata[5]_i_2 
       (.I0(\I2C_rdata_reg[5]_i_3_n_0 ),
        .I1(\I2C_addr_reg_n_0_[4] ),
        .I2(\I2C_rdata_reg[5]_i_4_n_0 ),
        .I3(\I2C_addr_reg_n_0_[3] ),
        .I4(\I2C_rdata_reg[5]_i_5_n_0 ),
        .I5(I2C_cstate[9]),
        .O(\I2C_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[5]_i_8 
       (.I0(\I2C_regblock_reg[19] [5]),
        .I1(\I2C_regblock_reg[18] [5]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[17] [5]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[16] [5]),
        .O(\I2C_rdata[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[5]_i_9 
       (.I0(\I2C_regblock_reg[23] [5]),
        .I1(\I2C_regblock_reg[22] [5]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[21] [5]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[20] [5]),
        .O(\I2C_rdata[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h4D484848)) 
    \I2C_rdata[6]_i_1 
       (.I0(I2C_cstate[3]),
        .I1(\I2C_rdata[6]_i_2_n_0 ),
        .I2(I2C_cstate[5]),
        .I3(I2C_cstate[9]),
        .I4(I2C_rdata[5]),
        .O(\I2C_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[6]_i_10 
       (.I0(An[30]),
        .I1(An[22]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(An[14]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(An[6]),
        .O(\I2C_rdata[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[6]_i_11 
       (.I0(An[62]),
        .I1(An[54]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(An[46]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(An[38]),
        .O(\I2C_rdata[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[6]_i_12 
       (.I0(\I2C_regblock_reg[3] [6]),
        .I1(\I2C_regblock_reg[2] [6]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[1] [6]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[0] [6]),
        .O(\I2C_rdata[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[6]_i_13 
       (.I0(\I2C_regblock_reg[7] [6]),
        .I1(\I2C_regblock_reg[6] [6]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[5] [6]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[4] [6]),
        .O(\I2C_rdata[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[6]_i_14 
       (.I0(\I2C_regblock_reg[11] [6]),
        .I1(\I2C_regblock_reg[10] [6]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[9] [6]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[8] [6]),
        .O(\I2C_rdata[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[6]_i_15 
       (.I0(\I2C_regblock_reg[15] [6]),
        .I1(\I2C_regblock_reg[14] [6]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[13] [6]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[12] [6]),
        .O(\I2C_rdata[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \I2C_rdata[6]_i_2 
       (.I0(\I2C_rdata_reg[6]_i_3_n_0 ),
        .I1(\I2C_addr_reg_n_0_[4] ),
        .I2(\I2C_rdata_reg[6]_i_4_n_0 ),
        .I3(\I2C_addr_reg_n_0_[3] ),
        .I4(\I2C_rdata_reg[6]_i_5_n_0 ),
        .I5(I2C_cstate[9]),
        .O(\I2C_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[6]_i_8 
       (.I0(\I2C_regblock_reg[19] [6]),
        .I1(\I2C_regblock_reg[18] [6]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[17] [6]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[16] [6]),
        .O(\I2C_rdata[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[6]_i_9 
       (.I0(\I2C_regblock_reg[23] [6]),
        .I1(\I2C_regblock_reg[22] [6]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[21] [6]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[20] [6]),
        .O(\I2C_rdata[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFEFFFE)) 
    \I2C_rdata[7]_i_1 
       (.I0(\I2C_rdata[7]_i_4_n_0 ),
        .I1(I2C_cstate[4]),
        .I2(I2C_cstate[5]),
        .I3(\I2C_rdata[7]_i_5_n_0 ),
        .I4(\I2C_rdata[7]_i_6_n_0 ),
        .I5(\I2C_rdata[7]_i_7_n_0 ),
        .O(\I2C_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \I2C_rdata[7]_i_10 
       (.I0(\I2C_rdata[7]_i_15_n_0 ),
        .I1(I2C_reg_update_i_2_n_0),
        .I2(I2C_cstate[9]),
        .I3(I2C_cstate[8]),
        .I4(I2C_cstate[11]),
        .I5(\I2C_rdata[7]_i_12_n_0 ),
        .O(\I2C_rdata[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \I2C_rdata[7]_i_11 
       (.I0(\I2C_rdata_reg[7]_i_16_n_0 ),
        .I1(\I2C_addr_reg_n_0_[4] ),
        .I2(\I2C_rdata_reg[7]_i_17_n_0 ),
        .I3(\I2C_addr_reg_n_0_[3] ),
        .I4(\I2C_rdata_reg[7]_i_18_n_0 ),
        .I5(I2C_cstate[9]),
        .O(\I2C_rdata[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010115)) 
    \I2C_rdata[7]_i_12 
       (.I0(I2C_cstate[10]),
        .I1(I2C_cstate[8]),
        .I2(I2C_cstate[11]),
        .I3(I2C_cstate[13]),
        .I4(I2C_cstate[12]),
        .I5(I2C_cstate[9]),
        .O(\I2C_rdata[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000202000002FF)) 
    \I2C_rdata[7]_i_13 
       (.I0(\I2C_rdata[7]_i_19_n_0 ),
        .I1(I2C_cstate[9]),
        .I2(I2C_cstate[12]),
        .I3(\I2C_bitcnt[3]_i_12_n_0 ),
        .I4(I2C_cstate[13]),
        .I5(\I2C_daddr[7]_i_17_n_0 ),
        .O(\I2C_rdata[7]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_rdata[7]_i_14 
       (.I0(I2C_cstate[7]),
        .I1(I2C_cstate[6]),
        .O(\I2C_rdata[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \I2C_rdata[7]_i_15 
       (.I0(\I2C_daddr[7]_i_17_n_0 ),
        .I1(I2C_cstate[13]),
        .I2(I2C_cstate[12]),
        .I3(I2C_cstate[11]),
        .I4(I2C_cstate[10]),
        .I5(I2C_cstate[8]),
        .O(\I2C_rdata[7]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \I2C_rdata[7]_i_19 
       (.I0(I2C_cstate[11]),
        .I1(I2C_cstate[8]),
        .O(\I2C_rdata[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFEFEFEFFEF)) 
    \I2C_rdata[7]_i_2 
       (.I0(\I2C_rdata[7]_i_5_n_0 ),
        .I1(\I2C_rdata[7]_i_8_n_0 ),
        .I2(\I2C_rdata[7]_i_9_n_0 ),
        .I3(\I2C_rdata[7]_i_10_n_0 ),
        .I4(I2C_cstate[7]),
        .I5(I2C_cstate[6]),
        .O(I2C_rdata_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[7]_i_22 
       (.I0(\I2C_regblock_reg[19] [7]),
        .I1(\I2C_regblock_reg[18] [7]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[17] [7]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[16] [7]),
        .O(\I2C_rdata[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[7]_i_23 
       (.I0(\I2C_regblock_reg[23] [7]),
        .I1(\I2C_regblock_reg[22] [7]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[21] [7]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[20] [7]),
        .O(\I2C_rdata[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[7]_i_24 
       (.I0(An[31]),
        .I1(An[23]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(An[15]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(An[7]),
        .O(\I2C_rdata[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[7]_i_25 
       (.I0(An[63]),
        .I1(An[55]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(An[47]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(An[39]),
        .O(\I2C_rdata[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[7]_i_26 
       (.I0(\I2C_regblock_reg[3] [7]),
        .I1(\I2C_regblock_reg[2] [7]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[1] [7]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[0] [7]),
        .O(\I2C_rdata[7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[7]_i_27 
       (.I0(\I2C_regblock_reg[7] [7]),
        .I1(\I2C_regblock_reg[6] [7]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[5] [7]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[4] [7]),
        .O(\I2C_rdata[7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[7]_i_28 
       (.I0(\I2C_regblock_reg[11] [7]),
        .I1(\I2C_regblock_reg[10] [7]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[9] [7]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[8] [7]),
        .O(\I2C_rdata[7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \I2C_rdata[7]_i_29 
       (.I0(\I2C_regblock_reg[15] [7]),
        .I1(\I2C_regblock_reg[14] [7]),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_regblock_reg[13] [7]),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_regblock_reg[12] [7]),
        .O(\I2C_rdata[7]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h4D484848)) 
    \I2C_rdata[7]_i_3 
       (.I0(I2C_cstate[3]),
        .I1(\I2C_rdata[7]_i_11_n_0 ),
        .I2(I2C_cstate[5]),
        .I3(I2C_cstate[9]),
        .I4(I2C_rdata[6]),
        .O(\I2C_rdata[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEEEF9999)) 
    \I2C_rdata[7]_i_4 
       (.I0(I2C_cstate[6]),
        .I1(I2C_cstate[7]),
        .I2(\I2C_rdata[7]_i_12_n_0 ),
        .I3(\I2C_rdata[7]_i_13_n_0 ),
        .I4(\I2C_rdata[7]_i_9_n_0 ),
        .O(\I2C_rdata[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \I2C_rdata[7]_i_5 
       (.I0(I2C_cstate[2]),
        .I1(I2C_cstate[3]),
        .I2(I2C_cstate[0]),
        .I3(I2C_cstate[1]),
        .O(\I2C_rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \I2C_rdata[7]_i_6 
       (.I0(\I2C_rdata[7]_i_14_n_0 ),
        .I1(I2C_cstate[10]),
        .I2(I2C_cstate[8]),
        .I3(\I2C_bitcnt[3]_i_6_n_0 ),
        .I4(I2C_cstate[4]),
        .I5(I2C_cstate[2]),
        .O(\I2C_rdata[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \I2C_rdata[7]_i_7 
       (.I0(I2C_cstate[13]),
        .I1(I2C_cstate[11]),
        .I2(I2C_cstate[12]),
        .O(\I2C_rdata[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_rdata[7]_i_8 
       (.I0(I2C_cstate[5]),
        .I1(I2C_cstate[4]),
        .O(\I2C_rdata[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \I2C_rdata[7]_i_9 
       (.I0(I2C_cstate[8]),
        .I1(I2C_cstate[10]),
        .I2(I2C_cstate[9]),
        .I3(I2C_cstate[11]),
        .I4(I2C_cstate[13]),
        .I5(I2C_cstate[12]),
        .O(\I2C_rdata[7]_i_9_n_0 ));
  FDRE \I2C_rdata_reg[0] 
       (.C(clk),
        .CE(I2C_rdata_0),
        .D(\I2C_rdata[0]_i_1_n_0 ),
        .Q(I2C_rdata[0]),
        .R(\I2C_rdata[7]_i_1_n_0 ));
  MUXF8 \I2C_rdata_reg[0]_i_3 
       (.I0(\I2C_rdata_reg[0]_i_6_n_0 ),
        .I1(\I2C_rdata_reg[0]_i_7_n_0 ),
        .O(\I2C_rdata_reg[0]_i_3_n_0 ),
        .S(\I2C_addr_reg_n_0_[3] ));
  MUXF7 \I2C_rdata_reg[0]_i_4 
       (.I0(\I2C_rdata[0]_i_8_n_0 ),
        .I1(\I2C_rdata[0]_i_9_n_0 ),
        .O(\I2C_rdata_reg[0]_i_4_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[0]_i_5 
       (.I0(\I2C_rdata[0]_i_10_n_0 ),
        .I1(\I2C_rdata[0]_i_11_n_0 ),
        .O(\I2C_rdata_reg[0]_i_5_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[0]_i_6 
       (.I0(\I2C_rdata[0]_i_12_n_0 ),
        .I1(\I2C_rdata[0]_i_13_n_0 ),
        .O(\I2C_rdata_reg[0]_i_6_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[0]_i_7 
       (.I0(\I2C_rdata[0]_i_14_n_0 ),
        .I1(\I2C_rdata[0]_i_15_n_0 ),
        .O(\I2C_rdata_reg[0]_i_7_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  FDRE \I2C_rdata_reg[1] 
       (.C(clk),
        .CE(I2C_rdata_0),
        .D(\I2C_rdata[1]_i_1_n_0 ),
        .Q(I2C_rdata[1]),
        .R(\I2C_rdata[7]_i_1_n_0 ));
  MUXF8 \I2C_rdata_reg[1]_i_3 
       (.I0(\I2C_rdata_reg[1]_i_6_n_0 ),
        .I1(\I2C_rdata_reg[1]_i_7_n_0 ),
        .O(\I2C_rdata_reg[1]_i_3_n_0 ),
        .S(\I2C_addr_reg_n_0_[3] ));
  MUXF7 \I2C_rdata_reg[1]_i_4 
       (.I0(\I2C_rdata[1]_i_8_n_0 ),
        .I1(\I2C_rdata[1]_i_9_n_0 ),
        .O(\I2C_rdata_reg[1]_i_4_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[1]_i_5 
       (.I0(\I2C_rdata[1]_i_10_n_0 ),
        .I1(\I2C_rdata[1]_i_11_n_0 ),
        .O(\I2C_rdata_reg[1]_i_5_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[1]_i_6 
       (.I0(\I2C_rdata[1]_i_12_n_0 ),
        .I1(\I2C_rdata[1]_i_13_n_0 ),
        .O(\I2C_rdata_reg[1]_i_6_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[1]_i_7 
       (.I0(\I2C_rdata[1]_i_14_n_0 ),
        .I1(\I2C_rdata[1]_i_15_n_0 ),
        .O(\I2C_rdata_reg[1]_i_7_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  FDRE \I2C_rdata_reg[2] 
       (.C(clk),
        .CE(I2C_rdata_0),
        .D(\I2C_rdata[2]_i_1_n_0 ),
        .Q(I2C_rdata[2]),
        .R(\I2C_rdata[7]_i_1_n_0 ));
  MUXF8 \I2C_rdata_reg[2]_i_3 
       (.I0(\I2C_rdata_reg[2]_i_6_n_0 ),
        .I1(\I2C_rdata_reg[2]_i_7_n_0 ),
        .O(\I2C_rdata_reg[2]_i_3_n_0 ),
        .S(\I2C_addr_reg_n_0_[3] ));
  MUXF7 \I2C_rdata_reg[2]_i_4 
       (.I0(\I2C_rdata[2]_i_8_n_0 ),
        .I1(\I2C_rdata[2]_i_9_n_0 ),
        .O(\I2C_rdata_reg[2]_i_4_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[2]_i_5 
       (.I0(\I2C_rdata[2]_i_10_n_0 ),
        .I1(\I2C_rdata[2]_i_11_n_0 ),
        .O(\I2C_rdata_reg[2]_i_5_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[2]_i_6 
       (.I0(\I2C_rdata[2]_i_12_n_0 ),
        .I1(\I2C_rdata[2]_i_13_n_0 ),
        .O(\I2C_rdata_reg[2]_i_6_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[2]_i_7 
       (.I0(\I2C_rdata[2]_i_14_n_0 ),
        .I1(\I2C_rdata[2]_i_15_n_0 ),
        .O(\I2C_rdata_reg[2]_i_7_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  FDRE \I2C_rdata_reg[3] 
       (.C(clk),
        .CE(I2C_rdata_0),
        .D(\I2C_rdata[3]_i_1_n_0 ),
        .Q(I2C_rdata[3]),
        .R(\I2C_rdata[7]_i_1_n_0 ));
  MUXF8 \I2C_rdata_reg[3]_i_3 
       (.I0(\I2C_rdata_reg[3]_i_6_n_0 ),
        .I1(\I2C_rdata_reg[3]_i_7_n_0 ),
        .O(\I2C_rdata_reg[3]_i_3_n_0 ),
        .S(\I2C_addr_reg_n_0_[3] ));
  MUXF7 \I2C_rdata_reg[3]_i_4 
       (.I0(\I2C_rdata[3]_i_8_n_0 ),
        .I1(\I2C_rdata[3]_i_9_n_0 ),
        .O(\I2C_rdata_reg[3]_i_4_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[3]_i_5 
       (.I0(\I2C_rdata[3]_i_10_n_0 ),
        .I1(\I2C_rdata[3]_i_11_n_0 ),
        .O(\I2C_rdata_reg[3]_i_5_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[3]_i_6 
       (.I0(\I2C_rdata[3]_i_12_n_0 ),
        .I1(\I2C_rdata[3]_i_13_n_0 ),
        .O(\I2C_rdata_reg[3]_i_6_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[3]_i_7 
       (.I0(\I2C_rdata[3]_i_14_n_0 ),
        .I1(\I2C_rdata[3]_i_15_n_0 ),
        .O(\I2C_rdata_reg[3]_i_7_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  FDRE \I2C_rdata_reg[4] 
       (.C(clk),
        .CE(I2C_rdata_0),
        .D(\I2C_rdata[4]_i_1_n_0 ),
        .Q(I2C_rdata[4]),
        .R(\I2C_rdata[7]_i_1_n_0 ));
  MUXF8 \I2C_rdata_reg[4]_i_3 
       (.I0(\I2C_rdata_reg[4]_i_6_n_0 ),
        .I1(\I2C_rdata_reg[4]_i_7_n_0 ),
        .O(\I2C_rdata_reg[4]_i_3_n_0 ),
        .S(\I2C_addr_reg_n_0_[3] ));
  MUXF7 \I2C_rdata_reg[4]_i_4 
       (.I0(\I2C_rdata[4]_i_8_n_0 ),
        .I1(\I2C_rdata[4]_i_9_n_0 ),
        .O(\I2C_rdata_reg[4]_i_4_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[4]_i_5 
       (.I0(\I2C_rdata[4]_i_10_n_0 ),
        .I1(\I2C_rdata[4]_i_11_n_0 ),
        .O(\I2C_rdata_reg[4]_i_5_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[4]_i_6 
       (.I0(\I2C_rdata[4]_i_12_n_0 ),
        .I1(\I2C_rdata[4]_i_13_n_0 ),
        .O(\I2C_rdata_reg[4]_i_6_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[4]_i_7 
       (.I0(\I2C_rdata[4]_i_14_n_0 ),
        .I1(\I2C_rdata[4]_i_15_n_0 ),
        .O(\I2C_rdata_reg[4]_i_7_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  FDRE \I2C_rdata_reg[5] 
       (.C(clk),
        .CE(I2C_rdata_0),
        .D(\I2C_rdata[5]_i_1_n_0 ),
        .Q(I2C_rdata[5]),
        .R(\I2C_rdata[7]_i_1_n_0 ));
  MUXF8 \I2C_rdata_reg[5]_i_3 
       (.I0(\I2C_rdata_reg[5]_i_6_n_0 ),
        .I1(\I2C_rdata_reg[5]_i_7_n_0 ),
        .O(\I2C_rdata_reg[5]_i_3_n_0 ),
        .S(\I2C_addr_reg_n_0_[3] ));
  MUXF7 \I2C_rdata_reg[5]_i_4 
       (.I0(\I2C_rdata[5]_i_8_n_0 ),
        .I1(\I2C_rdata[5]_i_9_n_0 ),
        .O(\I2C_rdata_reg[5]_i_4_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[5]_i_5 
       (.I0(\I2C_rdata[5]_i_10_n_0 ),
        .I1(\I2C_rdata[5]_i_11_n_0 ),
        .O(\I2C_rdata_reg[5]_i_5_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[5]_i_6 
       (.I0(\I2C_rdata[5]_i_12_n_0 ),
        .I1(\I2C_rdata[5]_i_13_n_0 ),
        .O(\I2C_rdata_reg[5]_i_6_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[5]_i_7 
       (.I0(\I2C_rdata[5]_i_14_n_0 ),
        .I1(\I2C_rdata[5]_i_15_n_0 ),
        .O(\I2C_rdata_reg[5]_i_7_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  FDRE \I2C_rdata_reg[6] 
       (.C(clk),
        .CE(I2C_rdata_0),
        .D(\I2C_rdata[6]_i_1_n_0 ),
        .Q(I2C_rdata[6]),
        .R(\I2C_rdata[7]_i_1_n_0 ));
  MUXF8 \I2C_rdata_reg[6]_i_3 
       (.I0(\I2C_rdata_reg[6]_i_6_n_0 ),
        .I1(\I2C_rdata_reg[6]_i_7_n_0 ),
        .O(\I2C_rdata_reg[6]_i_3_n_0 ),
        .S(\I2C_addr_reg_n_0_[3] ));
  MUXF7 \I2C_rdata_reg[6]_i_4 
       (.I0(\I2C_rdata[6]_i_8_n_0 ),
        .I1(\I2C_rdata[6]_i_9_n_0 ),
        .O(\I2C_rdata_reg[6]_i_4_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[6]_i_5 
       (.I0(\I2C_rdata[6]_i_10_n_0 ),
        .I1(\I2C_rdata[6]_i_11_n_0 ),
        .O(\I2C_rdata_reg[6]_i_5_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[6]_i_6 
       (.I0(\I2C_rdata[6]_i_12_n_0 ),
        .I1(\I2C_rdata[6]_i_13_n_0 ),
        .O(\I2C_rdata_reg[6]_i_6_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[6]_i_7 
       (.I0(\I2C_rdata[6]_i_14_n_0 ),
        .I1(\I2C_rdata[6]_i_15_n_0 ),
        .O(\I2C_rdata_reg[6]_i_7_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  FDRE \I2C_rdata_reg[7] 
       (.C(clk),
        .CE(I2C_rdata_0),
        .D(\I2C_rdata[7]_i_3_n_0 ),
        .Q(I2C_rdata[7]),
        .R(\I2C_rdata[7]_i_1_n_0 ));
  MUXF8 \I2C_rdata_reg[7]_i_16 
       (.I0(\I2C_rdata_reg[7]_i_20_n_0 ),
        .I1(\I2C_rdata_reg[7]_i_21_n_0 ),
        .O(\I2C_rdata_reg[7]_i_16_n_0 ),
        .S(\I2C_addr_reg_n_0_[3] ));
  MUXF7 \I2C_rdata_reg[7]_i_17 
       (.I0(\I2C_rdata[7]_i_22_n_0 ),
        .I1(\I2C_rdata[7]_i_23_n_0 ),
        .O(\I2C_rdata_reg[7]_i_17_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[7]_i_18 
       (.I0(\I2C_rdata[7]_i_24_n_0 ),
        .I1(\I2C_rdata[7]_i_25_n_0 ),
        .O(\I2C_rdata_reg[7]_i_18_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[7]_i_20 
       (.I0(\I2C_rdata[7]_i_26_n_0 ),
        .I1(\I2C_rdata[7]_i_27_n_0 ),
        .O(\I2C_rdata_reg[7]_i_20_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  MUXF7 \I2C_rdata_reg[7]_i_21 
       (.I0(\I2C_rdata[7]_i_28_n_0 ),
        .I1(\I2C_rdata[7]_i_29_n_0 ),
        .O(\I2C_rdata_reg[7]_i_21_n_0 ),
        .S(\I2C_addr_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'h0000000000010100)) 
    I2C_reg_update_i_1
       (.I0(I2C_reg_update_i_2_n_0),
        .I1(I2C_cstate[9]),
        .I2(I2C_cstate[11]),
        .I3(I2C_cstate[7]),
        .I4(I2C_cstate[10]),
        .I5(I2C_reg_update_i_3_n_0),
        .O(I2C_reg_update));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    I2C_reg_update_i_2
       (.I0(I2C_cstate[12]),
        .I1(I2C_cstate[13]),
        .O(I2C_reg_update_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    I2C_reg_update_i_3
       (.I0(I2C_reg_update_i_4_n_0),
        .I1(I2C_cstate[8]),
        .I2(I2C_cstate[0]),
        .I3(I2C_cstate[1]),
        .I4(I2C_cstate[2]),
        .I5(\I2C_addr[7]_i_23_n_0 ),
        .O(I2C_reg_update_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    I2C_reg_update_i_4
       (.I0(I2C_cstate[6]),
        .I1(I2C_cstate[5]),
        .O(I2C_reg_update_i_4_n_0));
  FDRE I2C_reg_update_reg
       (.C(clk),
        .CE(1'b1),
        .D(I2C_reg_update),
        .Q(I2C_reg_update_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEA000000)) 
    \I2C_regblock[0][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[31][7]_i_3_n_0 ),
        .I2(I2C_cstate[10]),
        .I3(\I2C_regblock[31][7]_i_4_n_0 ),
        .I4(\I2C_regblock[0][7]_i_2_n_0 ),
        .O(\I2C_regblock[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \I2C_regblock[0][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[3] ),
        .I1(\I2C_addr_reg_n_0_[1] ),
        .I2(\I2C_addr_reg_n_0_[0] ),
        .I3(\I2C_addr_reg_n_0_[4] ),
        .I4(\I2C_addr_reg_n_0_[2] ),
        .O(\I2C_regblock[0][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000E000000000)) 
    \I2C_regblock[10][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[10][7]_i_2_n_0 ),
        .I4(\I2C_regblock[24][7]_i_3_n_0 ),
        .I5(\I2C_addr_reg_n_0_[1] ),
        .O(\I2C_regblock[10][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_regblock[10][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[0] ),
        .I1(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_regblock[10][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    \I2C_regblock[11][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[14][7]_i_2_n_0 ),
        .I4(\I2C_addr[3]_i_2_n_0 ),
        .I5(\I2C_addr_reg_n_0_[2] ),
        .O(\I2C_regblock[11][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000E000000000)) 
    \I2C_regblock[12][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[12][7]_i_2_n_0 ),
        .I4(\I2C_regblock[26][7]_i_2_n_0 ),
        .I5(\I2C_addr_reg_n_0_[2] ),
        .O(\I2C_regblock[12][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_regblock[12][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[1] ),
        .I1(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_regblock[12][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    \I2C_regblock[13][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[14][7]_i_2_n_0 ),
        .I4(\I2C_regblock[13][7]_i_2_n_0 ),
        .I5(\I2C_addr_reg_n_0_[1] ),
        .O(\I2C_regblock[13][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \I2C_regblock[13][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[2] ),
        .I1(\I2C_addr_reg_n_0_[0] ),
        .O(\I2C_regblock[13][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    \I2C_regblock[14][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[14][7]_i_2_n_0 ),
        .I4(\I2C_regblock[14][7]_i_3_n_0 ),
        .I5(\I2C_addr_reg_n_0_[0] ),
        .O(\I2C_regblock[14][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \I2C_regblock[14][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[4] ),
        .I1(\I2C_addr_reg_n_0_[3] ),
        .O(\I2C_regblock[14][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \I2C_regblock[14][7]_i_3 
       (.I0(\I2C_addr_reg_n_0_[1] ),
        .I1(\I2C_addr_reg_n_0_[2] ),
        .O(\I2C_regblock[14][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    \I2C_regblock[15][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[30][7]_i_3_n_0 ),
        .I4(\I2C_addr[3]_i_2_n_0 ),
        .I5(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_regblock[15][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000E000000000)) 
    \I2C_regblock[16][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[18][7]_i_2_n_0 ),
        .I4(\I2C_regblock[16][7]_i_2_n_0 ),
        .I5(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_regblock[16][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_regblock[16][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[2] ),
        .I1(\I2C_addr_reg_n_0_[1] ),
        .O(\I2C_regblock[16][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000E000000000)) 
    \I2C_regblock[17][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[17][7]_i_2_n_0 ),
        .I4(\I2C_regblock[19][7]_i_2_n_0 ),
        .I5(\I2C_addr_reg_n_0_[0] ),
        .O(\I2C_regblock[17][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_regblock[17][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[3] ),
        .I1(\I2C_addr_reg_n_0_[1] ),
        .O(\I2C_regblock[17][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000E000000000)) 
    \I2C_regblock[18][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[18][7]_i_2_n_0 ),
        .I4(\I2C_regblock[19][7]_i_2_n_0 ),
        .I5(\I2C_addr_reg_n_0_[1] ),
        .O(\I2C_regblock[18][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_regblock[18][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[3] ),
        .I1(\I2C_addr_reg_n_0_[0] ),
        .O(\I2C_regblock[18][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    \I2C_regblock[19][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[19][7]_i_2_n_0 ),
        .I4(\I2C_addr[3]_i_2_n_0 ),
        .I5(\I2C_addr_reg_n_0_[3] ),
        .O(\I2C_regblock[19][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \I2C_regblock[19][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[2] ),
        .I1(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_regblock[19][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000E000000000)) 
    \I2C_regblock[1][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[4][7]_i_2_n_0 ),
        .I4(\I2C_regblock[16][7]_i_2_n_0 ),
        .I5(\I2C_addr_reg_n_0_[0] ),
        .O(\I2C_regblock[1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEA000000)) 
    \I2C_regblock[20][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[31][7]_i_3_n_0 ),
        .I2(I2C_cstate[10]),
        .I3(\I2C_regblock[31][7]_i_4_n_0 ),
        .I4(\I2C_regblock[20][7]_i_2_n_0 ),
        .O(\I2C_regblock[20][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \I2C_regblock[20][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[2] ),
        .I1(\I2C_addr_reg_n_0_[0] ),
        .I2(\I2C_addr_reg_n_0_[4] ),
        .I3(\I2C_addr_reg_n_0_[3] ),
        .I4(\I2C_addr_reg_n_0_[1] ),
        .O(\I2C_regblock[20][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA000000)) 
    \I2C_regblock[21][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[31][7]_i_3_n_0 ),
        .I2(I2C_cstate[10]),
        .I3(\I2C_regblock[31][7]_i_4_n_0 ),
        .I4(\I2C_regblock[21][7]_i_2_n_0 ),
        .O(\I2C_regblock[21][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \I2C_regblock[21][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[3] ),
        .I1(\I2C_addr_reg_n_0_[2] ),
        .I2(\I2C_addr_reg_n_0_[0] ),
        .I3(\I2C_addr_reg_n_0_[1] ),
        .I4(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_regblock[21][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA000000)) 
    \I2C_regblock[22][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[31][7]_i_3_n_0 ),
        .I2(I2C_cstate[10]),
        .I3(\I2C_regblock[31][7]_i_4_n_0 ),
        .I4(\I2C_regblock[22][7]_i_2_n_0 ),
        .O(\I2C_regblock[22][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \I2C_regblock[22][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[3] ),
        .I1(\I2C_addr_reg_n_0_[1] ),
        .I2(\I2C_addr_reg_n_0_[2] ),
        .I3(\I2C_addr_reg_n_0_[0] ),
        .I4(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_regblock[22][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000EA00)) 
    \I2C_regblock[23][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[31][7]_i_3_n_0 ),
        .I2(I2C_cstate[10]),
        .I3(\I2C_regblock[31][7]_i_4_n_0 ),
        .I4(\I2C_regblock[31][7]_i_5_n_0 ),
        .I5(\I2C_addr_reg_n_0_[3] ),
        .O(\I2C_regblock[23][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000E000000000)) 
    \I2C_regblock[24][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[24][7]_i_2_n_0 ),
        .I4(\I2C_regblock[24][7]_i_3_n_0 ),
        .I5(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_regblock[24][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_regblock[24][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[1] ),
        .I1(\I2C_addr_reg_n_0_[0] ),
        .O(\I2C_regblock[24][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \I2C_regblock[24][7]_i_3 
       (.I0(\I2C_addr_reg_n_0_[2] ),
        .I1(\I2C_addr_reg_n_0_[3] ),
        .O(\I2C_regblock[24][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEA000000)) 
    \I2C_regblock[25][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[31][7]_i_3_n_0 ),
        .I2(I2C_cstate[10]),
        .I3(\I2C_regblock[31][7]_i_4_n_0 ),
        .I4(\I2C_regblock[25][7]_i_2_n_0 ),
        .O(\I2C_regblock[25][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \I2C_regblock[25][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[2] ),
        .I1(\I2C_addr_reg_n_0_[4] ),
        .I2(\I2C_addr_reg_n_0_[0] ),
        .I3(\I2C_addr_reg_n_0_[1] ),
        .I4(\I2C_addr_reg_n_0_[3] ),
        .O(\I2C_regblock[25][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    \I2C_regblock[26][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[26][7]_i_2_n_0 ),
        .I4(\I2C_regblock[30][7]_i_4_n_0 ),
        .I5(\I2C_addr_reg_n_0_[2] ),
        .O(\I2C_regblock[26][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \I2C_regblock[26][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[0] ),
        .I1(\I2C_addr_reg_n_0_[3] ),
        .O(\I2C_regblock[26][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA000000)) 
    \I2C_regblock[27][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[31][7]_i_3_n_0 ),
        .I2(I2C_cstate[10]),
        .I3(\I2C_regblock[31][7]_i_4_n_0 ),
        .I4(\I2C_regblock[27][7]_i_2_n_0 ),
        .O(\I2C_regblock[27][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \I2C_regblock[27][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[2] ),
        .I1(\I2C_addr_reg_n_0_[1] ),
        .I2(\I2C_addr_reg_n_0_[0] ),
        .I3(\I2C_addr_reg_n_0_[3] ),
        .I4(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_regblock[27][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA000000)) 
    \I2C_regblock[28][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[31][7]_i_3_n_0 ),
        .I2(I2C_cstate[10]),
        .I3(\I2C_regblock[31][7]_i_4_n_0 ),
        .I4(\I2C_regblock[28][7]_i_2_n_0 ),
        .O(\I2C_regblock[28][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \I2C_regblock[28][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[1] ),
        .I1(\I2C_addr_reg_n_0_[2] ),
        .I2(\I2C_addr_reg_n_0_[4] ),
        .I3(\I2C_addr_reg_n_0_[0] ),
        .I4(\I2C_addr_reg_n_0_[3] ),
        .O(\I2C_regblock[28][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    \I2C_regblock[29][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[30][7]_i_3_n_0 ),
        .I4(\I2C_regblock[29][7]_i_2_n_0 ),
        .I5(\I2C_addr_reg_n_0_[1] ),
        .O(\I2C_regblock[29][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \I2C_regblock[29][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[4] ),
        .I1(\I2C_addr_reg_n_0_[0] ),
        .O(\I2C_regblock[29][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA000000)) 
    \I2C_regblock[2][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[31][7]_i_3_n_0 ),
        .I2(I2C_cstate[10]),
        .I3(\I2C_regblock[31][7]_i_4_n_0 ),
        .I4(\I2C_regblock[2][7]_i_2_n_0 ),
        .O(\I2C_regblock[2][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \I2C_regblock[2][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[1] ),
        .I1(\I2C_addr_reg_n_0_[2] ),
        .I2(\I2C_addr_reg_n_0_[0] ),
        .I3(\I2C_addr_reg_n_0_[3] ),
        .I4(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_regblock[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    \I2C_regblock[30][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[30][7]_i_3_n_0 ),
        .I4(\I2C_regblock[30][7]_i_4_n_0 ),
        .I5(\I2C_addr_reg_n_0_[0] ),
        .O(\I2C_regblock[30][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \I2C_regblock[30][7]_i_2 
       (.I0(I2C_cstate[10]),
        .I1(I2C_cstate[3]),
        .I2(I2C_cstate[2]),
        .I3(\I2C_rdata[7]_i_8_n_0 ),
        .I4(\I2C_regblock[31][7]_i_8_n_0 ),
        .I5(\I2C_regblock[31][7]_i_7_n_0 ),
        .O(\I2C_regblock[30][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \I2C_regblock[30][7]_i_3 
       (.I0(\I2C_addr_reg_n_0_[3] ),
        .I1(\I2C_addr_reg_n_0_[2] ),
        .O(\I2C_regblock[30][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \I2C_regblock[30][7]_i_4 
       (.I0(\I2C_addr_reg_n_0_[1] ),
        .I1(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_regblock[30][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000EA0000000000)) 
    \I2C_regblock[31][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[31][7]_i_3_n_0 ),
        .I2(I2C_cstate[10]),
        .I3(\I2C_regblock[31][7]_i_4_n_0 ),
        .I4(\I2C_regblock[31][7]_i_5_n_0 ),
        .I5(\I2C_addr_reg_n_0_[3] ),
        .O(\I2C_regblock[31][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \I2C_regblock[31][7]_i_2 
       (.I0(I2C_cstate[8]),
        .I1(I2C_cstate[6]),
        .I2(I2C_cstate[10]),
        .I3(I2C_cstate[9]),
        .I4(\I2C_rdata[7]_i_7_n_0 ),
        .I5(\I2C_regblock[31][7]_i_6_n_0 ),
        .O(Aksv14_write1__12));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \I2C_regblock[31][7]_i_3 
       (.I0(\I2C_regblock[31][7]_i_7_n_0 ),
        .I1(\I2C_regblock[31][7]_i_8_n_0 ),
        .I2(I2C_cstate[4]),
        .I3(I2C_cstate[5]),
        .I4(I2C_cstate[2]),
        .I5(I2C_cstate[3]),
        .O(\I2C_regblock[31][7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \I2C_regblock[31][7]_i_4 
       (.I0(\I2C_addr_reg_n_0_[7] ),
        .I1(\I2C_addr_reg_n_0_[6] ),
        .I2(I2C_reg_update_reg_n_0),
        .I3(\I2C_addr_reg_n_0_[5] ),
        .O(\I2C_regblock[31][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \I2C_regblock[31][7]_i_5 
       (.I0(\I2C_addr_reg_n_0_[2] ),
        .I1(\I2C_addr_reg_n_0_[4] ),
        .I2(\I2C_addr_reg_n_0_[0] ),
        .I3(\I2C_addr_reg_n_0_[1] ),
        .O(\I2C_regblock[31][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \I2C_regblock[31][7]_i_6 
       (.I0(I2C_cstate[0]),
        .I1(I2C_cstate[7]),
        .I2(I2C_cstate[1]),
        .I3(I2C_cstate[2]),
        .I4(I2C_cstate[5]),
        .I5(\I2C_addr[7]_i_23_n_0 ),
        .O(\I2C_regblock[31][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \I2C_regblock[31][7]_i_7 
       (.I0(I2C_cstate[11]),
        .I1(\I2C_addr_reg_n_0_[3] ),
        .I2(I2C_reg_update_i_2_n_0),
        .I3(I2C_cstate[7]),
        .I4(I2C_cstate[6]),
        .I5(\I2C_addr[7]_i_13_n_0 ),
        .O(\I2C_regblock[31][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    \I2C_regblock[31][7]_i_8 
       (.I0(I2C_cstate[0]),
        .I1(I2C_cstate[1]),
        .I2(\I2C_addr_reg_n_0_[2] ),
        .I3(\I2C_addr_reg_n_0_[1] ),
        .I4(\I2C_addr_reg_n_0_[0] ),
        .I5(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_regblock[31][7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hEA000000)) 
    \I2C_regblock[3][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[31][7]_i_3_n_0 ),
        .I2(I2C_cstate[10]),
        .I3(\I2C_regblock[31][7]_i_4_n_0 ),
        .I4(\I2C_regblock[3][7]_i_2_n_0 ),
        .O(\I2C_regblock[3][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \I2C_regblock[3][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[0] ),
        .I1(\I2C_addr_reg_n_0_[2] ),
        .I2(\I2C_addr_reg_n_0_[1] ),
        .I3(\I2C_addr_reg_n_0_[3] ),
        .I4(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_regblock[3][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000E000000000)) 
    \I2C_regblock[4][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[4][7]_i_2_n_0 ),
        .I4(\I2C_regblock[4][7]_i_3_n_0 ),
        .I5(\I2C_addr_reg_n_0_[2] ),
        .O(\I2C_regblock[4][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_regblock[4][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[3] ),
        .I1(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_regblock[4][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \I2C_regblock[4][7]_i_3 
       (.I0(\I2C_addr_reg_n_0_[0] ),
        .I1(\I2C_addr_reg_n_0_[1] ),
        .O(\I2C_regblock[4][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEA000000)) 
    \I2C_regblock[5][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[31][7]_i_3_n_0 ),
        .I2(I2C_cstate[10]),
        .I3(\I2C_regblock[31][7]_i_4_n_0 ),
        .I4(\I2C_regblock[5][7]_i_2_n_0 ),
        .O(\I2C_regblock[5][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \I2C_regblock[5][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[0] ),
        .I1(\I2C_addr_reg_n_0_[1] ),
        .I2(\I2C_addr_reg_n_0_[2] ),
        .I3(\I2C_addr_reg_n_0_[3] ),
        .I4(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_regblock[5][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA000000)) 
    \I2C_regblock[6][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[31][7]_i_3_n_0 ),
        .I2(I2C_cstate[10]),
        .I3(\I2C_regblock[31][7]_i_4_n_0 ),
        .I4(\I2C_regblock[6][7]_i_2_n_0 ),
        .O(\I2C_regblock[6][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \I2C_regblock[6][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[1] ),
        .I1(\I2C_addr_reg_n_0_[0] ),
        .I2(\I2C_addr_reg_n_0_[2] ),
        .I3(\I2C_addr_reg_n_0_[3] ),
        .I4(\I2C_addr_reg_n_0_[4] ),
        .O(\I2C_regblock[6][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA000000)) 
    \I2C_regblock[7][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[31][7]_i_3_n_0 ),
        .I2(I2C_cstate[10]),
        .I3(\I2C_regblock[31][7]_i_4_n_0 ),
        .I4(\I2C_regblock[7][7]_i_2_n_0 ),
        .O(\I2C_regblock[7][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \I2C_regblock[7][7]_i_2 
       (.I0(\I2C_addr_reg_n_0_[3] ),
        .I1(\I2C_addr_reg_n_0_[1] ),
        .I2(\I2C_addr_reg_n_0_[0] ),
        .I3(\I2C_addr_reg_n_0_[4] ),
        .I4(\I2C_addr_reg_n_0_[2] ),
        .O(\I2C_regblock[7][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000E000000000)) 
    \I2C_regblock[8][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[10][7]_i_2_n_0 ),
        .I4(\I2C_regblock[16][7]_i_2_n_0 ),
        .I5(\I2C_addr_reg_n_0_[3] ),
        .O(\I2C_regblock[8][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000E000000000)) 
    \I2C_regblock[9][7]_i_1 
       (.I0(Aksv14_write1__12),
        .I1(\I2C_regblock[30][7]_i_2_n_0 ),
        .I2(\I2C_regblock[31][7]_i_4_n_0 ),
        .I3(\I2C_regblock[12][7]_i_2_n_0 ),
        .I4(\I2C_regblock[24][7]_i_3_n_0 ),
        .I5(\I2C_addr_reg_n_0_[0] ),
        .O(\I2C_regblock[9][7]_i_1_n_0 ));
  FDRE \I2C_regblock_reg[0][0] 
       (.C(clk),
        .CE(\I2C_regblock[0][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[0] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[0][1] 
       (.C(clk),
        .CE(\I2C_regblock[0][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[0] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[0][2] 
       (.C(clk),
        .CE(\I2C_regblock[0][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[0] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[0][3] 
       (.C(clk),
        .CE(\I2C_regblock[0][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[0] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[0][4] 
       (.C(clk),
        .CE(\I2C_regblock[0][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[0] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[0][5] 
       (.C(clk),
        .CE(\I2C_regblock[0][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[0] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[0][6] 
       (.C(clk),
        .CE(\I2C_regblock[0][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[0] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[0][7] 
       (.C(clk),
        .CE(\I2C_regblock[0][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[0] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[10][0] 
       (.C(clk),
        .CE(\I2C_regblock[10][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[10] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[10][1] 
       (.C(clk),
        .CE(\I2C_regblock[10][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[10] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[10][2] 
       (.C(clk),
        .CE(\I2C_regblock[10][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[10] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[10][3] 
       (.C(clk),
        .CE(\I2C_regblock[10][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[10] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[10][4] 
       (.C(clk),
        .CE(\I2C_regblock[10][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[10] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[10][5] 
       (.C(clk),
        .CE(\I2C_regblock[10][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[10] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[10][6] 
       (.C(clk),
        .CE(\I2C_regblock[10][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[10] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[10][7] 
       (.C(clk),
        .CE(\I2C_regblock[10][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[10] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[11][0] 
       (.C(clk),
        .CE(\I2C_regblock[11][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[11] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[11][1] 
       (.C(clk),
        .CE(\I2C_regblock[11][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[11] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[11][2] 
       (.C(clk),
        .CE(\I2C_regblock[11][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[11] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[11][3] 
       (.C(clk),
        .CE(\I2C_regblock[11][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[11] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[11][4] 
       (.C(clk),
        .CE(\I2C_regblock[11][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[11] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[11][5] 
       (.C(clk),
        .CE(\I2C_regblock[11][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[11] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[11][6] 
       (.C(clk),
        .CE(\I2C_regblock[11][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[11] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[11][7] 
       (.C(clk),
        .CE(\I2C_regblock[11][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[11] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[12][0] 
       (.C(clk),
        .CE(\I2C_regblock[12][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[12] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[12][1] 
       (.C(clk),
        .CE(\I2C_regblock[12][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[12] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[12][2] 
       (.C(clk),
        .CE(\I2C_regblock[12][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[12] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[12][3] 
       (.C(clk),
        .CE(\I2C_regblock[12][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[12] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[12][4] 
       (.C(clk),
        .CE(\I2C_regblock[12][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[12] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[12][5] 
       (.C(clk),
        .CE(\I2C_regblock[12][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[12] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[12][6] 
       (.C(clk),
        .CE(\I2C_regblock[12][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[12] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[12][7] 
       (.C(clk),
        .CE(\I2C_regblock[12][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[12] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[13][0] 
       (.C(clk),
        .CE(\I2C_regblock[13][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[13] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[13][1] 
       (.C(clk),
        .CE(\I2C_regblock[13][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[13] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[13][2] 
       (.C(clk),
        .CE(\I2C_regblock[13][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[13] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[13][3] 
       (.C(clk),
        .CE(\I2C_regblock[13][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[13] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[13][4] 
       (.C(clk),
        .CE(\I2C_regblock[13][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[13] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[13][5] 
       (.C(clk),
        .CE(\I2C_regblock[13][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[13] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[13][6] 
       (.C(clk),
        .CE(\I2C_regblock[13][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[13] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[13][7] 
       (.C(clk),
        .CE(\I2C_regblock[13][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[13] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[14][0] 
       (.C(clk),
        .CE(\I2C_regblock[14][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[14] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[14][1] 
       (.C(clk),
        .CE(\I2C_regblock[14][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[14] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[14][2] 
       (.C(clk),
        .CE(\I2C_regblock[14][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[14] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[14][3] 
       (.C(clk),
        .CE(\I2C_regblock[14][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[14] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[14][4] 
       (.C(clk),
        .CE(\I2C_regblock[14][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[14] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[14][5] 
       (.C(clk),
        .CE(\I2C_regblock[14][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[14] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[14][6] 
       (.C(clk),
        .CE(\I2C_regblock[14][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[14] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[14][7] 
       (.C(clk),
        .CE(\I2C_regblock[14][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[14] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[15][0] 
       (.C(clk),
        .CE(\I2C_regblock[15][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[15] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[15][1] 
       (.C(clk),
        .CE(\I2C_regblock[15][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[15] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[15][2] 
       (.C(clk),
        .CE(\I2C_regblock[15][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[15] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[15][3] 
       (.C(clk),
        .CE(\I2C_regblock[15][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[15] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[15][4] 
       (.C(clk),
        .CE(\I2C_regblock[15][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[15] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[15][5] 
       (.C(clk),
        .CE(\I2C_regblock[15][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[15] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[15][6] 
       (.C(clk),
        .CE(\I2C_regblock[15][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[15] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[15][7] 
       (.C(clk),
        .CE(\I2C_regblock[15][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[15] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[16][0] 
       (.C(clk),
        .CE(\I2C_regblock[16][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[16] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[16][1] 
       (.C(clk),
        .CE(\I2C_regblock[16][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[16] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[16][2] 
       (.C(clk),
        .CE(\I2C_regblock[16][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[16] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[16][3] 
       (.C(clk),
        .CE(\I2C_regblock[16][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[16] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[16][4] 
       (.C(clk),
        .CE(\I2C_regblock[16][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[16] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[16][5] 
       (.C(clk),
        .CE(\I2C_regblock[16][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[16] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[16][6] 
       (.C(clk),
        .CE(\I2C_regblock[16][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[16] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[16][7] 
       (.C(clk),
        .CE(\I2C_regblock[16][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[16] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[17][0] 
       (.C(clk),
        .CE(\I2C_regblock[17][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[17] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[17][1] 
       (.C(clk),
        .CE(\I2C_regblock[17][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[17] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[17][2] 
       (.C(clk),
        .CE(\I2C_regblock[17][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[17] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[17][3] 
       (.C(clk),
        .CE(\I2C_regblock[17][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[17] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[17][4] 
       (.C(clk),
        .CE(\I2C_regblock[17][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[17] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[17][5] 
       (.C(clk),
        .CE(\I2C_regblock[17][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[17] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[17][6] 
       (.C(clk),
        .CE(\I2C_regblock[17][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[17] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[17][7] 
       (.C(clk),
        .CE(\I2C_regblock[17][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[17] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[18][0] 
       (.C(clk),
        .CE(\I2C_regblock[18][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[18] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[18][1] 
       (.C(clk),
        .CE(\I2C_regblock[18][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[18] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[18][2] 
       (.C(clk),
        .CE(\I2C_regblock[18][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[18] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[18][3] 
       (.C(clk),
        .CE(\I2C_regblock[18][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[18] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[18][4] 
       (.C(clk),
        .CE(\I2C_regblock[18][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[18] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[18][5] 
       (.C(clk),
        .CE(\I2C_regblock[18][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[18] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[18][6] 
       (.C(clk),
        .CE(\I2C_regblock[18][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[18] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[18][7] 
       (.C(clk),
        .CE(\I2C_regblock[18][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[18] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[19][0] 
       (.C(clk),
        .CE(\I2C_regblock[19][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[19] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[19][1] 
       (.C(clk),
        .CE(\I2C_regblock[19][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[19] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[19][2] 
       (.C(clk),
        .CE(\I2C_regblock[19][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[19] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[19][3] 
       (.C(clk),
        .CE(\I2C_regblock[19][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[19] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[19][4] 
       (.C(clk),
        .CE(\I2C_regblock[19][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[19] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[19][5] 
       (.C(clk),
        .CE(\I2C_regblock[19][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[19] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[19][6] 
       (.C(clk),
        .CE(\I2C_regblock[19][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[19] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[19][7] 
       (.C(clk),
        .CE(\I2C_regblock[19][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[19] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[1][0] 
       (.C(clk),
        .CE(\I2C_regblock[1][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[1] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[1][1] 
       (.C(clk),
        .CE(\I2C_regblock[1][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[1] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[1][2] 
       (.C(clk),
        .CE(\I2C_regblock[1][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[1] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[1][3] 
       (.C(clk),
        .CE(\I2C_regblock[1][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[1] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[1][4] 
       (.C(clk),
        .CE(\I2C_regblock[1][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[1] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[1][5] 
       (.C(clk),
        .CE(\I2C_regblock[1][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[1] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[1][6] 
       (.C(clk),
        .CE(\I2C_regblock[1][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[1] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[1][7] 
       (.C(clk),
        .CE(\I2C_regblock[1][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[1] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[20][0] 
       (.C(clk),
        .CE(\I2C_regblock[20][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[20] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[20][1] 
       (.C(clk),
        .CE(\I2C_regblock[20][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[20] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[20][2] 
       (.C(clk),
        .CE(\I2C_regblock[20][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[20] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[20][3] 
       (.C(clk),
        .CE(\I2C_regblock[20][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[20] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[20][4] 
       (.C(clk),
        .CE(\I2C_regblock[20][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[20] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[20][5] 
       (.C(clk),
        .CE(\I2C_regblock[20][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[20] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[20][6] 
       (.C(clk),
        .CE(\I2C_regblock[20][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[20] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[20][7] 
       (.C(clk),
        .CE(\I2C_regblock[20][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[20] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[21][0] 
       (.C(clk),
        .CE(\I2C_regblock[21][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[21] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[21][1] 
       (.C(clk),
        .CE(\I2C_regblock[21][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[21] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[21][2] 
       (.C(clk),
        .CE(\I2C_regblock[21][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[21] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[21][3] 
       (.C(clk),
        .CE(\I2C_regblock[21][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[21] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[21][4] 
       (.C(clk),
        .CE(\I2C_regblock[21][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[21] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[21][5] 
       (.C(clk),
        .CE(\I2C_regblock[21][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[21] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[21][6] 
       (.C(clk),
        .CE(\I2C_regblock[21][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[21] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[21][7] 
       (.C(clk),
        .CE(\I2C_regblock[21][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[21] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[22][0] 
       (.C(clk),
        .CE(\I2C_regblock[22][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[22] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[22][1] 
       (.C(clk),
        .CE(\I2C_regblock[22][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[22] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[22][2] 
       (.C(clk),
        .CE(\I2C_regblock[22][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[22] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[22][3] 
       (.C(clk),
        .CE(\I2C_regblock[22][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[22] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[22][4] 
       (.C(clk),
        .CE(\I2C_regblock[22][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[22] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[22][5] 
       (.C(clk),
        .CE(\I2C_regblock[22][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[22] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[22][6] 
       (.C(clk),
        .CE(\I2C_regblock[22][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[22] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[22][7] 
       (.C(clk),
        .CE(\I2C_regblock[22][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[22] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[23][0] 
       (.C(clk),
        .CE(\I2C_regblock[23][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[23] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[23][1] 
       (.C(clk),
        .CE(\I2C_regblock[23][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[23] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[23][2] 
       (.C(clk),
        .CE(\I2C_regblock[23][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[23] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[23][3] 
       (.C(clk),
        .CE(\I2C_regblock[23][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[23] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[23][4] 
       (.C(clk),
        .CE(\I2C_regblock[23][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[23] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[23][5] 
       (.C(clk),
        .CE(\I2C_regblock[23][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[23] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[23][6] 
       (.C(clk),
        .CE(\I2C_regblock[23][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[23] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[23][7] 
       (.C(clk),
        .CE(\I2C_regblock[23][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[23] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[24][0] 
       (.C(clk),
        .CE(\I2C_regblock[24][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(An[0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[24][1] 
       (.C(clk),
        .CE(\I2C_regblock[24][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(An[1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[24][2] 
       (.C(clk),
        .CE(\I2C_regblock[24][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(An[2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[24][3] 
       (.C(clk),
        .CE(\I2C_regblock[24][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(An[3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[24][4] 
       (.C(clk),
        .CE(\I2C_regblock[24][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(An[4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[24][5] 
       (.C(clk),
        .CE(\I2C_regblock[24][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(An[5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[24][6] 
       (.C(clk),
        .CE(\I2C_regblock[24][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(An[6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[24][7] 
       (.C(clk),
        .CE(\I2C_regblock[24][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(An[7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[25][0] 
       (.C(clk),
        .CE(\I2C_regblock[25][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(An[8]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[25][1] 
       (.C(clk),
        .CE(\I2C_regblock[25][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(An[9]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[25][2] 
       (.C(clk),
        .CE(\I2C_regblock[25][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(An[10]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[25][3] 
       (.C(clk),
        .CE(\I2C_regblock[25][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(An[11]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[25][4] 
       (.C(clk),
        .CE(\I2C_regblock[25][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(An[12]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[25][5] 
       (.C(clk),
        .CE(\I2C_regblock[25][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(An[13]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[25][6] 
       (.C(clk),
        .CE(\I2C_regblock[25][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(An[14]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[25][7] 
       (.C(clk),
        .CE(\I2C_regblock[25][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(An[15]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[26][0] 
       (.C(clk),
        .CE(\I2C_regblock[26][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(An[16]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[26][1] 
       (.C(clk),
        .CE(\I2C_regblock[26][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(An[17]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[26][2] 
       (.C(clk),
        .CE(\I2C_regblock[26][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(An[18]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[26][3] 
       (.C(clk),
        .CE(\I2C_regblock[26][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(An[19]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[26][4] 
       (.C(clk),
        .CE(\I2C_regblock[26][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(An[20]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[26][5] 
       (.C(clk),
        .CE(\I2C_regblock[26][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(An[21]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[26][6] 
       (.C(clk),
        .CE(\I2C_regblock[26][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(An[22]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[26][7] 
       (.C(clk),
        .CE(\I2C_regblock[26][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(An[23]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[27][0] 
       (.C(clk),
        .CE(\I2C_regblock[27][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(An[24]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[27][1] 
       (.C(clk),
        .CE(\I2C_regblock[27][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(An[25]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[27][2] 
       (.C(clk),
        .CE(\I2C_regblock[27][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(An[26]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[27][3] 
       (.C(clk),
        .CE(\I2C_regblock[27][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(An[27]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[27][4] 
       (.C(clk),
        .CE(\I2C_regblock[27][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(An[28]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[27][5] 
       (.C(clk),
        .CE(\I2C_regblock[27][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(An[29]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[27][6] 
       (.C(clk),
        .CE(\I2C_regblock[27][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(An[30]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[27][7] 
       (.C(clk),
        .CE(\I2C_regblock[27][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(An[31]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[28][0] 
       (.C(clk),
        .CE(\I2C_regblock[28][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(An[32]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[28][1] 
       (.C(clk),
        .CE(\I2C_regblock[28][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(An[33]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[28][2] 
       (.C(clk),
        .CE(\I2C_regblock[28][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(An[34]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[28][3] 
       (.C(clk),
        .CE(\I2C_regblock[28][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(An[35]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[28][4] 
       (.C(clk),
        .CE(\I2C_regblock[28][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(An[36]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[28][5] 
       (.C(clk),
        .CE(\I2C_regblock[28][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(An[37]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[28][6] 
       (.C(clk),
        .CE(\I2C_regblock[28][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(An[38]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[28][7] 
       (.C(clk),
        .CE(\I2C_regblock[28][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(An[39]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[29][0] 
       (.C(clk),
        .CE(\I2C_regblock[29][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(An[40]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[29][1] 
       (.C(clk),
        .CE(\I2C_regblock[29][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(An[41]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[29][2] 
       (.C(clk),
        .CE(\I2C_regblock[29][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(An[42]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[29][3] 
       (.C(clk),
        .CE(\I2C_regblock[29][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(An[43]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[29][4] 
       (.C(clk),
        .CE(\I2C_regblock[29][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(An[44]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[29][5] 
       (.C(clk),
        .CE(\I2C_regblock[29][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(An[45]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[29][6] 
       (.C(clk),
        .CE(\I2C_regblock[29][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(An[46]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[29][7] 
       (.C(clk),
        .CE(\I2C_regblock[29][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(An[47]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[2][0] 
       (.C(clk),
        .CE(\I2C_regblock[2][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[2] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[2][1] 
       (.C(clk),
        .CE(\I2C_regblock[2][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[2] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[2][2] 
       (.C(clk),
        .CE(\I2C_regblock[2][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[2] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[2][3] 
       (.C(clk),
        .CE(\I2C_regblock[2][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[2] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[2][4] 
       (.C(clk),
        .CE(\I2C_regblock[2][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[2] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[2][5] 
       (.C(clk),
        .CE(\I2C_regblock[2][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[2] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[2][6] 
       (.C(clk),
        .CE(\I2C_regblock[2][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[2] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[2][7] 
       (.C(clk),
        .CE(\I2C_regblock[2][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[2] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[30][0] 
       (.C(clk),
        .CE(\I2C_regblock[30][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(An[48]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[30][1] 
       (.C(clk),
        .CE(\I2C_regblock[30][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(An[49]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[30][2] 
       (.C(clk),
        .CE(\I2C_regblock[30][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(An[50]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[30][3] 
       (.C(clk),
        .CE(\I2C_regblock[30][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(An[51]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[30][4] 
       (.C(clk),
        .CE(\I2C_regblock[30][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(An[52]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[30][5] 
       (.C(clk),
        .CE(\I2C_regblock[30][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(An[53]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[30][6] 
       (.C(clk),
        .CE(\I2C_regblock[30][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(An[54]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[30][7] 
       (.C(clk),
        .CE(\I2C_regblock[30][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(An[55]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[31][0] 
       (.C(clk),
        .CE(\I2C_regblock[31][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(An[56]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[31][1] 
       (.C(clk),
        .CE(\I2C_regblock[31][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(An[57]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[31][2] 
       (.C(clk),
        .CE(\I2C_regblock[31][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(An[58]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[31][3] 
       (.C(clk),
        .CE(\I2C_regblock[31][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(An[59]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[31][4] 
       (.C(clk),
        .CE(\I2C_regblock[31][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(An[60]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[31][5] 
       (.C(clk),
        .CE(\I2C_regblock[31][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(An[61]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[31][6] 
       (.C(clk),
        .CE(\I2C_regblock[31][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(An[62]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[31][7] 
       (.C(clk),
        .CE(\I2C_regblock[31][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(An[63]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[3][0] 
       (.C(clk),
        .CE(\I2C_regblock[3][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[3] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[3][1] 
       (.C(clk),
        .CE(\I2C_regblock[3][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[3] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[3][2] 
       (.C(clk),
        .CE(\I2C_regblock[3][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[3] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[3][3] 
       (.C(clk),
        .CE(\I2C_regblock[3][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[3] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[3][4] 
       (.C(clk),
        .CE(\I2C_regblock[3][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[3] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[3][5] 
       (.C(clk),
        .CE(\I2C_regblock[3][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[3] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[3][6] 
       (.C(clk),
        .CE(\I2C_regblock[3][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[3] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[3][7] 
       (.C(clk),
        .CE(\I2C_regblock[3][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[3] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[4][0] 
       (.C(clk),
        .CE(\I2C_regblock[4][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[4] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[4][1] 
       (.C(clk),
        .CE(\I2C_regblock[4][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[4] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[4][2] 
       (.C(clk),
        .CE(\I2C_regblock[4][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[4] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[4][3] 
       (.C(clk),
        .CE(\I2C_regblock[4][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[4] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[4][4] 
       (.C(clk),
        .CE(\I2C_regblock[4][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[4] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[4][5] 
       (.C(clk),
        .CE(\I2C_regblock[4][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[4] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[4][6] 
       (.C(clk),
        .CE(\I2C_regblock[4][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[4] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[4][7] 
       (.C(clk),
        .CE(\I2C_regblock[4][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[4] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[5][0] 
       (.C(clk),
        .CE(\I2C_regblock[5][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[5] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[5][1] 
       (.C(clk),
        .CE(\I2C_regblock[5][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[5] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[5][2] 
       (.C(clk),
        .CE(\I2C_regblock[5][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[5] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[5][3] 
       (.C(clk),
        .CE(\I2C_regblock[5][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[5] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[5][4] 
       (.C(clk),
        .CE(\I2C_regblock[5][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[5] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[5][5] 
       (.C(clk),
        .CE(\I2C_regblock[5][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[5] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[5][6] 
       (.C(clk),
        .CE(\I2C_regblock[5][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[5] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[5][7] 
       (.C(clk),
        .CE(\I2C_regblock[5][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[5] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[6][0] 
       (.C(clk),
        .CE(\I2C_regblock[6][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[6] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[6][1] 
       (.C(clk),
        .CE(\I2C_regblock[6][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[6] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[6][2] 
       (.C(clk),
        .CE(\I2C_regblock[6][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[6] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[6][3] 
       (.C(clk),
        .CE(\I2C_regblock[6][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[6] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[6][4] 
       (.C(clk),
        .CE(\I2C_regblock[6][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[6] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[6][5] 
       (.C(clk),
        .CE(\I2C_regblock[6][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[6] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[6][6] 
       (.C(clk),
        .CE(\I2C_regblock[6][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[6] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[6][7] 
       (.C(clk),
        .CE(\I2C_regblock[6][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[6] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[7][0] 
       (.C(clk),
        .CE(\I2C_regblock[7][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[7] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[7][1] 
       (.C(clk),
        .CE(\I2C_regblock[7][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[7] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[7][2] 
       (.C(clk),
        .CE(\I2C_regblock[7][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[7] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[7][3] 
       (.C(clk),
        .CE(\I2C_regblock[7][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[7] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[7][4] 
       (.C(clk),
        .CE(\I2C_regblock[7][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[7] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[7][5] 
       (.C(clk),
        .CE(\I2C_regblock[7][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[7] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[7][6] 
       (.C(clk),
        .CE(\I2C_regblock[7][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[7] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[7][7] 
       (.C(clk),
        .CE(\I2C_regblock[7][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[7] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[8][0] 
       (.C(clk),
        .CE(\I2C_regblock[8][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[8] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[8][1] 
       (.C(clk),
        .CE(\I2C_regblock[8][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[8] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[8][2] 
       (.C(clk),
        .CE(\I2C_regblock[8][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[8] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[8][3] 
       (.C(clk),
        .CE(\I2C_regblock[8][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[8] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[8][4] 
       (.C(clk),
        .CE(\I2C_regblock[8][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[8] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[8][5] 
       (.C(clk),
        .CE(\I2C_regblock[8][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[8] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[8][6] 
       (.C(clk),
        .CE(\I2C_regblock[8][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[8] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[8][7] 
       (.C(clk),
        .CE(\I2C_regblock[8][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[8] [7]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[9][0] 
       (.C(clk),
        .CE(\I2C_regblock[9][7]_i_1_n_0 ),
        .D(I2C_wdata[0]),
        .Q(\I2C_regblock_reg[9] [0]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[9][1] 
       (.C(clk),
        .CE(\I2C_regblock[9][7]_i_1_n_0 ),
        .D(I2C_wdata[1]),
        .Q(\I2C_regblock_reg[9] [1]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[9][2] 
       (.C(clk),
        .CE(\I2C_regblock[9][7]_i_1_n_0 ),
        .D(I2C_wdata[2]),
        .Q(\I2C_regblock_reg[9] [2]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[9][3] 
       (.C(clk),
        .CE(\I2C_regblock[9][7]_i_1_n_0 ),
        .D(I2C_wdata[3]),
        .Q(\I2C_regblock_reg[9] [3]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[9][4] 
       (.C(clk),
        .CE(\I2C_regblock[9][7]_i_1_n_0 ),
        .D(I2C_wdata[4]),
        .Q(\I2C_regblock_reg[9] [4]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[9][5] 
       (.C(clk),
        .CE(\I2C_regblock[9][7]_i_1_n_0 ),
        .D(I2C_wdata[5]),
        .Q(\I2C_regblock_reg[9] [5]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[9][6] 
       (.C(clk),
        .CE(\I2C_regblock[9][7]_i_1_n_0 ),
        .D(I2C_wdata[6]),
        .Q(\I2C_regblock_reg[9] [6]),
        .R(1'b0));
  FDRE \I2C_regblock_reg[9][7] 
       (.C(clk),
        .CE(\I2C_regblock[9][7]_i_1_n_0 ),
        .D(I2C_wdata[7]),
        .Q(\I2C_regblock_reg[9] [7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00303088)) 
    \I2C_wdata[0]_i_1 
       (.I0(\I2C_addr[0]_i_2_n_0 ),
        .I1(I2C_cstate[6]),
        .I2(I2C_rdata[0]),
        .I3(I2C_cstate[10]),
        .I4(I2C_cstate[9]),
        .O(\I2C_wdata[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00303088)) 
    \I2C_wdata[1]_i_1 
       (.I0(I2C_wdata[0]),
        .I1(I2C_cstate[6]),
        .I2(I2C_rdata[1]),
        .I3(I2C_cstate[10]),
        .I4(I2C_cstate[9]),
        .O(\I2C_wdata[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00303088)) 
    \I2C_wdata[2]_i_1 
       (.I0(I2C_wdata[1]),
        .I1(I2C_cstate[6]),
        .I2(I2C_rdata[2]),
        .I3(I2C_cstate[10]),
        .I4(I2C_cstate[9]),
        .O(\I2C_wdata[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00303088)) 
    \I2C_wdata[3]_i_1 
       (.I0(I2C_wdata[2]),
        .I1(I2C_cstate[6]),
        .I2(I2C_rdata[3]),
        .I3(I2C_cstate[10]),
        .I4(I2C_cstate[9]),
        .O(\I2C_wdata[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00303088)) 
    \I2C_wdata[4]_i_1 
       (.I0(I2C_wdata[3]),
        .I1(I2C_cstate[6]),
        .I2(I2C_rdata[4]),
        .I3(I2C_cstate[10]),
        .I4(I2C_cstate[9]),
        .O(\I2C_wdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00303088)) 
    \I2C_wdata[5]_i_1 
       (.I0(I2C_wdata[4]),
        .I1(I2C_cstate[6]),
        .I2(I2C_rdata[5]),
        .I3(I2C_cstate[10]),
        .I4(I2C_cstate[9]),
        .O(\I2C_wdata[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00303088)) 
    \I2C_wdata[6]_i_1 
       (.I0(I2C_wdata[5]),
        .I1(I2C_cstate[6]),
        .I2(I2C_rdata[6]),
        .I3(I2C_cstate[10]),
        .I4(I2C_cstate[9]),
        .O(\I2C_wdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEEEEB)) 
    \I2C_wdata[7]_i_1 
       (.I0(\I2C_wdata[7]_i_4_n_0 ),
        .I1(I2C_cstate[6]),
        .I2(I2C_cstate[11]),
        .I3(I2C_reg_update_i_2_n_0),
        .I4(I2C_cstate[7]),
        .I5(\I2C_wdata[7]_i_5_n_0 ),
        .O(\I2C_wdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0001)) 
    \I2C_wdata[7]_i_2 
       (.I0(I2C_cstate[7]),
        .I1(I2C_cstate[12]),
        .I2(I2C_cstate[13]),
        .I3(I2C_cstate[11]),
        .I4(I2C_cstate[6]),
        .I5(\I2C_wdata[7]_i_4_n_0 ),
        .O(I2C_wdata_1));
  LUT5 #(
    .INIT(32'h00303088)) 
    \I2C_wdata[7]_i_3 
       (.I0(I2C_wdata[6]),
        .I1(I2C_cstate[6]),
        .I2(I2C_rdata[7]),
        .I3(I2C_cstate[10]),
        .I4(I2C_cstate[9]),
        .O(\I2C_wdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFA0004)) 
    \I2C_wdata[7]_i_4 
       (.I0(I2C_cstate[12]),
        .I1(\I2C_daddr[7]_i_17_n_0 ),
        .I2(I2C_cstate[11]),
        .I3(I2C_cstate[13]),
        .I4(I2C_cstate[7]),
        .I5(\I2C_wdata[7]_i_6_n_0 ),
        .O(\I2C_wdata[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \I2C_wdata[7]_i_5 
       (.I0(I2C_cstate[13]),
        .I1(I2C_cstate[11]),
        .I2(I2C_cstate[12]),
        .I3(\I2C_rdata[7]_i_5_n_0 ),
        .I4(\I2C_wdata[7]_i_7_n_0 ),
        .O(\I2C_wdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \I2C_wdata[7]_i_6 
       (.I0(I2C_cstate[0]),
        .I1(I2C_cstate[10]),
        .I2(I2C_cstate[1]),
        .I3(\I2C_wdata[7]_i_8_n_0 ),
        .I4(\I2C_addr[7]_i_13_n_0 ),
        .I5(\I2C_rdata[7]_i_8_n_0 ),
        .O(\I2C_wdata[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \I2C_wdata[7]_i_7 
       (.I0(I2C_cstate[7]),
        .I1(I2C_cstate[8]),
        .I2(I2C_cstate[4]),
        .I3(I2C_cstate[5]),
        .O(\I2C_wdata[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFEFEEE)) 
    \I2C_wdata[7]_i_8 
       (.I0(I2C_cstate[2]),
        .I1(I2C_cstate[3]),
        .I2(I2C_cstate[11]),
        .I3(I2C_cstate[13]),
        .I4(I2C_cstate[12]),
        .O(\I2C_wdata[7]_i_8_n_0 ));
  FDRE \I2C_wdata_reg[0] 
       (.C(clk),
        .CE(I2C_wdata_1),
        .D(\I2C_wdata[0]_i_1_n_0 ),
        .Q(I2C_wdata[0]),
        .R(\I2C_wdata[7]_i_1_n_0 ));
  FDRE \I2C_wdata_reg[1] 
       (.C(clk),
        .CE(I2C_wdata_1),
        .D(\I2C_wdata[1]_i_1_n_0 ),
        .Q(I2C_wdata[1]),
        .R(\I2C_wdata[7]_i_1_n_0 ));
  FDRE \I2C_wdata_reg[2] 
       (.C(clk),
        .CE(I2C_wdata_1),
        .D(\I2C_wdata[2]_i_1_n_0 ),
        .Q(I2C_wdata[2]),
        .R(\I2C_wdata[7]_i_1_n_0 ));
  FDRE \I2C_wdata_reg[3] 
       (.C(clk),
        .CE(I2C_wdata_1),
        .D(\I2C_wdata[3]_i_1_n_0 ),
        .Q(I2C_wdata[3]),
        .R(\I2C_wdata[7]_i_1_n_0 ));
  FDRE \I2C_wdata_reg[4] 
       (.C(clk),
        .CE(I2C_wdata_1),
        .D(\I2C_wdata[4]_i_1_n_0 ),
        .Q(I2C_wdata[4]),
        .R(\I2C_wdata[7]_i_1_n_0 ));
  FDRE \I2C_wdata_reg[5] 
       (.C(clk),
        .CE(I2C_wdata_1),
        .D(\I2C_wdata[5]_i_1_n_0 ),
        .Q(I2C_wdata[5]),
        .R(\I2C_wdata[7]_i_1_n_0 ));
  FDRE \I2C_wdata_reg[6] 
       (.C(clk),
        .CE(I2C_wdata_1),
        .D(\I2C_wdata[6]_i_1_n_0 ),
        .Q(I2C_wdata[6]),
        .R(\I2C_wdata[7]_i_1_n_0 ));
  FDRE \I2C_wdata_reg[7] 
       (.C(clk),
        .CE(I2C_wdata_1),
        .D(\I2C_wdata[7]_i_3_n_0 ),
        .Q(I2C_wdata[7]),
        .R(\I2C_wdata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h5503)) 
    \SCL_cstate[0]_i_1 
       (.I0(\SCL_cstate[1]_i_2_n_0 ),
        .I1(SCL_cstate[1]),
        .I2(SCL_cstate[2]),
        .I3(SCL_cstate[0]),
        .O(SCL_nstate[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \SCL_cstate[1]_i_1 
       (.I0(SCL_cstate[3]),
        .I1(SCL_cstate[2]),
        .I2(\SCL_cstate[1]_i_2_n_0 ),
        .I3(SCL_cstate[1]),
        .O(\SCL_cstate[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFEFEEE)) 
    \SCL_cstate[1]_i_2 
       (.I0(\SCL_rfcnt_reg_n_0_[3] ),
        .I1(\SCL_rfcnt_reg_n_0_[4] ),
        .I2(\SCL_rfcnt_reg_n_0_[2] ),
        .I3(\SCL_rfcnt_reg_n_0_[1] ),
        .I4(\SCL_rfcnt_reg_n_0_[0] ),
        .I5(SCL_sync),
        .O(\SCL_cstate[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \SCL_cstate[2]_i_1 
       (.I0(SCL_cstate[1]),
        .I1(SCL_nstate2__0),
        .I2(SCL_cstate[2]),
        .O(SCL_nstate[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \SCL_cstate[3]_i_1 
       (.I0(SCL_cstate[2]),
        .I1(SCL_nstate2__0),
        .O(SCL_nstate[3]));
  LUT6 #(
    .INIT(64'hFEFEFEEE00000000)) 
    \SCL_cstate[3]_i_2 
       (.I0(\SCL_rfcnt_reg_n_0_[3] ),
        .I1(\SCL_rfcnt_reg_n_0_[4] ),
        .I2(\SCL_rfcnt_reg_n_0_[2] ),
        .I3(\SCL_rfcnt_reg_n_0_[1] ),
        .I4(\SCL_rfcnt_reg_n_0_[0] ),
        .I5(SCL_sync),
        .O(SCL_nstate2__0));
  FDSE #(
    .INIT(1'b1)) 
    \SCL_cstate_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(SCL_nstate[0]),
        .Q(SCL_cstate[0]),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \SCL_cstate_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\SCL_cstate[1]_i_1_n_0 ),
        .Q(SCL_cstate[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \SCL_cstate_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(SCL_nstate[2]),
        .Q(SCL_cstate[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \SCL_cstate_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(SCL_nstate[3]),
        .Q(SCL_cstate[3]),
        .R(reset));
  LUT3 #(
    .INIT(8'h01)) 
    \SCL_rfcnt[0]_i_1 
       (.I0(SCL_cstate[1]),
        .I1(SCL_cstate[3]),
        .I2(\SCL_rfcnt_reg_n_0_[0] ),
        .O(\SCL_rfcnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \SCL_rfcnt[1]_i_1 
       (.I0(\SCL_rfcnt_reg_n_0_[1] ),
        .I1(\SCL_rfcnt_reg_n_0_[0] ),
        .I2(SCL_cstate[1]),
        .I3(SCL_cstate[3]),
        .O(\SCL_rfcnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h0000006A)) 
    \SCL_rfcnt[2]_i_1 
       (.I0(\SCL_rfcnt_reg_n_0_[2] ),
        .I1(\SCL_rfcnt_reg_n_0_[1] ),
        .I2(\SCL_rfcnt_reg_n_0_[0] ),
        .I3(SCL_cstate[1]),
        .I4(SCL_cstate[3]),
        .O(\SCL_rfcnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006AAA)) 
    \SCL_rfcnt[3]_i_1 
       (.I0(\SCL_rfcnt_reg_n_0_[3] ),
        .I1(\SCL_rfcnt_reg_n_0_[2] ),
        .I2(\SCL_rfcnt_reg_n_0_[0] ),
        .I3(\SCL_rfcnt_reg_n_0_[1] ),
        .I4(SCL_cstate[1]),
        .I5(SCL_cstate[3]),
        .O(\SCL_rfcnt[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \SCL_rfcnt[4]_i_1 
       (.I0(SCL_sync),
        .I1(SCL_cstate[2]),
        .I2(SCL_cstate[0]),
        .O(\SCL_rfcnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \SCL_rfcnt[4]_i_2 
       (.I0(\SCL_rfcnt_reg_n_0_[4] ),
        .I1(\SCL_rfcnt_reg_n_0_[3] ),
        .I2(\SCL_rfcnt_reg_n_0_[1] ),
        .I3(\SCL_rfcnt_reg_n_0_[0] ),
        .I4(\SCL_rfcnt_reg_n_0_[2] ),
        .I5(\SCL_rfcnt[4]_i_3_n_0 ),
        .O(\SCL_rfcnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \SCL_rfcnt[4]_i_3 
       (.I0(SCL_cstate[3]),
        .I1(SCL_cstate[1]),
        .O(\SCL_rfcnt[4]_i_3_n_0 ));
  FDRE \SCL_rfcnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\SCL_rfcnt[0]_i_1_n_0 ),
        .Q(\SCL_rfcnt_reg_n_0_[0] ),
        .R(\SCL_rfcnt[4]_i_1_n_0 ));
  FDRE \SCL_rfcnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\SCL_rfcnt[1]_i_1_n_0 ),
        .Q(\SCL_rfcnt_reg_n_0_[1] ),
        .R(\SCL_rfcnt[4]_i_1_n_0 ));
  FDRE \SCL_rfcnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\SCL_rfcnt[2]_i_1_n_0 ),
        .Q(\SCL_rfcnt_reg_n_0_[2] ),
        .R(\SCL_rfcnt[4]_i_1_n_0 ));
  FDRE \SCL_rfcnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\SCL_rfcnt[3]_i_1_n_0 ),
        .Q(\SCL_rfcnt_reg_n_0_[3] ),
        .R(\SCL_rfcnt[4]_i_1_n_0 ));
  FDRE \SCL_rfcnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\SCL_rfcnt[4]_i_2_n_0 ),
        .Q(\SCL_rfcnt_reg_n_0_[4] ),
        .R(\SCL_rfcnt[4]_i_1_n_0 ));
  FDRE SCL_s_reg
       (.C(clk),
        .CE(1'b1),
        .D(SCL),
        .Q(SCL_s),
        .R(1'b0));
  FDRE SCL_sync_reg
       (.C(clk),
        .CE(1'b1),
        .D(SCL_s),
        .Q(SCL_sync),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h5503)) 
    \SDA_cstate[0]_i_1 
       (.I0(\SDA_cstate[1]_i_2_n_0 ),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .O(SDA_nstate[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \SDA_cstate[1]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(\SDA_cstate[1]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .O(SDA_nstate[1]));
  LUT6 #(
    .INIT(64'h00000000FEFEFEEE)) 
    \SDA_cstate[1]_i_2 
       (.I0(\SDA_rfcnt_reg_n_0_[3] ),
        .I1(\SDA_rfcnt_reg_n_0_[4] ),
        .I2(\SDA_rfcnt_reg_n_0_[2] ),
        .I3(\SDA_rfcnt_reg_n_0_[1] ),
        .I4(\SDA_rfcnt_reg_n_0_[0] ),
        .I5(SDA_sync),
        .O(\SDA_cstate[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \SDA_cstate[2]_i_1 
       (.I0(p_0_in[1]),
        .I1(SDA_nstate2__0),
        .I2(p_0_in[2]),
        .O(SDA_nstate[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \SDA_cstate[3]_i_1 
       (.I0(p_0_in[2]),
        .I1(SDA_nstate2__0),
        .O(SDA_nstate[3]));
  LUT6 #(
    .INIT(64'hFEFEFEEE00000000)) 
    \SDA_cstate[3]_i_2 
       (.I0(\SDA_rfcnt_reg_n_0_[3] ),
        .I1(\SDA_rfcnt_reg_n_0_[4] ),
        .I2(\SDA_rfcnt_reg_n_0_[2] ),
        .I3(\SDA_rfcnt_reg_n_0_[1] ),
        .I4(\SDA_rfcnt_reg_n_0_[0] ),
        .I5(SDA_sync),
        .O(SDA_nstate2__0));
  FDSE #(
    .INIT(1'b1)) 
    \SDA_cstate_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(SDA_nstate[0]),
        .Q(p_0_in[0]),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \SDA_cstate_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(SDA_nstate[1]),
        .Q(p_0_in[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \SDA_cstate_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(SDA_nstate[2]),
        .Q(p_0_in[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \SDA_cstate_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(SDA_nstate[3]),
        .Q(p_0_in[3]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \SDA_rfcnt[0]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .I2(\SDA_rfcnt_reg_n_0_[0] ),
        .O(\SDA_rfcnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \SDA_rfcnt[1]_i_1 
       (.I0(\SDA_rfcnt_reg_n_0_[1] ),
        .I1(\SDA_rfcnt_reg_n_0_[0] ),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .O(\SDA_rfcnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h0000006A)) 
    \SDA_rfcnt[2]_i_1 
       (.I0(\SDA_rfcnt_reg_n_0_[2] ),
        .I1(\SDA_rfcnt_reg_n_0_[1] ),
        .I2(\SDA_rfcnt_reg_n_0_[0] ),
        .I3(p_0_in[1]),
        .I4(p_0_in[3]),
        .O(\SDA_rfcnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006AAA)) 
    \SDA_rfcnt[3]_i_1 
       (.I0(\SDA_rfcnt_reg_n_0_[3] ),
        .I1(\SDA_rfcnt_reg_n_0_[2] ),
        .I2(\SDA_rfcnt_reg_n_0_[0] ),
        .I3(\SDA_rfcnt_reg_n_0_[1] ),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\SDA_rfcnt[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \SDA_rfcnt[4]_i_1 
       (.I0(SDA_sync),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .O(\SDA_rfcnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \SDA_rfcnt[4]_i_2 
       (.I0(\SDA_rfcnt_reg_n_0_[4] ),
        .I1(\SDA_rfcnt_reg_n_0_[3] ),
        .I2(\SDA_rfcnt_reg_n_0_[1] ),
        .I3(\SDA_rfcnt_reg_n_0_[0] ),
        .I4(\SDA_rfcnt_reg_n_0_[2] ),
        .I5(\SDA_rfcnt[4]_i_3_n_0 ),
        .O(\SDA_rfcnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \SDA_rfcnt[4]_i_3 
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .O(\SDA_rfcnt[4]_i_3_n_0 ));
  FDRE \SDA_rfcnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\SDA_rfcnt[0]_i_1_n_0 ),
        .Q(\SDA_rfcnt_reg_n_0_[0] ),
        .R(\SDA_rfcnt[4]_i_1_n_0 ));
  FDRE \SDA_rfcnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\SDA_rfcnt[1]_i_1_n_0 ),
        .Q(\SDA_rfcnt_reg_n_0_[1] ),
        .R(\SDA_rfcnt[4]_i_1_n_0 ));
  FDRE \SDA_rfcnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\SDA_rfcnt[2]_i_1_n_0 ),
        .Q(\SDA_rfcnt_reg_n_0_[2] ),
        .R(\SDA_rfcnt[4]_i_1_n_0 ));
  FDRE \SDA_rfcnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\SDA_rfcnt[3]_i_1_n_0 ),
        .Q(\SDA_rfcnt_reg_n_0_[3] ),
        .R(\SDA_rfcnt[4]_i_1_n_0 ));
  FDRE \SDA_rfcnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\SDA_rfcnt[4]_i_2_n_0 ),
        .Q(\SDA_rfcnt_reg_n_0_[4] ),
        .R(\SDA_rfcnt[4]_i_1_n_0 ));
  FDRE SDA_s_reg
       (.C(clk),
        .CE(1'b1),
        .D(SDA),
        .Q(SDA_s),
        .R(1'b0));
  FDRE SDA_sync_reg
       (.C(clk),
        .CE(1'b1),
        .D(SDA_s),
        .Q(SDA_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[0]_INST_0 
       (.I0(\reg_dout[0]_INST_0_i_1_n_0 ),
        .I1(\reg_dout[0]_INST_0_i_2_n_0 ),
        .I2(reg_addr[4]),
        .I3(\reg_dout[0]_INST_0_i_3_n_0 ),
        .I4(reg_addr[3]),
        .I5(\reg_dout[0]_INST_0_i_4_n_0 ),
        .O(reg_dout[0]));
  MUXF7 \reg_dout[0]_INST_0_i_1 
       (.I0(\reg_dout[0]_INST_0_i_5_n_0 ),
        .I1(\reg_dout[0]_INST_0_i_6_n_0 ),
        .O(\reg_dout[0]_INST_0_i_1_n_0 ),
        .S(reg_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[0]_INST_0_i_10 
       (.I0(\I2C_regblock_reg[15] [0]),
        .I1(\I2C_regblock_reg[14] [0]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[13] [0]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[12] [0]),
        .O(\reg_dout[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[0]_INST_0_i_11 
       (.I0(\I2C_regblock_reg[3] [0]),
        .I1(\I2C_regblock_reg[2] [0]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[1] [0]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[0] [0]),
        .O(\reg_dout[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[0]_INST_0_i_12 
       (.I0(\I2C_regblock_reg[7] [0]),
        .I1(\I2C_regblock_reg[6] [0]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[5] [0]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[4] [0]),
        .O(\reg_dout[0]_INST_0_i_12_n_0 ));
  MUXF7 \reg_dout[0]_INST_0_i_2 
       (.I0(\reg_dout[0]_INST_0_i_7_n_0 ),
        .I1(\reg_dout[0]_INST_0_i_8_n_0 ),
        .O(\reg_dout[0]_INST_0_i_2_n_0 ),
        .S(reg_addr[2]));
  MUXF7 \reg_dout[0]_INST_0_i_3 
       (.I0(\reg_dout[0]_INST_0_i_9_n_0 ),
        .I1(\reg_dout[0]_INST_0_i_10_n_0 ),
        .O(\reg_dout[0]_INST_0_i_3_n_0 ),
        .S(reg_addr[2]));
  MUXF7 \reg_dout[0]_INST_0_i_4 
       (.I0(\reg_dout[0]_INST_0_i_11_n_0 ),
        .I1(\reg_dout[0]_INST_0_i_12_n_0 ),
        .O(\reg_dout[0]_INST_0_i_4_n_0 ),
        .S(reg_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[0]_INST_0_i_5 
       (.I0(An[24]),
        .I1(An[16]),
        .I2(reg_addr[1]),
        .I3(An[8]),
        .I4(reg_addr[0]),
        .I5(An[0]),
        .O(\reg_dout[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[0]_INST_0_i_6 
       (.I0(An[56]),
        .I1(An[48]),
        .I2(reg_addr[1]),
        .I3(An[40]),
        .I4(reg_addr[0]),
        .I5(An[32]),
        .O(\reg_dout[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[0]_INST_0_i_7 
       (.I0(\I2C_regblock_reg[19] [0]),
        .I1(\I2C_regblock_reg[18] [0]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[17] [0]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[16] [0]),
        .O(\reg_dout[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[0]_INST_0_i_8 
       (.I0(\I2C_regblock_reg[23] [0]),
        .I1(\I2C_regblock_reg[22] [0]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[21] [0]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[20] [0]),
        .O(\reg_dout[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[0]_INST_0_i_9 
       (.I0(\I2C_regblock_reg[11] [0]),
        .I1(\I2C_regblock_reg[10] [0]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[9] [0]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[8] [0]),
        .O(\reg_dout[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[1]_INST_0 
       (.I0(\reg_dout[1]_INST_0_i_1_n_0 ),
        .I1(\reg_dout[1]_INST_0_i_2_n_0 ),
        .I2(reg_addr[4]),
        .I3(\reg_dout[1]_INST_0_i_3_n_0 ),
        .I4(reg_addr[3]),
        .I5(\reg_dout[1]_INST_0_i_4_n_0 ),
        .O(reg_dout[1]));
  MUXF7 \reg_dout[1]_INST_0_i_1 
       (.I0(\reg_dout[1]_INST_0_i_5_n_0 ),
        .I1(\reg_dout[1]_INST_0_i_6_n_0 ),
        .O(\reg_dout[1]_INST_0_i_1_n_0 ),
        .S(reg_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[1]_INST_0_i_10 
       (.I0(\I2C_regblock_reg[15] [1]),
        .I1(\I2C_regblock_reg[14] [1]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[13] [1]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[12] [1]),
        .O(\reg_dout[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[1]_INST_0_i_11 
       (.I0(\I2C_regblock_reg[3] [1]),
        .I1(\I2C_regblock_reg[2] [1]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[1] [1]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[0] [1]),
        .O(\reg_dout[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[1]_INST_0_i_12 
       (.I0(\I2C_regblock_reg[7] [1]),
        .I1(\I2C_regblock_reg[6] [1]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[5] [1]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[4] [1]),
        .O(\reg_dout[1]_INST_0_i_12_n_0 ));
  MUXF7 \reg_dout[1]_INST_0_i_2 
       (.I0(\reg_dout[1]_INST_0_i_7_n_0 ),
        .I1(\reg_dout[1]_INST_0_i_8_n_0 ),
        .O(\reg_dout[1]_INST_0_i_2_n_0 ),
        .S(reg_addr[2]));
  MUXF7 \reg_dout[1]_INST_0_i_3 
       (.I0(\reg_dout[1]_INST_0_i_9_n_0 ),
        .I1(\reg_dout[1]_INST_0_i_10_n_0 ),
        .O(\reg_dout[1]_INST_0_i_3_n_0 ),
        .S(reg_addr[2]));
  MUXF7 \reg_dout[1]_INST_0_i_4 
       (.I0(\reg_dout[1]_INST_0_i_11_n_0 ),
        .I1(\reg_dout[1]_INST_0_i_12_n_0 ),
        .O(\reg_dout[1]_INST_0_i_4_n_0 ),
        .S(reg_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[1]_INST_0_i_5 
       (.I0(An[25]),
        .I1(An[17]),
        .I2(reg_addr[1]),
        .I3(An[9]),
        .I4(reg_addr[0]),
        .I5(An[1]),
        .O(\reg_dout[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[1]_INST_0_i_6 
       (.I0(An[57]),
        .I1(An[49]),
        .I2(reg_addr[1]),
        .I3(An[41]),
        .I4(reg_addr[0]),
        .I5(An[33]),
        .O(\reg_dout[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[1]_INST_0_i_7 
       (.I0(\I2C_regblock_reg[19] [1]),
        .I1(\I2C_regblock_reg[18] [1]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[17] [1]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[16] [1]),
        .O(\reg_dout[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[1]_INST_0_i_8 
       (.I0(\I2C_regblock_reg[23] [1]),
        .I1(\I2C_regblock_reg[22] [1]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[21] [1]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[20] [1]),
        .O(\reg_dout[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[1]_INST_0_i_9 
       (.I0(\I2C_regblock_reg[11] [1]),
        .I1(\I2C_regblock_reg[10] [1]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[9] [1]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[8] [1]),
        .O(\reg_dout[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[2]_INST_0 
       (.I0(\reg_dout[2]_INST_0_i_1_n_0 ),
        .I1(\reg_dout[2]_INST_0_i_2_n_0 ),
        .I2(reg_addr[4]),
        .I3(\reg_dout[2]_INST_0_i_3_n_0 ),
        .I4(reg_addr[3]),
        .I5(\reg_dout[2]_INST_0_i_4_n_0 ),
        .O(reg_dout[2]));
  MUXF7 \reg_dout[2]_INST_0_i_1 
       (.I0(\reg_dout[2]_INST_0_i_5_n_0 ),
        .I1(\reg_dout[2]_INST_0_i_6_n_0 ),
        .O(\reg_dout[2]_INST_0_i_1_n_0 ),
        .S(reg_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[2]_INST_0_i_10 
       (.I0(\I2C_regblock_reg[15] [2]),
        .I1(\I2C_regblock_reg[14] [2]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[13] [2]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[12] [2]),
        .O(\reg_dout[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[2]_INST_0_i_11 
       (.I0(\I2C_regblock_reg[3] [2]),
        .I1(\I2C_regblock_reg[2] [2]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[1] [2]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[0] [2]),
        .O(\reg_dout[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[2]_INST_0_i_12 
       (.I0(\I2C_regblock_reg[7] [2]),
        .I1(\I2C_regblock_reg[6] [2]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[5] [2]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[4] [2]),
        .O(\reg_dout[2]_INST_0_i_12_n_0 ));
  MUXF7 \reg_dout[2]_INST_0_i_2 
       (.I0(\reg_dout[2]_INST_0_i_7_n_0 ),
        .I1(\reg_dout[2]_INST_0_i_8_n_0 ),
        .O(\reg_dout[2]_INST_0_i_2_n_0 ),
        .S(reg_addr[2]));
  MUXF7 \reg_dout[2]_INST_0_i_3 
       (.I0(\reg_dout[2]_INST_0_i_9_n_0 ),
        .I1(\reg_dout[2]_INST_0_i_10_n_0 ),
        .O(\reg_dout[2]_INST_0_i_3_n_0 ),
        .S(reg_addr[2]));
  MUXF7 \reg_dout[2]_INST_0_i_4 
       (.I0(\reg_dout[2]_INST_0_i_11_n_0 ),
        .I1(\reg_dout[2]_INST_0_i_12_n_0 ),
        .O(\reg_dout[2]_INST_0_i_4_n_0 ),
        .S(reg_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[2]_INST_0_i_5 
       (.I0(An[26]),
        .I1(An[18]),
        .I2(reg_addr[1]),
        .I3(An[10]),
        .I4(reg_addr[0]),
        .I5(An[2]),
        .O(\reg_dout[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[2]_INST_0_i_6 
       (.I0(An[58]),
        .I1(An[50]),
        .I2(reg_addr[1]),
        .I3(An[42]),
        .I4(reg_addr[0]),
        .I5(An[34]),
        .O(\reg_dout[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[2]_INST_0_i_7 
       (.I0(\I2C_regblock_reg[19] [2]),
        .I1(\I2C_regblock_reg[18] [2]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[17] [2]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[16] [2]),
        .O(\reg_dout[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[2]_INST_0_i_8 
       (.I0(\I2C_regblock_reg[23] [2]),
        .I1(\I2C_regblock_reg[22] [2]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[21] [2]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[20] [2]),
        .O(\reg_dout[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[2]_INST_0_i_9 
       (.I0(\I2C_regblock_reg[11] [2]),
        .I1(\I2C_regblock_reg[10] [2]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[9] [2]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[8] [2]),
        .O(\reg_dout[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[3]_INST_0 
       (.I0(\reg_dout[3]_INST_0_i_1_n_0 ),
        .I1(\reg_dout[3]_INST_0_i_2_n_0 ),
        .I2(reg_addr[4]),
        .I3(\reg_dout[3]_INST_0_i_3_n_0 ),
        .I4(reg_addr[3]),
        .I5(\reg_dout[3]_INST_0_i_4_n_0 ),
        .O(reg_dout[3]));
  MUXF7 \reg_dout[3]_INST_0_i_1 
       (.I0(\reg_dout[3]_INST_0_i_5_n_0 ),
        .I1(\reg_dout[3]_INST_0_i_6_n_0 ),
        .O(\reg_dout[3]_INST_0_i_1_n_0 ),
        .S(reg_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[3]_INST_0_i_10 
       (.I0(\I2C_regblock_reg[15] [3]),
        .I1(\I2C_regblock_reg[14] [3]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[13] [3]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[12] [3]),
        .O(\reg_dout[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[3]_INST_0_i_11 
       (.I0(\I2C_regblock_reg[3] [3]),
        .I1(\I2C_regblock_reg[2] [3]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[1] [3]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[0] [3]),
        .O(\reg_dout[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[3]_INST_0_i_12 
       (.I0(\I2C_regblock_reg[7] [3]),
        .I1(\I2C_regblock_reg[6] [3]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[5] [3]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[4] [3]),
        .O(\reg_dout[3]_INST_0_i_12_n_0 ));
  MUXF7 \reg_dout[3]_INST_0_i_2 
       (.I0(\reg_dout[3]_INST_0_i_7_n_0 ),
        .I1(\reg_dout[3]_INST_0_i_8_n_0 ),
        .O(\reg_dout[3]_INST_0_i_2_n_0 ),
        .S(reg_addr[2]));
  MUXF7 \reg_dout[3]_INST_0_i_3 
       (.I0(\reg_dout[3]_INST_0_i_9_n_0 ),
        .I1(\reg_dout[3]_INST_0_i_10_n_0 ),
        .O(\reg_dout[3]_INST_0_i_3_n_0 ),
        .S(reg_addr[2]));
  MUXF7 \reg_dout[3]_INST_0_i_4 
       (.I0(\reg_dout[3]_INST_0_i_11_n_0 ),
        .I1(\reg_dout[3]_INST_0_i_12_n_0 ),
        .O(\reg_dout[3]_INST_0_i_4_n_0 ),
        .S(reg_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[3]_INST_0_i_5 
       (.I0(An[27]),
        .I1(An[19]),
        .I2(reg_addr[1]),
        .I3(An[11]),
        .I4(reg_addr[0]),
        .I5(An[3]),
        .O(\reg_dout[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[3]_INST_0_i_6 
       (.I0(An[59]),
        .I1(An[51]),
        .I2(reg_addr[1]),
        .I3(An[43]),
        .I4(reg_addr[0]),
        .I5(An[35]),
        .O(\reg_dout[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[3]_INST_0_i_7 
       (.I0(\I2C_regblock_reg[19] [3]),
        .I1(\I2C_regblock_reg[18] [3]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[17] [3]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[16] [3]),
        .O(\reg_dout[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[3]_INST_0_i_8 
       (.I0(\I2C_regblock_reg[23] [3]),
        .I1(\I2C_regblock_reg[22] [3]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[21] [3]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[20] [3]),
        .O(\reg_dout[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[3]_INST_0_i_9 
       (.I0(\I2C_regblock_reg[11] [3]),
        .I1(\I2C_regblock_reg[10] [3]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[9] [3]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[8] [3]),
        .O(\reg_dout[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[4]_INST_0 
       (.I0(\reg_dout[4]_INST_0_i_1_n_0 ),
        .I1(\reg_dout[4]_INST_0_i_2_n_0 ),
        .I2(reg_addr[4]),
        .I3(\reg_dout[4]_INST_0_i_3_n_0 ),
        .I4(reg_addr[3]),
        .I5(\reg_dout[4]_INST_0_i_4_n_0 ),
        .O(reg_dout[4]));
  MUXF7 \reg_dout[4]_INST_0_i_1 
       (.I0(\reg_dout[4]_INST_0_i_5_n_0 ),
        .I1(\reg_dout[4]_INST_0_i_6_n_0 ),
        .O(\reg_dout[4]_INST_0_i_1_n_0 ),
        .S(reg_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[4]_INST_0_i_10 
       (.I0(\I2C_regblock_reg[15] [4]),
        .I1(\I2C_regblock_reg[14] [4]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[13] [4]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[12] [4]),
        .O(\reg_dout[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[4]_INST_0_i_11 
       (.I0(\I2C_regblock_reg[3] [4]),
        .I1(\I2C_regblock_reg[2] [4]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[1] [4]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[0] [4]),
        .O(\reg_dout[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[4]_INST_0_i_12 
       (.I0(\I2C_regblock_reg[7] [4]),
        .I1(\I2C_regblock_reg[6] [4]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[5] [4]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[4] [4]),
        .O(\reg_dout[4]_INST_0_i_12_n_0 ));
  MUXF7 \reg_dout[4]_INST_0_i_2 
       (.I0(\reg_dout[4]_INST_0_i_7_n_0 ),
        .I1(\reg_dout[4]_INST_0_i_8_n_0 ),
        .O(\reg_dout[4]_INST_0_i_2_n_0 ),
        .S(reg_addr[2]));
  MUXF7 \reg_dout[4]_INST_0_i_3 
       (.I0(\reg_dout[4]_INST_0_i_9_n_0 ),
        .I1(\reg_dout[4]_INST_0_i_10_n_0 ),
        .O(\reg_dout[4]_INST_0_i_3_n_0 ),
        .S(reg_addr[2]));
  MUXF7 \reg_dout[4]_INST_0_i_4 
       (.I0(\reg_dout[4]_INST_0_i_11_n_0 ),
        .I1(\reg_dout[4]_INST_0_i_12_n_0 ),
        .O(\reg_dout[4]_INST_0_i_4_n_0 ),
        .S(reg_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[4]_INST_0_i_5 
       (.I0(An[28]),
        .I1(An[20]),
        .I2(reg_addr[1]),
        .I3(An[12]),
        .I4(reg_addr[0]),
        .I5(An[4]),
        .O(\reg_dout[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[4]_INST_0_i_6 
       (.I0(An[60]),
        .I1(An[52]),
        .I2(reg_addr[1]),
        .I3(An[44]),
        .I4(reg_addr[0]),
        .I5(An[36]),
        .O(\reg_dout[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[4]_INST_0_i_7 
       (.I0(\I2C_regblock_reg[19] [4]),
        .I1(\I2C_regblock_reg[18] [4]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[17] [4]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[16] [4]),
        .O(\reg_dout[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[4]_INST_0_i_8 
       (.I0(\I2C_regblock_reg[23] [4]),
        .I1(\I2C_regblock_reg[22] [4]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[21] [4]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[20] [4]),
        .O(\reg_dout[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[4]_INST_0_i_9 
       (.I0(\I2C_regblock_reg[11] [4]),
        .I1(\I2C_regblock_reg[10] [4]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[9] [4]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[8] [4]),
        .O(\reg_dout[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[5]_INST_0 
       (.I0(\reg_dout[5]_INST_0_i_1_n_0 ),
        .I1(\reg_dout[5]_INST_0_i_2_n_0 ),
        .I2(reg_addr[4]),
        .I3(\reg_dout[5]_INST_0_i_3_n_0 ),
        .I4(reg_addr[3]),
        .I5(\reg_dout[5]_INST_0_i_4_n_0 ),
        .O(reg_dout[5]));
  MUXF7 \reg_dout[5]_INST_0_i_1 
       (.I0(\reg_dout[5]_INST_0_i_5_n_0 ),
        .I1(\reg_dout[5]_INST_0_i_6_n_0 ),
        .O(\reg_dout[5]_INST_0_i_1_n_0 ),
        .S(reg_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[5]_INST_0_i_10 
       (.I0(\I2C_regblock_reg[15] [5]),
        .I1(\I2C_regblock_reg[14] [5]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[13] [5]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[12] [5]),
        .O(\reg_dout[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[5]_INST_0_i_11 
       (.I0(\I2C_regblock_reg[3] [5]),
        .I1(\I2C_regblock_reg[2] [5]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[1] [5]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[0] [5]),
        .O(\reg_dout[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[5]_INST_0_i_12 
       (.I0(\I2C_regblock_reg[7] [5]),
        .I1(\I2C_regblock_reg[6] [5]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[5] [5]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[4] [5]),
        .O(\reg_dout[5]_INST_0_i_12_n_0 ));
  MUXF7 \reg_dout[5]_INST_0_i_2 
       (.I0(\reg_dout[5]_INST_0_i_7_n_0 ),
        .I1(\reg_dout[5]_INST_0_i_8_n_0 ),
        .O(\reg_dout[5]_INST_0_i_2_n_0 ),
        .S(reg_addr[2]));
  MUXF7 \reg_dout[5]_INST_0_i_3 
       (.I0(\reg_dout[5]_INST_0_i_9_n_0 ),
        .I1(\reg_dout[5]_INST_0_i_10_n_0 ),
        .O(\reg_dout[5]_INST_0_i_3_n_0 ),
        .S(reg_addr[2]));
  MUXF7 \reg_dout[5]_INST_0_i_4 
       (.I0(\reg_dout[5]_INST_0_i_11_n_0 ),
        .I1(\reg_dout[5]_INST_0_i_12_n_0 ),
        .O(\reg_dout[5]_INST_0_i_4_n_0 ),
        .S(reg_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[5]_INST_0_i_5 
       (.I0(An[29]),
        .I1(An[21]),
        .I2(reg_addr[1]),
        .I3(An[13]),
        .I4(reg_addr[0]),
        .I5(An[5]),
        .O(\reg_dout[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[5]_INST_0_i_6 
       (.I0(An[61]),
        .I1(An[53]),
        .I2(reg_addr[1]),
        .I3(An[45]),
        .I4(reg_addr[0]),
        .I5(An[37]),
        .O(\reg_dout[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[5]_INST_0_i_7 
       (.I0(\I2C_regblock_reg[19] [5]),
        .I1(\I2C_regblock_reg[18] [5]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[17] [5]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[16] [5]),
        .O(\reg_dout[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[5]_INST_0_i_8 
       (.I0(\I2C_regblock_reg[23] [5]),
        .I1(\I2C_regblock_reg[22] [5]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[21] [5]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[20] [5]),
        .O(\reg_dout[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[5]_INST_0_i_9 
       (.I0(\I2C_regblock_reg[11] [5]),
        .I1(\I2C_regblock_reg[10] [5]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[9] [5]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[8] [5]),
        .O(\reg_dout[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[6]_INST_0 
       (.I0(\reg_dout[6]_INST_0_i_1_n_0 ),
        .I1(\reg_dout[6]_INST_0_i_2_n_0 ),
        .I2(reg_addr[4]),
        .I3(\reg_dout[6]_INST_0_i_3_n_0 ),
        .I4(reg_addr[3]),
        .I5(\reg_dout[6]_INST_0_i_4_n_0 ),
        .O(reg_dout[6]));
  MUXF7 \reg_dout[6]_INST_0_i_1 
       (.I0(\reg_dout[6]_INST_0_i_5_n_0 ),
        .I1(\reg_dout[6]_INST_0_i_6_n_0 ),
        .O(\reg_dout[6]_INST_0_i_1_n_0 ),
        .S(reg_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[6]_INST_0_i_10 
       (.I0(\I2C_regblock_reg[15] [6]),
        .I1(\I2C_regblock_reg[14] [6]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[13] [6]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[12] [6]),
        .O(\reg_dout[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[6]_INST_0_i_11 
       (.I0(\I2C_regblock_reg[3] [6]),
        .I1(\I2C_regblock_reg[2] [6]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[1] [6]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[0] [6]),
        .O(\reg_dout[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[6]_INST_0_i_12 
       (.I0(\I2C_regblock_reg[7] [6]),
        .I1(\I2C_regblock_reg[6] [6]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[5] [6]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[4] [6]),
        .O(\reg_dout[6]_INST_0_i_12_n_0 ));
  MUXF7 \reg_dout[6]_INST_0_i_2 
       (.I0(\reg_dout[6]_INST_0_i_7_n_0 ),
        .I1(\reg_dout[6]_INST_0_i_8_n_0 ),
        .O(\reg_dout[6]_INST_0_i_2_n_0 ),
        .S(reg_addr[2]));
  MUXF7 \reg_dout[6]_INST_0_i_3 
       (.I0(\reg_dout[6]_INST_0_i_9_n_0 ),
        .I1(\reg_dout[6]_INST_0_i_10_n_0 ),
        .O(\reg_dout[6]_INST_0_i_3_n_0 ),
        .S(reg_addr[2]));
  MUXF7 \reg_dout[6]_INST_0_i_4 
       (.I0(\reg_dout[6]_INST_0_i_11_n_0 ),
        .I1(\reg_dout[6]_INST_0_i_12_n_0 ),
        .O(\reg_dout[6]_INST_0_i_4_n_0 ),
        .S(reg_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[6]_INST_0_i_5 
       (.I0(An[30]),
        .I1(An[22]),
        .I2(reg_addr[1]),
        .I3(An[14]),
        .I4(reg_addr[0]),
        .I5(An[6]),
        .O(\reg_dout[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[6]_INST_0_i_6 
       (.I0(An[62]),
        .I1(An[54]),
        .I2(reg_addr[1]),
        .I3(An[46]),
        .I4(reg_addr[0]),
        .I5(An[38]),
        .O(\reg_dout[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[6]_INST_0_i_7 
       (.I0(\I2C_regblock_reg[19] [6]),
        .I1(\I2C_regblock_reg[18] [6]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[17] [6]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[16] [6]),
        .O(\reg_dout[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[6]_INST_0_i_8 
       (.I0(\I2C_regblock_reg[23] [6]),
        .I1(\I2C_regblock_reg[22] [6]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[21] [6]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[20] [6]),
        .O(\reg_dout[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[6]_INST_0_i_9 
       (.I0(\I2C_regblock_reg[11] [6]),
        .I1(\I2C_regblock_reg[10] [6]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[9] [6]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[8] [6]),
        .O(\reg_dout[6]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[7]_INST_0 
       (.I0(\reg_dout[7]_INST_0_i_1_n_0 ),
        .I1(\reg_dout[7]_INST_0_i_2_n_0 ),
        .I2(reg_addr[4]),
        .I3(\reg_dout[7]_INST_0_i_3_n_0 ),
        .I4(reg_addr[3]),
        .I5(\reg_dout[7]_INST_0_i_4_n_0 ),
        .O(reg_dout[7]));
  MUXF7 \reg_dout[7]_INST_0_i_1 
       (.I0(\reg_dout[7]_INST_0_i_5_n_0 ),
        .I1(\reg_dout[7]_INST_0_i_6_n_0 ),
        .O(\reg_dout[7]_INST_0_i_1_n_0 ),
        .S(reg_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[7]_INST_0_i_10 
       (.I0(\I2C_regblock_reg[15] [7]),
        .I1(\I2C_regblock_reg[14] [7]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[13] [7]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[12] [7]),
        .O(\reg_dout[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[7]_INST_0_i_11 
       (.I0(\I2C_regblock_reg[3] [7]),
        .I1(\I2C_regblock_reg[2] [7]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[1] [7]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[0] [7]),
        .O(\reg_dout[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[7]_INST_0_i_12 
       (.I0(\I2C_regblock_reg[7] [7]),
        .I1(\I2C_regblock_reg[6] [7]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[5] [7]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[4] [7]),
        .O(\reg_dout[7]_INST_0_i_12_n_0 ));
  MUXF7 \reg_dout[7]_INST_0_i_2 
       (.I0(\reg_dout[7]_INST_0_i_7_n_0 ),
        .I1(\reg_dout[7]_INST_0_i_8_n_0 ),
        .O(\reg_dout[7]_INST_0_i_2_n_0 ),
        .S(reg_addr[2]));
  MUXF7 \reg_dout[7]_INST_0_i_3 
       (.I0(\reg_dout[7]_INST_0_i_9_n_0 ),
        .I1(\reg_dout[7]_INST_0_i_10_n_0 ),
        .O(\reg_dout[7]_INST_0_i_3_n_0 ),
        .S(reg_addr[2]));
  MUXF7 \reg_dout[7]_INST_0_i_4 
       (.I0(\reg_dout[7]_INST_0_i_11_n_0 ),
        .I1(\reg_dout[7]_INST_0_i_12_n_0 ),
        .O(\reg_dout[7]_INST_0_i_4_n_0 ),
        .S(reg_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[7]_INST_0_i_5 
       (.I0(An[31]),
        .I1(An[23]),
        .I2(reg_addr[1]),
        .I3(An[15]),
        .I4(reg_addr[0]),
        .I5(An[7]),
        .O(\reg_dout[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[7]_INST_0_i_6 
       (.I0(An[63]),
        .I1(An[55]),
        .I2(reg_addr[1]),
        .I3(An[47]),
        .I4(reg_addr[0]),
        .I5(An[39]),
        .O(\reg_dout[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[7]_INST_0_i_7 
       (.I0(\I2C_regblock_reg[19] [7]),
        .I1(\I2C_regblock_reg[18] [7]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[17] [7]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[16] [7]),
        .O(\reg_dout[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[7]_INST_0_i_8 
       (.I0(\I2C_regblock_reg[23] [7]),
        .I1(\I2C_regblock_reg[22] [7]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[21] [7]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[20] [7]),
        .O(\reg_dout[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_dout[7]_INST_0_i_9 
       (.I0(\I2C_regblock_reg[11] [7]),
        .I1(\I2C_regblock_reg[10] [7]),
        .I2(reg_addr[1]),
        .I3(\I2C_regblock_reg[9] [7]),
        .I4(reg_addr[0]),
        .I5(\I2C_regblock_reg[8] [7]),
        .O(\reg_dout[7]_INST_0_i_9_n_0 ));
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
