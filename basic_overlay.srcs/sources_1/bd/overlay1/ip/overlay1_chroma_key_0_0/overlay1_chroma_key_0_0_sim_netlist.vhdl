-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Mon Nov 21 13:24:16 2016
-- Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               f:/largework/fpga/netv2/basic-overlay/basic_overlay.srcs/sources_1/bd/overlay1/ip/overlay1_chroma_key_0_0/overlay1_chroma_key_0_0_sim_netlist.vhdl
-- Design      : overlay1_chroma_key_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50tcsg325-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_chroma_key_0_0_chroma_key is
  port (
    hsync_pipe : out STD_LOGIC;
    vsync_pipe : out STD_LOGIC;
    de_pipe : out STD_LOGIC;
    vid_gb_pipe : out STD_LOGIC;
    dat_gb_pipe : out STD_LOGIC;
    dat_ena_pipe : out STD_LOGIC;
    red_di_pipe : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green_di_pipe : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue_di_pipe : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ctl_code_pipe : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue_blend : out STD_LOGIC_VECTOR ( 7 downto 0 );
    green_blend : out STD_LOGIC_VECTOR ( 7 downto 0 );
    red_blend : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    de : in STD_LOGIC;
    vid_gb : in STD_LOGIC;
    dat_gb : in STD_LOGIC;
    dat_ena : in STD_LOGIC;
    red_di : in STD_LOGIC_VECTOR ( 3 downto 0 );
    green_di : in STD_LOGIC_VECTOR ( 3 downto 0 );
    blue_di : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ctl_code : in STD_LOGIC_VECTOR ( 3 downto 0 );
    chroma_en : in STD_LOGIC;
    blue_comp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    green_comp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    red_comp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cipher_stream : in STD_LOGIC_VECTOR ( 23 downto 0 );
    blue_video : in STD_LOGIC_VECTOR ( 7 downto 0 );
    green_video : in STD_LOGIC_VECTOR ( 7 downto 0 );
    red_video : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_chroma_key_0_0_chroma_key : entity is "chroma_key";
end overlay1_chroma_key_0_0_chroma_key;

architecture STRUCTURE of overlay1_chroma_key_0_0_chroma_key is
  signal b1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal b2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \blue_add[0]_i_1_n_0\ : STD_LOGIC;
  signal \blue_add[1]_i_1_n_0\ : STD_LOGIC;
  signal \blue_add[2]_i_1_n_0\ : STD_LOGIC;
  signal \blue_add[3]_i_1_n_0\ : STD_LOGIC;
  signal \blue_add[4]_i_1_n_0\ : STD_LOGIC;
  signal \blue_add[5]_i_1_n_0\ : STD_LOGIC;
  signal \blue_add[6]_i_1_n_0\ : STD_LOGIC;
  signal \blue_add[7]_i_1_n_0\ : STD_LOGIC;
  signal blue_comp_chroma : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal blue_video_chroma : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal chroma_on : STD_LOGIC;
  signal chroma_on_i_1_n_0 : STD_LOGIC;
  signal chroma_on_i_2_n_0 : STD_LOGIC;
  signal chroma_on_i_3_n_0 : STD_LOGIC;
  signal chroma_on_i_4_n_0 : STD_LOGIC;
  signal chroma_on_i_5_n_0 : STD_LOGIC;
  signal \cipherpipe_reg_n_0_[0]\ : STD_LOGIC;
  signal \cipherpipe_reg_n_0_[1]\ : STD_LOGIC;
  signal \cipherpipe_reg_n_0_[2]\ : STD_LOGIC;
  signal \cipherpipe_reg_n_0_[3]\ : STD_LOGIC;
  signal \cipherpipe_reg_n_0_[4]\ : STD_LOGIC;
  signal \cipherpipe_reg_n_0_[5]\ : STD_LOGIC;
  signal \cipherpipe_reg_n_0_[6]\ : STD_LOGIC;
  signal \cipherpipe_reg_n_0_[7]\ : STD_LOGIC;
  signal \dat_ena_p_reg[2]_srl2_n_0\ : STD_LOGIC;
  signal \dat_ena_p_reg_n_0_[0]\ : STD_LOGIC;
  signal \dat_gb_p_reg[2]_srl2_n_0\ : STD_LOGIC;
  signal \dat_gb_p_reg_n_0_[0]\ : STD_LOGIC;
  signal \de_p_reg[2]_srl2_n_0\ : STD_LOGIC;
  signal \de_p_reg_n_0_[0]\ : STD_LOGIC;
  signal g1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal g2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \green_add[0]_i_1_n_0\ : STD_LOGIC;
  signal \green_add[1]_i_1_n_0\ : STD_LOGIC;
  signal \green_add[2]_i_1_n_0\ : STD_LOGIC;
  signal \green_add[3]_i_1_n_0\ : STD_LOGIC;
  signal \green_add[4]_i_1_n_0\ : STD_LOGIC;
  signal \green_add[5]_i_1_n_0\ : STD_LOGIC;
  signal \green_add[6]_i_1_n_0\ : STD_LOGIC;
  signal \green_add[7]_i_1_n_0\ : STD_LOGIC;
  signal green_comp_chroma : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal green_video_chroma : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \hsync_p_reg[2]_srl2_n_0\ : STD_LOGIC;
  signal \hsync_p_reg_n_0_[0]\ : STD_LOGIC;
  signal \p1_reg_n_0_[0]\ : STD_LOGIC;
  signal \p1_reg_n_0_[10]\ : STD_LOGIC;
  signal \p1_reg_n_0_[11]\ : STD_LOGIC;
  signal \p1_reg_n_0_[12]\ : STD_LOGIC;
  signal \p1_reg_n_0_[13]\ : STD_LOGIC;
  signal \p1_reg_n_0_[14]\ : STD_LOGIC;
  signal \p1_reg_n_0_[15]\ : STD_LOGIC;
  signal \p1_reg_n_0_[1]\ : STD_LOGIC;
  signal \p1_reg_n_0_[2]\ : STD_LOGIC;
  signal \p1_reg_n_0_[3]\ : STD_LOGIC;
  signal \p1_reg_n_0_[4]\ : STD_LOGIC;
  signal \p1_reg_n_0_[5]\ : STD_LOGIC;
  signal \p1_reg_n_0_[6]\ : STD_LOGIC;
  signal \p1_reg_n_0_[7]\ : STD_LOGIC;
  signal \p1_reg_n_0_[8]\ : STD_LOGIC;
  signal \p1_reg_n_0_[9]\ : STD_LOGIC;
  signal \p3_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal \p3_reg[10]_srl2_n_0\ : STD_LOGIC;
  signal \p3_reg[11]_srl2_n_0\ : STD_LOGIC;
  signal \p3_reg[12]_srl2_n_0\ : STD_LOGIC;
  signal \p3_reg[13]_srl2_n_0\ : STD_LOGIC;
  signal \p3_reg[14]_srl2_n_0\ : STD_LOGIC;
  signal \p3_reg[15]_srl2_n_0\ : STD_LOGIC;
  signal \p3_reg[1]_srl2_n_0\ : STD_LOGIC;
  signal \p3_reg[2]_srl2_n_0\ : STD_LOGIC;
  signal \p3_reg[3]_srl2_n_0\ : STD_LOGIC;
  signal \p3_reg[4]_srl2_n_0\ : STD_LOGIC;
  signal \p3_reg[5]_srl2_n_0\ : STD_LOGIC;
  signal \p3_reg[6]_srl2_n_0\ : STD_LOGIC;
  signal \p3_reg[7]_srl2_n_0\ : STD_LOGIC;
  signal \p3_reg[8]_srl2_n_0\ : STD_LOGIC;
  signal \p3_reg[9]_srl2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal r1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal r2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \red_add[0]_i_1_n_0\ : STD_LOGIC;
  signal \red_add[1]_i_1_n_0\ : STD_LOGIC;
  signal \red_add[2]_i_1_n_0\ : STD_LOGIC;
  signal \red_add[3]_i_1_n_0\ : STD_LOGIC;
  signal \red_add[4]_i_1_n_0\ : STD_LOGIC;
  signal \red_add[5]_i_1_n_0\ : STD_LOGIC;
  signal \red_add[6]_i_1_n_0\ : STD_LOGIC;
  signal \red_add[7]_i_1_n_0\ : STD_LOGIC;
  signal red_comp_chroma : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal red_video_chroma : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \vid_gb_p_reg[2]_srl2_n_0\ : STD_LOGIC;
  signal \vid_gb_p_reg_n_0_[0]\ : STD_LOGIC;
  signal \vsync_p_reg[2]_srl2_n_0\ : STD_LOGIC;
  signal \vsync_p_reg_n_0_[0]\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \dat_ena_p_reg[2]_srl2\ : label is "\inst/dat_ena_p_reg ";
  attribute srl_name : string;
  attribute srl_name of \dat_ena_p_reg[2]_srl2\ : label is "\inst/dat_ena_p_reg[2]_srl2 ";
  attribute srl_bus_name of \dat_gb_p_reg[2]_srl2\ : label is "\inst/dat_gb_p_reg ";
  attribute srl_name of \dat_gb_p_reg[2]_srl2\ : label is "\inst/dat_gb_p_reg[2]_srl2 ";
  attribute srl_bus_name of \de_p_reg[2]_srl2\ : label is "\inst/de_p_reg ";
  attribute srl_name of \de_p_reg[2]_srl2\ : label is "\inst/de_p_reg[2]_srl2 ";
  attribute srl_bus_name of \hsync_p_reg[2]_srl2\ : label is "\inst/hsync_p_reg ";
  attribute srl_name of \hsync_p_reg[2]_srl2\ : label is "\inst/hsync_p_reg[2]_srl2 ";
  attribute srl_bus_name of \p3_reg[0]_srl2\ : label is "\inst/p3_reg ";
  attribute srl_name of \p3_reg[0]_srl2\ : label is "\inst/p3_reg[0]_srl2 ";
  attribute srl_bus_name of \p3_reg[10]_srl2\ : label is "\inst/p3_reg ";
  attribute srl_name of \p3_reg[10]_srl2\ : label is "\inst/p3_reg[10]_srl2 ";
  attribute srl_bus_name of \p3_reg[11]_srl2\ : label is "\inst/p3_reg ";
  attribute srl_name of \p3_reg[11]_srl2\ : label is "\inst/p3_reg[11]_srl2 ";
  attribute srl_bus_name of \p3_reg[12]_srl2\ : label is "\inst/p3_reg ";
  attribute srl_name of \p3_reg[12]_srl2\ : label is "\inst/p3_reg[12]_srl2 ";
  attribute srl_bus_name of \p3_reg[13]_srl2\ : label is "\inst/p3_reg ";
  attribute srl_name of \p3_reg[13]_srl2\ : label is "\inst/p3_reg[13]_srl2 ";
  attribute srl_bus_name of \p3_reg[14]_srl2\ : label is "\inst/p3_reg ";
  attribute srl_name of \p3_reg[14]_srl2\ : label is "\inst/p3_reg[14]_srl2 ";
  attribute srl_bus_name of \p3_reg[15]_srl2\ : label is "\inst/p3_reg ";
  attribute srl_name of \p3_reg[15]_srl2\ : label is "\inst/p3_reg[15]_srl2 ";
  attribute srl_bus_name of \p3_reg[1]_srl2\ : label is "\inst/p3_reg ";
  attribute srl_name of \p3_reg[1]_srl2\ : label is "\inst/p3_reg[1]_srl2 ";
  attribute srl_bus_name of \p3_reg[2]_srl2\ : label is "\inst/p3_reg ";
  attribute srl_name of \p3_reg[2]_srl2\ : label is "\inst/p3_reg[2]_srl2 ";
  attribute srl_bus_name of \p3_reg[3]_srl2\ : label is "\inst/p3_reg ";
  attribute srl_name of \p3_reg[3]_srl2\ : label is "\inst/p3_reg[3]_srl2 ";
  attribute srl_bus_name of \p3_reg[4]_srl2\ : label is "\inst/p3_reg ";
  attribute srl_name of \p3_reg[4]_srl2\ : label is "\inst/p3_reg[4]_srl2 ";
  attribute srl_bus_name of \p3_reg[5]_srl2\ : label is "\inst/p3_reg ";
  attribute srl_name of \p3_reg[5]_srl2\ : label is "\inst/p3_reg[5]_srl2 ";
  attribute srl_bus_name of \p3_reg[6]_srl2\ : label is "\inst/p3_reg ";
  attribute srl_name of \p3_reg[6]_srl2\ : label is "\inst/p3_reg[6]_srl2 ";
  attribute srl_bus_name of \p3_reg[7]_srl2\ : label is "\inst/p3_reg ";
  attribute srl_name of \p3_reg[7]_srl2\ : label is "\inst/p3_reg[7]_srl2 ";
  attribute srl_bus_name of \p3_reg[8]_srl2\ : label is "\inst/p3_reg ";
  attribute srl_name of \p3_reg[8]_srl2\ : label is "\inst/p3_reg[8]_srl2 ";
  attribute srl_bus_name of \p3_reg[9]_srl2\ : label is "\inst/p3_reg ";
  attribute srl_name of \p3_reg[9]_srl2\ : label is "\inst/p3_reg[9]_srl2 ";
  attribute srl_bus_name of \vid_gb_p_reg[2]_srl2\ : label is "\inst/vid_gb_p_reg ";
  attribute srl_name of \vid_gb_p_reg[2]_srl2\ : label is "\inst/vid_gb_p_reg[2]_srl2 ";
  attribute srl_bus_name of \vsync_p_reg[2]_srl2\ : label is "\inst/vsync_p_reg ";
  attribute srl_name of \vsync_p_reg[2]_srl2\ : label is "\inst/vsync_p_reg[2]_srl2 ";
begin
\b1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_video(0),
      Q => b1(0),
      R => '0'
    );
