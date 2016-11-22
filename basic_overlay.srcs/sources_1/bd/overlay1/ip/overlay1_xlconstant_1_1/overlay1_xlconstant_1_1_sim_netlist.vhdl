-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Sun Oct 09 19:20:59 2016
-- Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim -rename_top overlay1_xlconstant_1_1 -prefix overlay1_xlconstant_1_1_
--               overlay1_xlconstant_1_1_sim_netlist.vhdl
-- Design      : overlay1_xlconstant_1_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50tcsg325-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \overlay1_xlconstant_1_1\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of \overlay1_xlconstant_1_1\ : entity is true;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \overlay1_xlconstant_1_1\ : entity is "yes";
end \overlay1_xlconstant_1_1\;

architecture STRUCTURE of \overlay1_xlconstant_1_1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  dout(31) <= \<const0>\;
  dout(30) <= \<const0>\;
  dout(29) <= \<const1>\;
  dout(28) <= \<const1>\;
  dout(27) <= \<const0>\;
  dout(26) <= \<const0>\;
  dout(25) <= \<const1>\;
  dout(24) <= \<const0>\;
  dout(23) <= \<const0>\;
  dout(22) <= \<const0>\;
  dout(21) <= \<const0>\;
  dout(20) <= \<const0>\;
  dout(19) <= \<const1>\;
  dout(18) <= \<const1>\;
  dout(17) <= \<const0>\;
  dout(16) <= \<const1>\;
  dout(15) <= \<const1>\;
  dout(14) <= \<const0>\;
  dout(13) <= \<const1>\;
  dout(12) <= \<const1>\;
  dout(11) <= \<const1>\;
  dout(10) <= \<const0>\;
  dout(9) <= \<const1>\;
  dout(8) <= \<const0>\;
  dout(7) <= \<const1>\;
  dout(6) <= \<const0>\;
  dout(5) <= \<const1>\;
  dout(4) <= \<const1>\;
  dout(3) <= \<const1>\;
  dout(2) <= \<const1>\;
  dout(1) <= \<const1>\;
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
