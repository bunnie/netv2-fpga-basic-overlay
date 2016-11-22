-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Sun Oct 30 00:03:23 2016
-- Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_reg_expander_0_0/overlay1_reg_expander_0_0_sim_netlist.vhdl
-- Design      : overlay1_reg_expander_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50tcsg325-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_reg_expander_0_0_reg_expander is
  port (
    bank0 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    bank1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    we : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    wr_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_clk : in STD_LOGIC;
    wr_addr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_reg_expander_0_0_reg_expander : entity is "reg_expander";
end overlay1_reg_expander_0_0_reg_expander;

architecture STRUCTURE of overlay1_reg_expander_0_0_reg_expander is
  signal state0 : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \state0[15]_i_1_n_0\ : STD_LOGIC;
  signal \state0[23]_i_1_n_0\ : STD_LOGIC;
  signal \state0[31]_i_1_n_0\ : STD_LOGIC;
  signal \state0[39]_i_1_n_0\ : STD_LOGIC;
  signal \state0[47]_i_1_n_0\ : STD_LOGIC;
  signal \state0[55]_i_1_n_0\ : STD_LOGIC;
  signal \state0[7]_i_1_n_0\ : STD_LOGIC;
  signal state1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal state1_0 : STD_LOGIC;
  signal we_d : STD_LOGIC;
  signal we_d2 : STD_LOGIC;
begin
\bank0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(0),
      Q => bank0(0),
      R => '0'
    );
\bank0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(10),
      Q => bank0(10),
      R => '0'
    );
\bank0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(11),
      Q => bank0(11),
      R => '0'
    );
\bank0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(12),
      Q => bank0(12),
      R => '0'
    );
\bank0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(13),
      Q => bank0(13),
      R => '0'
    );
\bank0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(14),
      Q => bank0(14),
      R => '0'
    );
\bank0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(15),
      Q => bank0(15),
      R => '0'
    );
\bank0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(16),
      Q => bank0(16),
      R => '0'
    );
\bank0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(17),
      Q => bank0(17),
      R => '0'
    );
\bank0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(18),
      Q => bank0(18),
      R => '0'
    );
\bank0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(19),
      Q => bank0(19),
      R => '0'
    );
\bank0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(1),
      Q => bank0(1),
      R => '0'
    );
\bank0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(20),
      Q => bank0(20),
      R => '0'
    );
\bank0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(21),
      Q => bank0(21),
      R => '0'
    );
\bank0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(22),
      Q => bank0(22),
      R => '0'
    );
\bank0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(23),
      Q => bank0(23),
      R => '0'
    );
\bank0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(24),
      Q => bank0(24),
      R => '0'
    );
\bank0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(25),
      Q => bank0(25),
      R => '0'
    );
\bank0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(26),
      Q => bank0(26),
      R => '0'
    );
\bank0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(27),
      Q => bank0(27),
      R => '0'
    );
\bank0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(28),
      Q => bank0(28),
      R => '0'
    );
\bank0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(29),
      Q => bank0(29),
      R => '0'
    );
\bank0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(2),
      Q => bank0(2),
      R => '0'
    );
\bank0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(30),
      Q => bank0(30),
      R => '0'
    );
\bank0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(31),
      Q => bank0(31),
      R => '0'
    );
\bank0_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(32),
      Q => bank0(32),
      R => '0'
    );
\bank0_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(33),
      Q => bank0(33),
      R => '0'
    );
\bank0_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(34),
      Q => bank0(34),
      R => '0'
    );
\bank0_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(35),
      Q => bank0(35),
      R => '0'
    );
\bank0_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(36),
      Q => bank0(36),
      R => '0'
    );
\bank0_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(37),
      Q => bank0(37),
      R => '0'
    );
\bank0_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(38),
      Q => bank0(38),
      R => '0'
    );
\bank0_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(39),
      Q => bank0(39),
      R => '0'
    );
\bank0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(3),
      Q => bank0(3),
      R => '0'
    );
\bank0_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(40),
      Q => bank0(40),
      R => '0'
    );
\bank0_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(41),
      Q => bank0(41),
      R => '0'
    );
\bank0_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(42),
      Q => bank0(42),
      R => '0'
    );