\b1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_video(1),
      Q => b1(1),
      R => '0'
    );
\b1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_video(2),
      Q => b1(2),
      R => '0'
    );
\b1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_video(3),
      Q => b1(3),
      R => '0'
    );
\b1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_video(4),
      Q => b1(4),
      R => '0'
    );
\b1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_video(5),
      Q => b1(5),
      R => '0'
    );
\b1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_video(6),
      Q => b1(6),
      R => '0'
    );
\b1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_video(7),
      Q => b1(7),
      R => '0'
    );
\b2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b1(0),
      Q => b2(0),
      R => '0'
    );
\b2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b1(1),
      Q => b2(1),
      R => '0'
    );
\b2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b1(2),
      Q => b2(2),
      R => '0'
    );
\b2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b1(3),
      Q => b2(3),
      R => '0'
    );
\b2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b1(4),
      Q => b2(4),
      R => '0'
    );
\b2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b1(5),
      Q => b2(5),
      R => '0'
    );
\b2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b1(6),
      Q => b2(6),
      R => '0'
    );
\b2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b1(7),
      Q => b2(7),
      R => '0'
    );
\blue_add[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => blue_video_chroma(0),
      I1 => blue_comp_chroma(0),
      I2 => \cipherpipe_reg_n_0_[0]\,
      I3 => chroma_on,
      O => \blue_add[0]_i_1_n_0\
    );
