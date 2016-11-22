-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Mon Oct 31 00:59:30 2016
-- Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_dvi_encoder_v2_0_0/overlay1_dvi_encoder_v2_0_0_sim_netlist.vhdl
-- Design      : overlay1_dvi_encoder_v2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50tcsg325-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_encoder_v2_0_0_encodeb is
  port (
    de_reg : out STD_LOGIC;
    vid_gb_reg : out STD_LOGIC;
    \dout_reg[3]_0\ : out STD_LOGIC;
    \dout_reg[0]_0\ : out STD_LOGIC;
    \dout_reg[3]_1\ : out STD_LOGIC;
    \dout_reg[2]_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \dout_reg[9]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    de : in STD_LOGIC;
    p_clk : in STD_LOGIC;
    vid_gb : in STD_LOGIC;
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    c0_reg_reg_0 : in STD_LOGIC;
    c0_reg_reg_1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    c1_reg_reg_0 : in STD_LOGIC;
    blue_din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_encoder_v2_0_0_encodeb : entity is "encodeb";
end overlay1_dvi_encoder_v2_0_0_encodeb;

architecture STRUCTURE of overlay1_dvi_encoder_v2_0_0_encodeb is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal c0_q : STD_LOGIC;
  signal c0_reg : STD_LOGIC;
  signal c1_q : STD_LOGIC;
  signal c1_reg : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_7_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_10__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_11_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_12_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_13__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_14_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_15_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_16_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_17_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_18_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_19_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_20_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_21_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_22_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_23_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_24_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_25_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_26_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_7_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_8_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_9_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal de_q : STD_LOGIC;
  signal \^de_reg\ : STD_LOGIC;
  signal decision1 : STD_LOGIC;
  signal \din_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \dout[0]_i_1_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1_n_0\ : STD_LOGIC;
  signal \dout[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[4]_i_1_n_0\ : STD_LOGIC;
  signal \dout[5]_i_1_n_0\ : STD_LOGIC;
  signal \dout[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[6]_i_2_n_0\ : STD_LOGIC;
  signal \dout[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[7]_i_2_n_0\ : STD_LOGIC;
  signal \dout[8]_i_1_n_0\ : STD_LOGIC;
  signal \dout[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[9]_i_2_n_0\ : STD_LOGIC;
  signal n0q_m : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal n0q_m0 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal n1d : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal n1d0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \n1d[0]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[1]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[2]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_4_n_0\ : STD_LOGIC;
  signal n1q_m : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal n1q_m0 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \n1q_m[2]_i_1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_10_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_11_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_4_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_5_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_6_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_7_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_8_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_9_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal q_m : STD_LOGIC_VECTOR ( 8 to 8 );
  signal q_m_2 : STD_LOGIC;
  signal q_m_3 : STD_LOGIC;
  signal q_m_4 : STD_LOGIC;
  signal q_m_5 : STD_LOGIC;
  signal q_m_6 : STD_LOGIC;
  signal q_m_7 : STD_LOGIC;
  signal q_m_reg : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \q_m_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \q_m_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal vid_gb_q : STD_LOGIC;
  signal \^vid_gb_reg\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[2]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[3]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[3]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[3]_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[4]_i_11\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[4]_i_12\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[4]_i_13__1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt[4]_i_14\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[4]_i_15\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[4]_i_18\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[4]_i_19\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[4]_i_20\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[4]_i_21\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[4]_i_22\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[4]_i_26\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt[4]_i_9\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dout[6]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dout[6]_i_2__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dout[6]_i_2__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dout[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dout[7]_i_2__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dout[7]_i_2__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dout[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dout[9]_i_2__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \n1d[0]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \n1d[3]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_m_reg[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_m_reg[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_m_reg[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_m_reg[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q_m_reg[6]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q_m_reg[8]_i_1\ : label is "soft_lutpair6";
begin
  E(0) <= \^e\(0);
  SR(0) <= \^sr\(0);
  de_reg <= \^de_reg\;
  vid_gb_reg <= \^vid_gb_reg\;
c0_q_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => hsync,
      Q => c0_q,
      R => '0'
    );
c0_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => c0_q,
      Q => c0_reg,
      R => '0'
    );
c1_q_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => vsync,
      Q => c1_q,
      R => '0'
    );
c1_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => c1_q,
      Q => c1_reg,
      R => '0'
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1B41E4B1E4BE1B4"
    )
        port map (
      I0 => \cnt[4]_i_5_n_0\,
      I1 => \cnt[4]_i_7_n_0\,
      I2 => n0q_m(1),
      I3 => q_m_reg(8),
      I4 => n1q_m(1),
      I5 => \cnt_reg_n_0_[1]\,
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
        port map (
      I0 => \cnt[2]_i_2_n_0\,
      I1 => \cnt[4]_i_5_n_0\,
      I2 => \cnt[2]_i_3_n_0\,
      I3 => \cnt[4]_i_7_n_0\,
      I4 => \cnt[2]_i_4_n_0\,
      I5 => \cnt[2]_i_5_n_0\,
      O => \cnt[2]_i_1_n_0\
    );
\cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696696666699666"
    )
        port map (
      I0 => \cnt[3]_i_6_n_0\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => n0q_m(1),
      I4 => n1q_m(1),
      I5 => q_m_reg(8),
      O => \cnt[2]_i_2_n_0\
    );
\cnt[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696696669669969"
    )
        port map (
      I0 => \cnt[3]_i_6_n_0\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => n0q_m(1),
      I4 => q_m_reg(8),
      I5 => n1q_m(1),
      O => \cnt[2]_i_3_n_0\
    );
\cnt[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BEEB"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => n1q_m(1),
      I2 => q_m_reg(8),
      I3 => n0q_m(1),
      O => \cnt[2]_i_4_n_0\
    );
\cnt[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => n1q_m(2),
      I1 => n0q_m(2),
      I2 => \cnt_reg_n_0_[2]\,
      I3 => q_m_reg(8),
      I4 => n1q_m(1),
      I5 => n0q_m(1),
      O => \cnt[2]_i_5_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \cnt[3]_i_2_n_0\,
      I1 => \cnt[3]_i_3_n_0\,
      I2 => \cnt[4]_i_5_n_0\,
      I3 => \cnt[3]_i_4_n_0\,
      I4 => \cnt[4]_i_7_n_0\,
      I5 => \cnt[3]_i_5_n_0\,
      O => \cnt[3]_i_1_n_0\
    );
\cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6660066666F66F66"
    )
        port map (
      I0 => \cnt[3]_i_6_n_0\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => q_m_reg(8),
      I3 => n1q_m(1),
      I4 => n0q_m(1),
      I5 => \cnt_reg_n_0_[1]\,
      O => \cnt[3]_i_2_n_0\
    );
\cnt[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5965A96A"
    )
        port map (
      I0 => \cnt[4]_i_11_n_0\,
      I1 => q_m_reg(8),
      I2 => n1q_m(2),
      I3 => n0q_m(2),
      I4 => \cnt_reg_n_0_[2]\,
      O => \cnt[3]_i_3_n_0\
    );
\cnt[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE80017F017FFE80"
    )
        port map (
      I0 => n1q_m(1),
      I1 => \cnt[3]_i_7_n_0\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt[4]_i_21_n_0\,
      I4 => \cnt[4]_i_18_n_0\,
      I5 => \cnt[4]_i_19_n_0\,
      O => \cnt[3]_i_4_n_0\
    );
\cnt[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA9A59AA9A5955"
    )
        port map (
      I0 => \cnt[4]_i_25_n_0\,
      I1 => q_m_reg(8),
      I2 => n1q_m(1),
      I3 => n0q_m(1),
      I4 => \cnt[4]_i_13__1_n_0\,
      I5 => \cnt_reg_n_0_[1]\,
      O => \cnt[3]_i_5_n_0\
    );
\cnt[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => n1q_m(2),
      I1 => n0q_m(2),
      O => \cnt[3]_i_6_n_0\
    );
\cnt[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => n0q_m(1),
      I1 => q_m_reg(8),
      O => \cnt[3]_i_7_n_0\
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => reset,
      I1 => \^de_reg\,
      I2 => \^vid_gb_reg\,
      O => \^sr\(0)
    );
\cnt[4]_i_10__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A69A5695"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => q_m_reg(8),
      I2 => n1q_m(3),
      I3 => n0q_m(3),
      I4 => \cnt_reg_n_0_[3]\,
      O => \cnt[4]_i_10__1_n_0\
    );
\cnt[4]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => n0q_m(3),
      I2 => n1q_m(3),
      O => \cnt[4]_i_11_n_0\
    );
\cnt[4]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2008"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => n0q_m(1),
      I2 => n1q_m(1),
      I3 => q_m_reg(8),
      O => \cnt[4]_i_12_n_0\
    );
\cnt[4]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => n0q_m(2),
      I2 => n1q_m(2),
      O => \cnt[4]_i_13__1_n_0\
    );
\cnt[4]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBEF"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => n0q_m(1),
      I2 => n1q_m(1),
      I3 => q_m_reg(8),
      O => \cnt[4]_i_14_n_0\
    );
\cnt[4]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B28E"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => n0q_m(2),
      I2 => n1q_m(2),
      I3 => q_m_reg(8),
      O => \cnt[4]_i_15_n_0\
    );
\cnt[4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => n1q_m(2),
      I1 => n0q_m(2),
      I2 => n1q_m(3),
      I3 => n0q_m(3),
      I4 => n1q_m(1),
      I5 => n0q_m(1),
      O => \cnt[4]_i_16_n_0\
    );
\cnt[4]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A55AA9A55659A55"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => n1q_m(2),
      I2 => n0q_m(2),
      I3 => n1q_m(3),
      I4 => n0q_m(3),
      I5 => \cnt_reg_n_0_[3]\,
      O => \cnt[4]_i_17_n_0\
    );
\cnt[4]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44B4BB4"
    )
        port map (
      I0 => n1q_m(2),
      I1 => n0q_m(2),
      I2 => n1q_m(3),
      I3 => n0q_m(3),
      I4 => \cnt_reg_n_0_[3]\,
      O => \cnt[4]_i_18_n_0\
    );
\cnt[4]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4004F44F"
    )
        port map (
      I0 => q_m_reg(8),
      I1 => n0q_m(1),
      I2 => n1q_m(2),
      I3 => n0q_m(2),
      I4 => \cnt_reg_n_0_[2]\,
      O => \cnt[4]_i_19_n_0\
    );
\cnt[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^vid_gb_reg\,
      O => \^e\(0)
    );
\cnt[4]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2800"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => n0q_m(1),
      I2 => q_m_reg(8),
      I3 => n1q_m(1),
      O => \cnt[4]_i_20_n_0\
    );
\cnt[4]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2DD2D22D"
    )
        port map (
      I0 => n0q_m(1),
      I1 => q_m_reg(8),
      I2 => \cnt_reg_n_0_[2]\,
      I3 => n0q_m(2),
      I4 => n1q_m(2),
      O => \cnt[4]_i_21_n_0\
    );
\cnt[4]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF6"
    )
        port map (
      I0 => q_m_reg(8),
      I1 => n0q_m(1),
      I2 => \cnt_reg_n_0_[1]\,
      I3 => n1q_m(1),
      O => \cnt[4]_i_22_n_0\
    );
\cnt[4]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFD00F0FFFFDDFD"
    )
        port map (
      I0 => n1q_m(1),
      I1 => n0q_m(1),
      I2 => n0q_m(3),
      I3 => n1q_m(3),
      I4 => n0q_m(2),
      I5 => n1q_m(2),
      O => \cnt[4]_i_23_n_0\
    );
\cnt[4]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF2FFFFF2222FF2F"
    )
        port map (
      I0 => n1q_m(3),
      I1 => n0q_m(3),
      I2 => n0q_m(1),
      I3 => n1q_m(1),
      I4 => n0q_m(2),
      I5 => n1q_m(2),
      O => \cnt[4]_i_24_n_0\
    );
\cnt[4]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696996966996"
    )
        port map (
      I0 => n1q_m(3),
      I1 => n0q_m(3),
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => n1q_m(2),
      I5 => n0q_m(2),
      O => \cnt[4]_i_25_n_0\
    );
\cnt[4]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => n0q_m(2),
      I1 => n1q_m(2),
      I2 => \cnt_reg_n_0_[2]\,
      O => \cnt[4]_i_26_n_0\
    );
\cnt[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
        port map (
      I0 => \cnt[4]_i_4_n_0\,
      I1 => \cnt[4]_i_5_n_0\,
      I2 => \cnt[4]_i_6_n_0\,
      I3 => \cnt[4]_i_7_n_0\,
      I4 => \cnt[4]_i_8_n_0\,
      I5 => \cnt[4]_i_9_n_0\,
      O => \cnt[4]_i_3_n_0\
    );
\cnt[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55599999999AAAAA"
    )
        port map (
      I0 => \cnt[4]_i_10__1_n_0\,
      I1 => \cnt[4]_i_11_n_0\,
      I2 => \cnt[4]_i_12_n_0\,
      I3 => \cnt[4]_i_13__1_n_0\,
      I4 => \cnt[4]_i_14_n_0\,
      I5 => \cnt[4]_i_15_n_0\,
      O => \cnt[4]_i_4_n_0\
    );
\cnt[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt[4]_i_16_n_0\,
      O => \cnt[4]_i_5_n_0\
    );
\cnt[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"959595A9A9A9A9A9"
    )
        port map (
      I0 => \cnt[4]_i_17_n_0\,
      I1 => \cnt[4]_i_18_n_0\,
      I2 => \cnt[4]_i_19_n_0\,
      I3 => \cnt[4]_i_20_n_0\,
      I4 => \cnt[4]_i_21_n_0\,
      I5 => \cnt[4]_i_22_n_0\,
      O => \cnt[4]_i_6_n_0\
    );
\cnt[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0CCAA0A"
    )
        port map (
      I0 => \cnt[4]_i_23_n_0\,
      I1 => \cnt[4]_i_24_n_0\,
      I2 => n1q_m(3),
      I3 => n0q_m(3),
      I4 => \cnt_reg_n_0_[4]\,
      O => \cnt[4]_i_7_n_0\
    );
\cnt[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAFBAABAFBFF"
    )
        port map (
      I0 => \cnt[4]_i_25_n_0\,
      I1 => q_m_reg(8),
      I2 => n1q_m(1),
      I3 => n0q_m(1),
      I4 => \cnt[4]_i_13__1_n_0\,
      I5 => \cnt_reg_n_0_[1]\,
      O => \cnt[4]_i_8_n_0\
    );
\cnt[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1781E87E"
    )
        port map (
      I0 => \cnt[4]_i_26_n_0\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => n0q_m(3),
      I3 => n1q_m(3),
      I4 => \cnt_reg_n_0_[4]\,
      O => \cnt[4]_i_9_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \^e\(0),
      D => \cnt[1]_i_1_n_0\,
      Q => \cnt_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \^e\(0),
      D => \cnt[2]_i_1_n_0\,
      Q => \cnt_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \^e\(0),
      D => \cnt[3]_i_1_n_0\,
      Q => \cnt_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \^e\(0),
      D => \cnt[4]_i_3_n_0\,
      Q => \cnt_reg_n_0_[4]\,
      R => \^sr\(0)
    );
de_q_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => de,
      Q => de_q,
      R => '0'
    );
de_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => de_q,
      Q => \^de_reg\,
      R => '0'
    );
\din_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => blue_din(0),
      Q => \din_q_reg_n_0_[0]\,
      R => '0'
    );
\din_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => blue_din(1),
      Q => p_0_in5_in,
      R => '0'
    );
\din_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => blue_din(2),
      Q => p_0_in4_in,
      R => '0'
    );
\din_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => blue_din(3),
      Q => p_0_in3_in,
      R => '0'
    );
\din_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => blue_din(4),
      Q => p_0_in2_in,
      R => '0'
    );
\din_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => blue_din(5),
      Q => p_0_in1_in,
      R => '0'
    );
\din_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => blue_din(6),
      Q => p_0_in0_in,
      R => '0'
    );
\din_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => blue_din(7),
      Q => p_0_in,
      R => '0'
    );
\dout[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A22A2A2AA22A"
    )
        port map (
      I0 => \dout[6]_i_2_n_0\,
      I1 => \^de_reg\,
      I2 => \q_m_reg_reg_n_0_[0]\,
      I3 => \cnt[4]_i_7_n_0\,
      I4 => \cnt[4]_i_5_n_0\,
      I5 => q_m_reg(8),
      O => \dout[0]_i_1_n_0\
    );
