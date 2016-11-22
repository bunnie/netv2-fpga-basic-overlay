-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Sun Oct 30 00:03:23 2016
-- Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_reg_expander_0_0/overlay1_reg_expander_0_0_stub.vhdl
-- Design      : overlay1_reg_expander_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a50tcsg325-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity overlay1_reg_expander_0_0 is
  Port ( 
    wr_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_addr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wr_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    we : in STD_LOGIC;
    bank0 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    bank1 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end overlay1_reg_expander_0_0;

architecture stub of overlay1_reg_expander_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "wr_clk,reset,rd_clk,wr_addr[2:0],wr_data[7:0],we,bank0[55:0],bank1[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "reg_expander,Vivado 2016.1";
begin
end;