\blue_add[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => blue_video_chroma(1),
      I1 => blue_comp_chroma(1),
      I2 => \cipherpipe_reg_n_0_[1]\,
      I3 => chroma_on,
      O => \blue_add[1]_i_1_n_0\
    );
\blue_add[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => blue_video_chroma(2),
      I1 => blue_comp_chroma(2),
      I2 => \cipherpipe_reg_n_0_[2]\,
      I3 => chroma_on,
      O => \blue_add[2]_i_1_n_0\
    );
\blue_add[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => blue_video_chroma(3),
      I1 => blue_comp_chroma(3),
      I2 => \cipherpipe_reg_n_0_[3]\,
      I3 => chroma_on,
      O => \blue_add[3]_i_1_n_0\
    );
\blue_add[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => blue_video_chroma(4),
      I1 => blue_comp_chroma(4),
      I2 => \cipherpipe_reg_n_0_[4]\,
      I3 => chroma_on,
      O => \blue_add[4]_i_1_n_0\
    );
\blue_add[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => blue_video_chroma(5),
      I1 => blue_comp_chroma(5),
      I2 => \cipherpipe_reg_n_0_[5]\,
      I3 => chroma_on,
      O => \blue_add[5]_i_1_n_0\
    );
\blue_add[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => blue_video_chroma(6),
      I1 => blue_comp_chroma(6),
      I2 => \cipherpipe_reg_n_0_[6]\,
      I3 => chroma_on,
      O => \blue_add[6]_i_1_n_0\
    );
\blue_add[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => blue_video_chroma(7),
      I1 => blue_comp_chroma(7),
      I2 => \cipherpipe_reg_n_0_[7]\,
      I3 => chroma_on,
      O => \blue_add[7]_i_1_n_0\
    );
\blue_add_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blue_add[0]_i_1_n_0\,
      Q => blue_blend(0),
      R => '0'
    );
\blue_add_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blue_add[1]_i_1_n_0\,
      Q => blue_blend(1),
      R => '0'
    );
\blue_add_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blue_add[2]_i_1_n_0\,
      Q => blue_blend(2),
      R => '0'
    );
\blue_add_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blue_add[3]_i_1_n_0\,
      Q => blue_blend(3),
      R => '0'
    );