\dout[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A22A2A2AA22A"
    )
        port map (
      I0 => \dout[6]_i_2_n_0\,
      I1 => \^de_reg\,
      I2 => \q_m_reg_reg_n_0_[1]\,
      I3 => \cnt[4]_i_7_n_0\,
      I4 => \cnt[4]_i_5_n_0\,
      I5 => q_m_reg(8),
      O => \dout[1]_i_1_n_0\
    );
\dout[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8470000FFFFFFFF"
    )
        port map (
      I0 => q_m_reg(8),
      I1 => \cnt[4]_i_5_n_0\,
      I2 => \cnt[4]_i_7_n_0\,
      I3 => \q_m_reg_reg_n_0_[2]\,
      I4 => \^de_reg\,
      I5 => \dout[6]_i_2_n_0\,
      O => \dout[2]_i_1__0_n_0\
    );
\dout[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8470000FFFFFFFF"
    )
        port map (
      I0 => q_m_reg(8),
      I1 => \cnt[4]_i_5_n_0\,
      I2 => \cnt[4]_i_7_n_0\,
      I3 => \q_m_reg_reg_n_0_[3]\,
      I4 => \^de_reg\,
      I5 => \dout[7]_i_2_n_0\,
      O => \dout[3]_i_1__0_n_0\
    );
\dout[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A22A2A2AA22A"
    )
        port map (
      I0 => \dout[7]_i_2_n_0\,
      I1 => \^de_reg\,
      I2 => \q_m_reg_reg_n_0_[4]\,
      I3 => \cnt[4]_i_7_n_0\,
      I4 => \cnt[4]_i_5_n_0\,
      I5 => q_m_reg(8),
      O => \dout[4]_i_1_n_0\
    );
\dout[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A22A2A2AA22A"
    )
        port map (
      I0 => \dout[6]_i_2_n_0\,
      I1 => \^de_reg\,
      I2 => \q_m_reg_reg_n_0_[5]\,
      I3 => \cnt[4]_i_7_n_0\,
      I4 => \cnt[4]_i_5_n_0\,
      I5 => q_m_reg(8),
      O => \dout[5]_i_1_n_0\
    );
\dout[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9590000FFFFFFFF"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[6]\,
      I1 => \cnt[4]_i_7_n_0\,
      I2 => \cnt[4]_i_5_n_0\,
      I3 => q_m_reg(8),
      I4 => \^de_reg\,
      I5 => \dout[6]_i_2_n_0\,
      O => \dout[6]_i_1__0_n_0\
    );
\dout[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \^vid_gb_reg\,
      I1 => c0_reg,
      I2 => \^de_reg\,
      O => \dout[6]_i_2_n_0\
    );
\dout[6]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \^vid_gb_reg\,
      I1 => \^de_reg\,
      I2 => c0_reg_reg_0,
      O => \dout_reg[0]_0\
    );
\dout[6]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \^vid_gb_reg\,
      I1 => c0_reg_reg_1,
      I2 => \^de_reg\,
      O => \dout_reg[2]_0\
    );
\dout[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9590000FFFFFFFF"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[7]\,
      I1 => \cnt[4]_i_7_n_0\,
      I2 => \cnt[4]_i_5_n_0\,
      I3 => q_m_reg(8),
      I4 => \^de_reg\,
      I5 => \dout[7]_i_2_n_0\,
      O => \dout[7]_i_1__0_n_0\
    );
\dout[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \^vid_gb_reg\,
      I1 => \^de_reg\,
      I2 => c0_reg,
      O => \dout[7]_i_2_n_0\
    );
\dout[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \^vid_gb_reg\,
      I1 => c0_reg_reg_0,
      I2 => \^de_reg\,
      O => \dout_reg[3]_0\
    );
\dout[7]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \^vid_gb_reg\,
      I1 => \^de_reg\,
      I2 => c0_reg_reg_1,
      O => \dout_reg[3]_1\
    );
\dout[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3011"
    )
        port map (
      I0 => c0_reg,
      I1 => \^vid_gb_reg\,
      I2 => q_m_reg(8),
      I3 => \^de_reg\,
      O => \dout[8]_i_1_n_0\
    );
\dout[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFBFBFBABFB"
    )
        port map (
      I0 => \^vid_gb_reg\,
      I1 => \dout[9]_i_2_n_0\,
      I2 => \^de_reg\,
      I3 => \cnt[4]_i_7_n_0\,
      I4 => \cnt[4]_i_5_n_0\,
      I5 => q_m_reg(8),
      O => \dout[9]_i_1__0_n_0\
    );
\dout[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c0_reg,
      I1 => c1_reg,
      O => \dout[9]_i_2_n_0\
    );
\dout[9]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABBA"
    )
        port map (
      I0 => \^vid_gb_reg\,
      I1 => \^de_reg\,
      I2 => c0_reg_reg_0,
      I3 => c1_reg_reg_0,
      O => \dout_reg[9]_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[0]_i_1_n_0\,
      Q => Q(0),
      R => reset
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[1]_i_1_n_0\,
      Q => Q(1),
      R => reset
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[2]_i_1__0_n_0\,
      Q => Q(2),
      R => reset
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[3]_i_1__0_n_0\,
      Q => Q(3),
      R => reset
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[4]_i_1_n_0\,
      Q => Q(4),
      R => reset
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[5]_i_1_n_0\,
      Q => Q(5),
      R => reset
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[6]_i_1__0_n_0\,
      Q => Q(6),
      R => reset
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[7]_i_1__0_n_0\,
      Q => Q(7),
      R => reset
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[8]_i_1_n_0\,
      Q => Q(8),
      R => reset
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[9]_i_1__0_n_0\,
      Q => Q(9),
      R => reset
    );
\n0q_m[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669699996666669"
    )
        port map (
      I0 => \n1q_m[3]_i_2_n_0\,
      I1 => \n1q_m[3]_i_3_n_0\,
      I2 => \n1q_m[3]_i_6_n_0\,
      I3 => \n1q_m[3]_i_5_n_0\,
      I4 => \n1q_m[3]_i_4_n_0\,
      I5 => \din_q_reg_n_0_[0]\,
      O => n0q_m0(1)
    );
\n0q_m[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDD4BFFF4000FDD4"
    )
        port map (
      I0 => \din_q_reg_n_0_[0]\,
      I1 => \n1q_m[3]_i_4_n_0\,
      I2 => \n1q_m[3]_i_5_n_0\,
      I3 => \n1q_m[3]_i_6_n_0\,
      I4 => \n1q_m[3]_i_3_n_0\,
      I5 => \n1q_m[3]_i_2_n_0\,
      O => n0q_m0(2)
    );
\n0q_m[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \n1q_m[3]_i_3_n_0\,
      I1 => \n1q_m[3]_i_2_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_4_n_0\,
      I4 => \n1q_m[3]_i_5_n_0\,
      I5 => \n1q_m[3]_i_6_n_0\,
      O => n0q_m0(3)
    );
\n0q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => n0q_m0(1),
      Q => n0q_m(1),
      R => '0'
    );
\n0q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => n0q_m0(2),
      Q => n0q_m(2),
      R => '0'
    );
\n0q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => n0q_m0(3),
      Q => n0q_m(3),
      R => '0'
    );
\n1d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => blue_din(0),
      I1 => blue_din(7),
      I2 => \n1d[0]_i_2_n_0\,
      I3 => blue_din(2),
      I4 => blue_din(1),
      I5 => blue_din(3),
      O => n1d0(0)
    );
\n1d[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => blue_din(6),
      I1 => blue_din(4),
      I2 => blue_din(5),
      O => \n1d[0]_i_2_n_0\
    );
\n1d[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[1]_i_2_n_0\,
      I2 => \n1d[3]_i_3_n_0\,
      O => n1d0(1)
    );
\n1d[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => blue_din(3),
      I1 => blue_din(2),
      I2 => blue_din(1),
      I3 => blue_din(6),
      I4 => blue_din(5),
      I5 => blue_din(4),
      O => \n1d[1]_i_2_n_0\
    );
\n1d[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => \n1d[2]_i_2_n_0\,
      I3 => blue_din(4),
      I4 => blue_din(5),
      I5 => blue_din(6),
      O => n1d0(2)
    );
\n1d[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => blue_din(1),
      I1 => blue_din(2),
      I2 => blue_din(3),
      O => \n1d[2]_i_2_n_0\
    );
\n1d[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => blue_din(3),
      I3 => blue_din(2),
      I4 => blue_din(1),
      I5 => \n1d[3]_i_4_n_0\,
      O => n1d0(3)
    );
\n1d[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => blue_din(2),
      I1 => blue_din(1),
      I2 => blue_din(3),
      I3 => blue_din(0),
      I4 => blue_din(7),
      I5 => \n1d[0]_i_2_n_0\,
      O => \n1d[3]_i_2_n_0\
    );
\n1d[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => blue_din(7),
      I1 => blue_din(0),
      I2 => blue_din(5),
      I3 => blue_din(4),
      I4 => blue_din(6),
      O => \n1d[3]_i_3_n_0\
    );
\n1d[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => blue_din(4),
      I1 => blue_din(5),
      I2 => blue_din(6),
      O => \n1d[3]_i_4_n_0\
    );
\n1d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => n1d0(0),
      Q => n1d(0),
      R => '0'
    );
\n1d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => n1d0(1),
      Q => n1d(1),
      R => '0'
    );
\n1d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => n1d0(2),
      Q => n1d(2),
      R => '0'
    );
\n1d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => n1d0(3),
      Q => n1d(3),
      R => '0'
    );
\n1q_m[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96C33C963C96693C"
    )
        port map (
      I0 => \n1q_m[3]_i_6_n_0\,
      I1 => \n1q_m[3]_i_3_n_0\,
      I2 => \n1q_m[3]_i_2_n_0\,
      I3 => \din_q_reg_n_0_[0]\,
      I4 => \n1q_m[3]_i_4_n_0\,
      I5 => \n1q_m[3]_i_5_n_0\,
      O => n1q_m0(1)
    );
\n1q_m[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F17FEFF01007F17"
    )
        port map (
      I0 => \n1q_m[3]_i_6_n_0\,
      I1 => \n1q_m[3]_i_5_n_0\,
      I2 => \n1q_m[3]_i_4_n_0\,
      I3 => \din_q_reg_n_0_[0]\,
      I4 => \n1q_m[3]_i_2_n_0\,
      I5 => \n1q_m[3]_i_3_n_0\,
      O => \n1q_m[2]_i_1_n_0\
    );
\n1q_m[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \n1q_m[3]_i_2_n_0\,
      I1 => \n1q_m[3]_i_3_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_4_n_0\,
      I4 => \n1q_m[3]_i_5_n_0\,
      I5 => \n1q_m[3]_i_6_n_0\,
      O => n1q_m0(3)
    );
\n1q_m[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566656565656"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => n1d(3),
      I2 => n1d(2),
      I3 => n1d(0),
      I4 => n1d(1),
      I5 => \din_q_reg_n_0_[0]\,
      O => \n1q_m[3]_i_10_n_0\
    );
\n1q_m[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566656565656"
    )
        port map (
      I0 => p_0_in,
      I1 => n1d(3),
      I2 => n1d(2),
      I3 => n1d(0),
      I4 => n1d(1),
      I5 => \din_q_reg_n_0_[0]\,
      O => \n1q_m[3]_i_11_n_0\
    );
\n1q_m[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69669969"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => \din_q_reg_n_0_[0]\,
      I2 => p_0_in4_in,
      I3 => p_0_in3_in,
      I4 => decision1,
      O => \n1q_m[3]_i_2_n_0\
    );
\n1q_m[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2DD2D22DB44B4BB4"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => decision1,
      I2 => p_0_in2_in,
      I3 => \q_m_reg[5]_i_2_n_0\,
      I4 => \n1q_m[3]_i_7_n_0\,
      I5 => p_0_in1_in,
      O => \n1q_m[3]_i_3_n_0\
    );
\n1q_m[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => p_0_in2_in,
      I2 => \q_m_reg[5]_i_2_n_0\,
      I3 => \n1q_m[3]_i_7_n_0\,
      O => \n1q_m[3]_i_4_n_0\
    );
\n1q_m[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \n1q_m[3]_i_8_n_0\,
      I1 => \n1q_m[3]_i_9_n_0\,
      I2 => \q_m_reg[5]_i_2_n_0\,
      I3 => \n1q_m[3]_i_7_n_0\,
      I4 => \n1q_m[3]_i_10_n_0\,
      I5 => \n1q_m[3]_i_11_n_0\,
      O => \n1q_m[3]_i_5_n_0\
    );
\n1q_m[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => p_0_in5_in,
      I2 => \din_q_reg_n_0_[0]\,
      O => \n1q_m[3]_i_6_n_0\
    );
\n1q_m[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => p_0_in3_in,
      O => \n1q_m[3]_i_7_n_0\
    );
\n1q_m[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566656565656"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => n1d(3),
      I2 => n1d(2),
      I3 => n1d(0),
      I4 => n1d(1),
      I5 => \din_q_reg_n_0_[0]\,
      O => \n1q_m[3]_i_8_n_0\
    );
\n1q_m[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566656565656"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => n1d(3),
      I2 => n1d(2),
      I3 => n1d(0),
      I4 => n1d(1),
      I5 => \din_q_reg_n_0_[0]\,
      O => \n1q_m[3]_i_9_n_0\
    );
\n1q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => n1q_m0(1),
      Q => n1q_m(1),
      R => '0'
    );
\n1q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n1q_m[2]_i_1_n_0\,
      Q => n1q_m(2),
      R => '0'
    );
\n1q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => n1q_m0(3),
      Q => n1q_m(3),
      R => '0'
    );
\q_m_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999956666"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => \din_q_reg_n_0_[0]\,
      I2 => n1d(1),
      I3 => n1d(0),
      I4 => n1d(2),
      I5 => n1d(3),
      O => \q_m_reg[1]_i_1_n_0\
    );
\q_m_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \din_q_reg_n_0_[0]\,
      I1 => p_0_in5_in,
      I2 => p_0_in4_in,
      O => q_m_2
    );
\q_m_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => \din_q_reg_n_0_[0]\,
      I2 => decision1,
      I3 => p_0_in3_in,
      I4 => p_0_in4_in,
      O => q_m_3
    );
\q_m_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => p_0_in3_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in5_in,
      I4 => p_0_in2_in,
      O => q_m_4
    );
\q_m_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \q_m_reg[5]_i_2_n_0\,
      I2 => p_0_in3_in,
      I3 => p_0_in4_in,
      I4 => p_0_in1_in,
      O => q_m_5
    );
\q_m_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1115EEEEEEEA1111"
    )
        port map (
      I0 => n1d(3),
      I1 => n1d(2),
      I2 => n1d(0),
      I3 => n1d(1),
      I4 => \din_q_reg_n_0_[0]\,
      I5 => p_0_in5_in,
      O => \q_m_reg[5]_i_2_n_0\
    );
\q_m_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => q_m_5,
      I1 => decision1,
      I2 => p_0_in0_in,
      O => q_m_6
    );
\q_m_reg[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFD00"
    )
        port map (
      I0 => \din_q_reg_n_0_[0]\,
      I1 => n1d(1),
      I2 => n1d(0),
      I3 => n1d(2),
      I4 => n1d(3),
      O => decision1
    );
\q_m_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in,
      I1 => q_m_5,
      I2 => p_0_in0_in,
      O => q_m_7
    );
\q_m_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11151111"
    )
        port map (
      I0 => n1d(3),
      I1 => n1d(2),
      I2 => n1d(0),
      I3 => n1d(1),
      I4 => \din_q_reg_n_0_[0]\,
      O => q_m(8)
    );
\q_m_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \din_q_reg_n_0_[0]\,
      Q => \q_m_reg_reg_n_0_[0]\,
      R => '0'
    );
\q_m_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \q_m_reg[1]_i_1_n_0\,
      Q => \q_m_reg_reg_n_0_[1]\,
      R => '0'
    );
\q_m_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_2,
      Q => \q_m_reg_reg_n_0_[2]\,
      R => '0'
    );
\q_m_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_3,
      Q => \q_m_reg_reg_n_0_[3]\,
      R => '0'
    );
\q_m_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_4,
      Q => \q_m_reg_reg_n_0_[4]\,
      R => '0'
    );
\q_m_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_5,
      Q => \q_m_reg_reg_n_0_[5]\,
      R => '0'
    );
\q_m_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_6,
      Q => \q_m_reg_reg_n_0_[6]\,
      R => '0'
    );
\q_m_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_7,
      Q => \q_m_reg_reg_n_0_[7]\,
      R => '0'
    );
\q_m_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m(8),
      Q => q_m_reg(8),
      R => '0'
    );
vid_gb_q_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => vid_gb,
      Q => vid_gb_q,
      R => '0'
    );