\bank0_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(43),
      Q => bank0(43),
      R => '0'
    );
\bank0_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(44),
      Q => bank0(44),
      R => '0'
    );
\bank0_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(45),
      Q => bank0(45),
      R => '0'
    );
\bank0_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(46),
      Q => bank0(46),
      R => '0'
    );
\bank0_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(47),
      Q => bank0(47),
      R => '0'
    );
\bank0_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(48),
      Q => bank0(48),
      R => '0'
    );
\bank0_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(49),
      Q => bank0(49),
      R => '0'
    );
\bank0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(4),
      Q => bank0(4),
      R => '0'
    );
\bank0_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(50),
      Q => bank0(50),
      R => '0'
    );
\bank0_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(51),
      Q => bank0(51),
      R => '0'
    );
\bank0_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(52),
      Q => bank0(52),
      R => '0'
    );
\bank0_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(53),
      Q => bank0(53),
      R => '0'
    );
\bank0_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(54),
      Q => bank0(54),
      R => '0'
    );
\bank0_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(55),
      Q => bank0(55),
      R => '0'
    );
\bank0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(5),
      Q => bank0(5),
      R => '0'
    );
\bank0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(6),
      Q => bank0(6),
      R => '0'
    );
\bank0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(7),
      Q => bank0(7),
      R => '0'
    );
\bank0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(8),
      Q => bank0(8),
      R => '0'
    );
\bank0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state0(9),
      Q => bank0(9),
      R => '0'
    );
\bank1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state1(0),
      Q => bank1(0),
      R => '0'
    );
\bank1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state1(1),
      Q => bank1(1),
      R => '0'
    );
\bank1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state1(2),
      Q => bank1(2),
      R => '0'
    );
\bank1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state1(3),
      Q => bank1(3),
      R => '0'
    );
\bank1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state1(4),
      Q => bank1(4),
      R => '0'
    );
\bank1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state1(5),
      Q => bank1(5),
      R => '0'
    );
\bank1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state1(6),
      Q => bank1(6),
      R => '0'
    );
\bank1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => state1(7),
      Q => bank1(7),
      R => '0'
    );
\state0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => wr_addr(2),
      I1 => we_d,
      I2 => we_d2,
      I3 => wr_addr(0),
      I4 => wr_addr(1),
      O => \state0[15]_i_1_n_0\
    );
\state0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => wr_addr(2),
      I1 => we_d,
      I2 => we_d2,
      I3 => wr_addr(1),
      I4 => wr_addr(0),
      O => \state0[23]_i_1_n_0\
    );
\state0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => wr_addr(2),
      I1 => we_d,
      I2 => we_d2,
      I3 => wr_addr(1),
      I4 => wr_addr(0),
      O => \state0[31]_i_1_n_0\
    );
\state0[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => wr_addr(1),
      I1 => we_d,
      I2 => we_d2,
      I3 => wr_addr(2),
      I4 => wr_addr(0),
      O => \state0[39]_i_1_n_0\
    );
\state0[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => wr_addr(1),
      I1 => we_d,
      I2 => we_d2,
      I3 => wr_addr(2),
      I4 => wr_addr(0),
      O => \state0[47]_i_1_n_0\
    );
\state0[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => wr_addr(0),
      I1 => we_d,
      I2 => we_d2,
      I3 => wr_addr(2),
      I4 => wr_addr(1),
      O => \state0[55]_i_1_n_0\
    );
\state0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => wr_addr(2),
      I1 => we_d,
      I2 => we_d2,
      I3 => wr_addr(1),
      I4 => wr_addr(0),
      O => \state0[7]_i_1_n_0\
    );
\state0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[7]_i_1_n_0\,
      D => wr_data(0),
      Q => state0(0),
      R => reset
    );
\state0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[15]_i_1_n_0\,
      D => wr_data(2),
      Q => state0(10),
      R => reset
    );
\state0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[15]_i_1_n_0\,
      D => wr_data(3),
      Q => state0(11),
      R => reset
    );
\state0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[15]_i_1_n_0\,
      D => wr_data(4),
      Q => state0(12),
      R => reset
    );
\state0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[15]_i_1_n_0\,
      D => wr_data(5),
      Q => state0(13),
      R => reset
    );