\blue_add_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blue_add[4]_i_1_n_0\,
      Q => blue_blend(4),
      R => '0'
    );
\blue_add_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blue_add[5]_i_1_n_0\,
      Q => blue_blend(5),
      R => '0'
    );
\blue_add_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blue_add[6]_i_1_n_0\,
      Q => blue_blend(6),
      R => '0'
    );
\blue_add_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blue_add[7]_i_1_n_0\,
      Q => blue_blend(7),
      R => '0'
    );
\blue_comp_chroma_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_comp(0),
      Q => blue_comp_chroma(0),
      R => '0'
    );
\blue_comp_chroma_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_comp(1),
      Q => blue_comp_chroma(1),
      R => '0'
    );
\blue_comp_chroma_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_comp(2),
      Q => blue_comp_chroma(2),
      R => '0'
    );
\blue_comp_chroma_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_comp(3),
      Q => blue_comp_chroma(3),
      R => '0'
    );
\blue_comp_chroma_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_comp(4),
      Q => blue_comp_chroma(4),
      R => '0'
    );
\blue_comp_chroma_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_comp(5),
      Q => blue_comp_chroma(5),
      R => '0'
    );
\blue_comp_chroma_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_comp(6),
      Q => blue_comp_chroma(6),
      R => '0'
    );
\blue_comp_chroma_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_comp(7),
      Q => blue_comp_chroma(7),
      R => '0'
    );
\blue_video_chroma_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b2(0),
      Q => blue_video_chroma(0),
      R => '0'
    );
\blue_video_chroma_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b2(1),
      Q => blue_video_chroma(1),
      R => '0'
    );
\blue_video_chroma_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b2(2),
      Q => blue_video_chroma(2),
      R => '0'
    );
\blue_video_chroma_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b2(3),
      Q => blue_video_chroma(3),
      R => '0'
    );
\blue_video_chroma_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b2(4),
      Q => blue_video_chroma(4),
      R => '0'
    );
\blue_video_chroma_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b2(5),
      Q => blue_video_chroma(5),
      R => '0'
    );
\blue_video_chroma_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b2(6),
      Q => blue_video_chroma(6),
      R => '0'
    );
\blue_video_chroma_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b2(7),
      Q => blue_video_chroma(7),
      R => '0'
    );
chroma_on_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => chroma_on_i_2_n_0,
      I1 => chroma_on_i_3_n_0,
      I2 => chroma_on_i_4_n_0,
      I3 => chroma_en,
      I4 => chroma_on_i_5_n_0,
      O => chroma_on_i_1_n_0
    );
chroma_on_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => green_comp(2),
      I1 => green_comp(3),
      I2 => green_comp(0),
      I3 => green_comp(1),
      I4 => green_comp(5),
      I5 => green_comp(4),
      O => chroma_on_i_2_n_0
    );
chroma_on_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => red_comp(4),
      I1 => red_comp(5),
      I2 => red_comp(2),
      I3 => red_comp(3),
      I4 => red_comp(7),
      I5 => red_comp(6),
      O => chroma_on_i_3_n_0
    );
chroma_on_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => blue_comp(6),
      I1 => blue_comp(7),
      I2 => blue_comp(4),
      I3 => blue_comp(5),
      I4 => red_comp(1),
      I5 => red_comp(0),
      O => chroma_on_i_4_n_0
    );
chroma_on_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => blue_comp(0),
      I1 => blue_comp(1),
      I2 => green_comp(6),
      I3 => green_comp(7),
      I4 => blue_comp(3),
      I5 => blue_comp(2),
      O => chroma_on_i_5_n_0
    );
chroma_on_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => chroma_on_i_1_n_0,
      Q => chroma_on,
      R => '0'
    );
\cipherpipe_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(0),
      Q => \cipherpipe_reg_n_0_[0]\,
      R => '0'
    );
\cipherpipe_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(10),
      Q => p_0_in0_in(2),
      R => '0'
    );
\cipherpipe_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(11),
      Q => p_0_in0_in(3),
      R => '0'
    );
\cipherpipe_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(12),
      Q => p_0_in0_in(4),
      R => '0'
    );
\cipherpipe_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(13),
      Q => p_0_in0_in(5),
      R => '0'
    );
\cipherpipe_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(14),
      Q => p_0_in0_in(6),
      R => '0'
    );
\cipherpipe_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(15),
      Q => p_0_in0_in(7),
      R => '0'
    );
\cipherpipe_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(16),
      Q => p_0_in(0),
      R => '0'
    );
\cipherpipe_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(17),
      Q => p_0_in(1),
      R => '0'
    );
\cipherpipe_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(18),
      Q => p_0_in(2),
      R => '0'
    );
\cipherpipe_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(19),
      Q => p_0_in(3),
      R => '0'
    );
\cipherpipe_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(1),
      Q => \cipherpipe_reg_n_0_[1]\,
      R => '0'
    );
\cipherpipe_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(20),
      Q => p_0_in(4),
      R => '0'
    );
\cipherpipe_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(21),
      Q => p_0_in(5),
      R => '0'
    );
\cipherpipe_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(22),
      Q => p_0_in(6),
      R => '0'
    );
\cipherpipe_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(23),
      Q => p_0_in(7),
      R => '0'
    );
\cipherpipe_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(2),
      Q => \cipherpipe_reg_n_0_[2]\,
      R => '0'
    );
\cipherpipe_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(3),
      Q => \cipherpipe_reg_n_0_[3]\,
      R => '0'
    );
\cipherpipe_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(4),
      Q => \cipherpipe_reg_n_0_[4]\,
      R => '0'
    );
\cipherpipe_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(5),
      Q => \cipherpipe_reg_n_0_[5]\,
      R => '0'
    );
\cipherpipe_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(6),
      Q => \cipherpipe_reg_n_0_[6]\,
      R => '0'
    );
\cipherpipe_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(7),
      Q => \cipherpipe_reg_n_0_[7]\,
      R => '0'
    );