vid_gb_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => vid_gb_q,
      Q => \^vid_gb_reg\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_encoder_v2_0_0_encodeg is
  port (
    \dout_reg[8]_0\ : out STD_LOGIC;
    \dout_reg[9]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ctl_code : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_clk : in STD_LOGIC;
    de_reg : in STD_LOGIC;
    vid_gb_reg_reg : in STD_LOGIC;
    vid_gb_reg_reg_0 : in STD_LOGIC;
    vid_gb_reg_reg_1 : in STD_LOGIC;
    vid_gb_reg : in STD_LOGIC;
    green_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_encoder_v2_0_0_encodeg : entity is "encodeg";
end overlay1_dvi_encoder_v2_0_0_encodeg;

architecture STRUCTURE of overlay1_dvi_encoder_v2_0_0_encodeg is
  signal c0_q_reg_n_0 : STD_LOGIC;
  signal c1_q_reg_n_0 : STD_LOGIC;
  signal \cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_10_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_11__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_12__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_13_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_14__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_15__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_16__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_17__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_18__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_19__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_20__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_21__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_22__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_23__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_24__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_7__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_8__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_9__0_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal decision1 : STD_LOGIC;
  signal \din_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \dout[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[2]_i_1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_1_n_0\ : STD_LOGIC;
  signal \dout[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[6]_i_1_n_0\ : STD_LOGIC;
  signal \dout[7]_i_1_n_0\ : STD_LOGIC;
  signal \dout[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[9]_i_1_n_0\ : STD_LOGIC;
  signal \^dout_reg[8]_0\ : STD_LOGIC;
  signal n0q_m : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \n0q_m[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_1__0_n_0\ : STD_LOGIC;
  signal n1d : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \n1d[0]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[0]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[1]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[1]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[2]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[2]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_4_n_0\ : STD_LOGIC;
  signal n1q_m : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \n1q_m[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_10__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_11__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_8__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_9__0_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal q_m_2 : STD_LOGIC;
  signal q_m_3 : STD_LOGIC;
  signal q_m_4 : STD_LOGIC;
  signal q_m_5 : STD_LOGIC;
  signal q_m_6 : STD_LOGIC;
  signal q_m_7 : STD_LOGIC;
  signal q_m_reg : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \q_m_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_reg[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \q_m_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[2]_i_4__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \cnt[3]_i_3__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cnt[3]_i_6__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt[3]_i_7__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \cnt[4]_i_10\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \cnt[4]_i_11__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \cnt[4]_i_12__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \cnt[4]_i_13\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cnt[4]_i_16__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt[4]_i_17__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt[4]_i_18__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \cnt[4]_i_19__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt[4]_i_20__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \cnt[4]_i_24__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \cnt[4]_i_8__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt[4]_i_9__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \n1d[0]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \n1d[3]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_2__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_6__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_7__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \q_m_reg[3]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \q_m_reg[4]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \q_m_reg[5]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \q_m_reg[6]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q_m_reg[6]_i_2__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q_m_reg[8]_i_1__0\ : label is "soft_lutpair23";
begin
  \dout_reg[8]_0\ <= \^dout_reg[8]_0\;
c0_q_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => ctl_code(0),
      Q => c0_q_reg_n_0,
      R => '0'
    );
c0_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => c0_q_reg_n_0,
      Q => \^dout_reg[8]_0\,
      R => '0'
    );
c1_q_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => ctl_code(1),
      Q => c1_q_reg_n_0,
      R => '0'
    );
c1_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => c1_q_reg_n_0,
      Q => \dout_reg[9]_0\,
      R => '0'
    );
\cnt[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C93636C99C63639C"
    )
        port map (
      I0 => \cnt[4]_i_3__0_n_0\,
      I1 => n1q_m(1),
      I2 => q_m_reg(8),
      I3 => n0q_m(1),
      I4 => \cnt_reg_n_0_[1]\,
      I5 => \cnt[4]_i_5__0_n_0\,
      O => \cnt[1]_i_1__0_n_0\
    );
\cnt[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
        port map (
      I0 => \cnt[2]_i_2__0_n_0\,
      I1 => \cnt[4]_i_3__0_n_0\,
      I2 => \cnt[2]_i_3__0_n_0\,
      I3 => \cnt[4]_i_5__0_n_0\,
      I4 => \cnt[2]_i_4__0_n_0\,
      I5 => \cnt[2]_i_5__0_n_0\,
      O => \cnt[2]_i_1__0_n_0\
    );
\cnt[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696696666699666"
    )
        port map (
      I0 => \cnt[3]_i_6__0_n_0\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => n0q_m(1),
      I4 => n1q_m(1),
      I5 => q_m_reg(8),
      O => \cnt[2]_i_2__0_n_0\
    );
\cnt[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669966669996669"
    )
        port map (
      I0 => \cnt[3]_i_6__0_n_0\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => n1q_m(1),
      I4 => n0q_m(1),
      I5 => q_m_reg(8),
      O => \cnt[2]_i_3__0_n_0\
    );
\cnt[2]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BEEB"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => n0q_m(1),
      I2 => q_m_reg(8),
      I3 => n1q_m(1),
      O => \cnt[2]_i_4__0_n_0\
    );
\cnt[2]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => n1q_m(2),
      I1 => n0q_m(2),
      I2 => \cnt_reg_n_0_[2]\,
      I3 => q_m_reg(8),
      I4 => n1q_m(1),
      I5 => n0q_m(1),
      O => \cnt[2]_i_5__0_n_0\
    );
\cnt[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \cnt[3]_i_2__0_n_0\,
      I1 => \cnt[3]_i_3__0_n_0\,
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => \cnt[3]_i_4__0_n_0\,
      I4 => \cnt[4]_i_5__0_n_0\,
      I5 => \cnt[3]_i_5__0_n_0\,
      O => \cnt[3]_i_1__0_n_0\
    );
\cnt[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6660066666F66F66"
    )
        port map (
      I0 => \cnt[3]_i_6__0_n_0\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => q_m_reg(8),
      I3 => n1q_m(1),
      I4 => n0q_m(1),
      I5 => \cnt_reg_n_0_[1]\,
      O => \cnt[3]_i_2__0_n_0\
    );
\cnt[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5965A96A"
    )
        port map (
      I0 => \cnt[4]_i_9__0_n_0\,
      I1 => q_m_reg(8),
      I2 => n1q_m(2),
      I3 => n0q_m(2),
      I4 => \cnt_reg_n_0_[2]\,
      O => \cnt[3]_i_3__0_n_0\
    );
\cnt[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD4002BF02BFFD40"
    )
        port map (
      I0 => \cnt[3]_i_7__0_n_0\,
      I1 => n1q_m(1),
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt[4]_i_19__0_n_0\,
      I4 => \cnt[4]_i_16__0_n_0\,
      I5 => \cnt[4]_i_17__0_n_0\,
      O => \cnt[3]_i_4__0_n_0\
    );
\cnt[3]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF8E08001071F7"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => q_m_reg(8),
      I2 => n1q_m(1),
      I3 => n0q_m(1),
      I4 => \cnt[4]_i_11__0_n_0\,
      I5 => \cnt[4]_i_23__0_n_0\,
      O => \cnt[3]_i_5__0_n_0\
    );
\cnt[3]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => n1q_m(2),
      I1 => n0q_m(2),
      O => \cnt[3]_i_6__0_n_0\
    );
\cnt[3]_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => n0q_m(1),
      I1 => q_m_reg(8),
      O => \cnt[3]_i_7__0_n_0\
    );
\cnt[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2008"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => n0q_m(1),
      I2 => n1q_m(1),
      I3 => q_m_reg(8),
      O => \cnt[4]_i_10_n_0\
    );
\cnt[4]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => n0q_m(2),
      I2 => n1q_m(2),
      O => \cnt[4]_i_11__0_n_0\
    );
\cnt[4]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBEF"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => n0q_m(1),
      I2 => n1q_m(1),
      I3 => q_m_reg(8),
      O => \cnt[4]_i_12__0_n_0\
    );
\cnt[4]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B28E"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => n0q_m(2),
      I2 => n1q_m(2),
      I3 => q_m_reg(8),
      O => \cnt[4]_i_13_n_0\
    );
\cnt[4]_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => n1q_m(2),
      I1 => n0q_m(2),
      I2 => n1q_m(3),
      I3 => n0q_m(3),
      I4 => n1q_m(1),
      I5 => n0q_m(1),
      O => \cnt[4]_i_14__0_n_0\
    );
\cnt[4]_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0FB04B04F04FB4F"
    )
        port map (
      I0 => n1q_m(2),
      I1 => n0q_m(2),
      I2 => \cnt_reg_n_0_[3]\,
      I3 => n0q_m(3),
      I4 => n1q_m(3),
      I5 => \cnt_reg_n_0_[4]\,
      O => \cnt[4]_i_15__0_n_0\
    );
\cnt[4]_i_16__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4BB4B44B"
    )
        port map (
      I0 => n1q_m(2),
      I1 => n0q_m(2),
      I2 => n1q_m(3),
      I3 => n0q_m(3),
      I4 => \cnt_reg_n_0_[3]\,
      O => \cnt[4]_i_16__0_n_0\
    );
\cnt[4]_i_17__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FBFBB0"
    )
        port map (
      I0 => q_m_reg(8),
      I1 => n0q_m(1),
      I2 => \cnt_reg_n_0_[2]\,
      I3 => n0q_m(2),
      I4 => n1q_m(2),
      O => \cnt[4]_i_17__0_n_0\
    );
\cnt[4]_i_18__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => n1q_m(1),
      I2 => n0q_m(1),
      I3 => q_m_reg(8),
      O => \cnt[4]_i_18__0_n_0\
    );
\cnt[4]_i_19__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2DD2D22D"
    )
        port map (
      I0 => n0q_m(1),
      I1 => q_m_reg(8),
      I2 => \cnt_reg_n_0_[2]\,
      I3 => n0q_m(2),
      I4 => n1q_m(2),
      O => \cnt[4]_i_19__0_n_0\
    );
\cnt[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
        port map (
      I0 => \cnt[4]_i_2__0_n_0\,
      I1 => \cnt[4]_i_3__0_n_0\,
      I2 => \cnt[4]_i_4__0_n_0\,
      I3 => \cnt[4]_i_5__0_n_0\,
      I4 => \cnt[4]_i_6__0_n_0\,
      I5 => \cnt[4]_i_7__0_n_0\,
      O => \cnt[4]_i_1__0_n_0\
    );
\cnt[4]_i_20__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9FFF"
    )
        port map (
      I0 => q_m_reg(8),
      I1 => n0q_m(1),
      I2 => n1q_m(1),
      I3 => \cnt_reg_n_0_[1]\,
      O => \cnt[4]_i_20__0_n_0\
    );
\cnt[4]_i_21__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0FBB0FBFFFFB0FB"
    )
        port map (
      I0 => n0q_m(1),
      I1 => n1q_m(1),
      I2 => n0q_m(2),
      I3 => n1q_m(2),
      I4 => n0q_m(3),
      I5 => n1q_m(3),
      O => \cnt[4]_i_21__0_n_0\
    );
\cnt[4]_i_22__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F022F0200002F02"
    )
        port map (
      I0 => n0q_m(1),
      I1 => n1q_m(1),
      I2 => n1q_m(2),
      I3 => n0q_m(2),
      I4 => n1q_m(3),
      I5 => n0q_m(3),
      O => \cnt[4]_i_22__0_n_0\
    );
\cnt[4]_i_23__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696996966996"
    )
        port map (
      I0 => n1q_m(3),
      I1 => n0q_m(3),
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => n1q_m(2),
      I5 => n0q_m(2),
      O => \cnt[4]_i_23__0_n_0\
    );
\cnt[4]_i_24__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => n0q_m(2),
      I1 => n1q_m(2),
      I2 => \cnt_reg_n_0_[2]\,
      O => \cnt[4]_i_24__0_n_0\
    );
\cnt[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55599999999AAAAA"
    )
        port map (
      I0 => \cnt[4]_i_8__1_n_0\,
      I1 => \cnt[4]_i_9__0_n_0\,
      I2 => \cnt[4]_i_10_n_0\,
      I3 => \cnt[4]_i_11__0_n_0\,
      I4 => \cnt[4]_i_12__0_n_0\,
      I5 => \cnt[4]_i_13_n_0\,
      O => \cnt[4]_i_2__0_n_0\
    );
\cnt[4]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt[4]_i_14__0_n_0\,
      O => \cnt[4]_i_3__0_n_0\
    );
\cnt[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A566A6A56565656"
    )
        port map (
      I0 => \cnt[4]_i_15__0_n_0\,
      I1 => \cnt[4]_i_16__0_n_0\,
      I2 => \cnt[4]_i_17__0_n_0\,
      I3 => \cnt[4]_i_18__0_n_0\,
      I4 => \cnt[4]_i_19__0_n_0\,
      I5 => \cnt[4]_i_20__0_n_0\,
      O => \cnt[4]_i_4__0_n_0\
    );
\cnt[4]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2202E2CE"
    )
        port map (
      I0 => \cnt[4]_i_21__0_n_0\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => n1q_m(3),
      I3 => n0q_m(3),
      I4 => \cnt[4]_i_22__0_n_0\,
      O => \cnt[4]_i_5__0_n_0\
    );
\cnt[4]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAFBAABAFBFF"
    )
        port map (
      I0 => \cnt[4]_i_23__0_n_0\,
      I1 => q_m_reg(8),
      I2 => n1q_m(1),
      I3 => n0q_m(1),
      I4 => \cnt[4]_i_11__0_n_0\,
      I5 => \cnt_reg_n_0_[1]\,
      O => \cnt[4]_i_6__0_n_0\
    );
\cnt[4]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56956A56"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => n0q_m(3),
      I3 => n1q_m(3),
      I4 => \cnt[4]_i_24__0_n_0\,
      O => \cnt[4]_i_7__0_n_0\
    );
\cnt[4]_i_8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A69A5695"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => q_m_reg(8),
      I2 => n1q_m(3),
      I3 => n0q_m(3),
      I4 => \cnt_reg_n_0_[3]\,
      O => \cnt[4]_i_8__1_n_0\
    );
\cnt[4]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => n0q_m(3),
      I2 => n1q_m(3),
      O => \cnt[4]_i_9__0_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => E(0),
      D => \cnt[1]_i_1__0_n_0\,
      Q => \cnt_reg_n_0_[1]\,
      R => SR(0)
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => E(0),
      D => \cnt[2]_i_1__0_n_0\,
      Q => \cnt_reg_n_0_[2]\,
      R => SR(0)
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => E(0),
      D => \cnt[3]_i_1__0_n_0\,
      Q => \cnt_reg_n_0_[3]\,
      R => SR(0)
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => E(0),
      D => \cnt[4]_i_1__0_n_0\,
      Q => \cnt_reg_n_0_[4]\,
      R => SR(0)
    );
\din_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => green_din(0),
      Q => \din_q_reg_n_0_[0]\,
      R => '0'
    );
\din_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => green_din(1),
      Q => p_0_in5_in,
      R => '0'
    );
\din_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => green_din(2),
      Q => p_0_in4_in,
      R => '0'
    );
\din_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => green_din(3),
      Q => p_0_in3_in,
      R => '0'
    );
\din_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => green_din(4),
      Q => p_0_in2_in,
      R => '0'
    );
\din_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => green_din(5),
      Q => p_0_in1_in,
      R => '0'
    );
\din_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => green_din(6),
      Q => p_0_in0_in,
      R => '0'
    );
\din_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => green_din(7),
      Q => p_0_in,
      R => '0'
    );
\dout[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA350000FFFFFFFF"
    )
        port map (
      I0 => \cnt[4]_i_5__0_n_0\,
      I1 => q_m_reg(8),
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => \q_m_reg_reg_n_0_[0]\,
      I4 => de_reg,
      I5 => vid_gb_reg_reg,
      O => \dout[0]_i_1__1_n_0\
    );
\dout[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA350000FFFFFFFF"
    )
        port map (
      I0 => \cnt[4]_i_5__0_n_0\,
      I1 => q_m_reg(8),
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => \q_m_reg_reg_n_0_[1]\,
      I4 => de_reg,
      I5 => vid_gb_reg_reg,
      O => \dout[1]_i_1__1_n_0\
    );
\dout[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88288222AAAAAAAA"
    )
        port map (
      I0 => vid_gb_reg_reg,
      I1 => \q_m_reg_reg_n_0_[2]\,
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => q_m_reg(8),
      I4 => \cnt[4]_i_5__0_n_0\,
      I5 => de_reg,
      O => \dout[2]_i_1_n_0\
    );
