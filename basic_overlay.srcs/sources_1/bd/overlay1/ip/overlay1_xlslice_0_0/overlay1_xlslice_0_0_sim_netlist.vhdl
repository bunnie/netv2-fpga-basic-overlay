-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Sun Oct 09 19:14:00 2016
-- Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim -rename_top overlay1_xlslice_0_0 -prefix overlay1_xlslice_0_0_
--               overlay1_xlslice_0_0_sim_netlist.vhdl
-- Design      : overlay1_xlslice_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50tcsg325-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \overlay1_xlslice_0_0\ is
  port (
    Din : in STD_LOGIC_VECTOR ( 24 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of \overlay1_xlslice_0_0\ : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \overlay1_xlslice_0_0\ : entity is "overlay1_xlslice_0_0,xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \overlay1_xlslice_0_0\ : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \overlay1_xlslice_0_0\ : entity is "xlslice,Vivado 2016.1";
end \overlay1_xlslice_0_0\;

architecture STRUCTURE of \overlay1_xlslice_0_0\ is
  signal \^din\ : STD_LOGIC_VECTOR ( 24 downto 0 );
begin
  Dout(0) <= \^din\(24);
  \^din\(24) <= Din(24);
end STRUCTURE;