\cipherpipe_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(8),
      Q => p_0_in0_in(0),
      R => '0'
    );
\cipherpipe_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cipher_stream(9),
      Q => p_0_in0_in(1),
      R => '0'
    );
\dat_ena_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dat_ena,
      Q => \dat_ena_p_reg_n_0_[0]\,
      R => '0'
    );
\dat_ena_p_reg[2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \dat_ena_p_reg_n_0_[0]\,
      Q => \dat_ena_p_reg[2]_srl2_n_0\
    );
\dat_ena_p_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dat_ena_p_reg[2]_srl2_n_0\,
      Q => dat_ena_pipe,
      R => '0'
    );
\dat_gb_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dat_gb,
      Q => \dat_gb_p_reg_n_0_[0]\,
      R => '0'
    );
\dat_gb_p_reg[2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \dat_gb_p_reg_n_0_[0]\,
      Q => \dat_gb_p_reg[2]_srl2_n_0\
    );
\dat_gb_p_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dat_gb_p_reg[2]_srl2_n_0\,
      Q => dat_gb_pipe,
      R => '0'
    );
\de_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => de,
      Q => \de_p_reg_n_0_[0]\,
      R => '0'
    );
\de_p_reg[2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \de_p_reg_n_0_[0]\,
      Q => \de_p_reg[2]_srl2_n_0\
    );
\de_p_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \de_p_reg[2]_srl2_n_0\,
      Q => de_pipe,
      R => '0'
    );
\g1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_video(0),
      Q => g1(0),
      R => '0'
    );
\g1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_video(1),
      Q => g1(1),
      R => '0'
    );
\g1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_video(2),
      Q => g1(2),
      R => '0'
    );
\g1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_video(3),
      Q => g1(3),
      R => '0'
    );
\g1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_video(4),
      Q => g1(4),
      R => '0'
    );
\g1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_video(5),
      Q => g1(5),
      R => '0'
    );
\g1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_video(6),
      Q => g1(6),
      R => '0'
    );
\g1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_video(7),
      Q => g1(7),
      R => '0'
    );
\g2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => g1(0),
      Q => g2(0),
      R => '0'
    );
\g2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => g1(1),
      Q => g2(1),
      R => '0'
    );
\g2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => g1(2),
      Q => g2(2),
      R => '0'
    );
\g2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => g1(3),
      Q => g2(3),
      R => '0'
    );
\g2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => g1(4),
      Q => g2(4),
      R => '0'
    );
\g2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => g1(5),
      Q => g2(5),
      R => '0'
    );
\g2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => g1(6),
      Q => g2(6),
      R => '0'
    );
\g2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => g1(7),
      Q => g2(7),
      R => '0'
    );
\green_add[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => green_video_chroma(0),
      I1 => green_comp_chroma(0),
      I2 => p_0_in0_in(0),
      I3 => chroma_on,
      O => \green_add[0]_i_1_n_0\
    );
\green_add[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => green_video_chroma(1),
      I1 => green_comp_chroma(1),
      I2 => p_0_in0_in(1),
      I3 => chroma_on,
      O => \green_add[1]_i_1_n_0\
    );
\green_add[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => green_video_chroma(2),
      I1 => green_comp_chroma(2),
      I2 => p_0_in0_in(2),
      I3 => chroma_on,
      O => \green_add[2]_i_1_n_0\
    );
\green_add[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => green_video_chroma(3),
      I1 => green_comp_chroma(3),
      I2 => p_0_in0_in(3),
      I3 => chroma_on,
      O => \green_add[3]_i_1_n_0\
    );
\green_add[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => green_video_chroma(4),
      I1 => green_comp_chroma(4),
      I2 => p_0_in0_in(4),
      I3 => chroma_on,
      O => \green_add[4]_i_1_n_0\
    );
\green_add[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => green_video_chroma(5),
      I1 => green_comp_chroma(5),
      I2 => p_0_in0_in(5),
      I3 => chroma_on,
      O => \green_add[5]_i_1_n_0\
    );
\green_add[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => green_video_chroma(6),
      I1 => green_comp_chroma(6),
      I2 => p_0_in0_in(6),
      I3 => chroma_on,
      O => \green_add[6]_i_1_n_0\
    );
\green_add[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => green_video_chroma(7),
      I1 => green_comp_chroma(7),
      I2 => p_0_in0_in(7),
      I3 => chroma_on,
      O => \green_add[7]_i_1_n_0\
    );
\green_add_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \green_add[0]_i_1_n_0\,
      Q => green_blend(0),
      R => '0'
    );
\green_add_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \green_add[1]_i_1_n_0\,
      Q => green_blend(1),
      R => '0'
    );
\green_add_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \green_add[2]_i_1_n_0\,
      Q => green_blend(2),
      R => '0'
    );
\green_add_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \green_add[3]_i_1_n_0\,
      Q => green_blend(3),
      R => '0'
    );
\green_add_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \green_add[4]_i_1_n_0\,
      Q => green_blend(4),
      R => '0'
    );
\green_add_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \green_add[5]_i_1_n_0\,
      Q => green_blend(5),
      R => '0'
    );
\green_add_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \green_add[6]_i_1_n_0\,
      Q => green_blend(6),
      R => '0'
    );
\green_add_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \green_add[7]_i_1_n_0\,
      Q => green_blend(7),
      R => '0'
    );
\green_comp_chroma_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_comp(0),
      Q => green_comp_chroma(0),
      R => '0'
    );
\green_comp_chroma_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_comp(1),
      Q => green_comp_chroma(1),
      R => '0'
    );
\green_comp_chroma_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_comp(2),
      Q => green_comp_chroma(2),
      R => '0'
    );
\green_comp_chroma_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_comp(3),
      Q => green_comp_chroma(3),
      R => '0'
    );
\green_comp_chroma_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_comp(4),
      Q => green_comp_chroma(4),
      R => '0'
    );
