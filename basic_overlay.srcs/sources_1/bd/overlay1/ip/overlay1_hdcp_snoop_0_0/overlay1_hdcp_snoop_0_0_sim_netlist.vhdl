-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Mon Oct 31 17:13:52 2016
-- Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_hdcp_snoop_0_0/overlay1_hdcp_snoop_0_0_sim_netlist.vhdl
-- Design      : overlay1_hdcp_snoop_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50tcsg325-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_hdcp_snoop_0_0_hdcp_snoop is
  port (
    An : out STD_LOGIC_VECTOR ( 63 downto 0 );
    Aksv14_write : out STD_LOGIC;
    reg_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SCL : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    SDA : in STD_LOGIC;
    reg_addr : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_hdcp_snoop_0_0_hdcp_snoop : entity is "hdcp_snoop";
end overlay1_hdcp_snoop_0_0_hdcp_snoop;

architecture STRUCTURE of overlay1_hdcp_snoop_0_0_hdcp_snoop is
  signal Aksv14_write0 : STD_LOGIC;
  signal \Aksv14_write1__12\ : STD_LOGIC;
  signal Aksv14_write_i_2_n_0 : STD_LOGIC;
  signal \^an\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal I2C_addr : STD_LOGIC;
  signal \I2C_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_addr[0]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_addr[4]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_addr[5]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_10_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_11_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_12_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_13_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_14_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_15_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_16_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_17_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_18_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_19_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_20_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_21_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_22_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_23_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_24_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_25_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_26_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_27_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_28_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_4_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_5_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_6_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_7_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_8_n_0\ : STD_LOGIC;
  signal \I2C_addr[7]_i_9_n_0\ : STD_LOGIC;
  signal \I2C_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \I2C_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \I2C_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \I2C_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \I2C_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \I2C_addr_reg_n_0_[5]\ : STD_LOGIC;
  signal \I2C_addr_reg_n_0_[6]\ : STD_LOGIC;
  signal \I2C_addr_reg_n_0_[7]\ : STD_LOGIC;
  signal I2C_bitcnt : STD_LOGIC;
  signal \I2C_bitcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_bitcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_bitcnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_bitcnt[3]_i_10_n_0\ : STD_LOGIC;
  signal \I2C_bitcnt[3]_i_11_n_0\ : STD_LOGIC;
  signal \I2C_bitcnt[3]_i_12_n_0\ : STD_LOGIC;
  signal \I2C_bitcnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_bitcnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_bitcnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \I2C_bitcnt[3]_i_5_n_0\ : STD_LOGIC;
  signal \I2C_bitcnt[3]_i_6_n_0\ : STD_LOGIC;
  signal \I2C_bitcnt[3]_i_7_n_0\ : STD_LOGIC;
  signal \I2C_bitcnt[3]_i_8_n_0\ : STD_LOGIC;
  signal \I2C_bitcnt[3]_i_9_n_0\ : STD_LOGIC;
  signal \I2C_bitcnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \I2C_bitcnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \I2C_bitcnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \I2C_bitcnt_reg_n_0_[3]\ : STD_LOGIC;
  signal I2C_cstate : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal I2C_cstate0 : STD_LOGIC;
  signal \I2C_cstate[13]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_cstate[13]_i_4_n_0\ : STD_LOGIC;
  signal \I2C_cstate[13]_i_5_n_0\ : STD_LOGIC;
  signal \I2C_cstate[13]_i_6_n_0\ : STD_LOGIC;
  signal \I2C_cstate[13]_i_7_n_0\ : STD_LOGIC;
  signal \I2C_cstate[1]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_cstate[9]_i_2_n_0\ : STD_LOGIC;
  signal I2C_daddr : STD_LOGIC;
  signal \I2C_daddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_daddr[0]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_daddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_daddr[1]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_daddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_daddr[2]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_daddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_daddr[3]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_daddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_daddr[4]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_daddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_daddr[5]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_daddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_daddr[6]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_10_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_11_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_12_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_13_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_14_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_15_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_16_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_17_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_18_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_19_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_20_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_21_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_22_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_23_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_4_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_5_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_6_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_7_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_8_n_0\ : STD_LOGIC;
  signal \I2C_daddr[7]_i_9_n_0\ : STD_LOGIC;
  signal \I2C_daddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \I2C_daddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \I2C_daddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \I2C_daddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \I2C_daddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \I2C_daddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \I2C_daddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \I2C_daddr_reg_n_0_[7]\ : STD_LOGIC;
  signal I2C_nstate : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \I2C_nstate2__0\ : STD_LOGIC;
  signal I2C_rdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_rdata[0]_i_10_n_0\ : STD_LOGIC;
  signal \I2C_rdata[0]_i_11_n_0\ : STD_LOGIC;
  signal \I2C_rdata[0]_i_12_n_0\ : STD_LOGIC;
  signal \I2C_rdata[0]_i_13_n_0\ : STD_LOGIC;
  signal \I2C_rdata[0]_i_14_n_0\ : STD_LOGIC;
  signal \I2C_rdata[0]_i_15_n_0\ : STD_LOGIC;
  signal \I2C_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_rdata[0]_i_8_n_0\ : STD_LOGIC;
  signal \I2C_rdata[0]_i_9_n_0\ : STD_LOGIC;
  signal \I2C_rdata[1]_i_10_n_0\ : STD_LOGIC;
  signal \I2C_rdata[1]_i_11_n_0\ : STD_LOGIC;
  signal \I2C_rdata[1]_i_12_n_0\ : STD_LOGIC;
  signal \I2C_rdata[1]_i_13_n_0\ : STD_LOGIC;
  signal \I2C_rdata[1]_i_14_n_0\ : STD_LOGIC;
  signal \I2C_rdata[1]_i_15_n_0\ : STD_LOGIC;
  signal \I2C_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_rdata[1]_i_8_n_0\ : STD_LOGIC;
  signal \I2C_rdata[1]_i_9_n_0\ : STD_LOGIC;
  signal \I2C_rdata[2]_i_10_n_0\ : STD_LOGIC;
  signal \I2C_rdata[2]_i_11_n_0\ : STD_LOGIC;
  signal \I2C_rdata[2]_i_12_n_0\ : STD_LOGIC;
  signal \I2C_rdata[2]_i_13_n_0\ : STD_LOGIC;
  signal \I2C_rdata[2]_i_14_n_0\ : STD_LOGIC;
  signal \I2C_rdata[2]_i_15_n_0\ : STD_LOGIC;
  signal \I2C_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_rdata[2]_i_8_n_0\ : STD_LOGIC;
  signal \I2C_rdata[2]_i_9_n_0\ : STD_LOGIC;
  signal \I2C_rdata[3]_i_10_n_0\ : STD_LOGIC;
  signal \I2C_rdata[3]_i_11_n_0\ : STD_LOGIC;
  signal \I2C_rdata[3]_i_12_n_0\ : STD_LOGIC;
  signal \I2C_rdata[3]_i_13_n_0\ : STD_LOGIC;
  signal \I2C_rdata[3]_i_14_n_0\ : STD_LOGIC;
  signal \I2C_rdata[3]_i_15_n_0\ : STD_LOGIC;
  signal \I2C_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_rdata[3]_i_8_n_0\ : STD_LOGIC;
  signal \I2C_rdata[3]_i_9_n_0\ : STD_LOGIC;
  signal \I2C_rdata[4]_i_10_n_0\ : STD_LOGIC;
  signal \I2C_rdata[4]_i_11_n_0\ : STD_LOGIC;
  signal \I2C_rdata[4]_i_12_n_0\ : STD_LOGIC;
  signal \I2C_rdata[4]_i_13_n_0\ : STD_LOGIC;
  signal \I2C_rdata[4]_i_14_n_0\ : STD_LOGIC;
  signal \I2C_rdata[4]_i_15_n_0\ : STD_LOGIC;
  signal \I2C_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_rdata[4]_i_8_n_0\ : STD_LOGIC;
  signal \I2C_rdata[4]_i_9_n_0\ : STD_LOGIC;
  signal \I2C_rdata[5]_i_10_n_0\ : STD_LOGIC;
  signal \I2C_rdata[5]_i_11_n_0\ : STD_LOGIC;
  signal \I2C_rdata[5]_i_12_n_0\ : STD_LOGIC;
  signal \I2C_rdata[5]_i_13_n_0\ : STD_LOGIC;
  signal \I2C_rdata[5]_i_14_n_0\ : STD_LOGIC;
  signal \I2C_rdata[5]_i_15_n_0\ : STD_LOGIC;
  signal \I2C_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_rdata[5]_i_8_n_0\ : STD_LOGIC;
  signal \I2C_rdata[5]_i_9_n_0\ : STD_LOGIC;
  signal \I2C_rdata[6]_i_10_n_0\ : STD_LOGIC;
  signal \I2C_rdata[6]_i_11_n_0\ : STD_LOGIC;
  signal \I2C_rdata[6]_i_12_n_0\ : STD_LOGIC;
  signal \I2C_rdata[6]_i_13_n_0\ : STD_LOGIC;
  signal \I2C_rdata[6]_i_14_n_0\ : STD_LOGIC;
  signal \I2C_rdata[6]_i_15_n_0\ : STD_LOGIC;
  signal \I2C_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_rdata[6]_i_8_n_0\ : STD_LOGIC;
  signal \I2C_rdata[6]_i_9_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_10_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_11_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_12_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_13_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_14_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_15_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_19_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_22_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_23_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_24_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_25_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_26_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_27_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_28_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_29_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_8_n_0\ : STD_LOGIC;
  signal \I2C_rdata[7]_i_9_n_0\ : STD_LOGIC;
  signal I2C_rdata_0 : STD_LOGIC;
  signal \I2C_rdata_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[6]_i_7_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[7]_i_16_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[7]_i_17_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[7]_i_18_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[7]_i_20_n_0\ : STD_LOGIC;
  signal \I2C_rdata_reg[7]_i_21_n_0\ : STD_LOGIC;
  signal I2C_reg_update : STD_LOGIC;
  signal I2C_reg_update_i_2_n_0 : STD_LOGIC;
  signal I2C_reg_update_i_3_n_0 : STD_LOGIC;
  signal I2C_reg_update_i_4_n_0 : STD_LOGIC;
  signal I2C_reg_update_reg_n_0 : STD_LOGIC;
  signal \I2C_regblock[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[10][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[10][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[11][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[12][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[12][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[13][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[13][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[14][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[14][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[14][7]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_regblock[15][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[16][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[16][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[17][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[17][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[18][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[18][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[19][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[19][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[20][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[20][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[21][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[21][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[22][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[22][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[23][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[24][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[24][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[24][7]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_regblock[25][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[25][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[26][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[26][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[27][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[27][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[28][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[28][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[29][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[29][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[2][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[30][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[30][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[30][7]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_regblock[30][7]_i_4_n_0\ : STD_LOGIC;
  signal \I2C_regblock[31][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[31][7]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_regblock[31][7]_i_4_n_0\ : STD_LOGIC;
  signal \I2C_regblock[31][7]_i_5_n_0\ : STD_LOGIC;
  signal \I2C_regblock[31][7]_i_6_n_0\ : STD_LOGIC;
  signal \I2C_regblock[31][7]_i_7_n_0\ : STD_LOGIC;
  signal \I2C_regblock[31][7]_i_8_n_0\ : STD_LOGIC;
  signal \I2C_regblock[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[3][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[4][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[4][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[4][7]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_regblock[5][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[5][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[6][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[6][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[7][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[7][7]_i_2_n_0\ : STD_LOGIC;
  signal \I2C_regblock[8][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock[9][7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_regblock_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[10]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[11]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[12]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[13]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[14]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[15]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[16]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[17]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[18]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[19]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[20]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[21]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[22]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[23]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[5]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[6]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[8]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_regblock_reg[9]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I2C_wdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \I2C_wdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_wdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_wdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_wdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_wdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_wdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_wdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_wdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \I2C_wdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \I2C_wdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \I2C_wdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \I2C_wdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \I2C_wdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \I2C_wdata[7]_i_8_n_0\ : STD_LOGIC;
  signal I2C_wdata_1 : STD_LOGIC;
  signal SCL_cstate : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \SCL_cstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \SCL_cstate[1]_i_2_n_0\ : STD_LOGIC;
  signal SCL_nstate : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \SCL_nstate2__0\ : STD_LOGIC;
  signal \SCL_rfcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \SCL_rfcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \SCL_rfcnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \SCL_rfcnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \SCL_rfcnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \SCL_rfcnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \SCL_rfcnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \SCL_rfcnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \SCL_rfcnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \SCL_rfcnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \SCL_rfcnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \SCL_rfcnt_reg_n_0_[4]\ : STD_LOGIC;
  signal SCL_s : STD_LOGIC;
  signal SCL_sync : STD_LOGIC;
  signal \SDA_cstate[1]_i_2_n_0\ : STD_LOGIC;
  signal SDA_nstate : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \SDA_nstate2__0\ : STD_LOGIC;
  signal \SDA_rfcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \SDA_rfcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \SDA_rfcnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \SDA_rfcnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \SDA_rfcnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \SDA_rfcnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \SDA_rfcnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \SDA_rfcnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \SDA_rfcnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \SDA_rfcnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \SDA_rfcnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \SDA_rfcnt_reg_n_0_[4]\ : STD_LOGIC;
  signal SDA_s : STD_LOGIC;
  signal SDA_sync : STD_LOGIC;
  signal data8 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal data9 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \reg_dout[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \reg_dout[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \reg_dout[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \reg_dout[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \reg_dout[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \reg_dout[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \reg_dout[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \reg_dout[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \reg_dout[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \reg_dout[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \reg_dout[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \reg_dout[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \reg_dout[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \reg_dout[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \reg_dout[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \reg_dout[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \reg_dout[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \reg_dout[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \reg_dout[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \reg_dout[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \reg_dout[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \reg_dout[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \reg_dout[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \reg_dout[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \reg_dout[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \reg_dout[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \reg_dout[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \reg_dout[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \reg_dout[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \reg_dout[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \reg_dout[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \reg_dout[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \reg_dout[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \reg_dout[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \reg_dout[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \reg_dout[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \reg_dout[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \reg_dout[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \reg_dout[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \reg_dout[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \reg_dout[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \reg_dout[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \reg_dout[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \reg_dout[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \reg_dout[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \reg_dout[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \reg_dout[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \reg_dout[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \reg_dout[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \reg_dout[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \reg_dout[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \reg_dout[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \reg_dout[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \reg_dout[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \reg_dout[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \reg_dout[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \reg_dout[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \reg_dout[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \reg_dout[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \reg_dout[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \reg_dout[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \reg_dout[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \reg_dout[5]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \reg_dout[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \reg_dout[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \reg_dout[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \reg_dout[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \reg_dout[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \reg_dout[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \reg_dout[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \reg_dout[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \reg_dout[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \reg_dout[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \reg_dout[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \reg_dout[6]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \reg_dout[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \reg_dout[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \reg_dout[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \reg_dout[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \reg_dout[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \reg_dout[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \reg_dout[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \reg_dout[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \reg_dout[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \reg_dout[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \reg_dout[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \reg_dout[7]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \reg_dout[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \reg_dout[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \reg_dout[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \reg_dout[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \reg_dout[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \reg_dout[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \reg_dout[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \reg_dout[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \reg_dout[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Aksv14_write_i_2 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \I2C_addr[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \I2C_addr[0]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \I2C_addr[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \I2C_addr[4]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \I2C_addr[5]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \I2C_addr[7]_i_12\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \I2C_addr[7]_i_13\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \I2C_addr[7]_i_15\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \I2C_addr[7]_i_19\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \I2C_addr[7]_i_20\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \I2C_addr[7]_i_22\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \I2C_addr[7]_i_23\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \I2C_addr[7]_i_27\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \I2C_addr[7]_i_28\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \I2C_addr[7]_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \I2C_bitcnt[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \I2C_bitcnt[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \I2C_bitcnt[3]_i_10\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \I2C_bitcnt[3]_i_11\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \I2C_bitcnt[3]_i_12\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \I2C_bitcnt[3]_i_5\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \I2C_bitcnt[3]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \I2C_bitcnt[3]_i_7\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \I2C_cstate[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \I2C_cstate[10]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \I2C_cstate[10]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \I2C_cstate[11]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \I2C_cstate[12]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \I2C_cstate[12]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \I2C_cstate[13]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \I2C_cstate[13]_i_6\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \I2C_cstate[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \I2C_cstate[5]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \I2C_cstate[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \I2C_cstate[9]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \I2C_daddr[7]_i_11\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \I2C_daddr[7]_i_12\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \I2C_daddr[7]_i_16\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \I2C_daddr[7]_i_17\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \I2C_daddr[7]_i_18\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \I2C_daddr[7]_i_19\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \I2C_daddr[7]_i_21\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \I2C_daddr[7]_i_22\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \I2C_daddr[7]_i_23\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \I2C_daddr[7]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \I2C_daddr[7]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \I2C_daddr[7]_i_8\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \I2C_daddr[7]_i_9\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \I2C_rdata[7]_i_14\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \I2C_rdata[7]_i_19\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \I2C_rdata[7]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \I2C_rdata[7]_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \I2C_rdata[7]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \I2C_rdata[7]_i_8\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of I2C_reg_update_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of I2C_reg_update_i_4 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \I2C_regblock[0][7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \I2C_regblock[10][7]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \I2C_regblock[12][7]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \I2C_regblock[13][7]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \I2C_regblock[14][7]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \I2C_regblock[14][7]_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \I2C_regblock[16][7]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \I2C_regblock[17][7]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \I2C_regblock[18][7]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \I2C_regblock[19][7]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \I2C_regblock[20][7]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \I2C_regblock[21][7]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \I2C_regblock[22][7]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \I2C_regblock[24][7]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \I2C_regblock[24][7]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \I2C_regblock[25][7]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \I2C_regblock[26][7]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \I2C_regblock[27][7]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \I2C_regblock[28][7]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \I2C_regblock[29][7]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \I2C_regblock[2][7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \I2C_regblock[30][7]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \I2C_regblock[30][7]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \I2C_regblock[31][7]_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \I2C_regblock[3][7]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \I2C_regblock[4][7]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \I2C_regblock[4][7]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \I2C_regblock[5][7]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \I2C_regblock[6][7]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \I2C_regblock[7][7]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \I2C_wdata[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \I2C_wdata[7]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \I2C_wdata[7]_i_7\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \I2C_wdata[7]_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SCL_cstate[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \SCL_cstate[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \SCL_cstate[2]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \SCL_rfcnt[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \SCL_rfcnt[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \SCL_rfcnt[4]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \SDA_cstate[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \SDA_cstate[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \SDA_cstate[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \SDA_rfcnt[0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \SDA_rfcnt[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \SDA_rfcnt[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \SDA_rfcnt[4]_i_3\ : label is "soft_lutpair37";
begin
  An(63 downto 0) <= \^an\(63 downto 0);
Aksv14_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[4]\,
      I1 => \I2C_addr_reg_n_0_[3]\,
      I2 => \I2C_addr_reg_n_0_[0]\,
      I3 => \I2C_addr_reg_n_0_[2]\,
      I4 => \Aksv14_write1__12\,
      I5 => Aksv14_write_i_2_n_0,
      O => Aksv14_write0
    );
Aksv14_write_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[1]\,
      I1 => \I2C_addr_reg_n_0_[7]\,
      I2 => \I2C_addr_reg_n_0_[5]\,
      I3 => \I2C_addr_reg_n_0_[6]\,
      O => Aksv14_write_i_2_n_0
    );
Aksv14_write_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Aksv14_write0,
      Q => Aksv14_write,
      R => reset
    );
\I2C_addr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080338"
    )
        port map (
      I0 => \I2C_addr[0]_i_2_n_0\,
      I1 => I2C_cstate(4),
      I2 => I2C_cstate(11),
      I3 => I2C_cstate(8),
      I4 => \I2C_addr_reg_n_0_[0]\,
      O => \I2C_addr[0]_i_1_n_0\
    );
\I2C_addr[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \I2C_addr[0]_i_2_n_0\
    );
\I2C_addr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001414A0"
    )
        port map (
      I0 => I2C_cstate(4),
      I1 => \I2C_addr_reg_n_0_[1]\,
      I2 => \I2C_addr_reg_n_0_[0]\,
      I3 => I2C_cstate(11),
      I4 => I2C_cstate(8),
      O => \I2C_addr[1]_i_1_n_0\
    );
\I2C_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000014441444A0A0"
    )
        port map (
      I0 => I2C_cstate(4),
      I1 => \I2C_addr_reg_n_0_[2]\,
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_addr_reg_n_0_[0]\,
      I4 => I2C_cstate(11),
      I5 => I2C_cstate(8),
      O => \I2C_addr[2]_i_1_n_0\
    );
\I2C_addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000044144414A0A0"
    )
        port map (
      I0 => I2C_cstate(4),
      I1 => \I2C_addr_reg_n_0_[3]\,
      I2 => \I2C_addr_reg_n_0_[2]\,
      I3 => \I2C_addr[3]_i_2_n_0\,
      I4 => I2C_cstate(11),
      I5 => I2C_cstate(8),
      O => \I2C_addr[3]_i_1_n_0\
    );
\I2C_addr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[1]\,
      I1 => \I2C_addr_reg_n_0_[0]\,
      O => \I2C_addr[3]_i_2_n_0\
    );
\I2C_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000033003308888"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[3]\,
      I1 => I2C_cstate(4),
      I2 => \I2C_addr_reg_n_0_[4]\,
      I3 => \I2C_addr[4]_i_2_n_0\,
      I4 => I2C_cstate(11),
      I5 => I2C_cstate(8),
      O => \I2C_addr[4]_i_1_n_0\
    );
\I2C_addr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[3]\,
      I1 => \I2C_addr_reg_n_0_[1]\,
      I2 => \I2C_addr_reg_n_0_[0]\,
      I3 => \I2C_addr_reg_n_0_[2]\,
      O => \I2C_addr[4]_i_2_n_0\
    );
\I2C_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000033003308888"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[4]\,
      I1 => I2C_cstate(4),
      I2 => \I2C_addr_reg_n_0_[5]\,
      I3 => \I2C_addr[5]_i_2_n_0\,
      I4 => I2C_cstate(11),
      I5 => I2C_cstate(8),
      O => \I2C_addr[5]_i_1_n_0\
    );
\I2C_addr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[4]\,
      I1 => \I2C_addr_reg_n_0_[2]\,
      I2 => \I2C_addr_reg_n_0_[0]\,
      I3 => \I2C_addr_reg_n_0_[1]\,
      I4 => \I2C_addr_reg_n_0_[3]\,
      O => \I2C_addr[5]_i_2_n_0\
    );
\I2C_addr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000033003308888"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[5]\,
      I1 => I2C_cstate(4),
      I2 => \I2C_addr_reg_n_0_[6]\,
      I3 => \I2C_addr[7]_i_11_n_0\,
      I4 => I2C_cstate(11),
      I5 => I2C_cstate(8),
      O => \I2C_addr[6]_i_1_n_0\
    );
\I2C_addr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFF888"
    )
        port map (
      I0 => \I2C_addr[7]_i_4_n_0\,
      I1 => I2C_cstate(2),
      I2 => \I2C_addr[7]_i_5_n_0\,
      I3 => \I2C_addr[7]_i_6_n_0\,
      I4 => \I2C_addr[7]_i_7_n_0\,
      I5 => \I2C_addr[7]_i_8_n_0\,
      O => \I2C_addr[7]_i_1_n_0\
    );
\I2C_addr[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000003"
    )
        port map (
      I0 => I2C_cstate(5),
      I1 => I2C_cstate(7),
      I2 => \I2C_addr[7]_i_26_n_0\,
      I3 => I2C_cstate(6),
      I4 => I2C_cstate(4),
      I5 => I2C_cstate(3),
      O => \I2C_addr[7]_i_10_n_0\
    );
\I2C_addr[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[5]\,
      I1 => \I2C_addr_reg_n_0_[3]\,
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_addr_reg_n_0_[0]\,
      I4 => \I2C_addr_reg_n_0_[2]\,
      I5 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_addr[7]_i_11_n_0\
    );
\I2C_addr[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I2C_cstate(10),
      I1 => I2C_cstate(12),
      I2 => I2C_cstate(13),
      I3 => I2C_cstate(11),
      O => \I2C_addr[7]_i_12_n_0\
    );
\I2C_addr[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I2C_cstate(9),
      I1 => I2C_cstate(8),
      O => \I2C_addr[7]_i_13_n_0\
    );
\I2C_addr[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => I2C_cstate(2),
      I1 => \I2C_rdata[7]_i_8_n_0\,
      I2 => I2C_cstate(6),
      I3 => \I2C_addr[7]_i_26_n_0\,
      I4 => I2C_cstate(7),
      I5 => I2C_cstate(3),
      O => \I2C_addr[7]_i_14_n_0\
    );
\I2C_addr[7]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => I2C_cstate(4),
      I1 => I2C_cstate(3),
      I2 => I2C_cstate(5),
      O => \I2C_addr[7]_i_15_n_0\
    );
\I2C_addr[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => I2C_cstate(7),
      I1 => I2C_cstate(10),
      I2 => I2C_reg_update_i_2_n_0,
      I3 => I2C_cstate(11),
      I4 => I2C_cstate(9),
      I5 => I2C_cstate(8),
      O => \I2C_addr[7]_i_16_n_0\
    );
\I2C_addr[7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEEE"
    )
        port map (
      I0 => \I2C_addr[7]_i_27_n_0\,
      I1 => I2C_cstate(7),
      I2 => I2C_cstate(12),
      I3 => I2C_cstate(13),
      I4 => I2C_cstate(10),
      I5 => \I2C_addr[7]_i_13_n_0\,
      O => \I2C_addr[7]_i_17_n_0\
    );
\I2C_addr[7]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000101000001FF"
    )
        port map (
      I0 => \I2C_addr[7]_i_12_n_0\,
      I1 => I2C_cstate(9),
      I2 => I2C_cstate(8),
      I3 => \I2C_addr[7]_i_28_n_0\,
      I4 => I2C_cstate(6),
      I5 => I2C_cstate(11),
      O => \I2C_addr[7]_i_18_n_0\
    );
\I2C_addr[7]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I2C_cstate(6),
      I1 => I2C_cstate(7),
      I2 => I2C_cstate(3),
      I3 => I2C_cstate(5),
      O => \I2C_addr[7]_i_19_n_0\
    );
\I2C_addr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAAAAAFFEAEAAA"
    )
        port map (
      I0 => \I2C_addr[7]_i_7_n_0\,
      I1 => \I2C_addr[7]_i_6_n_0\,
      I2 => \I2C_addr[7]_i_9_n_0\,
      I3 => \I2C_addr[7]_i_4_n_0\,
      I4 => I2C_cstate(2),
      I5 => \I2C_addr[7]_i_10_n_0\,
      O => I2C_addr
    );
\I2C_addr[7]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I2C_cstate(11),
      I1 => I2C_cstate(10),
      O => \I2C_addr[7]_i_20_n_0\
    );
\I2C_addr[7]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \I2C_addr[7]_i_22_n_0\,
      I1 => I2C_cstate(3),
      I2 => I2C_cstate(4),
      I3 => I2C_cstate(2),
      I4 => I2C_cstate(13),
      I5 => I2C_cstate(12),
      O => \I2C_addr[7]_i_21_n_0\
    );
\I2C_addr[7]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I2C_cstate(7),
      I1 => I2C_cstate(9),
      I2 => I2C_cstate(5),
      I3 => I2C_cstate(6),
      O => \I2C_addr[7]_i_22_n_0\
    );
\I2C_addr[7]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I2C_cstate(3),
      I1 => I2C_cstate(4),
      O => \I2C_addr[7]_i_23_n_0\
    );
\I2C_addr[7]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => I2C_cstate(6),
      I1 => I2C_cstate(8),
      I2 => I2C_cstate(9),
      I3 => I2C_cstate(11),
      I4 => I2C_reg_update_i_2_n_0,
      I5 => I2C_cstate(10),
      O => \I2C_addr[7]_i_24_n_0\
    );
\I2C_addr[7]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => I2C_cstate(11),
      I1 => I2C_cstate(6),
      I2 => I2C_cstate(7),
      I3 => I2C_reg_update_i_2_n_0,
      I4 => I2C_cstate(10),
      I5 => I2C_cstate(8),
      O => \I2C_addr[7]_i_25_n_0\
    );
\I2C_addr[7]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => I2C_cstate(8),
      I1 => I2C_cstate(9),
      I2 => I2C_cstate(11),
      I3 => I2C_cstate(13),
      I4 => I2C_cstate(12),
      I5 => I2C_cstate(10),
      O => \I2C_addr[7]_i_26_n_0\
    );
\I2C_addr[7]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I2C_cstate(6),
      I1 => I2C_cstate(11),
      O => \I2C_addr[7]_i_27_n_0\
    );
\I2C_addr[7]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => I2C_cstate(8),
      I1 => I2C_cstate(10),
      I2 => I2C_cstate(12),
      I3 => I2C_cstate(13),
      I4 => I2C_cstate(7),
      O => \I2C_addr[7]_i_28_n_0\
    );
\I2C_addr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000014441444A0A0"
    )
        port map (
      I0 => I2C_cstate(4),
      I1 => \I2C_addr_reg_n_0_[7]\,
      I2 => \I2C_addr_reg_n_0_[6]\,
      I3 => \I2C_addr[7]_i_11_n_0\,
      I4 => I2C_cstate(11),
      I5 => I2C_cstate(8),
      O => \I2C_addr[7]_i_3_n_0\
    );
\I2C_addr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => I2C_cstate(3),
      I1 => I2C_cstate(7),
      I2 => \I2C_addr[7]_i_12_n_0\,
      I3 => \I2C_addr[7]_i_13_n_0\,
      I4 => I2C_cstate(6),
      I5 => \I2C_rdata[7]_i_8_n_0\,
      O => \I2C_addr[7]_i_4_n_0\
    );
\I2C_addr[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040444040404"
    )
        port map (
      I0 => \I2C_addr[7]_i_10_n_0\,
      I1 => \I2C_addr[7]_i_14_n_0\,
      I2 => \I2C_addr[7]_i_15_n_0\,
      I3 => \I2C_addr[7]_i_16_n_0\,
      I4 => \I2C_addr[7]_i_17_n_0\,
      I5 => \I2C_addr[7]_i_18_n_0\,
      O => \I2C_addr[7]_i_5_n_0\
    );
\I2C_addr[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \I2C_daddr[7]_i_17_n_0\,
      I1 => I2C_cstate(12),
      I2 => I2C_cstate(13),
      I3 => \I2C_addr[7]_i_19_n_0\,
      I4 => \I2C_addr[7]_i_20_n_0\,
      I5 => \I2C_addr[7]_i_13_n_0\,
      O => \I2C_addr[7]_i_6_n_0\
    );
\I2C_addr[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0E1E1"
    )
        port map (
      I0 => I2C_cstate(10),
      I1 => \I2C_addr[7]_i_21_n_0\,
      I2 => I2C_cstate(0),
      I3 => \I2C_addr[7]_i_14_n_0\,
      I4 => I2C_cstate(1),
      O => \I2C_addr[7]_i_7_n_0\
    );
\I2C_addr[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => I2C_cstate(13),
      I1 => I2C_cstate(10),
      I2 => I2C_cstate(12),
      I3 => \I2C_rdata[7]_i_5_n_0\,
      I4 => \I2C_addr[7]_i_22_n_0\,
      O => \I2C_addr[7]_i_8_n_0\
    );
\I2C_addr[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDDDDDDDDDDDDDDD"
    )
        port map (
      I0 => \I2C_addr[7]_i_23_n_0\,
      I1 => I2C_cstate(5),
      I2 => \I2C_addr[7]_i_16_n_0\,
      I3 => \I2C_addr[7]_i_17_n_0\,
      I4 => \I2C_addr[7]_i_24_n_0\,
      I5 => \I2C_addr[7]_i_25_n_0\,
      O => \I2C_addr[7]_i_9_n_0\
    );
\I2C_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_addr,
      D => \I2C_addr[0]_i_1_n_0\,
      Q => \I2C_addr_reg_n_0_[0]\,
      R => \I2C_addr[7]_i_1_n_0\
    );
\I2C_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_addr,
      D => \I2C_addr[1]_i_1_n_0\,
      Q => \I2C_addr_reg_n_0_[1]\,
      R => \I2C_addr[7]_i_1_n_0\
    );
\I2C_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_addr,
      D => \I2C_addr[2]_i_1_n_0\,
      Q => \I2C_addr_reg_n_0_[2]\,
      R => \I2C_addr[7]_i_1_n_0\
    );
\I2C_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_addr,
      D => \I2C_addr[3]_i_1_n_0\,
      Q => \I2C_addr_reg_n_0_[3]\,
      R => \I2C_addr[7]_i_1_n_0\
    );
\I2C_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_addr,
      D => \I2C_addr[4]_i_1_n_0\,
      Q => \I2C_addr_reg_n_0_[4]\,
      R => \I2C_addr[7]_i_1_n_0\
    );
\I2C_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_addr,
      D => \I2C_addr[5]_i_1_n_0\,
      Q => \I2C_addr_reg_n_0_[5]\,
      R => \I2C_addr[7]_i_1_n_0\
    );
\I2C_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_addr,
      D => \I2C_addr[6]_i_1_n_0\,
      Q => \I2C_addr_reg_n_0_[6]\,
      R => \I2C_addr[7]_i_1_n_0\
    );
\I2C_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_addr,
      D => \I2C_addr[7]_i_3_n_0\,
      Q => \I2C_addr_reg_n_0_[7]\,
      R => \I2C_addr[7]_i_1_n_0\
    );
\I2C_bitcnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => I2C_cstate(13),
      I1 => I2C_cstate(0),
      I2 => \I2C_bitcnt_reg_n_0_[0]\,
      I3 => \I2C_bitcnt[3]_i_9_n_0\,
      O => \I2C_bitcnt[0]_i_1_n_0\
    );
\I2C_bitcnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000110"
    )
        port map (
      I0 => I2C_cstate(13),
      I1 => I2C_cstate(0),
      I2 => \I2C_bitcnt_reg_n_0_[0]\,
      I3 => \I2C_bitcnt_reg_n_0_[1]\,
      I4 => \I2C_bitcnt[3]_i_9_n_0\,
      O => \I2C_bitcnt[1]_i_1_n_0\
    );
\I2C_bitcnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001111000"
    )
        port map (
      I0 => I2C_cstate(13),
      I1 => I2C_cstate(0),
      I2 => \I2C_bitcnt_reg_n_0_[0]\,
      I3 => \I2C_bitcnt_reg_n_0_[1]\,
      I4 => \I2C_bitcnt_reg_n_0_[2]\,
      I5 => \I2C_bitcnt[3]_i_9_n_0\,
      O => \I2C_bitcnt[2]_i_1_n_0\
    );
\I2C_bitcnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF0EEE0E00F"
    )
        port map (
      I0 => \I2C_bitcnt[3]_i_4_n_0\,
      I1 => \I2C_bitcnt[3]_i_5_n_0\,
      I2 => I2C_cstate(9),
      I3 => I2C_cstate(6),
      I4 => I2C_cstate(4),
      I5 => I2C_cstate(2),
      O => \I2C_bitcnt[3]_i_1_n_0\
    );
\I2C_bitcnt[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I2C_cstate(8),
      I1 => I2C_cstate(7),
      O => \I2C_bitcnt[3]_i_10_n_0\
    );
\I2C_bitcnt[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => I2C_cstate(13),
      I1 => I2C_cstate(11),
      I2 => I2C_cstate(10),
      I3 => \I2C_daddr[7]_i_17_n_0\,
      I4 => I2C_cstate(12),
      O => \I2C_bitcnt[3]_i_11_n_0\
    );
\I2C_bitcnt[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I2C_cstate(8),
      I1 => I2C_cstate(10),
      I2 => I2C_cstate(11),
      I3 => I2C_cstate(12),
      O => \I2C_bitcnt[3]_i_12_n_0\
    );
\I2C_bitcnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEFEFF"
    )
        port map (
      I0 => \I2C_bitcnt[3]_i_6_n_0\,
      I1 => I2C_cstate(3),
      I2 => \I2C_bitcnt[3]_i_4_n_0\,
      I3 => I2C_cstate(2),
      I4 => \I2C_bitcnt[3]_i_7_n_0\,
      I5 => I2C_cstate(6),
      O => I2C_bitcnt
    );
\I2C_bitcnt[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAA8000"
    )
        port map (
      I0 => \I2C_bitcnt[3]_i_8_n_0\,
      I1 => \I2C_bitcnt_reg_n_0_[1]\,
      I2 => \I2C_bitcnt_reg_n_0_[0]\,
      I3 => \I2C_bitcnt_reg_n_0_[2]\,
      I4 => \I2C_bitcnt_reg_n_0_[3]\,
      I5 => \I2C_bitcnt[3]_i_9_n_0\,
      O => \I2C_bitcnt[3]_i_3_n_0\
    );
\I2C_bitcnt[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFA"
    )
        port map (
      I0 => I2C_cstate(5),
      I1 => I2C_cstate(4),
      I2 => \I2C_bitcnt[3]_i_10_n_0\,
      I3 => \I2C_bitcnt[3]_i_11_n_0\,
      I4 => I2C_cstate(6),
      I5 => I2C_cstate(9),
      O => \I2C_bitcnt[3]_i_4_n_0\
    );
\I2C_bitcnt[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => I2C_cstate(3),
      I1 => I2C_cstate(0),
      I2 => I2C_cstate(1),
      O => \I2C_bitcnt[3]_i_5_n_0\
    );
\I2C_bitcnt[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I2C_cstate(1),
      I1 => I2C_cstate(0),
      O => \I2C_bitcnt[3]_i_6_n_0\
    );
\I2C_bitcnt[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I2C_cstate(9),
      I1 => I2C_cstate(4),
      O => \I2C_bitcnt[3]_i_7_n_0\
    );
\I2C_bitcnt[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I2C_cstate(13),
      I1 => I2C_cstate(0),
      O => \I2C_bitcnt[3]_i_8_n_0\
    );
\I2C_bitcnt[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \I2C_bitcnt[3]_i_12_n_0\,
      I1 => I2C_cstate(3),
      I2 => I2C_cstate(1),
      I3 => I2C_cstate(7),
      I4 => I2C_cstate(5),
      O => \I2C_bitcnt[3]_i_9_n_0\
    );
\I2C_bitcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_bitcnt,
      D => \I2C_bitcnt[0]_i_1_n_0\,
      Q => \I2C_bitcnt_reg_n_0_[0]\,
      R => \I2C_bitcnt[3]_i_1_n_0\
    );
\I2C_bitcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_bitcnt,
      D => \I2C_bitcnt[1]_i_1_n_0\,
      Q => \I2C_bitcnt_reg_n_0_[1]\,
      R => \I2C_bitcnt[3]_i_1_n_0\
    );
\I2C_bitcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_bitcnt,
      D => \I2C_bitcnt[2]_i_1_n_0\,
      Q => \I2C_bitcnt_reg_n_0_[2]\,
      R => \I2C_bitcnt[3]_i_1_n_0\
    );
\I2C_bitcnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_bitcnt,
      D => \I2C_bitcnt[3]_i_3_n_0\,
      Q => \I2C_bitcnt_reg_n_0_[3]\,
      R => \I2C_bitcnt[3]_i_1_n_0\
    );
\I2C_cstate[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => \I2C_cstate[13]_i_6_n_0\,
      I1 => I2C_cstate(0),
      I2 => I2C_cstate(13),
      I3 => \I2C_cstate[13]_i_3_n_0\,
      I4 => I2C_cstate(11),
      I5 => data9(0),
      O => I2C_nstate(0)
    );
\I2C_cstate[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2020"
    )
        port map (
      I0 => \I2C_nstate2__0\,
      I1 => \I2C_cstate[13]_i_6_n_0\,
      I2 => I2C_cstate(9),
      I3 => data8(11),
      I4 => I2C_cstate(10),
      O => I2C_nstate(10)
    );
\I2C_cstate[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \I2C_bitcnt_reg_n_0_[3]\,
      I1 => SCL_cstate(1),
      I2 => SCL_cstate(3),
      I3 => SCL_cstate(2),
      I4 => SCL_cstate(0),
      O => \I2C_nstate2__0\
    );
\I2C_cstate[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => SCL_cstate(2),
      I1 => SCL_cstate(1),
      I2 => SCL_cstate(3),
      I3 => SCL_cstate(0),
      O => data8(11)
    );
\I2C_cstate[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => I2C_cstate(10),
      I1 => SCL_cstate(0),
      I2 => SCL_cstate(3),
      I3 => SCL_cstate(1),
      I4 => SCL_cstate(2),
      O => I2C_nstate(11)
    );
\I2C_cstate[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => data9(0),
      I1 => I2C_cstate(11),
      I2 => \I2C_cstate[13]_i_4_n_0\,
      I3 => I2C_cstate(12),
      O => I2C_nstate(12)
    );
\I2C_cstate[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      O => data9(0)
    );
\I2C_cstate[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset,
      I1 => \I2C_cstate[13]_i_3_n_0\,
      O => I2C_cstate0
    );
\I2C_cstate[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202020FF20202020"
    )
        port map (
      I0 => \I2C_cstate[13]_i_4_n_0\,
      I1 => \I2C_cstate[13]_i_5_n_0\,
      I2 => I2C_cstate(3),
      I3 => \I2C_cstate[13]_i_6_n_0\,
      I4 => \I2C_cstate[13]_i_3_n_0\,
      I5 => I2C_cstate(13),
      O => I2C_nstate(13)
    );
\I2C_cstate[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \I2C_cstate[1]_i_2_n_0\,
      I2 => p_0_in(3),
      O => \I2C_cstate[13]_i_3_n_0\
    );
\I2C_cstate[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => SCL_cstate(2),
      I1 => SCL_cstate(3),
      I2 => SCL_cstate(1),
      I3 => SCL_cstate(0),
      O => \I2C_cstate[13]_i_4_n_0\
    );
\I2C_cstate[13]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \I2C_daddr_reg_n_0_[7]\,
      I1 => \I2C_daddr_reg_n_0_[1]\,
      I2 => \I2C_daddr_reg_n_0_[3]\,
      I3 => \I2C_cstate[13]_i_7_n_0\,
      O => \I2C_cstate[13]_i_5_n_0\
    );
\I2C_cstate[13]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \I2C_cstate[1]_i_2_n_0\,
      I2 => p_0_in(1),
      O => \I2C_cstate[13]_i_6_n_0\
    );
\I2C_cstate[13]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \I2C_daddr_reg_n_0_[4]\,
      I1 => \I2C_daddr_reg_n_0_[2]\,
      I2 => \I2C_daddr_reg_n_0_[6]\,
      I3 => \I2C_daddr_reg_n_0_[5]\,
      O => \I2C_cstate[13]_i_7_n_0\
    );
\I2C_cstate[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0000000E000"
    )
        port map (
      I0 => I2C_cstate(6),
      I1 => I2C_cstate(13),
      I2 => p_0_in(1),
      I3 => \I2C_cstate[1]_i_2_n_0\,
      I4 => p_0_in(3),
      I5 => I2C_cstate(9),
      O => I2C_nstate(1)
    );
\I2C_cstate[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => SCL_cstate(0),
      I1 => SCL_cstate(3),
      I2 => SCL_cstate(2),
      I3 => SCL_cstate(1),
      I4 => p_0_in(0),
      I5 => p_0_in(2),
      O => \I2C_cstate[1]_i_2_n_0\
    );
\I2C_cstate[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF88F8"
    )
        port map (
      I0 => \I2C_cstate[13]_i_6_n_0\,
      I1 => I2C_cstate(0),
      I2 => I2C_cstate(2),
      I3 => \I2C_nstate2__0\,
      I4 => I2C_cstate(1),
      O => I2C_nstate(2)
    );
\I2C_cstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \I2C_nstate2__0\,
      I1 => I2C_cstate(2),
      I2 => \I2C_cstate[13]_i_4_n_0\,
      I3 => I2C_cstate(3),
      O => I2C_nstate(3)
    );
\I2C_cstate[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000800"
    )
        port map (
      I0 => \I2C_cstate[13]_i_5_n_0\,
      I1 => \I2C_cstate[13]_i_4_n_0\,
      I2 => \I2C_daddr_reg_n_0_[0]\,
      I3 => I2C_cstate(3),
      I4 => \I2C_nstate2__0\,
      I5 => I2C_cstate(4),
      O => I2C_nstate(4)
    );
\I2C_cstate[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \I2C_nstate2__0\,
      I1 => I2C_cstate(4),
      I2 => \I2C_cstate[13]_i_4_n_0\,
      I3 => I2C_cstate(5),
      O => I2C_nstate(5)
    );
\I2C_cstate[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8F8FFF8"
    )
        port map (
      I0 => \I2C_cstate[13]_i_4_n_0\,
      I1 => I2C_cstate(5),
      I2 => I2C_cstate(8),
      I3 => I2C_cstate(6),
      I4 => \I2C_nstate2__0\,
      I5 => \I2C_cstate[13]_i_6_n_0\,
      O => I2C_nstate(6)
    );
\I2C_cstate[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2020"
    )
        port map (
      I0 => \I2C_nstate2__0\,
      I1 => \I2C_cstate[13]_i_6_n_0\,
      I2 => I2C_cstate(6),
      I3 => \I2C_cstate[13]_i_4_n_0\,
      I4 => I2C_cstate(7),
      O => I2C_nstate(7)
    );
\I2C_cstate[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => I2C_cstate(7),
      I1 => SCL_cstate(0),
      I2 => SCL_cstate(1),
      I3 => SCL_cstate(3),
      I4 => SCL_cstate(2),
      O => I2C_nstate(8)
    );
\I2C_cstate[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF800000"
    )
        port map (
      I0 => \I2C_cstate[13]_i_5_n_0\,
      I1 => \I2C_daddr_reg_n_0_[0]\,
      I2 => I2C_cstate(3),
      I3 => I2C_cstate(12),
      I4 => \I2C_cstate[13]_i_4_n_0\,
      I5 => \I2C_cstate[9]_i_2_n_0\,
      O => I2C_nstate(9)
    );
\I2C_cstate[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => I2C_cstate(9),
      I1 => \I2C_cstate[13]_i_6_n_0\,
      I2 => \I2C_nstate2__0\,
      O => \I2C_cstate[9]_i_2_n_0\
    );
\I2C_cstate_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => I2C_nstate(0),
      Q => I2C_cstate(0),
      S => I2C_cstate0
    );
\I2C_cstate_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => I2C_nstate(10),
      Q => I2C_cstate(10),
      R => I2C_cstate0
    );
\I2C_cstate_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => I2C_nstate(11),
      Q => I2C_cstate(11),
      R => I2C_cstate0
    );
\I2C_cstate_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => I2C_nstate(12),
      Q => I2C_cstate(12),
      R => I2C_cstate0
    );
\I2C_cstate_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => I2C_nstate(13),
      Q => I2C_cstate(13),
      R => I2C_cstate0
    );
\I2C_cstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => I2C_nstate(1),
      Q => I2C_cstate(1),
      R => I2C_cstate0
    );
\I2C_cstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => I2C_nstate(2),
      Q => I2C_cstate(2),
      R => I2C_cstate0
    );
\I2C_cstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => I2C_nstate(3),
      Q => I2C_cstate(3),
      R => I2C_cstate0
    );
\I2C_cstate_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => I2C_nstate(4),
      Q => I2C_cstate(4),
      R => I2C_cstate0
    );
\I2C_cstate_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => I2C_nstate(5),
      Q => I2C_cstate(5),
      R => I2C_cstate0
    );
\I2C_cstate_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => I2C_nstate(6),
      Q => I2C_cstate(6),
      R => I2C_cstate0
    );
\I2C_cstate_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => I2C_nstate(7),
      Q => I2C_cstate(7),
      R => I2C_cstate0
    );
\I2C_cstate_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => I2C_nstate(8),
      Q => I2C_cstate(8),
      R => I2C_cstate0
    );
\I2C_cstate_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => I2C_nstate(9),
      Q => I2C_cstate(9),
      R => I2C_cstate0
    );
\I2C_daddr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \I2C_daddr[7]_i_8_n_0\,
      I1 => \I2C_daddr[7]_i_9_n_0\,
      I2 => \I2C_daddr[0]_i_2_n_0\,
      I3 => \I2C_daddr[7]_i_11_n_0\,
      I4 => \I2C_daddr[7]_i_12_n_0\,
      I5 => I2C_cstate(12),
      O => \I2C_daddr[0]_i_1_n_0\
    );
\I2C_daddr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \I2C_daddr[7]_i_18_n_0\,
      I1 => I2C_cstate(0),
      I2 => \I2C_addr[0]_i_2_n_0\,
      I3 => I2C_cstate(2),
      I4 => I2C_cstate(1),
      I5 => \I2C_daddr[7]_i_19_n_0\,
      O => \I2C_daddr[0]_i_2_n_0\
    );
\I2C_daddr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \I2C_daddr[7]_i_8_n_0\,
      I1 => \I2C_daddr[7]_i_9_n_0\,
      I2 => \I2C_daddr[1]_i_2_n_0\,
      I3 => \I2C_daddr[7]_i_11_n_0\,
      I4 => \I2C_daddr[7]_i_12_n_0\,
      I5 => I2C_cstate(12),
      O => \I2C_daddr[1]_i_1_n_0\
    );
\I2C_daddr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \I2C_daddr[7]_i_18_n_0\,
      I1 => I2C_cstate(0),
      I2 => \I2C_daddr_reg_n_0_[0]\,
      I3 => I2C_cstate(2),
      I4 => I2C_cstate(1),
      I5 => \I2C_daddr[7]_i_19_n_0\,
      O => \I2C_daddr[1]_i_2_n_0\
    );
\I2C_daddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \I2C_daddr[7]_i_8_n_0\,
      I1 => \I2C_daddr[7]_i_9_n_0\,
      I2 => \I2C_daddr[2]_i_2_n_0\,
      I3 => \I2C_daddr[7]_i_11_n_0\,
      I4 => \I2C_daddr[7]_i_12_n_0\,
      I5 => I2C_cstate(12),
      O => \I2C_daddr[2]_i_1_n_0\
    );
\I2C_daddr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \I2C_daddr[7]_i_18_n_0\,
      I1 => I2C_cstate(0),
      I2 => \I2C_daddr_reg_n_0_[1]\,
      I3 => I2C_cstate(2),
      I4 => I2C_cstate(1),
      I5 => \I2C_daddr[7]_i_19_n_0\,
      O => \I2C_daddr[2]_i_2_n_0\
    );
\I2C_daddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \I2C_daddr[7]_i_8_n_0\,
      I1 => \I2C_daddr[7]_i_9_n_0\,
      I2 => \I2C_daddr[3]_i_2_n_0\,
      I3 => \I2C_daddr[7]_i_11_n_0\,
      I4 => \I2C_daddr[7]_i_12_n_0\,
      I5 => I2C_cstate(12),
      O => \I2C_daddr[3]_i_1_n_0\
    );
\I2C_daddr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \I2C_daddr[7]_i_18_n_0\,
      I1 => I2C_cstate(0),
      I2 => \I2C_daddr_reg_n_0_[2]\,
      I3 => I2C_cstate(2),
      I4 => I2C_cstate(1),
      I5 => \I2C_daddr[7]_i_19_n_0\,
      O => \I2C_daddr[3]_i_2_n_0\
    );
\I2C_daddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \I2C_daddr[7]_i_8_n_0\,
      I1 => \I2C_daddr[7]_i_9_n_0\,
      I2 => \I2C_daddr[4]_i_2_n_0\,
      I3 => \I2C_daddr[7]_i_11_n_0\,
      I4 => \I2C_daddr[7]_i_12_n_0\,
      I5 => I2C_cstate(12),
      O => \I2C_daddr[4]_i_1_n_0\
    );
\I2C_daddr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \I2C_daddr[7]_i_18_n_0\,
      I1 => I2C_cstate(0),
      I2 => \I2C_daddr_reg_n_0_[3]\,
      I3 => I2C_cstate(2),
      I4 => I2C_cstate(1),
      I5 => \I2C_daddr[7]_i_19_n_0\,
      O => \I2C_daddr[4]_i_2_n_0\
    );
\I2C_daddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \I2C_daddr[7]_i_8_n_0\,
      I1 => \I2C_daddr[7]_i_9_n_0\,
      I2 => \I2C_daddr[5]_i_2_n_0\,
      I3 => \I2C_daddr[7]_i_11_n_0\,
      I4 => \I2C_daddr[7]_i_12_n_0\,
      I5 => I2C_cstate(12),
      O => \I2C_daddr[5]_i_1_n_0\
    );
\I2C_daddr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \I2C_daddr[7]_i_18_n_0\,
      I1 => I2C_cstate(0),
      I2 => \I2C_daddr_reg_n_0_[4]\,
      I3 => I2C_cstate(2),
      I4 => I2C_cstate(1),
      I5 => \I2C_daddr[7]_i_19_n_0\,
      O => \I2C_daddr[5]_i_2_n_0\
    );
\I2C_daddr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \I2C_daddr[7]_i_8_n_0\,
      I1 => \I2C_daddr[7]_i_9_n_0\,
      I2 => \I2C_daddr[6]_i_2_n_0\,
      I3 => \I2C_daddr[7]_i_11_n_0\,
      I4 => \I2C_daddr[7]_i_12_n_0\,
      I5 => I2C_cstate(12),
      O => \I2C_daddr[6]_i_1_n_0\
    );
\I2C_daddr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \I2C_daddr[7]_i_18_n_0\,
      I1 => I2C_cstate(0),
      I2 => \I2C_daddr_reg_n_0_[5]\,
      I3 => I2C_cstate(2),
      I4 => I2C_cstate(1),
      I5 => \I2C_daddr[7]_i_19_n_0\,
      O => \I2C_daddr[6]_i_2_n_0\
    );
\I2C_daddr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAAAAA8A8A8"
    )
        port map (
      I0 => I2C_cstate(13),
      I1 => \I2C_daddr[7]_i_4_n_0\,
      I2 => \I2C_daddr[7]_i_5_n_0\,
      I3 => \I2C_daddr[7]_i_6_n_0\,
      I4 => I2C_cstate(3),
      I5 => \I2C_daddr[7]_i_7_n_0\,
      O => \I2C_daddr[7]_i_1_n_0\
    );
\I2C_daddr[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \I2C_daddr[7]_i_18_n_0\,
      I1 => I2C_cstate(0),
      I2 => \I2C_daddr_reg_n_0_[6]\,
      I3 => I2C_cstate(2),
      I4 => I2C_cstate(1),
      I5 => \I2C_daddr[7]_i_19_n_0\,
      O => \I2C_daddr[7]_i_10_n_0\
    );
\I2C_daddr[7]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I2C_cstate(8),
      I1 => I2C_cstate(7),
      I2 => I2C_cstate(6),
      O => \I2C_daddr[7]_i_11_n_0\
    );
\I2C_daddr[7]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I2C_cstate(11),
      I1 => I2C_cstate(10),
      I2 => I2C_cstate(9),
      O => \I2C_daddr[7]_i_12_n_0\
    );
\I2C_daddr[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => I2C_cstate(7),
      I1 => I2C_cstate(11),
      I2 => I2C_cstate(9),
      I3 => I2C_reg_update_i_2_n_0,
      I4 => I2C_cstate(10),
      I5 => I2C_cstate(8),
      O => \I2C_daddr[7]_i_13_n_0\
    );
\I2C_daddr[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEAFFFFFFFF"
    )
        port map (
      I0 => I2C_reg_update_i_2_n_0,
      I1 => I2C_cstate(11),
      I2 => I2C_cstate(10),
      I3 => I2C_cstate(9),
      I4 => I2C_cstate(7),
      I5 => \I2C_daddr[7]_i_20_n_0\,
      O => \I2C_daddr[7]_i_14_n_0\
    );
\I2C_daddr[7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000111100001F11"
    )
        port map (
      I0 => I2C_cstate(8),
      I1 => \I2C_daddr[7]_i_21_n_0\,
      I2 => \I2C_daddr[7]_i_22_n_0\,
      I3 => \I2C_daddr[7]_i_23_n_0\,
      I4 => I2C_cstate(6),
      I5 => I2C_cstate(11),
      O => \I2C_daddr[7]_i_15_n_0\
    );
\I2C_daddr[7]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I2C_cstate(7),
      I1 => I2C_cstate(8),
      I2 => I2C_cstate(5),
      I3 => I2C_cstate(6),
      O => \I2C_daddr[7]_i_16_n_0\
    );
\I2C_daddr[7]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => SCL_cstate(0),
      I1 => SCL_cstate(2),
      I2 => SCL_cstate(3),
      I3 => SCL_cstate(1),
      O => \I2C_daddr[7]_i_17_n_0\
    );
\I2C_daddr[7]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I2C_cstate(5),
      I1 => I2C_cstate(4),
      I2 => I2C_cstate(3),
      O => \I2C_daddr[7]_i_18_n_0\
    );
\I2C_daddr[7]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I2C_cstate(4),
      I1 => I2C_cstate(5),
      O => \I2C_daddr[7]_i_19_n_0\
    );
\I2C_daddr[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFE2"
    )
        port map (
      I0 => \I2C_daddr[7]_i_7_n_0\,
      I1 => I2C_cstate(3),
      I2 => \I2C_daddr[7]_i_6_n_0\,
      I3 => \I2C_daddr[7]_i_5_n_0\,
      I4 => \I2C_daddr[7]_i_4_n_0\,
      O => I2C_daddr
    );
\I2C_daddr[7]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I2C_cstate(6),
      I1 => I2C_cstate(8),
      O => \I2C_daddr[7]_i_20_n_0\
    );
\I2C_daddr[7]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => I2C_cstate(11),
      I1 => I2C_cstate(9),
      I2 => I2C_cstate(12),
      I3 => I2C_cstate(13),
      I4 => I2C_cstate(10),
      O => \I2C_daddr[7]_i_21_n_0\
    );
\I2C_daddr[7]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => I2C_cstate(7),
      I1 => I2C_cstate(13),
      I2 => I2C_cstate(12),
      O => \I2C_daddr[7]_i_22_n_0\
    );
\I2C_daddr[7]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I2C_cstate(9),
      I1 => I2C_cstate(10),
      O => \I2C_daddr[7]_i_23_n_0\
    );
\I2C_daddr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \I2C_daddr[7]_i_8_n_0\,
      I1 => \I2C_daddr[7]_i_9_n_0\,
      I2 => \I2C_daddr[7]_i_10_n_0\,
      I3 => \I2C_daddr[7]_i_11_n_0\,
      I4 => \I2C_daddr[7]_i_12_n_0\,
      I5 => I2C_cstate(12),
      O => \I2C_daddr[7]_i_3_n_0\
    );
\I2C_daddr[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEEB"
    )
        port map (
      I0 => I2C_cstate(0),
      I1 => I2C_cstate(2),
      I2 => \I2C_daddr[7]_i_6_n_0\,
      I3 => I2C_cstate(3),
      I4 => I2C_cstate(1),
      O => \I2C_daddr[7]_i_4_n_0\
    );
\I2C_daddr[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFEEEE8E8F8E8"
    )
        port map (
      I0 => I2C_cstate(4),
      I1 => I2C_cstate(5),
      I2 => \I2C_daddr[7]_i_13_n_0\,
      I3 => \I2C_daddr[7]_i_14_n_0\,
      I4 => \I2C_daddr[7]_i_15_n_0\,
      I5 => I2C_cstate(6),
      O => \I2C_daddr[7]_i_5_n_0\
    );
\I2C_daddr[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => I2C_cstate(9),
      I1 => I2C_cstate(4),
      I2 => I2C_cstate(11),
      I3 => I2C_cstate(10),
      I4 => \I2C_daddr[7]_i_16_n_0\,
      O => \I2C_daddr[7]_i_6_n_0\
    );
\I2C_daddr[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \I2C_daddr[7]_i_17_n_0\,
      I1 => \I2C_daddr[7]_i_16_n_0\,
      I2 => I2C_cstate(4),
      I3 => I2C_cstate(11),
      I4 => I2C_cstate(10),
      I5 => I2C_cstate(9),
      O => \I2C_daddr[7]_i_7_n_0\
    );
\I2C_daddr[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I2C_cstate(10),
      I1 => I2C_cstate(11),
      O => \I2C_daddr[7]_i_8_n_0\
    );
\I2C_daddr[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I2C_cstate(7),
      I1 => I2C_cstate(8),
      O => \I2C_daddr[7]_i_9_n_0\
    );
\I2C_daddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_daddr,
      D => \I2C_daddr[0]_i_1_n_0\,
      Q => \I2C_daddr_reg_n_0_[0]\,
      R => \I2C_daddr[7]_i_1_n_0\
    );
\I2C_daddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_daddr,
      D => \I2C_daddr[1]_i_1_n_0\,
      Q => \I2C_daddr_reg_n_0_[1]\,
      R => \I2C_daddr[7]_i_1_n_0\
    );
\I2C_daddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_daddr,
      D => \I2C_daddr[2]_i_1_n_0\,
      Q => \I2C_daddr_reg_n_0_[2]\,
      R => \I2C_daddr[7]_i_1_n_0\
    );
\I2C_daddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_daddr,
      D => \I2C_daddr[3]_i_1_n_0\,
      Q => \I2C_daddr_reg_n_0_[3]\,
      R => \I2C_daddr[7]_i_1_n_0\
    );
\I2C_daddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_daddr,
      D => \I2C_daddr[4]_i_1_n_0\,
      Q => \I2C_daddr_reg_n_0_[4]\,
      R => \I2C_daddr[7]_i_1_n_0\
    );
\I2C_daddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_daddr,
      D => \I2C_daddr[5]_i_1_n_0\,
      Q => \I2C_daddr_reg_n_0_[5]\,
      R => \I2C_daddr[7]_i_1_n_0\
    );
\I2C_daddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_daddr,
      D => \I2C_daddr[6]_i_1_n_0\,
      Q => \I2C_daddr_reg_n_0_[6]\,
      R => \I2C_daddr[7]_i_1_n_0\
    );
\I2C_daddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_daddr,
      D => \I2C_daddr[7]_i_3_n_0\,
      Q => \I2C_daddr_reg_n_0_[7]\,
      R => \I2C_daddr[7]_i_1_n_0\
    );
\I2C_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4D484848"
    )
        port map (
      I0 => I2C_cstate(3),
      I1 => \I2C_rdata[0]_i_2_n_0\,
      I2 => I2C_cstate(5),
      I3 => I2C_cstate(9),
      I4 => \I2C_addr[0]_i_2_n_0\,
      O => \I2C_rdata[0]_i_1_n_0\
    );
\I2C_rdata[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(24),
      I1 => \^an\(16),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \^an\(8),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \^an\(0),
      O => \I2C_rdata[0]_i_10_n_0\
    );
\I2C_rdata[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(56),
      I1 => \^an\(48),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \^an\(40),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \^an\(32),
      O => \I2C_rdata[0]_i_11_n_0\
    );
\I2C_rdata[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[3]\(0),
      I1 => \I2C_regblock_reg[2]\(0),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[1]\(0),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[0]\(0),
      O => \I2C_rdata[0]_i_12_n_0\
    );
\I2C_rdata[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[7]\(0),
      I1 => \I2C_regblock_reg[6]\(0),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[5]\(0),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[4]\(0),
      O => \I2C_rdata[0]_i_13_n_0\
    );
\I2C_rdata[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[11]\(0),
      I1 => \I2C_regblock_reg[10]\(0),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[9]\(0),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[8]\(0),
      O => \I2C_rdata[0]_i_14_n_0\
    );
\I2C_rdata[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[15]\(0),
      I1 => \I2C_regblock_reg[14]\(0),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[13]\(0),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[12]\(0),
      O => \I2C_rdata[0]_i_15_n_0\
    );
\I2C_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \I2C_rdata_reg[0]_i_3_n_0\,
      I1 => \I2C_addr_reg_n_0_[4]\,
      I2 => \I2C_rdata_reg[0]_i_4_n_0\,
      I3 => \I2C_addr_reg_n_0_[3]\,
      I4 => \I2C_rdata_reg[0]_i_5_n_0\,
      I5 => I2C_cstate(9),
      O => \I2C_rdata[0]_i_2_n_0\
    );
\I2C_rdata[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[19]\(0),
      I1 => \I2C_regblock_reg[18]\(0),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[17]\(0),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[16]\(0),
      O => \I2C_rdata[0]_i_8_n_0\
    );
\I2C_rdata[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[23]\(0),
      I1 => \I2C_regblock_reg[22]\(0),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[21]\(0),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[20]\(0),
      O => \I2C_rdata[0]_i_9_n_0\
    );
\I2C_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4D484848"
    )
        port map (
      I0 => I2C_cstate(3),
      I1 => \I2C_rdata[1]_i_2_n_0\,
      I2 => I2C_cstate(5),
      I3 => I2C_cstate(9),
      I4 => I2C_rdata(0),
      O => \I2C_rdata[1]_i_1_n_0\
    );
\I2C_rdata[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(25),
      I1 => \^an\(17),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \^an\(9),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \^an\(1),
      O => \I2C_rdata[1]_i_10_n_0\
    );
\I2C_rdata[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(57),
      I1 => \^an\(49),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \^an\(41),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \^an\(33),
      O => \I2C_rdata[1]_i_11_n_0\
    );
\I2C_rdata[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[3]\(1),
      I1 => \I2C_regblock_reg[2]\(1),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[1]\(1),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[0]\(1),
      O => \I2C_rdata[1]_i_12_n_0\
    );
\I2C_rdata[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[7]\(1),
      I1 => \I2C_regblock_reg[6]\(1),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[5]\(1),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[4]\(1),
      O => \I2C_rdata[1]_i_13_n_0\
    );
\I2C_rdata[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[11]\(1),
      I1 => \I2C_regblock_reg[10]\(1),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[9]\(1),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[8]\(1),
      O => \I2C_rdata[1]_i_14_n_0\
    );
\I2C_rdata[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[15]\(1),
      I1 => \I2C_regblock_reg[14]\(1),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[13]\(1),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[12]\(1),
      O => \I2C_rdata[1]_i_15_n_0\
    );
\I2C_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \I2C_rdata_reg[1]_i_3_n_0\,
      I1 => \I2C_addr_reg_n_0_[4]\,
      I2 => \I2C_rdata_reg[1]_i_4_n_0\,
      I3 => \I2C_addr_reg_n_0_[3]\,
      I4 => \I2C_rdata_reg[1]_i_5_n_0\,
      I5 => I2C_cstate(9),
      O => \I2C_rdata[1]_i_2_n_0\
    );
\I2C_rdata[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[19]\(1),
      I1 => \I2C_regblock_reg[18]\(1),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[17]\(1),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[16]\(1),
      O => \I2C_rdata[1]_i_8_n_0\
    );
\I2C_rdata[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[23]\(1),
      I1 => \I2C_regblock_reg[22]\(1),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[21]\(1),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[20]\(1),
      O => \I2C_rdata[1]_i_9_n_0\
    );
\I2C_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4D484848"
    )
        port map (
      I0 => I2C_cstate(3),
      I1 => \I2C_rdata[2]_i_2_n_0\,
      I2 => I2C_cstate(5),
      I3 => I2C_cstate(9),
      I4 => I2C_rdata(1),
      O => \I2C_rdata[2]_i_1_n_0\
    );
\I2C_rdata[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(26),
      I1 => \^an\(18),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \^an\(10),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \^an\(2),
      O => \I2C_rdata[2]_i_10_n_0\
    );
\I2C_rdata[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(58),
      I1 => \^an\(50),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \^an\(42),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \^an\(34),
      O => \I2C_rdata[2]_i_11_n_0\
    );
\I2C_rdata[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[3]\(2),
      I1 => \I2C_regblock_reg[2]\(2),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[1]\(2),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[0]\(2),
      O => \I2C_rdata[2]_i_12_n_0\
    );
\I2C_rdata[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[7]\(2),
      I1 => \I2C_regblock_reg[6]\(2),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[5]\(2),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[4]\(2),
      O => \I2C_rdata[2]_i_13_n_0\
    );
\I2C_rdata[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[11]\(2),
      I1 => \I2C_regblock_reg[10]\(2),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[9]\(2),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[8]\(2),
      O => \I2C_rdata[2]_i_14_n_0\
    );
\I2C_rdata[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[15]\(2),
      I1 => \I2C_regblock_reg[14]\(2),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[13]\(2),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[12]\(2),
      O => \I2C_rdata[2]_i_15_n_0\
    );
\I2C_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \I2C_rdata_reg[2]_i_3_n_0\,
      I1 => \I2C_addr_reg_n_0_[4]\,
      I2 => \I2C_rdata_reg[2]_i_4_n_0\,
      I3 => \I2C_addr_reg_n_0_[3]\,
      I4 => \I2C_rdata_reg[2]_i_5_n_0\,
      I5 => I2C_cstate(9),
      O => \I2C_rdata[2]_i_2_n_0\
    );
\I2C_rdata[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[19]\(2),
      I1 => \I2C_regblock_reg[18]\(2),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[17]\(2),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[16]\(2),
      O => \I2C_rdata[2]_i_8_n_0\
    );
\I2C_rdata[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[23]\(2),
      I1 => \I2C_regblock_reg[22]\(2),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[21]\(2),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[20]\(2),
      O => \I2C_rdata[2]_i_9_n_0\
    );
\I2C_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4D484848"
    )
        port map (
      I0 => I2C_cstate(3),
      I1 => \I2C_rdata[3]_i_2_n_0\,
      I2 => I2C_cstate(5),
      I3 => I2C_cstate(9),
      I4 => I2C_rdata(2),
      O => \I2C_rdata[3]_i_1_n_0\
    );
\I2C_rdata[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(27),
      I1 => \^an\(19),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \^an\(11),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \^an\(3),
      O => \I2C_rdata[3]_i_10_n_0\
    );
\I2C_rdata[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(59),
      I1 => \^an\(51),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \^an\(43),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \^an\(35),
      O => \I2C_rdata[3]_i_11_n_0\
    );
\I2C_rdata[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[3]\(3),
      I1 => \I2C_regblock_reg[2]\(3),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[1]\(3),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[0]\(3),
      O => \I2C_rdata[3]_i_12_n_0\
    );
\I2C_rdata[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[7]\(3),
      I1 => \I2C_regblock_reg[6]\(3),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[5]\(3),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[4]\(3),
      O => \I2C_rdata[3]_i_13_n_0\
    );
\I2C_rdata[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[11]\(3),
      I1 => \I2C_regblock_reg[10]\(3),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[9]\(3),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[8]\(3),
      O => \I2C_rdata[3]_i_14_n_0\
    );
\I2C_rdata[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[15]\(3),
      I1 => \I2C_regblock_reg[14]\(3),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[13]\(3),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[12]\(3),
      O => \I2C_rdata[3]_i_15_n_0\
    );
\I2C_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \I2C_rdata_reg[3]_i_3_n_0\,
      I1 => \I2C_addr_reg_n_0_[4]\,
      I2 => \I2C_rdata_reg[3]_i_4_n_0\,
      I3 => \I2C_addr_reg_n_0_[3]\,
      I4 => \I2C_rdata_reg[3]_i_5_n_0\,
      I5 => I2C_cstate(9),
      O => \I2C_rdata[3]_i_2_n_0\
    );
\I2C_rdata[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[19]\(3),
      I1 => \I2C_regblock_reg[18]\(3),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[17]\(3),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[16]\(3),
      O => \I2C_rdata[3]_i_8_n_0\
    );
\I2C_rdata[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[23]\(3),
      I1 => \I2C_regblock_reg[22]\(3),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[21]\(3),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[20]\(3),
      O => \I2C_rdata[3]_i_9_n_0\
    );
\I2C_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4D484848"
    )
        port map (
      I0 => I2C_cstate(3),
      I1 => \I2C_rdata[4]_i_2_n_0\,
      I2 => I2C_cstate(5),
      I3 => I2C_cstate(9),
      I4 => I2C_rdata(3),
      O => \I2C_rdata[4]_i_1_n_0\
    );
\I2C_rdata[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(28),
      I1 => \^an\(20),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \^an\(12),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \^an\(4),
      O => \I2C_rdata[4]_i_10_n_0\
    );
\I2C_rdata[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(60),
      I1 => \^an\(52),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \^an\(44),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \^an\(36),
      O => \I2C_rdata[4]_i_11_n_0\
    );
\I2C_rdata[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[3]\(4),
      I1 => \I2C_regblock_reg[2]\(4),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[1]\(4),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[0]\(4),
      O => \I2C_rdata[4]_i_12_n_0\
    );
\I2C_rdata[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[7]\(4),
      I1 => \I2C_regblock_reg[6]\(4),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[5]\(4),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[4]\(4),
      O => \I2C_rdata[4]_i_13_n_0\
    );
\I2C_rdata[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[11]\(4),
      I1 => \I2C_regblock_reg[10]\(4),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[9]\(4),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[8]\(4),
      O => \I2C_rdata[4]_i_14_n_0\
    );
\I2C_rdata[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[15]\(4),
      I1 => \I2C_regblock_reg[14]\(4),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[13]\(4),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[12]\(4),
      O => \I2C_rdata[4]_i_15_n_0\
    );
\I2C_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \I2C_rdata_reg[4]_i_3_n_0\,
      I1 => \I2C_addr_reg_n_0_[4]\,
      I2 => \I2C_rdata_reg[4]_i_4_n_0\,
      I3 => \I2C_addr_reg_n_0_[3]\,
      I4 => \I2C_rdata_reg[4]_i_5_n_0\,
      I5 => I2C_cstate(9),
      O => \I2C_rdata[4]_i_2_n_0\
    );
\I2C_rdata[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[19]\(4),
      I1 => \I2C_regblock_reg[18]\(4),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[17]\(4),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[16]\(4),
      O => \I2C_rdata[4]_i_8_n_0\
    );
\I2C_rdata[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[23]\(4),
      I1 => \I2C_regblock_reg[22]\(4),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[21]\(4),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[20]\(4),
      O => \I2C_rdata[4]_i_9_n_0\
    );
\I2C_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4D484848"
    )
        port map (
      I0 => I2C_cstate(3),
      I1 => \I2C_rdata[5]_i_2_n_0\,
      I2 => I2C_cstate(5),
      I3 => I2C_cstate(9),
      I4 => I2C_rdata(4),
      O => \I2C_rdata[5]_i_1_n_0\
    );
\I2C_rdata[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(29),
      I1 => \^an\(21),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \^an\(13),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \^an\(5),
      O => \I2C_rdata[5]_i_10_n_0\
    );
\I2C_rdata[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(61),
      I1 => \^an\(53),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \^an\(45),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \^an\(37),
      O => \I2C_rdata[5]_i_11_n_0\
    );
\I2C_rdata[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[3]\(5),
      I1 => \I2C_regblock_reg[2]\(5),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[1]\(5),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[0]\(5),
      O => \I2C_rdata[5]_i_12_n_0\
    );
\I2C_rdata[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[7]\(5),
      I1 => \I2C_regblock_reg[6]\(5),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[5]\(5),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[4]\(5),
      O => \I2C_rdata[5]_i_13_n_0\
    );
\I2C_rdata[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[11]\(5),
      I1 => \I2C_regblock_reg[10]\(5),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[9]\(5),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[8]\(5),
      O => \I2C_rdata[5]_i_14_n_0\
    );
\I2C_rdata[5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[15]\(5),
      I1 => \I2C_regblock_reg[14]\(5),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[13]\(5),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[12]\(5),
      O => \I2C_rdata[5]_i_15_n_0\
    );
\I2C_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \I2C_rdata_reg[5]_i_3_n_0\,
      I1 => \I2C_addr_reg_n_0_[4]\,
      I2 => \I2C_rdata_reg[5]_i_4_n_0\,
      I3 => \I2C_addr_reg_n_0_[3]\,
      I4 => \I2C_rdata_reg[5]_i_5_n_0\,
      I5 => I2C_cstate(9),
      O => \I2C_rdata[5]_i_2_n_0\
    );
\I2C_rdata[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[19]\(5),
      I1 => \I2C_regblock_reg[18]\(5),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[17]\(5),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[16]\(5),
      O => \I2C_rdata[5]_i_8_n_0\
    );
\I2C_rdata[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[23]\(5),
      I1 => \I2C_regblock_reg[22]\(5),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[21]\(5),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[20]\(5),
      O => \I2C_rdata[5]_i_9_n_0\
    );
\I2C_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4D484848"
    )
        port map (
      I0 => I2C_cstate(3),
      I1 => \I2C_rdata[6]_i_2_n_0\,
      I2 => I2C_cstate(5),
      I3 => I2C_cstate(9),
      I4 => I2C_rdata(5),
      O => \I2C_rdata[6]_i_1_n_0\
    );
\I2C_rdata[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(30),
      I1 => \^an\(22),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \^an\(14),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \^an\(6),
      O => \I2C_rdata[6]_i_10_n_0\
    );
\I2C_rdata[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(62),
      I1 => \^an\(54),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \^an\(46),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \^an\(38),
      O => \I2C_rdata[6]_i_11_n_0\
    );
\I2C_rdata[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[3]\(6),
      I1 => \I2C_regblock_reg[2]\(6),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[1]\(6),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[0]\(6),
      O => \I2C_rdata[6]_i_12_n_0\
    );
\I2C_rdata[6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[7]\(6),
      I1 => \I2C_regblock_reg[6]\(6),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[5]\(6),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[4]\(6),
      O => \I2C_rdata[6]_i_13_n_0\
    );
\I2C_rdata[6]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[11]\(6),
      I1 => \I2C_regblock_reg[10]\(6),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[9]\(6),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[8]\(6),
      O => \I2C_rdata[6]_i_14_n_0\
    );
\I2C_rdata[6]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[15]\(6),
      I1 => \I2C_regblock_reg[14]\(6),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[13]\(6),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[12]\(6),
      O => \I2C_rdata[6]_i_15_n_0\
    );
\I2C_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \I2C_rdata_reg[6]_i_3_n_0\,
      I1 => \I2C_addr_reg_n_0_[4]\,
      I2 => \I2C_rdata_reg[6]_i_4_n_0\,
      I3 => \I2C_addr_reg_n_0_[3]\,
      I4 => \I2C_rdata_reg[6]_i_5_n_0\,
      I5 => I2C_cstate(9),
      O => \I2C_rdata[6]_i_2_n_0\
    );
\I2C_rdata[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[19]\(6),
      I1 => \I2C_regblock_reg[18]\(6),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[17]\(6),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[16]\(6),
      O => \I2C_rdata[6]_i_8_n_0\
    );
\I2C_rdata[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[23]\(6),
      I1 => \I2C_regblock_reg[22]\(6),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[21]\(6),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[20]\(6),
      O => \I2C_rdata[6]_i_9_n_0\
    );
\I2C_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFEFFFE"
    )
        port map (
      I0 => \I2C_rdata[7]_i_4_n_0\,
      I1 => I2C_cstate(4),
      I2 => I2C_cstate(5),
      I3 => \I2C_rdata[7]_i_5_n_0\,
      I4 => \I2C_rdata[7]_i_6_n_0\,
      I5 => \I2C_rdata[7]_i_7_n_0\,
      O => \I2C_rdata[7]_i_1_n_0\
    );
\I2C_rdata[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAA8"
    )
        port map (
      I0 => \I2C_rdata[7]_i_15_n_0\,
      I1 => I2C_reg_update_i_2_n_0,
      I2 => I2C_cstate(9),
      I3 => I2C_cstate(8),
      I4 => I2C_cstate(11),
      I5 => \I2C_rdata[7]_i_12_n_0\,
      O => \I2C_rdata[7]_i_10_n_0\
    );
\I2C_rdata[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \I2C_rdata_reg[7]_i_16_n_0\,
      I1 => \I2C_addr_reg_n_0_[4]\,
      I2 => \I2C_rdata_reg[7]_i_17_n_0\,
      I3 => \I2C_addr_reg_n_0_[3]\,
      I4 => \I2C_rdata_reg[7]_i_18_n_0\,
      I5 => I2C_cstate(9),
      O => \I2C_rdata[7]_i_11_n_0\
    );
\I2C_rdata[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010115"
    )
        port map (
      I0 => I2C_cstate(10),
      I1 => I2C_cstate(8),
      I2 => I2C_cstate(11),
      I3 => I2C_cstate(13),
      I4 => I2C_cstate(12),
      I5 => I2C_cstate(9),
      O => \I2C_rdata[7]_i_12_n_0\
    );
\I2C_rdata[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000202000002FF"
    )
        port map (
      I0 => \I2C_rdata[7]_i_19_n_0\,
      I1 => I2C_cstate(9),
      I2 => I2C_cstate(12),
      I3 => \I2C_bitcnt[3]_i_12_n_0\,
      I4 => I2C_cstate(13),
      I5 => \I2C_daddr[7]_i_17_n_0\,
      O => \I2C_rdata[7]_i_13_n_0\
    );
\I2C_rdata[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I2C_cstate(7),
      I1 => I2C_cstate(6),
      O => \I2C_rdata[7]_i_14_n_0\
    );
\I2C_rdata[7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \I2C_daddr[7]_i_17_n_0\,
      I1 => I2C_cstate(13),
      I2 => I2C_cstate(12),
      I3 => I2C_cstate(11),
      I4 => I2C_cstate(10),
      I5 => I2C_cstate(8),
      O => \I2C_rdata[7]_i_15_n_0\
    );
\I2C_rdata[7]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I2C_cstate(11),
      I1 => I2C_cstate(8),
      O => \I2C_rdata[7]_i_19_n_0\
    );
\I2C_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFEFEFEFFEF"
    )
        port map (
      I0 => \I2C_rdata[7]_i_5_n_0\,
      I1 => \I2C_rdata[7]_i_8_n_0\,
      I2 => \I2C_rdata[7]_i_9_n_0\,
      I3 => \I2C_rdata[7]_i_10_n_0\,
      I4 => I2C_cstate(7),
      I5 => I2C_cstate(6),
      O => I2C_rdata_0
    );
\I2C_rdata[7]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[19]\(7),
      I1 => \I2C_regblock_reg[18]\(7),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[17]\(7),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[16]\(7),
      O => \I2C_rdata[7]_i_22_n_0\
    );
\I2C_rdata[7]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[23]\(7),
      I1 => \I2C_regblock_reg[22]\(7),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[21]\(7),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[20]\(7),
      O => \I2C_rdata[7]_i_23_n_0\
    );
\I2C_rdata[7]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(31),
      I1 => \^an\(23),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \^an\(15),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \^an\(7),
      O => \I2C_rdata[7]_i_24_n_0\
    );
\I2C_rdata[7]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(63),
      I1 => \^an\(55),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \^an\(47),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \^an\(39),
      O => \I2C_rdata[7]_i_25_n_0\
    );
\I2C_rdata[7]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[3]\(7),
      I1 => \I2C_regblock_reg[2]\(7),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[1]\(7),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[0]\(7),
      O => \I2C_rdata[7]_i_26_n_0\
    );
\I2C_rdata[7]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[7]\(7),
      I1 => \I2C_regblock_reg[6]\(7),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[5]\(7),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[4]\(7),
      O => \I2C_rdata[7]_i_27_n_0\
    );
\I2C_rdata[7]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[11]\(7),
      I1 => \I2C_regblock_reg[10]\(7),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[9]\(7),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[8]\(7),
      O => \I2C_rdata[7]_i_28_n_0\
    );
\I2C_rdata[7]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[15]\(7),
      I1 => \I2C_regblock_reg[14]\(7),
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_regblock_reg[13]\(7),
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_regblock_reg[12]\(7),
      O => \I2C_rdata[7]_i_29_n_0\
    );
\I2C_rdata[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4D484848"
    )
        port map (
      I0 => I2C_cstate(3),
      I1 => \I2C_rdata[7]_i_11_n_0\,
      I2 => I2C_cstate(5),
      I3 => I2C_cstate(9),
      I4 => I2C_rdata(6),
      O => \I2C_rdata[7]_i_3_n_0\
    );
\I2C_rdata[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF9999"
    )
        port map (
      I0 => I2C_cstate(6),
      I1 => I2C_cstate(7),
      I2 => \I2C_rdata[7]_i_12_n_0\,
      I3 => \I2C_rdata[7]_i_13_n_0\,
      I4 => \I2C_rdata[7]_i_9_n_0\,
      O => \I2C_rdata[7]_i_4_n_0\
    );
\I2C_rdata[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I2C_cstate(2),
      I1 => I2C_cstate(3),
      I2 => I2C_cstate(0),
      I3 => I2C_cstate(1),
      O => \I2C_rdata[7]_i_5_n_0\
    );
\I2C_rdata[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \I2C_rdata[7]_i_14_n_0\,
      I1 => I2C_cstate(10),
      I2 => I2C_cstate(8),
      I3 => \I2C_bitcnt[3]_i_6_n_0\,
      I4 => I2C_cstate(4),
      I5 => I2C_cstate(2),
      O => \I2C_rdata[7]_i_6_n_0\
    );
\I2C_rdata[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => I2C_cstate(13),
      I1 => I2C_cstate(11),
      I2 => I2C_cstate(12),
      O => \I2C_rdata[7]_i_7_n_0\
    );
\I2C_rdata[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I2C_cstate(5),
      I1 => I2C_cstate(4),
      O => \I2C_rdata[7]_i_8_n_0\
    );
\I2C_rdata[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => I2C_cstate(8),
      I1 => I2C_cstate(10),
      I2 => I2C_cstate(9),
      I3 => I2C_cstate(11),
      I4 => I2C_cstate(13),
      I5 => I2C_cstate(12),
      O => \I2C_rdata[7]_i_9_n_0\
    );
\I2C_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_rdata_0,
      D => \I2C_rdata[0]_i_1_n_0\,
      Q => I2C_rdata(0),
      R => \I2C_rdata[7]_i_1_n_0\
    );
\I2C_rdata_reg[0]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \I2C_rdata_reg[0]_i_6_n_0\,
      I1 => \I2C_rdata_reg[0]_i_7_n_0\,
      O => \I2C_rdata_reg[0]_i_3_n_0\,
      S => \I2C_addr_reg_n_0_[3]\
    );
\I2C_rdata_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[0]_i_8_n_0\,
      I1 => \I2C_rdata[0]_i_9_n_0\,
      O => \I2C_rdata_reg[0]_i_4_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[0]_i_10_n_0\,
      I1 => \I2C_rdata[0]_i_11_n_0\,
      O => \I2C_rdata_reg[0]_i_5_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[0]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[0]_i_12_n_0\,
      I1 => \I2C_rdata[0]_i_13_n_0\,
      O => \I2C_rdata_reg[0]_i_6_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[0]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[0]_i_14_n_0\,
      I1 => \I2C_rdata[0]_i_15_n_0\,
      O => \I2C_rdata_reg[0]_i_7_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_rdata_0,
      D => \I2C_rdata[1]_i_1_n_0\,
      Q => I2C_rdata(1),
      R => \I2C_rdata[7]_i_1_n_0\
    );
\I2C_rdata_reg[1]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \I2C_rdata_reg[1]_i_6_n_0\,
      I1 => \I2C_rdata_reg[1]_i_7_n_0\,
      O => \I2C_rdata_reg[1]_i_3_n_0\,
      S => \I2C_addr_reg_n_0_[3]\
    );
\I2C_rdata_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[1]_i_8_n_0\,
      I1 => \I2C_rdata[1]_i_9_n_0\,
      O => \I2C_rdata_reg[1]_i_4_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[1]_i_10_n_0\,
      I1 => \I2C_rdata[1]_i_11_n_0\,
      O => \I2C_rdata_reg[1]_i_5_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[1]_i_12_n_0\,
      I1 => \I2C_rdata[1]_i_13_n_0\,
      O => \I2C_rdata_reg[1]_i_6_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[1]_i_14_n_0\,
      I1 => \I2C_rdata[1]_i_15_n_0\,
      O => \I2C_rdata_reg[1]_i_7_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_rdata_0,
      D => \I2C_rdata[2]_i_1_n_0\,
      Q => I2C_rdata(2),
      R => \I2C_rdata[7]_i_1_n_0\
    );
\I2C_rdata_reg[2]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \I2C_rdata_reg[2]_i_6_n_0\,
      I1 => \I2C_rdata_reg[2]_i_7_n_0\,
      O => \I2C_rdata_reg[2]_i_3_n_0\,
      S => \I2C_addr_reg_n_0_[3]\
    );
\I2C_rdata_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[2]_i_8_n_0\,
      I1 => \I2C_rdata[2]_i_9_n_0\,
      O => \I2C_rdata_reg[2]_i_4_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[2]_i_10_n_0\,
      I1 => \I2C_rdata[2]_i_11_n_0\,
      O => \I2C_rdata_reg[2]_i_5_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[2]_i_12_n_0\,
      I1 => \I2C_rdata[2]_i_13_n_0\,
      O => \I2C_rdata_reg[2]_i_6_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[2]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[2]_i_14_n_0\,
      I1 => \I2C_rdata[2]_i_15_n_0\,
      O => \I2C_rdata_reg[2]_i_7_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_rdata_0,
      D => \I2C_rdata[3]_i_1_n_0\,
      Q => I2C_rdata(3),
      R => \I2C_rdata[7]_i_1_n_0\
    );
\I2C_rdata_reg[3]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \I2C_rdata_reg[3]_i_6_n_0\,
      I1 => \I2C_rdata_reg[3]_i_7_n_0\,
      O => \I2C_rdata_reg[3]_i_3_n_0\,
      S => \I2C_addr_reg_n_0_[3]\
    );
\I2C_rdata_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[3]_i_8_n_0\,
      I1 => \I2C_rdata[3]_i_9_n_0\,
      O => \I2C_rdata_reg[3]_i_4_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[3]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[3]_i_10_n_0\,
      I1 => \I2C_rdata[3]_i_11_n_0\,
      O => \I2C_rdata_reg[3]_i_5_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[3]_i_12_n_0\,
      I1 => \I2C_rdata[3]_i_13_n_0\,
      O => \I2C_rdata_reg[3]_i_6_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[3]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[3]_i_14_n_0\,
      I1 => \I2C_rdata[3]_i_15_n_0\,
      O => \I2C_rdata_reg[3]_i_7_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_rdata_0,
      D => \I2C_rdata[4]_i_1_n_0\,
      Q => I2C_rdata(4),
      R => \I2C_rdata[7]_i_1_n_0\
    );
\I2C_rdata_reg[4]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \I2C_rdata_reg[4]_i_6_n_0\,
      I1 => \I2C_rdata_reg[4]_i_7_n_0\,
      O => \I2C_rdata_reg[4]_i_3_n_0\,
      S => \I2C_addr_reg_n_0_[3]\
    );
\I2C_rdata_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[4]_i_8_n_0\,
      I1 => \I2C_rdata[4]_i_9_n_0\,
      O => \I2C_rdata_reg[4]_i_4_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[4]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[4]_i_10_n_0\,
      I1 => \I2C_rdata[4]_i_11_n_0\,
      O => \I2C_rdata_reg[4]_i_5_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[4]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[4]_i_12_n_0\,
      I1 => \I2C_rdata[4]_i_13_n_0\,
      O => \I2C_rdata_reg[4]_i_6_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[4]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[4]_i_14_n_0\,
      I1 => \I2C_rdata[4]_i_15_n_0\,
      O => \I2C_rdata_reg[4]_i_7_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_rdata_0,
      D => \I2C_rdata[5]_i_1_n_0\,
      Q => I2C_rdata(5),
      R => \I2C_rdata[7]_i_1_n_0\
    );
\I2C_rdata_reg[5]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \I2C_rdata_reg[5]_i_6_n_0\,
      I1 => \I2C_rdata_reg[5]_i_7_n_0\,
      O => \I2C_rdata_reg[5]_i_3_n_0\,
      S => \I2C_addr_reg_n_0_[3]\
    );
\I2C_rdata_reg[5]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[5]_i_8_n_0\,
      I1 => \I2C_rdata[5]_i_9_n_0\,
      O => \I2C_rdata_reg[5]_i_4_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[5]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[5]_i_10_n_0\,
      I1 => \I2C_rdata[5]_i_11_n_0\,
      O => \I2C_rdata_reg[5]_i_5_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[5]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[5]_i_12_n_0\,
      I1 => \I2C_rdata[5]_i_13_n_0\,
      O => \I2C_rdata_reg[5]_i_6_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[5]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[5]_i_14_n_0\,
      I1 => \I2C_rdata[5]_i_15_n_0\,
      O => \I2C_rdata_reg[5]_i_7_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_rdata_0,
      D => \I2C_rdata[6]_i_1_n_0\,
      Q => I2C_rdata(6),
      R => \I2C_rdata[7]_i_1_n_0\
    );
\I2C_rdata_reg[6]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \I2C_rdata_reg[6]_i_6_n_0\,
      I1 => \I2C_rdata_reg[6]_i_7_n_0\,
      O => \I2C_rdata_reg[6]_i_3_n_0\,
      S => \I2C_addr_reg_n_0_[3]\
    );
\I2C_rdata_reg[6]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[6]_i_8_n_0\,
      I1 => \I2C_rdata[6]_i_9_n_0\,
      O => \I2C_rdata_reg[6]_i_4_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[6]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[6]_i_10_n_0\,
      I1 => \I2C_rdata[6]_i_11_n_0\,
      O => \I2C_rdata_reg[6]_i_5_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[6]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[6]_i_12_n_0\,
      I1 => \I2C_rdata[6]_i_13_n_0\,
      O => \I2C_rdata_reg[6]_i_6_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[6]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[6]_i_14_n_0\,
      I1 => \I2C_rdata[6]_i_15_n_0\,
      O => \I2C_rdata_reg[6]_i_7_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_rdata_0,
      D => \I2C_rdata[7]_i_3_n_0\,
      Q => I2C_rdata(7),
      R => \I2C_rdata[7]_i_1_n_0\
    );
\I2C_rdata_reg[7]_i_16\: unisim.vcomponents.MUXF8
     port map (
      I0 => \I2C_rdata_reg[7]_i_20_n_0\,
      I1 => \I2C_rdata_reg[7]_i_21_n_0\,
      O => \I2C_rdata_reg[7]_i_16_n_0\,
      S => \I2C_addr_reg_n_0_[3]\
    );
\I2C_rdata_reg[7]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[7]_i_22_n_0\,
      I1 => \I2C_rdata[7]_i_23_n_0\,
      O => \I2C_rdata_reg[7]_i_17_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[7]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[7]_i_24_n_0\,
      I1 => \I2C_rdata[7]_i_25_n_0\,
      O => \I2C_rdata_reg[7]_i_18_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[7]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[7]_i_26_n_0\,
      I1 => \I2C_rdata[7]_i_27_n_0\,
      O => \I2C_rdata_reg[7]_i_20_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
\I2C_rdata_reg[7]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \I2C_rdata[7]_i_28_n_0\,
      I1 => \I2C_rdata[7]_i_29_n_0\,
      O => \I2C_rdata_reg[7]_i_21_n_0\,
      S => \I2C_addr_reg_n_0_[2]\
    );
I2C_reg_update_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010100"
    )
        port map (
      I0 => I2C_reg_update_i_2_n_0,
      I1 => I2C_cstate(9),
      I2 => I2C_cstate(11),
      I3 => I2C_cstate(7),
      I4 => I2C_cstate(10),
      I5 => I2C_reg_update_i_3_n_0,
      O => I2C_reg_update
    );
I2C_reg_update_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I2C_cstate(12),
      I1 => I2C_cstate(13),
      O => I2C_reg_update_i_2_n_0
    );
I2C_reg_update_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => I2C_reg_update_i_4_n_0,
      I1 => I2C_cstate(8),
      I2 => I2C_cstate(0),
      I3 => I2C_cstate(1),
      I4 => I2C_cstate(2),
      I5 => \I2C_addr[7]_i_23_n_0\,
      O => I2C_reg_update_i_3_n_0
    );
I2C_reg_update_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I2C_cstate(6),
      I1 => I2C_cstate(5),
      O => I2C_reg_update_i_4_n_0
    );
I2C_reg_update_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => I2C_reg_update,
      Q => I2C_reg_update_reg_n_0,
      R => '0'
    );
\I2C_regblock[0][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[31][7]_i_3_n_0\,
      I2 => I2C_cstate(10),
      I3 => \I2C_regblock[31][7]_i_4_n_0\,
      I4 => \I2C_regblock[0][7]_i_2_n_0\,
      O => \I2C_regblock[0][7]_i_1_n_0\
    );
\I2C_regblock[0][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[3]\,
      I1 => \I2C_addr_reg_n_0_[1]\,
      I2 => \I2C_addr_reg_n_0_[0]\,
      I3 => \I2C_addr_reg_n_0_[4]\,
      I4 => \I2C_addr_reg_n_0_[2]\,
      O => \I2C_regblock[0][7]_i_2_n_0\
    );
\I2C_regblock[10][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E000000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[10][7]_i_2_n_0\,
      I4 => \I2C_regblock[24][7]_i_3_n_0\,
      I5 => \I2C_addr_reg_n_0_[1]\,
      O => \I2C_regblock[10][7]_i_1_n_0\
    );
\I2C_regblock[10][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[0]\,
      I1 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_regblock[10][7]_i_2_n_0\
    );
\I2C_regblock[11][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E0"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[14][7]_i_2_n_0\,
      I4 => \I2C_addr[3]_i_2_n_0\,
      I5 => \I2C_addr_reg_n_0_[2]\,
      O => \I2C_regblock[11][7]_i_1_n_0\
    );
\I2C_regblock[12][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E000000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[12][7]_i_2_n_0\,
      I4 => \I2C_regblock[26][7]_i_2_n_0\,
      I5 => \I2C_addr_reg_n_0_[2]\,
      O => \I2C_regblock[12][7]_i_1_n_0\
    );
\I2C_regblock[12][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[1]\,
      I1 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_regblock[12][7]_i_2_n_0\
    );
\I2C_regblock[13][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E0"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[14][7]_i_2_n_0\,
      I4 => \I2C_regblock[13][7]_i_2_n_0\,
      I5 => \I2C_addr_reg_n_0_[1]\,
      O => \I2C_regblock[13][7]_i_1_n_0\
    );
\I2C_regblock[13][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[2]\,
      I1 => \I2C_addr_reg_n_0_[0]\,
      O => \I2C_regblock[13][7]_i_2_n_0\
    );
\I2C_regblock[14][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E0"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[14][7]_i_2_n_0\,
      I4 => \I2C_regblock[14][7]_i_3_n_0\,
      I5 => \I2C_addr_reg_n_0_[0]\,
      O => \I2C_regblock[14][7]_i_1_n_0\
    );
\I2C_regblock[14][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[4]\,
      I1 => \I2C_addr_reg_n_0_[3]\,
      O => \I2C_regblock[14][7]_i_2_n_0\
    );
\I2C_regblock[14][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[1]\,
      I1 => \I2C_addr_reg_n_0_[2]\,
      O => \I2C_regblock[14][7]_i_3_n_0\
    );
\I2C_regblock[15][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E0"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[30][7]_i_3_n_0\,
      I4 => \I2C_addr[3]_i_2_n_0\,
      I5 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_regblock[15][7]_i_1_n_0\
    );
\I2C_regblock[16][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E000000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[18][7]_i_2_n_0\,
      I4 => \I2C_regblock[16][7]_i_2_n_0\,
      I5 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_regblock[16][7]_i_1_n_0\
    );
\I2C_regblock[16][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[2]\,
      I1 => \I2C_addr_reg_n_0_[1]\,
      O => \I2C_regblock[16][7]_i_2_n_0\
    );
\I2C_regblock[17][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E000000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[17][7]_i_2_n_0\,
      I4 => \I2C_regblock[19][7]_i_2_n_0\,
      I5 => \I2C_addr_reg_n_0_[0]\,
      O => \I2C_regblock[17][7]_i_1_n_0\
    );
\I2C_regblock[17][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[3]\,
      I1 => \I2C_addr_reg_n_0_[1]\,
      O => \I2C_regblock[17][7]_i_2_n_0\
    );
\I2C_regblock[18][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E000000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[18][7]_i_2_n_0\,
      I4 => \I2C_regblock[19][7]_i_2_n_0\,
      I5 => \I2C_addr_reg_n_0_[1]\,
      O => \I2C_regblock[18][7]_i_1_n_0\
    );
\I2C_regblock[18][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[3]\,
      I1 => \I2C_addr_reg_n_0_[0]\,
      O => \I2C_regblock[18][7]_i_2_n_0\
    );
\I2C_regblock[19][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E0"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[19][7]_i_2_n_0\,
      I4 => \I2C_addr[3]_i_2_n_0\,
      I5 => \I2C_addr_reg_n_0_[3]\,
      O => \I2C_regblock[19][7]_i_1_n_0\
    );
\I2C_regblock[19][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[2]\,
      I1 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_regblock[19][7]_i_2_n_0\
    );
\I2C_regblock[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E000000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[4][7]_i_2_n_0\,
      I4 => \I2C_regblock[16][7]_i_2_n_0\,
      I5 => \I2C_addr_reg_n_0_[0]\,
      O => \I2C_regblock[1][7]_i_1_n_0\
    );
\I2C_regblock[20][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[31][7]_i_3_n_0\,
      I2 => I2C_cstate(10),
      I3 => \I2C_regblock[31][7]_i_4_n_0\,
      I4 => \I2C_regblock[20][7]_i_2_n_0\,
      O => \I2C_regblock[20][7]_i_1_n_0\
    );
\I2C_regblock[20][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[2]\,
      I1 => \I2C_addr_reg_n_0_[0]\,
      I2 => \I2C_addr_reg_n_0_[4]\,
      I3 => \I2C_addr_reg_n_0_[3]\,
      I4 => \I2C_addr_reg_n_0_[1]\,
      O => \I2C_regblock[20][7]_i_2_n_0\
    );
\I2C_regblock[21][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[31][7]_i_3_n_0\,
      I2 => I2C_cstate(10),
      I3 => \I2C_regblock[31][7]_i_4_n_0\,
      I4 => \I2C_regblock[21][7]_i_2_n_0\,
      O => \I2C_regblock[21][7]_i_1_n_0\
    );
\I2C_regblock[21][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[3]\,
      I1 => \I2C_addr_reg_n_0_[2]\,
      I2 => \I2C_addr_reg_n_0_[0]\,
      I3 => \I2C_addr_reg_n_0_[1]\,
      I4 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_regblock[21][7]_i_2_n_0\
    );
\I2C_regblock[22][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[31][7]_i_3_n_0\,
      I2 => I2C_cstate(10),
      I3 => \I2C_regblock[31][7]_i_4_n_0\,
      I4 => \I2C_regblock[22][7]_i_2_n_0\,
      O => \I2C_regblock[22][7]_i_1_n_0\
    );
\I2C_regblock[22][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[3]\,
      I1 => \I2C_addr_reg_n_0_[1]\,
      I2 => \I2C_addr_reg_n_0_[2]\,
      I3 => \I2C_addr_reg_n_0_[0]\,
      I4 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_regblock[22][7]_i_2_n_0\
    );
\I2C_regblock[23][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000EA00"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[31][7]_i_3_n_0\,
      I2 => I2C_cstate(10),
      I3 => \I2C_regblock[31][7]_i_4_n_0\,
      I4 => \I2C_regblock[31][7]_i_5_n_0\,
      I5 => \I2C_addr_reg_n_0_[3]\,
      O => \I2C_regblock[23][7]_i_1_n_0\
    );
\I2C_regblock[24][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E000000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[24][7]_i_2_n_0\,
      I4 => \I2C_regblock[24][7]_i_3_n_0\,
      I5 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_regblock[24][7]_i_1_n_0\
    );
\I2C_regblock[24][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[1]\,
      I1 => \I2C_addr_reg_n_0_[0]\,
      O => \I2C_regblock[24][7]_i_2_n_0\
    );
\I2C_regblock[24][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[2]\,
      I1 => \I2C_addr_reg_n_0_[3]\,
      O => \I2C_regblock[24][7]_i_3_n_0\
    );
\I2C_regblock[25][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[31][7]_i_3_n_0\,
      I2 => I2C_cstate(10),
      I3 => \I2C_regblock[31][7]_i_4_n_0\,
      I4 => \I2C_regblock[25][7]_i_2_n_0\,
      O => \I2C_regblock[25][7]_i_1_n_0\
    );
\I2C_regblock[25][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[2]\,
      I1 => \I2C_addr_reg_n_0_[4]\,
      I2 => \I2C_addr_reg_n_0_[0]\,
      I3 => \I2C_addr_reg_n_0_[1]\,
      I4 => \I2C_addr_reg_n_0_[3]\,
      O => \I2C_regblock[25][7]_i_2_n_0\
    );
\I2C_regblock[26][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E0"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[26][7]_i_2_n_0\,
      I4 => \I2C_regblock[30][7]_i_4_n_0\,
      I5 => \I2C_addr_reg_n_0_[2]\,
      O => \I2C_regblock[26][7]_i_1_n_0\
    );
\I2C_regblock[26][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[0]\,
      I1 => \I2C_addr_reg_n_0_[3]\,
      O => \I2C_regblock[26][7]_i_2_n_0\
    );
\I2C_regblock[27][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[31][7]_i_3_n_0\,
      I2 => I2C_cstate(10),
      I3 => \I2C_regblock[31][7]_i_4_n_0\,
      I4 => \I2C_regblock[27][7]_i_2_n_0\,
      O => \I2C_regblock[27][7]_i_1_n_0\
    );
\I2C_regblock[27][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[2]\,
      I1 => \I2C_addr_reg_n_0_[1]\,
      I2 => \I2C_addr_reg_n_0_[0]\,
      I3 => \I2C_addr_reg_n_0_[3]\,
      I4 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_regblock[27][7]_i_2_n_0\
    );
\I2C_regblock[28][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[31][7]_i_3_n_0\,
      I2 => I2C_cstate(10),
      I3 => \I2C_regblock[31][7]_i_4_n_0\,
      I4 => \I2C_regblock[28][7]_i_2_n_0\,
      O => \I2C_regblock[28][7]_i_1_n_0\
    );
\I2C_regblock[28][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[1]\,
      I1 => \I2C_addr_reg_n_0_[2]\,
      I2 => \I2C_addr_reg_n_0_[4]\,
      I3 => \I2C_addr_reg_n_0_[0]\,
      I4 => \I2C_addr_reg_n_0_[3]\,
      O => \I2C_regblock[28][7]_i_2_n_0\
    );
\I2C_regblock[29][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E0"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[30][7]_i_3_n_0\,
      I4 => \I2C_regblock[29][7]_i_2_n_0\,
      I5 => \I2C_addr_reg_n_0_[1]\,
      O => \I2C_regblock[29][7]_i_1_n_0\
    );
\I2C_regblock[29][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[4]\,
      I1 => \I2C_addr_reg_n_0_[0]\,
      O => \I2C_regblock[29][7]_i_2_n_0\
    );
\I2C_regblock[2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[31][7]_i_3_n_0\,
      I2 => I2C_cstate(10),
      I3 => \I2C_regblock[31][7]_i_4_n_0\,
      I4 => \I2C_regblock[2][7]_i_2_n_0\,
      O => \I2C_regblock[2][7]_i_1_n_0\
    );
\I2C_regblock[2][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[1]\,
      I1 => \I2C_addr_reg_n_0_[2]\,
      I2 => \I2C_addr_reg_n_0_[0]\,
      I3 => \I2C_addr_reg_n_0_[3]\,
      I4 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_regblock[2][7]_i_2_n_0\
    );
\I2C_regblock[30][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E0"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[30][7]_i_3_n_0\,
      I4 => \I2C_regblock[30][7]_i_4_n_0\,
      I5 => \I2C_addr_reg_n_0_[0]\,
      O => \I2C_regblock[30][7]_i_1_n_0\
    );
\I2C_regblock[30][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => I2C_cstate(10),
      I1 => I2C_cstate(3),
      I2 => I2C_cstate(2),
      I3 => \I2C_rdata[7]_i_8_n_0\,
      I4 => \I2C_regblock[31][7]_i_8_n_0\,
      I5 => \I2C_regblock[31][7]_i_7_n_0\,
      O => \I2C_regblock[30][7]_i_2_n_0\
    );
\I2C_regblock[30][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[3]\,
      I1 => \I2C_addr_reg_n_0_[2]\,
      O => \I2C_regblock[30][7]_i_3_n_0\
    );
\I2C_regblock[30][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[1]\,
      I1 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_regblock[30][7]_i_4_n_0\
    );
\I2C_regblock[31][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EA0000000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[31][7]_i_3_n_0\,
      I2 => I2C_cstate(10),
      I3 => \I2C_regblock[31][7]_i_4_n_0\,
      I4 => \I2C_regblock[31][7]_i_5_n_0\,
      I5 => \I2C_addr_reg_n_0_[3]\,
      O => \I2C_regblock[31][7]_i_1_n_0\
    );
\I2C_regblock[31][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => I2C_cstate(8),
      I1 => I2C_cstate(6),
      I2 => I2C_cstate(10),
      I3 => I2C_cstate(9),
      I4 => \I2C_rdata[7]_i_7_n_0\,
      I5 => \I2C_regblock[31][7]_i_6_n_0\,
      O => \Aksv14_write1__12\
    );
\I2C_regblock[31][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \I2C_regblock[31][7]_i_7_n_0\,
      I1 => \I2C_regblock[31][7]_i_8_n_0\,
      I2 => I2C_cstate(4),
      I3 => I2C_cstate(5),
      I4 => I2C_cstate(2),
      I5 => I2C_cstate(3),
      O => \I2C_regblock[31][7]_i_3_n_0\
    );
\I2C_regblock[31][7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[7]\,
      I1 => \I2C_addr_reg_n_0_[6]\,
      I2 => I2C_reg_update_reg_n_0,
      I3 => \I2C_addr_reg_n_0_[5]\,
      O => \I2C_regblock[31][7]_i_4_n_0\
    );
\I2C_regblock[31][7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[2]\,
      I1 => \I2C_addr_reg_n_0_[4]\,
      I2 => \I2C_addr_reg_n_0_[0]\,
      I3 => \I2C_addr_reg_n_0_[1]\,
      O => \I2C_regblock[31][7]_i_5_n_0\
    );
\I2C_regblock[31][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFFFFFF"
    )
        port map (
      I0 => I2C_cstate(0),
      I1 => I2C_cstate(7),
      I2 => I2C_cstate(1),
      I3 => I2C_cstate(2),
      I4 => I2C_cstate(5),
      I5 => \I2C_addr[7]_i_23_n_0\,
      O => \I2C_regblock[31][7]_i_6_n_0\
    );
\I2C_regblock[31][7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => I2C_cstate(11),
      I1 => \I2C_addr_reg_n_0_[3]\,
      I2 => I2C_reg_update_i_2_n_0,
      I3 => I2C_cstate(7),
      I4 => I2C_cstate(6),
      I5 => \I2C_addr[7]_i_13_n_0\,
      O => \I2C_regblock[31][7]_i_7_n_0\
    );
\I2C_regblock[31][7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFEEE"
    )
        port map (
      I0 => I2C_cstate(0),
      I1 => I2C_cstate(1),
      I2 => \I2C_addr_reg_n_0_[2]\,
      I3 => \I2C_addr_reg_n_0_[1]\,
      I4 => \I2C_addr_reg_n_0_[0]\,
      I5 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_regblock[31][7]_i_8_n_0\
    );
\I2C_regblock[3][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[31][7]_i_3_n_0\,
      I2 => I2C_cstate(10),
      I3 => \I2C_regblock[31][7]_i_4_n_0\,
      I4 => \I2C_regblock[3][7]_i_2_n_0\,
      O => \I2C_regblock[3][7]_i_1_n_0\
    );
\I2C_regblock[3][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[0]\,
      I1 => \I2C_addr_reg_n_0_[2]\,
      I2 => \I2C_addr_reg_n_0_[1]\,
      I3 => \I2C_addr_reg_n_0_[3]\,
      I4 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_regblock[3][7]_i_2_n_0\
    );
\I2C_regblock[4][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E000000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[4][7]_i_2_n_0\,
      I4 => \I2C_regblock[4][7]_i_3_n_0\,
      I5 => \I2C_addr_reg_n_0_[2]\,
      O => \I2C_regblock[4][7]_i_1_n_0\
    );
\I2C_regblock[4][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[3]\,
      I1 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_regblock[4][7]_i_2_n_0\
    );
\I2C_regblock[4][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[0]\,
      I1 => \I2C_addr_reg_n_0_[1]\,
      O => \I2C_regblock[4][7]_i_3_n_0\
    );
\I2C_regblock[5][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[31][7]_i_3_n_0\,
      I2 => I2C_cstate(10),
      I3 => \I2C_regblock[31][7]_i_4_n_0\,
      I4 => \I2C_regblock[5][7]_i_2_n_0\,
      O => \I2C_regblock[5][7]_i_1_n_0\
    );
\I2C_regblock[5][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[0]\,
      I1 => \I2C_addr_reg_n_0_[1]\,
      I2 => \I2C_addr_reg_n_0_[2]\,
      I3 => \I2C_addr_reg_n_0_[3]\,
      I4 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_regblock[5][7]_i_2_n_0\
    );
\I2C_regblock[6][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[31][7]_i_3_n_0\,
      I2 => I2C_cstate(10),
      I3 => \I2C_regblock[31][7]_i_4_n_0\,
      I4 => \I2C_regblock[6][7]_i_2_n_0\,
      O => \I2C_regblock[6][7]_i_1_n_0\
    );
\I2C_regblock[6][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[1]\,
      I1 => \I2C_addr_reg_n_0_[0]\,
      I2 => \I2C_addr_reg_n_0_[2]\,
      I3 => \I2C_addr_reg_n_0_[3]\,
      I4 => \I2C_addr_reg_n_0_[4]\,
      O => \I2C_regblock[6][7]_i_2_n_0\
    );
\I2C_regblock[7][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[31][7]_i_3_n_0\,
      I2 => I2C_cstate(10),
      I3 => \I2C_regblock[31][7]_i_4_n_0\,
      I4 => \I2C_regblock[7][7]_i_2_n_0\,
      O => \I2C_regblock[7][7]_i_1_n_0\
    );
\I2C_regblock[7][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \I2C_addr_reg_n_0_[3]\,
      I1 => \I2C_addr_reg_n_0_[1]\,
      I2 => \I2C_addr_reg_n_0_[0]\,
      I3 => \I2C_addr_reg_n_0_[4]\,
      I4 => \I2C_addr_reg_n_0_[2]\,
      O => \I2C_regblock[7][7]_i_2_n_0\
    );
\I2C_regblock[8][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E000000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[10][7]_i_2_n_0\,
      I4 => \I2C_regblock[16][7]_i_2_n_0\,
      I5 => \I2C_addr_reg_n_0_[3]\,
      O => \I2C_regblock[8][7]_i_1_n_0\
    );
\I2C_regblock[9][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E000000000"
    )
        port map (
      I0 => \Aksv14_write1__12\,
      I1 => \I2C_regblock[30][7]_i_2_n_0\,
      I2 => \I2C_regblock[31][7]_i_4_n_0\,
      I3 => \I2C_regblock[12][7]_i_2_n_0\,
      I4 => \I2C_regblock[24][7]_i_3_n_0\,
      I5 => \I2C_addr_reg_n_0_[0]\,
      O => \I2C_regblock[9][7]_i_1_n_0\
    );
\I2C_regblock_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[0][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[0]\(0),
      R => '0'
    );
\I2C_regblock_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[0][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[0]\(1),
      R => '0'
    );
\I2C_regblock_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[0][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[0]\(2),
      R => '0'
    );
\I2C_regblock_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[0][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[0]\(3),
      R => '0'
    );
\I2C_regblock_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[0][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[0]\(4),
      R => '0'
    );
\I2C_regblock_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[0][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[0]\(5),
      R => '0'
    );
\I2C_regblock_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[0][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[0]\(6),
      R => '0'
    );
\I2C_regblock_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[0][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[0]\(7),
      R => '0'
    );
\I2C_regblock_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[10][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[10]\(0),
      R => '0'
    );
\I2C_regblock_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[10][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[10]\(1),
      R => '0'
    );
\I2C_regblock_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[10][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[10]\(2),
      R => '0'
    );
\I2C_regblock_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[10][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[10]\(3),
      R => '0'
    );
\I2C_regblock_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[10][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[10]\(4),
      R => '0'
    );
\I2C_regblock_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[10][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[10]\(5),
      R => '0'
    );
\I2C_regblock_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[10][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[10]\(6),
      R => '0'
    );
\I2C_regblock_reg[10][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[10][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[10]\(7),
      R => '0'
    );
\I2C_regblock_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[11][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[11]\(0),
      R => '0'
    );
\I2C_regblock_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[11][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[11]\(1),
      R => '0'
    );
\I2C_regblock_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[11][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[11]\(2),
      R => '0'
    );
\I2C_regblock_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[11][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[11]\(3),
      R => '0'
    );
\I2C_regblock_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[11][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[11]\(4),
      R => '0'
    );
\I2C_regblock_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[11][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[11]\(5),
      R => '0'
    );
\I2C_regblock_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[11][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[11]\(6),
      R => '0'
    );
\I2C_regblock_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[11][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[11]\(7),
      R => '0'
    );
\I2C_regblock_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[12][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[12]\(0),
      R => '0'
    );
\I2C_regblock_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[12][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[12]\(1),
      R => '0'
    );
\I2C_regblock_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[12][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[12]\(2),
      R => '0'
    );
\I2C_regblock_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[12][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[12]\(3),
      R => '0'
    );
\I2C_regblock_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[12][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[12]\(4),
      R => '0'
    );
\I2C_regblock_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[12][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[12]\(5),
      R => '0'
    );
\I2C_regblock_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[12][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[12]\(6),
      R => '0'
    );
\I2C_regblock_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[12][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[12]\(7),
      R => '0'
    );
\I2C_regblock_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[13][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[13]\(0),
      R => '0'
    );
\I2C_regblock_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[13][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[13]\(1),
      R => '0'
    );
\I2C_regblock_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[13][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[13]\(2),
      R => '0'
    );
\I2C_regblock_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[13][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[13]\(3),
      R => '0'
    );
\I2C_regblock_reg[13][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[13][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[13]\(4),
      R => '0'
    );
\I2C_regblock_reg[13][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[13][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[13]\(5),
      R => '0'
    );
\I2C_regblock_reg[13][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[13][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[13]\(6),
      R => '0'
    );
\I2C_regblock_reg[13][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[13][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[13]\(7),
      R => '0'
    );
\I2C_regblock_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[14][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[14]\(0),
      R => '0'
    );
\I2C_regblock_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[14][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[14]\(1),
      R => '0'
    );
\I2C_regblock_reg[14][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[14][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[14]\(2),
      R => '0'
    );
\I2C_regblock_reg[14][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[14][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[14]\(3),
      R => '0'
    );
\I2C_regblock_reg[14][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[14][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[14]\(4),
      R => '0'
    );
\I2C_regblock_reg[14][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[14][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[14]\(5),
      R => '0'
    );
\I2C_regblock_reg[14][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[14][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[14]\(6),
      R => '0'
    );
\I2C_regblock_reg[14][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[14][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[14]\(7),
      R => '0'
    );
\I2C_regblock_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[15][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[15]\(0),
      R => '0'
    );
\I2C_regblock_reg[15][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[15][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[15]\(1),
      R => '0'
    );
\I2C_regblock_reg[15][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[15][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[15]\(2),
      R => '0'
    );
\I2C_regblock_reg[15][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[15][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[15]\(3),
      R => '0'
    );
\I2C_regblock_reg[15][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[15][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[15]\(4),
      R => '0'
    );
\I2C_regblock_reg[15][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[15][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[15]\(5),
      R => '0'
    );
\I2C_regblock_reg[15][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[15][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[15]\(6),
      R => '0'
    );
\I2C_regblock_reg[15][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[15][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[15]\(7),
      R => '0'
    );
\I2C_regblock_reg[16][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[16][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[16]\(0),
      R => '0'
    );
\I2C_regblock_reg[16][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[16][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[16]\(1),
      R => '0'
    );
\I2C_regblock_reg[16][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[16][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[16]\(2),
      R => '0'
    );
\I2C_regblock_reg[16][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[16][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[16]\(3),
      R => '0'
    );
\I2C_regblock_reg[16][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[16][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[16]\(4),
      R => '0'
    );
\I2C_regblock_reg[16][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[16][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[16]\(5),
      R => '0'
    );
\I2C_regblock_reg[16][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[16][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[16]\(6),
      R => '0'
    );
\I2C_regblock_reg[16][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[16][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[16]\(7),
      R => '0'
    );
\I2C_regblock_reg[17][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[17][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[17]\(0),
      R => '0'
    );
\I2C_regblock_reg[17][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[17][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[17]\(1),
      R => '0'
    );
\I2C_regblock_reg[17][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[17][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[17]\(2),
      R => '0'
    );
\I2C_regblock_reg[17][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[17][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[17]\(3),
      R => '0'
    );
\I2C_regblock_reg[17][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[17][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[17]\(4),
      R => '0'
    );
\I2C_regblock_reg[17][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[17][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[17]\(5),
      R => '0'
    );
\I2C_regblock_reg[17][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[17][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[17]\(6),
      R => '0'
    );
\I2C_regblock_reg[17][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[17][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[17]\(7),
      R => '0'
    );
\I2C_regblock_reg[18][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[18][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[18]\(0),
      R => '0'
    );
\I2C_regblock_reg[18][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[18][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[18]\(1),
      R => '0'
    );
\I2C_regblock_reg[18][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[18][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[18]\(2),
      R => '0'
    );
\I2C_regblock_reg[18][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[18][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[18]\(3),
      R => '0'
    );
\I2C_regblock_reg[18][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[18][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[18]\(4),
      R => '0'
    );
\I2C_regblock_reg[18][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[18][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[18]\(5),
      R => '0'
    );
\I2C_regblock_reg[18][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[18][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[18]\(6),
      R => '0'
    );
\I2C_regblock_reg[18][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[18][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[18]\(7),
      R => '0'
    );
\I2C_regblock_reg[19][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[19][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[19]\(0),
      R => '0'
    );
\I2C_regblock_reg[19][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[19][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[19]\(1),
      R => '0'
    );
\I2C_regblock_reg[19][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[19][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[19]\(2),
      R => '0'
    );
\I2C_regblock_reg[19][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[19][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[19]\(3),
      R => '0'
    );
\I2C_regblock_reg[19][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[19][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[19]\(4),
      R => '0'
    );
\I2C_regblock_reg[19][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[19][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[19]\(5),
      R => '0'
    );
\I2C_regblock_reg[19][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[19][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[19]\(6),
      R => '0'
    );
\I2C_regblock_reg[19][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[19][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[19]\(7),
      R => '0'
    );
\I2C_regblock_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[1][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[1]\(0),
      R => '0'
    );
\I2C_regblock_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[1][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[1]\(1),
      R => '0'
    );
\I2C_regblock_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[1][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[1]\(2),
      R => '0'
    );
\I2C_regblock_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[1][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[1]\(3),
      R => '0'
    );
\I2C_regblock_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[1][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[1]\(4),
      R => '0'
    );
\I2C_regblock_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[1][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[1]\(5),
      R => '0'
    );
\I2C_regblock_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[1][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[1]\(6),
      R => '0'
    );
\I2C_regblock_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[1][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[1]\(7),
      R => '0'
    );
\I2C_regblock_reg[20][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[20][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[20]\(0),
      R => '0'
    );
\I2C_regblock_reg[20][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[20][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[20]\(1),
      R => '0'
    );
\I2C_regblock_reg[20][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[20][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[20]\(2),
      R => '0'
    );
\I2C_regblock_reg[20][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[20][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[20]\(3),
      R => '0'
    );
\I2C_regblock_reg[20][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[20][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[20]\(4),
      R => '0'
    );
\I2C_regblock_reg[20][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[20][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[20]\(5),
      R => '0'
    );
\I2C_regblock_reg[20][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[20][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[20]\(6),
      R => '0'
    );
\I2C_regblock_reg[20][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[20][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[20]\(7),
      R => '0'
    );
\I2C_regblock_reg[21][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[21][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[21]\(0),
      R => '0'
    );
\I2C_regblock_reg[21][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[21][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[21]\(1),
      R => '0'
    );
\I2C_regblock_reg[21][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[21][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[21]\(2),
      R => '0'
    );
\I2C_regblock_reg[21][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[21][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[21]\(3),
      R => '0'
    );
\I2C_regblock_reg[21][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[21][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[21]\(4),
      R => '0'
    );
\I2C_regblock_reg[21][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[21][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[21]\(5),
      R => '0'
    );
\I2C_regblock_reg[21][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[21][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[21]\(6),
      R => '0'
    );
\I2C_regblock_reg[21][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[21][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[21]\(7),
      R => '0'
    );
\I2C_regblock_reg[22][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[22][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[22]\(0),
      R => '0'
    );
\I2C_regblock_reg[22][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[22][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[22]\(1),
      R => '0'
    );
\I2C_regblock_reg[22][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[22][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[22]\(2),
      R => '0'
    );
\I2C_regblock_reg[22][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[22][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[22]\(3),
      R => '0'
    );
\I2C_regblock_reg[22][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[22][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[22]\(4),
      R => '0'
    );
\I2C_regblock_reg[22][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[22][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[22]\(5),
      R => '0'
    );
\I2C_regblock_reg[22][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[22][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[22]\(6),
      R => '0'
    );
\I2C_regblock_reg[22][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[22][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[22]\(7),
      R => '0'
    );
\I2C_regblock_reg[23][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[23][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[23]\(0),
      R => '0'
    );
\I2C_regblock_reg[23][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[23][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[23]\(1),
      R => '0'
    );
\I2C_regblock_reg[23][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[23][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[23]\(2),
      R => '0'
    );
\I2C_regblock_reg[23][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[23][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[23]\(3),
      R => '0'
    );
\I2C_regblock_reg[23][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[23][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[23]\(4),
      R => '0'
    );
\I2C_regblock_reg[23][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[23][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[23]\(5),
      R => '0'
    );
\I2C_regblock_reg[23][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[23][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[23]\(6),
      R => '0'
    );
\I2C_regblock_reg[23][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[23][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[23]\(7),
      R => '0'
    );
\I2C_regblock_reg[24][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[24][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \^an\(0),
      R => '0'
    );
\I2C_regblock_reg[24][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[24][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \^an\(1),
      R => '0'
    );
\I2C_regblock_reg[24][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[24][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \^an\(2),
      R => '0'
    );
\I2C_regblock_reg[24][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[24][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \^an\(3),
      R => '0'
    );
\I2C_regblock_reg[24][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[24][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \^an\(4),
      R => '0'
    );
\I2C_regblock_reg[24][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[24][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \^an\(5),
      R => '0'
    );
\I2C_regblock_reg[24][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[24][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \^an\(6),
      R => '0'
    );
\I2C_regblock_reg[24][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[24][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \^an\(7),
      R => '0'
    );
\I2C_regblock_reg[25][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[25][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \^an\(8),
      R => '0'
    );
\I2C_regblock_reg[25][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[25][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \^an\(9),
      R => '0'
    );
\I2C_regblock_reg[25][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[25][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \^an\(10),
      R => '0'
    );
\I2C_regblock_reg[25][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[25][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \^an\(11),
      R => '0'
    );
\I2C_regblock_reg[25][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[25][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \^an\(12),
      R => '0'
    );
\I2C_regblock_reg[25][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[25][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \^an\(13),
      R => '0'
    );
\I2C_regblock_reg[25][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[25][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \^an\(14),
      R => '0'
    );
\I2C_regblock_reg[25][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[25][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \^an\(15),
      R => '0'
    );
\I2C_regblock_reg[26][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[26][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \^an\(16),
      R => '0'
    );
\I2C_regblock_reg[26][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[26][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \^an\(17),
      R => '0'
    );
\I2C_regblock_reg[26][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[26][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \^an\(18),
      R => '0'
    );
\I2C_regblock_reg[26][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[26][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \^an\(19),
      R => '0'
    );
\I2C_regblock_reg[26][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[26][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \^an\(20),
      R => '0'
    );
\I2C_regblock_reg[26][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[26][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \^an\(21),
      R => '0'
    );
\I2C_regblock_reg[26][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[26][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \^an\(22),
      R => '0'
    );
\I2C_regblock_reg[26][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[26][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \^an\(23),
      R => '0'
    );
\I2C_regblock_reg[27][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[27][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \^an\(24),
      R => '0'
    );
\I2C_regblock_reg[27][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[27][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \^an\(25),
      R => '0'
    );
\I2C_regblock_reg[27][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[27][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \^an\(26),
      R => '0'
    );
\I2C_regblock_reg[27][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[27][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \^an\(27),
      R => '0'
    );
\I2C_regblock_reg[27][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[27][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \^an\(28),
      R => '0'
    );
\I2C_regblock_reg[27][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[27][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \^an\(29),
      R => '0'
    );
\I2C_regblock_reg[27][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[27][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \^an\(30),
      R => '0'
    );
\I2C_regblock_reg[27][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[27][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \^an\(31),
      R => '0'
    );
\I2C_regblock_reg[28][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[28][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \^an\(32),
      R => '0'
    );
\I2C_regblock_reg[28][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[28][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \^an\(33),
      R => '0'
    );
\I2C_regblock_reg[28][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[28][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \^an\(34),
      R => '0'
    );
\I2C_regblock_reg[28][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[28][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \^an\(35),
      R => '0'
    );
\I2C_regblock_reg[28][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[28][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \^an\(36),
      R => '0'
    );
\I2C_regblock_reg[28][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[28][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \^an\(37),
      R => '0'
    );
\I2C_regblock_reg[28][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[28][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \^an\(38),
      R => '0'
    );
\I2C_regblock_reg[28][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[28][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \^an\(39),
      R => '0'
    );
\I2C_regblock_reg[29][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[29][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \^an\(40),
      R => '0'
    );
\I2C_regblock_reg[29][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[29][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \^an\(41),
      R => '0'
    );
\I2C_regblock_reg[29][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[29][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \^an\(42),
      R => '0'
    );
\I2C_regblock_reg[29][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[29][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \^an\(43),
      R => '0'
    );
\I2C_regblock_reg[29][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[29][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \^an\(44),
      R => '0'
    );
\I2C_regblock_reg[29][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[29][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \^an\(45),
      R => '0'
    );
\I2C_regblock_reg[29][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[29][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \^an\(46),
      R => '0'
    );
\I2C_regblock_reg[29][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[29][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \^an\(47),
      R => '0'
    );
\I2C_regblock_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[2][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[2]\(0),
      R => '0'
    );
\I2C_regblock_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[2][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[2]\(1),
      R => '0'
    );
\I2C_regblock_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[2][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[2]\(2),
      R => '0'
    );
\I2C_regblock_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[2][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[2]\(3),
      R => '0'
    );
\I2C_regblock_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[2][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[2]\(4),
      R => '0'
    );
\I2C_regblock_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[2][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[2]\(5),
      R => '0'
    );
\I2C_regblock_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[2][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[2]\(6),
      R => '0'
    );
\I2C_regblock_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[2][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[2]\(7),
      R => '0'
    );
\I2C_regblock_reg[30][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[30][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \^an\(48),
      R => '0'
    );
\I2C_regblock_reg[30][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[30][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \^an\(49),
      R => '0'
    );
\I2C_regblock_reg[30][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[30][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \^an\(50),
      R => '0'
    );
\I2C_regblock_reg[30][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[30][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \^an\(51),
      R => '0'
    );
\I2C_regblock_reg[30][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[30][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \^an\(52),
      R => '0'
    );
\I2C_regblock_reg[30][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[30][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \^an\(53),
      R => '0'
    );
\I2C_regblock_reg[30][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[30][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \^an\(54),
      R => '0'
    );
\I2C_regblock_reg[30][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[30][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \^an\(55),
      R => '0'
    );
\I2C_regblock_reg[31][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[31][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \^an\(56),
      R => '0'
    );
\I2C_regblock_reg[31][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[31][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \^an\(57),
      R => '0'
    );
\I2C_regblock_reg[31][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[31][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \^an\(58),
      R => '0'
    );
\I2C_regblock_reg[31][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[31][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \^an\(59),
      R => '0'
    );
\I2C_regblock_reg[31][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[31][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \^an\(60),
      R => '0'
    );
\I2C_regblock_reg[31][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[31][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \^an\(61),
      R => '0'
    );
\I2C_regblock_reg[31][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[31][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \^an\(62),
      R => '0'
    );
\I2C_regblock_reg[31][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[31][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \^an\(63),
      R => '0'
    );
\I2C_regblock_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[3][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[3]\(0),
      R => '0'
    );
\I2C_regblock_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[3][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[3]\(1),
      R => '0'
    );
\I2C_regblock_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[3][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[3]\(2),
      R => '0'
    );
\I2C_regblock_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[3][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[3]\(3),
      R => '0'
    );
\I2C_regblock_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[3][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[3]\(4),
      R => '0'
    );
\I2C_regblock_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[3][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[3]\(5),
      R => '0'
    );
\I2C_regblock_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[3][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[3]\(6),
      R => '0'
    );
\I2C_regblock_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[3][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[3]\(7),
      R => '0'
    );
\I2C_regblock_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[4][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[4]\(0),
      R => '0'
    );
\I2C_regblock_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[4][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[4]\(1),
      R => '0'
    );
\I2C_regblock_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[4][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[4]\(2),
      R => '0'
    );
\I2C_regblock_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[4][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[4]\(3),
      R => '0'
    );
\I2C_regblock_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[4][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[4]\(4),
      R => '0'
    );
\I2C_regblock_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[4][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[4]\(5),
      R => '0'
    );
\I2C_regblock_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[4][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[4]\(6),
      R => '0'
    );
\I2C_regblock_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[4][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[4]\(7),
      R => '0'
    );
\I2C_regblock_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[5][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[5]\(0),
      R => '0'
    );
\I2C_regblock_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[5][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[5]\(1),
      R => '0'
    );
\I2C_regblock_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[5][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[5]\(2),
      R => '0'
    );
\I2C_regblock_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[5][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[5]\(3),
      R => '0'
    );
\I2C_regblock_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[5][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[5]\(4),
      R => '0'
    );
\I2C_regblock_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[5][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[5]\(5),
      R => '0'
    );
\I2C_regblock_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[5][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[5]\(6),
      R => '0'
    );
\I2C_regblock_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[5][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[5]\(7),
      R => '0'
    );
\I2C_regblock_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[6][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[6]\(0),
      R => '0'
    );
\I2C_regblock_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[6][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[6]\(1),
      R => '0'
    );
\I2C_regblock_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[6][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[6]\(2),
      R => '0'
    );
\I2C_regblock_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[6][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[6]\(3),
      R => '0'
    );
\I2C_regblock_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[6][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[6]\(4),
      R => '0'
    );
\I2C_regblock_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[6][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[6]\(5),
      R => '0'
    );
\I2C_regblock_reg[6][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[6][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[6]\(6),
      R => '0'
    );
\I2C_regblock_reg[6][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[6][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[6]\(7),
      R => '0'
    );
\I2C_regblock_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[7][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[7]\(0),
      R => '0'
    );
\I2C_regblock_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[7][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[7]\(1),
      R => '0'
    );
\I2C_regblock_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[7][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[7]\(2),
      R => '0'
    );
\I2C_regblock_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[7][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[7]\(3),
      R => '0'
    );
\I2C_regblock_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[7][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[7]\(4),
      R => '0'
    );
\I2C_regblock_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[7][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[7]\(5),
      R => '0'
    );
\I2C_regblock_reg[7][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[7][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[7]\(6),
      R => '0'
    );
\I2C_regblock_reg[7][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[7][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[7]\(7),
      R => '0'
    );
\I2C_regblock_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[8][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[8]\(0),
      R => '0'
    );
\I2C_regblock_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[8][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[8]\(1),
      R => '0'
    );
\I2C_regblock_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[8][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[8]\(2),
      R => '0'
    );
\I2C_regblock_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[8][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[8]\(3),
      R => '0'
    );
\I2C_regblock_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[8][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[8]\(4),
      R => '0'
    );
\I2C_regblock_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[8][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[8]\(5),
      R => '0'
    );
\I2C_regblock_reg[8][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[8][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[8]\(6),
      R => '0'
    );
\I2C_regblock_reg[8][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[8][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[8]\(7),
      R => '0'
    );
\I2C_regblock_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[9][7]_i_1_n_0\,
      D => I2C_wdata(0),
      Q => \I2C_regblock_reg[9]\(0),
      R => '0'
    );
\I2C_regblock_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[9][7]_i_1_n_0\,
      D => I2C_wdata(1),
      Q => \I2C_regblock_reg[9]\(1),
      R => '0'
    );
\I2C_regblock_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[9][7]_i_1_n_0\,
      D => I2C_wdata(2),
      Q => \I2C_regblock_reg[9]\(2),
      R => '0'
    );
\I2C_regblock_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[9][7]_i_1_n_0\,
      D => I2C_wdata(3),
      Q => \I2C_regblock_reg[9]\(3),
      R => '0'
    );
\I2C_regblock_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[9][7]_i_1_n_0\,
      D => I2C_wdata(4),
      Q => \I2C_regblock_reg[9]\(4),
      R => '0'
    );
\I2C_regblock_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[9][7]_i_1_n_0\,
      D => I2C_wdata(5),
      Q => \I2C_regblock_reg[9]\(5),
      R => '0'
    );
\I2C_regblock_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[9][7]_i_1_n_0\,
      D => I2C_wdata(6),
      Q => \I2C_regblock_reg[9]\(6),
      R => '0'
    );
\I2C_regblock_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \I2C_regblock[9][7]_i_1_n_0\,
      D => I2C_wdata(7),
      Q => \I2C_regblock_reg[9]\(7),
      R => '0'
    );
\I2C_wdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00303088"
    )
        port map (
      I0 => \I2C_addr[0]_i_2_n_0\,
      I1 => I2C_cstate(6),
      I2 => I2C_rdata(0),
      I3 => I2C_cstate(10),
      I4 => I2C_cstate(9),
      O => \I2C_wdata[0]_i_1_n_0\
    );
\I2C_wdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00303088"
    )
        port map (
      I0 => I2C_wdata(0),
      I1 => I2C_cstate(6),
      I2 => I2C_rdata(1),
      I3 => I2C_cstate(10),
      I4 => I2C_cstate(9),
      O => \I2C_wdata[1]_i_1_n_0\
    );
\I2C_wdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00303088"
    )
        port map (
      I0 => I2C_wdata(1),
      I1 => I2C_cstate(6),
      I2 => I2C_rdata(2),
      I3 => I2C_cstate(10),
      I4 => I2C_cstate(9),
      O => \I2C_wdata[2]_i_1_n_0\
    );
\I2C_wdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00303088"
    )
        port map (
      I0 => I2C_wdata(2),
      I1 => I2C_cstate(6),
      I2 => I2C_rdata(3),
      I3 => I2C_cstate(10),
      I4 => I2C_cstate(9),
      O => \I2C_wdata[3]_i_1_n_0\
    );
\I2C_wdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00303088"
    )
        port map (
      I0 => I2C_wdata(3),
      I1 => I2C_cstate(6),
      I2 => I2C_rdata(4),
      I3 => I2C_cstate(10),
      I4 => I2C_cstate(9),
      O => \I2C_wdata[4]_i_1_n_0\
    );
\I2C_wdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00303088"
    )
        port map (
      I0 => I2C_wdata(4),
      I1 => I2C_cstate(6),
      I2 => I2C_rdata(5),
      I3 => I2C_cstate(10),
      I4 => I2C_cstate(9),
      O => \I2C_wdata[5]_i_1_n_0\
    );
\I2C_wdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00303088"
    )
        port map (
      I0 => I2C_wdata(5),
      I1 => I2C_cstate(6),
      I2 => I2C_rdata(6),
      I3 => I2C_cstate(10),
      I4 => I2C_cstate(9),
      O => \I2C_wdata[6]_i_1_n_0\
    );
\I2C_wdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEEEEEB"
    )
        port map (
      I0 => \I2C_wdata[7]_i_4_n_0\,
      I1 => I2C_cstate(6),
      I2 => I2C_cstate(11),
      I3 => I2C_reg_update_i_2_n_0,
      I4 => I2C_cstate(7),
      I5 => \I2C_wdata[7]_i_5_n_0\,
      O => \I2C_wdata[7]_i_1_n_0\
    );
\I2C_wdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0001"
    )
        port map (
      I0 => I2C_cstate(7),
      I1 => I2C_cstate(12),
      I2 => I2C_cstate(13),
      I3 => I2C_cstate(11),
      I4 => I2C_cstate(6),
      I5 => \I2C_wdata[7]_i_4_n_0\,
      O => I2C_wdata_1
    );
\I2C_wdata[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00303088"
    )
        port map (
      I0 => I2C_wdata(6),
      I1 => I2C_cstate(6),
      I2 => I2C_rdata(7),
      I3 => I2C_cstate(10),
      I4 => I2C_cstate(9),
      O => \I2C_wdata[7]_i_3_n_0\
    );
\I2C_wdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFA0004"
    )
        port map (
      I0 => I2C_cstate(12),
      I1 => \I2C_daddr[7]_i_17_n_0\,
      I2 => I2C_cstate(11),
      I3 => I2C_cstate(13),
      I4 => I2C_cstate(7),
      I5 => \I2C_wdata[7]_i_6_n_0\,
      O => \I2C_wdata[7]_i_4_n_0\
    );
\I2C_wdata[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => I2C_cstate(13),
      I1 => I2C_cstate(11),
      I2 => I2C_cstate(12),
      I3 => \I2C_rdata[7]_i_5_n_0\,
      I4 => \I2C_wdata[7]_i_7_n_0\,
      O => \I2C_wdata[7]_i_5_n_0\
    );
\I2C_wdata[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => I2C_cstate(0),
      I1 => I2C_cstate(10),
      I2 => I2C_cstate(1),
      I3 => \I2C_wdata[7]_i_8_n_0\,
      I4 => \I2C_addr[7]_i_13_n_0\,
      I5 => \I2C_rdata[7]_i_8_n_0\,
      O => \I2C_wdata[7]_i_6_n_0\
    );
\I2C_wdata[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I2C_cstate(7),
      I1 => I2C_cstate(8),
      I2 => I2C_cstate(4),
      I3 => I2C_cstate(5),
      O => \I2C_wdata[7]_i_7_n_0\
    );
\I2C_wdata[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEEE"
    )
        port map (
      I0 => I2C_cstate(2),
      I1 => I2C_cstate(3),
      I2 => I2C_cstate(11),
      I3 => I2C_cstate(13),
      I4 => I2C_cstate(12),
      O => \I2C_wdata[7]_i_8_n_0\
    );
\I2C_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_wdata_1,
      D => \I2C_wdata[0]_i_1_n_0\,
      Q => I2C_wdata(0),
      R => \I2C_wdata[7]_i_1_n_0\
    );
\I2C_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_wdata_1,
      D => \I2C_wdata[1]_i_1_n_0\,
      Q => I2C_wdata(1),
      R => \I2C_wdata[7]_i_1_n_0\
    );
\I2C_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_wdata_1,
      D => \I2C_wdata[2]_i_1_n_0\,
      Q => I2C_wdata(2),
      R => \I2C_wdata[7]_i_1_n_0\
    );
\I2C_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_wdata_1,
      D => \I2C_wdata[3]_i_1_n_0\,
      Q => I2C_wdata(3),
      R => \I2C_wdata[7]_i_1_n_0\
    );
\I2C_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_wdata_1,
      D => \I2C_wdata[4]_i_1_n_0\,
      Q => I2C_wdata(4),
      R => \I2C_wdata[7]_i_1_n_0\
    );
\I2C_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_wdata_1,
      D => \I2C_wdata[5]_i_1_n_0\,
      Q => I2C_wdata(5),
      R => \I2C_wdata[7]_i_1_n_0\
    );
\I2C_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_wdata_1,
      D => \I2C_wdata[6]_i_1_n_0\,
      Q => I2C_wdata(6),
      R => \I2C_wdata[7]_i_1_n_0\
    );
\I2C_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => I2C_wdata_1,
      D => \I2C_wdata[7]_i_3_n_0\,
      Q => I2C_wdata(7),
      R => \I2C_wdata[7]_i_1_n_0\
    );
\SCL_cstate[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5503"
    )
        port map (
      I0 => \SCL_cstate[1]_i_2_n_0\,
      I1 => SCL_cstate(1),
      I2 => SCL_cstate(2),
      I3 => SCL_cstate(0),
      O => SCL_nstate(0)
    );
\SCL_cstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => SCL_cstate(3),
      I1 => SCL_cstate(2),
      I2 => \SCL_cstate[1]_i_2_n_0\,
      I3 => SCL_cstate(1),
      O => \SCL_cstate[1]_i_1_n_0\
    );
\SCL_cstate[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFEFEEE"
    )
        port map (
      I0 => \SCL_rfcnt_reg_n_0_[3]\,
      I1 => \SCL_rfcnt_reg_n_0_[4]\,
      I2 => \SCL_rfcnt_reg_n_0_[2]\,
      I3 => \SCL_rfcnt_reg_n_0_[1]\,
      I4 => \SCL_rfcnt_reg_n_0_[0]\,
      I5 => SCL_sync,
      O => \SCL_cstate[1]_i_2_n_0\
    );
\SCL_cstate[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => SCL_cstate(1),
      I1 => \SCL_nstate2__0\,
      I2 => SCL_cstate(2),
      O => SCL_nstate(2)
    );
\SCL_cstate[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SCL_cstate(2),
      I1 => \SCL_nstate2__0\,
      O => SCL_nstate(3)
    );
\SCL_cstate[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEEE00000000"
    )
        port map (
      I0 => \SCL_rfcnt_reg_n_0_[3]\,
      I1 => \SCL_rfcnt_reg_n_0_[4]\,
      I2 => \SCL_rfcnt_reg_n_0_[2]\,
      I3 => \SCL_rfcnt_reg_n_0_[1]\,
      I4 => \SCL_rfcnt_reg_n_0_[0]\,
      I5 => SCL_sync,
      O => \SCL_nstate2__0\
    );
\SCL_cstate_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => SCL_nstate(0),
      Q => SCL_cstate(0),
      S => reset
    );
\SCL_cstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \SCL_cstate[1]_i_1_n_0\,
      Q => SCL_cstate(1),
      R => reset
    );
\SCL_cstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => SCL_nstate(2),
      Q => SCL_cstate(2),
      R => reset
    );
\SCL_cstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => SCL_nstate(3),
      Q => SCL_cstate(3),
      R => reset
    );
\SCL_rfcnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => SCL_cstate(1),
      I1 => SCL_cstate(3),
      I2 => \SCL_rfcnt_reg_n_0_[0]\,
      O => \SCL_rfcnt[0]_i_1_n_0\
    );
\SCL_rfcnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => \SCL_rfcnt_reg_n_0_[1]\,
      I1 => \SCL_rfcnt_reg_n_0_[0]\,
      I2 => SCL_cstate(1),
      I3 => SCL_cstate(3),
      O => \SCL_rfcnt[1]_i_1_n_0\
    );
\SCL_rfcnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000006A"
    )
        port map (
      I0 => \SCL_rfcnt_reg_n_0_[2]\,
      I1 => \SCL_rfcnt_reg_n_0_[1]\,
      I2 => \SCL_rfcnt_reg_n_0_[0]\,
      I3 => SCL_cstate(1),
      I4 => SCL_cstate(3),
      O => \SCL_rfcnt[2]_i_1_n_0\
    );
\SCL_rfcnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000006AAA"
    )
        port map (
      I0 => \SCL_rfcnt_reg_n_0_[3]\,
      I1 => \SCL_rfcnt_reg_n_0_[2]\,
      I2 => \SCL_rfcnt_reg_n_0_[0]\,
      I3 => \SCL_rfcnt_reg_n_0_[1]\,
      I4 => SCL_cstate(1),
      I5 => SCL_cstate(3),
      O => \SCL_rfcnt[3]_i_1_n_0\
    );
\SCL_rfcnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => SCL_sync,
      I1 => SCL_cstate(2),
      I2 => SCL_cstate(0),
      O => \SCL_rfcnt[4]_i_1_n_0\
    );
\SCL_rfcnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => \SCL_rfcnt_reg_n_0_[4]\,
      I1 => \SCL_rfcnt_reg_n_0_[3]\,
      I2 => \SCL_rfcnt_reg_n_0_[1]\,
      I3 => \SCL_rfcnt_reg_n_0_[0]\,
      I4 => \SCL_rfcnt_reg_n_0_[2]\,
      I5 => \SCL_rfcnt[4]_i_3_n_0\,
      O => \SCL_rfcnt[4]_i_2_n_0\
    );
\SCL_rfcnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SCL_cstate(3),
      I1 => SCL_cstate(1),
      O => \SCL_rfcnt[4]_i_3_n_0\
    );
\SCL_rfcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \SCL_rfcnt[0]_i_1_n_0\,
      Q => \SCL_rfcnt_reg_n_0_[0]\,
      R => \SCL_rfcnt[4]_i_1_n_0\
    );
\SCL_rfcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \SCL_rfcnt[1]_i_1_n_0\,
      Q => \SCL_rfcnt_reg_n_0_[1]\,
      R => \SCL_rfcnt[4]_i_1_n_0\
    );
\SCL_rfcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \SCL_rfcnt[2]_i_1_n_0\,
      Q => \SCL_rfcnt_reg_n_0_[2]\,
      R => \SCL_rfcnt[4]_i_1_n_0\
    );
\SCL_rfcnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \SCL_rfcnt[3]_i_1_n_0\,
      Q => \SCL_rfcnt_reg_n_0_[3]\,
      R => \SCL_rfcnt[4]_i_1_n_0\
    );
\SCL_rfcnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \SCL_rfcnt[4]_i_2_n_0\,
      Q => \SCL_rfcnt_reg_n_0_[4]\,
      R => \SCL_rfcnt[4]_i_1_n_0\
    );
SCL_s_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => SCL,
      Q => SCL_s,
      R => '0'
    );
SCL_sync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => SCL_s,
      Q => SCL_sync,
      R => '0'
    );
\SDA_cstate[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5503"
    )
        port map (
      I0 => \SDA_cstate[1]_i_2_n_0\,
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      O => SDA_nstate(0)
    );
\SDA_cstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(2),
      I2 => \SDA_cstate[1]_i_2_n_0\,
      I3 => p_0_in(1),
      O => SDA_nstate(1)
    );
\SDA_cstate[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFEFEEE"
    )
        port map (
      I0 => \SDA_rfcnt_reg_n_0_[3]\,
      I1 => \SDA_rfcnt_reg_n_0_[4]\,
      I2 => \SDA_rfcnt_reg_n_0_[2]\,
      I3 => \SDA_rfcnt_reg_n_0_[1]\,
      I4 => \SDA_rfcnt_reg_n_0_[0]\,
      I5 => SDA_sync,
      O => \SDA_cstate[1]_i_2_n_0\
    );
\SDA_cstate[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \SDA_nstate2__0\,
      I2 => p_0_in(2),
      O => SDA_nstate(2)
    );
\SDA_cstate[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \SDA_nstate2__0\,
      O => SDA_nstate(3)
    );
\SDA_cstate[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEEE00000000"
    )
        port map (
      I0 => \SDA_rfcnt_reg_n_0_[3]\,
      I1 => \SDA_rfcnt_reg_n_0_[4]\,
      I2 => \SDA_rfcnt_reg_n_0_[2]\,
      I3 => \SDA_rfcnt_reg_n_0_[1]\,
      I4 => \SDA_rfcnt_reg_n_0_[0]\,
      I5 => SDA_sync,
      O => \SDA_nstate2__0\
    );
\SDA_cstate_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => SDA_nstate(0),
      Q => p_0_in(0),
      S => reset
    );
\SDA_cstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => SDA_nstate(1),
      Q => p_0_in(1),
      R => reset
    );
\SDA_cstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => SDA_nstate(2),
      Q => p_0_in(2),
      R => reset
    );
\SDA_cstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => SDA_nstate(3),
      Q => p_0_in(3),
      R => reset
    );
\SDA_rfcnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(3),
      I2 => \SDA_rfcnt_reg_n_0_[0]\,
      O => \SDA_rfcnt[0]_i_1_n_0\
    );
\SDA_rfcnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => \SDA_rfcnt_reg_n_0_[1]\,
      I1 => \SDA_rfcnt_reg_n_0_[0]\,
      I2 => p_0_in(1),
      I3 => p_0_in(3),
      O => \SDA_rfcnt[1]_i_1_n_0\
    );
\SDA_rfcnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000006A"
    )
        port map (
      I0 => \SDA_rfcnt_reg_n_0_[2]\,
      I1 => \SDA_rfcnt_reg_n_0_[1]\,
      I2 => \SDA_rfcnt_reg_n_0_[0]\,
      I3 => p_0_in(1),
      I4 => p_0_in(3),
      O => \SDA_rfcnt[2]_i_1_n_0\
    );
\SDA_rfcnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000006AAA"
    )
        port map (
      I0 => \SDA_rfcnt_reg_n_0_[3]\,
      I1 => \SDA_rfcnt_reg_n_0_[2]\,
      I2 => \SDA_rfcnt_reg_n_0_[0]\,
      I3 => \SDA_rfcnt_reg_n_0_[1]\,
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \SDA_rfcnt[3]_i_1_n_0\
    );
\SDA_rfcnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => SDA_sync,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      O => \SDA_rfcnt[4]_i_1_n_0\
    );
\SDA_rfcnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => \SDA_rfcnt_reg_n_0_[4]\,
      I1 => \SDA_rfcnt_reg_n_0_[3]\,
      I2 => \SDA_rfcnt_reg_n_0_[1]\,
      I3 => \SDA_rfcnt_reg_n_0_[0]\,
      I4 => \SDA_rfcnt_reg_n_0_[2]\,
      I5 => \SDA_rfcnt[4]_i_3_n_0\,
      O => \SDA_rfcnt[4]_i_2_n_0\
    );
\SDA_rfcnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(1),
      O => \SDA_rfcnt[4]_i_3_n_0\
    );
\SDA_rfcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \SDA_rfcnt[0]_i_1_n_0\,
      Q => \SDA_rfcnt_reg_n_0_[0]\,
      R => \SDA_rfcnt[4]_i_1_n_0\
    );
\SDA_rfcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \SDA_rfcnt[1]_i_1_n_0\,
      Q => \SDA_rfcnt_reg_n_0_[1]\,
      R => \SDA_rfcnt[4]_i_1_n_0\
    );
\SDA_rfcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \SDA_rfcnt[2]_i_1_n_0\,
      Q => \SDA_rfcnt_reg_n_0_[2]\,
      R => \SDA_rfcnt[4]_i_1_n_0\
    );
\SDA_rfcnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \SDA_rfcnt[3]_i_1_n_0\,
      Q => \SDA_rfcnt_reg_n_0_[3]\,
      R => \SDA_rfcnt[4]_i_1_n_0\
    );
\SDA_rfcnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \SDA_rfcnt[4]_i_2_n_0\,
      Q => \SDA_rfcnt_reg_n_0_[4]\,
      R => \SDA_rfcnt[4]_i_1_n_0\
    );
SDA_s_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => SDA,
      Q => SDA_s,
      R => '0'
    );
SDA_sync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => SDA_s,
      Q => SDA_sync,
      R => '0'
    );
\reg_dout[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_dout[0]_INST_0_i_1_n_0\,
      I1 => \reg_dout[0]_INST_0_i_2_n_0\,
      I2 => reg_addr(4),
      I3 => \reg_dout[0]_INST_0_i_3_n_0\,
      I4 => reg_addr(3),
      I5 => \reg_dout[0]_INST_0_i_4_n_0\,
      O => reg_dout(0)
    );
\reg_dout[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[0]_INST_0_i_5_n_0\,
      I1 => \reg_dout[0]_INST_0_i_6_n_0\,
      O => \reg_dout[0]_INST_0_i_1_n_0\,
      S => reg_addr(2)
    );
\reg_dout[0]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[15]\(0),
      I1 => \I2C_regblock_reg[14]\(0),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[13]\(0),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[12]\(0),
      O => \reg_dout[0]_INST_0_i_10_n_0\
    );
\reg_dout[0]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[3]\(0),
      I1 => \I2C_regblock_reg[2]\(0),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[1]\(0),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[0]\(0),
      O => \reg_dout[0]_INST_0_i_11_n_0\
    );
\reg_dout[0]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[7]\(0),
      I1 => \I2C_regblock_reg[6]\(0),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[5]\(0),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[4]\(0),
      O => \reg_dout[0]_INST_0_i_12_n_0\
    );
\reg_dout[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[0]_INST_0_i_7_n_0\,
      I1 => \reg_dout[0]_INST_0_i_8_n_0\,
      O => \reg_dout[0]_INST_0_i_2_n_0\,
      S => reg_addr(2)
    );
\reg_dout[0]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[0]_INST_0_i_9_n_0\,
      I1 => \reg_dout[0]_INST_0_i_10_n_0\,
      O => \reg_dout[0]_INST_0_i_3_n_0\,
      S => reg_addr(2)
    );
\reg_dout[0]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[0]_INST_0_i_11_n_0\,
      I1 => \reg_dout[0]_INST_0_i_12_n_0\,
      O => \reg_dout[0]_INST_0_i_4_n_0\,
      S => reg_addr(2)
    );
\reg_dout[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(24),
      I1 => \^an\(16),
      I2 => reg_addr(1),
      I3 => \^an\(8),
      I4 => reg_addr(0),
      I5 => \^an\(0),
      O => \reg_dout[0]_INST_0_i_5_n_0\
    );
\reg_dout[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(56),
      I1 => \^an\(48),
      I2 => reg_addr(1),
      I3 => \^an\(40),
      I4 => reg_addr(0),
      I5 => \^an\(32),
      O => \reg_dout[0]_INST_0_i_6_n_0\
    );
\reg_dout[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[19]\(0),
      I1 => \I2C_regblock_reg[18]\(0),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[17]\(0),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[16]\(0),
      O => \reg_dout[0]_INST_0_i_7_n_0\
    );
\reg_dout[0]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[23]\(0),
      I1 => \I2C_regblock_reg[22]\(0),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[21]\(0),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[20]\(0),
      O => \reg_dout[0]_INST_0_i_8_n_0\
    );
\reg_dout[0]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[11]\(0),
      I1 => \I2C_regblock_reg[10]\(0),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[9]\(0),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[8]\(0),
      O => \reg_dout[0]_INST_0_i_9_n_0\
    );
\reg_dout[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_dout[1]_INST_0_i_1_n_0\,
      I1 => \reg_dout[1]_INST_0_i_2_n_0\,
      I2 => reg_addr(4),
      I3 => \reg_dout[1]_INST_0_i_3_n_0\,
      I4 => reg_addr(3),
      I5 => \reg_dout[1]_INST_0_i_4_n_0\,
      O => reg_dout(1)
    );
\reg_dout[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[1]_INST_0_i_5_n_0\,
      I1 => \reg_dout[1]_INST_0_i_6_n_0\,
      O => \reg_dout[1]_INST_0_i_1_n_0\,
      S => reg_addr(2)
    );
\reg_dout[1]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[15]\(1),
      I1 => \I2C_regblock_reg[14]\(1),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[13]\(1),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[12]\(1),
      O => \reg_dout[1]_INST_0_i_10_n_0\
    );
\reg_dout[1]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[3]\(1),
      I1 => \I2C_regblock_reg[2]\(1),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[1]\(1),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[0]\(1),
      O => \reg_dout[1]_INST_0_i_11_n_0\
    );
\reg_dout[1]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[7]\(1),
      I1 => \I2C_regblock_reg[6]\(1),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[5]\(1),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[4]\(1),
      O => \reg_dout[1]_INST_0_i_12_n_0\
    );
\reg_dout[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[1]_INST_0_i_7_n_0\,
      I1 => \reg_dout[1]_INST_0_i_8_n_0\,
      O => \reg_dout[1]_INST_0_i_2_n_0\,
      S => reg_addr(2)
    );
\reg_dout[1]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[1]_INST_0_i_9_n_0\,
      I1 => \reg_dout[1]_INST_0_i_10_n_0\,
      O => \reg_dout[1]_INST_0_i_3_n_0\,
      S => reg_addr(2)
    );
\reg_dout[1]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[1]_INST_0_i_11_n_0\,
      I1 => \reg_dout[1]_INST_0_i_12_n_0\,
      O => \reg_dout[1]_INST_0_i_4_n_0\,
      S => reg_addr(2)
    );
\reg_dout[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(25),
      I1 => \^an\(17),
      I2 => reg_addr(1),
      I3 => \^an\(9),
      I4 => reg_addr(0),
      I5 => \^an\(1),
      O => \reg_dout[1]_INST_0_i_5_n_0\
    );
\reg_dout[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(57),
      I1 => \^an\(49),
      I2 => reg_addr(1),
      I3 => \^an\(41),
      I4 => reg_addr(0),
      I5 => \^an\(33),
      O => \reg_dout[1]_INST_0_i_6_n_0\
    );
\reg_dout[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[19]\(1),
      I1 => \I2C_regblock_reg[18]\(1),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[17]\(1),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[16]\(1),
      O => \reg_dout[1]_INST_0_i_7_n_0\
    );
\reg_dout[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[23]\(1),
      I1 => \I2C_regblock_reg[22]\(1),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[21]\(1),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[20]\(1),
      O => \reg_dout[1]_INST_0_i_8_n_0\
    );
\reg_dout[1]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[11]\(1),
      I1 => \I2C_regblock_reg[10]\(1),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[9]\(1),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[8]\(1),
      O => \reg_dout[1]_INST_0_i_9_n_0\
    );
\reg_dout[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_dout[2]_INST_0_i_1_n_0\,
      I1 => \reg_dout[2]_INST_0_i_2_n_0\,
      I2 => reg_addr(4),
      I3 => \reg_dout[2]_INST_0_i_3_n_0\,
      I4 => reg_addr(3),
      I5 => \reg_dout[2]_INST_0_i_4_n_0\,
      O => reg_dout(2)
    );
\reg_dout[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[2]_INST_0_i_5_n_0\,
      I1 => \reg_dout[2]_INST_0_i_6_n_0\,
      O => \reg_dout[2]_INST_0_i_1_n_0\,
      S => reg_addr(2)
    );
\reg_dout[2]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[15]\(2),
      I1 => \I2C_regblock_reg[14]\(2),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[13]\(2),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[12]\(2),
      O => \reg_dout[2]_INST_0_i_10_n_0\
    );
\reg_dout[2]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[3]\(2),
      I1 => \I2C_regblock_reg[2]\(2),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[1]\(2),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[0]\(2),
      O => \reg_dout[2]_INST_0_i_11_n_0\
    );
\reg_dout[2]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[7]\(2),
      I1 => \I2C_regblock_reg[6]\(2),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[5]\(2),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[4]\(2),
      O => \reg_dout[2]_INST_0_i_12_n_0\
    );
\reg_dout[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[2]_INST_0_i_7_n_0\,
      I1 => \reg_dout[2]_INST_0_i_8_n_0\,
      O => \reg_dout[2]_INST_0_i_2_n_0\,
      S => reg_addr(2)
    );
\reg_dout[2]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[2]_INST_0_i_9_n_0\,
      I1 => \reg_dout[2]_INST_0_i_10_n_0\,
      O => \reg_dout[2]_INST_0_i_3_n_0\,
      S => reg_addr(2)
    );
\reg_dout[2]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[2]_INST_0_i_11_n_0\,
      I1 => \reg_dout[2]_INST_0_i_12_n_0\,
      O => \reg_dout[2]_INST_0_i_4_n_0\,
      S => reg_addr(2)
    );
\reg_dout[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(26),
      I1 => \^an\(18),
      I2 => reg_addr(1),
      I3 => \^an\(10),
      I4 => reg_addr(0),
      I5 => \^an\(2),
      O => \reg_dout[2]_INST_0_i_5_n_0\
    );
\reg_dout[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(58),
      I1 => \^an\(50),
      I2 => reg_addr(1),
      I3 => \^an\(42),
      I4 => reg_addr(0),
      I5 => \^an\(34),
      O => \reg_dout[2]_INST_0_i_6_n_0\
    );
\reg_dout[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[19]\(2),
      I1 => \I2C_regblock_reg[18]\(2),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[17]\(2),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[16]\(2),
      O => \reg_dout[2]_INST_0_i_7_n_0\
    );
\reg_dout[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[23]\(2),
      I1 => \I2C_regblock_reg[22]\(2),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[21]\(2),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[20]\(2),
      O => \reg_dout[2]_INST_0_i_8_n_0\
    );
\reg_dout[2]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[11]\(2),
      I1 => \I2C_regblock_reg[10]\(2),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[9]\(2),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[8]\(2),
      O => \reg_dout[2]_INST_0_i_9_n_0\
    );
\reg_dout[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_dout[3]_INST_0_i_1_n_0\,
      I1 => \reg_dout[3]_INST_0_i_2_n_0\,
      I2 => reg_addr(4),
      I3 => \reg_dout[3]_INST_0_i_3_n_0\,
      I4 => reg_addr(3),
      I5 => \reg_dout[3]_INST_0_i_4_n_0\,
      O => reg_dout(3)
    );
\reg_dout[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[3]_INST_0_i_5_n_0\,
      I1 => \reg_dout[3]_INST_0_i_6_n_0\,
      O => \reg_dout[3]_INST_0_i_1_n_0\,
      S => reg_addr(2)
    );
\reg_dout[3]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[15]\(3),
      I1 => \I2C_regblock_reg[14]\(3),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[13]\(3),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[12]\(3),
      O => \reg_dout[3]_INST_0_i_10_n_0\
    );
\reg_dout[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[3]\(3),
      I1 => \I2C_regblock_reg[2]\(3),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[1]\(3),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[0]\(3),
      O => \reg_dout[3]_INST_0_i_11_n_0\
    );
\reg_dout[3]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[7]\(3),
      I1 => \I2C_regblock_reg[6]\(3),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[5]\(3),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[4]\(3),
      O => \reg_dout[3]_INST_0_i_12_n_0\
    );
\reg_dout[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[3]_INST_0_i_7_n_0\,
      I1 => \reg_dout[3]_INST_0_i_8_n_0\,
      O => \reg_dout[3]_INST_0_i_2_n_0\,
      S => reg_addr(2)
    );
\reg_dout[3]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[3]_INST_0_i_9_n_0\,
      I1 => \reg_dout[3]_INST_0_i_10_n_0\,
      O => \reg_dout[3]_INST_0_i_3_n_0\,
      S => reg_addr(2)
    );
\reg_dout[3]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[3]_INST_0_i_11_n_0\,
      I1 => \reg_dout[3]_INST_0_i_12_n_0\,
      O => \reg_dout[3]_INST_0_i_4_n_0\,
      S => reg_addr(2)
    );
\reg_dout[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(27),
      I1 => \^an\(19),
      I2 => reg_addr(1),
      I3 => \^an\(11),
      I4 => reg_addr(0),
      I5 => \^an\(3),
      O => \reg_dout[3]_INST_0_i_5_n_0\
    );
\reg_dout[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(59),
      I1 => \^an\(51),
      I2 => reg_addr(1),
      I3 => \^an\(43),
      I4 => reg_addr(0),
      I5 => \^an\(35),
      O => \reg_dout[3]_INST_0_i_6_n_0\
    );
\reg_dout[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[19]\(3),
      I1 => \I2C_regblock_reg[18]\(3),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[17]\(3),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[16]\(3),
      O => \reg_dout[3]_INST_0_i_7_n_0\
    );
\reg_dout[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[23]\(3),
      I1 => \I2C_regblock_reg[22]\(3),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[21]\(3),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[20]\(3),
      O => \reg_dout[3]_INST_0_i_8_n_0\
    );
\reg_dout[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[11]\(3),
      I1 => \I2C_regblock_reg[10]\(3),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[9]\(3),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[8]\(3),
      O => \reg_dout[3]_INST_0_i_9_n_0\
    );
\reg_dout[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_dout[4]_INST_0_i_1_n_0\,
      I1 => \reg_dout[4]_INST_0_i_2_n_0\,
      I2 => reg_addr(4),
      I3 => \reg_dout[4]_INST_0_i_3_n_0\,
      I4 => reg_addr(3),
      I5 => \reg_dout[4]_INST_0_i_4_n_0\,
      O => reg_dout(4)
    );
\reg_dout[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[4]_INST_0_i_5_n_0\,
      I1 => \reg_dout[4]_INST_0_i_6_n_0\,
      O => \reg_dout[4]_INST_0_i_1_n_0\,
      S => reg_addr(2)
    );
\reg_dout[4]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[15]\(4),
      I1 => \I2C_regblock_reg[14]\(4),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[13]\(4),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[12]\(4),
      O => \reg_dout[4]_INST_0_i_10_n_0\
    );
\reg_dout[4]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[3]\(4),
      I1 => \I2C_regblock_reg[2]\(4),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[1]\(4),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[0]\(4),
      O => \reg_dout[4]_INST_0_i_11_n_0\
    );
\reg_dout[4]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[7]\(4),
      I1 => \I2C_regblock_reg[6]\(4),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[5]\(4),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[4]\(4),
      O => \reg_dout[4]_INST_0_i_12_n_0\
    );
\reg_dout[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[4]_INST_0_i_7_n_0\,
      I1 => \reg_dout[4]_INST_0_i_8_n_0\,
      O => \reg_dout[4]_INST_0_i_2_n_0\,
      S => reg_addr(2)
    );
\reg_dout[4]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[4]_INST_0_i_9_n_0\,
      I1 => \reg_dout[4]_INST_0_i_10_n_0\,
      O => \reg_dout[4]_INST_0_i_3_n_0\,
      S => reg_addr(2)
    );
\reg_dout[4]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[4]_INST_0_i_11_n_0\,
      I1 => \reg_dout[4]_INST_0_i_12_n_0\,
      O => \reg_dout[4]_INST_0_i_4_n_0\,
      S => reg_addr(2)
    );
\reg_dout[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(28),
      I1 => \^an\(20),
      I2 => reg_addr(1),
      I3 => \^an\(12),
      I4 => reg_addr(0),
      I5 => \^an\(4),
      O => \reg_dout[4]_INST_0_i_5_n_0\
    );
\reg_dout[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(60),
      I1 => \^an\(52),
      I2 => reg_addr(1),
      I3 => \^an\(44),
      I4 => reg_addr(0),
      I5 => \^an\(36),
      O => \reg_dout[4]_INST_0_i_6_n_0\
    );
\reg_dout[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[19]\(4),
      I1 => \I2C_regblock_reg[18]\(4),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[17]\(4),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[16]\(4),
      O => \reg_dout[4]_INST_0_i_7_n_0\
    );
\reg_dout[4]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[23]\(4),
      I1 => \I2C_regblock_reg[22]\(4),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[21]\(4),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[20]\(4),
      O => \reg_dout[4]_INST_0_i_8_n_0\
    );
\reg_dout[4]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[11]\(4),
      I1 => \I2C_regblock_reg[10]\(4),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[9]\(4),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[8]\(4),
      O => \reg_dout[4]_INST_0_i_9_n_0\
    );
\reg_dout[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_dout[5]_INST_0_i_1_n_0\,
      I1 => \reg_dout[5]_INST_0_i_2_n_0\,
      I2 => reg_addr(4),
      I3 => \reg_dout[5]_INST_0_i_3_n_0\,
      I4 => reg_addr(3),
      I5 => \reg_dout[5]_INST_0_i_4_n_0\,
      O => reg_dout(5)
    );
\reg_dout[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[5]_INST_0_i_5_n_0\,
      I1 => \reg_dout[5]_INST_0_i_6_n_0\,
      O => \reg_dout[5]_INST_0_i_1_n_0\,
      S => reg_addr(2)
    );
\reg_dout[5]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[15]\(5),
      I1 => \I2C_regblock_reg[14]\(5),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[13]\(5),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[12]\(5),
      O => \reg_dout[5]_INST_0_i_10_n_0\
    );
\reg_dout[5]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[3]\(5),
      I1 => \I2C_regblock_reg[2]\(5),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[1]\(5),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[0]\(5),
      O => \reg_dout[5]_INST_0_i_11_n_0\
    );
\reg_dout[5]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[7]\(5),
      I1 => \I2C_regblock_reg[6]\(5),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[5]\(5),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[4]\(5),
      O => \reg_dout[5]_INST_0_i_12_n_0\
    );
\reg_dout[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[5]_INST_0_i_7_n_0\,
      I1 => \reg_dout[5]_INST_0_i_8_n_0\,
      O => \reg_dout[5]_INST_0_i_2_n_0\,
      S => reg_addr(2)
    );
\reg_dout[5]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[5]_INST_0_i_9_n_0\,
      I1 => \reg_dout[5]_INST_0_i_10_n_0\,
      O => \reg_dout[5]_INST_0_i_3_n_0\,
      S => reg_addr(2)
    );
\reg_dout[5]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[5]_INST_0_i_11_n_0\,
      I1 => \reg_dout[5]_INST_0_i_12_n_0\,
      O => \reg_dout[5]_INST_0_i_4_n_0\,
      S => reg_addr(2)
    );
\reg_dout[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(29),
      I1 => \^an\(21),
      I2 => reg_addr(1),
      I3 => \^an\(13),
      I4 => reg_addr(0),
      I5 => \^an\(5),
      O => \reg_dout[5]_INST_0_i_5_n_0\
    );
\reg_dout[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(61),
      I1 => \^an\(53),
      I2 => reg_addr(1),
      I3 => \^an\(45),
      I4 => reg_addr(0),
      I5 => \^an\(37),
      O => \reg_dout[5]_INST_0_i_6_n_0\
    );
\reg_dout[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[19]\(5),
      I1 => \I2C_regblock_reg[18]\(5),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[17]\(5),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[16]\(5),
      O => \reg_dout[5]_INST_0_i_7_n_0\
    );
\reg_dout[5]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[23]\(5),
      I1 => \I2C_regblock_reg[22]\(5),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[21]\(5),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[20]\(5),
      O => \reg_dout[5]_INST_0_i_8_n_0\
    );
\reg_dout[5]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[11]\(5),
      I1 => \I2C_regblock_reg[10]\(5),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[9]\(5),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[8]\(5),
      O => \reg_dout[5]_INST_0_i_9_n_0\
    );
\reg_dout[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_dout[6]_INST_0_i_1_n_0\,
      I1 => \reg_dout[6]_INST_0_i_2_n_0\,
      I2 => reg_addr(4),
      I3 => \reg_dout[6]_INST_0_i_3_n_0\,
      I4 => reg_addr(3),
      I5 => \reg_dout[6]_INST_0_i_4_n_0\,
      O => reg_dout(6)
    );
\reg_dout[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[6]_INST_0_i_5_n_0\,
      I1 => \reg_dout[6]_INST_0_i_6_n_0\,
      O => \reg_dout[6]_INST_0_i_1_n_0\,
      S => reg_addr(2)
    );
\reg_dout[6]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[15]\(6),
      I1 => \I2C_regblock_reg[14]\(6),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[13]\(6),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[12]\(6),
      O => \reg_dout[6]_INST_0_i_10_n_0\
    );
\reg_dout[6]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[3]\(6),
      I1 => \I2C_regblock_reg[2]\(6),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[1]\(6),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[0]\(6),
      O => \reg_dout[6]_INST_0_i_11_n_0\
    );
\reg_dout[6]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[7]\(6),
      I1 => \I2C_regblock_reg[6]\(6),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[5]\(6),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[4]\(6),
      O => \reg_dout[6]_INST_0_i_12_n_0\
    );
\reg_dout[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[6]_INST_0_i_7_n_0\,
      I1 => \reg_dout[6]_INST_0_i_8_n_0\,
      O => \reg_dout[6]_INST_0_i_2_n_0\,
      S => reg_addr(2)
    );
\reg_dout[6]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[6]_INST_0_i_9_n_0\,
      I1 => \reg_dout[6]_INST_0_i_10_n_0\,
      O => \reg_dout[6]_INST_0_i_3_n_0\,
      S => reg_addr(2)
    );
\reg_dout[6]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[6]_INST_0_i_11_n_0\,
      I1 => \reg_dout[6]_INST_0_i_12_n_0\,
      O => \reg_dout[6]_INST_0_i_4_n_0\,
      S => reg_addr(2)
    );
\reg_dout[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(30),
      I1 => \^an\(22),
      I2 => reg_addr(1),
      I3 => \^an\(14),
      I4 => reg_addr(0),
      I5 => \^an\(6),
      O => \reg_dout[6]_INST_0_i_5_n_0\
    );
\reg_dout[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(62),
      I1 => \^an\(54),
      I2 => reg_addr(1),
      I3 => \^an\(46),
      I4 => reg_addr(0),
      I5 => \^an\(38),
      O => \reg_dout[6]_INST_0_i_6_n_0\
    );
\reg_dout[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[19]\(6),
      I1 => \I2C_regblock_reg[18]\(6),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[17]\(6),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[16]\(6),
      O => \reg_dout[6]_INST_0_i_7_n_0\
    );
\reg_dout[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[23]\(6),
      I1 => \I2C_regblock_reg[22]\(6),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[21]\(6),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[20]\(6),
      O => \reg_dout[6]_INST_0_i_8_n_0\
    );
\reg_dout[6]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[11]\(6),
      I1 => \I2C_regblock_reg[10]\(6),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[9]\(6),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[8]\(6),
      O => \reg_dout[6]_INST_0_i_9_n_0\
    );
\reg_dout[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_dout[7]_INST_0_i_1_n_0\,
      I1 => \reg_dout[7]_INST_0_i_2_n_0\,
      I2 => reg_addr(4),
      I3 => \reg_dout[7]_INST_0_i_3_n_0\,
      I4 => reg_addr(3),
      I5 => \reg_dout[7]_INST_0_i_4_n_0\,
      O => reg_dout(7)
    );
\reg_dout[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[7]_INST_0_i_5_n_0\,
      I1 => \reg_dout[7]_INST_0_i_6_n_0\,
      O => \reg_dout[7]_INST_0_i_1_n_0\,
      S => reg_addr(2)
    );
\reg_dout[7]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[15]\(7),
      I1 => \I2C_regblock_reg[14]\(7),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[13]\(7),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[12]\(7),
      O => \reg_dout[7]_INST_0_i_10_n_0\
    );
\reg_dout[7]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[3]\(7),
      I1 => \I2C_regblock_reg[2]\(7),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[1]\(7),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[0]\(7),
      O => \reg_dout[7]_INST_0_i_11_n_0\
    );
\reg_dout[7]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[7]\(7),
      I1 => \I2C_regblock_reg[6]\(7),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[5]\(7),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[4]\(7),
      O => \reg_dout[7]_INST_0_i_12_n_0\
    );
\reg_dout[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[7]_INST_0_i_7_n_0\,
      I1 => \reg_dout[7]_INST_0_i_8_n_0\,
      O => \reg_dout[7]_INST_0_i_2_n_0\,
      S => reg_addr(2)
    );
\reg_dout[7]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[7]_INST_0_i_9_n_0\,
      I1 => \reg_dout[7]_INST_0_i_10_n_0\,
      O => \reg_dout[7]_INST_0_i_3_n_0\,
      S => reg_addr(2)
    );
\reg_dout[7]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_dout[7]_INST_0_i_11_n_0\,
      I1 => \reg_dout[7]_INST_0_i_12_n_0\,
      O => \reg_dout[7]_INST_0_i_4_n_0\,
      S => reg_addr(2)
    );
\reg_dout[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(31),
      I1 => \^an\(23),
      I2 => reg_addr(1),
      I3 => \^an\(15),
      I4 => reg_addr(0),
      I5 => \^an\(7),
      O => \reg_dout[7]_INST_0_i_5_n_0\
    );
\reg_dout[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^an\(63),
      I1 => \^an\(55),
      I2 => reg_addr(1),
      I3 => \^an\(47),
      I4 => reg_addr(0),
      I5 => \^an\(39),
      O => \reg_dout[7]_INST_0_i_6_n_0\
    );
\reg_dout[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[19]\(7),
      I1 => \I2C_regblock_reg[18]\(7),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[17]\(7),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[16]\(7),
      O => \reg_dout[7]_INST_0_i_7_n_0\
    );
\reg_dout[7]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[23]\(7),
      I1 => \I2C_regblock_reg[22]\(7),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[21]\(7),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[20]\(7),
      O => \reg_dout[7]_INST_0_i_8_n_0\
    );
\reg_dout[7]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \I2C_regblock_reg[11]\(7),
      I1 => \I2C_regblock_reg[10]\(7),
      I2 => reg_addr(1),
      I3 => \I2C_regblock_reg[9]\(7),
      I4 => reg_addr(0),
      I5 => \I2C_regblock_reg[8]\(7),
      O => \reg_dout[7]_INST_0_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_hdcp_snoop_0_0 is
  port (
    SCL : in STD_LOGIC;
    SDA : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    reg_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reg_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    An : out STD_LOGIC_VECTOR ( 63 downto 0 );
    Aksv14_write : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of overlay1_hdcp_snoop_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of overlay1_hdcp_snoop_0_0 : entity is "overlay1_hdcp_snoop_0_0,hdcp_snoop,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of overlay1_hdcp_snoop_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of overlay1_hdcp_snoop_0_0 : entity is "hdcp_snoop,Vivado 2016.1";
end overlay1_hdcp_snoop_0_0;

architecture STRUCTURE of overlay1_hdcp_snoop_0_0 is
begin
inst: entity work.overlay1_hdcp_snoop_0_0_hdcp_snoop
     port map (
      Aksv14_write => Aksv14_write,
      An(63 downto 0) => An(63 downto 0),
      SCL => SCL,
      SDA => SDA,
      clk => clk,
      reg_addr(4 downto 0) => reg_addr(4 downto 0),
      reg_dout(7 downto 0) => reg_dout(7 downto 0),
      reset => reset
    );
end STRUCTURE;