\dout[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88288222AAAAAAAA"
    )
        port map (
      I0 => vid_gb_reg_reg_0,
      I1 => \q_m_reg_reg_n_0_[3]\,
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => q_m_reg(8),
      I4 => \cnt[4]_i_5__0_n_0\,
      I5 => de_reg,
      O => \dout[3]_i_1_n_0\
    );
\dout[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D55DD5D55D5D5D"
    )
        port map (
      I0 => vid_gb_reg_reg_0,
      I1 => de_reg,
      I2 => \q_m_reg_reg_n_0_[4]\,
      I3 => \cnt[4]_i_3__0_n_0\,
      I4 => q_m_reg(8),
      I5 => \cnt[4]_i_5__0_n_0\,
      O => \dout[4]_i_1__0_n_0\
    );
\dout[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6950000FFFFFFFF"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[5]\,
      I1 => \cnt[4]_i_3__0_n_0\,
      I2 => q_m_reg(8),
      I3 => \cnt[4]_i_5__0_n_0\,
      I4 => de_reg,
      I5 => vid_gb_reg_reg,
      O => \dout[5]_i_1__1_n_0\
    );
\dout[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88288222AAAAAAAA"
    )
        port map (
      I0 => vid_gb_reg_reg,
      I1 => \q_m_reg_reg_n_0_[6]\,
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => q_m_reg(8),
      I4 => \cnt[4]_i_5__0_n_0\,
      I5 => de_reg,
      O => \dout[6]_i_1_n_0\
    );
\dout[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88288222AAAAAAAA"
    )
        port map (
      I0 => vid_gb_reg_reg_0,
      I1 => \q_m_reg_reg_n_0_[7]\,
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => q_m_reg(8),
      I4 => \cnt[4]_i_5__0_n_0\,
      I5 => de_reg,
      O => \dout[7]_i_1_n_0\
    );
\dout[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8B"
    )
        port map (
      I0 => q_m_reg(8),
      I1 => de_reg,
      I2 => \^dout_reg[8]_0\,
      I3 => vid_gb_reg,
      O => \dout[8]_i_1__0_n_0\
    );
\dout[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000035FF"
    )
        port map (
      I0 => \cnt[4]_i_5__0_n_0\,
      I1 => q_m_reg(8),
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => de_reg,
      I4 => vid_gb_reg_reg_1,
      O => \dout[9]_i_1_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[0]_i_1__1_n_0\,
      Q => Q(0),
      R => reset
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[1]_i_1__1_n_0\,
      Q => Q(1),
      R => reset
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[2]_i_1_n_0\,
      Q => Q(2),
      R => reset
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[3]_i_1_n_0\,
      Q => Q(3),
      R => reset
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[4]_i_1__0_n_0\,
      Q => Q(4),
      R => reset
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[5]_i_1__1_n_0\,
      Q => Q(5),
      R => reset
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[6]_i_1_n_0\,
      Q => Q(6),
      R => reset
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[7]_i_1_n_0\,
      Q => Q(7),
      R => reset
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[8]_i_1__0_n_0\,
      Q => Q(8),
      R => reset
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[9]_i_1_n_0\,
      Q => Q(9),
      R => reset
    );
\n0q_m[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669699996666669"
    )
        port map (
      I0 => \n1q_m[3]_i_2__0_n_0\,
      I1 => \n1q_m[3]_i_3__0_n_0\,
      I2 => \n1q_m[3]_i_6__0_n_0\,
      I3 => \n1q_m[3]_i_5__0_n_0\,
      I4 => \n1q_m[3]_i_4__0_n_0\,
      I5 => \din_q_reg_n_0_[0]\,
      O => \n0q_m[1]_i_1__0_n_0\
    );
\n0q_m[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDD4BFFF4000FDD4"
    )
        port map (
      I0 => \din_q_reg_n_0_[0]\,
      I1 => \n1q_m[3]_i_4__0_n_0\,
      I2 => \n1q_m[3]_i_5__0_n_0\,
      I3 => \n1q_m[3]_i_6__0_n_0\,
      I4 => \n1q_m[3]_i_3__0_n_0\,
      I5 => \n1q_m[3]_i_2__0_n_0\,
      O => \n0q_m[2]_i_1__0_n_0\
    );
\n0q_m[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \n1q_m[3]_i_3__0_n_0\,
      I1 => \n1q_m[3]_i_2__0_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_4__0_n_0\,
      I4 => \n1q_m[3]_i_5__0_n_0\,
      I5 => \n1q_m[3]_i_6__0_n_0\,
      O => \n0q_m[3]_i_1__0_n_0\
    );
\n0q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n0q_m[1]_i_1__0_n_0\,
      Q => n0q_m(1),
      R => '0'
    );
\n0q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n0q_m[2]_i_1__0_n_0\,
      Q => n0q_m(2),
      R => '0'
    );
\n0q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n0q_m[3]_i_1__0_n_0\,
      Q => n0q_m(3),
      R => '0'
    );
\n1d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => green_din(0),
      I1 => green_din(7),
      I2 => \n1d[0]_i_2_n_0\,
      I3 => green_din(2),
      I4 => green_din(1),
      I5 => green_din(3),
      O => \n1d[0]_i_1_n_0\
    );
\n1d[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => green_din(6),
      I1 => green_din(4),
      I2 => green_din(5),
      O => \n1d[0]_i_2_n_0\
    );
\n1d[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[1]_i_2_n_0\,
      I2 => \n1d[3]_i_3_n_0\,
      O => \n1d[1]_i_1_n_0\
    );
\n1d[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => green_din(3),
      I1 => green_din(2),
      I2 => green_din(1),
      I3 => green_din(6),
      I4 => green_din(5),
      I5 => green_din(4),
      O => \n1d[1]_i_2_n_0\
    );
\n1d[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => \n1d[2]_i_2_n_0\,
      I3 => green_din(4),
      I4 => green_din(5),
      I5 => green_din(6),
      O => \n1d[2]_i_1_n_0\
    );
\n1d[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => green_din(1),
      I1 => green_din(2),
      I2 => green_din(3),
      O => \n1d[2]_i_2_n_0\
    );
\n1d[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => green_din(3),
      I3 => green_din(2),
      I4 => green_din(1),
      I5 => \n1d[3]_i_4_n_0\,
      O => \n1d[3]_i_1_n_0\
    );
\n1d[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => green_din(2),
      I1 => green_din(1),
      I2 => green_din(3),
      I3 => green_din(0),
      I4 => green_din(7),
      I5 => \n1d[0]_i_2_n_0\,
      O => \n1d[3]_i_2_n_0\
    );
\n1d[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => green_din(7),
      I1 => green_din(0),
      I2 => green_din(5),
      I3 => green_din(4),
      I4 => green_din(6),
      O => \n1d[3]_i_3_n_0\
    );
\n1d[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => green_din(4),
      I1 => green_din(5),
      I2 => green_din(6),
      O => \n1d[3]_i_4_n_0\
    );
\n1d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n1d[0]_i_1_n_0\,
      Q => n1d(0),
      R => '0'
    );
\n1d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n1d[1]_i_1_n_0\,
      Q => n1d(1),
      R => '0'
    );
\n1d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n1d[2]_i_1_n_0\,
      Q => n1d(2),
      R => '0'
    );
\n1d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n1d[3]_i_1_n_0\,
      Q => n1d(3),
      R => '0'
    );
\n1q_m[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96C33C963C96693C"
    )
        port map (
      I0 => \n1q_m[3]_i_6__0_n_0\,
      I1 => \n1q_m[3]_i_3__0_n_0\,
      I2 => \n1q_m[3]_i_2__0_n_0\,
      I3 => \din_q_reg_n_0_[0]\,
      I4 => \n1q_m[3]_i_4__0_n_0\,
      I5 => \n1q_m[3]_i_5__0_n_0\,
      O => \n1q_m[1]_i_1__0_n_0\
    );
\n1q_m[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F17FEFF01007F17"
    )
        port map (
      I0 => \n1q_m[3]_i_6__0_n_0\,
      I1 => \n1q_m[3]_i_5__0_n_0\,
      I2 => \n1q_m[3]_i_4__0_n_0\,
      I3 => \din_q_reg_n_0_[0]\,
      I4 => \n1q_m[3]_i_2__0_n_0\,
      I5 => \n1q_m[3]_i_3__0_n_0\,
      O => \n1q_m[2]_i_1__0_n_0\
    );
\n1q_m[3]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566656565656"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => n1d(3),
      I2 => n1d(2),
      I3 => n1d(0),
      I4 => n1d(1),
      I5 => \din_q_reg_n_0_[0]\,
      O => \n1q_m[3]_i_10__0_n_0\
    );
\n1q_m[3]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566656565656"
    )
        port map (
      I0 => p_0_in,
      I1 => n1d(3),
      I2 => n1d(2),
      I3 => n1d(0),
      I4 => n1d(1),
      I5 => \din_q_reg_n_0_[0]\,
      O => \n1q_m[3]_i_11__0_n_0\
    );
\n1q_m[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \n1q_m[3]_i_2__0_n_0\,
      I1 => \n1q_m[3]_i_3__0_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_4__0_n_0\,
      I4 => \n1q_m[3]_i_5__0_n_0\,
      I5 => \n1q_m[3]_i_6__0_n_0\,
      O => \n1q_m[3]_i_1__0_n_0\
    );
\n1q_m[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69669969"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => \din_q_reg_n_0_[0]\,
      I2 => p_0_in4_in,
      I3 => p_0_in3_in,
      I4 => decision1,
      O => \n1q_m[3]_i_2__0_n_0\
    );
\n1q_m[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2DD2D22DB44B4BB4"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => decision1,
      I2 => p_0_in2_in,
      I3 => \q_m_reg[5]_i_2__0_n_0\,
      I4 => \n1q_m[3]_i_7__0_n_0\,
      I5 => p_0_in1_in,
      O => \n1q_m[3]_i_3__0_n_0\
    );
\n1q_m[3]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => p_0_in2_in,
      I2 => \q_m_reg[5]_i_2__0_n_0\,
      I3 => \n1q_m[3]_i_7__0_n_0\,
      O => \n1q_m[3]_i_4__0_n_0\
    );
\n1q_m[3]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \n1q_m[3]_i_8__0_n_0\,
      I1 => \n1q_m[3]_i_9__0_n_0\,
      I2 => \q_m_reg[5]_i_2__0_n_0\,
      I3 => \n1q_m[3]_i_7__0_n_0\,
      I4 => \n1q_m[3]_i_10__0_n_0\,
      I5 => \n1q_m[3]_i_11__0_n_0\,
      O => \n1q_m[3]_i_5__0_n_0\
    );
\n1q_m[3]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => p_0_in5_in,
      I2 => \din_q_reg_n_0_[0]\,
      O => \n1q_m[3]_i_6__0_n_0\
    );
\n1q_m[3]_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => p_0_in3_in,
      O => \n1q_m[3]_i_7__0_n_0\
    );
\n1q_m[3]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566656565656"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => n1d(3),
      I2 => n1d(2),
      I3 => n1d(0),
      I4 => n1d(1),
      I5 => \din_q_reg_n_0_[0]\,
      O => \n1q_m[3]_i_8__0_n_0\
    );
\n1q_m[3]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566656565656"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => n1d(3),
      I2 => n1d(2),
      I3 => n1d(0),
      I4 => n1d(1),
      I5 => \din_q_reg_n_0_[0]\,
      O => \n1q_m[3]_i_9__0_n_0\
    );
\n1q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n1q_m[1]_i_1__0_n_0\,
      Q => n1q_m(1),
      R => '0'
    );
\n1q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n1q_m[2]_i_1__0_n_0\,
      Q => n1q_m(2),
      R => '0'
    );
\n1q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n1q_m[3]_i_1__0_n_0\,
      Q => n1q_m(3),
      R => '0'
    );
\q_m_reg[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999956666"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => \din_q_reg_n_0_[0]\,
      I2 => n1d(1),
      I3 => n1d(0),
      I4 => n1d(2),
      I5 => n1d(3),
      O => \q_m_reg[1]_i_1__0_n_0\
    );
\q_m_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \din_q_reg_n_0_[0]\,
      I1 => p_0_in5_in,
      I2 => p_0_in4_in,
      O => q_m_2
    );
\q_m_reg[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => \din_q_reg_n_0_[0]\,
      I2 => decision1,
      I3 => p_0_in3_in,
      I4 => p_0_in4_in,
      O => q_m_3
    );
\q_m_reg[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => p_0_in3_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in5_in,
      I4 => p_0_in2_in,
      O => q_m_4
    );
\q_m_reg[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \q_m_reg[5]_i_2__0_n_0\,
      I2 => p_0_in3_in,
      I3 => p_0_in4_in,
      I4 => p_0_in1_in,
      O => q_m_5
    );
\q_m_reg[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1115EEEEEEEA1111"
    )
        port map (
      I0 => n1d(3),
      I1 => n1d(2),
      I2 => n1d(0),
      I3 => n1d(1),
      I4 => \din_q_reg_n_0_[0]\,
      I5 => p_0_in5_in,
      O => \q_m_reg[5]_i_2__0_n_0\
    );
\q_m_reg[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => q_m_5,
      I1 => decision1,
      I2 => p_0_in0_in,
      O => q_m_6
    );
\q_m_reg[6]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFD00"
    )
        port map (
      I0 => \din_q_reg_n_0_[0]\,
      I1 => n1d(1),
      I2 => n1d(0),
      I3 => n1d(2),
      I4 => n1d(3),
      O => decision1
    );
\q_m_reg[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in,
      I1 => q_m_5,
      I2 => p_0_in0_in,
      O => q_m_7
    );
\q_m_reg[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11151111"
    )
        port map (
      I0 => n1d(3),
      I1 => n1d(2),
      I2 => n1d(0),
      I3 => n1d(1),
      I4 => \din_q_reg_n_0_[0]\,
      O => \q_m_reg[8]_i_1__0_n_0\
    );
\q_m_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \din_q_reg_n_0_[0]\,
      Q => \q_m_reg_reg_n_0_[0]\,
      R => '0'
    );
\q_m_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \q_m_reg[1]_i_1__0_n_0\,
      Q => \q_m_reg_reg_n_0_[1]\,
      R => '0'
    );
\q_m_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_2,
      Q => \q_m_reg_reg_n_0_[2]\,
      R => '0'
    );
\q_m_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_3,
      Q => \q_m_reg_reg_n_0_[3]\,
      R => '0'
    );
\q_m_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_4,
      Q => \q_m_reg_reg_n_0_[4]\,
      R => '0'
    );
\q_m_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_5,
      Q => \q_m_reg_reg_n_0_[5]\,
      R => '0'
    );
\q_m_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_6,
      Q => \q_m_reg_reg_n_0_[6]\,
      R => '0'
    );
\q_m_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_7,
      Q => \q_m_reg_reg_n_0_[7]\,
      R => '0'
    );