\green_comp_chroma_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_comp(5),
      Q => green_comp_chroma(5),
      R => '0'
    );
\green_comp_chroma_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_comp(6),
      Q => green_comp_chroma(6),
      R => '0'
    );
\green_comp_chroma_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_comp(7),
      Q => green_comp_chroma(7),
      R => '0'
    );
\green_video_chroma_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => g2(0),
      Q => green_video_chroma(0),
      R => '0'
    );
\green_video_chroma_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => g2(1),
      Q => green_video_chroma(1),
      R => '0'
    );
\green_video_chroma_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => g2(2),
      Q => green_video_chroma(2),
      R => '0'
    );
\green_video_chroma_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => g2(3),
      Q => green_video_chroma(3),
      R => '0'
    );
\green_video_chroma_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => g2(4),
      Q => green_video_chroma(4),
      R => '0'
    );
\green_video_chroma_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => g2(5),
      Q => green_video_chroma(5),
      R => '0'
    );
\green_video_chroma_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => g2(6),
      Q => green_video_chroma(6),
      R => '0'
    );
\green_video_chroma_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => g2(7),
      Q => green_video_chroma(7),
      R => '0'
    );
\hsync_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => hsync,
      Q => \hsync_p_reg_n_0_[0]\,
      R => '0'
    );
\hsync_p_reg[2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \hsync_p_reg_n_0_[0]\,
      Q => \hsync_p_reg[2]_srl2_n_0\
    );
\hsync_p_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \hsync_p_reg[2]_srl2_n_0\,
      Q => hsync_pipe,
      R => '0'
    );
\p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ctl_code(0),
      Q => \p1_reg_n_0_[0]\,
      R => '0'
    );
\p1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_di(2),
      Q => \p1_reg_n_0_[10]\,
      R => '0'
    );
\p1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_di(3),
      Q => \p1_reg_n_0_[11]\,
      R => '0'
    );
\p1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_di(0),
      Q => \p1_reg_n_0_[12]\,
      R => '0'
    );
\p1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_di(1),
      Q => \p1_reg_n_0_[13]\,
      R => '0'
    );
\p1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_di(2),
      Q => \p1_reg_n_0_[14]\,
      R => '0'
    );
\p1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_di(3),
      Q => \p1_reg_n_0_[15]\,
      R => '0'
    );
\p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ctl_code(1),
      Q => \p1_reg_n_0_[1]\,
      R => '0'
    );
\p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ctl_code(2),
      Q => \p1_reg_n_0_[2]\,
      R => '0'
    );
\p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ctl_code(3),
      Q => \p1_reg_n_0_[3]\,
      R => '0'
    );
\p1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_di(0),
      Q => \p1_reg_n_0_[4]\,
      R => '0'
    );
\p1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_di(1),
      Q => \p1_reg_n_0_[5]\,
      R => '0'
    );
\p1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_di(2),
      Q => \p1_reg_n_0_[6]\,
      R => '0'
    );
\p1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => blue_di(3),
      Q => \p1_reg_n_0_[7]\,
      R => '0'
    );
\p1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_di(0),
      Q => \p1_reg_n_0_[8]\,
      R => '0'
    );
\p1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => green_di(1),
      Q => \p1_reg_n_0_[9]\,
      R => '0'
    );
\p3_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \p1_reg_n_0_[0]\,
      Q => \p3_reg[0]_srl2_n_0\
    );
\p3_reg[10]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \p1_reg_n_0_[10]\,
      Q => \p3_reg[10]_srl2_n_0\
    );
\p3_reg[11]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \p1_reg_n_0_[11]\,
      Q => \p3_reg[11]_srl2_n_0\
    );
\p3_reg[12]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \p1_reg_n_0_[12]\,
      Q => \p3_reg[12]_srl2_n_0\
    );
\p3_reg[13]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \p1_reg_n_0_[13]\,
      Q => \p3_reg[13]_srl2_n_0\
    );
\p3_reg[14]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \p1_reg_n_0_[14]\,
      Q => \p3_reg[14]_srl2_n_0\
    );
\p3_reg[15]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \p1_reg_n_0_[15]\,
      Q => \p3_reg[15]_srl2_n_0\
    );
\p3_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \p1_reg_n_0_[1]\,
      Q => \p3_reg[1]_srl2_n_0\
    );
\p3_reg[2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \p1_reg_n_0_[2]\,
      Q => \p3_reg[2]_srl2_n_0\
    );
\p3_reg[3]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \p1_reg_n_0_[3]\,
      Q => \p3_reg[3]_srl2_n_0\
    );
\p3_reg[4]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \p1_reg_n_0_[4]\,
      Q => \p3_reg[4]_srl2_n_0\
    );
\p3_reg[5]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \p1_reg_n_0_[5]\,
      Q => \p3_reg[5]_srl2_n_0\
    );
\p3_reg[6]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \p1_reg_n_0_[6]\,
      Q => \p3_reg[6]_srl2_n_0\
    );
\p3_reg[7]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \p1_reg_n_0_[7]\,
      Q => \p3_reg[7]_srl2_n_0\
    );
\p3_reg[8]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \p1_reg_n_0_[8]\,
      Q => \p3_reg[8]_srl2_n_0\
    );
\p3_reg[9]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \p1_reg_n_0_[9]\,
      Q => \p3_reg[9]_srl2_n_0\
    );
\p4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p3_reg[0]_srl2_n_0\,
      Q => ctl_code_pipe(0),
      R => '0'
    );
\p4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p3_reg[10]_srl2_n_0\,
      Q => green_di_pipe(2),
      R => '0'
    );
\p4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p3_reg[11]_srl2_n_0\,
      Q => green_di_pipe(3),
      R => '0'
    );
\p4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p3_reg[12]_srl2_n_0\,
      Q => red_di_pipe(0),
      R => '0'
    );