\state0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[15]_i_1_n_0\,
      D => wr_data(6),
      Q => state0(14),
      R => reset
    );
\state0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[15]_i_1_n_0\,
      D => wr_data(7),
      Q => state0(15),
      R => reset
    );
\state0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[23]_i_1_n_0\,
      D => wr_data(0),
      Q => state0(16),
      R => reset
    );
\state0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[23]_i_1_n_0\,
      D => wr_data(1),
      Q => state0(17),
      R => reset
    );
\state0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[23]_i_1_n_0\,
      D => wr_data(2),
      Q => state0(18),
      R => reset
    );
\state0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[23]_i_1_n_0\,
      D => wr_data(3),
      Q => state0(19),
      R => reset
    );
\state0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[7]_i_1_n_0\,
      D => wr_data(1),
      Q => state0(1),
      R => reset
    );
\state0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[23]_i_1_n_0\,
      D => wr_data(4),
      Q => state0(20),
      R => reset
    );
\state0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[23]_i_1_n_0\,
      D => wr_data(5),
      Q => state0(21),
      R => reset
    );
\state0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[23]_i_1_n_0\,
      D => wr_data(6),
      Q => state0(22),
      R => reset
    );
\state0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[23]_i_1_n_0\,
      D => wr_data(7),
      Q => state0(23),
      R => reset
    );
\state0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[31]_i_1_n_0\,
      D => wr_data(0),
      Q => state0(24),
      R => reset
    );
\state0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[31]_i_1_n_0\,
      D => wr_data(1),
      Q => state0(25),
      R => reset
    );
\state0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[31]_i_1_n_0\,
      D => wr_data(2),
      Q => state0(26),
      R => reset
    );
\state0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[31]_i_1_n_0\,
      D => wr_data(3),
      Q => state0(27),
      R => reset
    );
\state0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[31]_i_1_n_0\,
      D => wr_data(4),
      Q => state0(28),
      R => reset
    );
\state0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[31]_i_1_n_0\,
      D => wr_data(5),
      Q => state0(29),
      R => reset
    );
\state0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[7]_i_1_n_0\,
      D => wr_data(2),
      Q => state0(2),
      R => reset
    );
\state0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[31]_i_1_n_0\,
      D => wr_data(6),
      Q => state0(30),
      R => reset
    );
\state0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[31]_i_1_n_0\,
      D => wr_data(7),
      Q => state0(31),
      R => reset
    );
\state0_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[39]_i_1_n_0\,
      D => wr_data(0),
      Q => state0(32),
      R => reset
    );
\state0_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[39]_i_1_n_0\,
      D => wr_data(1),
      Q => state0(33),
      R => reset
    );
\state0_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[39]_i_1_n_0\,
      D => wr_data(2),
      Q => state0(34),
      R => reset
    );
\state0_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[39]_i_1_n_0\,
      D => wr_data(3),
      Q => state0(35),
      R => reset
    );
\state0_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[39]_i_1_n_0\,
      D => wr_data(4),
      Q => state0(36),
      R => reset
    );
\state0_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[39]_i_1_n_0\,
      D => wr_data(5),
      Q => state0(37),
      R => reset
    );
\state0_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[39]_i_1_n_0\,
      D => wr_data(6),
      Q => state0(38),
      R => reset
    );
\state0_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[39]_i_1_n_0\,
      D => wr_data(7),
      Q => state0(39),
      R => reset
    );
\state0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[7]_i_1_n_0\,
      D => wr_data(3),
      Q => state0(3),
      R => reset
    );
\state0_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[47]_i_1_n_0\,
      D => wr_data(0),
      Q => state0(40),
      R => reset
    );
\state0_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[47]_i_1_n_0\,
      D => wr_data(1),
      Q => state0(41),
      R => reset
    );
\state0_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[47]_i_1_n_0\,
      D => wr_data(2),
      Q => state0(42),
      R => reset
    );
\state0_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[47]_i_1_n_0\,
      D => wr_data(3),
      Q => state0(43),
      R => reset
    );
\state0_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[47]_i_1_n_0\,
      D => wr_data(4),
      Q => state0(44),
      R => reset
    );
\state0_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[47]_i_1_n_0\,
      D => wr_data(5),
      Q => state0(45),
      R => reset
    );