\q_m_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \q_m_reg[8]_i_1__0_n_0\,
      Q => q_m_reg(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_encoder_v2_0_0_encoder is
  port (
    \dout_reg[8]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ctl_code : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_clk : in STD_LOGIC;
    de_reg : in STD_LOGIC;
    vid_gb_reg_reg : in STD_LOGIC;
    vid_gb_reg_reg_0 : in STD_LOGIC;
    vid_gb_reg : in STD_LOGIC;
    red_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_encoder_v2_0_0_encoder : entity is "encoder";
end overlay1_dvi_encoder_v2_0_0_encoder;

architecture STRUCTURE of overlay1_dvi_encoder_v2_0_0_encoder is
  signal c0_q_reg_n_0 : STD_LOGIC;
  signal c1_q_reg_n_0 : STD_LOGIC;
  signal c1_reg_reg_n_0 : STD_LOGIC;
  signal \cnt[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_5__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_6__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_10__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_11__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_12__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_13__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_14__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_15__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_16__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_17__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_18__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_19__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_20__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_21__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_22__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_23__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_24__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_5__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_6__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_7__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_8__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_9__1_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal decision1 : STD_LOGIC;
  signal \din_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \dout[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[9]_i_2__1_n_0\ : STD_LOGIC;
  signal \^dout_reg[8]_0\ : STD_LOGIC;
  signal n0q_m : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \n0q_m[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_1__1_n_0\ : STD_LOGIC;
  signal n1d : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \n1d[0]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[0]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[1]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[1]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[2]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[2]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_4_n_0\ : STD_LOGIC;
  signal n1q_m : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \n1q_m[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_10__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_11__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_6__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_7__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_8__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_9__1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal q_m_2 : STD_LOGIC;
  signal q_m_3 : STD_LOGIC;
  signal q_m_4 : STD_LOGIC;
  signal q_m_5 : STD_LOGIC;
  signal q_m_6 : STD_LOGIC;
  signal q_m_7 : STD_LOGIC;
  signal q_m_reg : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \q_m_reg[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_reg[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \q_m_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[2]_i_2__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \cnt[2]_i_4__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cnt[2]_i_5__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \cnt[3]_i_2__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cnt[3]_i_3__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \cnt[4]_i_10__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \cnt[4]_i_11__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cnt[4]_i_12__1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \cnt[4]_i_13__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \cnt[4]_i_16__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cnt[4]_i_20__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \cnt[4]_i_21__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \cnt[4]_i_22__1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \cnt[4]_i_23__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \cnt[4]_i_24__1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \cnt[4]_i_9__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \dout[8]_i_1__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \dout[9]_i_2__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \n1d[0]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \n1d[3]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_2__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_6__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_7__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \q_m_reg[3]_i_1__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \q_m_reg[4]_i_1__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q_m_reg[5]_i_1__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \q_m_reg[6]_i_1__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \q_m_reg[6]_i_2__1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_1__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \q_m_reg[8]_i_1__1\ : label is "soft_lutpair41";
begin
  \dout_reg[8]_0\ <= \^dout_reg[8]_0\;
c0_q_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => ctl_code(0),
      Q => c0_q_reg_n_0,
      R => '0'
    );
c0_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => c0_q_reg_n_0,
      Q => \^dout_reg[8]_0\,
      R => '0'
    );
c1_q_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => ctl_code(1),
      Q => c1_q_reg_n_0,
      R => '0'
    );
c1_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => c1_q_reg_n_0,
      Q => c1_reg_reg_n_0,
      R => '0'
    );
\cnt[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B44B4BB4E11E1EE1"
    )
        port map (
      I0 => \cnt[4]_i_3__1_n_0\,
      I1 => q_m_reg(8),
      I2 => n1q_m(1),
      I3 => n0q_m(1),
      I4 => \cnt_reg_n_0_[1]\,
      I5 => \cnt[4]_i_6__1_n_0\,
      O => \cnt[1]_i_1__1_n_0\
    );
\cnt[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8BBBB8BB88888"
    )
        port map (
      I0 => \cnt[2]_i_2__1_n_0\,
      I1 => \cnt[4]_i_3__1_n_0\,
      I2 => \cnt[2]_i_3__1_n_0\,
      I3 => \cnt[2]_i_4__1_n_0\,
      I4 => \cnt[4]_i_6__1_n_0\,
      I5 => \cnt[2]_i_5__1_n_0\,
      O => \cnt[2]_i_1__1_n_0\
    );
\cnt[2]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"59655695"
    )
        port map (
      I0 => \cnt[4]_i_11__1_n_0\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => n0q_m(1),
      I3 => n1q_m(1),
      I4 => q_m_reg(8),
      O => \cnt[2]_i_2__1_n_0\
    );
\cnt[2]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696996966996"
    )
        port map (
      I0 => n1q_m(2),
      I1 => n0q_m(2),
      I2 => \cnt_reg_n_0_[2]\,
      I3 => q_m_reg(8),
      I4 => n1q_m(1),
      I5 => n0q_m(1),
      O => \cnt[2]_i_3__1_n_0\
    );
\cnt[2]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4114"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => n0q_m(1),
      I2 => n1q_m(1),
      I3 => q_m_reg(8),
      O => \cnt[2]_i_4__1_n_0\
    );
\cnt[2]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"566A9556"
    )
        port map (
      I0 => \cnt[4]_i_11__1_n_0\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => n1q_m(1),
      I3 => q_m_reg(8),
      I4 => n0q_m(1),
      O => \cnt[2]_i_5__1_n_0\
    );
\cnt[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \cnt[3]_i_2__1_n_0\,
      I1 => \cnt[3]_i_3__1_n_0\,
      I2 => \cnt[4]_i_3__1_n_0\,
      I3 => \cnt[3]_i_4__1_n_0\,
      I4 => \cnt[4]_i_6__1_n_0\,
      I5 => \cnt[3]_i_5__1_n_0\,
      O => \cnt[3]_i_1__1_n_0\
    );
\cnt[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54155D75"
    )
        port map (
      I0 => \cnt[4]_i_11__1_n_0\,
      I1 => q_m_reg(8),
      I2 => n1q_m(1),
      I3 => n0q_m(1),
      I4 => \cnt_reg_n_0_[1]\,
      O => \cnt[3]_i_2__1_n_0\
    );
\cnt[3]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5965A96A"
    )
        port map (
      I0 => \cnt[4]_i_13__0_n_0\,
      I1 => q_m_reg(8),
      I2 => n1q_m(2),
      I3 => n0q_m(2),
      I4 => \cnt_reg_n_0_[2]\,
      O => \cnt[3]_i_3__1_n_0\
    );
\cnt[3]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9AA99A999A99599"
    )
        port map (
      I0 => \cnt[4]_i_15__1_n_0\,
      I1 => \cnt[4]_i_11__1_n_0\,
      I2 => q_m_reg(8),
      I3 => n1q_m(1),
      I4 => n0q_m(1),
      I5 => \cnt_reg_n_0_[1]\,
      O => \cnt[3]_i_4__1_n_0\
    );
\cnt[3]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE80017F017FFE80"
    )
        port map (
      I0 => \cnt[3]_i_6__1_n_0\,
      I1 => n1q_m(1),
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt[4]_i_23__1_n_0\,
      I4 => \cnt[4]_i_20__1_n_0\,
      I5 => \cnt[4]_i_21__1_n_0\,
      O => \cnt[3]_i_5__1_n_0\
    );
\cnt[3]_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => n0q_m(1),
      I1 => q_m_reg(8),
      O => \cnt[3]_i_6__1_n_0\
    );
\cnt[4]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBEF"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => n0q_m(1),
      I2 => n1q_m(1),
      I3 => q_m_reg(8),
      O => \cnt[4]_i_10__0_n_0\
    );
\cnt[4]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => n0q_m(2),
      I2 => n1q_m(2),
      O => \cnt[4]_i_11__1_n_0\
    );
\cnt[4]_i_12__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2008"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => n0q_m(1),
      I2 => n1q_m(1),
      I3 => q_m_reg(8),
      O => \cnt[4]_i_12__1_n_0\
    );
\cnt[4]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => n0q_m(3),
      I2 => n1q_m(3),
      O => \cnt[4]_i_13__0_n_0\
    );
\cnt[4]_i_14__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => n0q_m(2),
      I1 => n1q_m(2),
      I2 => n0q_m(1),
      I3 => n1q_m(1),
      I4 => n1q_m(3),
      I5 => n0q_m(3),
      O => \cnt[4]_i_14__1_n_0\
    );
\cnt[4]_i_15__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696996966996"
    )
        port map (
      I0 => n1q_m(3),
      I1 => n0q_m(3),
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => n1q_m(2),
      I5 => n0q_m(2),
      O => \cnt[4]_i_15__1_n_0\
    );
\cnt[4]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => n0q_m(2),
      I1 => n1q_m(2),
      I2 => \cnt_reg_n_0_[2]\,
      O => \cnt[4]_i_16__1_n_0\
    );
\cnt[4]_i_17__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF2FFFFF2222FF2F"
    )
        port map (
      I0 => n1q_m(3),
      I1 => n0q_m(3),
      I2 => n0q_m(1),
      I3 => n1q_m(1),
      I4 => n0q_m(2),
      I5 => n1q_m(2),
      O => \cnt[4]_i_17__1_n_0\
    );
\cnt[4]_i_18__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFD00F0FFFFDDFD"
    )
        port map (
      I0 => n1q_m(1),
      I1 => n0q_m(1),
      I2 => n0q_m(3),
      I3 => n1q_m(3),
      I4 => n0q_m(2),
      I5 => n1q_m(2),
      O => \cnt[4]_i_18__1_n_0\
    );
\cnt[4]_i_19__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0FB04B04F04FB4F"
    )
        port map (
      I0 => n1q_m(2),
      I1 => n0q_m(2),
      I2 => \cnt_reg_n_0_[3]\,
      I3 => n0q_m(3),
      I4 => n1q_m(3),
      I5 => \cnt_reg_n_0_[4]\,
      O => \cnt[4]_i_19__1_n_0\
    );
\cnt[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8BBBB8BB88888"
    )
        port map (
      I0 => \cnt[4]_i_2__1_n_0\,
      I1 => \cnt[4]_i_3__1_n_0\,
      I2 => \cnt[4]_i_4__1_n_0\,
      I3 => \cnt[4]_i_5__1_n_0\,
      I4 => \cnt[4]_i_6__1_n_0\,
      I5 => \cnt[4]_i_7__1_n_0\,
      O => \cnt[4]_i_1__1_n_0\
    );
\cnt[4]_i_20__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4BB4B44B"
    )
        port map (
      I0 => n1q_m(2),
      I1 => n0q_m(2),
      I2 => n1q_m(3),
      I3 => n0q_m(3),
      I4 => \cnt_reg_n_0_[3]\,
      O => \cnt[4]_i_20__1_n_0\
    );
\cnt[4]_i_21__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6F660F6"
    )
        port map (
      I0 => n0q_m(2),
      I1 => n1q_m(2),
      I2 => \cnt_reg_n_0_[2]\,
      I3 => n0q_m(1),
      I4 => q_m_reg(8),
      O => \cnt[4]_i_21__1_n_0\
    );
\cnt[4]_i_22__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => n1q_m(1),
      I2 => q_m_reg(8),
      I3 => n0q_m(1),
      O => \cnt[4]_i_22__1_n_0\
    );
\cnt[4]_i_23__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => n1q_m(2),
      I1 => n0q_m(2),
      I2 => \cnt_reg_n_0_[2]\,
      I3 => q_m_reg(8),
      I4 => n0q_m(1),
      O => \cnt[4]_i_23__1_n_0\
    );
\cnt[4]_i_24__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F77F"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => n1q_m(1),
      I2 => q_m_reg(8),
      I3 => n0q_m(1),
      O => \cnt[4]_i_24__1_n_0\
    );
\cnt[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"95959555A9A9A999"
    )
        port map (
      I0 => \cnt[4]_i_8__0_n_0\,
      I1 => \cnt[4]_i_9__1_n_0\,
      I2 => \cnt[4]_i_10__0_n_0\,
      I3 => \cnt[4]_i_11__1_n_0\,
      I4 => \cnt[4]_i_12__1_n_0\,
      I5 => \cnt[4]_i_13__0_n_0\,
      O => \cnt[4]_i_2__1_n_0\
    );
\cnt[4]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \cnt[4]_i_14__1_n_0\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt_reg_n_0_[1]\,
      O => \cnt[4]_i_3__1_n_0\
    );
\cnt[4]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAABBABBBABBFBB"
    )
        port map (
      I0 => \cnt[4]_i_15__1_n_0\,
      I1 => \cnt[4]_i_11__1_n_0\,
      I2 => q_m_reg(8),
      I3 => n1q_m(1),
      I4 => n0q_m(1),
      I5 => \cnt_reg_n_0_[1]\,
      O => \cnt[4]_i_4__1_n_0\
    );
\cnt[4]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56956A56"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => n0q_m(3),
      I3 => n1q_m(3),
      I4 => \cnt[4]_i_16__1_n_0\,
      O => \cnt[4]_i_5__1_n_0\
    );
\cnt[4]_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47C477F7"
    )
        port map (
      I0 => \cnt[4]_i_17__1_n_0\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => n0q_m(3),
      I3 => n1q_m(3),
      I4 => \cnt[4]_i_18__1_n_0\,
      O => \cnt[4]_i_6__1_n_0\
    );
\cnt[4]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A566A6A56565656"
    )
        port map (
      I0 => \cnt[4]_i_19__1_n_0\,
      I1 => \cnt[4]_i_20__1_n_0\,
      I2 => \cnt[4]_i_21__1_n_0\,
      I3 => \cnt[4]_i_22__1_n_0\,
      I4 => \cnt[4]_i_23__1_n_0\,
      I5 => \cnt[4]_i_24__1_n_0\,
      O => \cnt[4]_i_7__1_n_0\
    );
\cnt[4]_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5965A96A"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => q_m_reg(8),
      I2 => n1q_m(3),
      I3 => n0q_m(3),
      I4 => \cnt_reg_n_0_[3]\,
      O => \cnt[4]_i_8__0_n_0\
    );
\cnt[4]_i_9__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B28E"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => n0q_m(2),
      I2 => n1q_m(2),
      I3 => q_m_reg(8),
      O => \cnt[4]_i_9__1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => E(0),
      D => \cnt[1]_i_1__1_n_0\,
      Q => \cnt_reg_n_0_[1]\,
      R => SR(0)
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => E(0),
      D => \cnt[2]_i_1__1_n_0\,
      Q => \cnt_reg_n_0_[2]\,
      R => SR(0)
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => E(0),
      D => \cnt[3]_i_1__1_n_0\,
      Q => \cnt_reg_n_0_[3]\,
      R => SR(0)
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => E(0),
      D => \cnt[4]_i_1__1_n_0\,
      Q => \cnt_reg_n_0_[4]\,
      R => SR(0)
    );
\din_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => red_din(0),
      Q => \din_q_reg_n_0_[0]\,
      R => '0'
    );
\din_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => red_din(1),
      Q => p_0_in5_in,
      R => '0'
    );
\din_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => red_din(2),
      Q => p_0_in4_in,
      R => '0'
    );
\din_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => red_din(3),
      Q => p_0_in3_in,
      R => '0'
    );
\din_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => red_din(4),
      Q => p_0_in2_in,
      R => '0'
    );
\din_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => red_din(5),
      Q => p_0_in1_in,
      R => '0'
    );
\din_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => red_din(6),
      Q => p_0_in0_in,
      R => '0'
    );
\din_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => red_din(7),
      Q => p_0_in,
      R => '0'
    );
\dout[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82228288AAAAAAAA"
    )
        port map (
      I0 => vid_gb_reg_reg,
      I1 => \q_m_reg_reg_n_0_[0]\,
      I2 => q_m_reg(8),
      I3 => \cnt[4]_i_3__1_n_0\,
      I4 => \cnt[4]_i_6__1_n_0\,
      I5 => de_reg,
      O => \dout[0]_i_1__0_n_0\
    );
\dout[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82228288AAAAAAAA"
    )
        port map (
      I0 => vid_gb_reg_reg,
      I1 => \q_m_reg_reg_n_0_[1]\,
      I2 => q_m_reg(8),
      I3 => \cnt[4]_i_3__1_n_0\,
      I4 => \cnt[4]_i_6__1_n_0\,
      I5 => de_reg,
      O => \dout[1]_i_1__0_n_0\
    );
\dout[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6560000FFFFFFFF"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[2]\,
      I1 => \cnt[4]_i_6__1_n_0\,
      I2 => \cnt[4]_i_3__1_n_0\,
      I3 => q_m_reg(8),
      I4 => de_reg,
      I5 => vid_gb_reg_reg,
      O => \dout[2]_i_1__1_n_0\
    );
\dout[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6560000FFFFFFFF"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[3]\,
      I1 => \cnt[4]_i_6__1_n_0\,
      I2 => \cnt[4]_i_3__1_n_0\,
      I3 => q_m_reg(8),
      I4 => de_reg,
      I5 => vid_gb_reg_reg_0,
      O => \dout[3]_i_1__1_n_0\
    );
\dout[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82228288AAAAAAAA"
    )
        port map (
      I0 => vid_gb_reg_reg_0,
      I1 => \q_m_reg_reg_n_0_[4]\,
      I2 => q_m_reg(8),
      I3 => \cnt[4]_i_3__1_n_0\,
      I4 => \cnt[4]_i_6__1_n_0\,
      I5 => de_reg,
      O => \dout[4]_i_1__1_n_0\
    );
\dout[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82228288AAAAAAAA"
    )
        port map (
      I0 => vid_gb_reg_reg,
      I1 => \q_m_reg_reg_n_0_[5]\,
      I2 => q_m_reg(8),
      I3 => \cnt[4]_i_3__1_n_0\,
      I4 => \cnt[4]_i_6__1_n_0\,
      I5 => de_reg,
      O => \dout[5]_i_1__0_n_0\
    );
\dout[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"959A0000FFFFFFFF"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[6]\,
      I1 => q_m_reg(8),
      I2 => \cnt[4]_i_3__1_n_0\,
      I3 => \cnt[4]_i_6__1_n_0\,
      I4 => de_reg,
      I5 => vid_gb_reg_reg,
      O => \dout[6]_i_1__1_n_0\
    );