\p4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p3_reg[13]_srl2_n_0\,
      Q => red_di_pipe(1),
      R => '0'
    );
\p4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p3_reg[14]_srl2_n_0\,
      Q => red_di_pipe(2),
      R => '0'
    );
\p4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p3_reg[15]_srl2_n_0\,
      Q => red_di_pipe(3),
      R => '0'
    );
\p4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p3_reg[1]_srl2_n_0\,
      Q => ctl_code_pipe(1),
      R => '0'
    );
\p4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p3_reg[2]_srl2_n_0\,
      Q => ctl_code_pipe(2),
      R => '0'
    );
\p4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p3_reg[3]_srl2_n_0\,
      Q => ctl_code_pipe(3),
      R => '0'
    );
\p4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p3_reg[4]_srl2_n_0\,
      Q => blue_di_pipe(0),
      R => '0'
    );
\p4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p3_reg[5]_srl2_n_0\,
      Q => blue_di_pipe(1),
      R => '0'
    );
\p4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p3_reg[6]_srl2_n_0\,
      Q => blue_di_pipe(2),
      R => '0'
    );
\p4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p3_reg[7]_srl2_n_0\,
      Q => blue_di_pipe(3),
      R => '0'
    );
\p4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p3_reg[8]_srl2_n_0\,
      Q => green_di_pipe(0),
      R => '0'
    );
\p4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p3_reg[9]_srl2_n_0\,
      Q => green_di_pipe(1),
      R => '0'
    );
\r1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_video(0),
      Q => r1(0),
      R => '0'
    );
\r1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_video(1),
      Q => r1(1),
      R => '0'
    );
\r1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_video(2),
      Q => r1(2),
      R => '0'
    );
\r1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_video(3),
      Q => r1(3),
      R => '0'
    );
\r1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_video(4),
      Q => r1(4),
      R => '0'
    );
\r1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_video(5),
      Q => r1(5),
      R => '0'
    );
\r1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_video(6),
      Q => r1(6),
      R => '0'
    );
\r1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_video(7),
      Q => r1(7),
      R => '0'
    );
\r2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r1(0),
      Q => r2(0),
      R => '0'
    );
\r2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r1(1),
      Q => r2(1),
      R => '0'
    );
\r2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r1(2),
      Q => r2(2),
      R => '0'
    );
\r2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r1(3),
      Q => r2(3),
      R => '0'
    );
\r2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r1(4),
      Q => r2(4),
      R => '0'
    );
\r2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r1(5),
      Q => r2(5),
      R => '0'
    );
\r2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r1(6),
      Q => r2(6),
      R => '0'
    );
\r2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r1(7),
      Q => r2(7),
      R => '0'
    );
\red_add[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => red_video_chroma(0),
      I1 => red_comp_chroma(0),
      I2 => p_0_in(0),
      I3 => chroma_on,
      O => \red_add[0]_i_1_n_0\
    );
\red_add[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => red_video_chroma(1),
      I1 => red_comp_chroma(1),
      I2 => p_0_in(1),
      I3 => chroma_on,
      O => \red_add[1]_i_1_n_0\
    );
\red_add[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => red_video_chroma(2),
      I1 => red_comp_chroma(2),
      I2 => p_0_in(2),
      I3 => chroma_on,
      O => \red_add[2]_i_1_n_0\
    );
\red_add[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => red_video_chroma(3),
      I1 => red_comp_chroma(3),
      I2 => p_0_in(3),
      I3 => chroma_on,
      O => \red_add[3]_i_1_n_0\
    );
\red_add[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => red_video_chroma(4),
      I1 => red_comp_chroma(4),
      I2 => p_0_in(4),
      I3 => chroma_on,
      O => \red_add[4]_i_1_n_0\
    );
\red_add[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => red_video_chroma(5),
      I1 => red_comp_chroma(5),
      I2 => p_0_in(5),
      I3 => chroma_on,
      O => \red_add[5]_i_1_n_0\
    );
\red_add[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => red_video_chroma(6),
      I1 => red_comp_chroma(6),
      I2 => p_0_in(6),
      I3 => chroma_on,
      O => \red_add[6]_i_1_n_0\
    );
\red_add[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3C"
    )
        port map (
      I0 => red_video_chroma(7),
      I1 => red_comp_chroma(7),
      I2 => p_0_in(7),
      I3 => chroma_on,
      O => \red_add[7]_i_1_n_0\
    );
\red_add_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \red_add[0]_i_1_n_0\,
      Q => red_blend(0),
      R => '0'
    );
\red_add_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \red_add[1]_i_1_n_0\,
      Q => red_blend(1),
      R => '0'
    );
\red_add_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \red_add[2]_i_1_n_0\,
      Q => red_blend(2),
      R => '0'
    );
\red_add_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \red_add[3]_i_1_n_0\,
      Q => red_blend(3),
      R => '0'
    );
\red_add_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \red_add[4]_i_1_n_0\,
      Q => red_blend(4),
      R => '0'
    );
\red_add_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \red_add[5]_i_1_n_0\,
      Q => red_blend(5),
      R => '0'
    );
\red_add_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \red_add[6]_i_1_n_0\,
      Q => red_blend(6),
      R => '0'
    );
\red_add_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \red_add[7]_i_1_n_0\,
      Q => red_blend(7),
      R => '0'
    );
\red_comp_chroma_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_comp(0),
      Q => red_comp_chroma(0),
      R => '0'
    );
\red_comp_chroma_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_comp(1),
      Q => red_comp_chroma(1),
      R => '0'
    );
\red_comp_chroma_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_comp(2),
      Q => red_comp_chroma(2),
      R => '0'
    );
\red_comp_chroma_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_comp(3),
      Q => red_comp_chroma(3),
      R => '0'
    );
\red_comp_chroma_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_comp(4),
      Q => red_comp_chroma(4),
      R => '0'
    );
