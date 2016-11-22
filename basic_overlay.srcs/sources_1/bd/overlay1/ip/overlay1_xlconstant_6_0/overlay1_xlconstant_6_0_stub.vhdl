-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Sun Oct 09 19:18:07 2016
-- Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub -rename_top overlay1_xlconstant_4_0 -prefix overlay1_xlconstant_4_0_
--               overlay1_xlconstant_2_0_stub.vhdl
-- Design      : overlay1_xlconstant_2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a50tcsg325-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity \overlay1_xlconstant_4_0\ is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end \overlay1_xlconstant_4_0\;

architecture stub of \overlay1_xlconstant_4_0\ is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[0:0]";
begin
end;