\dout[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"959A0000FFFFFFFF"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[7]\,
      I1 => q_m_reg(8),
      I2 => \cnt[4]_i_3__1_n_0\,
      I3 => \cnt[4]_i_6__1_n_0\,
      I4 => de_reg,
      I5 => vid_gb_reg_reg_0,
      O => \dout[7]_i_1__1_n_0\
    );
\dout[8]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3011"
    )
        port map (
      I0 => \^dout_reg[8]_0\,
      I1 => vid_gb_reg,
      I2 => q_m_reg(8),
      I3 => de_reg,
      O => \dout[8]_i_1__1_n_0\
    );
\dout[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFBABFBFBFBAB"
    )
        port map (
      I0 => vid_gb_reg,
      I1 => \dout[9]_i_2__1_n_0\,
      I2 => de_reg,
      I3 => \cnt[4]_i_6__1_n_0\,
      I4 => \cnt[4]_i_3__1_n_0\,
      I5 => q_m_reg(8),
      O => \dout[9]_i_1__1_n_0\
    );
\dout[9]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^dout_reg[8]_0\,
      I1 => c1_reg_reg_n_0,
      O => \dout[9]_i_2__1_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[0]_i_1__0_n_0\,
      Q => Q(0),
      R => reset
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[1]_i_1__0_n_0\,
      Q => Q(1),
      R => reset
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[2]_i_1__1_n_0\,
      Q => Q(2),
      R => reset
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[3]_i_1__1_n_0\,
      Q => Q(3),
      R => reset
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[4]_i_1__1_n_0\,
      Q => Q(4),
      R => reset
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[5]_i_1__0_n_0\,
      Q => Q(5),
      R => reset
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[6]_i_1__1_n_0\,
      Q => Q(6),
      R => reset
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[7]_i_1__1_n_0\,
      Q => Q(7),
      R => reset
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[8]_i_1__1_n_0\,
      Q => Q(8),
      R => reset
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \dout[9]_i_1__1_n_0\,
      Q => Q(9),
      R => reset
    );
\n0q_m[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669699996666669"
    )
        port map (
      I0 => \n1q_m[3]_i_2__1_n_0\,
      I1 => \n1q_m[3]_i_3__1_n_0\,
      I2 => \n1q_m[3]_i_6__1_n_0\,
      I3 => \n1q_m[3]_i_5__1_n_0\,
      I4 => \n1q_m[3]_i_4__1_n_0\,
      I5 => \din_q_reg_n_0_[0]\,
      O => \n0q_m[1]_i_1__1_n_0\
    );
\n0q_m[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDD4BFFF4000FDD4"
    )
        port map (
      I0 => \din_q_reg_n_0_[0]\,
      I1 => \n1q_m[3]_i_4__1_n_0\,
      I2 => \n1q_m[3]_i_5__1_n_0\,
      I3 => \n1q_m[3]_i_6__1_n_0\,
      I4 => \n1q_m[3]_i_3__1_n_0\,
      I5 => \n1q_m[3]_i_2__1_n_0\,
      O => \n0q_m[2]_i_1__1_n_0\
    );
\n0q_m[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \n1q_m[3]_i_3__1_n_0\,
      I1 => \n1q_m[3]_i_2__1_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_4__1_n_0\,
      I4 => \n1q_m[3]_i_5__1_n_0\,
      I5 => \n1q_m[3]_i_6__1_n_0\,
      O => \n0q_m[3]_i_1__1_n_0\
    );
\n0q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n0q_m[1]_i_1__1_n_0\,
      Q => n0q_m(1),
      R => '0'
    );
\n0q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n0q_m[2]_i_1__1_n_0\,
      Q => n0q_m(2),
      R => '0'
    );
\n0q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n0q_m[3]_i_1__1_n_0\,
      Q => n0q_m(3),
      R => '0'
    );
\n1d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => red_din(0),
      I1 => red_din(7),
      I2 => \n1d[0]_i_2_n_0\,
      I3 => red_din(2),
      I4 => red_din(1),
      I5 => red_din(3),
      O => \n1d[0]_i_1_n_0\
    );
\n1d[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => red_din(6),
      I1 => red_din(4),
      I2 => red_din(5),
      O => \n1d[0]_i_2_n_0\
    );
\n1d[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[1]_i_2_n_0\,
      I2 => \n1d[3]_i_3_n_0\,
      O => \n1d[1]_i_1_n_0\
    );
\n1d[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => red_din(3),
      I1 => red_din(2),
      I2 => red_din(1),
      I3 => red_din(6),
      I4 => red_din(5),
      I5 => red_din(4),
      O => \n1d[1]_i_2_n_0\
    );
\n1d[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => \n1d[2]_i_2_n_0\,
      I3 => red_din(4),
      I4 => red_din(5),
      I5 => red_din(6),
      O => \n1d[2]_i_1_n_0\
    );
\n1d[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => red_din(1),
      I1 => red_din(2),
      I2 => red_din(3),
      O => \n1d[2]_i_2_n_0\
    );
\n1d[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => red_din(3),
      I3 => red_din(2),
      I4 => red_din(1),
      I5 => \n1d[3]_i_4_n_0\,
      O => \n1d[3]_i_1_n_0\
    );
\n1d[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => red_din(2),
      I1 => red_din(1),
      I2 => red_din(3),
      I3 => red_din(0),
      I4 => red_din(7),
      I5 => \n1d[0]_i_2_n_0\,
      O => \n1d[3]_i_2_n_0\
    );
\n1d[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => red_din(7),
      I1 => red_din(0),
      I2 => red_din(5),
      I3 => red_din(4),
      I4 => red_din(6),
      O => \n1d[3]_i_3_n_0\
    );
\n1d[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => red_din(4),
      I1 => red_din(5),
      I2 => red_din(6),
      O => \n1d[3]_i_4_n_0\
    );
\n1d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n1d[0]_i_1_n_0\,
      Q => n1d(0),
      R => '0'
    );
\n1d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n1d[1]_i_1_n_0\,
      Q => n1d(1),
      R => '0'
    );
\n1d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n1d[2]_i_1_n_0\,
      Q => n1d(2),
      R => '0'
    );
\n1d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n1d[3]_i_1_n_0\,
      Q => n1d(3),
      R => '0'
    );
\n1q_m[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96C33C963C96693C"
    )
        port map (
      I0 => \n1q_m[3]_i_6__1_n_0\,
      I1 => \n1q_m[3]_i_3__1_n_0\,
      I2 => \n1q_m[3]_i_2__1_n_0\,
      I3 => \din_q_reg_n_0_[0]\,
      I4 => \n1q_m[3]_i_4__1_n_0\,
      I5 => \n1q_m[3]_i_5__1_n_0\,
      O => \n1q_m[1]_i_1__1_n_0\
    );
\n1q_m[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F17FEFF01007F17"
    )
        port map (
      I0 => \n1q_m[3]_i_6__1_n_0\,
      I1 => \n1q_m[3]_i_5__1_n_0\,
      I2 => \n1q_m[3]_i_4__1_n_0\,
      I3 => \din_q_reg_n_0_[0]\,
      I4 => \n1q_m[3]_i_2__1_n_0\,
      I5 => \n1q_m[3]_i_3__1_n_0\,
      O => \n1q_m[2]_i_1__1_n_0\
    );
\n1q_m[3]_i_10__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566656565656"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => n1d(3),
      I2 => n1d(2),
      I3 => n1d(0),
      I4 => n1d(1),
      I5 => \din_q_reg_n_0_[0]\,
      O => \n1q_m[3]_i_10__1_n_0\
    );
\n1q_m[3]_i_11__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566656565656"
    )
        port map (
      I0 => p_0_in,
      I1 => n1d(3),
      I2 => n1d(2),
      I3 => n1d(0),
      I4 => n1d(1),
      I5 => \din_q_reg_n_0_[0]\,
      O => \n1q_m[3]_i_11__1_n_0\
    );
\n1q_m[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \n1q_m[3]_i_2__1_n_0\,
      I1 => \n1q_m[3]_i_3__1_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_4__1_n_0\,
      I4 => \n1q_m[3]_i_5__1_n_0\,
      I5 => \n1q_m[3]_i_6__1_n_0\,
      O => \n1q_m[3]_i_1__1_n_0\
    );
\n1q_m[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69669969"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => \din_q_reg_n_0_[0]\,
      I2 => p_0_in4_in,
      I3 => p_0_in3_in,
      I4 => decision1,
      O => \n1q_m[3]_i_2__1_n_0\
    );
\n1q_m[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2DD2D22DB44B4BB4"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => decision1,
      I2 => p_0_in2_in,
      I3 => \q_m_reg[5]_i_2__1_n_0\,
      I4 => \n1q_m[3]_i_7__1_n_0\,
      I5 => p_0_in1_in,
      O => \n1q_m[3]_i_3__1_n_0\
    );
\n1q_m[3]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => p_0_in2_in,
      I2 => \q_m_reg[5]_i_2__1_n_0\,
      I3 => \n1q_m[3]_i_7__1_n_0\,
      O => \n1q_m[3]_i_4__1_n_0\
    );
\n1q_m[3]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \n1q_m[3]_i_8__1_n_0\,
      I1 => \n1q_m[3]_i_9__1_n_0\,
      I2 => \q_m_reg[5]_i_2__1_n_0\,
      I3 => \n1q_m[3]_i_7__1_n_0\,
      I4 => \n1q_m[3]_i_10__1_n_0\,
      I5 => \n1q_m[3]_i_11__1_n_0\,
      O => \n1q_m[3]_i_5__1_n_0\
    );
\n1q_m[3]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => p_0_in5_in,
      I2 => \din_q_reg_n_0_[0]\,
      O => \n1q_m[3]_i_6__1_n_0\
    );
\n1q_m[3]_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => p_0_in3_in,
      O => \n1q_m[3]_i_7__1_n_0\
    );
\n1q_m[3]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566656565656"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => n1d(3),
      I2 => n1d(2),
      I3 => n1d(0),
      I4 => n1d(1),
      I5 => \din_q_reg_n_0_[0]\,
      O => \n1q_m[3]_i_8__1_n_0\
    );
\n1q_m[3]_i_9__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566656565656"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => n1d(3),
      I2 => n1d(2),
      I3 => n1d(0),
      I4 => n1d(1),
      I5 => \din_q_reg_n_0_[0]\,
      O => \n1q_m[3]_i_9__1_n_0\
    );
\n1q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n1q_m[1]_i_1__1_n_0\,
      Q => n1q_m(1),
      R => '0'
    );
\n1q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n1q_m[2]_i_1__1_n_0\,
      Q => n1q_m(2),
      R => '0'
    );
\n1q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \n1q_m[3]_i_1__1_n_0\,
      Q => n1q_m(3),
      R => '0'
    );
\q_m_reg[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999956666"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => \din_q_reg_n_0_[0]\,
      I2 => n1d(1),
      I3 => n1d(0),
      I4 => n1d(2),
      I5 => n1d(3),
      O => \q_m_reg[1]_i_1__1_n_0\
    );
\q_m_reg[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \din_q_reg_n_0_[0]\,
      I1 => p_0_in5_in,
      I2 => p_0_in4_in,
      O => q_m_2
    );
\q_m_reg[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => \din_q_reg_n_0_[0]\,
      I2 => decision1,
      I3 => p_0_in3_in,
      I4 => p_0_in4_in,
      O => q_m_3
    );
\q_m_reg[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => p_0_in3_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in5_in,
      I4 => p_0_in2_in,
      O => q_m_4
    );
\q_m_reg[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \q_m_reg[5]_i_2__1_n_0\,
      I2 => p_0_in3_in,
      I3 => p_0_in4_in,
      I4 => p_0_in1_in,
      O => q_m_5
    );
\q_m_reg[5]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1115EEEEEEEA1111"
    )
        port map (
      I0 => n1d(3),
      I1 => n1d(2),
      I2 => n1d(0),
      I3 => n1d(1),
      I4 => \din_q_reg_n_0_[0]\,
      I5 => p_0_in5_in,
      O => \q_m_reg[5]_i_2__1_n_0\
    );
\q_m_reg[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => q_m_5,
      I1 => decision1,
      I2 => p_0_in0_in,
      O => q_m_6
    );
\q_m_reg[6]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFD00"
    )
        port map (
      I0 => \din_q_reg_n_0_[0]\,
      I1 => n1d(1),
      I2 => n1d(0),
      I3 => n1d(2),
      I4 => n1d(3),
      O => decision1
    );
\q_m_reg[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in,
      I1 => q_m_5,
      I2 => p_0_in0_in,
      O => q_m_7
    );
\q_m_reg[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11151111"
    )
        port map (
      I0 => n1d(3),
      I1 => n1d(2),
      I2 => n1d(0),
      I3 => n1d(1),
      I4 => \din_q_reg_n_0_[0]\,
      O => \q_m_reg[8]_i_1__1_n_0\
    );
\q_m_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \din_q_reg_n_0_[0]\,
      Q => \q_m_reg_reg_n_0_[0]\,
      R => '0'
    );
\q_m_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \q_m_reg[1]_i_1__1_n_0\,
      Q => \q_m_reg_reg_n_0_[1]\,
      R => '0'
    );
\q_m_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_2,
      Q => \q_m_reg_reg_n_0_[2]\,
      R => '0'
    );
\q_m_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_3,
      Q => \q_m_reg_reg_n_0_[3]\,
      R => '0'
    );
\q_m_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_4,
      Q => \q_m_reg_reg_n_0_[4]\,
      R => '0'
    );
\q_m_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_5,
      Q => \q_m_reg_reg_n_0_[5]\,
      R => '0'
    );
\q_m_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_6,
      Q => \q_m_reg_reg_n_0_[6]\,
      R => '0'
    );
\q_m_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => q_m_7,
      Q => \q_m_reg_reg_n_0_[7]\,
      R => '0'
    );