\red_comp_chroma_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_comp(5),
      Q => red_comp_chroma(5),
      R => '0'
    );
\red_comp_chroma_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_comp(6),
      Q => red_comp_chroma(6),
      R => '0'
    );
\red_comp_chroma_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => red_comp(7),
      Q => red_comp_chroma(7),
      R => '0'
    );
\red_video_chroma_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r2(0),
      Q => red_video_chroma(0),
      R => '0'
    );
\red_video_chroma_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r2(1),
      Q => red_video_chroma(1),
      R => '0'
    );
\red_video_chroma_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r2(2),
      Q => red_video_chroma(2),
      R => '0'
    );
\red_video_chroma_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r2(3),
      Q => red_video_chroma(3),
      R => '0'
    );
\red_video_chroma_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r2(4),
      Q => red_video_chroma(4),
      R => '0'
    );
\red_video_chroma_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r2(5),
      Q => red_video_chroma(5),
      R => '0'
    );
\red_video_chroma_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r2(6),
      Q => red_video_chroma(6),
      R => '0'
    );
\red_video_chroma_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r2(7),
      Q => red_video_chroma(7),
      R => '0'
    );
\vid_gb_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vid_gb,
      Q => \vid_gb_p_reg_n_0_[0]\,
      R => '0'
    );
\vid_gb_p_reg[2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \vid_gb_p_reg_n_0_[0]\,
      Q => \vid_gb_p_reg[2]_srl2_n_0\
    );
\vid_gb_p_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \vid_gb_p_reg[2]_srl2_n_0\,
      Q => vid_gb_pipe,
      R => '0'
    );
\vsync_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vsync,
      Q => \vsync_p_reg_n_0_[0]\,
      R => '0'
    );
\vsync_p_reg[2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \vsync_p_reg_n_0_[0]\,
      Q => \vsync_p_reg[2]_srl2_n_0\
    );
\vsync_p_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \vsync_p_reg[2]_srl2_n_0\,
      Q => vsync_pipe,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_chroma_key_0_0 is
  port (
    clk : in STD_LOGIC;
    blue_video : in STD_LOGIC_VECTOR ( 7 downto 0 );
    green_video : in STD_LOGIC_VECTOR ( 7 downto 0 );
    red_video : in STD_LOGIC_VECTOR ( 7 downto 0 );
    blue_comp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    green_comp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    red_comp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    blue_blend : out STD_LOGIC_VECTOR ( 7 downto 0 );
    green_blend : out STD_LOGIC_VECTOR ( 7 downto 0 );
    red_blend : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cipher_stream : in STD_LOGIC_VECTOR ( 23 downto 0 );
    chroma_en : in STD_LOGIC;
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    de : in STD_LOGIC;
    vid_gb : in STD_LOGIC;
    dat_gb : in STD_LOGIC;
    dat_ena : in STD_LOGIC;
    ctl_code : in STD_LOGIC_VECTOR ( 3 downto 0 );
    blue_di : in STD_LOGIC_VECTOR ( 3 downto 0 );
    red_di : in STD_LOGIC_VECTOR ( 3 downto 0 );
    green_di : in STD_LOGIC_VECTOR ( 3 downto 0 );
    hsync_pipe : out STD_LOGIC;
    vsync_pipe : out STD_LOGIC;
    de_pipe : out STD_LOGIC;
    vid_gb_pipe : out STD_LOGIC;
    dat_gb_pipe : out STD_LOGIC;
    dat_ena_pipe : out STD_LOGIC;
    ctl_code_pipe : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue_di_pipe : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green_di_pipe : out STD_LOGIC_VECTOR ( 3 downto 0 );
    red_di_pipe : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of overlay1_chroma_key_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of overlay1_chroma_key_0_0 : entity is "overlay1_chroma_key_0_0,chroma_key,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of overlay1_chroma_key_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of overlay1_chroma_key_0_0 : entity is "chroma_key,Vivado 2016.1";
end overlay1_chroma_key_0_0;

architecture STRUCTURE of overlay1_chroma_key_0_0 is
begin
inst: entity work.overlay1_chroma_key_0_0_chroma_key
     port map (
      blue_blend(7 downto 0) => blue_blend(7 downto 0),
      blue_comp(7 downto 0) => blue_comp(7 downto 0),
      blue_di(3 downto 0) => blue_di(3 downto 0),
      blue_di_pipe(3 downto 0) => blue_di_pipe(3 downto 0),
      blue_video(7 downto 0) => blue_video(7 downto 0),
      chroma_en => chroma_en,
      cipher_stream(23 downto 0) => cipher_stream(23 downto 0),
      clk => clk,
      ctl_code(3 downto 0) => ctl_code(3 downto 0),
      ctl_code_pipe(3 downto 0) => ctl_code_pipe(3 downto 0),
      dat_ena => dat_ena,
      dat_ena_pipe => dat_ena_pipe,
      dat_gb => dat_gb,
      dat_gb_pipe => dat_gb_pipe,
      de => de,
      de_pipe => de_pipe,
      green_blend(7 downto 0) => green_blend(7 downto 0),
      green_comp(7 downto 0) => green_comp(7 downto 0),
      green_di(3 downto 0) => green_di(3 downto 0),
      green_di_pipe(3 downto 0) => green_di_pipe(3 downto 0),
      green_video(7 downto 0) => green_video(7 downto 0),
      hsync => hsync,
      hsync_pipe => hsync_pipe,
      red_blend(7 downto 0) => red_blend(7 downto 0),
      red_comp(7 downto 0) => red_comp(7 downto 0),
      red_di(3 downto 0) => red_di(3 downto 0),
      red_di_pipe(3 downto 0) => red_di_pipe(3 downto 0),
      red_video(7 downto 0) => red_video(7 downto 0),
      vid_gb => vid_gb,
      vid_gb_pipe => vid_gb_pipe,
      vsync => vsync,
      vsync_pipe => vsync_pipe
    );
end STRUCTURE;