\state0_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[47]_i_1_n_0\,
      D => wr_data(6),
      Q => state0(46),
      R => reset
    );
\state0_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[47]_i_1_n_0\,
      D => wr_data(7),
      Q => state0(47),
      R => reset
    );
\state0_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[55]_i_1_n_0\,
      D => wr_data(0),
      Q => state0(48),
      R => reset
    );
\state0_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[55]_i_1_n_0\,
      D => wr_data(1),
      Q => state0(49),
      R => reset
    );
\state0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[7]_i_1_n_0\,
      D => wr_data(4),
      Q => state0(4),
      R => reset
    );
\state0_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[55]_i_1_n_0\,
      D => wr_data(2),
      Q => state0(50),
      R => reset
    );
\state0_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[55]_i_1_n_0\,
      D => wr_data(3),
      Q => state0(51),
      R => reset
    );
\state0_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[55]_i_1_n_0\,
      D => wr_data(4),
      Q => state0(52),
      R => reset
    );
\state0_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[55]_i_1_n_0\,
      D => wr_data(5),
      Q => state0(53),
      R => reset
    );
\state0_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[55]_i_1_n_0\,
      D => wr_data(6),
      Q => state0(54),
      R => reset
    );
\state0_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[55]_i_1_n_0\,
      D => wr_data(7),
      Q => state0(55),
      R => reset
    );
\state0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[7]_i_1_n_0\,
      D => wr_data(5),
      Q => state0(5),
      R => reset
    );
\state0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[7]_i_1_n_0\,
      D => wr_data(6),
      Q => state0(6),
      R => reset
    );
\state0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[7]_i_1_n_0\,
      D => wr_data(7),
      Q => state0(7),
      R => reset
    );
\state0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[15]_i_1_n_0\,
      D => wr_data(0),
      Q => state0(8),
      R => reset
    );
\state0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => \state0[15]_i_1_n_0\,
      D => wr_data(1),
      Q => state0(9),
      R => reset
    );
\state1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => we_d2,
      I1 => we_d,
      I2 => wr_addr(0),
      I3 => wr_addr(2),
      I4 => wr_addr(1),
      O => state1_0
    );
\state1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => state1_0,
      D => wr_data(0),
      Q => state1(0),
      R => reset
    );
\state1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => state1_0,
      D => wr_data(1),
      Q => state1(1),
      R => reset
    );
\state1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => state1_0,
      D => wr_data(2),
      Q => state1(2),
      R => reset
    );
\state1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => state1_0,
      D => wr_data(3),
      Q => state1(3),
      R => reset
    );
\state1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => state1_0,
      D => wr_data(4),
      Q => state1(4),
      R => reset
    );
\state1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => state1_0,
      D => wr_data(5),
      Q => state1(5),
      R => reset
    );
\state1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => state1_0,
      D => wr_data(6),
      Q => state1(6),
      R => reset
    );
\state1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => state1_0,
      D => wr_data(7),
      Q => state1(7),
      R => reset
    );
we_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => we_d,
      Q => we_d2,
      R => '0'
    );
we_d_reg: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => we,
      Q => we_d,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_reg_expander_0_0 is
  port (
    wr_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_addr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wr_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    we : in STD_LOGIC;
    bank0 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    bank1 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of overlay1_reg_expander_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of overlay1_reg_expander_0_0 : entity is "overlay1_reg_expander_0_0,reg_expander,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of overlay1_reg_expander_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of overlay1_reg_expander_0_0 : entity is "reg_expander,Vivado 2016.1";
end overlay1_reg_expander_0_0;

architecture STRUCTURE of overlay1_reg_expander_0_0 is
begin
inst: entity work.overlay1_reg_expander_0_0_reg_expander
     port map (
      bank0(55 downto 0) => bank0(55 downto 0),
      bank1(7 downto 0) => bank1(7 downto 0),
      rd_clk => rd_clk,
      reset => reset,
      we => we,
      wr_addr(2 downto 0) => wr_addr(2 downto 0),
      wr_clk => wr_clk,
      wr_data(7 downto 0) => wr_data(7 downto 0)
    );
end STRUCTURE;