\q_m_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \q_m_reg[8]_i_1__1_n_0\,
      Q => q_m_reg(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1 is
  port (
    serial : out STD_LOGIC;
    px5_clk : in STD_LOGIC;
    p_clk : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 9 downto 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1 : entity is "serialiser_10_to_1";
end overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1;

architecture STRUCTURE of overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1 is
  signal SHIFTIN1 : STD_LOGIC;
  signal SHIFTIN2 : STD_LOGIC;
  signal NLW_master_serdes_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of master_serdes : label is "PRIMITIVE";
  attribute BOX_TYPE of slave_serdes : label is "PRIMITIVE";
begin
master_serdes: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "BUF",
      DATA_WIDTH => 10,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => px5_clk,
      CLKDIV => p_clk,
      D1 => data(0),
      D2 => data(1),
      D3 => data(2),
      D4 => data(3),
      D5 => data(4),
      D6 => data(5),
      D7 => data(6),
      D8 => data(7),
      OCE => '1',
      OFB => NLW_master_serdes_OFB_UNCONNECTED,
      OQ => serial,
      RST => reset,
      SHIFTIN1 => SHIFTIN1,
      SHIFTIN2 => SHIFTIN2,
      SHIFTOUT1 => NLW_master_serdes_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_master_serdes_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_master_serdes_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_master_serdes_TFB_UNCONNECTED,
      TQ => NLW_master_serdes_TQ_UNCONNECTED
    );
slave_serdes: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "BUF",
      DATA_WIDTH => 10,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => px5_clk,
      CLKDIV => p_clk,
      D1 => '0',
      D2 => '0',
      D3 => data(8),
      D4 => data(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_slave_serdes_OFB_UNCONNECTED,
      OQ => NLW_slave_serdes_OQ_UNCONNECTED,
      RST => reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => SHIFTIN1,
      SHIFTOUT2 => SHIFTIN2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_slave_serdes_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_slave_serdes_TFB_UNCONNECTED,
      TQ => NLW_slave_serdes_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_0 is
  port (
    serial : out STD_LOGIC;
    px5_clk : in STD_LOGIC;
    p_clk : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 9 downto 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_0 : entity is "serialiser_10_to_1";
end overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_0;

architecture STRUCTURE of overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_0 is
  signal SHIFTIN1 : STD_LOGIC;
  signal SHIFTIN2 : STD_LOGIC;
  signal NLW_master_serdes_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of master_serdes : label is "PRIMITIVE";
  attribute BOX_TYPE of slave_serdes : label is "PRIMITIVE";
begin
master_serdes: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "BUF",
      DATA_WIDTH => 10,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => px5_clk,
      CLKDIV => p_clk,
      D1 => data(0),
      D2 => data(1),
      D3 => data(2),
      D4 => data(3),
      D5 => data(4),
      D6 => data(5),
      D7 => data(6),
      D8 => data(7),
      OCE => '1',
      OFB => NLW_master_serdes_OFB_UNCONNECTED,
      OQ => serial,
      RST => reset,
      SHIFTIN1 => SHIFTIN1,
      SHIFTIN2 => SHIFTIN2,
      SHIFTOUT1 => NLW_master_serdes_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_master_serdes_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_master_serdes_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_master_serdes_TFB_UNCONNECTED,
      TQ => NLW_master_serdes_TQ_UNCONNECTED
    );
slave_serdes: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "BUF",
      DATA_WIDTH => 10,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => px5_clk,
      CLKDIV => p_clk,
      D1 => '0',
      D2 => '0',
      D3 => data(8),
      D4 => data(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_slave_serdes_OFB_UNCONNECTED,
      OQ => NLW_slave_serdes_OQ_UNCONNECTED,
      RST => reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => SHIFTIN1,
      SHIFTOUT2 => SHIFTIN2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_slave_serdes_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_slave_serdes_TFB_UNCONNECTED,
      TQ => NLW_slave_serdes_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_1 is
  port (
    serial : out STD_LOGIC;
    px5_clk : in STD_LOGIC;
    p_clk : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 9 downto 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_1 : entity is "serialiser_10_to_1";
end overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_1;

architecture STRUCTURE of overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_1 is
  signal SHIFTIN1 : STD_LOGIC;
  signal SHIFTIN2 : STD_LOGIC;
  signal NLW_master_serdes_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of master_serdes : label is "PRIMITIVE";
  attribute BOX_TYPE of slave_serdes : label is "PRIMITIVE";
begin
master_serdes: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "BUF",
      DATA_WIDTH => 10,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => px5_clk,
      CLKDIV => p_clk,
      D1 => data(0),
      D2 => data(1),
      D3 => data(2),
      D4 => data(3),
      D5 => data(4),
      D6 => data(5),
      D7 => data(6),
      D8 => data(7),
      OCE => '1',
      OFB => NLW_master_serdes_OFB_UNCONNECTED,
      OQ => serial,
      RST => reset,
      SHIFTIN1 => SHIFTIN1,
      SHIFTIN2 => SHIFTIN2,
      SHIFTOUT1 => NLW_master_serdes_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_master_serdes_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_master_serdes_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_master_serdes_TFB_UNCONNECTED,
      TQ => NLW_master_serdes_TQ_UNCONNECTED
    );
slave_serdes: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "BUF",
      DATA_WIDTH => 10,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => px5_clk,
      CLKDIV => p_clk,
      D1 => '0',
      D2 => '0',
      D3 => data(8),
      D4 => data(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_slave_serdes_OFB_UNCONNECTED,
      OQ => NLW_slave_serdes_OQ_UNCONNECTED,
      RST => reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => SHIFTIN1,
      SHIFTOUT2 => SHIFTIN2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_slave_serdes_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_slave_serdes_TFB_UNCONNECTED,
      TQ => NLW_slave_serdes_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_2 is
  port (
    serial : out STD_LOGIC;
    px5_clk : in STD_LOGIC;
    p_clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_2 : entity is "serialiser_10_to_1";
end overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_2;

architecture STRUCTURE of overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_2 is
  signal SHIFTIN1 : STD_LOGIC;
  signal SHIFTIN2 : STD_LOGIC;
  signal NLW_master_serdes_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of master_serdes : label is "PRIMITIVE";
  attribute BOX_TYPE of slave_serdes : label is "PRIMITIVE";
begin
master_serdes: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "BUF",
      DATA_WIDTH => 10,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => px5_clk,
      CLKDIV => p_clk,
      D1 => '1',
      D2 => '1',
      D3 => '1',
      D4 => '1',
      D5 => '1',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_master_serdes_OFB_UNCONNECTED,
      OQ => serial,
      RST => reset,
      SHIFTIN1 => SHIFTIN1,
      SHIFTIN2 => SHIFTIN2,
      SHIFTOUT1 => NLW_master_serdes_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_master_serdes_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_master_serdes_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_master_serdes_TFB_UNCONNECTED,
      TQ => NLW_master_serdes_TQ_UNCONNECTED
    );
slave_serdes: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "BUF",
      DATA_WIDTH => 10,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => px5_clk,
      CLKDIV => p_clk,
      D1 => '0',
      D2 => '0',
      D3 => '0',
      D4 => '0',
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_slave_serdes_OFB_UNCONNECTED,
      OQ => NLW_slave_serdes_OQ_UNCONNECTED,
      RST => reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => SHIFTIN1,
      SHIFTOUT2 => SHIFTIN2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_slave_serdes_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_slave_serdes_TFB_UNCONNECTED,
      TQ => NLW_slave_serdes_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_encoder_v2_0_0_dvi_encoder is
  port (
    TMDS_0_P : out STD_LOGIC;
    TMDS_0_N : out STD_LOGIC;
    TMDS_1_P : out STD_LOGIC;
    TMDS_1_N : out STD_LOGIC;
    TMDS_2_P : out STD_LOGIC;
    TMDS_2_N : out STD_LOGIC;
    TMDS_CLK_P : out STD_LOGIC;
    TMDS_CLK_N : out STD_LOGIC;
    p_clk : in STD_LOGIC;
    bypass_sdata : in STD_LOGIC_VECTOR ( 29 downto 0 );
    px5_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    blue_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    de : in STD_LOGIC;
    vid_gb : in STD_LOGIC;
    green_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    red_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    ctl_code : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bypass_ena : in STD_LOGIC;
    bypass_video_only : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_encoder_v2_0_0_dvi_encoder : entity is "dvi_encoder";
end overlay1_dvi_encoder_v2_0_0_dvi_encoder;

architecture STRUCTURE of overlay1_dvi_encoder_v2_0_0_dvi_encoder is
  signal \byp_sd1_reg_n_0_[0]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[10]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[11]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[12]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[13]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[14]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[15]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[16]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[17]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[18]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[19]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[1]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[20]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[21]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[22]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[23]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[24]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[25]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[26]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[27]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[28]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[29]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[2]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[3]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[4]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[5]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[6]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[7]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[8]\ : STD_LOGIC;
  signal \byp_sd1_reg_n_0_[9]\ : STD_LOGIC;
  signal \byp_sd4_reg[0]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[12]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[13]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[14]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[15]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[16]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[17]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[18]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[19]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[1]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[20]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[21]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[22]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[23]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[24]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[25]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[26]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[27]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[28]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[29]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[4]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[5]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[6]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[7]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \byp_sd4_reg[9]_srl3_n_0\ : STD_LOGIC;
  signal byp_sd5 : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \bypass_q_reg[3]_srl4_n_0\ : STD_LOGIC;
  signal \bypass_q_reg_n_0_[4]\ : STD_LOGIC;
  signal de_reg : STD_LOGIC;
  signal dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal encb_n_2 : STD_LOGIC;
  signal encb_n_3 : STD_LOGIC;
  signal encb_n_4 : STD_LOGIC;
  signal encb_n_5 : STD_LOGIC;
  signal encb_n_6 : STD_LOGIC;
  signal encb_n_7 : STD_LOGIC;
  signal encb_n_8 : STD_LOGIC;
  signal encg_n_0 : STD_LOGIC;
  signal encg_n_1 : STD_LOGIC;
  signal encg_n_10 : STD_LOGIC;
  signal encg_n_11 : STD_LOGIC;
  signal encg_n_2 : STD_LOGIC;
  signal encg_n_3 : STD_LOGIC;
  signal encg_n_4 : STD_LOGIC;
  signal encg_n_5 : STD_LOGIC;
  signal encg_n_6 : STD_LOGIC;
  signal encg_n_7 : STD_LOGIC;
  signal encg_n_8 : STD_LOGIC;
  signal encg_n_9 : STD_LOGIC;
  signal encr_n_0 : STD_LOGIC;
  signal encr_n_1 : STD_LOGIC;
  signal encr_n_10 : STD_LOGIC;
  signal encr_n_2 : STD_LOGIC;
  signal encr_n_3 : STD_LOGIC;
  signal encr_n_4 : STD_LOGIC;
  signal encr_n_5 : STD_LOGIC;
  signal encr_n_6 : STD_LOGIC;
  signal encr_n_7 : STD_LOGIC;
  signal encr_n_8 : STD_LOGIC;
  signal encr_n_9 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_data : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal tmds_out_0 : STD_LOGIC;
  signal tmds_out_1 : STD_LOGIC;
  signal tmds_out_2 : STD_LOGIC;
  signal tmds_out_clk : STD_LOGIC;
  signal vid_gb_reg : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of TMDS0 : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of TMDS0 : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of TMDS0 : label is "OBUFDS";
  attribute BOX_TYPE of TMDS1 : label is "PRIMITIVE";
  attribute CAPACITANCE of TMDS1 : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of TMDS1 : label is "OBUFDS";
  attribute BOX_TYPE of TMDS2 : label is "PRIMITIVE";
  attribute CAPACITANCE of TMDS2 : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of TMDS2 : label is "OBUFDS";
  attribute BOX_TYPE of TMDS3 : label is "PRIMITIVE";
  attribute CAPACITANCE of TMDS3 : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of TMDS3 : label is "OBUFDS";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \byp_sd4_reg[0]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name : string;
  attribute srl_name of \byp_sd4_reg[0]_srl3\ : label is "\inst/byp_sd4_reg[0]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[10]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[10]_srl3\ : label is "\inst/byp_sd4_reg[10]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[11]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[11]_srl3\ : label is "\inst/byp_sd4_reg[11]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[12]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[12]_srl3\ : label is "\inst/byp_sd4_reg[12]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[13]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[13]_srl3\ : label is "\inst/byp_sd4_reg[13]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[14]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[14]_srl3\ : label is "\inst/byp_sd4_reg[14]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[15]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[15]_srl3\ : label is "\inst/byp_sd4_reg[15]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[16]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[16]_srl3\ : label is "\inst/byp_sd4_reg[16]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[17]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[17]_srl3\ : label is "\inst/byp_sd4_reg[17]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[18]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[18]_srl3\ : label is "\inst/byp_sd4_reg[18]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[19]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[19]_srl3\ : label is "\inst/byp_sd4_reg[19]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[1]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[1]_srl3\ : label is "\inst/byp_sd4_reg[1]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[20]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[20]_srl3\ : label is "\inst/byp_sd4_reg[20]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[21]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[21]_srl3\ : label is "\inst/byp_sd4_reg[21]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[22]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[22]_srl3\ : label is "\inst/byp_sd4_reg[22]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[23]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[23]_srl3\ : label is "\inst/byp_sd4_reg[23]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[24]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[24]_srl3\ : label is "\inst/byp_sd4_reg[24]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[25]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[25]_srl3\ : label is "\inst/byp_sd4_reg[25]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[26]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[26]_srl3\ : label is "\inst/byp_sd4_reg[26]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[27]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[27]_srl3\ : label is "\inst/byp_sd4_reg[27]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[28]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[28]_srl3\ : label is "\inst/byp_sd4_reg[28]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[29]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[29]_srl3\ : label is "\inst/byp_sd4_reg[29]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[2]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[2]_srl3\ : label is "\inst/byp_sd4_reg[2]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[3]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[3]_srl3\ : label is "\inst/byp_sd4_reg[3]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[4]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[4]_srl3\ : label is "\inst/byp_sd4_reg[4]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[5]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[5]_srl3\ : label is "\inst/byp_sd4_reg[5]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[6]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[6]_srl3\ : label is "\inst/byp_sd4_reg[6]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[7]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[7]_srl3\ : label is "\inst/byp_sd4_reg[7]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[8]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[8]_srl3\ : label is "\inst/byp_sd4_reg[8]_srl3 ";
  attribute srl_bus_name of \byp_sd4_reg[9]_srl3\ : label is "\inst/byp_sd4_reg ";
  attribute srl_name of \byp_sd4_reg[9]_srl3\ : label is "\inst/byp_sd4_reg[9]_srl3 ";
  attribute srl_bus_name of \bypass_q_reg[3]_srl4\ : label is "\inst/bypass_q_reg ";
  attribute srl_name of \bypass_q_reg[3]_srl4\ : label is "\inst/bypass_q_reg[3]_srl4 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of master_serdes_i_1 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \master_serdes_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \master_serdes_i_1__1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of master_serdes_i_2 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \master_serdes_i_2__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \master_serdes_i_2__1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of master_serdes_i_3 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \master_serdes_i_3__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \master_serdes_i_3__1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of master_serdes_i_4 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \master_serdes_i_4__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \master_serdes_i_4__1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of master_serdes_i_5 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \master_serdes_i_5__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \master_serdes_i_5__1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of master_serdes_i_6 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \master_serdes_i_6__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \master_serdes_i_6__1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of master_serdes_i_7 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \master_serdes_i_7__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \master_serdes_i_7__1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of master_serdes_i_8 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \master_serdes_i_8__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \master_serdes_i_8__1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of slave_serdes_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \slave_serdes_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \slave_serdes_i_1__1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of slave_serdes_i_2 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \slave_serdes_i_2__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \slave_serdes_i_2__1\ : label is "soft_lutpair61";
begin
TMDS0: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => tmds_out_0,
      O => TMDS_0_P,
      OB => TMDS_0_N
    );
TMDS1: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => tmds_out_1,
      O => TMDS_1_P,
      OB => TMDS_1_N
    );
TMDS2: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => tmds_out_2,
      O => TMDS_2_P,
      OB => TMDS_2_N
    );
TMDS3: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => tmds_out_clk,
      O => TMDS_CLK_P,
      OB => TMDS_CLK_N
    );
\byp_sd1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(0),
      Q => \byp_sd1_reg_n_0_[0]\,
      R => '0'
    );
\byp_sd1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(10),
      Q => \byp_sd1_reg_n_0_[10]\,
      R => '0'
    );
\byp_sd1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(11),
      Q => \byp_sd1_reg_n_0_[11]\,
      R => '0'
    );
\byp_sd1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(12),
      Q => \byp_sd1_reg_n_0_[12]\,
      R => '0'
    );
\byp_sd1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(13),
      Q => \byp_sd1_reg_n_0_[13]\,
      R => '0'
    );
\byp_sd1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(14),
      Q => \byp_sd1_reg_n_0_[14]\,
      R => '0'
    );
\byp_sd1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(15),
      Q => \byp_sd1_reg_n_0_[15]\,
      R => '0'
    );
\byp_sd1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(16),
      Q => \byp_sd1_reg_n_0_[16]\,
      R => '0'
    );
\byp_sd1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(17),
      Q => \byp_sd1_reg_n_0_[17]\,
      R => '0'
    );
\byp_sd1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(18),
      Q => \byp_sd1_reg_n_0_[18]\,
      R => '0'
    );
\byp_sd1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(19),
      Q => \byp_sd1_reg_n_0_[19]\,
      R => '0'
    );
\byp_sd1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(1),
      Q => \byp_sd1_reg_n_0_[1]\,
      R => '0'
    );
\byp_sd1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(20),
      Q => \byp_sd1_reg_n_0_[20]\,
      R => '0'
    );
\byp_sd1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(21),
      Q => \byp_sd1_reg_n_0_[21]\,
      R => '0'
    );
\byp_sd1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(22),
      Q => \byp_sd1_reg_n_0_[22]\,
      R => '0'
    );
\byp_sd1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(23),
      Q => \byp_sd1_reg_n_0_[23]\,
      R => '0'
    );
\byp_sd1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(24),
      Q => \byp_sd1_reg_n_0_[24]\,
      R => '0'
    );
\byp_sd1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(25),
      Q => \byp_sd1_reg_n_0_[25]\,
      R => '0'
    );
\byp_sd1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(26),
      Q => \byp_sd1_reg_n_0_[26]\,
      R => '0'
    );
\byp_sd1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(27),
      Q => \byp_sd1_reg_n_0_[27]\,
      R => '0'
    );
\byp_sd1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(28),
      Q => \byp_sd1_reg_n_0_[28]\,
      R => '0'
    );
\byp_sd1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(29),
      Q => \byp_sd1_reg_n_0_[29]\,
      R => '0'
    );
\byp_sd1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(2),
      Q => \byp_sd1_reg_n_0_[2]\,
      R => '0'
    );
\byp_sd1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(3),
      Q => \byp_sd1_reg_n_0_[3]\,
      R => '0'
    );
\byp_sd1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(4),
      Q => \byp_sd1_reg_n_0_[4]\,
      R => '0'
    );
\byp_sd1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(5),
      Q => \byp_sd1_reg_n_0_[5]\,
      R => '0'
    );
\byp_sd1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(6),
      Q => \byp_sd1_reg_n_0_[6]\,
      R => '0'
    );
\byp_sd1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(7),
      Q => \byp_sd1_reg_n_0_[7]\,
      R => '0'
    );
\byp_sd1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(8),
      Q => \byp_sd1_reg_n_0_[8]\,
      R => '0'
    );
\byp_sd1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => bypass_sdata(9),
      Q => \byp_sd1_reg_n_0_[9]\,
      R => '0'
    );
\byp_sd4_reg[0]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[0]\,
      Q => \byp_sd4_reg[0]_srl3_n_0\
    );
\byp_sd4_reg[10]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[10]\,
      Q => \byp_sd4_reg[10]_srl3_n_0\
    );
\byp_sd4_reg[11]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[11]\,
      Q => \byp_sd4_reg[11]_srl3_n_0\
    );
\byp_sd4_reg[12]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[12]\,
      Q => \byp_sd4_reg[12]_srl3_n_0\
    );
\byp_sd4_reg[13]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[13]\,
      Q => \byp_sd4_reg[13]_srl3_n_0\
    );
\byp_sd4_reg[14]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[14]\,
      Q => \byp_sd4_reg[14]_srl3_n_0\
    );
\byp_sd4_reg[15]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[15]\,
      Q => \byp_sd4_reg[15]_srl3_n_0\
    );
\byp_sd4_reg[16]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[16]\,
      Q => \byp_sd4_reg[16]_srl3_n_0\
    );
\byp_sd4_reg[17]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[17]\,
      Q => \byp_sd4_reg[17]_srl3_n_0\
    );
\byp_sd4_reg[18]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[18]\,
      Q => \byp_sd4_reg[18]_srl3_n_0\
    );
\byp_sd4_reg[19]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[19]\,
      Q => \byp_sd4_reg[19]_srl3_n_0\
    );
\byp_sd4_reg[1]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[1]\,
      Q => \byp_sd4_reg[1]_srl3_n_0\
    );
\byp_sd4_reg[20]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[20]\,
      Q => \byp_sd4_reg[20]_srl3_n_0\
    );
\byp_sd4_reg[21]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[21]\,
      Q => \byp_sd4_reg[21]_srl3_n_0\
    );
\byp_sd4_reg[22]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[22]\,
      Q => \byp_sd4_reg[22]_srl3_n_0\
    );
\byp_sd4_reg[23]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[23]\,
      Q => \byp_sd4_reg[23]_srl3_n_0\
    );
\byp_sd4_reg[24]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[24]\,
      Q => \byp_sd4_reg[24]_srl3_n_0\
    );
\byp_sd4_reg[25]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[25]\,
      Q => \byp_sd4_reg[25]_srl3_n_0\
    );
\byp_sd4_reg[26]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[26]\,
      Q => \byp_sd4_reg[26]_srl3_n_0\
    );
\byp_sd4_reg[27]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[27]\,
      Q => \byp_sd4_reg[27]_srl3_n_0\
    );
\byp_sd4_reg[28]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[28]\,
      Q => \byp_sd4_reg[28]_srl3_n_0\
    );
\byp_sd4_reg[29]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[29]\,
      Q => \byp_sd4_reg[29]_srl3_n_0\
    );
\byp_sd4_reg[2]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[2]\,
      Q => \byp_sd4_reg[2]_srl3_n_0\
    );
\byp_sd4_reg[3]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[3]\,
      Q => \byp_sd4_reg[3]_srl3_n_0\
    );
\byp_sd4_reg[4]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[4]\,
      Q => \byp_sd4_reg[4]_srl3_n_0\
    );
\byp_sd4_reg[5]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[5]\,
      Q => \byp_sd4_reg[5]_srl3_n_0\
    );
\byp_sd4_reg[6]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[6]\,
      Q => \byp_sd4_reg[6]_srl3_n_0\
    );
\byp_sd4_reg[7]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[7]\,
      Q => \byp_sd4_reg[7]_srl3_n_0\
    );
\byp_sd4_reg[8]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[8]\,
      Q => \byp_sd4_reg[8]_srl3_n_0\
    );
\byp_sd4_reg[9]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => \byp_sd1_reg_n_0_[9]\,
      Q => \byp_sd4_reg[9]_srl3_n_0\
    );
\byp_sd5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[0]_srl3_n_0\,
      Q => byp_sd5(0),
      R => '0'
    );
\byp_sd5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[10]_srl3_n_0\,
      Q => byp_sd5(10),
      R => '0'
    );
\byp_sd5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[11]_srl3_n_0\,
      Q => byp_sd5(11),
      R => '0'
    );
\byp_sd5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[12]_srl3_n_0\,
      Q => byp_sd5(12),
      R => '0'
    );
\byp_sd5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[13]_srl3_n_0\,
      Q => byp_sd5(13),
      R => '0'
    );
\byp_sd5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[14]_srl3_n_0\,
      Q => byp_sd5(14),
      R => '0'
    );
\byp_sd5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[15]_srl3_n_0\,
      Q => byp_sd5(15),
      R => '0'
    );
\byp_sd5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[16]_srl3_n_0\,
      Q => byp_sd5(16),
      R => '0'
    );
\byp_sd5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[17]_srl3_n_0\,
      Q => byp_sd5(17),
      R => '0'
    );
\byp_sd5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[18]_srl3_n_0\,
      Q => byp_sd5(18),
      R => '0'
    );
\byp_sd5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[19]_srl3_n_0\,
      Q => byp_sd5(19),
      R => '0'
    );
\byp_sd5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[1]_srl3_n_0\,
      Q => byp_sd5(1),
      R => '0'
    );
\byp_sd5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[20]_srl3_n_0\,
      Q => byp_sd5(20),
      R => '0'
    );
\byp_sd5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[21]_srl3_n_0\,
      Q => byp_sd5(21),
      R => '0'
    );
\byp_sd5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[22]_srl3_n_0\,
      Q => byp_sd5(22),
      R => '0'
    );
\byp_sd5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[23]_srl3_n_0\,
      Q => byp_sd5(23),
      R => '0'
    );
\byp_sd5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[24]_srl3_n_0\,
      Q => byp_sd5(24),
      R => '0'
    );
\byp_sd5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[25]_srl3_n_0\,
      Q => byp_sd5(25),
      R => '0'
    );
\byp_sd5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[26]_srl3_n_0\,
      Q => byp_sd5(26),
      R => '0'
    );
\byp_sd5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[27]_srl3_n_0\,
      Q => byp_sd5(27),
      R => '0'
    );
\byp_sd5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[28]_srl3_n_0\,
      Q => byp_sd5(28),
      R => '0'
    );
\byp_sd5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[29]_srl3_n_0\,
      Q => byp_sd5(29),
      R => '0'
    );
\byp_sd5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[2]_srl3_n_0\,
      Q => byp_sd5(2),
      R => '0'
    );
\byp_sd5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[3]_srl3_n_0\,
      Q => byp_sd5(3),
      R => '0'
    );
\byp_sd5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[4]_srl3_n_0\,
      Q => byp_sd5(4),
      R => '0'
    );
\byp_sd5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[5]_srl3_n_0\,
      Q => byp_sd5(5),
      R => '0'
    );
\byp_sd5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[6]_srl3_n_0\,
      Q => byp_sd5(6),
      R => '0'
    );
\byp_sd5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[7]_srl3_n_0\,
      Q => byp_sd5(7),
      R => '0'
    );
\byp_sd5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[8]_srl3_n_0\,
      Q => byp_sd5(8),
      R => '0'
    );
\byp_sd5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \byp_sd4_reg[9]_srl3_n_0\,
      Q => byp_sd5(9),
      R => '0'
    );
\bypass_q_reg[3]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_clk,
      D => p_0_out(0),
      Q => \bypass_q_reg[3]_srl4_n_0\
    );
\bypass_q_reg[3]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => bypass_ena,
      I1 => de,
      I2 => bypass_video_only,
      O => p_0_out(0)
    );
\bypass_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \bypass_q_reg[3]_srl4_n_0\,
      Q => \bypass_q_reg_n_0_[4]\,
      R => '0'
    );
encb: entity work.overlay1_dvi_encoder_v2_0_0_encodeb
     port map (
      E(0) => encb_n_7,
      Q(9 downto 0) => dout(9 downto 0),
      SR(0) => encb_n_6,
      blue_din(7 downto 0) => blue_din(7 downto 0),
      c0_reg_reg_0 => encg_n_0,
      c0_reg_reg_1 => encr_n_0,
      c1_reg_reg_0 => encg_n_1,
      de => de,
      de_reg => de_reg,
      \dout_reg[0]_0\ => encb_n_3,
      \dout_reg[2]_0\ => encb_n_5,
      \dout_reg[3]_0\ => encb_n_2,
      \dout_reg[3]_1\ => encb_n_4,
      \dout_reg[9]_0\ => encb_n_8,
      hsync => hsync,
      p_clk => p_clk,
      reset => reset,
      vid_gb => vid_gb,
      vid_gb_reg => vid_gb_reg,
      vsync => vsync
    );
encg: entity work.overlay1_dvi_encoder_v2_0_0_encodeg
     port map (
      E(0) => encb_n_7,
      Q(9) => encg_n_2,
      Q(8) => encg_n_3,
      Q(7) => encg_n_4,
      Q(6) => encg_n_5,
      Q(5) => encg_n_6,
      Q(4) => encg_n_7,
      Q(3) => encg_n_8,
      Q(2) => encg_n_9,
      Q(1) => encg_n_10,
      Q(0) => encg_n_11,
      SR(0) => encb_n_6,
      ctl_code(1 downto 0) => ctl_code(1 downto 0),
      de_reg => de_reg,
      \dout_reg[8]_0\ => encg_n_0,
      \dout_reg[9]_0\ => encg_n_1,
      green_din(7 downto 0) => green_din(7 downto 0),
      p_clk => p_clk,
      reset => reset,
      vid_gb_reg => vid_gb_reg,
      vid_gb_reg_reg => encb_n_3,
      vid_gb_reg_reg_0 => encb_n_2,
      vid_gb_reg_reg_1 => encb_n_8
    );
encr: entity work.overlay1_dvi_encoder_v2_0_0_encoder
     port map (
      E(0) => encb_n_7,
      Q(9) => encr_n_1,
      Q(8) => encr_n_2,
      Q(7) => encr_n_3,
      Q(6) => encr_n_4,
      Q(5) => encr_n_5,
      Q(4) => encr_n_6,
      Q(3) => encr_n_7,
      Q(2) => encr_n_8,
      Q(1) => encr_n_9,
      Q(0) => encr_n_10,
      SR(0) => encb_n_6,
      ctl_code(1 downto 0) => ctl_code(3 downto 2),
      de_reg => de_reg,
      \dout_reg[8]_0\ => encr_n_0,
      p_clk => p_clk,
      red_din(7 downto 0) => red_din(7 downto 0),
      reset => reset,
      vid_gb_reg => vid_gb_reg,
      vid_gb_reg_reg => encb_n_5,
      vid_gb_reg_reg_0 => encb_n_4
    );
master_serdes_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(0),
      I1 => dout(0),
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(0)
    );
\master_serdes_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(10),
      I1 => encg_n_11,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(10)
    );
\master_serdes_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(20),
      I1 => encr_n_10,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(20)
    );
master_serdes_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(1),
      I1 => dout(1),
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(1)
    );
\master_serdes_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(11),
      I1 => encg_n_10,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(11)
    );
\master_serdes_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(21),
      I1 => encr_n_9,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(21)
    );
master_serdes_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(2),
      I1 => dout(2),
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(2)
    );
\master_serdes_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(12),
      I1 => encg_n_9,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(12)
    );
\master_serdes_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(22),
      I1 => encr_n_8,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(22)
    );
master_serdes_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(3),
      I1 => dout(3),
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(3)
    );
\master_serdes_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(13),
      I1 => encg_n_8,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(13)
    );
\master_serdes_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(23),
      I1 => encr_n_7,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(23)
    );
master_serdes_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(4),
      I1 => dout(4),
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(4)
    );
\master_serdes_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(14),
      I1 => encg_n_7,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(14)
    );
\master_serdes_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(24),
      I1 => encr_n_6,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(24)
    );
master_serdes_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(5),
      I1 => dout(5),
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(5)
    );
\master_serdes_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(15),
      I1 => encg_n_6,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(15)
    );
\master_serdes_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(25),
      I1 => encr_n_5,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(25)
    );
master_serdes_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(6),
      I1 => dout(6),
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(6)
    );
\master_serdes_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(16),
      I1 => encg_n_5,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(16)
    );
\master_serdes_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(26),
      I1 => encr_n_4,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(26)
    );
master_serdes_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(7),
      I1 => dout(7),
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(7)
    );
\master_serdes_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(17),
      I1 => encg_n_4,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(17)
    );
\master_serdes_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(27),
      I1 => encr_n_3,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(27)
    );
ser_ch0: entity work.overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1
     port map (
      data(9 downto 0) => s_data(9 downto 0),
      p_clk => p_clk,
      px5_clk => px5_clk,
      reset => reset,
      serial => tmds_out_0
    );
ser_ch1: entity work.overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_0
     port map (
      data(9 downto 0) => s_data(19 downto 10),
      p_clk => p_clk,
      px5_clk => px5_clk,
      reset => reset,
      serial => tmds_out_1
    );
ser_ch2: entity work.overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_1
     port map (
      data(9 downto 0) => s_data(29 downto 20),
      p_clk => p_clk,
      px5_clk => px5_clk,
      reset => reset,
      serial => tmds_out_2
    );
ser_clk: entity work.overlay1_dvi_encoder_v2_0_0_serialiser_10_to_1_2
     port map (
      p_clk => p_clk,
      px5_clk => px5_clk,
      reset => reset,
      serial => tmds_out_clk
    );
slave_serdes_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(8),
      I1 => dout(8),
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(8)
    );
\slave_serdes_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(18),
      I1 => encg_n_3,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(18)
    );
\slave_serdes_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(28),
      I1 => encr_n_2,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(28)
    );
slave_serdes_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(9),
      I1 => dout(9),
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(9)
    );
\slave_serdes_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(19),
      I1 => encg_n_2,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(19)
    );
\slave_serdes_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => byp_sd5(29),
      I1 => encr_n_1,
      I2 => \bypass_q_reg_n_0_[4]\,
      O => s_data(29)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_encoder_v2_0_0 is
  port (
    p_clk : in STD_LOGIC;
    px5_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    blue_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    green_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    red_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    de : in STD_LOGIC;
    TMDS_0_P : out STD_LOGIC;
    TMDS_0_N : out STD_LOGIC;
    TMDS_1_P : out STD_LOGIC;
    TMDS_1_N : out STD_LOGIC;
    TMDS_2_P : out STD_LOGIC;
    TMDS_2_N : out STD_LOGIC;
    TMDS_CLK_P : out STD_LOGIC;
    TMDS_CLK_N : out STD_LOGIC;
    vid_gb : in STD_LOGIC;
    dat_gb : in STD_LOGIC;
    dat_ena : in STD_LOGIC;
    blue_di : in STD_LOGIC_VECTOR ( 3 downto 0 );
    green_di : in STD_LOGIC_VECTOR ( 3 downto 0 );
    red_di : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ctl_code : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bypass_sdata : in STD_LOGIC_VECTOR ( 29 downto 0 );
    bypass_ena : in STD_LOGIC;
    bypass_video_only : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of overlay1_dvi_encoder_v2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of overlay1_dvi_encoder_v2_0_0 : entity is "overlay1_dvi_encoder_v2_0_0,dvi_encoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of overlay1_dvi_encoder_v2_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of overlay1_dvi_encoder_v2_0_0 : entity is "dvi_encoder,Vivado 2016.1";
end overlay1_dvi_encoder_v2_0_0;

architecture STRUCTURE of overlay1_dvi_encoder_v2_0_0 is
begin
inst: entity work.overlay1_dvi_encoder_v2_0_0_dvi_encoder
     port map (
      TMDS_0_N => TMDS_0_N,
      TMDS_0_P => TMDS_0_P,
      TMDS_1_N => TMDS_1_N,
      TMDS_1_P => TMDS_1_P,
      TMDS_2_N => TMDS_2_N,
      TMDS_2_P => TMDS_2_P,
      TMDS_CLK_N => TMDS_CLK_N,
      TMDS_CLK_P => TMDS_CLK_P,
      blue_din(7 downto 0) => blue_din(7 downto 0),
      bypass_ena => bypass_ena,
      bypass_sdata(29 downto 0) => bypass_sdata(29 downto 0),
      bypass_video_only => bypass_video_only,
      ctl_code(3 downto 0) => ctl_code(3 downto 0),
      de => de,
      green_din(7 downto 0) => green_din(7 downto 0),
      hsync => hsync,
      p_clk => p_clk,
      px5_clk => px5_clk,
      red_din(7 downto 0) => red_din(7 downto 0),
      reset => reset,
      vid_gb => vid_gb,
      vsync => vsync
    );
end STRUCTURE;
