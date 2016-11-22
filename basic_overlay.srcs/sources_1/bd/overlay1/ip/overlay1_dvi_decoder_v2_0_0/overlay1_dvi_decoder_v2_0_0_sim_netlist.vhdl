-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Tue Nov 01 00:07:16 2016
-- Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_dvi_decoder_v2_0_0/overlay1_dvi_decoder_v2_0_0_sim_netlist.vhdl
-- Design      : overlay1_dvi_decoder_v2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50tcsg325-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_DRAM16XN is
  port (
    O_DATA_OUT_DP : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rx_clk : in STD_LOGIC;
    \dataout_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    WRITE_EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ra_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_DRAM16XN : entity is "DRAM16XN";
end overlay1_dvi_decoder_v2_0_0_DRAM16XN;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_DRAM16XN is
  signal \dram16s[0].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[1].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[2].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[3].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[4].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[5].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[6].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[7].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[8].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[9].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \dram16s[0].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \dram16s[0].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[1].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[1].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[2].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[2].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[3].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[3].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[4].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[4].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[5].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[5].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[6].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[6].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[7].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[7].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[8].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[8].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[9].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[9].i_RAM16X1D_U\ : label is "RAM16X1D";
begin
\dram16s[0].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(0),
      DPO => O_DATA_OUT_DP(0),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[0].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[1].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(1),
      DPO => O_DATA_OUT_DP(1),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[1].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[2].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(2),
      DPO => O_DATA_OUT_DP(2),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[2].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[3].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(3),
      DPO => O_DATA_OUT_DP(3),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[3].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[4].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(4),
      DPO => O_DATA_OUT_DP(4),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[4].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[5].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(5),
      DPO => O_DATA_OUT_DP(5),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[5].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[6].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(6),
      DPO => O_DATA_OUT_DP(6),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[6].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[7].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(7),
      DPO => O_DATA_OUT_DP(7),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[7].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[8].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(8),
      DPO => O_DATA_OUT_DP(8),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[8].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[9].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(9),
      DPO => O_DATA_OUT_DP(9),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[9].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_DRAM16XN_15 is
  port (
    O_DATA_OUT_DP : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rx_clk : in STD_LOGIC;
    \dataout_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    WRITE_EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ra_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_DRAM16XN_15 : entity is "DRAM16XN";
end overlay1_dvi_decoder_v2_0_0_DRAM16XN_15;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_DRAM16XN_15 is
  signal \dram16s[0].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[1].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[2].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[3].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[4].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[5].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[6].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[7].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[8].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[9].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \dram16s[0].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \dram16s[0].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[1].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[1].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[2].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[2].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[3].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[3].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[4].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[4].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[5].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[5].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[6].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[6].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[7].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[7].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[8].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[8].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[9].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[9].i_RAM16X1D_U\ : label is "RAM16X1D";
begin
\dram16s[0].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(0),
      DPO => O_DATA_OUT_DP(0),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[0].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[1].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(1),
      DPO => O_DATA_OUT_DP(1),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[1].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[2].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(2),
      DPO => O_DATA_OUT_DP(2),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[2].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[3].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(3),
      DPO => O_DATA_OUT_DP(3),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[3].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[4].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(4),
      DPO => O_DATA_OUT_DP(4),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[4].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[5].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(5),
      DPO => O_DATA_OUT_DP(5),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[5].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[6].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(6),
      DPO => O_DATA_OUT_DP(6),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[6].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[7].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(7),
      DPO => O_DATA_OUT_DP(7),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[7].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[8].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(8),
      DPO => O_DATA_OUT_DP(8),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[8].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[9].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(9),
      DPO => O_DATA_OUT_DP(9),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[9].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_DRAM16XN_9 is
  port (
    O_DATA_OUT_DP : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rx_clk : in STD_LOGIC;
    \dataout_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    WRITE_EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ra_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_DRAM16XN_9 : entity is "DRAM16XN";
end overlay1_dvi_decoder_v2_0_0_DRAM16XN_9;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_DRAM16XN_9 is
  signal \dram16s[0].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[1].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[2].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[3].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[4].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[5].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[6].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[7].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[8].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  signal \dram16s[9].i_RAM16X1D_U_n_1\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \dram16s[0].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \dram16s[0].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[1].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[1].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[2].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[2].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[3].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[3].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[4].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[4].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[5].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[5].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[6].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[6].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[7].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[7].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[8].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[8].i_RAM16X1D_U\ : label is "RAM16X1D";
  attribute BOX_TYPE of \dram16s[9].i_RAM16X1D_U\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \dram16s[9].i_RAM16X1D_U\ : label is "RAM16X1D";
begin
\dram16s[0].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(0),
      DPO => O_DATA_OUT_DP(0),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[0].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[1].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(1),
      DPO => O_DATA_OUT_DP(1),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[1].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[2].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(2),
      DPO => O_DATA_OUT_DP(2),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[2].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[3].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(3),
      DPO => O_DATA_OUT_DP(3),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[3].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[4].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(4),
      DPO => O_DATA_OUT_DP(4),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[4].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[5].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(5),
      DPO => O_DATA_OUT_DP(5),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[5].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[6].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(6),
      DPO => O_DATA_OUT_DP(6),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[6].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[7].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(7),
      DPO => O_DATA_OUT_DP(7),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[7].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[8].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(8),
      DPO => O_DATA_OUT_DP(8),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[8].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
\dram16s[9].i_RAM16X1D_U\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => \dataout_reg[9]\(9),
      DPO => O_DATA_OUT_DP(9),
      DPRA0 => \ra_reg[3]\(0),
      DPRA1 => \ra_reg[3]\(1),
      DPRA2 => \ra_reg[3]\(2),
      DPRA3 => \ra_reg[3]\(3),
      DPRA4 => '0',
      SPO => \dram16s[9].i_RAM16X1D_U_n_1\,
      WCLK => rx_clk,
      WE => WRITE_EN
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_decode_terc4 is
  port (
    blue_di : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rx_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_decode_terc4 : entity is "decode_terc4";
end overlay1_dvi_decoder_v2_0_0_decode_terc4;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_decode_terc4 is
  signal \din_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[9]\ : STD_LOGIC;
  signal dout : STD_LOGIC;
  signal \dout[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_6__1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_7__1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_8__1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_9__1_n_0\ : STD_LOGIC;
begin
\din_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(0),
      Q => \din_r_reg_n_0_[0]\,
      R => SR(0)
    );
\din_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(1),
      Q => \din_r_reg_n_0_[1]\,
      R => SR(0)
    );
\din_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(2),
      Q => \din_r_reg_n_0_[2]\,
      R => SR(0)
    );
\din_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(3),
      Q => \din_r_reg_n_0_[3]\,
      R => SR(0)
    );
\din_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(4),
      Q => \din_r_reg_n_0_[4]\,
      R => SR(0)
    );
\din_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(5),
      Q => \din_r_reg_n_0_[5]\,
      R => SR(0)
    );
\din_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(6),
      Q => \din_r_reg_n_0_[6]\,
      R => SR(0)
    );
\din_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(7),
      Q => \din_r_reg_n_0_[7]\,
      R => SR(0)
    );
\din_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(8),
      Q => \din_r_reg_n_0_[8]\,
      R => SR(0)
    );
\din_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(9),
      Q => \din_r_reg_n_0_[9]\,
      R => SR(0)
    );
\dout[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEF000000AF00AF"
    )
        port map (
      I0 => \din_r_reg_n_0_[1]\,
      I1 => \din_r_reg_n_0_[5]\,
      I2 => \din_r_reg_n_0_[2]\,
      I3 => \din_r_reg_n_0_[8]\,
      I4 => \din_r_reg_n_0_[4]\,
      I5 => \din_r_reg_n_0_[3]\,
      O => \dout[0]_i_1__1_n_0\
    );
\dout[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8CCA8FC80CC80FF"
    )
        port map (
      I0 => \din_r_reg_n_0_[2]\,
      I1 => \din_r_reg_n_0_[8]\,
      I2 => \din_r_reg_n_0_[7]\,
      I3 => \din_r_reg_n_0_[4]\,
      I4 => \din_r_reg_n_0_[3]\,
      I5 => \din_r_reg_n_0_[5]\,
      O => \dout[1]_i_1__1_n_0\
    );
\dout[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA04550"
    )
        port map (
      I0 => \din_r_reg_n_0_[2]\,
      I1 => \din_r_reg_n_0_[8]\,
      I2 => \din_r_reg_n_0_[1]\,
      I3 => \din_r_reg_n_0_[5]\,
      I4 => \din_r_reg_n_0_[3]\,
      O => \dout[2]_i_1__1_n_0\
    );
\dout[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFD5CFC0757F303F"
    )
        port map (
      I0 => \din_r_reg_n_0_[2]\,
      I1 => \din_r_reg_n_0_[7]\,
      I2 => \din_r_reg_n_0_[8]\,
      I3 => \din_r_reg_n_0_[5]\,
      I4 => \din_r_reg_n_0_[3]\,
      I5 => \din_r_reg_n_0_[4]\,
      O => \dout[3]_i_2__1_n_0\
    );
\dout[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AF00A0C000C000"
    )
        port map (
      I0 => \dout[3]_i_5__1_n_0\,
      I1 => \dout[3]_i_6__1_n_0\,
      I2 => \din_r_reg_n_0_[2]\,
      I3 => \din_r_reg_n_0_[8]\,
      I4 => \dout[3]_i_7__1_n_0\,
      I5 => \din_r_reg_n_0_[9]\,
      O => \dout[3]_i_3__1_n_0\
    );
\dout[3]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005808"
    )
        port map (
      I0 => \din_r_reg_n_0_[8]\,
      I1 => \dout[3]_i_8__1_n_0\,
      I2 => \din_r_reg_n_0_[9]\,
      I3 => \dout[3]_i_9__1_n_0\,
      I4 => \din_r_reg_n_0_[2]\,
      O => \dout[3]_i_4__1_n_0\
    );
\dout[3]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0012102800000000"
    )
        port map (
      I0 => \din_r_reg_n_0_[6]\,
      I1 => \din_r_reg_n_0_[5]\,
      I2 => \din_r_reg_n_0_[3]\,
      I3 => \din_r_reg_n_0_[4]\,
      I4 => \din_r_reg_n_0_[1]\,
      I5 => \din_r_reg_n_0_[7]\,
      O => \dout[3]_i_5__1_n_0\
    );
\dout[3]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004404080"
    )
        port map (
      I0 => \din_r_reg_n_0_[5]\,
      I1 => \din_r_reg_n_0_[3]\,
      I2 => \din_r_reg_n_0_[4]\,
      I3 => \din_r_reg_n_0_[1]\,
      I4 => \din_r_reg_n_0_[7]\,
      I5 => \din_r_reg_n_0_[6]\,
      O => \dout[3]_i_6__1_n_0\
    );
\dout[3]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \din_r_reg_n_0_[7]\,
      I1 => \din_r_reg_n_0_[5]\,
      I2 => \din_r_reg_n_0_[3]\,
      I3 => \din_r_reg_n_0_[4]\,
      I4 => \din_r_reg_n_0_[1]\,
      I5 => \din_r_reg_n_0_[6]\,
      O => \dout[3]_i_7__1_n_0\
    );
\dout[3]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010280000"
    )
        port map (
      I0 => \din_r_reg_n_0_[6]\,
      I1 => \din_r_reg_n_0_[1]\,
      I2 => \din_r_reg_n_0_[4]\,
      I3 => \din_r_reg_n_0_[3]\,
      I4 => \din_r_reg_n_0_[5]\,
      I5 => \din_r_reg_n_0_[7]\,
      O => \dout[3]_i_8__1_n_0\
    );
\dout[3]_i_9__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100020800000000"
    )
        port map (
      I0 => \din_r_reg_n_0_[5]\,
      I1 => \din_r_reg_n_0_[4]\,
      I2 => \din_r_reg_n_0_[3]\,
      I3 => \din_r_reg_n_0_[1]\,
      I4 => \din_r_reg_n_0_[7]\,
      I5 => \din_r_reg_n_0_[6]\,
      O => \dout[3]_i_9__1_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => dout,
      D => \dout[0]_i_1__1_n_0\,
      Q => blue_di(0),
      R => SR(0)
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => dout,
      D => \dout[1]_i_1__1_n_0\,
      Q => blue_di(1),
      R => SR(0)
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => dout,
      D => \dout[2]_i_1__1_n_0\,
      Q => blue_di(2),
      R => SR(0)
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => dout,
      D => \dout[3]_i_2__1_n_0\,
      Q => blue_di(3),
      R => SR(0)
    );
\dout_reg[3]_i_1__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout[3]_i_3__1_n_0\,
      I1 => \dout[3]_i_4__1_n_0\,
      O => dout,
      S => \din_r_reg_n_0_[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_decode_terc4_0 is
  port (
    green_di : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rx_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_decode_terc4_0 : entity is "decode_terc4";
end overlay1_dvi_decoder_v2_0_0_decode_terc4_0;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_decode_terc4_0 is
  signal din_r : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal dout : STD_LOGIC;
  signal \dout[0]_i_1_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1_n_0\ : STD_LOGIC;
  signal \dout[2]_i_1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_2_n_0\ : STD_LOGIC;
  signal \dout[3]_i_3_n_0\ : STD_LOGIC;
  signal \dout[3]_i_4_n_0\ : STD_LOGIC;
  signal \dout[3]_i_5_n_0\ : STD_LOGIC;
  signal \dout[3]_i_6_n_0\ : STD_LOGIC;
  signal \dout[3]_i_7_n_0\ : STD_LOGIC;
  signal \dout[3]_i_8_n_0\ : STD_LOGIC;
  signal \dout[3]_i_9_n_0\ : STD_LOGIC;
begin
\din_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(0),
      Q => din_r(0),
      R => SR(0)
    );
\din_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(1),
      Q => din_r(1),
      R => SR(0)
    );
\din_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(2),
      Q => din_r(2),
      R => SR(0)
    );
\din_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(3),
      Q => din_r(3),
      R => SR(0)
    );
\din_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(4),
      Q => din_r(4),
      R => SR(0)
    );
\din_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(5),
      Q => din_r(5),
      R => SR(0)
    );
\din_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(6),
      Q => din_r(6),
      R => SR(0)
    );
\din_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(7),
      Q => din_r(7),
      R => SR(0)
    );
\din_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(8),
      Q => din_r(8),
      R => SR(0)
    );
\din_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(9),
      Q => din_r(9),
      R => SR(0)
    );
\dout[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEF000000AF00AF"
    )
        port map (
      I0 => din_r(1),
      I1 => din_r(5),
      I2 => din_r(2),
      I3 => din_r(8),
      I4 => din_r(4),
      I5 => din_r(3),
      O => \dout[0]_i_1_n_0\
    );
\dout[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8CCA8FC80CC80FF"
    )
        port map (
      I0 => din_r(2),
      I1 => din_r(8),
      I2 => din_r(7),
      I3 => din_r(4),
      I4 => din_r(3),
      I5 => din_r(5),
      O => \dout[1]_i_1_n_0\
    );
\dout[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA04550"
    )
        port map (
      I0 => din_r(2),
      I1 => din_r(8),
      I2 => din_r(1),
      I3 => din_r(5),
      I4 => din_r(3),
      O => \dout[2]_i_1_n_0\
    );
\dout[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFD5CFC0757F303F"
    )
        port map (
      I0 => din_r(2),
      I1 => din_r(7),
      I2 => din_r(8),
      I3 => din_r(5),
      I4 => din_r(3),
      I5 => din_r(4),
      O => \dout[3]_i_2_n_0\
    );
\dout[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AF00A0C000C000"
    )
        port map (
      I0 => \dout[3]_i_5_n_0\,
      I1 => \dout[3]_i_6_n_0\,
      I2 => din_r(2),
      I3 => din_r(8),
      I4 => \dout[3]_i_7_n_0\,
      I5 => din_r(9),
      O => \dout[3]_i_3_n_0\
    );
\dout[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005808"
    )
        port map (
      I0 => din_r(8),
      I1 => \dout[3]_i_8_n_0\,
      I2 => din_r(9),
      I3 => \dout[3]_i_9_n_0\,
      I4 => din_r(2),
      O => \dout[3]_i_4_n_0\
    );
\dout[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0012102800000000"
    )
        port map (
      I0 => din_r(6),
      I1 => din_r(5),
      I2 => din_r(3),
      I3 => din_r(4),
      I4 => din_r(1),
      I5 => din_r(7),
      O => \dout[3]_i_5_n_0\
    );
\dout[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004404080"
    )
        port map (
      I0 => din_r(5),
      I1 => din_r(3),
      I2 => din_r(4),
      I3 => din_r(1),
      I4 => din_r(7),
      I5 => din_r(6),
      O => \dout[3]_i_6_n_0\
    );
\dout[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => din_r(7),
      I1 => din_r(5),
      I2 => din_r(3),
      I3 => din_r(4),
      I4 => din_r(1),
      I5 => din_r(6),
      O => \dout[3]_i_7_n_0\
    );
\dout[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010280000"
    )
        port map (
      I0 => din_r(6),
      I1 => din_r(1),
      I2 => din_r(4),
      I3 => din_r(3),
      I4 => din_r(5),
      I5 => din_r(7),
      O => \dout[3]_i_8_n_0\
    );
\dout[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100020800000000"
    )
        port map (
      I0 => din_r(5),
      I1 => din_r(4),
      I2 => din_r(3),
      I3 => din_r(1),
      I4 => din_r(7),
      I5 => din_r(6),
      O => \dout[3]_i_9_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => dout,
      D => \dout[0]_i_1_n_0\,
      Q => green_di(0),
      R => SR(0)
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => dout,
      D => \dout[1]_i_1_n_0\,
      Q => green_di(1),
      R => SR(0)
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => dout,
      D => \dout[2]_i_1_n_0\,
      Q => green_di(2),
      R => SR(0)
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => dout,
      D => \dout[3]_i_2_n_0\,
      Q => green_di(3),
      R => SR(0)
    );
\dout_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout[3]_i_3_n_0\,
      I1 => \dout[3]_i_4_n_0\,
      O => dout,
      S => din_r(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_decode_terc4_1 is
  port (
    red_di : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rx_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_decode_terc4_1 : entity is "decode_terc4";
end overlay1_dvi_decoder_v2_0_0_decode_terc4_1;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_decode_terc4_1 is
  signal \din_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[9]\ : STD_LOGIC;
  signal dout : STD_LOGIC;
  signal \dout[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \dout[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \dout[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \dout[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \dout[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \dout[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \dout[3]_i_8__0_n_0\ : STD_LOGIC;
  signal \dout[3]_i_9__0_n_0\ : STD_LOGIC;
begin
\din_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(0),
      Q => \din_r_reg_n_0_[0]\,
      R => SR(0)
    );
\din_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(1),
      Q => \din_r_reg_n_0_[1]\,
      R => SR(0)
    );
\din_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(2),
      Q => \din_r_reg_n_0_[2]\,
      R => SR(0)
    );
\din_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(3),
      Q => \din_r_reg_n_0_[3]\,
      R => SR(0)
    );
\din_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(4),
      Q => \din_r_reg_n_0_[4]\,
      R => SR(0)
    );
\din_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(5),
      Q => \din_r_reg_n_0_[5]\,
      R => SR(0)
    );
\din_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(6),
      Q => \din_r_reg_n_0_[6]\,
      R => SR(0)
    );
\din_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(7),
      Q => \din_r_reg_n_0_[7]\,
      R => SR(0)
    );
\din_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(8),
      Q => \din_r_reg_n_0_[8]\,
      R => SR(0)
    );
\din_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => D(9),
      Q => \din_r_reg_n_0_[9]\,
      R => SR(0)
    );
\dout[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEF000000AF00AF"
    )
        port map (
      I0 => \din_r_reg_n_0_[1]\,
      I1 => \din_r_reg_n_0_[5]\,
      I2 => \din_r_reg_n_0_[2]\,
      I3 => \din_r_reg_n_0_[8]\,
      I4 => \din_r_reg_n_0_[4]\,
      I5 => \din_r_reg_n_0_[3]\,
      O => \dout[0]_i_1__0_n_0\
    );
\dout[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8CCA8FC80CC80FF"
    )
        port map (
      I0 => \din_r_reg_n_0_[2]\,
      I1 => \din_r_reg_n_0_[8]\,
      I2 => \din_r_reg_n_0_[7]\,
      I3 => \din_r_reg_n_0_[4]\,
      I4 => \din_r_reg_n_0_[3]\,
      I5 => \din_r_reg_n_0_[5]\,
      O => \dout[1]_i_1__0_n_0\
    );
\dout[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA04550"
    )
        port map (
      I0 => \din_r_reg_n_0_[2]\,
      I1 => \din_r_reg_n_0_[8]\,
      I2 => \din_r_reg_n_0_[1]\,
      I3 => \din_r_reg_n_0_[5]\,
      I4 => \din_r_reg_n_0_[3]\,
      O => \dout[2]_i_1__0_n_0\
    );
\dout[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFD5CFC0757F303F"
    )
        port map (
      I0 => \din_r_reg_n_0_[2]\,
      I1 => \din_r_reg_n_0_[7]\,
      I2 => \din_r_reg_n_0_[8]\,
      I3 => \din_r_reg_n_0_[5]\,
      I4 => \din_r_reg_n_0_[3]\,
      I5 => \din_r_reg_n_0_[4]\,
      O => \dout[3]_i_2__0_n_0\
    );
\dout[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AF00A0C000C000"
    )
        port map (
      I0 => \dout[3]_i_5__0_n_0\,
      I1 => \dout[3]_i_6__0_n_0\,
      I2 => \din_r_reg_n_0_[2]\,
      I3 => \din_r_reg_n_0_[8]\,
      I4 => \dout[3]_i_7__0_n_0\,
      I5 => \din_r_reg_n_0_[9]\,
      O => \dout[3]_i_3__0_n_0\
    );
\dout[3]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005808"
    )
        port map (
      I0 => \din_r_reg_n_0_[8]\,
      I1 => \dout[3]_i_8__0_n_0\,
      I2 => \din_r_reg_n_0_[9]\,
      I3 => \dout[3]_i_9__0_n_0\,
      I4 => \din_r_reg_n_0_[2]\,
      O => \dout[3]_i_4__0_n_0\
    );
\dout[3]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0012102800000000"
    )
        port map (
      I0 => \din_r_reg_n_0_[6]\,
      I1 => \din_r_reg_n_0_[5]\,
      I2 => \din_r_reg_n_0_[3]\,
      I3 => \din_r_reg_n_0_[4]\,
      I4 => \din_r_reg_n_0_[1]\,
      I5 => \din_r_reg_n_0_[7]\,
      O => \dout[3]_i_5__0_n_0\
    );
\dout[3]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004404080"
    )
        port map (
      I0 => \din_r_reg_n_0_[5]\,
      I1 => \din_r_reg_n_0_[3]\,
      I2 => \din_r_reg_n_0_[4]\,
      I3 => \din_r_reg_n_0_[1]\,
      I4 => \din_r_reg_n_0_[7]\,
      I5 => \din_r_reg_n_0_[6]\,
      O => \dout[3]_i_6__0_n_0\
    );
\dout[3]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \din_r_reg_n_0_[7]\,
      I1 => \din_r_reg_n_0_[5]\,
      I2 => \din_r_reg_n_0_[3]\,
      I3 => \din_r_reg_n_0_[4]\,
      I4 => \din_r_reg_n_0_[1]\,
      I5 => \din_r_reg_n_0_[6]\,
      O => \dout[3]_i_7__0_n_0\
    );
\dout[3]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010280000"
    )
        port map (
      I0 => \din_r_reg_n_0_[6]\,
      I1 => \din_r_reg_n_0_[1]\,
      I2 => \din_r_reg_n_0_[4]\,
      I3 => \din_r_reg_n_0_[3]\,
      I4 => \din_r_reg_n_0_[5]\,
      I5 => \din_r_reg_n_0_[7]\,
      O => \dout[3]_i_8__0_n_0\
    );
\dout[3]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100020800000000"
    )
        port map (
      I0 => \din_r_reg_n_0_[5]\,
      I1 => \din_r_reg_n_0_[4]\,
      I2 => \din_r_reg_n_0_[3]\,
      I3 => \din_r_reg_n_0_[1]\,
      I4 => \din_r_reg_n_0_[7]\,
      I5 => \din_r_reg_n_0_[6]\,
      O => \dout[3]_i_9__0_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => dout,
      D => \dout[0]_i_1__0_n_0\,
      Q => red_di(0),
      R => SR(0)
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => dout,
      D => \dout[1]_i_1__0_n_0\,
      Q => red_di(1),
      R => SR(0)
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => dout,
      D => \dout[2]_i_1__0_n_0\,
      Q => red_di(2),
      R => SR(0)
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => dout,
      D => \dout[3]_i_2__0_n_0\,
      Q => red_di(3),
      R => SR(0)
    );
\dout_reg[3]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dout[3]_i_3__0_n_0\,
      I1 => \dout[3]_i_4__0_n_0\,
      O => dout,
      S => \din_r_reg_n_0_[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_delay_controller_wrap is
  port (
    red_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    red_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \sdataouta_reg[7]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \dataout_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_12_in : in STD_LOGIC;
    CLK : in STD_LOGIC;
    reset_1p25 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bitslipx1p25_reg : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_delay_controller_wrap : entity is "delay_controller_wrap";
end overlay1_dvi_decoder_v2_0_0_delay_controller_wrap;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_delay_controller_wrap is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal action : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \action[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \action[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \action[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \action[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \action_reg_n_0_[0]\ : STD_LOGIC;
  signal data_mux : STD_LOGIC;
  signal \data_mux_i_1__1_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \dec_run_i_1__1_n_0\ : STD_LOGIC;
  signal \dec_run_i_2__1_n_0\ : STD_LOGIC;
  signal dec_run_reg_n_0 : STD_LOGIC;
  signal \delay_change_i_1__1_n_0\ : STD_LOGIC;
  signal delay_change_reg_n_0 : STD_LOGIC;
  signal \eye_run_i_1__1_n_0\ : STD_LOGIC;
  signal \eye_run_i_2__1_n_0\ : STD_LOGIC;
  signal eye_run_reg_n_0 : STD_LOGIC;
  signal \inc_run_i_1__1_n_0\ : STD_LOGIC;
  signal \inc_run_i_2__1_n_0\ : STD_LOGIC;
  signal inc_run_reg_n_0 : STD_LOGIC;
  signal m_delay_mux : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_delay_mux[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_delay_mux[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_delay_mux[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_10_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_11_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_5__1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_7__1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_8_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_9_n_0\ : STD_LOGIC;
  signal match : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \match[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \match[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \match[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \mdataouta_reg_n_0_[0]\ : STD_LOGIC;
  signal mdataoutb : STD_LOGIC;
  signal mdataoutc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \mdataoutc[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \mdataoutc[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \mdataoutc[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \mdataoutc[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \mdataoutc[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \mdataoutc[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \mdataoutc[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \mdataoutc[7]_i_1__1_n_0\ : STD_LOGIC;
  signal meq_max : STD_LOGIC;
  signal \meq_min_i_1__1_n_0\ : STD_LOGIC;
  signal \meq_min_i_2__1_n_0\ : STD_LOGIC;
  signal meq_min_reg_n_0 : STD_LOGIC;
  signal \msxor_ctd[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \msxor_ctd[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \msxor_ctd[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \msxor_ctd[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \msxor_ctd[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \msxor_ctd[1]_i_5__1_n_0\ : STD_LOGIC;
  signal \msxor_ctd_reg_n_0_[0]\ : STD_LOGIC;
  signal \msxor_ctd_reg_n_0_[1]\ : STD_LOGIC;
  signal \msxor_ctdx[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \msxor_ctdx[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \msxor_ctdx[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \msxor_ctdx[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \msxor_ctdx[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \msxor_ctdx[1]_i_5__1_n_0\ : STD_LOGIC;
  signal \msxor_ctdx_reg_n_0_[0]\ : STD_LOGIC;
  signal \msxor_ctdx_reg_n_0_[1]\ : STD_LOGIC;
  signal \msxor_cti[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \msxor_cti[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \msxor_cti[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \msxor_cti[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \msxor_cti[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \msxor_cti[1]_i_5__1_n_0\ : STD_LOGIC;
  signal \msxor_cti_reg_n_0_[0]\ : STD_LOGIC;
  signal \msxor_cti_reg_n_0_[1]\ : STD_LOGIC;
  signal \msxor_ctix[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \msxor_ctix[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \msxor_ctix[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \msxor_ctix[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \msxor_ctix[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \msxor_ctix[1]_i_5__1_n_0\ : STD_LOGIC;
  signal \msxor_ctix_reg_n_0_[0]\ : STD_LOGIC;
  signal \msxor_ctix_reg_n_0_[1]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in110_in : STD_LOGIC;
  signal p_0_in124_in : STD_LOGIC;
  signal p_0_in138_in : STD_LOGIC;
  signal p_0_in152_in : STD_LOGIC;
  signal p_0_in15_in : STD_LOGIC;
  signal p_0_in166_in : STD_LOGIC;
  signal p_0_in180_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_0_in200_in : STD_LOGIC;
  signal p_0_in28_in : STD_LOGIC;
  signal p_0_in40_in : STD_LOGIC;
  signal p_0_in52_in : STD_LOGIC;
  signal p_0_in64_in : STD_LOGIC;
  signal p_0_in76_in : STD_LOGIC;
  signal p_0_in88_in : STD_LOGIC;
  signal p_0_in97_in : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \pd_hold[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \pd_hold[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \pd_hold[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \pd_hold[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \pd_hold[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \pd_hold[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \pd_hold[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \pd_hold[7]_i_2__1_n_0\ : STD_LOGIC;
  signal pd_max : STD_LOGIC;
  signal pd_max0 : STD_LOGIC;
  signal \pd_max_i_2__1_n_0\ : STD_LOGIC;
  signal pd_min : STD_LOGIC;
  signal pd_min0 : STD_LOGIC;
  signal \pd_min_i_2__1_n_0\ : STD_LOGIC;
  signal pdcount1 : STD_LOGIC;
  signal \pdcount[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \pdcount[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \pdcount[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \pdcount[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \pdcount[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_3__1_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_4__1_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_5__1_n_0\ : STD_LOGIC;
  signal pdcount_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^red_debug\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^red_eye\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal results : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \results[31]_i_3__1_n_0\ : STD_LOGIC;
  signal \results[31]_i_4__1_n_0\ : STD_LOGIC;
  signal \results[31]_i_5__1_n_0\ : STD_LOGIC;
  signal s_delay_mux : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_delay_mux[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \s_delay_mux[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \s_delay_mux[1]_i_2__1_n_0\ : STD_LOGIC;
  signal s_delay_val_eye : STD_LOGIC;
  signal s_delay_val_eye_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \s_delay_val_int[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_5__1_n_0\ : STD_LOGIC;
  signal s_ovflw1120_out : STD_LOGIC;
  signal \s_ovflw_i_1__1_n_0\ : STD_LOGIC;
  signal s_ovflw_reg_n_0 : STD_LOGIC;
  signal s_state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \s_state[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \s_state[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \s_state[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \s_state[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \s_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_state[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \s_state[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \sdataouta_reg_n_0_[0]\ : STD_LOGIC;
  signal sdataoutb : STD_LOGIC;
  signal sdataoutc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sdataoutc[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \sdataoutc[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \sdataoutc[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \sdataoutc[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \sdataoutc[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \sdataoutc[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \sdataoutc[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \sdataoutc[7]_i_1__1_n_0\ : STD_LOGIC;
  signal shifter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \shifter[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[10]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[13]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[14]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[15]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[17]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[18]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[19]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[20]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[21]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[22]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[23]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[24]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[25]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[26]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[27]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[28]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[29]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[30]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[31]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \shifter[9]_i_1__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \action[0]_i_2__1\ : label is "soft_lutpair210";
  attribute SOFT_HLUTNM of \action[0]_i_3__1\ : label is "soft_lutpair209";
  attribute SOFT_HLUTNM of \action[1]_i_2__1\ : label is "soft_lutpair209";
  attribute SOFT_HLUTNM of \action[1]_i_3__1\ : label is "soft_lutpair210";
  attribute SOFT_HLUTNM of \data_out[0]_i_1\ : label is "soft_lutpair227";
  attribute SOFT_HLUTNM of \data_out[1]_i_1\ : label is "soft_lutpair228";
  attribute SOFT_HLUTNM of \data_out[2]_i_1\ : label is "soft_lutpair230";
  attribute SOFT_HLUTNM of \data_out[3]_i_1\ : label is "soft_lutpair227";
  attribute SOFT_HLUTNM of \data_out[4]_i_1\ : label is "soft_lutpair228";
  attribute SOFT_HLUTNM of \data_out[5]_i_1\ : label is "soft_lutpair230";
  attribute SOFT_HLUTNM of \data_out[6]_i_1\ : label is "soft_lutpair232";
  attribute SOFT_HLUTNM of \data_out[7]_i_1\ : label is "soft_lutpair232";
  attribute SOFT_HLUTNM of \delay_change_i_1__1\ : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of \eye_run_i_2__1\ : label is "soft_lutpair188";
  attribute SOFT_HLUTNM of \inc_run_i_2__1\ : label is "soft_lutpair208";
  attribute SOFT_HLUTNM of \m_delay_mux[1]_i_2__1\ : label is "soft_lutpair203";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_10\ : label is "soft_lutpair185";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_11\ : label is "soft_lutpair207";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_3__1\ : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_5__1\ : label is "soft_lutpair208";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_6__0\ : label is "soft_lutpair185";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_7__1\ : label is "soft_lutpair188";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_9\ : label is "soft_lutpair207";
  attribute SOFT_HLUTNM of \msxor_ctd[0]_i_1__1\ : label is "soft_lutpair204";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_1__1\ : label is "soft_lutpair204";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_2__1\ : label is "soft_lutpair200";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_3__1\ : label is "soft_lutpair186";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_4__1\ : label is "soft_lutpair198";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_5__1\ : label is "soft_lutpair197";
  attribute SOFT_HLUTNM of \msxor_ctdx[0]_i_1__1\ : label is "soft_lutpair202";
  attribute SOFT_HLUTNM of \msxor_ctdx[1]_i_1__1\ : label is "soft_lutpair202";
  attribute SOFT_HLUTNM of \msxor_ctdx[1]_i_2__1\ : label is "soft_lutpair199";
  attribute SOFT_HLUTNM of \msxor_ctdx[1]_i_3__1\ : label is "soft_lutpair182";
  attribute SOFT_HLUTNM of \msxor_ctdx[1]_i_4__1\ : label is "soft_lutpair189";
  attribute SOFT_HLUTNM of \msxor_ctdx[1]_i_5__1\ : label is "soft_lutpair187";
  attribute SOFT_HLUTNM of \msxor_cti[0]_i_1__1\ : label is "soft_lutpair206";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_1__1\ : label is "soft_lutpair206";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_2__1\ : label is "soft_lutpair200";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_3__1\ : label is "soft_lutpair186";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_4__1\ : label is "soft_lutpair198";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_5__1\ : label is "soft_lutpair197";
  attribute SOFT_HLUTNM of \msxor_ctix[0]_i_1__1\ : label is "soft_lutpair205";
  attribute SOFT_HLUTNM of \msxor_ctix[1]_i_1__1\ : label is "soft_lutpair205";
  attribute SOFT_HLUTNM of \msxor_ctix[1]_i_2__1\ : label is "soft_lutpair199";
  attribute SOFT_HLUTNM of \msxor_ctix[1]_i_3__1\ : label is "soft_lutpair182";
  attribute SOFT_HLUTNM of \msxor_ctix[1]_i_4__1\ : label is "soft_lutpair189";
  attribute SOFT_HLUTNM of \msxor_ctix[1]_i_5__1\ : label is "soft_lutpair187";
  attribute SOFT_HLUTNM of \pd_hold[0]_i_1__1\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \pd_hold[1]_i_1__1\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \pd_hold[2]_i_1__1\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of \pd_max_i_1__1\ : label is "soft_lutpair229";
  attribute SOFT_HLUTNM of \pd_min_i_1__1\ : label is "soft_lutpair229";
  attribute SOFT_HLUTNM of \pdcount[0]_i_1__1\ : label is "soft_lutpair231";
  attribute SOFT_HLUTNM of \pdcount[1]_i_1__1\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \pdcount[2]_i_1__1\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \pdcount[5]_i_5__1\ : label is "soft_lutpair231";
  attribute SOFT_HLUTNM of \red_debug[0]_INST_0\ : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of \red_debug[10]_INST_0\ : label is "soft_lutpair193";
  attribute SOFT_HLUTNM of \red_debug[11]_INST_0\ : label is "soft_lutpair191";
  attribute SOFT_HLUTNM of \red_debug[12]_INST_0\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \red_debug[13]_INST_0\ : label is "soft_lutpair196";
  attribute SOFT_HLUTNM of \red_debug[14]_INST_0\ : label is "soft_lutpair194";
  attribute SOFT_HLUTNM of \red_debug[15]_INST_0\ : label is "soft_lutpair192";
  attribute SOFT_HLUTNM of \red_debug[16]_INST_0\ : label is "soft_lutpair183";
  attribute SOFT_HLUTNM of \red_debug[17]_INST_0\ : label is "soft_lutpair195";
  attribute SOFT_HLUTNM of \red_debug[18]_INST_0\ : label is "soft_lutpair193";
  attribute SOFT_HLUTNM of \red_debug[19]_INST_0\ : label is "soft_lutpair191";
  attribute SOFT_HLUTNM of \red_debug[1]_INST_0\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \red_debug[20]_INST_0\ : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of \red_debug[21]_INST_0\ : label is "soft_lutpair196";
  attribute SOFT_HLUTNM of \red_debug[22]_INST_0\ : label is "soft_lutpair194";
  attribute SOFT_HLUTNM of \red_debug[23]_INST_0\ : label is "soft_lutpair192";
  attribute SOFT_HLUTNM of \red_debug[24]_INST_0\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \red_debug[25]_INST_0\ : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of \red_debug[26]_INST_0\ : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of \red_debug[27]_INST_0\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \red_debug[28]_INST_0\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \red_debug[29]_INST_0\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \red_debug[2]_INST_0\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \red_debug[30]_INST_0\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \red_debug[31]_INST_0\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \red_debug[3]_INST_0\ : label is "soft_lutpair184";
  attribute SOFT_HLUTNM of \red_debug[4]_INST_0\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \red_debug[5]_INST_0\ : label is "soft_lutpair184";
  attribute SOFT_HLUTNM of \red_debug[6]_INST_0\ : label is "soft_lutpair183";
  attribute SOFT_HLUTNM of \red_debug[7]_INST_0\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \red_debug[8]_INST_0\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \red_debug[9]_INST_0\ : label is "soft_lutpair195";
  attribute SOFT_HLUTNM of \results[0]_i_1__1\ : label is "soft_lutpair211";
  attribute SOFT_HLUTNM of \results[10]_i_1__1\ : label is "soft_lutpair216";
  attribute SOFT_HLUTNM of \results[11]_i_1__1\ : label is "soft_lutpair216";
  attribute SOFT_HLUTNM of \results[12]_i_1__1\ : label is "soft_lutpair217";
  attribute SOFT_HLUTNM of \results[13]_i_1__1\ : label is "soft_lutpair217";
  attribute SOFT_HLUTNM of \results[14]_i_1__1\ : label is "soft_lutpair218";
  attribute SOFT_HLUTNM of \results[15]_i_1__1\ : label is "soft_lutpair218";
  attribute SOFT_HLUTNM of \results[16]_i_1__1\ : label is "soft_lutpair219";
  attribute SOFT_HLUTNM of \results[17]_i_1__1\ : label is "soft_lutpair220";
  attribute SOFT_HLUTNM of \results[18]_i_1__1\ : label is "soft_lutpair219";
  attribute SOFT_HLUTNM of \results[19]_i_1__1\ : label is "soft_lutpair221";
  attribute SOFT_HLUTNM of \results[1]_i_1__1\ : label is "soft_lutpair212";
  attribute SOFT_HLUTNM of \results[20]_i_1__1\ : label is "soft_lutpair220";
  attribute SOFT_HLUTNM of \results[21]_i_1__1\ : label is "soft_lutpair221";
  attribute SOFT_HLUTNM of \results[22]_i_1__1\ : label is "soft_lutpair222";
  attribute SOFT_HLUTNM of \results[23]_i_1__1\ : label is "soft_lutpair222";
  attribute SOFT_HLUTNM of \results[24]_i_1__1\ : label is "soft_lutpair223";
  attribute SOFT_HLUTNM of \results[25]_i_1__1\ : label is "soft_lutpair223";
  attribute SOFT_HLUTNM of \results[26]_i_1__1\ : label is "soft_lutpair224";
  attribute SOFT_HLUTNM of \results[27]_i_1__1\ : label is "soft_lutpair224";
  attribute SOFT_HLUTNM of \results[28]_i_1__1\ : label is "soft_lutpair225";
  attribute SOFT_HLUTNM of \results[29]_i_1__1\ : label is "soft_lutpair225";
  attribute SOFT_HLUTNM of \results[2]_i_1__1\ : label is "soft_lutpair213";
  attribute SOFT_HLUTNM of \results[30]_i_1__1\ : label is "soft_lutpair226";
  attribute SOFT_HLUTNM of \results[31]_i_2__1\ : label is "soft_lutpair226";
  attribute SOFT_HLUTNM of \results[3]_i_1__1\ : label is "soft_lutpair214";
  attribute SOFT_HLUTNM of \results[4]_i_1__1\ : label is "soft_lutpair215";
  attribute SOFT_HLUTNM of \results[5]_i_1__1\ : label is "soft_lutpair215";
  attribute SOFT_HLUTNM of \results[6]_i_1__1\ : label is "soft_lutpair212";
  attribute SOFT_HLUTNM of \results[7]_i_1__1\ : label is "soft_lutpair213";
  attribute SOFT_HLUTNM of \results[8]_i_1__1\ : label is "soft_lutpair211";
  attribute SOFT_HLUTNM of \results[9]_i_1__1\ : label is "soft_lutpair214";
  attribute SOFT_HLUTNM of \s_delay_mux[1]_i_2__1\ : label is "soft_lutpair203";
  attribute SOFT_HLUTNM of \s_delay_val_eye[0]_i_1__1\ : label is "soft_lutpair190";
  attribute SOFT_HLUTNM of \s_delay_val_eye[2]_i_1__1\ : label is "soft_lutpair190";
  attribute SOFT_HLUTNM of \s_delay_val_eye[3]_i_1__1\ : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of \s_delay_val_eye[4]_i_1__1\ : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of \s_delay_val_int[4]_i_3__1\ : label is "soft_lutpair201";
  attribute SOFT_HLUTNM of \s_delay_val_int[4]_i_4__1\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of \s_state[3]_i_2__1\ : label is "soft_lutpair201";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  red_debug(31 downto 0) <= \^red_debug\(31 downto 0);
  red_eye(31 downto 0) <= \^red_eye\(31 downto 0);
\action[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8EEF088E8EEF0008"
    )
        port map (
      I0 => \msxor_cti_reg_n_0_[1]\,
      I1 => \msxor_ctix_reg_n_0_[1]\,
      I2 => \msxor_ctd_reg_n_0_[1]\,
      I3 => \msxor_ctdx_reg_n_0_[1]\,
      I4 => \action[0]_i_2__1_n_0\,
      I5 => \action[0]_i_3__1_n_0\,
      O => action(0)
    );
\action[0]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"088E"
    )
        port map (
      I0 => \msxor_cti_reg_n_0_[0]\,
      I1 => \msxor_ctix_reg_n_0_[0]\,
      I2 => \msxor_ctd_reg_n_0_[0]\,
      I3 => \msxor_ctdx_reg_n_0_[0]\,
      O => \action[0]_i_2__1_n_0\
    );
\action[0]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \msxor_ctix_reg_n_0_[0]\,
      I1 => \msxor_cti_reg_n_0_[0]\,
      I2 => \msxor_ctdx_reg_n_0_[0]\,
      I3 => \msxor_ctd_reg_n_0_[0]\,
      O => \action[0]_i_3__1_n_0\
    );
\action[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CEEF0CCE0CCE000C"
    )
        port map (
      I0 => \action[1]_i_2__1_n_0\,
      I1 => \action[1]_i_3__1_n_0\,
      I2 => \msxor_ctix_reg_n_0_[1]\,
      I3 => \msxor_cti_reg_n_0_[1]\,
      I4 => \msxor_ctdx_reg_n_0_[1]\,
      I5 => \msxor_ctd_reg_n_0_[1]\,
      O => action(1)
    );
\action[1]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \msxor_ctix_reg_n_0_[0]\,
      I1 => \msxor_cti_reg_n_0_[0]\,
      I2 => \msxor_ctdx_reg_n_0_[0]\,
      I3 => \msxor_ctd_reg_n_0_[0]\,
      O => \action[1]_i_2__1_n_0\
    );
\action[1]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"088E"
    )
        port map (
      I0 => \msxor_ctd_reg_n_0_[0]\,
      I1 => \msxor_ctdx_reg_n_0_[0]\,
      I2 => \msxor_cti_reg_n_0_[0]\,
      I3 => \msxor_ctix_reg_n_0_[0]\,
      O => \action[1]_i_3__1_n_0\
    );
\action_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => action(0),
      Q => \action_reg_n_0_[0]\,
      R => '0'
    );
\action_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => action(1),
      Q => p_0_in200_in,
      R => '0'
    );
\data_mux_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000040"
    )
        port map (
      I0 => s_state(3),
      I1 => s_state(2),
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => \s_state[3]_i_3__1_n_0\,
      I5 => data_mux,
      O => \data_mux_i_1__1_n_0\
    );
data_mux_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_mux_i_1__1_n_0\,
      Q => data_mux,
      R => reset_1p25
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(0),
      I1 => mdataoutc(0),
      I2 => data_mux,
      O => \data_out[0]_i_1_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(1),
      I1 => mdataoutc(1),
      I2 => data_mux,
      O => \data_out[1]_i_1_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(2),
      I1 => mdataoutc(2),
      I2 => data_mux,
      O => \data_out[2]_i_1_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(3),
      I1 => mdataoutc(3),
      I2 => data_mux,
      O => \data_out[3]_i_1_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(4),
      I1 => mdataoutc(4),
      I2 => data_mux,
      O => \data_out[4]_i_1_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(5),
      I1 => mdataoutc(5),
      I2 => data_mux,
      O => \data_out[5]_i_1_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(6),
      I1 => mdataoutc(6),
      I2 => data_mux,
      O => \data_out[6]_i_1_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(7),
      I1 => mdataoutc(7),
      I2 => data_mux,
      O => \data_out[7]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[0]_i_1_n_0\,
      Q => \dataout_reg[7]\(0),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[1]_i_1_n_0\,
      Q => \dataout_reg[7]\(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[2]_i_1_n_0\,
      Q => \dataout_reg[7]\(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[3]_i_1_n_0\,
      Q => \dataout_reg[7]\(3),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[4]_i_1_n_0\,
      Q => \dataout_reg[7]\(4),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[5]_i_1_n_0\,
      Q => \dataout_reg[7]\(5),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[6]_i_1_n_0\,
      Q => \dataout_reg[7]\(6),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[7]_i_1_n_0\,
      Q => \dataout_reg[7]\(7),
      R => '0'
    );
\dec_run_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF6F770000"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(2),
      I2 => s_state(3),
      I3 => s_state(0),
      I4 => \dec_run_i_2__1_n_0\,
      I5 => dec_run_reg_n_0,
      O => \dec_run_i_1__1_n_0\
    );
\dec_run_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C0C00000CECC"
    )
        port map (
      I0 => meq_min_reg_n_0,
      I1 => dec_run_reg_n_0,
      I2 => delay_change_reg_n_0,
      I3 => pd_min,
      I4 => inc_run_reg_n_0,
      I5 => pd_max,
      O => \dec_run_i_2__1_n_0\
    );
dec_run_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dec_run_i_1__1_n_0\,
      Q => dec_run_reg_n_0,
      R => reset_1p25
    );
\delay_change_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCCFE"
    )
        port map (
      I0 => pd_max,
      I1 => inc_run_reg_n_0,
      I2 => pd_min,
      I3 => delay_change_reg_n_0,
      I4 => dec_run_reg_n_0,
      O => \delay_change_i_1__1_n_0\
    );
delay_change_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delay_change_i_1__1_n_0\,
      Q => delay_change_reg_n_0,
      R => reset_1p25
    );
\eye_run_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCACCCAC8"
    )
        port map (
      I0 => \eye_run_i_2__1_n_0\,
      I1 => eye_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => pd_min,
      I5 => s_ovflw1120_out,
      O => \eye_run_i_1__1_n_0\
    );
\eye_run_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(1),
      I2 => s_state(2),
      I3 => s_state(3),
      I4 => s_state(4),
      O => \eye_run_i_2__1_n_0\
    );
eye_run_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \eye_run_i_1__1_n_0\,
      Q => eye_run_reg_n_0,
      R => reset_1p25
    );
\inc_run_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF6F770000"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(2),
      I2 => s_state(3),
      I3 => s_state(0),
      I4 => \inc_run_i_2__1_n_0\,
      I5 => inc_run_reg_n_0,
      O => \inc_run_i_1__1_n_0\
    );
\inc_run_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => pd_max,
      I1 => delay_change_reg_n_0,
      I2 => meq_max,
      I3 => inc_run_reg_n_0,
      O => \inc_run_i_2__1_n_0\
    );
inc_run_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \inc_run_i_1__1_n_0\,
      Q => inc_run_reg_n_0,
      R => reset_1p25
    );
\m_delay_mux[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF01000000"
    )
        port map (
      I0 => \s_state[3]_i_3__1_n_0\,
      I1 => s_state(1),
      I2 => s_state(2),
      I3 => s_state(3),
      I4 => s_state(0),
      I5 => m_delay_mux(0),
      O => \m_delay_mux[0]_i_1__1_n_0\
    );
\m_delay_mux[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF9F0060"
    )
        port map (
      I0 => s_ovflw1120_out,
      I1 => m_delay_mux(0),
      I2 => \m_delay_mux[1]_i_2__1_n_0\,
      I3 => \s_state[3]_i_3__1_n_0\,
      I4 => m_delay_mux(1),
      O => \m_delay_mux[1]_i_1__1_n_0\
    );
\m_delay_mux[1]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(2),
      I2 => s_state(3),
      I3 => s_state(0),
      O => \m_delay_mux[1]_i_2__1_n_0\
    );
\m_delay_mux_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \m_delay_mux[0]_i_1__1_n_0\,
      Q => m_delay_mux(0),
      S => reset_1p25
    );
\m_delay_mux_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \m_delay_mux[1]_i_1__1_n_0\,
      Q => m_delay_mux(1),
      R => reset_1p25
    );
\m_delay_val_int[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010001000F0000"
    )
        port map (
      I0 => inc_run_reg_n_0,
      I1 => meq_max,
      I2 => \^q\(0),
      I3 => reset_1p25,
      I4 => \m_delay_val_int[4]_i_4__1_n_0\,
      I5 => s_ovflw1120_out,
      O => \m_delay_val_int[0]_i_1__1_n_0\
    );
\m_delay_val_int[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002FF22002"
    )
        port map (
      I0 => \m_delay_val_int[4]_i_4__1_n_0\,
      I1 => s_ovflw1120_out,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \m_delay_val_int[4]_i_5__1_n_0\,
      I5 => reset_1p25,
      O => \m_delay_val_int[1]_i_1__0_n_0\
    );
\m_delay_val_int[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEECC00A"
    )
        port map (
      I0 => \m_delay_val_int[4]_i_10_n_0\,
      I1 => \m_delay_val_int[4]_i_5__1_n_0\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => reset_1p25,
      O => \m_delay_val_int[2]_i_1__0_n_0\
    );
\m_delay_val_int[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000415555554155"
    )
        port map (
      I0 => reset_1p25,
      I1 => \^q\(3),
      I2 => \m_delay_val_int[4]_i_9_n_0\,
      I3 => \m_delay_val_int[4]_i_4__1_n_0\,
      I4 => s_ovflw1120_out,
      I5 => \m_delay_val_int[3]_i_2__1_n_0\,
      O => \m_delay_val_int[3]_i_1__1_n_0\
    );
\m_delay_val_int[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF807F"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => meq_max,
      I5 => inc_run_reg_n_0,
      O => \m_delay_val_int[3]_i_2__1_n_0\
    );
\m_delay_val_int[4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001101"
    )
        port map (
      I0 => meq_min_reg_n_0,
      I1 => dec_run_reg_n_0,
      I2 => pd_max,
      I3 => delay_change_reg_n_0,
      I4 => inc_run_reg_n_0,
      O => \m_delay_val_int[4]_i_10_n_0\
    );
\m_delay_val_int[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \m_delay_val_int[4]_i_11_n_0\
    );
\m_delay_val_int[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF5"
    )
        port map (
      I0 => \m_delay_val_int[4]_i_3__1_n_0\,
      I1 => \m_delay_val_int[4]_i_4__1_n_0\,
      I2 => reset_1p25,
      I3 => \m_delay_val_int[4]_i_5__1_n_0\,
      I4 => s_ovflw1120_out,
      I5 => \m_delay_val_int[4]_i_7__1_n_0\,
      O => \m_delay_val_int[4]_i_1__1_n_0\
    );
\m_delay_val_int[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554444544444444"
    )
        port map (
      I0 => reset_1p25,
      I1 => \m_delay_val_int[4]_i_8_n_0\,
      I2 => \^q\(3),
      I3 => \m_delay_val_int[4]_i_9_n_0\,
      I4 => \^q\(4),
      I5 => \m_delay_val_int[4]_i_10_n_0\,
      O => \m_delay_val_int[4]_i_2__1_n_0\
    );
\m_delay_val_int[4]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCEEFFEF"
    )
        port map (
      I0 => pd_max,
      I1 => inc_run_reg_n_0,
      I2 => pd_min,
      I3 => delay_change_reg_n_0,
      I4 => dec_run_reg_n_0,
      O => \m_delay_val_int[4]_i_3__1_n_0\
    );
\m_delay_val_int[4]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dec_run_reg_n_0,
      I1 => meq_min_reg_n_0,
      O => \m_delay_val_int[4]_i_4__1_n_0\
    );
\m_delay_val_int[4]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => delay_change_reg_n_0,
      I1 => pd_max,
      I2 => meq_max,
      I3 => inc_run_reg_n_0,
      O => \m_delay_val_int[4]_i_5__1_n_0\
    );
\m_delay_val_int[4]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => inc_run_reg_n_0,
      I1 => delay_change_reg_n_0,
      I2 => pd_max,
      O => s_ovflw1120_out
    );
\m_delay_val_int[4]_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => s_state(3),
      I1 => s_state(2),
      I2 => s_state(1),
      I3 => s_state(0),
      O => \m_delay_val_int[4]_i_7__1_n_0\
    );
\m_delay_val_int[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200020000"
    )
        port map (
      I0 => pd_max,
      I1 => delay_change_reg_n_0,
      I2 => inc_run_reg_n_0,
      I3 => meq_max,
      I4 => \^q\(4),
      I5 => \m_delay_val_int[4]_i_11_n_0\,
      O => \m_delay_val_int[4]_i_8_n_0\
    );
\m_delay_val_int[4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \m_delay_val_int[4]_i_9_n_0\
    );
\m_delay_val_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[4]_i_1__1_n_0\,
      D => \m_delay_val_int[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\m_delay_val_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[4]_i_1__1_n_0\,
      D => \m_delay_val_int[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\m_delay_val_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[4]_i_1__1_n_0\,
      D => \m_delay_val_int[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\m_delay_val_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[4]_i_1__1_n_0\,
      D => \m_delay_val_int[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\m_delay_val_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[4]_i_1__1_n_0\,
      D => \m_delay_val_int[4]_i_2__1_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\match[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => p_0_in180_in,
      I1 => p_0_in88_in,
      I2 => p_0_in166_in,
      I3 => p_0_in76_in,
      I4 => \match[0]_i_2__1_n_0\,
      I5 => \match[0]_i_3__1_n_0\,
      O => \match[0]_i_1__1_n_0\
    );
\match[0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \sdataouta_reg_n_0_[0]\,
      I1 => \mdataouta_reg_n_0_[0]\,
      I2 => p_0_in97_in,
      I3 => p_0_in15_in,
      I4 => p_0_in110_in,
      I5 => p_0_in28_in,
      O => \match[0]_i_2__1_n_0\
    );
\match[0]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => p_0_in40_in,
      I1 => p_0_in124_in,
      I2 => p_0_in152_in,
      I3 => p_0_in64_in,
      I4 => p_0_in138_in,
      I5 => p_0_in52_in,
      O => \match[0]_i_3__1_n_0\
    );
\match_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \match[0]_i_1__1_n_0\,
      Q => p_2_in(1),
      R => '0'
    );
\match_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(1),
      Q => p_2_in(2),
      R => '0'
    );
\match_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(2),
      Q => p_2_in(3),
      R => '0'
    );
\match_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(3),
      Q => p_2_in(4),
      R => '0'
    );
\match_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(4),
      Q => p_2_in(5),
      R => '0'
    );
\match_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(5),
      Q => p_2_in(6),
      R => '0'
    );
\match_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(6),
      Q => p_2_in(7),
      R => '0'
    );
\match_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(7),
      Q => match(7),
      R => '0'
    );
\mdataouta_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(0),
      Q => \mdataouta_reg_n_0_[0]\,
      R => '0'
    );
\mdataouta_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(1),
      Q => p_0_in97_in,
      R => '0'
    );
\mdataouta_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(2),
      Q => p_0_in110_in,
      R => '0'
    );
\mdataouta_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(3),
      Q => p_0_in124_in,
      R => '0'
    );
\mdataouta_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(4),
      Q => p_0_in138_in,
      R => '0'
    );
\mdataouta_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(5),
      Q => p_0_in152_in,
      R => '0'
    );
\mdataouta_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(6),
      Q => p_0_in166_in,
      R => '0'
    );
\mdataouta_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(7),
      Q => p_0_in180_in,
      R => '0'
    );
mdataoutb_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in180_in,
      Q => mdataoutb,
      R => '0'
    );
\mdataoutc[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \mdataouta_reg_n_0_[0]\,
      I1 => m_delay_mux(0),
      I2 => p_0_in97_in,
      I3 => m_delay_mux(1),
      I4 => mdataoutb,
      O => \mdataoutc[0]_i_1__1_n_0\
    );
\mdataoutc[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in97_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in110_in,
      I3 => m_delay_mux(1),
      I4 => \mdataouta_reg_n_0_[0]\,
      O => \mdataoutc[1]_i_1__1_n_0\
    );
\mdataoutc[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in110_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in124_in,
      I3 => m_delay_mux(1),
      I4 => p_0_in97_in,
      O => \mdataoutc[2]_i_1__1_n_0\
    );
\mdataoutc[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in124_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in138_in,
      I3 => m_delay_mux(1),
      I4 => p_0_in110_in,
      O => \mdataoutc[3]_i_1__1_n_0\
    );
\mdataoutc[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in138_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in152_in,
      I3 => m_delay_mux(1),
      I4 => p_0_in124_in,
      O => \mdataoutc[4]_i_1__1_n_0\
    );
\mdataoutc[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in152_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in166_in,
      I3 => m_delay_mux(1),
      I4 => p_0_in138_in,
      O => \mdataoutc[5]_i_1__1_n_0\
    );
\mdataoutc[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in166_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in180_in,
      I3 => m_delay_mux(1),
      I4 => p_0_in152_in,
      O => \mdataoutc[6]_i_1__1_n_0\
    );
\mdataoutc[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in180_in,
      I1 => m_delay_mux(0),
      I2 => bitslipx1p25_reg(0),
      I3 => m_delay_mux(1),
      I4 => p_0_in166_in,
      O => \mdataoutc[7]_i_1__1_n_0\
    );
\mdataoutc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \mdataoutc[0]_i_1__1_n_0\,
      Q => mdataoutc(0),
      R => '0'
    );
\mdataoutc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \mdataoutc[1]_i_1__1_n_0\,
      Q => mdataoutc(1),
      R => '0'
    );
\mdataoutc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \mdataoutc[2]_i_1__1_n_0\,
      Q => mdataoutc(2),
      R => '0'
    );
\mdataoutc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \mdataoutc[3]_i_1__1_n_0\,
      Q => mdataoutc(3),
      R => '0'
    );
\mdataoutc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \mdataoutc[4]_i_1__1_n_0\,
      Q => mdataoutc(4),
      R => '0'
    );
\mdataoutc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \mdataoutc[5]_i_1__1_n_0\,
      Q => mdataoutc(5),
      R => '0'
    );
\mdataoutc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \mdataoutc[6]_i_1__1_n_0\,
      Q => mdataoutc(6),
      R => '0'
    );
\mdataoutc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \mdataoutc[7]_i_1__1_n_0\,
      Q => mdataoutc(7),
      R => '0'
    );
meq_max_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \^red_debug\(8),
      Q => meq_max,
      R => '0'
    );
\meq_min_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888B8"
    )
        port map (
      I0 => meq_min_reg_n_0,
      I1 => reset_1p25,
      I2 => \meq_min_i_2__1_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \meq_min_i_1__1_n_0\
    );
\meq_min_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \meq_min_i_2__1_n_0\
    );
meq_min_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \meq_min_i_1__1_n_0\,
      Q => meq_min_reg_n_0,
      R => '0'
    );
\msxor_ctd[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6B96"
    )
        port map (
      I0 => \msxor_ctd[1]_i_2__1_n_0\,
      I1 => \msxor_ctd[1]_i_3__1_n_0\,
      I2 => \msxor_ctd[1]_i_4__1_n_0\,
      I3 => \msxor_ctd[1]_i_5__1_n_0\,
      O => \msxor_ctd[0]_i_1__1_n_0\
    );
\msxor_ctd[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF2B"
    )
        port map (
      I0 => \msxor_ctd[1]_i_2__1_n_0\,
      I1 => \msxor_ctd[1]_i_3__1_n_0\,
      I2 => \msxor_ctd[1]_i_4__1_n_0\,
      I3 => \msxor_ctd[1]_i_5__1_n_0\,
      O => \msxor_ctd[1]_i_1__1_n_0\
    );
\msxor_ctd[1]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => p_0_in28_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in15_in,
      I3 => p_0_in110_in,
      I4 => p_0_in97_in,
      O => \msxor_ctd[1]_i_2__1_n_0\
    );
\msxor_ctd[1]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in40_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in28_in,
      I3 => p_0_in124_in,
      I4 => p_0_in110_in,
      O => \msxor_ctd[1]_i_3__1_n_0\
    );
\msxor_ctd[1]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB847FF"
    )
        port map (
      I0 => p_0_in15_in,
      I1 => s_ovflw_reg_n_0,
      I2 => \sdataouta_reg_n_0_[0]\,
      I3 => \mdataouta_reg_n_0_[0]\,
      I4 => p_0_in97_in,
      O => \msxor_ctd[1]_i_4__1_n_0\
    );
\msxor_ctd[1]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047B800"
    )
        port map (
      I0 => \sdataouta_reg_n_0_[0]\,
      I1 => s_ovflw_reg_n_0,
      I2 => sdataoutb,
      I3 => mdataoutb,
      I4 => \mdataouta_reg_n_0_[0]\,
      O => \msxor_ctd[1]_i_5__1_n_0\
    );
\msxor_ctd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctd[0]_i_1__1_n_0\,
      Q => \msxor_ctd_reg_n_0_[0]\,
      R => '0'
    );
\msxor_ctd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctd[1]_i_1__1_n_0\,
      Q => \msxor_ctd_reg_n_0_[1]\,
      R => '0'
    );
\msxor_ctdx[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69D6"
    )
        port map (
      I0 => \msxor_ctdx[1]_i_5__1_n_0\,
      I1 => \msxor_ctdx[1]_i_4__1_n_0\,
      I2 => \msxor_ctdx[1]_i_2__1_n_0\,
      I3 => \msxor_ctdx[1]_i_3__1_n_0\,
      O => \msxor_ctdx[0]_i_1__1_n_0\
    );
\msxor_ctdx[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2FB"
    )
        port map (
      I0 => \msxor_ctdx[1]_i_2__1_n_0\,
      I1 => \msxor_ctdx[1]_i_3__1_n_0\,
      I2 => \msxor_ctdx[1]_i_4__1_n_0\,
      I3 => \msxor_ctdx[1]_i_5__1_n_0\,
      O => \msxor_ctdx[1]_i_1__1_n_0\
    );
\msxor_ctdx[1]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047B800"
    )
        port map (
      I0 => p_0_in64_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in52_in,
      I3 => p_0_in138_in,
      I4 => p_0_in152_in,
      O => \msxor_ctdx[1]_i_2__1_n_0\
    );
\msxor_ctdx[1]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in52_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in40_in,
      I3 => p_0_in138_in,
      I4 => p_0_in124_in,
      O => \msxor_ctdx[1]_i_3__1_n_0\
    );
\msxor_ctdx[1]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => p_0_in88_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in76_in,
      I3 => p_0_in180_in,
      I4 => p_0_in166_in,
      O => \msxor_ctdx[1]_i_4__1_n_0\
    );
\msxor_ctdx[1]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in76_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in64_in,
      I3 => p_0_in166_in,
      I4 => p_0_in152_in,
      O => \msxor_ctdx[1]_i_5__1_n_0\
    );
\msxor_ctdx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctdx[0]_i_1__1_n_0\,
      Q => \msxor_ctdx_reg_n_0_[0]\,
      R => '0'
    );
\msxor_ctdx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctdx[1]_i_1__1_n_0\,
      Q => \msxor_ctdx_reg_n_0_[1]\,
      R => '0'
    );
\msxor_cti[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6B96"
    )
        port map (
      I0 => \msxor_cti[1]_i_2__1_n_0\,
      I1 => \msxor_cti[1]_i_3__1_n_0\,
      I2 => \msxor_cti[1]_i_4__1_n_0\,
      I3 => \msxor_cti[1]_i_5__1_n_0\,
      O => \msxor_cti[0]_i_1__1_n_0\
    );
\msxor_cti[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF2B"
    )
        port map (
      I0 => \msxor_cti[1]_i_2__1_n_0\,
      I1 => \msxor_cti[1]_i_3__1_n_0\,
      I2 => \msxor_cti[1]_i_4__1_n_0\,
      I3 => \msxor_cti[1]_i_5__1_n_0\,
      O => \msxor_cti[1]_i_1__1_n_0\
    );
\msxor_cti[1]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => p_0_in28_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in15_in,
      I3 => p_0_in97_in,
      I4 => p_0_in110_in,
      O => \msxor_cti[1]_i_2__1_n_0\
    );
\msxor_cti[1]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in40_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in28_in,
      I3 => p_0_in110_in,
      I4 => p_0_in124_in,
      O => \msxor_cti[1]_i_3__1_n_0\
    );
\msxor_cti[1]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB847FF"
    )
        port map (
      I0 => p_0_in15_in,
      I1 => s_ovflw_reg_n_0,
      I2 => \sdataouta_reg_n_0_[0]\,
      I3 => p_0_in97_in,
      I4 => \mdataouta_reg_n_0_[0]\,
      O => \msxor_cti[1]_i_4__1_n_0\
    );
\msxor_cti[1]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => \sdataouta_reg_n_0_[0]\,
      I1 => s_ovflw_reg_n_0,
      I2 => sdataoutb,
      I3 => mdataoutb,
      I4 => \mdataouta_reg_n_0_[0]\,
      O => \msxor_cti[1]_i_5__1_n_0\
    );
\msxor_cti_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_cti[0]_i_1__1_n_0\,
      Q => \msxor_cti_reg_n_0_[0]\,
      R => '0'
    );
\msxor_cti_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_cti[1]_i_1__1_n_0\,
      Q => \msxor_cti_reg_n_0_[1]\,
      R => '0'
    );
\msxor_ctix[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69D6"
    )
        port map (
      I0 => \msxor_ctix[1]_i_5__1_n_0\,
      I1 => \msxor_ctix[1]_i_4__1_n_0\,
      I2 => \msxor_ctix[1]_i_2__1_n_0\,
      I3 => \msxor_ctix[1]_i_3__1_n_0\,
      O => \msxor_ctix[0]_i_1__1_n_0\
    );
\msxor_ctix[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2FB"
    )
        port map (
      I0 => \msxor_ctix[1]_i_2__1_n_0\,
      I1 => \msxor_ctix[1]_i_3__1_n_0\,
      I2 => \msxor_ctix[1]_i_4__1_n_0\,
      I3 => \msxor_ctix[1]_i_5__1_n_0\,
      O => \msxor_ctix[1]_i_1__1_n_0\
    );
\msxor_ctix[1]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => p_0_in64_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in52_in,
      I3 => p_0_in138_in,
      I4 => p_0_in152_in,
      O => \msxor_ctix[1]_i_2__1_n_0\
    );
\msxor_ctix[1]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in52_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in40_in,
      I3 => p_0_in124_in,
      I4 => p_0_in138_in,
      O => \msxor_ctix[1]_i_3__1_n_0\
    );
\msxor_ctix[1]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047B800"
    )
        port map (
      I0 => p_0_in88_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in76_in,
      I3 => p_0_in180_in,
      I4 => p_0_in166_in,
      O => \msxor_ctix[1]_i_4__1_n_0\
    );
\msxor_ctix[1]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in76_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in64_in,
      I3 => p_0_in152_in,
      I4 => p_0_in166_in,
      O => \msxor_ctix[1]_i_5__1_n_0\
    );
\msxor_ctix_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctix[0]_i_1__1_n_0\,
      Q => \msxor_ctix_reg_n_0_[0]\,
      R => '0'
    );
\msxor_ctix_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctix[1]_i_1__1_n_0\,
      Q => \msxor_ctix_reg_n_0_[1]\,
      R => '0'
    );
\pd_hold[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => eye_run_reg_n_0,
      I1 => delay_change_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => inc_run_reg_n_0,
      O => pdcount1
    );
\pd_hold[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(1),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[1]_i_1__1_n_0\
    );
\pd_hold[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(2),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[2]_i_1__1_n_0\
    );
\pd_hold[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(3),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[3]_i_1__1_n_0\
    );
\pd_hold[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(4),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[4]_i_1__1_n_0\
    );
\pd_hold[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(5),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[5]_i_1__1_n_0\
    );
\pd_hold[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(6),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[6]_i_1__1_n_0\
    );
\pd_hold[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in,
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[7]_i_1__1_n_0\
    );
\pd_hold[7]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(7),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[7]_i_2__1_n_0\
    );
\pd_hold_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1__1_n_0\,
      D => pdcount1,
      Q => p_0_in1_in(1),
      R => reset_1p25
    );
\pd_hold_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1__1_n_0\,
      D => \pd_hold[1]_i_1__1_n_0\,
      Q => p_0_in1_in(2),
      R => reset_1p25
    );
\pd_hold_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1__1_n_0\,
      D => \pd_hold[2]_i_1__1_n_0\,
      Q => p_0_in1_in(3),
      R => reset_1p25
    );
\pd_hold_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1__1_n_0\,
      D => \pd_hold[3]_i_1__1_n_0\,
      Q => p_0_in1_in(4),
      R => reset_1p25
    );
\pd_hold_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1__1_n_0\,
      D => \pd_hold[4]_i_1__1_n_0\,
      Q => p_0_in1_in(5),
      R => reset_1p25
    );
\pd_hold_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1__1_n_0\,
      D => \pd_hold[5]_i_1__1_n_0\,
      Q => p_0_in1_in(6),
      R => reset_1p25
    );
\pd_hold_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1__1_n_0\,
      D => \pd_hold[6]_i_1__1_n_0\,
      Q => p_0_in1_in(7),
      R => reset_1p25
    );
\pd_hold_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1__1_n_0\,
      D => \pd_hold[7]_i_2__1_n_0\,
      Q => p_0_in,
      R => reset_1p25
    );
\pd_max_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \pd_max_i_2__1_n_0\,
      I1 => pd_max,
      I2 => delay_change_reg_n_0,
      O => pd_max0
    );
\pd_max_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => pdcount_reg(0),
      I1 => pdcount_reg(1),
      I2 => pdcount_reg(2),
      I3 => pdcount_reg(3),
      I4 => pdcount_reg(4),
      I5 => pdcount_reg(5),
      O => \pd_max_i_2__1_n_0\
    );
pd_max_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => pd_max0,
      Q => pd_max,
      R => '0'
    );
\pd_min_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \pd_min_i_2__1_n_0\,
      I1 => pd_min,
      I2 => delay_change_reg_n_0,
      O => pd_min0
    );
\pd_min_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => pdcount_reg(4),
      I1 => pdcount_reg(5),
      I2 => pdcount_reg(2),
      I3 => pdcount_reg(3),
      I4 => pdcount_reg(0),
      I5 => pdcount_reg(1),
      O => \pd_min_i_2__1_n_0\
    );
pd_min_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => pd_min0,
      Q => pd_min,
      R => '0'
    );
\pdcount[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pdcount_reg(0),
      O => \pdcount[0]_i_1__1_n_0\
    );
\pdcount[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \action_reg_n_0_[0]\,
      I1 => \pd_max_i_2__1_n_0\,
      I2 => pdcount_reg(0),
      I3 => pdcount_reg(1),
      O => \pdcount[1]_i_1__1_n_0\
    );
\pdcount[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA96AA9"
    )
        port map (
      I0 => pdcount_reg(2),
      I1 => pdcount_reg(0),
      I2 => pdcount_reg(1),
      I3 => \action_reg_n_0_[0]\,
      I4 => \pd_max_i_2__1_n_0\,
      O => \pdcount[2]_i_1__1_n_0\
    );
\pdcount[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF4000FFFC0003"
    )
        port map (
      I0 => \pd_max_i_2__1_n_0\,
      I1 => \action_reg_n_0_[0]\,
      I2 => pdcount_reg(1),
      I3 => pdcount_reg(0),
      I4 => pdcount_reg(3),
      I5 => pdcount_reg(2),
      O => \pdcount[3]_i_1__1_n_0\
    );
\pdcount[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66656666"
    )
        port map (
      I0 => pdcount_reg(4),
      I1 => \pdcount[5]_i_4__1_n_0\,
      I2 => pdcount_reg(3),
      I3 => pdcount_reg(2),
      I4 => \pdcount[5]_i_5__1_n_0\,
      O => \pdcount[4]_i_1__1_n_0\
    );
\pdcount[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => inc_run_reg_n_0,
      I1 => dec_run_reg_n_0,
      I2 => delay_change_reg_n_0,
      I3 => eye_run_reg_n_0,
      I4 => p_0_in,
      I5 => reset_1p25,
      O => \pdcount[5]_i_1__1_n_0\
    );
\pdcount[5]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => p_0_in200_in,
      I1 => \pd_min_i_2__1_n_0\,
      I2 => \action_reg_n_0_[0]\,
      I3 => \pd_max_i_2__1_n_0\,
      O => \pdcount[5]_i_2__1_n_0\
    );
\pdcount[5]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6A6A996A6A6A6A"
    )
        port map (
      I0 => pdcount_reg(5),
      I1 => pdcount_reg(4),
      I2 => \pdcount[5]_i_4__1_n_0\,
      I3 => pdcount_reg(3),
      I4 => pdcount_reg(2),
      I5 => \pdcount[5]_i_5__1_n_0\,
      O => \pdcount[5]_i_3__1_n_0\
    );
\pdcount[5]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => pdcount_reg(3),
      I1 => pdcount_reg(2),
      I2 => \pd_max_i_2__1_n_0\,
      I3 => \action_reg_n_0_[0]\,
      I4 => pdcount_reg(1),
      I5 => pdcount_reg(0),
      O => \pdcount[5]_i_4__1_n_0\
    );
\pdcount[5]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \action_reg_n_0_[0]\,
      I1 => pdcount_reg(0),
      I2 => pdcount_reg(1),
      O => \pdcount[5]_i_5__1_n_0\
    );
\pdcount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2__1_n_0\,
      D => \pdcount[0]_i_1__1_n_0\,
      Q => pdcount_reg(0),
      R => \pdcount[5]_i_1__1_n_0\
    );
\pdcount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2__1_n_0\,
      D => \pdcount[1]_i_1__1_n_0\,
      Q => pdcount_reg(1),
      R => \pdcount[5]_i_1__1_n_0\
    );
\pdcount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2__1_n_0\,
      D => \pdcount[2]_i_1__1_n_0\,
      Q => pdcount_reg(2),
      R => \pdcount[5]_i_1__1_n_0\
    );
\pdcount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2__1_n_0\,
      D => \pdcount[3]_i_1__1_n_0\,
      Q => pdcount_reg(3),
      R => \pdcount[5]_i_1__1_n_0\
    );
\pdcount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2__1_n_0\,
      D => \pdcount[4]_i_1__1_n_0\,
      Q => pdcount_reg(4),
      R => \pdcount[5]_i_1__1_n_0\
    );
\pdcount_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2__1_n_0\,
      D => \pdcount[5]_i_3__1_n_0\,
      Q => pdcount_reg(5),
      S => \pdcount[5]_i_1__1_n_0\
    );
\red_debug[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \^red_debug\(0)
    );
\red_debug[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \^red_debug\(10)
    );
\red_debug[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \^red_debug\(11)
    );
\red_debug[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^red_debug\(12)
    );
\red_debug[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \^red_debug\(13)
    );
\red_debug[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \^red_debug\(14)
    );
\red_debug[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^red_debug\(15)
    );
\red_debug[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^red_debug\(16)
    );
\red_debug[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^red_debug\(17)
    );
\red_debug[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^red_debug\(18)
    );
\red_debug[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^red_debug\(19)
    );
\red_debug[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \^red_debug\(1)
    );
\red_debug[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^red_debug\(20)
    );
\red_debug[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^red_debug\(21)
    );
\red_debug[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^red_debug\(22)
    );
\red_debug[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^red_debug\(23)
    );
\red_debug[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \^red_debug\(24)
    );
\red_debug[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^red_debug\(25)
    );
\red_debug[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^red_debug\(26)
    );
\red_debug[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^red_debug\(27)
    );
\red_debug[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^red_debug\(28)
    );
\red_debug[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^red_debug\(29)
    );
\red_debug[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \^red_debug\(2)
    );
\red_debug[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^red_debug\(30)
    );
\red_debug[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \^red_debug\(31)
    );
\red_debug[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \^red_debug\(3)
    );
\red_debug[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \^red_debug\(4)
    );
\red_debug[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \^red_debug\(5)
    );
\red_debug[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \^red_debug\(6)
    );
\red_debug[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \^red_debug\(7)
    );
\red_debug[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \^red_debug\(8)
    );
\red_debug[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \^red_debug\(9)
    );
\results[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(0),
      I2 => \^red_eye\(0),
      O => results(0)
    );
\results[10]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(10),
      I2 => \^red_eye\(10),
      O => results(10)
    );
\results[11]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(11),
      I2 => \^red_eye\(11),
      O => results(11)
    );
\results[12]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(12),
      I2 => \^red_eye\(12),
      O => results(12)
    );
\results[13]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(13),
      I2 => \^red_eye\(13),
      O => results(13)
    );
\results[14]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(14),
      I2 => \^red_eye\(14),
      O => results(14)
    );
\results[15]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(15),
      I2 => \^red_eye\(15),
      O => results(15)
    );
\results[16]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(16),
      I2 => \^red_eye\(16),
      O => results(16)
    );
\results[17]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(17),
      I2 => \^red_eye\(17),
      O => results(17)
    );
\results[18]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(18),
      I2 => \^red_eye\(18),
      O => results(18)
    );
\results[19]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(19),
      I2 => \^red_eye\(19),
      O => results(19)
    );
\results[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(1),
      I2 => \^red_eye\(1),
      O => results(1)
    );
\results[20]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(20),
      I2 => \^red_eye\(20),
      O => results(20)
    );
\results[21]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(21),
      I2 => \^red_eye\(21),
      O => results(21)
    );
\results[22]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(22),
      I2 => \^red_eye\(22),
      O => results(22)
    );
\results[23]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(23),
      I2 => \^red_eye\(23),
      O => results(23)
    );
\results[24]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(24),
      I2 => \^red_eye\(24),
      O => results(24)
    );
\results[25]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(25),
      I2 => \^red_eye\(25),
      O => results(25)
    );
\results[26]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(26),
      I2 => \^red_eye\(26),
      O => results(26)
    );
\results[27]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(27),
      I2 => \^red_eye\(27),
      O => results(27)
    );
\results[28]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(28),
      I2 => \^red_eye\(28),
      O => results(28)
    );
\results[29]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(29),
      I2 => \^red_eye\(29),
      O => results(29)
    );
\results[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(2),
      I2 => \^red_eye\(2),
      O => results(2)
    );
\results[30]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(30),
      I2 => \^red_eye\(30),
      O => results(30)
    );
\results[31]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \results[31]_i_3__1_n_0\,
      I1 => eye_run_reg_n_0,
      I2 => delay_change_reg_n_0,
      O => s_delay_val_eye
    );
\results[31]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(31),
      I2 => \^red_eye\(31),
      O => results(31)
    );
\results[31]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => \delay_change_i_1__1_n_0\,
      I1 => s_state(4),
      I2 => s_state(3),
      I3 => s_state(2),
      I4 => s_state(1),
      I5 => s_state(0),
      O => \results[31]_i_3__1_n_0\
    );
\results[31]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => p_2_in(7),
      I1 => p_2_in(3),
      I2 => p_2_in(1),
      I3 => p_2_in(4),
      I4 => \results[31]_i_5__1_n_0\,
      O => \results[31]_i_4__1_n_0\
    );
\results[31]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => p_2_in(2),
      I1 => match(7),
      I2 => p_2_in(5),
      I3 => p_2_in(6),
      O => \results[31]_i_5__1_n_0\
    );
\results[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(3),
      I2 => \^red_eye\(3),
      O => results(3)
    );
\results[4]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(4),
      I2 => \^red_eye\(4),
      O => results(4)
    );
\results[5]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(5),
      I2 => \^red_eye\(5),
      O => results(5)
    );
\results[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(6),
      I2 => \^red_eye\(6),
      O => results(6)
    );
\results[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(7),
      I2 => \^red_eye\(7),
      O => results(7)
    );
\results[8]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(8),
      I2 => \^red_eye\(8),
      O => results(8)
    );
\results[9]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__1_n_0\,
      I1 => shifter(9),
      I2 => \^red_eye\(9),
      O => results(9)
    );
\results_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(0),
      Q => \^red_eye\(0),
      R => reset_1p25
    );
\results_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(10),
      Q => \^red_eye\(10),
      R => reset_1p25
    );
\results_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(11),
      Q => \^red_eye\(11),
      R => reset_1p25
    );
\results_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(12),
      Q => \^red_eye\(12),
      R => reset_1p25
    );
\results_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(13),
      Q => \^red_eye\(13),
      R => reset_1p25
    );
\results_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(14),
      Q => \^red_eye\(14),
      R => reset_1p25
    );
\results_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(15),
      Q => \^red_eye\(15),
      R => reset_1p25
    );
\results_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(16),
      Q => \^red_eye\(16),
      R => reset_1p25
    );
\results_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(17),
      Q => \^red_eye\(17),
      R => reset_1p25
    );
\results_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(18),
      Q => \^red_eye\(18),
      R => reset_1p25
    );
\results_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(19),
      Q => \^red_eye\(19),
      R => reset_1p25
    );
\results_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(1),
      Q => \^red_eye\(1),
      R => reset_1p25
    );
\results_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(20),
      Q => \^red_eye\(20),
      R => reset_1p25
    );
\results_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(21),
      Q => \^red_eye\(21),
      R => reset_1p25
    );
\results_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(22),
      Q => \^red_eye\(22),
      R => reset_1p25
    );
\results_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(23),
      Q => \^red_eye\(23),
      R => reset_1p25
    );
\results_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(24),
      Q => \^red_eye\(24),
      R => reset_1p25
    );
\results_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(25),
      Q => \^red_eye\(25),
      R => reset_1p25
    );
\results_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(26),
      Q => \^red_eye\(26),
      R => reset_1p25
    );
\results_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(27),
      Q => \^red_eye\(27),
      R => reset_1p25
    );
\results_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(28),
      Q => \^red_eye\(28),
      R => reset_1p25
    );
\results_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(29),
      Q => \^red_eye\(29),
      R => reset_1p25
    );
\results_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(2),
      Q => \^red_eye\(2),
      R => reset_1p25
    );
\results_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(30),
      Q => \^red_eye\(30),
      R => reset_1p25
    );
\results_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(31),
      Q => \^red_eye\(31),
      R => reset_1p25
    );
\results_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(3),
      Q => \^red_eye\(3),
      R => reset_1p25
    );
\results_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(4),
      Q => \^red_eye\(4),
      R => reset_1p25
    );
\results_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(5),
      Q => \^red_eye\(5),
      R => reset_1p25
    );
\results_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(6),
      Q => \^red_eye\(6),
      R => reset_1p25
    );
\results_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(7),
      Q => \^red_eye\(7),
      R => reset_1p25
    );
\results_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(8),
      Q => \^red_eye\(8),
      R => reset_1p25
    );
\results_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(9),
      Q => \^red_eye\(9),
      R => reset_1p25
    );
\s_delay_mux[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => m_delay_mux(0),
      I1 => s_state(0),
      I2 => s_state(3),
      I3 => \s_delay_mux[1]_i_2__1_n_0\,
      I4 => \s_state[3]_i_3__1_n_0\,
      I5 => s_delay_mux(0),
      O => \s_delay_mux[0]_i_1__1_n_0\
    );
\s_delay_mux[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => m_delay_mux(1),
      I1 => s_state(0),
      I2 => s_state(3),
      I3 => \s_delay_mux[1]_i_2__1_n_0\,
      I4 => \s_state[3]_i_3__1_n_0\,
      I5 => s_delay_mux(1),
      O => \s_delay_mux[1]_i_1__1_n_0\
    );
\s_delay_mux[1]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_state(2),
      I1 => s_state(1),
      O => \s_delay_mux[1]_i_2__1_n_0\
    );
\s_delay_mux_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \s_delay_mux[0]_i_1__1_n_0\,
      Q => s_delay_mux(0),
      S => reset_1p25
    );
\s_delay_mux_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \s_delay_mux[1]_i_1__1_n_0\,
      Q => s_delay_mux(1),
      R => reset_1p25
    );
\s_delay_val_eye[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00EF"
    )
        port map (
      I0 => s_delay_val_eye_reg(4),
      I1 => s_delay_val_eye_reg(2),
      I2 => s_delay_val_eye_reg(3),
      I3 => s_delay_val_eye_reg(0),
      I4 => s_delay_val_eye_reg(1),
      O => \p_0_in__1\(0)
    );
\s_delay_val_eye[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_delay_val_eye_reg(0),
      I1 => s_delay_val_eye_reg(1),
      O => \p_0_in__1\(1)
    );
\s_delay_val_eye[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s_delay_val_eye_reg(2),
      I1 => s_delay_val_eye_reg(1),
      I2 => s_delay_val_eye_reg(0),
      O => \p_0_in__1\(2)
    );
\s_delay_val_eye[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFEC000"
    )
        port map (
      I0 => s_delay_val_eye_reg(4),
      I1 => s_delay_val_eye_reg(2),
      I2 => s_delay_val_eye_reg(1),
      I3 => s_delay_val_eye_reg(0),
      I4 => s_delay_val_eye_reg(3),
      O => \p_0_in__1\(3)
    );
\s_delay_val_eye[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => s_delay_val_eye_reg(4),
      I1 => s_delay_val_eye_reg(3),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(1),
      I4 => s_delay_val_eye_reg(0),
      O => \p_0_in__1\(4)
    );
\s_delay_val_eye_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \p_0_in__1\(0),
      Q => s_delay_val_eye_reg(0),
      R => reset_1p25
    );
\s_delay_val_eye_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \p_0_in__1\(1),
      Q => s_delay_val_eye_reg(1),
      R => reset_1p25
    );
\s_delay_val_eye_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \p_0_in__1\(2),
      Q => s_delay_val_eye_reg(2),
      R => reset_1p25
    );
\s_delay_val_eye_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \p_0_in__1\(3),
      Q => s_delay_val_eye_reg(3),
      R => reset_1p25
    );
\s_delay_val_eye_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \p_0_in__1\(4),
      Q => s_delay_val_eye_reg(4),
      R => reset_1p25
    );
\s_delay_val_int[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101110101000"
    )
        port map (
      I0 => \delay_change_i_1__1_n_0\,
      I1 => reset_1p25,
      I2 => s_delay_val_eye_reg(0),
      I3 => eye_run_reg_n_0,
      I4 => delay_change_reg_n_0,
      I5 => \^q\(0),
      O => \s_delay_val_int[0]_i_1__1_n_0\
    );
\s_delay_val_int[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101110101000"
    )
        port map (
      I0 => \delay_change_i_1__1_n_0\,
      I1 => reset_1p25,
      I2 => s_delay_val_eye_reg(1),
      I3 => eye_run_reg_n_0,
      I4 => delay_change_reg_n_0,
      I5 => \^q\(1),
      O => \s_delay_val_int[1]_i_1__1_n_0\
    );
\s_delay_val_int[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22202223"
    )
        port map (
      I0 => s_delay_val_eye_reg(2),
      I1 => \delay_change_i_1__1_n_0\,
      I2 => delay_change_reg_n_0,
      I3 => eye_run_reg_n_0,
      I4 => \^q\(2),
      I5 => reset_1p25,
      O => \s_delay_val_int[2]_i_1__1_n_0\
    );
\s_delay_val_int[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCCEECE"
    )
        port map (
      I0 => \s_delay_val_int[3]_i_2__1_n_0\,
      I1 => s_ovflw1120_out,
      I2 => pd_min,
      I3 => delay_change_reg_n_0,
      I4 => dec_run_reg_n_0,
      I5 => reset_1p25,
      O => \s_delay_val_int[3]_i_1__1_n_0\
    );
\s_delay_val_int[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF60006"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => delay_change_reg_n_0,
      I3 => eye_run_reg_n_0,
      I4 => s_delay_val_eye_reg(3),
      O => \s_delay_val_int[3]_i_2__1_n_0\
    );
\s_delay_val_int[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FCF0FEFAFEFAFE"
    )
        port map (
      I0 => \s_delay_val_int[4]_i_3__1_n_0\,
      I1 => \s_delay_val_int[4]_i_4__1_n_0\,
      I2 => reset_1p25,
      I3 => \delay_change_i_1__1_n_0\,
      I4 => s_state(4),
      I5 => \s_state[3]_i_3__1_n_0\,
      O => \s_delay_val_int[4]_i_1__1_n_0\
    );
\s_delay_val_int[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08A8A8A8A8080808"
    )
        port map (
      I0 => \s_delay_val_int[4]_i_5__1_n_0\,
      I1 => s_delay_val_eye_reg(4),
      I2 => \s_delay_val_int[4]_i_4__1_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \s_delay_val_int[4]_i_2__1_n_0\
    );
\s_delay_val_int[4]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(2),
      I2 => s_state(1),
      I3 => s_state(3),
      O => \s_delay_val_int[4]_i_3__1_n_0\
    );
\s_delay_val_int[4]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_change_reg_n_0,
      I1 => eye_run_reg_n_0,
      O => \s_delay_val_int[4]_i_4__1_n_0\
    );
\s_delay_val_int[4]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000101000001011"
    )
        port map (
      I0 => reset_1p25,
      I1 => dec_run_reg_n_0,
      I2 => delay_change_reg_n_0,
      I3 => pd_min,
      I4 => inc_run_reg_n_0,
      I5 => pd_max,
      O => \s_delay_val_int[4]_i_5__1_n_0\
    );
\s_delay_val_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[4]_i_1__1_n_0\,
      D => \s_delay_val_int[0]_i_1__1_n_0\,
      Q => \sdataouta_reg[7]_0\(0),
      R => '0'
    );
\s_delay_val_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[4]_i_1__1_n_0\,
      D => \s_delay_val_int[1]_i_1__1_n_0\,
      Q => \sdataouta_reg[7]_0\(1),
      R => '0'
    );
\s_delay_val_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[4]_i_1__1_n_0\,
      D => \s_delay_val_int[2]_i_1__1_n_0\,
      Q => \sdataouta_reg[7]_0\(2),
      R => '0'
    );
\s_delay_val_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[4]_i_1__1_n_0\,
      D => \s_delay_val_int[3]_i_1__1_n_0\,
      Q => \sdataouta_reg[7]_0\(3),
      R => '0'
    );
\s_delay_val_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[4]_i_1__1_n_0\,
      D => \s_delay_val_int[4]_i_2__1_n_0\,
      Q => \sdataouta_reg[7]_0\(4),
      R => '0'
    );
\s_ovflw_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => s_ovflw1120_out,
      I1 => pd_min,
      I2 => delay_change_reg_n_0,
      I3 => dec_run_reg_n_0,
      I4 => eye_run_reg_n_0,
      I5 => s_ovflw_reg_n_0,
      O => \s_ovflw_i_1__1_n_0\
    );
s_ovflw_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \s_ovflw_i_1__1_n_0\,
      Q => s_ovflw_reg_n_0,
      R => reset_1p25
    );
\s_state[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555155555"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(1),
      I2 => s_state(2),
      I3 => s_state(3),
      I4 => s_state(4),
      I5 => \delay_change_i_1__1_n_0\,
      O => \s_state[0]_i_1__1_n_0\
    );
\s_state[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666666266666"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(1),
      I2 => s_state(2),
      I3 => s_state(3),
      I4 => s_state(4),
      I5 => \delay_change_i_1__1_n_0\,
      O => \s_state[1]_i_1__1_n_0\
    );
\s_state[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7878787878387878"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(1),
      I2 => s_state(2),
      I3 => s_state(3),
      I4 => s_state(4),
      I5 => \delay_change_i_1__1_n_0\,
      O => \s_state[2]_i_1__1_n_0\
    );
\s_state[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00510050FFFFFFFF"
    )
        port map (
      I0 => s_ovflw1120_out,
      I1 => pd_min,
      I2 => delay_change_reg_n_0,
      I3 => dec_run_reg_n_0,
      I4 => eye_run_reg_n_0,
      I5 => \s_state[3]_i_3__1_n_0\,
      O => \s_state[3]_i_1__1_n_0\
    );
\s_state[3]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => s_state(3),
      I1 => s_state(1),
      I2 => s_state(0),
      I3 => s_state(2),
      O => \s_state[3]_i_2__1_n_0\
    );
\s_state[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888BB8B8888BBBB"
    )
        port map (
      I0 => \s_state[3]_i_4_n_0\,
      I1 => s_ovflw1120_out,
      I2 => pd_min,
      I3 => delay_change_reg_n_0,
      I4 => dec_run_reg_n_0,
      I5 => meq_min_reg_n_0,
      O => \s_state[3]_i_3__1_n_0\
    );
\s_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inc_run_reg_n_0,
      I1 => meq_max,
      O => \s_state[3]_i_4_n_0\
    );
\s_state[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF7FFFF80000000"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(2),
      I2 => s_state(3),
      I3 => s_state(0),
      I4 => \s_state[4]_i_2__1_n_0\,
      I5 => s_state(4),
      O => \s_state[4]_i_1__1_n_0\
    );
\s_state[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000303000003032"
    )
        port map (
      I0 => eye_run_reg_n_0,
      I1 => dec_run_reg_n_0,
      I2 => delay_change_reg_n_0,
      I3 => pd_min,
      I4 => inc_run_reg_n_0,
      I5 => pd_max,
      O => \s_state[4]_i_2__1_n_0\
    );
\s_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_state[3]_i_1__1_n_0\,
      D => \s_state[0]_i_1__1_n_0\,
      Q => s_state(0),
      R => reset_1p25
    );
\s_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_state[3]_i_1__1_n_0\,
      D => \s_state[1]_i_1__1_n_0\,
      Q => s_state(1),
      R => reset_1p25
    );
\s_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_state[3]_i_1__1_n_0\,
      D => \s_state[2]_i_1__1_n_0\,
      Q => s_state(2),
      R => reset_1p25
    );
\s_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_state[3]_i_1__1_n_0\,
      D => \s_state[3]_i_2__1_n_0\,
      Q => s_state(3),
      R => reset_1p25
    );
\s_state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \s_state[4]_i_1__1_n_0\,
      Q => s_state(4),
      R => reset_1p25
    );
\sdataouta_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => \sdataouta_reg_n_0_[0]\,
      R => '0'
    );
\sdataouta_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => p_0_in15_in,
      R => '0'
    );
\sdataouta_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => p_0_in28_in,
      R => '0'
    );
\sdataouta_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => p_0_in40_in,
      R => '0'
    );
\sdataouta_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(4),
      Q => p_0_in52_in,
      R => '0'
    );
\sdataouta_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(5),
      Q => p_0_in64_in,
      R => '0'
    );
\sdataouta_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(6),
      Q => p_0_in76_in,
      R => '0'
    );
\sdataouta_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(7),
      Q => p_0_in88_in,
      R => '0'
    );
sdataoutb_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in88_in,
      Q => sdataoutb,
      R => '0'
    );
\sdataoutc[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \sdataouta_reg_n_0_[0]\,
      I1 => s_delay_mux(0),
      I2 => p_0_in15_in,
      I3 => s_delay_mux(1),
      I4 => sdataoutb,
      O => \sdataoutc[0]_i_1__1_n_0\
    );
\sdataoutc[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in15_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in28_in,
      I3 => s_delay_mux(1),
      I4 => \sdataouta_reg_n_0_[0]\,
      O => \sdataoutc[1]_i_1__1_n_0\
    );
\sdataoutc[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in28_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in40_in,
      I3 => s_delay_mux(1),
      I4 => p_0_in15_in,
      O => \sdataoutc[2]_i_1__1_n_0\
    );
\sdataoutc[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in40_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in52_in,
      I3 => s_delay_mux(1),
      I4 => p_0_in28_in,
      O => \sdataoutc[3]_i_1__1_n_0\
    );
\sdataoutc[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in52_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in64_in,
      I3 => s_delay_mux(1),
      I4 => p_0_in40_in,
      O => \sdataoutc[4]_i_1__1_n_0\
    );
\sdataoutc[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in64_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in76_in,
      I3 => s_delay_mux(1),
      I4 => p_0_in52_in,
      O => \sdataoutc[5]_i_1__1_n_0\
    );
\sdataoutc[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in76_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in88_in,
      I3 => s_delay_mux(1),
      I4 => p_0_in64_in,
      O => \sdataoutc[6]_i_1__1_n_0\
    );
\sdataoutc[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in88_in,
      I1 => s_delay_mux(0),
      I2 => D(0),
      I3 => s_delay_mux(1),
      I4 => p_0_in76_in,
      O => \sdataoutc[7]_i_1__1_n_0\
    );
\sdataoutc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \sdataoutc[0]_i_1__1_n_0\,
      Q => sdataoutc(0),
      R => '0'
    );
\sdataoutc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \sdataoutc[1]_i_1__1_n_0\,
      Q => sdataoutc(1),
      R => '0'
    );
\sdataoutc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \sdataoutc[2]_i_1__1_n_0\,
      Q => sdataoutc(2),
      R => '0'
    );
\sdataoutc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \sdataoutc[3]_i_1__1_n_0\,
      Q => sdataoutc(3),
      R => '0'
    );
\sdataoutc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \sdataoutc[4]_i_1__1_n_0\,
      Q => sdataoutc(4),
      R => '0'
    );
\sdataoutc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \sdataoutc[5]_i_1__1_n_0\,
      Q => sdataoutc(5),
      R => '0'
    );
\sdataoutc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \sdataoutc[6]_i_1__1_n_0\,
      Q => sdataoutc(6),
      R => '0'
    );
\sdataoutc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \sdataoutc[7]_i_1__1_n_0\,
      Q => sdataoutc(7),
      R => '0'
    );
\shifter[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABAA"
    )
        port map (
      I0 => shifter(31),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[0]_i_1__1_n_0\
    );
\shifter[10]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(9),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[10]_i_1__1_n_0\
    );
\shifter[11]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(10),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[11]_i_1__1_n_0\
    );
\shifter[12]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(11),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[12]_i_1__1_n_0\
    );
\shifter[13]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(12),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[13]_i_1__1_n_0\
    );
\shifter[14]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(13),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[14]_i_1__1_n_0\
    );
\shifter[15]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(14),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[15]_i_1__1_n_0\
    );
\shifter[16]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(15),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[16]_i_1__1_n_0\
    );
\shifter[17]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(16),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[17]_i_1__1_n_0\
    );
\shifter[18]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(17),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[18]_i_1__1_n_0\
    );
\shifter[19]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(18),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[19]_i_1__1_n_0\
    );
\shifter[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(0),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[1]_i_1__1_n_0\
    );
\shifter[20]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(19),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[20]_i_1__1_n_0\
    );
\shifter[21]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(20),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[21]_i_1__1_n_0\
    );
\shifter[22]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(21),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[22]_i_1__1_n_0\
    );
\shifter[23]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(22),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[23]_i_1__1_n_0\
    );
\shifter[24]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(23),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[24]_i_1__1_n_0\
    );
\shifter[25]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(24),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[25]_i_1__1_n_0\
    );
\shifter[26]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(25),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[26]_i_1__1_n_0\
    );
\shifter[27]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(26),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[27]_i_1__1_n_0\
    );
\shifter[28]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(27),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[28]_i_1__1_n_0\
    );
\shifter[29]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(28),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[29]_i_1__1_n_0\
    );
\shifter[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(1),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[2]_i_1__1_n_0\
    );
\shifter[30]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(29),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[30]_i_1__1_n_0\
    );
\shifter[31]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(30),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[31]_i_1__1_n_0\
    );
\shifter[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(2),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[3]_i_1__1_n_0\
    );
\shifter[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(3),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[4]_i_1__1_n_0\
    );
\shifter[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(4),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[5]_i_1__1_n_0\
    );
\shifter[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(5),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[6]_i_1__1_n_0\
    );
\shifter[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(6),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[7]_i_1__1_n_0\
    );
\shifter[8]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(7),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[8]_i_1__1_n_0\
    );
\shifter[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(8),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[9]_i_1__1_n_0\
    );
\shifter_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[0]_i_1__1_n_0\,
      Q => shifter(0),
      S => reset_1p25
    );
\shifter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[10]_i_1__1_n_0\,
      Q => shifter(10),
      R => reset_1p25
    );
\shifter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[11]_i_1__1_n_0\,
      Q => shifter(11),
      R => reset_1p25
    );
\shifter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[12]_i_1__1_n_0\,
      Q => shifter(12),
      R => reset_1p25
    );
\shifter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[13]_i_1__1_n_0\,
      Q => shifter(13),
      R => reset_1p25
    );
\shifter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[14]_i_1__1_n_0\,
      Q => shifter(14),
      R => reset_1p25
    );
\shifter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[15]_i_1__1_n_0\,
      Q => shifter(15),
      R => reset_1p25
    );
\shifter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[16]_i_1__1_n_0\,
      Q => shifter(16),
      R => reset_1p25
    );
\shifter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[17]_i_1__1_n_0\,
      Q => shifter(17),
      R => reset_1p25
    );
\shifter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[18]_i_1__1_n_0\,
      Q => shifter(18),
      R => reset_1p25
    );
\shifter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[19]_i_1__1_n_0\,
      Q => shifter(19),
      R => reset_1p25
    );
\shifter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[1]_i_1__1_n_0\,
      Q => shifter(1),
      R => reset_1p25
    );
\shifter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[20]_i_1__1_n_0\,
      Q => shifter(20),
      R => reset_1p25
    );
\shifter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[21]_i_1__1_n_0\,
      Q => shifter(21),
      R => reset_1p25
    );
\shifter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[22]_i_1__1_n_0\,
      Q => shifter(22),
      R => reset_1p25
    );
\shifter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[23]_i_1__1_n_0\,
      Q => shifter(23),
      R => reset_1p25
    );
\shifter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[24]_i_1__1_n_0\,
      Q => shifter(24),
      R => reset_1p25
    );
\shifter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[25]_i_1__1_n_0\,
      Q => shifter(25),
      R => reset_1p25
    );
\shifter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[26]_i_1__1_n_0\,
      Q => shifter(26),
      R => reset_1p25
    );
\shifter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[27]_i_1__1_n_0\,
      Q => shifter(27),
      R => reset_1p25
    );
\shifter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[28]_i_1__1_n_0\,
      Q => shifter(28),
      R => reset_1p25
    );
\shifter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[29]_i_1__1_n_0\,
      Q => shifter(29),
      R => reset_1p25
    );
\shifter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[2]_i_1__1_n_0\,
      Q => shifter(2),
      R => reset_1p25
    );
\shifter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[30]_i_1__1_n_0\,
      Q => shifter(30),
      R => reset_1p25
    );
\shifter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[31]_i_1__1_n_0\,
      Q => shifter(31),
      R => reset_1p25
    );
\shifter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[3]_i_1__1_n_0\,
      Q => shifter(3),
      R => reset_1p25
    );
\shifter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[4]_i_1__1_n_0\,
      Q => shifter(4),
      R => reset_1p25
    );
\shifter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[5]_i_1__1_n_0\,
      Q => shifter(5),
      R => reset_1p25
    );
\shifter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[6]_i_1__1_n_0\,
      Q => shifter(6),
      R => reset_1p25
    );
\shifter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[7]_i_1__1_n_0\,
      Q => shifter(7),
      R => reset_1p25
    );
\shifter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[8]_i_1__1_n_0\,
      Q => shifter(8),
      R => reset_1p25
    );
\shifter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[9]_i_1__1_n_0\,
      Q => shifter(9),
      R => reset_1p25
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_delay_controller_wrap_13 is
  port (
    blue_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_delay_val_in : out STD_LOGIC_VECTOR ( 4 downto 0 );
    blue_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \dataout_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_12_in : in STD_LOGIC;
    CLK : in STD_LOGIC;
    reset_1p25 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bitslipx1p25_reg : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_delay_controller_wrap_13 : entity is "delay_controller_wrap";
end overlay1_dvi_decoder_v2_0_0_delay_controller_wrap_13;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_delay_controller_wrap_13 is
  signal action : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \action[0]_i_2_n_0\ : STD_LOGIC;
  signal \action[0]_i_3_n_0\ : STD_LOGIC;
  signal \action[1]_i_2_n_0\ : STD_LOGIC;
  signal \action[1]_i_3_n_0\ : STD_LOGIC;
  signal \action_reg_n_0_[0]\ : STD_LOGIC;
  signal \^blue_debug\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^blue_eye\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_mux : STD_LOGIC;
  signal data_mux_i_1_n_0 : STD_LOGIC;
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal dec_run_i_1_n_0 : STD_LOGIC;
  signal dec_run_i_2_n_0 : STD_LOGIC;
  signal dec_run_reg_n_0 : STD_LOGIC;
  signal delay_change_i_1_n_0 : STD_LOGIC;
  signal delay_change_reg_n_0 : STD_LOGIC;
  signal eye_run_i_1_n_0 : STD_LOGIC;
  signal \eye_run_i_2__0_n_0\ : STD_LOGIC;
  signal eye_run_reg_n_0 : STD_LOGIC;
  signal inc_run_i_1_n_0 : STD_LOGIC;
  signal inc_run_i_2_n_0 : STD_LOGIC;
  signal inc_run_reg_n_0 : STD_LOGIC;
  signal m_delay_mux : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_delay_mux[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_delay_mux[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_delay_mux[1]_i_2_n_0\ : STD_LOGIC;
  signal \^m_delay_val_in\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \m_delay_val_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[2]_i_2_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[3]_i_3_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[3]_i_4_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_2_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_3_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_4_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_5_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_6__1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_7_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_8__0_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_9__1_n_0\ : STD_LOGIC;
  signal match : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \match[0]_i_1_n_0\ : STD_LOGIC;
  signal \match[0]_i_2_n_0\ : STD_LOGIC;
  signal \match[0]_i_3_n_0\ : STD_LOGIC;
  signal \mdataouta_reg_n_0_[0]\ : STD_LOGIC;
  signal mdataoutb : STD_LOGIC;
  signal mdataoutc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \mdataoutc[0]_i_1_n_0\ : STD_LOGIC;
  signal \mdataoutc[1]_i_1_n_0\ : STD_LOGIC;
  signal \mdataoutc[2]_i_1_n_0\ : STD_LOGIC;
  signal \mdataoutc[3]_i_1_n_0\ : STD_LOGIC;
  signal \mdataoutc[4]_i_1_n_0\ : STD_LOGIC;
  signal \mdataoutc[5]_i_1_n_0\ : STD_LOGIC;
  signal \mdataoutc[6]_i_1_n_0\ : STD_LOGIC;
  signal \mdataoutc[7]_i_1_n_0\ : STD_LOGIC;
  signal meq_max : STD_LOGIC;
  signal meq_min_i_1_n_0 : STD_LOGIC;
  signal meq_min_i_2_n_0 : STD_LOGIC;
  signal meq_min_reg_n_0 : STD_LOGIC;
  signal \msxor_ctd[0]_i_1_n_0\ : STD_LOGIC;
  signal \msxor_ctd[1]_i_1_n_0\ : STD_LOGIC;
  signal \msxor_ctd[1]_i_2_n_0\ : STD_LOGIC;
  signal \msxor_ctd[1]_i_3_n_0\ : STD_LOGIC;
  signal \msxor_ctd[1]_i_4_n_0\ : STD_LOGIC;
  signal \msxor_ctd[1]_i_5_n_0\ : STD_LOGIC;
  signal \msxor_ctd_reg_n_0_[0]\ : STD_LOGIC;
  signal \msxor_ctd_reg_n_0_[1]\ : STD_LOGIC;
  signal \msxor_ctdx[0]_i_1_n_0\ : STD_LOGIC;
  signal \msxor_ctdx[1]_i_1_n_0\ : STD_LOGIC;
  signal \msxor_ctdx[1]_i_2_n_0\ : STD_LOGIC;
  signal \msxor_ctdx[1]_i_3_n_0\ : STD_LOGIC;
  signal \msxor_ctdx[1]_i_4_n_0\ : STD_LOGIC;
  signal \msxor_ctdx[1]_i_5_n_0\ : STD_LOGIC;
  signal \msxor_ctdx_reg_n_0_[0]\ : STD_LOGIC;
  signal \msxor_ctdx_reg_n_0_[1]\ : STD_LOGIC;
  signal \msxor_cti[0]_i_1_n_0\ : STD_LOGIC;
  signal \msxor_cti[1]_i_1_n_0\ : STD_LOGIC;
  signal \msxor_cti[1]_i_2_n_0\ : STD_LOGIC;
  signal \msxor_cti[1]_i_3_n_0\ : STD_LOGIC;
  signal \msxor_cti[1]_i_4_n_0\ : STD_LOGIC;
  signal \msxor_cti[1]_i_5_n_0\ : STD_LOGIC;
  signal \msxor_cti_reg_n_0_[0]\ : STD_LOGIC;
  signal \msxor_cti_reg_n_0_[1]\ : STD_LOGIC;
  signal \msxor_ctix[0]_i_1_n_0\ : STD_LOGIC;
  signal \msxor_ctix[1]_i_1_n_0\ : STD_LOGIC;
  signal \msxor_ctix[1]_i_2_n_0\ : STD_LOGIC;
  signal \msxor_ctix[1]_i_3_n_0\ : STD_LOGIC;
  signal \msxor_ctix[1]_i_4_n_0\ : STD_LOGIC;
  signal \msxor_ctix[1]_i_5_n_0\ : STD_LOGIC;
  signal \msxor_ctix_reg_n_0_[0]\ : STD_LOGIC;
  signal \msxor_ctix_reg_n_0_[1]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in110_in : STD_LOGIC;
  signal p_0_in124_in : STD_LOGIC;
  signal p_0_in138_in : STD_LOGIC;
  signal p_0_in152_in : STD_LOGIC;
  signal p_0_in15_in : STD_LOGIC;
  signal p_0_in166_in : STD_LOGIC;
  signal p_0_in180_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_0_in200_in : STD_LOGIC;
  signal p_0_in28_in : STD_LOGIC;
  signal p_0_in40_in : STD_LOGIC;
  signal p_0_in52_in : STD_LOGIC;
  signal p_0_in64_in : STD_LOGIC;
  signal p_0_in76_in : STD_LOGIC;
  signal p_0_in88_in : STD_LOGIC;
  signal p_0_in97_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \pd_hold[1]_i_1_n_0\ : STD_LOGIC;
  signal \pd_hold[2]_i_1_n_0\ : STD_LOGIC;
  signal \pd_hold[3]_i_1_n_0\ : STD_LOGIC;
  signal \pd_hold[4]_i_1_n_0\ : STD_LOGIC;
  signal \pd_hold[5]_i_1_n_0\ : STD_LOGIC;
  signal \pd_hold[6]_i_1_n_0\ : STD_LOGIC;
  signal \pd_hold[7]_i_1_n_0\ : STD_LOGIC;
  signal \pd_hold[7]_i_2_n_0\ : STD_LOGIC;
  signal pd_max : STD_LOGIC;
  signal pd_max0 : STD_LOGIC;
  signal pd_max_i_2_n_0 : STD_LOGIC;
  signal pd_min : STD_LOGIC;
  signal pd_min0 : STD_LOGIC;
  signal pd_min_i_3_n_0 : STD_LOGIC;
  signal pdcount1 : STD_LOGIC;
  signal \pdcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \pdcount[1]_i_1_n_0\ : STD_LOGIC;
  signal \pdcount[2]_i_1_n_0\ : STD_LOGIC;
  signal \pdcount[3]_i_1_n_0\ : STD_LOGIC;
  signal \pdcount[4]_i_1_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_1_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_2_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_3_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_4_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_5_n_0\ : STD_LOGIC;
  signal \pdcount_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal results : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \results[31]_i_3_n_0\ : STD_LOGIC;
  signal \results[31]_i_4_n_0\ : STD_LOGIC;
  signal \results[31]_i_5_n_0\ : STD_LOGIC;
  signal s_delay_mux : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_delay_mux[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_delay_mux[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_delay_mux[1]_i_2__0_n_0\ : STD_LOGIC;
  signal s_delay_val_eye : STD_LOGIC;
  signal \s_delay_val_eye_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \s_delay_val_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_4_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_5_n_0\ : STD_LOGIC;
  signal s_ovflw_i_1_n_0 : STD_LOGIC;
  signal s_ovflw_reg_n_0 : STD_LOGIC;
  signal s_state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \s_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \sdataouta_reg_n_0_[0]\ : STD_LOGIC;
  signal sdataoutb : STD_LOGIC;
  signal sdataoutc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sdataoutc[0]_i_1_n_0\ : STD_LOGIC;
  signal \sdataoutc[1]_i_1_n_0\ : STD_LOGIC;
  signal \sdataoutc[2]_i_1_n_0\ : STD_LOGIC;
  signal \sdataoutc[3]_i_1_n_0\ : STD_LOGIC;
  signal \sdataoutc[4]_i_1_n_0\ : STD_LOGIC;
  signal \sdataoutc[5]_i_1_n_0\ : STD_LOGIC;
  signal \sdataoutc[6]_i_1_n_0\ : STD_LOGIC;
  signal \sdataoutc[7]_i_1_n_0\ : STD_LOGIC;
  signal shifter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \shifter[0]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[10]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[11]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[12]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[13]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[14]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[15]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[16]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[17]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[18]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[19]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[1]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[20]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[21]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[22]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[23]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[24]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[25]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[26]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[27]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[28]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[29]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[2]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[30]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[31]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[3]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[4]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[5]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[6]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[7]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[8]_i_1_n_0\ : STD_LOGIC;
  signal \shifter[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \action[0]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \action[0]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \action[1]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \action[1]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \blue_debug[0]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \blue_debug[10]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \blue_debug[11]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \blue_debug[12]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \blue_debug[13]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \blue_debug[14]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \blue_debug[15]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \blue_debug[16]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \blue_debug[17]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \blue_debug[18]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \blue_debug[19]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \blue_debug[1]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \blue_debug[20]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \blue_debug[21]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \blue_debug[22]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \blue_debug[23]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \blue_debug[24]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \blue_debug[25]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \blue_debug[26]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \blue_debug[27]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \blue_debug[28]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \blue_debug[29]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \blue_debug[2]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \blue_debug[30]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \blue_debug[31]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \blue_debug[3]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \blue_debug[4]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \blue_debug[5]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \blue_debug[6]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \blue_debug[7]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \blue_debug[8]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \blue_debug[9]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_out[0]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \data_out[1]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \data_out[2]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \data_out[3]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \data_out[4]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \data_out[5]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \data_out[6]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \data_out[7]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of delay_change_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \eye_run_i_2__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of inc_run_i_2 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_delay_mux[1]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_delay_val_int[3]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_6__1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_8__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \msxor_ctd[0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_5\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \msxor_ctdx[0]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \msxor_ctdx[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \msxor_ctdx[1]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \msxor_ctdx[1]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \msxor_ctdx[1]_i_4\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \msxor_ctdx[1]_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \msxor_cti[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_5\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \msxor_ctix[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \msxor_ctix[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \msxor_ctix[1]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \msxor_ctix[1]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \msxor_ctix[1]_i_4\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \msxor_ctix[1]_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \pd_hold[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \pd_hold[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of pd_max_i_1 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of pd_min_i_2 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \pdcount[0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \pdcount[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pdcount[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pdcount[5]_i_5\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \results[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \results[10]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \results[11]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \results[12]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \results[13]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \results[14]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \results[15]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \results[16]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \results[17]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \results[18]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \results[19]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \results[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \results[20]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \results[21]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \results[22]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \results[23]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \results[24]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \results[25]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \results[26]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \results[27]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \results[28]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \results[29]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \results[2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \results[30]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \results[31]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \results[3]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \results[4]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \results[5]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \results[6]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \results[7]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \results[8]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \results[9]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \s_delay_mux[1]_i_2__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \s_delay_val_eye[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_delay_val_eye[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_delay_val_eye[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_delay_val_eye[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_delay_val_int[3]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_delay_val_int[4]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \s_delay_val_int[4]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_state[2]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_state[3]_i_2\ : label is "soft_lutpair45";
begin
  blue_debug(31 downto 0) <= \^blue_debug\(31 downto 0);
  blue_eye(31 downto 0) <= \^blue_eye\(31 downto 0);
  m_delay_val_in(4 downto 0) <= \^m_delay_val_in\(4 downto 0);
\action[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8EEF088E8EEF0008"
    )
        port map (
      I0 => \msxor_cti_reg_n_0_[1]\,
      I1 => \msxor_ctix_reg_n_0_[1]\,
      I2 => \msxor_ctd_reg_n_0_[1]\,
      I3 => \msxor_ctdx_reg_n_0_[1]\,
      I4 => \action[0]_i_2_n_0\,
      I5 => \action[0]_i_3_n_0\,
      O => action(0)
    );
\action[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"088E"
    )
        port map (
      I0 => \msxor_cti_reg_n_0_[0]\,
      I1 => \msxor_ctix_reg_n_0_[0]\,
      I2 => \msxor_ctd_reg_n_0_[0]\,
      I3 => \msxor_ctdx_reg_n_0_[0]\,
      O => \action[0]_i_2_n_0\
    );
\action[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \msxor_ctix_reg_n_0_[0]\,
      I1 => \msxor_cti_reg_n_0_[0]\,
      I2 => \msxor_ctdx_reg_n_0_[0]\,
      I3 => \msxor_ctd_reg_n_0_[0]\,
      O => \action[0]_i_3_n_0\
    );
\action[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CEEF0CCE0CCE000C"
    )
        port map (
      I0 => \action[1]_i_2_n_0\,
      I1 => \action[1]_i_3_n_0\,
      I2 => \msxor_ctix_reg_n_0_[1]\,
      I3 => \msxor_cti_reg_n_0_[1]\,
      I4 => \msxor_ctdx_reg_n_0_[1]\,
      I5 => \msxor_ctd_reg_n_0_[1]\,
      O => action(1)
    );
\action[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \msxor_ctix_reg_n_0_[0]\,
      I1 => \msxor_cti_reg_n_0_[0]\,
      I2 => \msxor_ctdx_reg_n_0_[0]\,
      I3 => \msxor_ctd_reg_n_0_[0]\,
      O => \action[1]_i_2_n_0\
    );
\action[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"088E"
    )
        port map (
      I0 => \msxor_ctd_reg_n_0_[0]\,
      I1 => \msxor_ctdx_reg_n_0_[0]\,
      I2 => \msxor_cti_reg_n_0_[0]\,
      I3 => \msxor_ctix_reg_n_0_[0]\,
      O => \action[1]_i_3_n_0\
    );
\action_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => action(0),
      Q => \action_reg_n_0_[0]\,
      R => '0'
    );
\action_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => action(1),
      Q => p_0_in200_in,
      R => '0'
    );
\blue_debug[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^m_delay_val_in\(4),
      I1 => \^m_delay_val_in\(3),
      I2 => \^m_delay_val_in\(0),
      I3 => \^m_delay_val_in\(1),
      I4 => \^m_delay_val_in\(2),
      O => \^blue_debug\(0)
    );
\blue_debug[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^m_delay_val_in\(0),
      I1 => \^m_delay_val_in\(1),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(3),
      I4 => \^m_delay_val_in\(4),
      O => \^blue_debug\(10)
    );
\blue_debug[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \^m_delay_val_in\(0),
      I1 => \^m_delay_val_in\(1),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(3),
      I4 => \^m_delay_val_in\(4),
      O => \^blue_debug\(11)
    );
\blue_debug[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \^m_delay_val_in\(1),
      I1 => \^m_delay_val_in\(0),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(4),
      I4 => \^m_delay_val_in\(3),
      O => \^blue_debug\(12)
    );
\blue_debug[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^m_delay_val_in\(1),
      I1 => \^m_delay_val_in\(0),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(3),
      I4 => \^m_delay_val_in\(4),
      O => \^blue_debug\(13)
    );
\blue_debug[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^m_delay_val_in\(0),
      I1 => \^m_delay_val_in\(1),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(3),
      I4 => \^m_delay_val_in\(4),
      O => \^blue_debug\(14)
    );
\blue_debug[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \^m_delay_val_in\(1),
      I1 => \^m_delay_val_in\(0),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(4),
      I4 => \^m_delay_val_in\(3),
      O => \^blue_debug\(15)
    );
\blue_debug[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^m_delay_val_in\(0),
      I1 => \^m_delay_val_in\(1),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(4),
      I4 => \^m_delay_val_in\(3),
      O => \^blue_debug\(16)
    );
\blue_debug[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^m_delay_val_in\(1),
      I1 => \^m_delay_val_in\(0),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(4),
      I4 => \^m_delay_val_in\(3),
      O => \^blue_debug\(17)
    );
\blue_debug[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^m_delay_val_in\(0),
      I1 => \^m_delay_val_in\(1),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(4),
      I4 => \^m_delay_val_in\(3),
      O => \^blue_debug\(18)
    );
\blue_debug[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \^m_delay_val_in\(0),
      I1 => \^m_delay_val_in\(1),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(4),
      I4 => \^m_delay_val_in\(3),
      O => \^blue_debug\(19)
    );
\blue_debug[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^m_delay_val_in\(4),
      I1 => \^m_delay_val_in\(3),
      I2 => \^m_delay_val_in\(1),
      I3 => \^m_delay_val_in\(0),
      I4 => \^m_delay_val_in\(2),
      O => \^blue_debug\(1)
    );
\blue_debug[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^m_delay_val_in\(0),
      I1 => \^m_delay_val_in\(1),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(4),
      I4 => \^m_delay_val_in\(3),
      O => \^blue_debug\(20)
    );
\blue_debug[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^m_delay_val_in\(1),
      I1 => \^m_delay_val_in\(0),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(4),
      I4 => \^m_delay_val_in\(3),
      O => \^blue_debug\(21)
    );
\blue_debug[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^m_delay_val_in\(0),
      I1 => \^m_delay_val_in\(1),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(4),
      I4 => \^m_delay_val_in\(3),
      O => \^blue_debug\(22)
    );
\blue_debug[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \^m_delay_val_in\(2),
      I1 => \^m_delay_val_in\(0),
      I2 => \^m_delay_val_in\(1),
      I3 => \^m_delay_val_in\(4),
      I4 => \^m_delay_val_in\(3),
      O => \^blue_debug\(23)
    );
\blue_debug[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \^m_delay_val_in\(4),
      I1 => \^m_delay_val_in\(3),
      I2 => \^m_delay_val_in\(0),
      I3 => \^m_delay_val_in\(1),
      I4 => \^m_delay_val_in\(2),
      O => \^blue_debug\(24)
    );
\blue_debug[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^m_delay_val_in\(1),
      I1 => \^m_delay_val_in\(0),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(4),
      I4 => \^m_delay_val_in\(3),
      O => \^blue_debug\(25)
    );
\blue_debug[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^m_delay_val_in\(0),
      I1 => \^m_delay_val_in\(1),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(4),
      I4 => \^m_delay_val_in\(3),
      O => \^blue_debug\(26)
    );
\blue_debug[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \^m_delay_val_in\(0),
      I1 => \^m_delay_val_in\(1),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(4),
      I4 => \^m_delay_val_in\(3),
      O => \^blue_debug\(27)
    );
\blue_debug[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^m_delay_val_in\(0),
      I1 => \^m_delay_val_in\(1),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(4),
      I4 => \^m_delay_val_in\(3),
      O => \^blue_debug\(28)
    );
\blue_debug[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^m_delay_val_in\(1),
      I1 => \^m_delay_val_in\(0),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(4),
      I4 => \^m_delay_val_in\(3),
      O => \^blue_debug\(29)
    );
\blue_debug[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^m_delay_val_in\(4),
      I1 => \^m_delay_val_in\(3),
      I2 => \^m_delay_val_in\(0),
      I3 => \^m_delay_val_in\(1),
      I4 => \^m_delay_val_in\(2),
      O => \^blue_debug\(2)
    );
\blue_debug[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^m_delay_val_in\(0),
      I1 => \^m_delay_val_in\(1),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(4),
      I4 => \^m_delay_val_in\(3),
      O => \^blue_debug\(30)
    );
\blue_debug[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^m_delay_val_in\(0),
      I1 => \^m_delay_val_in\(1),
      I2 => \^m_delay_val_in\(3),
      I3 => \^m_delay_val_in\(2),
      I4 => \^m_delay_val_in\(4),
      O => \^blue_debug\(31)
    );
\blue_debug[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^m_delay_val_in\(4),
      I1 => \^m_delay_val_in\(3),
      I2 => \^m_delay_val_in\(0),
      I3 => \^m_delay_val_in\(1),
      I4 => \^m_delay_val_in\(2),
      O => \^blue_debug\(3)
    );
\blue_debug[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \^m_delay_val_in\(4),
      I1 => \^m_delay_val_in\(3),
      I2 => \^m_delay_val_in\(0),
      I3 => \^m_delay_val_in\(1),
      I4 => \^m_delay_val_in\(2),
      O => \^blue_debug\(4)
    );
\blue_debug[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \^m_delay_val_in\(4),
      I1 => \^m_delay_val_in\(3),
      I2 => \^m_delay_val_in\(1),
      I3 => \^m_delay_val_in\(0),
      I4 => \^m_delay_val_in\(2),
      O => \^blue_debug\(5)
    );
\blue_debug[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \^m_delay_val_in\(4),
      I1 => \^m_delay_val_in\(3),
      I2 => \^m_delay_val_in\(0),
      I3 => \^m_delay_val_in\(1),
      I4 => \^m_delay_val_in\(2),
      O => \^blue_debug\(6)
    );
\blue_debug[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^m_delay_val_in\(4),
      I1 => \^m_delay_val_in\(3),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(0),
      I4 => \^m_delay_val_in\(1),
      O => \^blue_debug\(7)
    );
\blue_debug[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^m_delay_val_in\(0),
      I1 => \^m_delay_val_in\(1),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(3),
      I4 => \^m_delay_val_in\(4),
      O => \^blue_debug\(8)
    );
\blue_debug[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^m_delay_val_in\(1),
      I1 => \^m_delay_val_in\(0),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(3),
      I4 => \^m_delay_val_in\(4),
      O => \^blue_debug\(9)
    );
data_mux_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000040"
    )
        port map (
      I0 => s_state(3),
      I1 => s_state(2),
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => \s_state[3]_i_3_n_0\,
      I5 => data_mux,
      O => data_mux_i_1_n_0
    );
data_mux_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => data_mux_i_1_n_0,
      Q => data_mux,
      R => reset_1p25
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(0),
      I1 => mdataoutc(0),
      I2 => data_mux,
      O => \data_out[0]_i_1_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(1),
      I1 => mdataoutc(1),
      I2 => data_mux,
      O => \data_out[1]_i_1_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(2),
      I1 => mdataoutc(2),
      I2 => data_mux,
      O => \data_out[2]_i_1_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(3),
      I1 => mdataoutc(3),
      I2 => data_mux,
      O => \data_out[3]_i_1_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(4),
      I1 => mdataoutc(4),
      I2 => data_mux,
      O => \data_out[4]_i_1_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(5),
      I1 => mdataoutc(5),
      I2 => data_mux,
      O => \data_out[5]_i_1_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(6),
      I1 => mdataoutc(6),
      I2 => data_mux,
      O => \data_out[6]_i_1_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(7),
      I1 => mdataoutc(7),
      I2 => data_mux,
      O => \data_out[7]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[0]_i_1_n_0\,
      Q => \dataout_reg[7]\(0),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[1]_i_1_n_0\,
      Q => \dataout_reg[7]\(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[2]_i_1_n_0\,
      Q => \dataout_reg[7]\(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[3]_i_1_n_0\,
      Q => \dataout_reg[7]\(3),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[4]_i_1_n_0\,
      Q => \dataout_reg[7]\(4),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[5]_i_1_n_0\,
      Q => \dataout_reg[7]\(5),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[6]_i_1_n_0\,
      Q => \dataout_reg[7]\(6),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[7]_i_1_n_0\,
      Q => \dataout_reg[7]\(7),
      R => '0'
    );
dec_run_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF6F770000"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(2),
      I2 => s_state(3),
      I3 => s_state(0),
      I4 => dec_run_i_2_n_0,
      I5 => dec_run_reg_n_0,
      O => dec_run_i_1_n_0
    );
dec_run_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3033000230330000"
    )
        port map (
      I0 => meq_min_reg_n_0,
      I1 => inc_run_reg_n_0,
      I2 => delay_change_reg_n_0,
      I3 => pd_max,
      I4 => dec_run_reg_n_0,
      I5 => pd_min,
      O => dec_run_i_2_n_0
    );
dec_run_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dec_run_i_1_n_0,
      Q => dec_run_reg_n_0,
      R => reset_1p25
    );
delay_change_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCCFE"
    )
        port map (
      I0 => pd_min,
      I1 => dec_run_reg_n_0,
      I2 => pd_max,
      I3 => delay_change_reg_n_0,
      I4 => inc_run_reg_n_0,
      O => delay_change_i_1_n_0
    );
delay_change_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => delay_change_i_1_n_0,
      Q => delay_change_reg_n_0,
      R => reset_1p25
    );
eye_run_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACCCAC8CCCCCCCC"
    )
        port map (
      I0 => \eye_run_i_2__0_n_0\,
      I1 => eye_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => pd_min,
      I5 => \m_delay_val_int[4]_i_5_n_0\,
      O => eye_run_i_1_n_0
    );
\eye_run_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(1),
      I2 => s_state(2),
      I3 => s_state(3),
      I4 => s_state(4),
      O => \eye_run_i_2__0_n_0\
    );
eye_run_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => eye_run_i_1_n_0,
      Q => eye_run_reg_n_0,
      R => reset_1p25
    );
inc_run_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00006F77"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(2),
      I2 => s_state(3),
      I3 => s_state(0),
      I4 => inc_run_i_2_n_0,
      I5 => inc_run_reg_n_0,
      O => inc_run_i_1_n_0
    );
inc_run_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => pd_max,
      I1 => delay_change_reg_n_0,
      I2 => meq_max,
      I3 => inc_run_reg_n_0,
      O => inc_run_i_2_n_0
    );
inc_run_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => inc_run_i_1_n_0,
      Q => inc_run_reg_n_0,
      R => reset_1p25
    );
\m_delay_mux[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF01000000"
    )
        port map (
      I0 => \s_state[3]_i_3_n_0\,
      I1 => s_state(1),
      I2 => s_state(2),
      I3 => s_state(3),
      I4 => s_state(0),
      I5 => m_delay_mux(0),
      O => \m_delay_mux[0]_i_1_n_0\
    );
\m_delay_mux[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6F0090"
    )
        port map (
      I0 => \m_delay_val_int[4]_i_5_n_0\,
      I1 => m_delay_mux(0),
      I2 => \m_delay_mux[1]_i_2_n_0\,
      I3 => \s_state[3]_i_3_n_0\,
      I4 => m_delay_mux(1),
      O => \m_delay_mux[1]_i_1_n_0\
    );
\m_delay_mux[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(2),
      I2 => s_state(3),
      I3 => s_state(0),
      O => \m_delay_mux[1]_i_2_n_0\
    );
\m_delay_mux_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \m_delay_mux[0]_i_1_n_0\,
      Q => m_delay_mux(0),
      S => reset_1p25
    );
\m_delay_mux_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \m_delay_mux[1]_i_1_n_0\,
      Q => m_delay_mux(1),
      R => reset_1p25
    );
\m_delay_val_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000100000001"
    )
        port map (
      I0 => inc_run_reg_n_0,
      I1 => meq_max,
      I2 => \^m_delay_val_in\(0),
      I3 => reset_1p25,
      I4 => \m_delay_val_int[4]_i_5_n_0\,
      I5 => \m_delay_val_int[3]_i_4_n_0\,
      O => \m_delay_val_int[0]_i_1_n_0\
    );
\m_delay_val_int[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4141140000001400"
    )
        port map (
      I0 => reset_1p25,
      I1 => \^m_delay_val_in\(0),
      I2 => \^m_delay_val_in\(1),
      I3 => \m_delay_val_int[4]_i_7_n_0\,
      I4 => \m_delay_val_int[4]_i_5_n_0\,
      I5 => \m_delay_val_int[3]_i_4_n_0\,
      O => \m_delay_val_int[1]_i_1__1_n_0\
    );
\m_delay_val_int[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FACA"
    )
        port map (
      I0 => \^m_delay_val_in\(2),
      I1 => \m_delay_val_int[2]_i_2_n_0\,
      I2 => \m_delay_val_int[4]_i_1_n_0\,
      I3 => reset_1p25,
      O => \m_delay_val_int[2]_i_1_n_0\
    );
\m_delay_val_int[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8B83030000088"
    )
        port map (
      I0 => \m_delay_val_int[3]_i_4_n_0\,
      I1 => \m_delay_val_int[4]_i_5_n_0\,
      I2 => \m_delay_val_int[4]_i_7_n_0\,
      I3 => \^m_delay_val_in\(0),
      I4 => \^m_delay_val_in\(1),
      I5 => \^m_delay_val_in\(2),
      O => \m_delay_val_int[2]_i_2_n_0\
    );
\m_delay_val_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5101015151515151"
    )
        port map (
      I0 => reset_1p25,
      I1 => \m_delay_val_int[3]_i_2__0_n_0\,
      I2 => \m_delay_val_int[4]_i_5_n_0\,
      I3 => \^m_delay_val_in\(3),
      I4 => \m_delay_val_int[3]_i_3_n_0\,
      I5 => \m_delay_val_int[3]_i_4_n_0\,
      O => \m_delay_val_int[3]_i_1_n_0\
    );
\m_delay_val_int[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF807F"
    )
        port map (
      I0 => \^m_delay_val_in\(1),
      I1 => \^m_delay_val_in\(0),
      I2 => \^m_delay_val_in\(2),
      I3 => \^m_delay_val_in\(3),
      I4 => meq_max,
      I5 => inc_run_reg_n_0,
      O => \m_delay_val_int[3]_i_2__0_n_0\
    );
\m_delay_val_int[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^m_delay_val_in\(2),
      I1 => \^m_delay_val_in\(1),
      I2 => \^m_delay_val_in\(0),
      O => \m_delay_val_int[3]_i_3_n_0\
    );
\m_delay_val_int[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dec_run_reg_n_0,
      I1 => meq_min_reg_n_0,
      O => \m_delay_val_int[3]_i_4_n_0\
    );
\m_delay_val_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FF01FF55FFFF"
    )
        port map (
      I0 => \m_delay_val_int[4]_i_3_n_0\,
      I1 => meq_min_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => \m_delay_val_int[4]_i_4_n_0\,
      I4 => \m_delay_val_int[4]_i_5_n_0\,
      I5 => \m_delay_val_int[4]_i_6__1_n_0\,
      O => \m_delay_val_int[4]_i_1_n_0\
    );
\m_delay_val_int[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000044055550440"
    )
        port map (
      I0 => reset_1p25,
      I1 => \m_delay_val_int[4]_i_7_n_0\,
      I2 => \^m_delay_val_in\(4),
      I3 => \m_delay_val_int[4]_i_8__0_n_0\,
      I4 => \m_delay_val_int[4]_i_5_n_0\,
      I5 => \m_delay_val_int[4]_i_9__1_n_0\,
      O => \m_delay_val_int[4]_i_2_n_0\
    );
\m_delay_val_int[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF33F1"
    )
        port map (
      I0 => pd_min,
      I1 => dec_run_reg_n_0,
      I2 => pd_max,
      I3 => delay_change_reg_n_0,
      I4 => inc_run_reg_n_0,
      O => \m_delay_val_int[4]_i_3_n_0\
    );
\m_delay_val_int[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => reset_1p25,
      I1 => inc_run_reg_n_0,
      I2 => meq_max,
      I3 => pd_max,
      I4 => delay_change_reg_n_0,
      O => \m_delay_val_int[4]_i_4_n_0\
    );
\m_delay_val_int[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => inc_run_reg_n_0,
      I1 => delay_change_reg_n_0,
      I2 => pd_max,
      O => \m_delay_val_int[4]_i_5_n_0\
    );
\m_delay_val_int[4]_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => s_state(3),
      I1 => s_state(2),
      I2 => s_state(1),
      I3 => s_state(0),
      O => \m_delay_val_int[4]_i_6__1_n_0\
    );
\m_delay_val_int[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inc_run_reg_n_0,
      I1 => meq_max,
      O => \m_delay_val_int[4]_i_7_n_0\
    );
\m_delay_val_int[4]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^m_delay_val_in\(2),
      I1 => \^m_delay_val_in\(3),
      I2 => \^m_delay_val_in\(1),
      I3 => \^m_delay_val_in\(0),
      O => \m_delay_val_int[4]_i_8__0_n_0\
    );
\m_delay_val_int[4]_i_9__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFEFFFFFFFF"
    )
        port map (
      I0 => \^m_delay_val_in\(3),
      I1 => \^m_delay_val_in\(0),
      I2 => \^m_delay_val_in\(1),
      I3 => \^m_delay_val_in\(2),
      I4 => \^m_delay_val_in\(4),
      I5 => \m_delay_val_int[3]_i_4_n_0\,
      O => \m_delay_val_int[4]_i_9__1_n_0\
    );
\m_delay_val_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[4]_i_1_n_0\,
      D => \m_delay_val_int[0]_i_1_n_0\,
      Q => \^m_delay_val_in\(0),
      R => '0'
    );
\m_delay_val_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[4]_i_1_n_0\,
      D => \m_delay_val_int[1]_i_1__1_n_0\,
      Q => \^m_delay_val_in\(1),
      R => '0'
    );
\m_delay_val_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \m_delay_val_int[2]_i_1_n_0\,
      Q => \^m_delay_val_in\(2),
      R => '0'
    );
\m_delay_val_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[4]_i_1_n_0\,
      D => \m_delay_val_int[3]_i_1_n_0\,
      Q => \^m_delay_val_in\(3),
      R => '0'
    );
\m_delay_val_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[4]_i_1_n_0\,
      D => \m_delay_val_int[4]_i_2_n_0\,
      Q => \^m_delay_val_in\(4),
      R => '0'
    );
\match[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => p_0_in166_in,
      I1 => p_0_in76_in,
      I2 => p_0_in180_in,
      I3 => p_0_in88_in,
      I4 => \match[0]_i_2_n_0\,
      I5 => \match[0]_i_3_n_0\,
      O => \match[0]_i_1_n_0\
    );
\match[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \sdataouta_reg_n_0_[0]\,
      I1 => \mdataouta_reg_n_0_[0]\,
      I2 => p_0_in110_in,
      I3 => p_0_in28_in,
      I4 => p_0_in97_in,
      I5 => p_0_in15_in,
      O => \match[0]_i_2_n_0\
    );
\match[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => p_0_in40_in,
      I1 => p_0_in124_in,
      I2 => p_0_in152_in,
      I3 => p_0_in64_in,
      I4 => p_0_in138_in,
      I5 => p_0_in52_in,
      O => \match[0]_i_3_n_0\
    );
\match_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \match[0]_i_1_n_0\,
      Q => p_2_in(1),
      R => '0'
    );
\match_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(1),
      Q => p_2_in(2),
      R => '0'
    );
\match_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(2),
      Q => p_2_in(3),
      R => '0'
    );
\match_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(3),
      Q => p_2_in(4),
      R => '0'
    );
\match_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(4),
      Q => p_2_in(5),
      R => '0'
    );
\match_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(5),
      Q => p_2_in(6),
      R => '0'
    );
\match_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(6),
      Q => p_2_in(7),
      R => '0'
    );
\match_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(7),
      Q => match(7),
      R => '0'
    );
\mdataouta_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(0),
      Q => \mdataouta_reg_n_0_[0]\,
      R => '0'
    );
\mdataouta_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(1),
      Q => p_0_in97_in,
      R => '0'
    );
\mdataouta_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(2),
      Q => p_0_in110_in,
      R => '0'
    );
\mdataouta_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(3),
      Q => p_0_in124_in,
      R => '0'
    );
\mdataouta_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(4),
      Q => p_0_in138_in,
      R => '0'
    );
\mdataouta_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(5),
      Q => p_0_in152_in,
      R => '0'
    );
\mdataouta_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(6),
      Q => p_0_in166_in,
      R => '0'
    );
\mdataouta_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(7),
      Q => p_0_in180_in,
      R => '0'
    );
mdataoutb_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in180_in,
      Q => mdataoutb,
      R => '0'
    );
\mdataoutc[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \mdataouta_reg_n_0_[0]\,
      I1 => m_delay_mux(0),
      I2 => p_0_in97_in,
      I3 => m_delay_mux(1),
      I4 => mdataoutb,
      O => \mdataoutc[0]_i_1_n_0\
    );
\mdataoutc[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in97_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in110_in,
      I3 => m_delay_mux(1),
      I4 => \mdataouta_reg_n_0_[0]\,
      O => \mdataoutc[1]_i_1_n_0\
    );
\mdataoutc[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in110_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in124_in,
      I3 => m_delay_mux(1),
      I4 => p_0_in97_in,
      O => \mdataoutc[2]_i_1_n_0\
    );
\mdataoutc[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in124_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in138_in,
      I3 => m_delay_mux(1),
      I4 => p_0_in110_in,
      O => \mdataoutc[3]_i_1_n_0\
    );
\mdataoutc[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in138_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in152_in,
      I3 => m_delay_mux(1),
      I4 => p_0_in124_in,
      O => \mdataoutc[4]_i_1_n_0\
    );
\mdataoutc[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in152_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in166_in,
      I3 => m_delay_mux(1),
      I4 => p_0_in138_in,
      O => \mdataoutc[5]_i_1_n_0\
    );
\mdataoutc[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in166_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in180_in,
      I3 => m_delay_mux(1),
      I4 => p_0_in152_in,
      O => \mdataoutc[6]_i_1_n_0\
    );
\mdataoutc[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in180_in,
      I1 => m_delay_mux(0),
      I2 => bitslipx1p25_reg(0),
      I3 => m_delay_mux(1),
      I4 => p_0_in166_in,
      O => \mdataoutc[7]_i_1_n_0\
    );
\mdataoutc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \mdataoutc[0]_i_1_n_0\,
      Q => mdataoutc(0),
      R => '0'
    );
\mdataoutc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \mdataoutc[1]_i_1_n_0\,
      Q => mdataoutc(1),
      R => '0'
    );
\mdataoutc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \mdataoutc[2]_i_1_n_0\,
      Q => mdataoutc(2),
      R => '0'
    );
\mdataoutc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \mdataoutc[3]_i_1_n_0\,
      Q => mdataoutc(3),
      R => '0'
    );
\mdataoutc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \mdataoutc[4]_i_1_n_0\,
      Q => mdataoutc(4),
      R => '0'
    );
\mdataoutc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \mdataoutc[5]_i_1_n_0\,
      Q => mdataoutc(5),
      R => '0'
    );
\mdataoutc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \mdataoutc[6]_i_1_n_0\,
      Q => mdataoutc(6),
      R => '0'
    );
\mdataoutc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \mdataoutc[7]_i_1_n_0\,
      Q => mdataoutc(7),
      R => '0'
    );
meq_max_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \^blue_debug\(8),
      Q => meq_max,
      R => '0'
    );
meq_min_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888B8"
    )
        port map (
      I0 => meq_min_reg_n_0,
      I1 => reset_1p25,
      I2 => meq_min_i_2_n_0,
      I3 => \^m_delay_val_in\(0),
      I4 => \^m_delay_val_in\(1),
      I5 => \^m_delay_val_in\(2),
      O => meq_min_i_1_n_0
    );
meq_min_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_delay_val_in\(3),
      I1 => \^m_delay_val_in\(4),
      O => meq_min_i_2_n_0
    );
meq_min_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => meq_min_i_1_n_0,
      Q => meq_min_reg_n_0,
      R => '0'
    );
\msxor_ctd[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6B96"
    )
        port map (
      I0 => \msxor_ctd[1]_i_2_n_0\,
      I1 => \msxor_ctd[1]_i_3_n_0\,
      I2 => \msxor_ctd[1]_i_4_n_0\,
      I3 => \msxor_ctd[1]_i_5_n_0\,
      O => \msxor_ctd[0]_i_1_n_0\
    );
\msxor_ctd[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF2B"
    )
        port map (
      I0 => \msxor_ctd[1]_i_2_n_0\,
      I1 => \msxor_ctd[1]_i_3_n_0\,
      I2 => \msxor_ctd[1]_i_4_n_0\,
      I3 => \msxor_ctd[1]_i_5_n_0\,
      O => \msxor_ctd[1]_i_1_n_0\
    );
\msxor_ctd[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => p_0_in28_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in15_in,
      I3 => p_0_in110_in,
      I4 => p_0_in97_in,
      O => \msxor_ctd[1]_i_2_n_0\
    );
\msxor_ctd[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in40_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in28_in,
      I3 => p_0_in124_in,
      I4 => p_0_in110_in,
      O => \msxor_ctd[1]_i_3_n_0\
    );
\msxor_ctd[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB847FF"
    )
        port map (
      I0 => p_0_in15_in,
      I1 => s_ovflw_reg_n_0,
      I2 => \sdataouta_reg_n_0_[0]\,
      I3 => \mdataouta_reg_n_0_[0]\,
      I4 => p_0_in97_in,
      O => \msxor_ctd[1]_i_4_n_0\
    );
\msxor_ctd[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047B800"
    )
        port map (
      I0 => \sdataouta_reg_n_0_[0]\,
      I1 => s_ovflw_reg_n_0,
      I2 => sdataoutb,
      I3 => mdataoutb,
      I4 => \mdataouta_reg_n_0_[0]\,
      O => \msxor_ctd[1]_i_5_n_0\
    );
\msxor_ctd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctd[0]_i_1_n_0\,
      Q => \msxor_ctd_reg_n_0_[0]\,
      R => '0'
    );
\msxor_ctd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctd[1]_i_1_n_0\,
      Q => \msxor_ctd_reg_n_0_[1]\,
      R => '0'
    );
\msxor_ctdx[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69D6"
    )
        port map (
      I0 => \msxor_ctdx[1]_i_5_n_0\,
      I1 => \msxor_ctdx[1]_i_4_n_0\,
      I2 => \msxor_ctdx[1]_i_2_n_0\,
      I3 => \msxor_ctdx[1]_i_3_n_0\,
      O => \msxor_ctdx[0]_i_1_n_0\
    );
\msxor_ctdx[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2FB"
    )
        port map (
      I0 => \msxor_ctdx[1]_i_2_n_0\,
      I1 => \msxor_ctdx[1]_i_3_n_0\,
      I2 => \msxor_ctdx[1]_i_4_n_0\,
      I3 => \msxor_ctdx[1]_i_5_n_0\,
      O => \msxor_ctdx[1]_i_1_n_0\
    );
\msxor_ctdx[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047B800"
    )
        port map (
      I0 => p_0_in64_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in52_in,
      I3 => p_0_in138_in,
      I4 => p_0_in152_in,
      O => \msxor_ctdx[1]_i_2_n_0\
    );
\msxor_ctdx[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in52_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in40_in,
      I3 => p_0_in138_in,
      I4 => p_0_in124_in,
      O => \msxor_ctdx[1]_i_3_n_0\
    );
\msxor_ctdx[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => p_0_in88_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in76_in,
      I3 => p_0_in180_in,
      I4 => p_0_in166_in,
      O => \msxor_ctdx[1]_i_4_n_0\
    );
\msxor_ctdx[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in76_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in64_in,
      I3 => p_0_in166_in,
      I4 => p_0_in152_in,
      O => \msxor_ctdx[1]_i_5_n_0\
    );
\msxor_ctdx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctdx[0]_i_1_n_0\,
      Q => \msxor_ctdx_reg_n_0_[0]\,
      R => '0'
    );
\msxor_ctdx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctdx[1]_i_1_n_0\,
      Q => \msxor_ctdx_reg_n_0_[1]\,
      R => '0'
    );
\msxor_cti[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6B96"
    )
        port map (
      I0 => \msxor_cti[1]_i_2_n_0\,
      I1 => \msxor_cti[1]_i_3_n_0\,
      I2 => \msxor_cti[1]_i_4_n_0\,
      I3 => \msxor_cti[1]_i_5_n_0\,
      O => \msxor_cti[0]_i_1_n_0\
    );
\msxor_cti[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF2B"
    )
        port map (
      I0 => \msxor_cti[1]_i_2_n_0\,
      I1 => \msxor_cti[1]_i_3_n_0\,
      I2 => \msxor_cti[1]_i_4_n_0\,
      I3 => \msxor_cti[1]_i_5_n_0\,
      O => \msxor_cti[1]_i_1_n_0\
    );
\msxor_cti[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => p_0_in28_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in15_in,
      I3 => p_0_in97_in,
      I4 => p_0_in110_in,
      O => \msxor_cti[1]_i_2_n_0\
    );
\msxor_cti[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in40_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in28_in,
      I3 => p_0_in110_in,
      I4 => p_0_in124_in,
      O => \msxor_cti[1]_i_3_n_0\
    );
\msxor_cti[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB847FF"
    )
        port map (
      I0 => p_0_in15_in,
      I1 => s_ovflw_reg_n_0,
      I2 => \sdataouta_reg_n_0_[0]\,
      I3 => p_0_in97_in,
      I4 => \mdataouta_reg_n_0_[0]\,
      O => \msxor_cti[1]_i_4_n_0\
    );
\msxor_cti[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => \sdataouta_reg_n_0_[0]\,
      I1 => s_ovflw_reg_n_0,
      I2 => sdataoutb,
      I3 => mdataoutb,
      I4 => \mdataouta_reg_n_0_[0]\,
      O => \msxor_cti[1]_i_5_n_0\
    );
\msxor_cti_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_cti[0]_i_1_n_0\,
      Q => \msxor_cti_reg_n_0_[0]\,
      R => '0'
    );
\msxor_cti_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_cti[1]_i_1_n_0\,
      Q => \msxor_cti_reg_n_0_[1]\,
      R => '0'
    );
\msxor_ctix[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69D6"
    )
        port map (
      I0 => \msxor_ctix[1]_i_5_n_0\,
      I1 => \msxor_ctix[1]_i_4_n_0\,
      I2 => \msxor_ctix[1]_i_2_n_0\,
      I3 => \msxor_ctix[1]_i_3_n_0\,
      O => \msxor_ctix[0]_i_1_n_0\
    );
\msxor_ctix[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2FB"
    )
        port map (
      I0 => \msxor_ctix[1]_i_2_n_0\,
      I1 => \msxor_ctix[1]_i_3_n_0\,
      I2 => \msxor_ctix[1]_i_4_n_0\,
      I3 => \msxor_ctix[1]_i_5_n_0\,
      O => \msxor_ctix[1]_i_1_n_0\
    );
\msxor_ctix[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => p_0_in64_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in52_in,
      I3 => p_0_in138_in,
      I4 => p_0_in152_in,
      O => \msxor_ctix[1]_i_2_n_0\
    );
\msxor_ctix[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in52_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in40_in,
      I3 => p_0_in124_in,
      I4 => p_0_in138_in,
      O => \msxor_ctix[1]_i_3_n_0\
    );
\msxor_ctix[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047B800"
    )
        port map (
      I0 => p_0_in88_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in76_in,
      I3 => p_0_in180_in,
      I4 => p_0_in166_in,
      O => \msxor_ctix[1]_i_4_n_0\
    );
\msxor_ctix[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in76_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in64_in,
      I3 => p_0_in152_in,
      I4 => p_0_in166_in,
      O => \msxor_ctix[1]_i_5_n_0\
    );
\msxor_ctix_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctix[0]_i_1_n_0\,
      Q => \msxor_ctix_reg_n_0_[0]\,
      R => '0'
    );
\msxor_ctix_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctix[1]_i_1_n_0\,
      Q => \msxor_ctix_reg_n_0_[1]\,
      R => '0'
    );
\pd_hold[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => eye_run_reg_n_0,
      I1 => delay_change_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => inc_run_reg_n_0,
      O => pdcount1
    );
\pd_hold[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(1),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[1]_i_1_n_0\
    );
\pd_hold[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(2),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[2]_i_1_n_0\
    );
\pd_hold[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(3),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[3]_i_1_n_0\
    );
\pd_hold[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(4),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[4]_i_1_n_0\
    );
\pd_hold[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(5),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[5]_i_1_n_0\
    );
\pd_hold[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(6),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[6]_i_1_n_0\
    );
\pd_hold[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in_0,
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[7]_i_1_n_0\
    );
\pd_hold[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(7),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[7]_i_2_n_0\
    );
\pd_hold_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1_n_0\,
      D => pdcount1,
      Q => p_0_in1_in(1),
      R => reset_1p25
    );
\pd_hold_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1_n_0\,
      D => \pd_hold[1]_i_1_n_0\,
      Q => p_0_in1_in(2),
      R => reset_1p25
    );
\pd_hold_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1_n_0\,
      D => \pd_hold[2]_i_1_n_0\,
      Q => p_0_in1_in(3),
      R => reset_1p25
    );
\pd_hold_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1_n_0\,
      D => \pd_hold[3]_i_1_n_0\,
      Q => p_0_in1_in(4),
      R => reset_1p25
    );
\pd_hold_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1_n_0\,
      D => \pd_hold[4]_i_1_n_0\,
      Q => p_0_in1_in(5),
      R => reset_1p25
    );
\pd_hold_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1_n_0\,
      D => \pd_hold[5]_i_1_n_0\,
      Q => p_0_in1_in(6),
      R => reset_1p25
    );
\pd_hold_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1_n_0\,
      D => \pd_hold[6]_i_1_n_0\,
      Q => p_0_in1_in(7),
      R => reset_1p25
    );
\pd_hold_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1_n_0\,
      D => \pd_hold[7]_i_2_n_0\,
      Q => p_0_in_0,
      R => reset_1p25
    );
pd_max_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => pd_max_i_2_n_0,
      I1 => pd_max,
      I2 => delay_change_reg_n_0,
      O => pd_max0
    );
pd_max_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \pdcount_reg__0\(0),
      I1 => \pdcount_reg__0\(1),
      I2 => \pdcount_reg__0\(2),
      I3 => \pdcount_reg__0\(3),
      I4 => \pdcount_reg__0\(4),
      I5 => \pdcount_reg__0\(5),
      O => pd_max_i_2_n_0
    );
pd_max_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => pd_max0,
      Q => pd_max,
      R => '0'
    );
pd_min_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => pd_min_i_3_n_0,
      I1 => pd_min,
      I2 => delay_change_reg_n_0,
      O => pd_min0
    );
pd_min_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \pdcount_reg__0\(4),
      I1 => \pdcount_reg__0\(5),
      I2 => \pdcount_reg__0\(2),
      I3 => \pdcount_reg__0\(3),
      I4 => \pdcount_reg__0\(0),
      I5 => \pdcount_reg__0\(1),
      O => pd_min_i_3_n_0
    );
pd_min_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => pd_min0,
      Q => pd_min,
      R => '0'
    );
\pdcount[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pdcount_reg__0\(0),
      O => \pdcount[0]_i_1_n_0\
    );
\pdcount[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \action_reg_n_0_[0]\,
      I1 => pd_max_i_2_n_0,
      I2 => \pdcount_reg__0\(0),
      I3 => \pdcount_reg__0\(1),
      O => \pdcount[1]_i_1_n_0\
    );
\pdcount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA96AA9"
    )
        port map (
      I0 => \pdcount_reg__0\(2),
      I1 => \pdcount_reg__0\(0),
      I2 => \pdcount_reg__0\(1),
      I3 => \action_reg_n_0_[0]\,
      I4 => pd_max_i_2_n_0,
      O => \pdcount[2]_i_1_n_0\
    );
\pdcount[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF4000FFFC0003"
    )
        port map (
      I0 => pd_max_i_2_n_0,
      I1 => \action_reg_n_0_[0]\,
      I2 => \pdcount_reg__0\(1),
      I3 => \pdcount_reg__0\(0),
      I4 => \pdcount_reg__0\(3),
      I5 => \pdcount_reg__0\(2),
      O => \pdcount[3]_i_1_n_0\
    );
\pdcount[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66656666"
    )
        port map (
      I0 => \pdcount_reg__0\(4),
      I1 => \pdcount[5]_i_4_n_0\,
      I2 => \pdcount_reg__0\(3),
      I3 => \pdcount_reg__0\(2),
      I4 => \pdcount[5]_i_5_n_0\,
      O => \pdcount[4]_i_1_n_0\
    );
\pdcount[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => inc_run_reg_n_0,
      I1 => dec_run_reg_n_0,
      I2 => delay_change_reg_n_0,
      I3 => eye_run_reg_n_0,
      I4 => p_0_in_0,
      I5 => reset_1p25,
      O => \pdcount[5]_i_1_n_0\
    );
\pdcount[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => p_0_in200_in,
      I1 => pd_min_i_3_n_0,
      I2 => \action_reg_n_0_[0]\,
      I3 => pd_max_i_2_n_0,
      O => \pdcount[5]_i_2_n_0\
    );
\pdcount[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6A6A996A6A6A6A"
    )
        port map (
      I0 => \pdcount_reg__0\(5),
      I1 => \pdcount_reg__0\(4),
      I2 => \pdcount[5]_i_4_n_0\,
      I3 => \pdcount_reg__0\(3),
      I4 => \pdcount_reg__0\(2),
      I5 => \pdcount[5]_i_5_n_0\,
      O => \pdcount[5]_i_3_n_0\
    );
\pdcount[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \pdcount_reg__0\(3),
      I1 => \pdcount_reg__0\(2),
      I2 => pd_max_i_2_n_0,
      I3 => \action_reg_n_0_[0]\,
      I4 => \pdcount_reg__0\(1),
      I5 => \pdcount_reg__0\(0),
      O => \pdcount[5]_i_4_n_0\
    );
\pdcount[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \action_reg_n_0_[0]\,
      I1 => \pdcount_reg__0\(0),
      I2 => \pdcount_reg__0\(1),
      O => \pdcount[5]_i_5_n_0\
    );
\pdcount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2_n_0\,
      D => \pdcount[0]_i_1_n_0\,
      Q => \pdcount_reg__0\(0),
      R => \pdcount[5]_i_1_n_0\
    );
\pdcount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2_n_0\,
      D => \pdcount[1]_i_1_n_0\,
      Q => \pdcount_reg__0\(1),
      R => \pdcount[5]_i_1_n_0\
    );
\pdcount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2_n_0\,
      D => \pdcount[2]_i_1_n_0\,
      Q => \pdcount_reg__0\(2),
      R => \pdcount[5]_i_1_n_0\
    );
\pdcount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2_n_0\,
      D => \pdcount[3]_i_1_n_0\,
      Q => \pdcount_reg__0\(3),
      R => \pdcount[5]_i_1_n_0\
    );
\pdcount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2_n_0\,
      D => \pdcount[4]_i_1_n_0\,
      Q => \pdcount_reg__0\(4),
      R => \pdcount[5]_i_1_n_0\
    );
\pdcount_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2_n_0\,
      D => \pdcount[5]_i_3_n_0\,
      Q => \pdcount_reg__0\(5),
      S => \pdcount[5]_i_1_n_0\
    );
\results[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(0),
      I2 => \^blue_eye\(0),
      O => results(0)
    );
\results[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(10),
      I2 => \^blue_eye\(10),
      O => results(10)
    );
\results[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(11),
      I2 => \^blue_eye\(11),
      O => results(11)
    );
\results[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(12),
      I2 => \^blue_eye\(12),
      O => results(12)
    );
\results[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(13),
      I2 => \^blue_eye\(13),
      O => results(13)
    );
\results[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(14),
      I2 => \^blue_eye\(14),
      O => results(14)
    );
\results[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(15),
      I2 => \^blue_eye\(15),
      O => results(15)
    );
\results[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(16),
      I2 => \^blue_eye\(16),
      O => results(16)
    );
\results[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(17),
      I2 => \^blue_eye\(17),
      O => results(17)
    );
\results[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(18),
      I2 => \^blue_eye\(18),
      O => results(18)
    );
\results[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(19),
      I2 => \^blue_eye\(19),
      O => results(19)
    );
\results[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(1),
      I2 => \^blue_eye\(1),
      O => results(1)
    );
\results[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(20),
      I2 => \^blue_eye\(20),
      O => results(20)
    );
\results[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(21),
      I2 => \^blue_eye\(21),
      O => results(21)
    );
\results[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(22),
      I2 => \^blue_eye\(22),
      O => results(22)
    );
\results[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(23),
      I2 => \^blue_eye\(23),
      O => results(23)
    );
\results[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(24),
      I2 => \^blue_eye\(24),
      O => results(24)
    );
\results[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(25),
      I2 => \^blue_eye\(25),
      O => results(25)
    );
\results[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(26),
      I2 => \^blue_eye\(26),
      O => results(26)
    );
\results[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(27),
      I2 => \^blue_eye\(27),
      O => results(27)
    );
\results[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(28),
      I2 => \^blue_eye\(28),
      O => results(28)
    );
\results[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(29),
      I2 => \^blue_eye\(29),
      O => results(29)
    );
\results[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(2),
      I2 => \^blue_eye\(2),
      O => results(2)
    );
\results[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(30),
      I2 => \^blue_eye\(30),
      O => results(30)
    );
\results[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \results[31]_i_3_n_0\,
      I1 => eye_run_reg_n_0,
      I2 => delay_change_reg_n_0,
      O => s_delay_val_eye
    );
\results[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(31),
      I2 => \^blue_eye\(31),
      O => results(31)
    );
\results[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => \s_state[2]_i_2_n_0\,
      I1 => s_state(4),
      I2 => s_state(3),
      I3 => s_state(2),
      I4 => s_state(1),
      I5 => s_state(0),
      O => \results[31]_i_3_n_0\
    );
\results[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => p_2_in(3),
      I1 => p_2_in(1),
      I2 => p_2_in(6),
      I3 => p_2_in(5),
      I4 => \results[31]_i_5_n_0\,
      O => \results[31]_i_4_n_0\
    );
\results[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => p_2_in(7),
      I1 => match(7),
      I2 => p_2_in(4),
      I3 => p_2_in(2),
      O => \results[31]_i_5_n_0\
    );
\results[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(3),
      I2 => \^blue_eye\(3),
      O => results(3)
    );
\results[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(4),
      I2 => \^blue_eye\(4),
      O => results(4)
    );
\results[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(5),
      I2 => \^blue_eye\(5),
      O => results(5)
    );
\results[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(6),
      I2 => \^blue_eye\(6),
      O => results(6)
    );
\results[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(7),
      I2 => \^blue_eye\(7),
      O => results(7)
    );
\results[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(8),
      I2 => \^blue_eye\(8),
      O => results(8)
    );
\results[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4_n_0\,
      I1 => shifter(9),
      I2 => \^blue_eye\(9),
      O => results(9)
    );
\results_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(0),
      Q => \^blue_eye\(0),
      R => reset_1p25
    );
\results_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(10),
      Q => \^blue_eye\(10),
      R => reset_1p25
    );
\results_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(11),
      Q => \^blue_eye\(11),
      R => reset_1p25
    );
\results_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(12),
      Q => \^blue_eye\(12),
      R => reset_1p25
    );
\results_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(13),
      Q => \^blue_eye\(13),
      R => reset_1p25
    );
\results_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(14),
      Q => \^blue_eye\(14),
      R => reset_1p25
    );
\results_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(15),
      Q => \^blue_eye\(15),
      R => reset_1p25
    );
\results_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(16),
      Q => \^blue_eye\(16),
      R => reset_1p25
    );
\results_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(17),
      Q => \^blue_eye\(17),
      R => reset_1p25
    );
\results_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(18),
      Q => \^blue_eye\(18),
      R => reset_1p25
    );
\results_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(19),
      Q => \^blue_eye\(19),
      R => reset_1p25
    );
\results_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(1),
      Q => \^blue_eye\(1),
      R => reset_1p25
    );
\results_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(20),
      Q => \^blue_eye\(20),
      R => reset_1p25
    );
\results_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(21),
      Q => \^blue_eye\(21),
      R => reset_1p25
    );
\results_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(22),
      Q => \^blue_eye\(22),
      R => reset_1p25
    );
\results_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(23),
      Q => \^blue_eye\(23),
      R => reset_1p25
    );
\results_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(24),
      Q => \^blue_eye\(24),
      R => reset_1p25
    );
\results_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(25),
      Q => \^blue_eye\(25),
      R => reset_1p25
    );
\results_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(26),
      Q => \^blue_eye\(26),
      R => reset_1p25
    );
\results_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(27),
      Q => \^blue_eye\(27),
      R => reset_1p25
    );
\results_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(28),
      Q => \^blue_eye\(28),
      R => reset_1p25
    );
\results_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(29),
      Q => \^blue_eye\(29),
      R => reset_1p25
    );
\results_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(2),
      Q => \^blue_eye\(2),
      R => reset_1p25
    );
\results_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(30),
      Q => \^blue_eye\(30),
      R => reset_1p25
    );
\results_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(31),
      Q => \^blue_eye\(31),
      R => reset_1p25
    );
\results_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(3),
      Q => \^blue_eye\(3),
      R => reset_1p25
    );
\results_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(4),
      Q => \^blue_eye\(4),
      R => reset_1p25
    );
\results_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(5),
      Q => \^blue_eye\(5),
      R => reset_1p25
    );
\results_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(6),
      Q => \^blue_eye\(6),
      R => reset_1p25
    );
\results_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(7),
      Q => \^blue_eye\(7),
      R => reset_1p25
    );
\results_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(8),
      Q => \^blue_eye\(8),
      R => reset_1p25
    );
\results_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(9),
      Q => \^blue_eye\(9),
      R => reset_1p25
    );
\s_delay_mux[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => m_delay_mux(0),
      I1 => s_state(0),
      I2 => s_state(3),
      I3 => \s_delay_mux[1]_i_2__0_n_0\,
      I4 => \s_state[3]_i_3_n_0\,
      I5 => s_delay_mux(0),
      O => \s_delay_mux[0]_i_1_n_0\
    );
\s_delay_mux[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => m_delay_mux(1),
      I1 => s_state(0),
      I2 => s_state(3),
      I3 => \s_delay_mux[1]_i_2__0_n_0\,
      I4 => \s_state[3]_i_3_n_0\,
      I5 => s_delay_mux(1),
      O => \s_delay_mux[1]_i_1_n_0\
    );
\s_delay_mux[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_state(2),
      I1 => s_state(1),
      O => \s_delay_mux[1]_i_2__0_n_0\
    );
\s_delay_mux_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \s_delay_mux[0]_i_1_n_0\,
      Q => s_delay_mux(0),
      S => reset_1p25
    );
\s_delay_mux_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \s_delay_mux[1]_i_1_n_0\,
      Q => s_delay_mux(1),
      R => reset_1p25
    );
\s_delay_val_eye[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00EF"
    )
        port map (
      I0 => \s_delay_val_eye_reg__0\(4),
      I1 => \s_delay_val_eye_reg__0\(2),
      I2 => \s_delay_val_eye_reg__0\(3),
      I3 => \s_delay_val_eye_reg__0\(0),
      I4 => \s_delay_val_eye_reg__0\(1),
      O => p_0_in(0)
    );
\s_delay_val_eye[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_delay_val_eye_reg__0\(0),
      I1 => \s_delay_val_eye_reg__0\(1),
      O => p_0_in(1)
    );
\s_delay_val_eye[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \s_delay_val_eye_reg__0\(2),
      I1 => \s_delay_val_eye_reg__0\(1),
      I2 => \s_delay_val_eye_reg__0\(0),
      O => p_0_in(2)
    );
\s_delay_val_eye[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFEC000"
    )
        port map (
      I0 => \s_delay_val_eye_reg__0\(4),
      I1 => \s_delay_val_eye_reg__0\(2),
      I2 => \s_delay_val_eye_reg__0\(1),
      I3 => \s_delay_val_eye_reg__0\(0),
      I4 => \s_delay_val_eye_reg__0\(3),
      O => p_0_in(3)
    );
\s_delay_val_eye[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \s_delay_val_eye_reg__0\(4),
      I1 => \s_delay_val_eye_reg__0\(3),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(1),
      I4 => \s_delay_val_eye_reg__0\(0),
      O => p_0_in(4)
    );
\s_delay_val_eye_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => p_0_in(0),
      Q => \s_delay_val_eye_reg__0\(0),
      R => reset_1p25
    );
\s_delay_val_eye_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => p_0_in(1),
      Q => \s_delay_val_eye_reg__0\(1),
      R => reset_1p25
    );
\s_delay_val_eye_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => p_0_in(2),
      Q => \s_delay_val_eye_reg__0\(2),
      R => reset_1p25
    );
\s_delay_val_eye_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => p_0_in(3),
      Q => \s_delay_val_eye_reg__0\(3),
      R => reset_1p25
    );
\s_delay_val_eye_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => p_0_in(4),
      Q => \s_delay_val_eye_reg__0\(4),
      R => reset_1p25
    );
\s_delay_val_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101110101000"
    )
        port map (
      I0 => \s_state[2]_i_2_n_0\,
      I1 => reset_1p25,
      I2 => \s_delay_val_eye_reg__0\(0),
      I3 => eye_run_reg_n_0,
      I4 => delay_change_reg_n_0,
      I5 => \^m_delay_val_in\(0),
      O => \s_delay_val_int[0]_i_1_n_0\
    );
\s_delay_val_int[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101110101000"
    )
        port map (
      I0 => \s_state[2]_i_2_n_0\,
      I1 => reset_1p25,
      I2 => \s_delay_val_eye_reg__0\(1),
      I3 => eye_run_reg_n_0,
      I4 => delay_change_reg_n_0,
      I5 => \^m_delay_val_in\(1),
      O => \s_delay_val_int[1]_i_1_n_0\
    );
\s_delay_val_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22202223"
    )
        port map (
      I0 => \s_delay_val_eye_reg__0\(2),
      I1 => \s_state[2]_i_2_n_0\,
      I2 => delay_change_reg_n_0,
      I3 => eye_run_reg_n_0,
      I4 => \^m_delay_val_in\(2),
      I5 => reset_1p25,
      O => \s_delay_val_int[2]_i_1_n_0\
    );
\s_delay_val_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000A2FFFF"
    )
        port map (
      I0 => \s_delay_val_int[3]_i_2_n_0\,
      I1 => pd_min,
      I2 => delay_change_reg_n_0,
      I3 => dec_run_reg_n_0,
      I4 => \m_delay_val_int[4]_i_5_n_0\,
      I5 => reset_1p25,
      O => \s_delay_val_int[3]_i_1_n_0\
    );
\s_delay_val_int[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF60006"
    )
        port map (
      I0 => \^m_delay_val_in\(3),
      I1 => \^m_delay_val_in\(2),
      I2 => delay_change_reg_n_0,
      I3 => eye_run_reg_n_0,
      I4 => \s_delay_val_eye_reg__0\(3),
      O => \s_delay_val_int[3]_i_2_n_0\
    );
\s_delay_val_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5050FF70"
    )
        port map (
      I0 => \s_state[3]_i_3_n_0\,
      I1 => s_state(4),
      I2 => \s_delay_val_int[4]_i_3_n_0\,
      I3 => \s_delay_val_int[4]_i_4_n_0\,
      I4 => \s_state[2]_i_2_n_0\,
      I5 => reset_1p25,
      O => \s_delay_val_int[4]_i_1_n_0\
    );
\s_delay_val_int[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08A8A8A8A8080808"
    )
        port map (
      I0 => \s_delay_val_int[4]_i_5_n_0\,
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_int[4]_i_4_n_0\,
      I3 => \^m_delay_val_in\(3),
      I4 => \^m_delay_val_in\(2),
      I5 => \^m_delay_val_in\(4),
      O => \s_delay_val_int[4]_i_2_n_0\
    );
\s_delay_val_int[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(2),
      I2 => s_state(1),
      I3 => s_state(3),
      O => \s_delay_val_int[4]_i_3_n_0\
    );
\s_delay_val_int[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_change_reg_n_0,
      I1 => eye_run_reg_n_0,
      O => \s_delay_val_int[4]_i_4_n_0\
    );
\s_delay_val_int[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000101000001011"
    )
        port map (
      I0 => reset_1p25,
      I1 => dec_run_reg_n_0,
      I2 => delay_change_reg_n_0,
      I3 => pd_min,
      I4 => inc_run_reg_n_0,
      I5 => pd_max,
      O => \s_delay_val_int[4]_i_5_n_0\
    );
\s_delay_val_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[4]_i_1_n_0\,
      D => \s_delay_val_int[0]_i_1_n_0\,
      Q => Q(0),
      R => '0'
    );
\s_delay_val_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[4]_i_1_n_0\,
      D => \s_delay_val_int[1]_i_1_n_0\,
      Q => Q(1),
      R => '0'
    );
\s_delay_val_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[4]_i_1_n_0\,
      D => \s_delay_val_int[2]_i_1_n_0\,
      Q => Q(2),
      R => '0'
    );
\s_delay_val_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[4]_i_1_n_0\,
      D => \s_delay_val_int[3]_i_1_n_0\,
      Q => Q(3),
      R => '0'
    );
\s_delay_val_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[4]_i_1_n_0\,
      D => \s_delay_val_int[4]_i_2_n_0\,
      Q => Q(4),
      R => '0'
    );
s_ovflw_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000002"
    )
        port map (
      I0 => \m_delay_val_int[4]_i_5_n_0\,
      I1 => pd_min,
      I2 => delay_change_reg_n_0,
      I3 => dec_run_reg_n_0,
      I4 => eye_run_reg_n_0,
      I5 => s_ovflw_reg_n_0,
      O => s_ovflw_i_1_n_0
    );
s_ovflw_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => s_ovflw_i_1_n_0,
      Q => s_ovflw_reg_n_0,
      R => reset_1p25
    );
\s_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555155555"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(1),
      I2 => s_state(2),
      I3 => s_state(3),
      I4 => s_state(4),
      I5 => \s_state[2]_i_2_n_0\,
      O => \s_state[0]_i_1_n_0\
    );
\s_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666666266666"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(1),
      I2 => s_state(2),
      I3 => s_state(3),
      I4 => s_state(4),
      I5 => \s_state[2]_i_2_n_0\,
      O => \s_state[1]_i_1_n_0\
    );
\s_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7878787878387878"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(1),
      I2 => s_state(2),
      I3 => s_state(3),
      I4 => s_state(4),
      I5 => \s_state[2]_i_2_n_0\,
      O => \s_state[2]_i_1_n_0\
    );
\s_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCCFE"
    )
        port map (
      I0 => pd_max,
      I1 => inc_run_reg_n_0,
      I2 => pd_min,
      I3 => delay_change_reg_n_0,
      I4 => dec_run_reg_n_0,
      O => \s_state[2]_i_2_n_0\
    );
\s_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A200A0FFFFFFFF"
    )
        port map (
      I0 => \m_delay_val_int[4]_i_5_n_0\,
      I1 => pd_min,
      I2 => delay_change_reg_n_0,
      I3 => dec_run_reg_n_0,
      I4 => eye_run_reg_n_0,
      I5 => \s_state[3]_i_3_n_0\,
      O => \s_state[3]_i_1_n_0\
    );
\s_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => s_state(3),
      I1 => s_state(1),
      I2 => s_state(0),
      I3 => s_state(2),
      O => \s_state[3]_i_2_n_0\
    );
\s_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F3AAAA00FFAAAA"
    )
        port map (
      I0 => \m_delay_val_int[4]_i_7_n_0\,
      I1 => pd_min,
      I2 => delay_change_reg_n_0,
      I3 => dec_run_reg_n_0,
      I4 => \m_delay_val_int[4]_i_5_n_0\,
      I5 => meq_min_reg_n_0,
      O => \s_state[3]_i_3_n_0\
    );
\s_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF7FFFF80000000"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(2),
      I2 => s_state(3),
      I3 => s_state(0),
      I4 => \s_state[4]_i_2_n_0\,
      I5 => s_state(4),
      O => \s_state[4]_i_1_n_0\
    );
\s_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000303000003032"
    )
        port map (
      I0 => eye_run_reg_n_0,
      I1 => dec_run_reg_n_0,
      I2 => delay_change_reg_n_0,
      I3 => pd_min,
      I4 => inc_run_reg_n_0,
      I5 => pd_max,
      O => \s_state[4]_i_2_n_0\
    );
\s_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_state[3]_i_1_n_0\,
      D => \s_state[0]_i_1_n_0\,
      Q => s_state(0),
      R => reset_1p25
    );
\s_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_state[3]_i_1_n_0\,
      D => \s_state[1]_i_1_n_0\,
      Q => s_state(1),
      R => reset_1p25
    );
\s_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_state[3]_i_1_n_0\,
      D => \s_state[2]_i_1_n_0\,
      Q => s_state(2),
      R => reset_1p25
    );
\s_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_state[3]_i_1_n_0\,
      D => \s_state[3]_i_2_n_0\,
      Q => s_state(3),
      R => reset_1p25
    );
\s_state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \s_state[4]_i_1_n_0\,
      Q => s_state(4),
      R => reset_1p25
    );
\sdataouta_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => \sdataouta_reg_n_0_[0]\,
      R => '0'
    );
\sdataouta_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => p_0_in15_in,
      R => '0'
    );
\sdataouta_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => p_0_in28_in,
      R => '0'
    );
\sdataouta_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => p_0_in40_in,
      R => '0'
    );
\sdataouta_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(4),
      Q => p_0_in52_in,
      R => '0'
    );
\sdataouta_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(5),
      Q => p_0_in64_in,
      R => '0'
    );
\sdataouta_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(6),
      Q => p_0_in76_in,
      R => '0'
    );
\sdataouta_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(7),
      Q => p_0_in88_in,
      R => '0'
    );
sdataoutb_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in88_in,
      Q => sdataoutb,
      R => '0'
    );
\sdataoutc[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \sdataouta_reg_n_0_[0]\,
      I1 => s_delay_mux(0),
      I2 => p_0_in15_in,
      I3 => s_delay_mux(1),
      I4 => sdataoutb,
      O => \sdataoutc[0]_i_1_n_0\
    );
\sdataoutc[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in15_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in28_in,
      I3 => s_delay_mux(1),
      I4 => \sdataouta_reg_n_0_[0]\,
      O => \sdataoutc[1]_i_1_n_0\
    );
\sdataoutc[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in28_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in40_in,
      I3 => s_delay_mux(1),
      I4 => p_0_in15_in,
      O => \sdataoutc[2]_i_1_n_0\
    );
\sdataoutc[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in40_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in52_in,
      I3 => s_delay_mux(1),
      I4 => p_0_in28_in,
      O => \sdataoutc[3]_i_1_n_0\
    );
\sdataoutc[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in52_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in64_in,
      I3 => s_delay_mux(1),
      I4 => p_0_in40_in,
      O => \sdataoutc[4]_i_1_n_0\
    );
\sdataoutc[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in64_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in76_in,
      I3 => s_delay_mux(1),
      I4 => p_0_in52_in,
      O => \sdataoutc[5]_i_1_n_0\
    );
\sdataoutc[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in76_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in88_in,
      I3 => s_delay_mux(1),
      I4 => p_0_in64_in,
      O => \sdataoutc[6]_i_1_n_0\
    );
\sdataoutc[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in88_in,
      I1 => s_delay_mux(0),
      I2 => D(0),
      I3 => s_delay_mux(1),
      I4 => p_0_in76_in,
      O => \sdataoutc[7]_i_1_n_0\
    );
\sdataoutc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \sdataoutc[0]_i_1_n_0\,
      Q => sdataoutc(0),
      R => '0'
    );
\sdataoutc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \sdataoutc[1]_i_1_n_0\,
      Q => sdataoutc(1),
      R => '0'
    );
\sdataoutc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \sdataoutc[2]_i_1_n_0\,
      Q => sdataoutc(2),
      R => '0'
    );
\sdataoutc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \sdataoutc[3]_i_1_n_0\,
      Q => sdataoutc(3),
      R => '0'
    );
\sdataoutc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \sdataoutc[4]_i_1_n_0\,
      Q => sdataoutc(4),
      R => '0'
    );
\sdataoutc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \sdataoutc[5]_i_1_n_0\,
      Q => sdataoutc(5),
      R => '0'
    );
\sdataoutc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \sdataoutc[6]_i_1_n_0\,
      Q => sdataoutc(6),
      R => '0'
    );
\sdataoutc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_12_in,
      D => \sdataoutc[7]_i_1_n_0\,
      Q => sdataoutc(7),
      R => '0'
    );
\shifter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABAA"
    )
        port map (
      I0 => shifter(31),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[0]_i_1_n_0\
    );
\shifter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(9),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[10]_i_1_n_0\
    );
\shifter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(10),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[11]_i_1_n_0\
    );
\shifter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(11),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[12]_i_1_n_0\
    );
\shifter[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(12),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[13]_i_1_n_0\
    );
\shifter[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(13),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[14]_i_1_n_0\
    );
\shifter[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(14),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[15]_i_1_n_0\
    );
\shifter[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(15),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[16]_i_1_n_0\
    );
\shifter[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(16),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[17]_i_1_n_0\
    );
\shifter[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(17),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[18]_i_1_n_0\
    );
\shifter[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(18),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[19]_i_1_n_0\
    );
\shifter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(0),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[1]_i_1_n_0\
    );
\shifter[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(19),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[20]_i_1_n_0\
    );
\shifter[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(20),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[21]_i_1_n_0\
    );
\shifter[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(21),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[22]_i_1_n_0\
    );
\shifter[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(22),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[23]_i_1_n_0\
    );
\shifter[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(23),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[24]_i_1_n_0\
    );
\shifter[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(24),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[25]_i_1_n_0\
    );
\shifter[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(25),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[26]_i_1_n_0\
    );
\shifter[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(26),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[27]_i_1_n_0\
    );
\shifter[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(27),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[28]_i_1_n_0\
    );
\shifter[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(28),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[29]_i_1_n_0\
    );
\shifter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(1),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[2]_i_1_n_0\
    );
\shifter[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(29),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[30]_i_1_n_0\
    );
\shifter[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(30),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[31]_i_1_n_0\
    );
\shifter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(2),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[3]_i_1_n_0\
    );
\shifter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(3),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[4]_i_1_n_0\
    );
\shifter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(4),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[5]_i_1_n_0\
    );
\shifter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(5),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[6]_i_1_n_0\
    );
\shifter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(6),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[7]_i_1_n_0\
    );
\shifter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(7),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[8]_i_1_n_0\
    );
\shifter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(8),
      I1 => \s_delay_val_eye_reg__0\(4),
      I2 => \s_delay_val_eye_reg__0\(2),
      I3 => \s_delay_val_eye_reg__0\(3),
      I4 => \s_delay_val_eye_reg__0\(0),
      I5 => \s_delay_val_eye_reg__0\(1),
      O => \shifter[9]_i_1_n_0\
    );
\shifter_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[0]_i_1_n_0\,
      Q => shifter(0),
      S => reset_1p25
    );
\shifter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[10]_i_1_n_0\,
      Q => shifter(10),
      R => reset_1p25
    );
\shifter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[11]_i_1_n_0\,
      Q => shifter(11),
      R => reset_1p25
    );
\shifter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[12]_i_1_n_0\,
      Q => shifter(12),
      R => reset_1p25
    );
\shifter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[13]_i_1_n_0\,
      Q => shifter(13),
      R => reset_1p25
    );
\shifter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[14]_i_1_n_0\,
      Q => shifter(14),
      R => reset_1p25
    );
\shifter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[15]_i_1_n_0\,
      Q => shifter(15),
      R => reset_1p25
    );
\shifter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[16]_i_1_n_0\,
      Q => shifter(16),
      R => reset_1p25
    );
\shifter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[17]_i_1_n_0\,
      Q => shifter(17),
      R => reset_1p25
    );
\shifter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[18]_i_1_n_0\,
      Q => shifter(18),
      R => reset_1p25
    );
\shifter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[19]_i_1_n_0\,
      Q => shifter(19),
      R => reset_1p25
    );
\shifter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[1]_i_1_n_0\,
      Q => shifter(1),
      R => reset_1p25
    );
\shifter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[20]_i_1_n_0\,
      Q => shifter(20),
      R => reset_1p25
    );
\shifter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[21]_i_1_n_0\,
      Q => shifter(21),
      R => reset_1p25
    );
\shifter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[22]_i_1_n_0\,
      Q => shifter(22),
      R => reset_1p25
    );
\shifter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[23]_i_1_n_0\,
      Q => shifter(23),
      R => reset_1p25
    );
\shifter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[24]_i_1_n_0\,
      Q => shifter(24),
      R => reset_1p25
    );
\shifter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[25]_i_1_n_0\,
      Q => shifter(25),
      R => reset_1p25
    );
\shifter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[26]_i_1_n_0\,
      Q => shifter(26),
      R => reset_1p25
    );
\shifter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[27]_i_1_n_0\,
      Q => shifter(27),
      R => reset_1p25
    );
\shifter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[28]_i_1_n_0\,
      Q => shifter(28),
      R => reset_1p25
    );
\shifter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[29]_i_1_n_0\,
      Q => shifter(29),
      R => reset_1p25
    );
\shifter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[2]_i_1_n_0\,
      Q => shifter(2),
      R => reset_1p25
    );
\shifter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[30]_i_1_n_0\,
      Q => shifter(30),
      R => reset_1p25
    );
\shifter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[31]_i_1_n_0\,
      Q => shifter(31),
      R => reset_1p25
    );
\shifter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[3]_i_1_n_0\,
      Q => shifter(3),
      R => reset_1p25
    );
\shifter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[4]_i_1_n_0\,
      Q => shifter(4),
      R => reset_1p25
    );
\shifter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[5]_i_1_n_0\,
      Q => shifter(5),
      R => reset_1p25
    );
\shifter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[6]_i_1_n_0\,
      Q => shifter(6),
      R => reset_1p25
    );
\shifter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[7]_i_1_n_0\,
      Q => shifter(7),
      R => reset_1p25
    );
\shifter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[8]_i_1_n_0\,
      Q => shifter(8),
      R => reset_1p25
    );
\shifter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[9]_i_1_n_0\,
      Q => shifter(9),
      R => reset_1p25
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_delay_controller_wrap_7 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    green_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    green_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \sdataouta_reg[7]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \dataout_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    reset_1p25_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bitslipx1p25_reg : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_delay_controller_wrap_7 : entity is "delay_controller_wrap";
end overlay1_dvi_decoder_v2_0_0_delay_controller_wrap_7;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_delay_controller_wrap_7 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal action : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \action[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \action[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \action[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \action[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \action_reg_n_0_[0]\ : STD_LOGIC;
  signal data_mux : STD_LOGIC;
  signal \data_mux_i_1__0_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \dec_run_i_1__0_n_0\ : STD_LOGIC;
  signal \dec_run_i_2__0_n_0\ : STD_LOGIC;
  signal dec_run_reg_n_0 : STD_LOGIC;
  signal \delay_change_i_1__0_n_0\ : STD_LOGIC;
  signal delay_change_reg_n_0 : STD_LOGIC;
  signal \eye_run_i_1__0_n_0\ : STD_LOGIC;
  signal eye_run_i_2_n_0 : STD_LOGIC;
  signal eye_run_reg_n_0 : STD_LOGIC;
  signal \^green_debug\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^green_eye\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \inc_run_i_1__0_n_0\ : STD_LOGIC;
  signal \inc_run_i_2__0_n_0\ : STD_LOGIC;
  signal inc_run_reg_n_0 : STD_LOGIC;
  signal m_delay_mux : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_delay_mux[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_delay_mux[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_delay_mux[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[3]_i_2_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_10__0_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_6_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_7__0_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_8__1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_9__0_n_0\ : STD_LOGIC;
  signal match : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \match[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \match[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \match[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \mdataouta_reg_n_0_[0]\ : STD_LOGIC;
  signal mdataoutb : STD_LOGIC;
  signal mdataoutc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \mdataoutc[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \mdataoutc[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \mdataoutc[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \mdataoutc[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \mdataoutc[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \mdataoutc[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \mdataoutc[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \mdataoutc[7]_i_1__0_n_0\ : STD_LOGIC;
  signal meq_max : STD_LOGIC;
  signal \meq_min_i_1__0_n_0\ : STD_LOGIC;
  signal \meq_min_i_2__0_n_0\ : STD_LOGIC;
  signal meq_min_reg_n_0 : STD_LOGIC;
  signal \msxor_ctd[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \msxor_ctd[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \msxor_ctd[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \msxor_ctd[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \msxor_ctd[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \msxor_ctd[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \msxor_ctd_reg_n_0_[0]\ : STD_LOGIC;
  signal \msxor_ctd_reg_n_0_[1]\ : STD_LOGIC;
  signal \msxor_ctdx[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \msxor_ctdx[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \msxor_ctdx[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \msxor_ctdx[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \msxor_ctdx[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \msxor_ctdx[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \msxor_ctdx_reg_n_0_[0]\ : STD_LOGIC;
  signal \msxor_ctdx_reg_n_0_[1]\ : STD_LOGIC;
  signal \msxor_cti[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \msxor_cti[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \msxor_cti[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \msxor_cti[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \msxor_cti[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \msxor_cti[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \msxor_cti_reg_n_0_[0]\ : STD_LOGIC;
  signal \msxor_cti_reg_n_0_[1]\ : STD_LOGIC;
  signal \msxor_ctix[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \msxor_ctix[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \msxor_ctix[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \msxor_ctix[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \msxor_ctix[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \msxor_ctix[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \msxor_ctix_reg_n_0_[0]\ : STD_LOGIC;
  signal \msxor_ctix_reg_n_0_[1]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in110_in : STD_LOGIC;
  signal p_0_in124_in : STD_LOGIC;
  signal p_0_in138_in : STD_LOGIC;
  signal p_0_in152_in : STD_LOGIC;
  signal p_0_in15_in : STD_LOGIC;
  signal p_0_in166_in : STD_LOGIC;
  signal p_0_in180_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_0_in200_in : STD_LOGIC;
  signal p_0_in28_in : STD_LOGIC;
  signal p_0_in40_in : STD_LOGIC;
  signal p_0_in52_in : STD_LOGIC;
  signal p_0_in64_in : STD_LOGIC;
  signal p_0_in76_in : STD_LOGIC;
  signal p_0_in88_in : STD_LOGIC;
  signal p_0_in97_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \pd_hold[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \pd_hold[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \pd_hold[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \pd_hold[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \pd_hold[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \pd_hold[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \pd_hold[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \pd_hold[7]_i_2__0_n_0\ : STD_LOGIC;
  signal pd_max : STD_LOGIC;
  signal pd_max0 : STD_LOGIC;
  signal \pd_max_i_2__0_n_0\ : STD_LOGIC;
  signal pd_min : STD_LOGIC;
  signal pd_min0 : STD_LOGIC;
  signal \pd_min_i_2__0_n_0\ : STD_LOGIC;
  signal pdcount1 : STD_LOGIC;
  signal \pdcount[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \pdcount[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \pdcount[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \pdcount[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \pdcount[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_4__0_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_5__0_n_0\ : STD_LOGIC;
  signal pdcount_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal results : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \results[31]_i_3__0_n_0\ : STD_LOGIC;
  signal \results[31]_i_4__0_n_0\ : STD_LOGIC;
  signal \results[31]_i_5__0_n_0\ : STD_LOGIC;
  signal s_delay_mux : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_delay_mux[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_delay_mux[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_delay_mux[1]_i_2_n_0\ : STD_LOGIC;
  signal s_delay_val_eye : STD_LOGIC;
  signal s_delay_val_eye_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \s_delay_val_int[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \s_ovflw_i_1__0_n_0\ : STD_LOGIC;
  signal s_ovflw_reg_n_0 : STD_LOGIC;
  signal s_state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \s_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \s_state[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_state[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \s_state[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \s_state[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_state[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \sdataouta_reg_n_0_[0]\ : STD_LOGIC;
  signal sdataoutb : STD_LOGIC;
  signal sdataoutc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sdataoutc[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \sdataoutc[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \sdataoutc[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \sdataoutc[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \sdataoutc[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \sdataoutc[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \sdataoutc[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \sdataoutc[7]_i_1__0_n_0\ : STD_LOGIC;
  signal shifter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \shifter[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[17]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[18]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[19]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[21]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[25]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[26]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[27]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[28]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[29]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[30]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \shifter[9]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \action[0]_i_2__0\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \action[0]_i_3__0\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \action[1]_i_2__0\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \action[1]_i_3__0\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \data_out[0]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \data_out[1]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \data_out[2]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \data_out[3]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \data_out[4]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \data_out[5]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \data_out[6]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \data_out[7]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \delay_change_i_1__0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of eye_run_i_2 : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \green_debug[0]_INST_0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \green_debug[10]_INST_0\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \green_debug[11]_INST_0\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \green_debug[12]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \green_debug[13]_INST_0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \green_debug[14]_INST_0\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \green_debug[15]_INST_0\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \green_debug[16]_INST_0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \green_debug[17]_INST_0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \green_debug[18]_INST_0\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \green_debug[19]_INST_0\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \green_debug[1]_INST_0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \green_debug[20]_INST_0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \green_debug[21]_INST_0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \green_debug[22]_INST_0\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \green_debug[23]_INST_0\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \green_debug[24]_INST_0\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \green_debug[25]_INST_0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \green_debug[26]_INST_0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \green_debug[27]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \green_debug[28]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \green_debug[29]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \green_debug[2]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \green_debug[30]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \green_debug[31]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \green_debug[3]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \green_debug[4]_INST_0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \green_debug[5]_INST_0\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \green_debug[6]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \green_debug[7]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \green_debug[8]_INST_0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \green_debug[9]_INST_0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \inc_run_i_2__0\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \m_delay_mux[1]_i_2__0\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \m_delay_val_int[2]_i_2__0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \m_delay_val_int[3]_i_3__0\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_10__0\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_3__0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_4__0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_5__0\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_6\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_7__0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_9__0\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \meq_min_i_2__0\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \msxor_ctd[0]_i_1__0\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_1__0\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_2__0\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_3__0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_4__0\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_5__0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \msxor_ctdx[0]_i_1__0\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \msxor_ctdx[1]_i_1__0\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \msxor_ctdx[1]_i_2__0\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \msxor_ctdx[1]_i_3__0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \msxor_ctdx[1]_i_4__0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \msxor_ctdx[1]_i_5__0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \msxor_cti[0]_i_1__0\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_1__0\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_2__0\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_3__0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_4__0\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_5__0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \msxor_ctix[0]_i_1__0\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \msxor_ctix[1]_i_1__0\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \msxor_ctix[1]_i_2__0\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \msxor_ctix[1]_i_3__0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \msxor_ctix[1]_i_4__0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \msxor_ctix[1]_i_5__0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \pd_hold[0]_i_1__0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \pd_hold[1]_i_1__0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \pd_hold[2]_i_1__0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \pd_max_i_1__0\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \pd_min_i_1__0\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \pdcount[0]_i_1__0\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \pdcount[1]_i_1__0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \pdcount[2]_i_1__0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \pdcount[5]_i_5__0\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \results[0]_i_1__0\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \results[10]_i_1__0\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \results[11]_i_1__0\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \results[12]_i_1__0\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \results[13]_i_1__0\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \results[14]_i_1__0\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \results[15]_i_1__0\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \results[16]_i_1__0\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \results[17]_i_1__0\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \results[18]_i_1__0\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \results[19]_i_1__0\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \results[1]_i_1__0\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \results[20]_i_1__0\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \results[21]_i_1__0\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \results[22]_i_1__0\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \results[23]_i_1__0\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \results[24]_i_1__0\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \results[25]_i_1__0\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \results[26]_i_1__0\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \results[27]_i_1__0\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \results[28]_i_1__0\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \results[29]_i_1__0\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \results[2]_i_1__0\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \results[30]_i_1__0\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \results[31]_i_2__0\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \results[3]_i_1__0\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \results[4]_i_1__0\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \results[5]_i_1__0\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \results[6]_i_1__0\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \results[7]_i_1__0\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \results[8]_i_1__0\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \results[9]_i_1__0\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \s_delay_mux[1]_i_2\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \s_delay_val_eye[0]_i_1__0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \s_delay_val_eye[2]_i_1__0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \s_delay_val_eye[3]_i_1__0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \s_delay_val_eye[4]_i_1__0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \s_delay_val_int[4]_i_3__0\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \s_delay_val_int[4]_i_4__0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \s_state[2]_i_2__0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \s_state[3]_i_2__0\ : label is "soft_lutpair121";
begin
  E(0) <= \^e\(0);
  Q(4 downto 0) <= \^q\(4 downto 0);
  green_debug(31 downto 0) <= \^green_debug\(31 downto 0);
  green_eye(31 downto 0) <= \^green_eye\(31 downto 0);
\action[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8EEF088E8EEF0008"
    )
        port map (
      I0 => \msxor_cti_reg_n_0_[1]\,
      I1 => \msxor_ctix_reg_n_0_[1]\,
      I2 => \msxor_ctd_reg_n_0_[1]\,
      I3 => \msxor_ctdx_reg_n_0_[1]\,
      I4 => \action[0]_i_2__0_n_0\,
      I5 => \action[0]_i_3__0_n_0\,
      O => action(0)
    );
\action[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"088E"
    )
        port map (
      I0 => \msxor_cti_reg_n_0_[0]\,
      I1 => \msxor_ctix_reg_n_0_[0]\,
      I2 => \msxor_ctd_reg_n_0_[0]\,
      I3 => \msxor_ctdx_reg_n_0_[0]\,
      O => \action[0]_i_2__0_n_0\
    );
\action[0]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \msxor_ctix_reg_n_0_[0]\,
      I1 => \msxor_cti_reg_n_0_[0]\,
      I2 => \msxor_ctdx_reg_n_0_[0]\,
      I3 => \msxor_ctd_reg_n_0_[0]\,
      O => \action[0]_i_3__0_n_0\
    );
\action[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CEEF0CCE0CCE000C"
    )
        port map (
      I0 => \action[1]_i_2__0_n_0\,
      I1 => \action[1]_i_3__0_n_0\,
      I2 => \msxor_ctix_reg_n_0_[1]\,
      I3 => \msxor_cti_reg_n_0_[1]\,
      I4 => \msxor_ctdx_reg_n_0_[1]\,
      I5 => \msxor_ctd_reg_n_0_[1]\,
      O => action(1)
    );
\action[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \msxor_ctix_reg_n_0_[0]\,
      I1 => \msxor_cti_reg_n_0_[0]\,
      I2 => \msxor_ctdx_reg_n_0_[0]\,
      I3 => \msxor_ctd_reg_n_0_[0]\,
      O => \action[1]_i_2__0_n_0\
    );
\action[1]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"088E"
    )
        port map (
      I0 => \msxor_ctd_reg_n_0_[0]\,
      I1 => \msxor_ctdx_reg_n_0_[0]\,
      I2 => \msxor_cti_reg_n_0_[0]\,
      I3 => \msxor_ctix_reg_n_0_[0]\,
      O => \action[1]_i_3__0_n_0\
    );
\action_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => action(0),
      Q => \action_reg_n_0_[0]\,
      R => '0'
    );
\action_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => action(1),
      Q => p_0_in200_in,
      R => '0'
    );
\data_mux_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000040"
    )
        port map (
      I0 => s_state(3),
      I1 => s_state(2),
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => \s_state[3]_i_3__0_n_0\,
      I5 => data_mux,
      O => \data_mux_i_1__0_n_0\
    );
data_mux_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_mux_i_1__0_n_0\,
      Q => data_mux,
      R => reset_1p25_reg
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(0),
      I1 => mdataoutc(0),
      I2 => data_mux,
      O => \data_out[0]_i_1_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(1),
      I1 => mdataoutc(1),
      I2 => data_mux,
      O => \data_out[1]_i_1_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(2),
      I1 => mdataoutc(2),
      I2 => data_mux,
      O => \data_out[2]_i_1_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(3),
      I1 => mdataoutc(3),
      I2 => data_mux,
      O => \data_out[3]_i_1_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(4),
      I1 => mdataoutc(4),
      I2 => data_mux,
      O => \data_out[4]_i_1_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(5),
      I1 => mdataoutc(5),
      I2 => data_mux,
      O => \data_out[5]_i_1_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(6),
      I1 => mdataoutc(6),
      I2 => data_mux,
      O => \data_out[6]_i_1_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sdataoutc(7),
      I1 => mdataoutc(7),
      I2 => data_mux,
      O => \data_out[7]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[0]_i_1_n_0\,
      Q => \dataout_reg[7]\(0),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[1]_i_1_n_0\,
      Q => \dataout_reg[7]\(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[2]_i_1_n_0\,
      Q => \dataout_reg[7]\(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[3]_i_1_n_0\,
      Q => \dataout_reg[7]\(3),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[4]_i_1_n_0\,
      Q => \dataout_reg[7]\(4),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[5]_i_1_n_0\,
      Q => \dataout_reg[7]\(5),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[6]_i_1_n_0\,
      Q => \dataout_reg[7]\(6),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[7]_i_1_n_0\,
      Q => \dataout_reg[7]\(7),
      R => '0'
    );
\dec_run_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF6F770000"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(2),
      I2 => s_state(3),
      I3 => s_state(0),
      I4 => \dec_run_i_2__0_n_0\,
      I5 => dec_run_reg_n_0,
      O => \dec_run_i_1__0_n_0\
    );
\dec_run_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3033000230330000"
    )
        port map (
      I0 => meq_min_reg_n_0,
      I1 => inc_run_reg_n_0,
      I2 => delay_change_reg_n_0,
      I3 => pd_max,
      I4 => dec_run_reg_n_0,
      I5 => pd_min,
      O => \dec_run_i_2__0_n_0\
    );
dec_run_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dec_run_i_1__0_n_0\,
      Q => dec_run_reg_n_0,
      R => reset_1p25_reg
    );
\delay_change_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCCFE"
    )
        port map (
      I0 => pd_min,
      I1 => dec_run_reg_n_0,
      I2 => pd_max,
      I3 => delay_change_reg_n_0,
      I4 => inc_run_reg_n_0,
      O => \delay_change_i_1__0_n_0\
    );
delay_change_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delay_change_i_1__0_n_0\,
      Q => delay_change_reg_n_0,
      R => reset_1p25_reg
    );
\eye_run_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACCCAC8CCCCCCCC"
    )
        port map (
      I0 => eye_run_i_2_n_0,
      I1 => eye_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => pd_min,
      I5 => \m_delay_val_int[4]_i_6_n_0\,
      O => \eye_run_i_1__0_n_0\
    );
eye_run_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(1),
      I2 => s_state(2),
      I3 => s_state(3),
      I4 => s_state(4),
      O => eye_run_i_2_n_0
    );
eye_run_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \eye_run_i_1__0_n_0\,
      Q => eye_run_reg_n_0,
      R => reset_1p25_reg
    );
\green_debug[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \^green_debug\(0)
    );
\green_debug[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \^green_debug\(10)
    );
\green_debug[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \^green_debug\(11)
    );
\green_debug[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^green_debug\(12)
    );
\green_debug[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \^green_debug\(13)
    );
\green_debug[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \^green_debug\(14)
    );
\green_debug[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^green_debug\(15)
    );
\green_debug[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^green_debug\(16)
    );
\green_debug[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^green_debug\(17)
    );
\green_debug[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^green_debug\(18)
    );
\green_debug[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^green_debug\(19)
    );
\green_debug[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \^green_debug\(1)
    );
\green_debug[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^green_debug\(20)
    );
\green_debug[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^green_debug\(21)
    );
\green_debug[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^green_debug\(22)
    );
\green_debug[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^green_debug\(23)
    );
\green_debug[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \^green_debug\(24)
    );
\green_debug[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^green_debug\(25)
    );
\green_debug[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^green_debug\(26)
    );
\green_debug[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^green_debug\(27)
    );
\green_debug[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^green_debug\(28)
    );
\green_debug[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^green_debug\(29)
    );
\green_debug[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \^green_debug\(2)
    );
\green_debug[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^green_debug\(30)
    );
\green_debug[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \^green_debug\(31)
    );
\green_debug[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \^green_debug\(3)
    );
\green_debug[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \^green_debug\(4)
    );
\green_debug[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \^green_debug\(5)
    );
\green_debug[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \^green_debug\(6)
    );
\green_debug[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \^green_debug\(7)
    );
\green_debug[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \^green_debug\(8)
    );
\green_debug[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \^green_debug\(9)
    );
\inc_run_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00006F77"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(2),
      I2 => s_state(3),
      I3 => s_state(0),
      I4 => \inc_run_i_2__0_n_0\,
      I5 => inc_run_reg_n_0,
      O => \inc_run_i_1__0_n_0\
    );
\inc_run_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => pd_max,
      I1 => delay_change_reg_n_0,
      I2 => meq_max,
      I3 => inc_run_reg_n_0,
      O => \inc_run_i_2__0_n_0\
    );
inc_run_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \inc_run_i_1__0_n_0\,
      Q => inc_run_reg_n_0,
      R => reset_1p25_reg
    );
\m_delay_mux[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF01000000"
    )
        port map (
      I0 => \s_state[3]_i_3__0_n_0\,
      I1 => s_state(1),
      I2 => s_state(2),
      I3 => s_state(3),
      I4 => s_state(0),
      I5 => m_delay_mux(0),
      O => \m_delay_mux[0]_i_1__0_n_0\
    );
\m_delay_mux[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6F0090"
    )
        port map (
      I0 => \m_delay_val_int[4]_i_6_n_0\,
      I1 => m_delay_mux(0),
      I2 => \m_delay_mux[1]_i_2__0_n_0\,
      I3 => \s_state[3]_i_3__0_n_0\,
      I4 => m_delay_mux(1),
      O => \m_delay_mux[1]_i_1__0_n_0\
    );
\m_delay_mux[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(2),
      I2 => s_state(3),
      I3 => s_state(0),
      O => \m_delay_mux[1]_i_2__0_n_0\
    );
\m_delay_mux_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \m_delay_mux[0]_i_1__0_n_0\,
      Q => m_delay_mux(0),
      S => reset_1p25_reg
    );
\m_delay_mux_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \m_delay_mux[1]_i_1__0_n_0\,
      Q => m_delay_mux(1),
      R => reset_1p25_reg
    );
\m_delay_val_int[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000100000001"
    )
        port map (
      I0 => inc_run_reg_n_0,
      I1 => meq_max,
      I2 => \^q\(0),
      I3 => reset_1p25_reg,
      I4 => \m_delay_val_int[4]_i_6_n_0\,
      I5 => \m_delay_val_int[4]_i_4__0_n_0\,
      O => \m_delay_val_int[0]_i_1__0_n_0\
    );
\m_delay_val_int[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008FF88008"
    )
        port map (
      I0 => \m_delay_val_int[4]_i_6_n_0\,
      I1 => \m_delay_val_int[4]_i_4__0_n_0\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \m_delay_val_int[4]_i_5__0_n_0\,
      I5 => reset_1p25_reg,
      O => \m_delay_val_int[1]_i_1_n_0\
    );
\m_delay_val_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEECC00A"
    )
        port map (
      I0 => \m_delay_val_int[2]_i_2__0_n_0\,
      I1 => \m_delay_val_int[4]_i_5__0_n_0\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => reset_1p25_reg,
      O => \m_delay_val_int[2]_i_1_n_0\
    );
\m_delay_val_int[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000D"
    )
        port map (
      I0 => pd_max,
      I1 => delay_change_reg_n_0,
      I2 => inc_run_reg_n_0,
      I3 => meq_min_reg_n_0,
      I4 => dec_run_reg_n_0,
      O => \m_delay_val_int[2]_i_2__0_n_0\
    );
\m_delay_val_int[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5101015151515151"
    )
        port map (
      I0 => reset_1p25_reg,
      I1 => \m_delay_val_int[3]_i_2_n_0\,
      I2 => \m_delay_val_int[4]_i_6_n_0\,
      I3 => \^q\(3),
      I4 => \m_delay_val_int[3]_i_3__0_n_0\,
      I5 => \m_delay_val_int[4]_i_4__0_n_0\,
      O => \m_delay_val_int[3]_i_1__0_n_0\
    );
\m_delay_val_int[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF807F"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => meq_max,
      I5 => inc_run_reg_n_0,
      O => \m_delay_val_int[3]_i_2_n_0\
    );
\m_delay_val_int[3]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \m_delay_val_int[3]_i_3__0_n_0\
    );
\m_delay_val_int[4]_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF1E"
    )
        port map (
      I0 => \^q\(3),
      I1 => \m_delay_val_int[3]_i_3__0_n_0\,
      I2 => \^q\(4),
      I3 => meq_min_reg_n_0,
      I4 => dec_run_reg_n_0,
      O => \m_delay_val_int[4]_i_10__0_n_0\
    );
\m_delay_val_int[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFF5FFFF"
    )
        port map (
      I0 => \m_delay_val_int[4]_i_3__0_n_0\,
      I1 => \m_delay_val_int[4]_i_4__0_n_0\,
      I2 => reset_1p25_reg,
      I3 => \m_delay_val_int[4]_i_5__0_n_0\,
      I4 => \m_delay_val_int[4]_i_6_n_0\,
      I5 => \m_delay_val_int[4]_i_7__0_n_0\,
      O => \m_delay_val_int[4]_i_1__0_n_0\
    );
\m_delay_val_int[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000044055550440"
    )
        port map (
      I0 => reset_1p25_reg,
      I1 => \m_delay_val_int[4]_i_8__1_n_0\,
      I2 => \^q\(4),
      I3 => \m_delay_val_int[4]_i_9__0_n_0\,
      I4 => \m_delay_val_int[4]_i_6_n_0\,
      I5 => \m_delay_val_int[4]_i_10__0_n_0\,
      O => \m_delay_val_int[4]_i_2__0_n_0\
    );
\m_delay_val_int[4]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF33F1"
    )
        port map (
      I0 => pd_min,
      I1 => dec_run_reg_n_0,
      I2 => pd_max,
      I3 => delay_change_reg_n_0,
      I4 => inc_run_reg_n_0,
      O => \m_delay_val_int[4]_i_3__0_n_0\
    );
\m_delay_val_int[4]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dec_run_reg_n_0,
      I1 => meq_min_reg_n_0,
      O => \m_delay_val_int[4]_i_4__0_n_0\
    );
\m_delay_val_int[4]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => delay_change_reg_n_0,
      I1 => pd_max,
      I2 => meq_max,
      I3 => inc_run_reg_n_0,
      O => \m_delay_val_int[4]_i_5__0_n_0\
    );
\m_delay_val_int[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => inc_run_reg_n_0,
      I1 => delay_change_reg_n_0,
      I2 => pd_max,
      O => \m_delay_val_int[4]_i_6_n_0\
    );
\m_delay_val_int[4]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => s_state(3),
      I1 => s_state(2),
      I2 => s_state(1),
      I3 => s_state(0),
      O => \m_delay_val_int[4]_i_7__0_n_0\
    );
\m_delay_val_int[4]_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inc_run_reg_n_0,
      I1 => meq_max,
      O => \m_delay_val_int[4]_i_8__1_n_0\
    );
\m_delay_val_int[4]_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \m_delay_val_int[4]_i_9__0_n_0\
    );
\m_delay_val_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[4]_i_1__0_n_0\,
      D => \m_delay_val_int[0]_i_1__0_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\m_delay_val_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[4]_i_1__0_n_0\,
      D => \m_delay_val_int[1]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\m_delay_val_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[4]_i_1__0_n_0\,
      D => \m_delay_val_int[2]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\m_delay_val_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[4]_i_1__0_n_0\,
      D => \m_delay_val_int[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\m_delay_val_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[4]_i_1__0_n_0\,
      D => \m_delay_val_int[4]_i_2__0_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\match[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => p_0_in166_in,
      I1 => p_0_in76_in,
      I2 => p_0_in180_in,
      I3 => p_0_in88_in,
      I4 => \match[0]_i_2__0_n_0\,
      I5 => \match[0]_i_3__0_n_0\,
      O => \match[0]_i_1__0_n_0\
    );
\match[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \sdataouta_reg_n_0_[0]\,
      I1 => \mdataouta_reg_n_0_[0]\,
      I2 => p_0_in97_in,
      I3 => p_0_in15_in,
      I4 => p_0_in110_in,
      I5 => p_0_in28_in,
      O => \match[0]_i_2__0_n_0\
    );
\match[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => p_0_in40_in,
      I1 => p_0_in124_in,
      I2 => p_0_in152_in,
      I3 => p_0_in64_in,
      I4 => p_0_in138_in,
      I5 => p_0_in52_in,
      O => \match[0]_i_3__0_n_0\
    );
\match_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \match[0]_i_1__0_n_0\,
      Q => p_2_in(1),
      R => '0'
    );
\match_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(1),
      Q => p_2_in(2),
      R => '0'
    );
\match_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(2),
      Q => p_2_in(3),
      R => '0'
    );
\match_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(3),
      Q => p_2_in(4),
      R => '0'
    );
\match_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(4),
      Q => p_2_in(5),
      R => '0'
    );
\match_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(5),
      Q => p_2_in(6),
      R => '0'
    );
\match_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(6),
      Q => p_2_in(7),
      R => '0'
    );
\match_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(7),
      Q => match(7),
      R => '0'
    );
\mdataouta_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(0),
      Q => \mdataouta_reg_n_0_[0]\,
      R => '0'
    );
\mdataouta_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(1),
      Q => p_0_in97_in,
      R => '0'
    );
\mdataouta_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(2),
      Q => p_0_in110_in,
      R => '0'
    );
\mdataouta_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(3),
      Q => p_0_in124_in,
      R => '0'
    );
\mdataouta_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(4),
      Q => p_0_in138_in,
      R => '0'
    );
\mdataouta_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(5),
      Q => p_0_in152_in,
      R => '0'
    );
\mdataouta_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(6),
      Q => p_0_in166_in,
      R => '0'
    );
\mdataouta_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_reg(7),
      Q => p_0_in180_in,
      R => '0'
    );
mdataoutb_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in180_in,
      Q => mdataoutb,
      R => '0'
    );
\mdataoutc[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \mdataouta_reg_n_0_[0]\,
      I1 => m_delay_mux(0),
      I2 => p_0_in97_in,
      I3 => m_delay_mux(1),
      I4 => mdataoutb,
      O => \mdataoutc[0]_i_1__0_n_0\
    );
\mdataoutc[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in97_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in110_in,
      I3 => m_delay_mux(1),
      I4 => \mdataouta_reg_n_0_[0]\,
      O => \mdataoutc[1]_i_1__0_n_0\
    );
\mdataoutc[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in110_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in124_in,
      I3 => m_delay_mux(1),
      I4 => p_0_in97_in,
      O => \mdataoutc[2]_i_1__0_n_0\
    );
\mdataoutc[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in124_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in138_in,
      I3 => m_delay_mux(1),
      I4 => p_0_in110_in,
      O => \mdataoutc[3]_i_1__0_n_0\
    );
\mdataoutc[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in138_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in152_in,
      I3 => m_delay_mux(1),
      I4 => p_0_in124_in,
      O => \mdataoutc[4]_i_1__0_n_0\
    );
\mdataoutc[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in152_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in166_in,
      I3 => m_delay_mux(1),
      I4 => p_0_in138_in,
      O => \mdataoutc[5]_i_1__0_n_0\
    );
\mdataoutc[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in166_in,
      I1 => m_delay_mux(0),
      I2 => p_0_in180_in,
      I3 => m_delay_mux(1),
      I4 => p_0_in152_in,
      O => \mdataoutc[6]_i_1__0_n_0\
    );
\mdataoutc[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in180_in,
      I1 => m_delay_mux(0),
      I2 => bitslipx1p25_reg(0),
      I3 => m_delay_mux(1),
      I4 => p_0_in166_in,
      O => \mdataoutc[7]_i_1__0_n_0\
    );
\mdataoutc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \mdataoutc[0]_i_1__0_n_0\,
      Q => mdataoutc(0),
      R => '0'
    );
\mdataoutc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \mdataoutc[1]_i_1__0_n_0\,
      Q => mdataoutc(1),
      R => '0'
    );
\mdataoutc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \mdataoutc[2]_i_1__0_n_0\,
      Q => mdataoutc(2),
      R => '0'
    );
\mdataoutc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \mdataoutc[3]_i_1__0_n_0\,
      Q => mdataoutc(3),
      R => '0'
    );
\mdataoutc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \mdataoutc[4]_i_1__0_n_0\,
      Q => mdataoutc(4),
      R => '0'
    );
\mdataoutc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \mdataoutc[5]_i_1__0_n_0\,
      Q => mdataoutc(5),
      R => '0'
    );
\mdataoutc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \mdataoutc[6]_i_1__0_n_0\,
      Q => mdataoutc(6),
      R => '0'
    );
\mdataoutc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \mdataoutc[7]_i_1__0_n_0\,
      Q => mdataoutc(7),
      R => '0'
    );
meq_max_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \^green_debug\(8),
      Q => meq_max,
      R => '0'
    );
\meq_min_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888B8"
    )
        port map (
      I0 => meq_min_reg_n_0,
      I1 => reset_1p25_reg,
      I2 => \meq_min_i_2__0_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \meq_min_i_1__0_n_0\
    );
\meq_min_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \meq_min_i_2__0_n_0\
    );
meq_min_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \meq_min_i_1__0_n_0\,
      Q => meq_min_reg_n_0,
      R => '0'
    );
\msxor_ctd[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6B96"
    )
        port map (
      I0 => \msxor_ctd[1]_i_2__0_n_0\,
      I1 => \msxor_ctd[1]_i_3__0_n_0\,
      I2 => \msxor_ctd[1]_i_4__0_n_0\,
      I3 => \msxor_ctd[1]_i_5__0_n_0\,
      O => \msxor_ctd[0]_i_1__0_n_0\
    );
\msxor_ctd[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF2B"
    )
        port map (
      I0 => \msxor_ctd[1]_i_2__0_n_0\,
      I1 => \msxor_ctd[1]_i_3__0_n_0\,
      I2 => \msxor_ctd[1]_i_4__0_n_0\,
      I3 => \msxor_ctd[1]_i_5__0_n_0\,
      O => \msxor_ctd[1]_i_1__0_n_0\
    );
\msxor_ctd[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => p_0_in28_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in15_in,
      I3 => p_0_in110_in,
      I4 => p_0_in97_in,
      O => \msxor_ctd[1]_i_2__0_n_0\
    );
\msxor_ctd[1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in40_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in28_in,
      I3 => p_0_in124_in,
      I4 => p_0_in110_in,
      O => \msxor_ctd[1]_i_3__0_n_0\
    );
\msxor_ctd[1]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB847FF"
    )
        port map (
      I0 => p_0_in15_in,
      I1 => s_ovflw_reg_n_0,
      I2 => \sdataouta_reg_n_0_[0]\,
      I3 => \mdataouta_reg_n_0_[0]\,
      I4 => p_0_in97_in,
      O => \msxor_ctd[1]_i_4__0_n_0\
    );
\msxor_ctd[1]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047B800"
    )
        port map (
      I0 => \sdataouta_reg_n_0_[0]\,
      I1 => s_ovflw_reg_n_0,
      I2 => sdataoutb,
      I3 => mdataoutb,
      I4 => \mdataouta_reg_n_0_[0]\,
      O => \msxor_ctd[1]_i_5__0_n_0\
    );
\msxor_ctd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctd[0]_i_1__0_n_0\,
      Q => \msxor_ctd_reg_n_0_[0]\,
      R => '0'
    );
\msxor_ctd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctd[1]_i_1__0_n_0\,
      Q => \msxor_ctd_reg_n_0_[1]\,
      R => '0'
    );
\msxor_ctdx[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69D6"
    )
        port map (
      I0 => \msxor_ctdx[1]_i_5__0_n_0\,
      I1 => \msxor_ctdx[1]_i_4__0_n_0\,
      I2 => \msxor_ctdx[1]_i_2__0_n_0\,
      I3 => \msxor_ctdx[1]_i_3__0_n_0\,
      O => \msxor_ctdx[0]_i_1__0_n_0\
    );
\msxor_ctdx[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2FB"
    )
        port map (
      I0 => \msxor_ctdx[1]_i_2__0_n_0\,
      I1 => \msxor_ctdx[1]_i_3__0_n_0\,
      I2 => \msxor_ctdx[1]_i_4__0_n_0\,
      I3 => \msxor_ctdx[1]_i_5__0_n_0\,
      O => \msxor_ctdx[1]_i_1__0_n_0\
    );
\msxor_ctdx[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047B800"
    )
        port map (
      I0 => p_0_in64_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in52_in,
      I3 => p_0_in138_in,
      I4 => p_0_in152_in,
      O => \msxor_ctdx[1]_i_2__0_n_0\
    );
\msxor_ctdx[1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in52_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in40_in,
      I3 => p_0_in138_in,
      I4 => p_0_in124_in,
      O => \msxor_ctdx[1]_i_3__0_n_0\
    );
\msxor_ctdx[1]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => p_0_in88_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in76_in,
      I3 => p_0_in180_in,
      I4 => p_0_in166_in,
      O => \msxor_ctdx[1]_i_4__0_n_0\
    );
\msxor_ctdx[1]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in76_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in64_in,
      I3 => p_0_in166_in,
      I4 => p_0_in152_in,
      O => \msxor_ctdx[1]_i_5__0_n_0\
    );
\msxor_ctdx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctdx[0]_i_1__0_n_0\,
      Q => \msxor_ctdx_reg_n_0_[0]\,
      R => '0'
    );
\msxor_ctdx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctdx[1]_i_1__0_n_0\,
      Q => \msxor_ctdx_reg_n_0_[1]\,
      R => '0'
    );
\msxor_cti[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6B96"
    )
        port map (
      I0 => \msxor_cti[1]_i_2__0_n_0\,
      I1 => \msxor_cti[1]_i_3__0_n_0\,
      I2 => \msxor_cti[1]_i_4__0_n_0\,
      I3 => \msxor_cti[1]_i_5__0_n_0\,
      O => \msxor_cti[0]_i_1__0_n_0\
    );
\msxor_cti[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF2B"
    )
        port map (
      I0 => \msxor_cti[1]_i_2__0_n_0\,
      I1 => \msxor_cti[1]_i_3__0_n_0\,
      I2 => \msxor_cti[1]_i_4__0_n_0\,
      I3 => \msxor_cti[1]_i_5__0_n_0\,
      O => \msxor_cti[1]_i_1__0_n_0\
    );
\msxor_cti[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => p_0_in28_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in15_in,
      I3 => p_0_in97_in,
      I4 => p_0_in110_in,
      O => \msxor_cti[1]_i_2__0_n_0\
    );
\msxor_cti[1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in40_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in28_in,
      I3 => p_0_in110_in,
      I4 => p_0_in124_in,
      O => \msxor_cti[1]_i_3__0_n_0\
    );
\msxor_cti[1]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB847FF"
    )
        port map (
      I0 => p_0_in15_in,
      I1 => s_ovflw_reg_n_0,
      I2 => \sdataouta_reg_n_0_[0]\,
      I3 => p_0_in97_in,
      I4 => \mdataouta_reg_n_0_[0]\,
      O => \msxor_cti[1]_i_4__0_n_0\
    );
\msxor_cti[1]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => \sdataouta_reg_n_0_[0]\,
      I1 => s_ovflw_reg_n_0,
      I2 => sdataoutb,
      I3 => mdataoutb,
      I4 => \mdataouta_reg_n_0_[0]\,
      O => \msxor_cti[1]_i_5__0_n_0\
    );
\msxor_cti_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_cti[0]_i_1__0_n_0\,
      Q => \msxor_cti_reg_n_0_[0]\,
      R => '0'
    );
\msxor_cti_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_cti[1]_i_1__0_n_0\,
      Q => \msxor_cti_reg_n_0_[1]\,
      R => '0'
    );
\msxor_ctix[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69D6"
    )
        port map (
      I0 => \msxor_ctix[1]_i_5__0_n_0\,
      I1 => \msxor_ctix[1]_i_4__0_n_0\,
      I2 => \msxor_ctix[1]_i_2__0_n_0\,
      I3 => \msxor_ctix[1]_i_3__0_n_0\,
      O => \msxor_ctix[0]_i_1__0_n_0\
    );
\msxor_ctix[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2FB"
    )
        port map (
      I0 => \msxor_ctix[1]_i_2__0_n_0\,
      I1 => \msxor_ctix[1]_i_3__0_n_0\,
      I2 => \msxor_ctix[1]_i_4__0_n_0\,
      I3 => \msxor_ctix[1]_i_5__0_n_0\,
      O => \msxor_ctix[1]_i_1__0_n_0\
    );
\msxor_ctix[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => p_0_in64_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in52_in,
      I3 => p_0_in138_in,
      I4 => p_0_in152_in,
      O => \msxor_ctix[1]_i_2__0_n_0\
    );
\msxor_ctix[1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in52_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in40_in,
      I3 => p_0_in124_in,
      I4 => p_0_in138_in,
      O => \msxor_ctix[1]_i_3__0_n_0\
    );
\msxor_ctix[1]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047B800"
    )
        port map (
      I0 => p_0_in88_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in76_in,
      I3 => p_0_in180_in,
      I4 => p_0_in166_in,
      O => \msxor_ctix[1]_i_4__0_n_0\
    );
\msxor_ctix[1]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B8FF"
    )
        port map (
      I0 => p_0_in76_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in64_in,
      I3 => p_0_in152_in,
      I4 => p_0_in166_in,
      O => \msxor_ctix[1]_i_5__0_n_0\
    );
\msxor_ctix_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctix[0]_i_1__0_n_0\,
      Q => \msxor_ctix_reg_n_0_[0]\,
      R => '0'
    );
\msxor_ctix_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctix[1]_i_1__0_n_0\,
      Q => \msxor_ctix_reg_n_0_[1]\,
      R => '0'
    );
\pd_hold[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => eye_run_reg_n_0,
      I1 => delay_change_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => inc_run_reg_n_0,
      O => pdcount1
    );
\pd_hold[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(1),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[1]_i_1__0_n_0\
    );
\pd_hold[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(2),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[2]_i_1__0_n_0\
    );
\pd_hold[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(3),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[3]_i_1__0_n_0\
    );
\pd_hold[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(4),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[4]_i_1__0_n_0\
    );
\pd_hold[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(5),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[5]_i_1__0_n_0\
    );
\pd_hold[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(6),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[6]_i_1__0_n_0\
    );
\pd_hold[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in,
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[7]_i_1__0_n_0\
    );
\pd_hold[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in1_in(7),
      I1 => inc_run_reg_n_0,
      I2 => dec_run_reg_n_0,
      I3 => delay_change_reg_n_0,
      I4 => eye_run_reg_n_0,
      O => \pd_hold[7]_i_2__0_n_0\
    );
\pd_hold_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1__0_n_0\,
      D => pdcount1,
      Q => p_0_in1_in(1),
      R => reset_1p25_reg
    );
\pd_hold_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1__0_n_0\,
      D => \pd_hold[1]_i_1__0_n_0\,
      Q => p_0_in1_in(2),
      R => reset_1p25_reg
    );
\pd_hold_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1__0_n_0\,
      D => \pd_hold[2]_i_1__0_n_0\,
      Q => p_0_in1_in(3),
      R => reset_1p25_reg
    );
\pd_hold_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1__0_n_0\,
      D => \pd_hold[3]_i_1__0_n_0\,
      Q => p_0_in1_in(4),
      R => reset_1p25_reg
    );
\pd_hold_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1__0_n_0\,
      D => \pd_hold[4]_i_1__0_n_0\,
      Q => p_0_in1_in(5),
      R => reset_1p25_reg
    );
\pd_hold_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1__0_n_0\,
      D => \pd_hold[5]_i_1__0_n_0\,
      Q => p_0_in1_in(6),
      R => reset_1p25_reg
    );
\pd_hold_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1__0_n_0\,
      D => \pd_hold[6]_i_1__0_n_0\,
      Q => p_0_in1_in(7),
      R => reset_1p25_reg
    );
\pd_hold_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1__0_n_0\,
      D => \pd_hold[7]_i_2__0_n_0\,
      Q => p_0_in,
      R => reset_1p25_reg
    );
\pd_max_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \pd_max_i_2__0_n_0\,
      I1 => pd_max,
      I2 => delay_change_reg_n_0,
      O => pd_max0
    );
\pd_max_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => pdcount_reg(0),
      I1 => pdcount_reg(1),
      I2 => pdcount_reg(2),
      I3 => pdcount_reg(3),
      I4 => pdcount_reg(4),
      I5 => pdcount_reg(5),
      O => \pd_max_i_2__0_n_0\
    );
pd_max_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => pd_max0,
      Q => pd_max,
      R => '0'
    );
pd_min_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_1p25_reg,
      O => \^e\(0)
    );
\pd_min_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \pd_min_i_2__0_n_0\,
      I1 => pd_min,
      I2 => delay_change_reg_n_0,
      O => pd_min0
    );
\pd_min_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => pdcount_reg(4),
      I1 => pdcount_reg(5),
      I2 => pdcount_reg(2),
      I3 => pdcount_reg(3),
      I4 => pdcount_reg(0),
      I5 => pdcount_reg(1),
      O => \pd_min_i_2__0_n_0\
    );
pd_min_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => pd_min0,
      Q => pd_min,
      R => '0'
    );
\pdcount[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pdcount_reg(0),
      O => \pdcount[0]_i_1__0_n_0\
    );
\pdcount[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \action_reg_n_0_[0]\,
      I1 => \pd_max_i_2__0_n_0\,
      I2 => pdcount_reg(0),
      I3 => pdcount_reg(1),
      O => \pdcount[1]_i_1__0_n_0\
    );
\pdcount[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA96AA9"
    )
        port map (
      I0 => pdcount_reg(2),
      I1 => pdcount_reg(0),
      I2 => pdcount_reg(1),
      I3 => \action_reg_n_0_[0]\,
      I4 => \pd_max_i_2__0_n_0\,
      O => \pdcount[2]_i_1__0_n_0\
    );
\pdcount[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF4000FFFC0003"
    )
        port map (
      I0 => \pd_max_i_2__0_n_0\,
      I1 => \action_reg_n_0_[0]\,
      I2 => pdcount_reg(1),
      I3 => pdcount_reg(0),
      I4 => pdcount_reg(3),
      I5 => pdcount_reg(2),
      O => \pdcount[3]_i_1__0_n_0\
    );
\pdcount[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66656666"
    )
        port map (
      I0 => pdcount_reg(4),
      I1 => \pdcount[5]_i_4__0_n_0\,
      I2 => pdcount_reg(3),
      I3 => pdcount_reg(2),
      I4 => \pdcount[5]_i_5__0_n_0\,
      O => \pdcount[4]_i_1__0_n_0\
    );
\pdcount[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => inc_run_reg_n_0,
      I1 => dec_run_reg_n_0,
      I2 => delay_change_reg_n_0,
      I3 => eye_run_reg_n_0,
      I4 => p_0_in,
      I5 => reset_1p25_reg,
      O => \pdcount[5]_i_1__0_n_0\
    );
\pdcount[5]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => p_0_in200_in,
      I1 => \pd_min_i_2__0_n_0\,
      I2 => \action_reg_n_0_[0]\,
      I3 => \pd_max_i_2__0_n_0\,
      O => \pdcount[5]_i_2__0_n_0\
    );
\pdcount[5]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6A6A996A6A6A6A"
    )
        port map (
      I0 => pdcount_reg(5),
      I1 => pdcount_reg(4),
      I2 => \pdcount[5]_i_4__0_n_0\,
      I3 => pdcount_reg(3),
      I4 => pdcount_reg(2),
      I5 => \pdcount[5]_i_5__0_n_0\,
      O => \pdcount[5]_i_3__0_n_0\
    );
\pdcount[5]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => pdcount_reg(3),
      I1 => pdcount_reg(2),
      I2 => \pd_max_i_2__0_n_0\,
      I3 => \action_reg_n_0_[0]\,
      I4 => pdcount_reg(1),
      I5 => pdcount_reg(0),
      O => \pdcount[5]_i_4__0_n_0\
    );
\pdcount[5]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \action_reg_n_0_[0]\,
      I1 => pdcount_reg(0),
      I2 => pdcount_reg(1),
      O => \pdcount[5]_i_5__0_n_0\
    );
\pdcount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2__0_n_0\,
      D => \pdcount[0]_i_1__0_n_0\,
      Q => pdcount_reg(0),
      R => \pdcount[5]_i_1__0_n_0\
    );
\pdcount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2__0_n_0\,
      D => \pdcount[1]_i_1__0_n_0\,
      Q => pdcount_reg(1),
      R => \pdcount[5]_i_1__0_n_0\
    );
\pdcount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2__0_n_0\,
      D => \pdcount[2]_i_1__0_n_0\,
      Q => pdcount_reg(2),
      R => \pdcount[5]_i_1__0_n_0\
    );
\pdcount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2__0_n_0\,
      D => \pdcount[3]_i_1__0_n_0\,
      Q => pdcount_reg(3),
      R => \pdcount[5]_i_1__0_n_0\
    );
\pdcount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2__0_n_0\,
      D => \pdcount[4]_i_1__0_n_0\,
      Q => pdcount_reg(4),
      R => \pdcount[5]_i_1__0_n_0\
    );
\pdcount_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2__0_n_0\,
      D => \pdcount[5]_i_3__0_n_0\,
      Q => pdcount_reg(5),
      S => \pdcount[5]_i_1__0_n_0\
    );
\results[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(0),
      I2 => \^green_eye\(0),
      O => results(0)
    );
\results[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(10),
      I2 => \^green_eye\(10),
      O => results(10)
    );
\results[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(11),
      I2 => \^green_eye\(11),
      O => results(11)
    );
\results[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(12),
      I2 => \^green_eye\(12),
      O => results(12)
    );
\results[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(13),
      I2 => \^green_eye\(13),
      O => results(13)
    );
\results[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(14),
      I2 => \^green_eye\(14),
      O => results(14)
    );
\results[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(15),
      I2 => \^green_eye\(15),
      O => results(15)
    );
\results[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(16),
      I2 => \^green_eye\(16),
      O => results(16)
    );
\results[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(17),
      I2 => \^green_eye\(17),
      O => results(17)
    );
\results[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(18),
      I2 => \^green_eye\(18),
      O => results(18)
    );
\results[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(19),
      I2 => \^green_eye\(19),
      O => results(19)
    );
\results[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(1),
      I2 => \^green_eye\(1),
      O => results(1)
    );
\results[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(20),
      I2 => \^green_eye\(20),
      O => results(20)
    );
\results[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(21),
      I2 => \^green_eye\(21),
      O => results(21)
    );
\results[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(22),
      I2 => \^green_eye\(22),
      O => results(22)
    );
\results[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(23),
      I2 => \^green_eye\(23),
      O => results(23)
    );
\results[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(24),
      I2 => \^green_eye\(24),
      O => results(24)
    );
\results[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(25),
      I2 => \^green_eye\(25),
      O => results(25)
    );
\results[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(26),
      I2 => \^green_eye\(26),
      O => results(26)
    );
\results[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(27),
      I2 => \^green_eye\(27),
      O => results(27)
    );
\results[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(28),
      I2 => \^green_eye\(28),
      O => results(28)
    );
\results[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(29),
      I2 => \^green_eye\(29),
      O => results(29)
    );
\results[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(2),
      I2 => \^green_eye\(2),
      O => results(2)
    );
\results[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(30),
      I2 => \^green_eye\(30),
      O => results(30)
    );
\results[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \results[31]_i_3__0_n_0\,
      I1 => eye_run_reg_n_0,
      I2 => delay_change_reg_n_0,
      O => s_delay_val_eye
    );
\results[31]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(31),
      I2 => \^green_eye\(31),
      O => results(31)
    );
\results[31]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => \s_state[2]_i_2__0_n_0\,
      I1 => s_state(4),
      I2 => s_state(3),
      I3 => s_state(2),
      I4 => s_state(1),
      I5 => s_state(0),
      O => \results[31]_i_3__0_n_0\
    );
\results[31]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => p_2_in(3),
      I1 => p_2_in(1),
      I2 => p_2_in(6),
      I3 => p_2_in(5),
      I4 => \results[31]_i_5__0_n_0\,
      O => \results[31]_i_4__0_n_0\
    );
\results[31]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => p_2_in(7),
      I1 => match(7),
      I2 => p_2_in(4),
      I3 => p_2_in(2),
      O => \results[31]_i_5__0_n_0\
    );
\results[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(3),
      I2 => \^green_eye\(3),
      O => results(3)
    );
\results[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(4),
      I2 => \^green_eye\(4),
      O => results(4)
    );
\results[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(5),
      I2 => \^green_eye\(5),
      O => results(5)
    );
\results[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(6),
      I2 => \^green_eye\(6),
      O => results(6)
    );
\results[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(7),
      I2 => \^green_eye\(7),
      O => results(7)
    );
\results[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(8),
      I2 => \^green_eye\(8),
      O => results(8)
    );
\results[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \results[31]_i_4__0_n_0\,
      I1 => shifter(9),
      I2 => \^green_eye\(9),
      O => results(9)
    );
\results_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(0),
      Q => \^green_eye\(0),
      R => reset_1p25_reg
    );
\results_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(10),
      Q => \^green_eye\(10),
      R => reset_1p25_reg
    );
\results_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(11),
      Q => \^green_eye\(11),
      R => reset_1p25_reg
    );
\results_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(12),
      Q => \^green_eye\(12),
      R => reset_1p25_reg
    );
\results_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(13),
      Q => \^green_eye\(13),
      R => reset_1p25_reg
    );
\results_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(14),
      Q => \^green_eye\(14),
      R => reset_1p25_reg
    );
\results_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(15),
      Q => \^green_eye\(15),
      R => reset_1p25_reg
    );
\results_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(16),
      Q => \^green_eye\(16),
      R => reset_1p25_reg
    );
\results_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(17),
      Q => \^green_eye\(17),
      R => reset_1p25_reg
    );
\results_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(18),
      Q => \^green_eye\(18),
      R => reset_1p25_reg
    );
\results_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(19),
      Q => \^green_eye\(19),
      R => reset_1p25_reg
    );
\results_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(1),
      Q => \^green_eye\(1),
      R => reset_1p25_reg
    );
\results_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(20),
      Q => \^green_eye\(20),
      R => reset_1p25_reg
    );
\results_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(21),
      Q => \^green_eye\(21),
      R => reset_1p25_reg
    );
\results_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(22),
      Q => \^green_eye\(22),
      R => reset_1p25_reg
    );
\results_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(23),
      Q => \^green_eye\(23),
      R => reset_1p25_reg
    );
\results_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(24),
      Q => \^green_eye\(24),
      R => reset_1p25_reg
    );
\results_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(25),
      Q => \^green_eye\(25),
      R => reset_1p25_reg
    );
\results_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(26),
      Q => \^green_eye\(26),
      R => reset_1p25_reg
    );
\results_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(27),
      Q => \^green_eye\(27),
      R => reset_1p25_reg
    );
\results_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(28),
      Q => \^green_eye\(28),
      R => reset_1p25_reg
    );
\results_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(29),
      Q => \^green_eye\(29),
      R => reset_1p25_reg
    );
\results_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(2),
      Q => \^green_eye\(2),
      R => reset_1p25_reg
    );
\results_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(30),
      Q => \^green_eye\(30),
      R => reset_1p25_reg
    );
\results_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(31),
      Q => \^green_eye\(31),
      R => reset_1p25_reg
    );
\results_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(3),
      Q => \^green_eye\(3),
      R => reset_1p25_reg
    );
\results_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(4),
      Q => \^green_eye\(4),
      R => reset_1p25_reg
    );
\results_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(5),
      Q => \^green_eye\(5),
      R => reset_1p25_reg
    );
\results_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(6),
      Q => \^green_eye\(6),
      R => reset_1p25_reg
    );
\results_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(7),
      Q => \^green_eye\(7),
      R => reset_1p25_reg
    );
\results_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(8),
      Q => \^green_eye\(8),
      R => reset_1p25_reg
    );
\results_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => results(9),
      Q => \^green_eye\(9),
      R => reset_1p25_reg
    );
\s_delay_mux[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => m_delay_mux(0),
      I1 => s_state(0),
      I2 => s_state(3),
      I3 => \s_delay_mux[1]_i_2_n_0\,
      I4 => \s_state[3]_i_3__0_n_0\,
      I5 => s_delay_mux(0),
      O => \s_delay_mux[0]_i_1__0_n_0\
    );
\s_delay_mux[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => m_delay_mux(1),
      I1 => s_state(0),
      I2 => s_state(3),
      I3 => \s_delay_mux[1]_i_2_n_0\,
      I4 => \s_state[3]_i_3__0_n_0\,
      I5 => s_delay_mux(1),
      O => \s_delay_mux[1]_i_1__0_n_0\
    );
\s_delay_mux[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_state(2),
      I1 => s_state(1),
      O => \s_delay_mux[1]_i_2_n_0\
    );
\s_delay_mux_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \s_delay_mux[0]_i_1__0_n_0\,
      Q => s_delay_mux(0),
      S => reset_1p25_reg
    );
\s_delay_mux_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \s_delay_mux[1]_i_1__0_n_0\,
      Q => s_delay_mux(1),
      R => reset_1p25_reg
    );
\s_delay_val_eye[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00EF"
    )
        port map (
      I0 => s_delay_val_eye_reg(4),
      I1 => s_delay_val_eye_reg(2),
      I2 => s_delay_val_eye_reg(3),
      I3 => s_delay_val_eye_reg(0),
      I4 => s_delay_val_eye_reg(1),
      O => \p_0_in__0\(0)
    );
\s_delay_val_eye[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_delay_val_eye_reg(0),
      I1 => s_delay_val_eye_reg(1),
      O => \p_0_in__0\(1)
    );
\s_delay_val_eye[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s_delay_val_eye_reg(2),
      I1 => s_delay_val_eye_reg(1),
      I2 => s_delay_val_eye_reg(0),
      O => \p_0_in__0\(2)
    );
\s_delay_val_eye[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFEC000"
    )
        port map (
      I0 => s_delay_val_eye_reg(4),
      I1 => s_delay_val_eye_reg(2),
      I2 => s_delay_val_eye_reg(1),
      I3 => s_delay_val_eye_reg(0),
      I4 => s_delay_val_eye_reg(3),
      O => \p_0_in__0\(3)
    );
\s_delay_val_eye[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => s_delay_val_eye_reg(4),
      I1 => s_delay_val_eye_reg(3),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(1),
      I4 => s_delay_val_eye_reg(0),
      O => \p_0_in__0\(4)
    );
\s_delay_val_eye_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \p_0_in__0\(0),
      Q => s_delay_val_eye_reg(0),
      R => reset_1p25_reg
    );
\s_delay_val_eye_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \p_0_in__0\(1),
      Q => s_delay_val_eye_reg(1),
      R => reset_1p25_reg
    );
\s_delay_val_eye_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \p_0_in__0\(2),
      Q => s_delay_val_eye_reg(2),
      R => reset_1p25_reg
    );
\s_delay_val_eye_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \p_0_in__0\(3),
      Q => s_delay_val_eye_reg(3),
      R => reset_1p25_reg
    );
\s_delay_val_eye_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \p_0_in__0\(4),
      Q => s_delay_val_eye_reg(4),
      R => reset_1p25_reg
    );
\s_delay_val_int[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101110101000"
    )
        port map (
      I0 => \s_state[2]_i_2__0_n_0\,
      I1 => reset_1p25_reg,
      I2 => s_delay_val_eye_reg(0),
      I3 => eye_run_reg_n_0,
      I4 => delay_change_reg_n_0,
      I5 => \^q\(0),
      O => \s_delay_val_int[0]_i_1__0_n_0\
    );
\s_delay_val_int[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101110101000"
    )
        port map (
      I0 => \s_state[2]_i_2__0_n_0\,
      I1 => reset_1p25_reg,
      I2 => s_delay_val_eye_reg(1),
      I3 => eye_run_reg_n_0,
      I4 => delay_change_reg_n_0,
      I5 => \^q\(1),
      O => \s_delay_val_int[1]_i_1__0_n_0\
    );
\s_delay_val_int[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22202223"
    )
        port map (
      I0 => s_delay_val_eye_reg(2),
      I1 => \s_state[2]_i_2__0_n_0\,
      I2 => delay_change_reg_n_0,
      I3 => eye_run_reg_n_0,
      I4 => \^q\(2),
      I5 => reset_1p25_reg,
      O => \s_delay_val_int[2]_i_1__0_n_0\
    );
\s_delay_val_int[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000A2FFFF"
    )
        port map (
      I0 => \s_delay_val_int[3]_i_2__0_n_0\,
      I1 => pd_min,
      I2 => delay_change_reg_n_0,
      I3 => dec_run_reg_n_0,
      I4 => \m_delay_val_int[4]_i_6_n_0\,
      I5 => reset_1p25_reg,
      O => \s_delay_val_int[3]_i_1__0_n_0\
    );
\s_delay_val_int[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF60006"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => delay_change_reg_n_0,
      I3 => eye_run_reg_n_0,
      I4 => s_delay_val_eye_reg(3),
      O => \s_delay_val_int[3]_i_2__0_n_0\
    );
\s_delay_val_int[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5050FF70"
    )
        port map (
      I0 => \s_state[3]_i_3__0_n_0\,
      I1 => s_state(4),
      I2 => \s_delay_val_int[4]_i_3__0_n_0\,
      I3 => \s_delay_val_int[4]_i_4__0_n_0\,
      I4 => \s_state[2]_i_2__0_n_0\,
      I5 => reset_1p25_reg,
      O => \s_delay_val_int[4]_i_1__0_n_0\
    );
\s_delay_val_int[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08A8A8A8A8080808"
    )
        port map (
      I0 => \s_delay_val_int[4]_i_5__0_n_0\,
      I1 => s_delay_val_eye_reg(4),
      I2 => \s_delay_val_int[4]_i_4__0_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \s_delay_val_int[4]_i_2__0_n_0\
    );
\s_delay_val_int[4]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(2),
      I2 => s_state(1),
      I3 => s_state(3),
      O => \s_delay_val_int[4]_i_3__0_n_0\
    );
\s_delay_val_int[4]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_change_reg_n_0,
      I1 => eye_run_reg_n_0,
      O => \s_delay_val_int[4]_i_4__0_n_0\
    );
\s_delay_val_int[4]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000101000001011"
    )
        port map (
      I0 => reset_1p25_reg,
      I1 => dec_run_reg_n_0,
      I2 => delay_change_reg_n_0,
      I3 => pd_min,
      I4 => inc_run_reg_n_0,
      I5 => pd_max,
      O => \s_delay_val_int[4]_i_5__0_n_0\
    );
\s_delay_val_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[4]_i_1__0_n_0\,
      D => \s_delay_val_int[0]_i_1__0_n_0\,
      Q => \sdataouta_reg[7]_0\(0),
      R => '0'
    );
\s_delay_val_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[4]_i_1__0_n_0\,
      D => \s_delay_val_int[1]_i_1__0_n_0\,
      Q => \sdataouta_reg[7]_0\(1),
      R => '0'
    );
\s_delay_val_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[4]_i_1__0_n_0\,
      D => \s_delay_val_int[2]_i_1__0_n_0\,
      Q => \sdataouta_reg[7]_0\(2),
      R => '0'
    );
\s_delay_val_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[4]_i_1__0_n_0\,
      D => \s_delay_val_int[3]_i_1__0_n_0\,
      Q => \sdataouta_reg[7]_0\(3),
      R => '0'
    );
\s_delay_val_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[4]_i_1__0_n_0\,
      D => \s_delay_val_int[4]_i_2__0_n_0\,
      Q => \sdataouta_reg[7]_0\(4),
      R => '0'
    );
\s_ovflw_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000002"
    )
        port map (
      I0 => \m_delay_val_int[4]_i_6_n_0\,
      I1 => pd_min,
      I2 => delay_change_reg_n_0,
      I3 => dec_run_reg_n_0,
      I4 => eye_run_reg_n_0,
      I5 => s_ovflw_reg_n_0,
      O => \s_ovflw_i_1__0_n_0\
    );
s_ovflw_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \s_ovflw_i_1__0_n_0\,
      Q => s_ovflw_reg_n_0,
      R => reset_1p25_reg
    );
\s_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555155555"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(1),
      I2 => s_state(2),
      I3 => s_state(3),
      I4 => s_state(4),
      I5 => \s_state[2]_i_2__0_n_0\,
      O => \s_state[0]_i_1__0_n_0\
    );
\s_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666666266666"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(1),
      I2 => s_state(2),
      I3 => s_state(3),
      I4 => s_state(4),
      I5 => \s_state[2]_i_2__0_n_0\,
      O => \s_state[1]_i_1__0_n_0\
    );
\s_state[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7878787878387878"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(1),
      I2 => s_state(2),
      I3 => s_state(3),
      I4 => s_state(4),
      I5 => \s_state[2]_i_2__0_n_0\,
      O => \s_state[2]_i_1__0_n_0\
    );
\s_state[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCCFE"
    )
        port map (
      I0 => pd_max,
      I1 => inc_run_reg_n_0,
      I2 => pd_min,
      I3 => delay_change_reg_n_0,
      I4 => dec_run_reg_n_0,
      O => \s_state[2]_i_2__0_n_0\
    );
\s_state[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A200A0FFFFFFFF"
    )
        port map (
      I0 => \m_delay_val_int[4]_i_6_n_0\,
      I1 => pd_min,
      I2 => delay_change_reg_n_0,
      I3 => dec_run_reg_n_0,
      I4 => eye_run_reg_n_0,
      I5 => \s_state[3]_i_3__0_n_0\,
      O => \s_state[3]_i_1__0_n_0\
    );
\s_state[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => s_state(3),
      I1 => s_state(1),
      I2 => s_state(0),
      I3 => s_state(2),
      O => \s_state[3]_i_2__0_n_0\
    );
\s_state[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F3AAAA00FFAAAA"
    )
        port map (
      I0 => \m_delay_val_int[4]_i_8__1_n_0\,
      I1 => pd_min,
      I2 => delay_change_reg_n_0,
      I3 => dec_run_reg_n_0,
      I4 => \m_delay_val_int[4]_i_6_n_0\,
      I5 => meq_min_reg_n_0,
      O => \s_state[3]_i_3__0_n_0\
    );
\s_state[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF7FFFF80000000"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(2),
      I2 => s_state(3),
      I3 => s_state(0),
      I4 => \s_state[4]_i_2__0_n_0\,
      I5 => s_state(4),
      O => \s_state[4]_i_1__0_n_0\
    );
\s_state[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000303000003032"
    )
        port map (
      I0 => eye_run_reg_n_0,
      I1 => dec_run_reg_n_0,
      I2 => delay_change_reg_n_0,
      I3 => pd_min,
      I4 => inc_run_reg_n_0,
      I5 => pd_max,
      O => \s_state[4]_i_2__0_n_0\
    );
\s_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_state[3]_i_1__0_n_0\,
      D => \s_state[0]_i_1__0_n_0\,
      Q => s_state(0),
      R => reset_1p25_reg
    );
\s_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_state[3]_i_1__0_n_0\,
      D => \s_state[1]_i_1__0_n_0\,
      Q => s_state(1),
      R => reset_1p25_reg
    );
\s_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_state[3]_i_1__0_n_0\,
      D => \s_state[2]_i_1__0_n_0\,
      Q => s_state(2),
      R => reset_1p25_reg
    );
\s_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_state[3]_i_1__0_n_0\,
      D => \s_state[3]_i_2__0_n_0\,
      Q => s_state(3),
      R => reset_1p25_reg
    );
\s_state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \s_state[4]_i_1__0_n_0\,
      Q => s_state(4),
      R => reset_1p25_reg
    );
\sdataouta_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => \sdataouta_reg_n_0_[0]\,
      R => '0'
    );
\sdataouta_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => p_0_in15_in,
      R => '0'
    );
\sdataouta_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => p_0_in28_in,
      R => '0'
    );
\sdataouta_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => p_0_in40_in,
      R => '0'
    );
\sdataouta_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(4),
      Q => p_0_in52_in,
      R => '0'
    );
\sdataouta_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(5),
      Q => p_0_in64_in,
      R => '0'
    );
\sdataouta_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(6),
      Q => p_0_in76_in,
      R => '0'
    );
\sdataouta_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(7),
      Q => p_0_in88_in,
      R => '0'
    );
sdataoutb_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in88_in,
      Q => sdataoutb,
      R => '0'
    );
\sdataoutc[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \sdataouta_reg_n_0_[0]\,
      I1 => s_delay_mux(0),
      I2 => p_0_in15_in,
      I3 => s_delay_mux(1),
      I4 => sdataoutb,
      O => \sdataoutc[0]_i_1__0_n_0\
    );
\sdataoutc[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in15_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in28_in,
      I3 => s_delay_mux(1),
      I4 => \sdataouta_reg_n_0_[0]\,
      O => \sdataoutc[1]_i_1__0_n_0\
    );
\sdataoutc[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in28_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in40_in,
      I3 => s_delay_mux(1),
      I4 => p_0_in15_in,
      O => \sdataoutc[2]_i_1__0_n_0\
    );
\sdataoutc[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in40_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in52_in,
      I3 => s_delay_mux(1),
      I4 => p_0_in28_in,
      O => \sdataoutc[3]_i_1__0_n_0\
    );
\sdataoutc[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in52_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in64_in,
      I3 => s_delay_mux(1),
      I4 => p_0_in40_in,
      O => \sdataoutc[4]_i_1__0_n_0\
    );
\sdataoutc[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in64_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in76_in,
      I3 => s_delay_mux(1),
      I4 => p_0_in52_in,
      O => \sdataoutc[5]_i_1__0_n_0\
    );
\sdataoutc[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in76_in,
      I1 => s_delay_mux(0),
      I2 => p_0_in88_in,
      I3 => s_delay_mux(1),
      I4 => p_0_in64_in,
      O => \sdataoutc[6]_i_1__0_n_0\
    );
\sdataoutc[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in88_in,
      I1 => s_delay_mux(0),
      I2 => D(0),
      I3 => s_delay_mux(1),
      I4 => p_0_in76_in,
      O => \sdataoutc[7]_i_1__0_n_0\
    );
\sdataoutc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \sdataoutc[0]_i_1__0_n_0\,
      Q => sdataoutc(0),
      R => '0'
    );
\sdataoutc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \sdataoutc[1]_i_1__0_n_0\,
      Q => sdataoutc(1),
      R => '0'
    );
\sdataoutc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \sdataoutc[2]_i_1__0_n_0\,
      Q => sdataoutc(2),
      R => '0'
    );
\sdataoutc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \sdataoutc[3]_i_1__0_n_0\,
      Q => sdataoutc(3),
      R => '0'
    );
\sdataoutc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \sdataoutc[4]_i_1__0_n_0\,
      Q => sdataoutc(4),
      R => '0'
    );
\sdataoutc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \sdataoutc[5]_i_1__0_n_0\,
      Q => sdataoutc(5),
      R => '0'
    );
\sdataoutc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \sdataoutc[6]_i_1__0_n_0\,
      Q => sdataoutc(6),
      R => '0'
    );
\sdataoutc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^e\(0),
      D => \sdataoutc[7]_i_1__0_n_0\,
      Q => sdataoutc(7),
      R => '0'
    );
\shifter[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABAA"
    )
        port map (
      I0 => shifter(31),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[0]_i_1__0_n_0\
    );
\shifter[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(9),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[10]_i_1__0_n_0\
    );
\shifter[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(10),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[11]_i_1__0_n_0\
    );
\shifter[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(11),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[12]_i_1__0_n_0\
    );
\shifter[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(12),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[13]_i_1__0_n_0\
    );
\shifter[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(13),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[14]_i_1__0_n_0\
    );
\shifter[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(14),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[15]_i_1__0_n_0\
    );
\shifter[16]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(15),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[16]_i_1__0_n_0\
    );
\shifter[17]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(16),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[17]_i_1__0_n_0\
    );
\shifter[18]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(17),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[18]_i_1__0_n_0\
    );
\shifter[19]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(18),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[19]_i_1__0_n_0\
    );
\shifter[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(0),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[1]_i_1__0_n_0\
    );
\shifter[20]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(19),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[20]_i_1__0_n_0\
    );
\shifter[21]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(20),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[21]_i_1__0_n_0\
    );
\shifter[22]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(21),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[22]_i_1__0_n_0\
    );
\shifter[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(22),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[23]_i_1__0_n_0\
    );
\shifter[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(23),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[24]_i_1__0_n_0\
    );
\shifter[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(24),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[25]_i_1__0_n_0\
    );
\shifter[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(25),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[26]_i_1__0_n_0\
    );
\shifter[27]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(26),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[27]_i_1__0_n_0\
    );
\shifter[28]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(27),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[28]_i_1__0_n_0\
    );
\shifter[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(28),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[29]_i_1__0_n_0\
    );
\shifter[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(1),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[2]_i_1__0_n_0\
    );
\shifter[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(29),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[30]_i_1__0_n_0\
    );
\shifter[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(30),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[31]_i_1__0_n_0\
    );
\shifter[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(2),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[3]_i_1__0_n_0\
    );
\shifter[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(3),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[4]_i_1__0_n_0\
    );
\shifter[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(4),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[5]_i_1__0_n_0\
    );
\shifter[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(5),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[6]_i_1__0_n_0\
    );
\shifter[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(6),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[7]_i_1__0_n_0\
    );
\shifter[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(7),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[8]_i_1__0_n_0\
    );
\shifter[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => shifter(8),
      I1 => s_delay_val_eye_reg(4),
      I2 => s_delay_val_eye_reg(2),
      I3 => s_delay_val_eye_reg(3),
      I4 => s_delay_val_eye_reg(0),
      I5 => s_delay_val_eye_reg(1),
      O => \shifter[9]_i_1__0_n_0\
    );
\shifter_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[0]_i_1__0_n_0\,
      Q => shifter(0),
      S => reset_1p25_reg
    );
\shifter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[10]_i_1__0_n_0\,
      Q => shifter(10),
      R => reset_1p25_reg
    );
\shifter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[11]_i_1__0_n_0\,
      Q => shifter(11),
      R => reset_1p25_reg
    );
\shifter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[12]_i_1__0_n_0\,
      Q => shifter(12),
      R => reset_1p25_reg
    );
\shifter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[13]_i_1__0_n_0\,
      Q => shifter(13),
      R => reset_1p25_reg
    );
\shifter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[14]_i_1__0_n_0\,
      Q => shifter(14),
      R => reset_1p25_reg
    );
\shifter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[15]_i_1__0_n_0\,
      Q => shifter(15),
      R => reset_1p25_reg
    );
\shifter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[16]_i_1__0_n_0\,
      Q => shifter(16),
      R => reset_1p25_reg
    );
\shifter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[17]_i_1__0_n_0\,
      Q => shifter(17),
      R => reset_1p25_reg
    );
\shifter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[18]_i_1__0_n_0\,
      Q => shifter(18),
      R => reset_1p25_reg
    );
\shifter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[19]_i_1__0_n_0\,
      Q => shifter(19),
      R => reset_1p25_reg
    );
\shifter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[1]_i_1__0_n_0\,
      Q => shifter(1),
      R => reset_1p25_reg
    );
\shifter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[20]_i_1__0_n_0\,
      Q => shifter(20),
      R => reset_1p25_reg
    );
\shifter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[21]_i_1__0_n_0\,
      Q => shifter(21),
      R => reset_1p25_reg
    );
\shifter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[22]_i_1__0_n_0\,
      Q => shifter(22),
      R => reset_1p25_reg
    );
\shifter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[23]_i_1__0_n_0\,
      Q => shifter(23),
      R => reset_1p25_reg
    );
\shifter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[24]_i_1__0_n_0\,
      Q => shifter(24),
      R => reset_1p25_reg
    );
\shifter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[25]_i_1__0_n_0\,
      Q => shifter(25),
      R => reset_1p25_reg
    );
\shifter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[26]_i_1__0_n_0\,
      Q => shifter(26),
      R => reset_1p25_reg
    );
\shifter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[27]_i_1__0_n_0\,
      Q => shifter(27),
      R => reset_1p25_reg
    );
\shifter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[28]_i_1__0_n_0\,
      Q => shifter(28),
      R => reset_1p25_reg
    );
\shifter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[29]_i_1__0_n_0\,
      Q => shifter(29),
      R => reset_1p25_reg
    );
\shifter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[2]_i_1__0_n_0\,
      Q => shifter(2),
      R => reset_1p25_reg
    );
\shifter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[30]_i_1__0_n_0\,
      Q => shifter(30),
      R => reset_1p25_reg
    );
\shifter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[31]_i_1__0_n_0\,
      Q => shifter(31),
      R => reset_1p25_reg
    );
\shifter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[3]_i_1__0_n_0\,
      Q => shifter(3),
      R => reset_1p25_reg
    );
\shifter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[4]_i_1__0_n_0\,
      Q => shifter(4),
      R => reset_1p25_reg
    );
\shifter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[5]_i_1__0_n_0\,
      Q => shifter(5),
      R => reset_1p25_reg
    );
\shifter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[6]_i_1__0_n_0\,
      Q => shifter(6),
      R => reset_1p25_reg
    );
\shifter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[7]_i_1__0_n_0\,
      Q => shifter(7),
      R => reset_1p25_reg
    );
\shifter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[8]_i_1__0_n_0\,
      Q => shifter(8),
      R => reset_1p25_reg
    );
\shifter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s_delay_val_eye,
      D => \shifter[9]_i_1__0_n_0\,
      Q => shifter(9),
      R => reset_1p25_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10 is
  port (
    read_enable_oclk : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rcvd_ctkn_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    \data_out_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_clk : in STD_LOGIC;
    reset_1p25 : in STD_LOGIC;
    read_reset_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10 : entity is "gearbox_8_to_10";
end overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10 is
  signal \FSM_sequential_read_addra[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_read_addra[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_read_addra[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \dataout[0]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[1]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[2]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[3]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[4]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[5]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[6]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[7]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[8]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[9]_i_1_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_4_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_6_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ramouta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rcvd_ctkn_i_2__1_n_0\ : STD_LOGIC;
  signal \rcvd_ctkn_i_3__1_n_0\ : STD_LOGIC;
  signal read_addra : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of read_addra : signal is "yes";
  signal read_addra_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal read_addrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \read_addrb_reg_n_0_[0]\ : STD_LOGIC;
  signal \read_addrb_reg_n_0_[1]\ : STD_LOGIC;
  signal \read_addrb_reg_n_0_[2]\ : STD_LOGIC;
  signal \read_addrb_reg_n_0_[3]\ : STD_LOGIC;
  signal read_enable : STD_LOGIC;
  signal \read_enable_i_1__1_n_0\ : STD_LOGIC;
  signal write_addr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \write_addr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \write_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_loop2[0].ram_inst_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[0].ram_inst_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[1].ram_inst_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[1].ram_inst_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[2].ram_inst_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[2].ram_inst_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[3].ram_inst_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[3].ram_inst_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_read_addra_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_read_addra_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_read_addra_reg[2]\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \loop2[0].ram_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \loop2[1].ram_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \loop2[2].ram_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \loop2[3].ram_inst\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \read_enable_i_1__1\ : label is "soft_lutpair233";
  attribute SOFT_HLUTNM of \write_addr[1]_i_1\ : label is "soft_lutpair233";
  attribute SOFT_HLUTNM of \write_addr[2]_i_1\ : label is "soft_lutpair234";
  attribute SOFT_HLUTNM of \write_addr[3]_i_1\ : label is "soft_lutpair234";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
\FSM_sequential_read_addra[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_addra(0),
      O => \FSM_sequential_read_addra[0]_i_1__1_n_0\
    );
\FSM_sequential_read_addra[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_addra(0),
      I1 => read_addra(1),
      O => \FSM_sequential_read_addra[1]_i_1__1_n_0\
    );
\FSM_sequential_read_addra[2]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(0),
      I2 => read_addra(2),
      O => \FSM_sequential_read_addra[2]_i_2__1_n_0\
    );
\FSM_sequential_read_addra_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \FSM_sequential_read_addra[0]_i_1__1_n_0\,
      Q => read_addra(0),
      R => read_reset_reg(0)
    );
\FSM_sequential_read_addra_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \FSM_sequential_read_addra[1]_i_1__1_n_0\,
      Q => read_addra(1),
      R => read_reset_reg(0)
    );
\FSM_sequential_read_addra_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \FSM_sequential_read_addra[2]_i_2__1_n_0\,
      Q => read_addra(2),
      R => read_reset_reg(0)
    );
\dataout[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ramouta(6),
      I1 => ramouta(4),
      I2 => read_addra(1),
      I3 => ramouta(2),
      I4 => read_addra(0),
      I5 => ramouta(0),
      O => \dataout[0]_i_1_n_0\
    );
\dataout[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ramouta(7),
      I1 => ramouta(5),
      I2 => read_addra(1),
      I3 => ramouta(3),
      I4 => read_addra(0),
      I5 => ramouta(1),
      O => \dataout[1]_i_1_n_0\
    );
\dataout[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_6_out(0),
      I1 => ramouta(6),
      I2 => read_addra(1),
      I3 => ramouta(4),
      I4 => read_addra(0),
      I5 => ramouta(2),
      O => \dataout[2]_i_1_n_0\
    );
\dataout[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_6_out(1),
      I1 => ramouta(7),
      I2 => read_addra(1),
      I3 => ramouta(5),
      I4 => read_addra(0),
      I5 => ramouta(3),
      O => \dataout[3]_i_1_n_0\
    );
\dataout[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_4_out(0),
      I1 => p_6_out(0),
      I2 => read_addra(1),
      I3 => ramouta(6),
      I4 => read_addra(0),
      I5 => ramouta(4),
      O => \dataout[4]_i_1_n_0\
    );
\dataout[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_4_out(1),
      I1 => p_6_out(1),
      I2 => read_addra(1),
      I3 => ramouta(7),
      I4 => read_addra(0),
      I5 => ramouta(5),
      O => \dataout[5]_i_1_n_0\
    );
\dataout[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_2_out(0),
      I1 => p_4_out(0),
      I2 => read_addra(1),
      I3 => p_6_out(0),
      I4 => read_addra(0),
      I5 => ramouta(6),
      O => \dataout[6]_i_1_n_0\
    );
\dataout[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_2_out(1),
      I1 => p_4_out(1),
      I2 => read_addra(1),
      I3 => p_6_out(1),
      I4 => read_addra(0),
      I5 => ramouta(7),
      O => \dataout[7]_i_1_n_0\
    );
\dataout[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_out(0),
      I1 => p_2_out(0),
      I2 => read_addra(1),
      I3 => p_4_out(0),
      I4 => read_addra(0),
      I5 => p_6_out(0),
      O => \dataout[8]_i_1_n_0\
    );
\dataout[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_out(1),
      I1 => p_2_out(1),
      I2 => read_addra(1),
      I3 => p_4_out(1),
      I4 => read_addra(0),
      I5 => p_6_out(1),
      O => \dataout[9]_i_1_n_0\
    );
\dataout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\dataout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[1]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\dataout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[2]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\dataout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[3]_i_1_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\dataout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[4]_i_1_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\dataout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[5]_i_1_n_0\,
      Q => \^q\(5),
      R => '0'
    );
\dataout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[6]_i_1_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\dataout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[7]_i_1_n_0\,
      Q => \^q\(7),
      R => '0'
    );
\dataout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[8]_i_1_n_0\,
      Q => \^q\(8),
      R => '0'
    );
\dataout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[9]_i_1_n_0\,
      Q => \^q\(9),
      R => '0'
    );
\loop2[0].ram_inst\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => read_addra_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3) => \read_addrb_reg_n_0_[3]\,
      ADDRB(2) => \read_addrb_reg_n_0_[2]\,
      ADDRB(1) => \read_addrb_reg_n_0_[1]\,
      ADDRB(0) => \read_addrb_reg_n_0_[0]\,
      ADDRC(4 downto 0) => B"00000",
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => write_addr(3 downto 0),
      DIA(1 downto 0) => \data_out_reg[7]\(1 downto 0),
      DIB(1 downto 0) => \data_out_reg[7]\(1 downto 0),
      DIC(1 downto 0) => \data_out_reg[7]\(1 downto 0),
      DID(1 downto 0) => \data_out_reg[7]\(1 downto 0),
      DOA(1 downto 0) => ramouta(1 downto 0),
      DOB(1 downto 0) => p_6_out(1 downto 0),
      DOC(1 downto 0) => \NLW_loop2[0].ram_inst_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_loop2[0].ram_inst_DOD_UNCONNECTED\(1 downto 0),
      WCLK => CLK,
      WE => '1'
    );
\loop2[0].ram_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(0),
      I2 => read_addra(2),
      O => read_addra_reg(3)
    );
\loop2[0].ram_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => read_addra(2),
      I1 => read_addra(1),
      I2 => read_addra(0),
      O => read_addra_reg(2)
    );
\loop2[0].ram_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => read_addra(2),
      I1 => read_addra(0),
      I2 => read_addra(1),
      O => read_addra_reg(1)
    );
\loop2[0].ram_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_addra(0),
      I1 => read_addra(2),
      O => read_addra_reg(0)
    );
\loop2[1].ram_inst\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => read_addra_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3) => \read_addrb_reg_n_0_[3]\,
      ADDRB(2) => \read_addrb_reg_n_0_[2]\,
      ADDRB(1) => \read_addrb_reg_n_0_[1]\,
      ADDRB(0) => \read_addrb_reg_n_0_[0]\,
      ADDRC(4 downto 0) => B"00000",
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => write_addr(3 downto 0),
      DIA(1 downto 0) => \data_out_reg[7]\(3 downto 2),
      DIB(1 downto 0) => \data_out_reg[7]\(3 downto 2),
      DIC(1 downto 0) => \data_out_reg[7]\(3 downto 2),
      DID(1 downto 0) => \data_out_reg[7]\(3 downto 2),
      DOA(1 downto 0) => ramouta(3 downto 2),
      DOB(1 downto 0) => p_4_out(1 downto 0),
      DOC(1 downto 0) => \NLW_loop2[1].ram_inst_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_loop2[1].ram_inst_DOD_UNCONNECTED\(1 downto 0),
      WCLK => CLK,
      WE => '1'
    );
\loop2[2].ram_inst\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => read_addra_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3) => \read_addrb_reg_n_0_[3]\,
      ADDRB(2) => \read_addrb_reg_n_0_[2]\,
      ADDRB(1) => \read_addrb_reg_n_0_[1]\,
      ADDRB(0) => \read_addrb_reg_n_0_[0]\,
      ADDRC(4 downto 0) => B"00000",
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => write_addr(3 downto 0),
      DIA(1 downto 0) => \data_out_reg[7]\(5 downto 4),
      DIB(1 downto 0) => \data_out_reg[7]\(5 downto 4),
      DIC(1 downto 0) => \data_out_reg[7]\(5 downto 4),
      DID(1 downto 0) => \data_out_reg[7]\(5 downto 4),
      DOA(1 downto 0) => ramouta(5 downto 4),
      DOB(1 downto 0) => p_2_out(1 downto 0),
      DOC(1 downto 0) => \NLW_loop2[2].ram_inst_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_loop2[2].ram_inst_DOD_UNCONNECTED\(1 downto 0),
      WCLK => CLK,
      WE => '1'
    );
\loop2[3].ram_inst\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => read_addra_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3) => \read_addrb_reg_n_0_[3]\,
      ADDRB(2) => \read_addrb_reg_n_0_[2]\,
      ADDRB(1) => \read_addrb_reg_n_0_[1]\,
      ADDRB(0) => \read_addrb_reg_n_0_[0]\,
      ADDRC(4 downto 0) => B"00000",
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => write_addr(3 downto 0),
      DIA(1 downto 0) => \data_out_reg[7]\(7 downto 6),
      DIB(1 downto 0) => \data_out_reg[7]\(7 downto 6),
      DIC(1 downto 0) => \data_out_reg[7]\(7 downto 6),
      DID(1 downto 0) => \data_out_reg[7]\(7 downto 6),
      DOA(1 downto 0) => ramouta(7 downto 6),
      DOB(1 downto 0) => p_0_out(1 downto 0),
      DOC(1 downto 0) => \NLW_loop2[3].ram_inst_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_loop2[3].ram_inst_DOD_UNCONNECTED\(1 downto 0),
      WCLK => CLK,
      WE => '1'
    );
\rcvd_ctkn_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80800300"
    )
        port map (
      I0 => \rcvd_ctkn_i_2__1_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(8),
      I3 => \rcvd_ctkn_i_3__1_n_0\,
      I4 => \^q\(4),
      O => rcvd_ctkn_reg
    );
\rcvd_ctkn_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(5),
      I4 => \^q\(7),
      I5 => \^q\(2),
      O => \rcvd_ctkn_i_2__1_n_0\
    );
\rcvd_ctkn_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(5),
      I4 => \^q\(7),
      I5 => \^q\(2),
      O => \rcvd_ctkn_i_3__1_n_0\
    );
\read_addrb[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(0),
      I2 => read_addra(2),
      O => read_addrb(0)
    );
\read_addrb[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(0),
      I2 => read_addra(2),
      O => read_addrb(1)
    );
\read_addrb[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(2),
      I2 => read_addra(0),
      O => read_addrb(2)
    );
\read_addrb[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => read_addra(2),
      I1 => read_addra(1),
      I2 => read_addra(0),
      O => read_addrb(3)
    );
\read_addrb_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => rx_clk,
      CE => '1',
      D => read_addrb(0),
      Q => \read_addrb_reg_n_0_[0]\,
      S => read_reset_reg(0)
    );
\read_addrb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => read_addrb(1),
      Q => \read_addrb_reg_n_0_[1]\,
      R => read_reset_reg(0)
    );
\read_addrb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => read_addrb(2),
      Q => \read_addrb_reg_n_0_[2]\,
      R => read_reset_reg(0)
    );
\read_addrb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => read_addrb(3),
      Q => \read_addrb_reg_n_0_[3]\,
      R => read_reset_reg(0)
    );
\read_enable_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => write_addr(2),
      I1 => write_addr(3),
      I2 => write_addr(1),
      I3 => write_addr(0),
      I4 => read_enable,
      O => \read_enable_i_1__1_n_0\
    );
read_enable_oclk_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => read_enable,
      Q => read_enable_oclk,
      R => '0'
    );
read_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \read_enable_i_1__1_n_0\,
      Q => read_enable,
      R => reset_1p25
    );
\write_addr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_addr(0),
      O => \write_addr[0]_i_1__1_n_0\
    );
\write_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C3C"
    )
        port map (
      I0 => write_addr(2),
      I1 => write_addr(1),
      I2 => write_addr(0),
      I3 => write_addr(3),
      O => \write_addr[1]_i_1_n_0\
    );
\write_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => write_addr(2),
      I1 => write_addr(1),
      I2 => write_addr(0),
      O => \write_addr[2]_i_1_n_0\
    );
\write_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F80"
    )
        port map (
      I0 => write_addr(2),
      I1 => write_addr(1),
      I2 => write_addr(0),
      I3 => write_addr(3),
      O => \write_addr[3]_i_1_n_0\
    );
\write_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[0]_i_1__1_n_0\,
      Q => write_addr(0),
      R => reset_1p25
    );
\write_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[1]_i_1_n_0\,
      Q => write_addr(1),
      R => reset_1p25
    );
\write_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[2]_i_1_n_0\,
      Q => write_addr(2),
      R => reset_1p25
    );
\write_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[3]_i_1_n_0\,
      Q => write_addr(3),
      R => reset_1p25
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10_14 is
  port (
    read_enable_oclk : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rcvd_ctkn_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    \data_out_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_clk : in STD_LOGIC;
    reset_1p25 : in STD_LOGIC;
    read_reset_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10_14 : entity is "gearbox_8_to_10";
end overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10_14;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10_14 is
  signal \FSM_sequential_read_addra[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_read_addra[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_read_addra[2]_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \dataout[0]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[1]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[2]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[3]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[4]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[5]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[6]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[7]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[8]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[9]_i_1_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_4_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_6_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ramouta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rcvd_ctkn_i_2_n_0 : STD_LOGIC;
  signal rcvd_ctkn_i_3_n_0 : STD_LOGIC;
  signal read_addra : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of read_addra : signal is "yes";
  signal read_addra_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal read_addrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \read_addrb_reg_n_0_[0]\ : STD_LOGIC;
  signal \read_addrb_reg_n_0_[1]\ : STD_LOGIC;
  signal \read_addrb_reg_n_0_[2]\ : STD_LOGIC;
  signal \read_addrb_reg_n_0_[3]\ : STD_LOGIC;
  signal read_enable : STD_LOGIC;
  signal read_enable_i_1_n_0 : STD_LOGIC;
  signal write_addr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \write_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_loop2[0].ram_inst_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[0].ram_inst_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[1].ram_inst_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[1].ram_inst_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[2].ram_inst_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[2].ram_inst_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[3].ram_inst_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[3].ram_inst_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_read_addra_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_read_addra_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_read_addra_reg[2]\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \loop2[0].ram_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \loop2[1].ram_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \loop2[2].ram_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \loop2[3].ram_inst\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of read_enable_i_1 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \write_addr[1]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \write_addr[2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \write_addr[3]_i_1\ : label is "soft_lutpair71";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
\FSM_sequential_read_addra[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_addra(0),
      O => \FSM_sequential_read_addra[0]_i_1_n_0\
    );
\FSM_sequential_read_addra[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_addra(0),
      I1 => read_addra(1),
      O => \FSM_sequential_read_addra[1]_i_1_n_0\
    );
\FSM_sequential_read_addra[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(0),
      I2 => read_addra(2),
      O => \FSM_sequential_read_addra[2]_i_2_n_0\
    );
\FSM_sequential_read_addra_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \FSM_sequential_read_addra[0]_i_1_n_0\,
      Q => read_addra(0),
      R => read_reset_reg(0)
    );
\FSM_sequential_read_addra_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \FSM_sequential_read_addra[1]_i_1_n_0\,
      Q => read_addra(1),
      R => read_reset_reg(0)
    );
\FSM_sequential_read_addra_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \FSM_sequential_read_addra[2]_i_2_n_0\,
      Q => read_addra(2),
      R => read_reset_reg(0)
    );
\dataout[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ramouta(6),
      I1 => ramouta(4),
      I2 => read_addra(1),
      I3 => ramouta(2),
      I4 => read_addra(0),
      I5 => ramouta(0),
      O => \dataout[0]_i_1_n_0\
    );
\dataout[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ramouta(7),
      I1 => ramouta(5),
      I2 => read_addra(1),
      I3 => ramouta(3),
      I4 => read_addra(0),
      I5 => ramouta(1),
      O => \dataout[1]_i_1_n_0\
    );
\dataout[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_6_out(0),
      I1 => ramouta(6),
      I2 => read_addra(1),
      I3 => ramouta(4),
      I4 => read_addra(0),
      I5 => ramouta(2),
      O => \dataout[2]_i_1_n_0\
    );
\dataout[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_6_out(1),
      I1 => ramouta(7),
      I2 => read_addra(1),
      I3 => ramouta(5),
      I4 => read_addra(0),
      I5 => ramouta(3),
      O => \dataout[3]_i_1_n_0\
    );
\dataout[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_4_out(0),
      I1 => p_6_out(0),
      I2 => read_addra(1),
      I3 => ramouta(6),
      I4 => read_addra(0),
      I5 => ramouta(4),
      O => \dataout[4]_i_1_n_0\
    );
\dataout[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_4_out(1),
      I1 => p_6_out(1),
      I2 => read_addra(1),
      I3 => ramouta(7),
      I4 => read_addra(0),
      I5 => ramouta(5),
      O => \dataout[5]_i_1_n_0\
    );
\dataout[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_2_out(0),
      I1 => p_4_out(0),
      I2 => read_addra(1),
      I3 => p_6_out(0),
      I4 => read_addra(0),
      I5 => ramouta(6),
      O => \dataout[6]_i_1_n_0\
    );
\dataout[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_2_out(1),
      I1 => p_4_out(1),
      I2 => read_addra(1),
      I3 => p_6_out(1),
      I4 => read_addra(0),
      I5 => ramouta(7),
      O => \dataout[7]_i_1_n_0\
    );
\dataout[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_out(0),
      I1 => p_2_out(0),
      I2 => read_addra(1),
      I3 => p_4_out(0),
      I4 => read_addra(0),
      I5 => p_6_out(0),
      O => \dataout[8]_i_1_n_0\
    );
\dataout[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_out(1),
      I1 => p_2_out(1),
      I2 => read_addra(1),
      I3 => p_4_out(1),
      I4 => read_addra(0),
      I5 => p_6_out(1),
      O => \dataout[9]_i_1_n_0\
    );
\dataout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\dataout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[1]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\dataout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[2]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\dataout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[3]_i_1_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\dataout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[4]_i_1_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\dataout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[5]_i_1_n_0\,
      Q => \^q\(5),
      R => '0'
    );
\dataout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[6]_i_1_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\dataout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[7]_i_1_n_0\,
      Q => \^q\(7),
      R => '0'
    );
\dataout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[8]_i_1_n_0\,
      Q => \^q\(8),
      R => '0'
    );
\dataout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[9]_i_1_n_0\,
      Q => \^q\(9),
      R => '0'
    );
\loop2[0].ram_inst\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => read_addra_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3) => \read_addrb_reg_n_0_[3]\,
      ADDRB(2) => \read_addrb_reg_n_0_[2]\,
      ADDRB(1) => \read_addrb_reg_n_0_[1]\,
      ADDRB(0) => \read_addrb_reg_n_0_[0]\,
      ADDRC(4 downto 0) => B"00000",
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => write_addr(3 downto 0),
      DIA(1 downto 0) => \data_out_reg[7]\(1 downto 0),
      DIB(1 downto 0) => \data_out_reg[7]\(1 downto 0),
      DIC(1 downto 0) => \data_out_reg[7]\(1 downto 0),
      DID(1 downto 0) => \data_out_reg[7]\(1 downto 0),
      DOA(1 downto 0) => ramouta(1 downto 0),
      DOB(1 downto 0) => p_6_out(1 downto 0),
      DOC(1 downto 0) => \NLW_loop2[0].ram_inst_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_loop2[0].ram_inst_DOD_UNCONNECTED\(1 downto 0),
      WCLK => CLK,
      WE => '1'
    );
\loop2[0].ram_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(0),
      I2 => read_addra(2),
      O => read_addra_reg(3)
    );
\loop2[0].ram_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => read_addra(2),
      I1 => read_addra(1),
      I2 => read_addra(0),
      O => read_addra_reg(2)
    );
\loop2[0].ram_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => read_addra(2),
      I1 => read_addra(0),
      I2 => read_addra(1),
      O => read_addra_reg(1)
    );
\loop2[0].ram_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_addra(0),
      I1 => read_addra(2),
      O => read_addra_reg(0)
    );
\loop2[1].ram_inst\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => read_addra_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3) => \read_addrb_reg_n_0_[3]\,
      ADDRB(2) => \read_addrb_reg_n_0_[2]\,
      ADDRB(1) => \read_addrb_reg_n_0_[1]\,
      ADDRB(0) => \read_addrb_reg_n_0_[0]\,
      ADDRC(4 downto 0) => B"00000",
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => write_addr(3 downto 0),
      DIA(1 downto 0) => \data_out_reg[7]\(3 downto 2),
      DIB(1 downto 0) => \data_out_reg[7]\(3 downto 2),
      DIC(1 downto 0) => \data_out_reg[7]\(3 downto 2),
      DID(1 downto 0) => \data_out_reg[7]\(3 downto 2),
      DOA(1 downto 0) => ramouta(3 downto 2),
      DOB(1 downto 0) => p_4_out(1 downto 0),
      DOC(1 downto 0) => \NLW_loop2[1].ram_inst_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_loop2[1].ram_inst_DOD_UNCONNECTED\(1 downto 0),
      WCLK => CLK,
      WE => '1'
    );
\loop2[2].ram_inst\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => read_addra_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3) => \read_addrb_reg_n_0_[3]\,
      ADDRB(2) => \read_addrb_reg_n_0_[2]\,
      ADDRB(1) => \read_addrb_reg_n_0_[1]\,
      ADDRB(0) => \read_addrb_reg_n_0_[0]\,
      ADDRC(4 downto 0) => B"00000",
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => write_addr(3 downto 0),
      DIA(1 downto 0) => \data_out_reg[7]\(5 downto 4),
      DIB(1 downto 0) => \data_out_reg[7]\(5 downto 4),
      DIC(1 downto 0) => \data_out_reg[7]\(5 downto 4),
      DID(1 downto 0) => \data_out_reg[7]\(5 downto 4),
      DOA(1 downto 0) => ramouta(5 downto 4),
      DOB(1 downto 0) => p_2_out(1 downto 0),
      DOC(1 downto 0) => \NLW_loop2[2].ram_inst_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_loop2[2].ram_inst_DOD_UNCONNECTED\(1 downto 0),
      WCLK => CLK,
      WE => '1'
    );
\loop2[3].ram_inst\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => read_addra_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3) => \read_addrb_reg_n_0_[3]\,
      ADDRB(2) => \read_addrb_reg_n_0_[2]\,
      ADDRB(1) => \read_addrb_reg_n_0_[1]\,
      ADDRB(0) => \read_addrb_reg_n_0_[0]\,
      ADDRC(4 downto 0) => B"00000",
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => write_addr(3 downto 0),
      DIA(1 downto 0) => \data_out_reg[7]\(7 downto 6),
      DIB(1 downto 0) => \data_out_reg[7]\(7 downto 6),
      DIC(1 downto 0) => \data_out_reg[7]\(7 downto 6),
      DID(1 downto 0) => \data_out_reg[7]\(7 downto 6),
      DOA(1 downto 0) => ramouta(7 downto 6),
      DOB(1 downto 0) => p_0_out(1 downto 0),
      DOC(1 downto 0) => \NLW_loop2[3].ram_inst_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_loop2[3].ram_inst_DOD_UNCONNECTED\(1 downto 0),
      WCLK => CLK,
      WE => '1'
    );
rcvd_ctkn_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80800300"
    )
        port map (
      I0 => rcvd_ctkn_i_2_n_0,
      I1 => \^q\(6),
      I2 => \^q\(8),
      I3 => rcvd_ctkn_i_3_n_0,
      I4 => \^q\(4),
      O => rcvd_ctkn_reg
    );
rcvd_ctkn_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(5),
      I4 => \^q\(7),
      I5 => \^q\(2),
      O => rcvd_ctkn_i_2_n_0
    );
rcvd_ctkn_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(5),
      I4 => \^q\(7),
      I5 => \^q\(2),
      O => rcvd_ctkn_i_3_n_0
    );
\read_addrb[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(0),
      I2 => read_addra(2),
      O => read_addrb(0)
    );
\read_addrb[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(0),
      I2 => read_addra(2),
      O => read_addrb(1)
    );
\read_addrb[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(2),
      I2 => read_addra(0),
      O => read_addrb(2)
    );
\read_addrb[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => read_addra(2),
      I1 => read_addra(1),
      I2 => read_addra(0),
      O => read_addrb(3)
    );
\read_addrb_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => rx_clk,
      CE => '1',
      D => read_addrb(0),
      Q => \read_addrb_reg_n_0_[0]\,
      S => read_reset_reg(0)
    );
\read_addrb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => read_addrb(1),
      Q => \read_addrb_reg_n_0_[1]\,
      R => read_reset_reg(0)
    );
\read_addrb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => read_addrb(2),
      Q => \read_addrb_reg_n_0_[2]\,
      R => read_reset_reg(0)
    );
\read_addrb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => read_addrb(3),
      Q => \read_addrb_reg_n_0_[3]\,
      R => read_reset_reg(0)
    );
read_enable_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => write_addr(2),
      I1 => write_addr(3),
      I2 => write_addr(1),
      I3 => write_addr(0),
      I4 => read_enable,
      O => read_enable_i_1_n_0
    );
read_enable_oclk_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => read_enable,
      Q => read_enable_oclk,
      R => '0'
    );
read_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => read_enable_i_1_n_0,
      Q => read_enable,
      R => reset_1p25
    );
\write_addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_addr(0),
      O => \write_addr[0]_i_1_n_0\
    );
\write_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C3C"
    )
        port map (
      I0 => write_addr(2),
      I1 => write_addr(1),
      I2 => write_addr(0),
      I3 => write_addr(3),
      O => \write_addr[1]_i_1_n_0\
    );
\write_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => write_addr(2),
      I1 => write_addr(1),
      I2 => write_addr(0),
      O => \write_addr[2]_i_1_n_0\
    );
\write_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F80"
    )
        port map (
      I0 => write_addr(2),
      I1 => write_addr(1),
      I2 => write_addr(0),
      I3 => write_addr(3),
      O => \write_addr[3]_i_1_n_0\
    );
\write_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[0]_i_1_n_0\,
      Q => write_addr(0),
      R => reset_1p25
    );
\write_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[1]_i_1_n_0\,
      Q => write_addr(1),
      R => reset_1p25
    );
\write_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[2]_i_1_n_0\,
      Q => write_addr(2),
      R => reset_1p25
    );
\write_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[3]_i_1_n_0\,
      Q => write_addr(3),
      R => reset_1p25
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10_8 is
  port (
    \FSM_sequential_read_addra_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_read_addra_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rcvd_ctkn_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    \data_out_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_clk : in STD_LOGIC;
    reset_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    read_enable_oclk : in STD_LOGIC;
    read_enable_oclk_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10_8 : entity is "gearbox_8_to_10";
end overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10_8;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10_8 is
  signal \FSM_sequential_read_addra[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_read_addra[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_read_addra[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_read_addra[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \dataout[0]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[1]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[2]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[3]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[4]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[5]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[6]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[7]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[8]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[9]_i_1_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_4_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_6_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ramouta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rcvd_ctkn_i_2__0_n_0\ : STD_LOGIC;
  signal \rcvd_ctkn_i_3__0_n_0\ : STD_LOGIC;
  signal read_addra : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of read_addra : signal is "yes";
  signal read_addra_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal read_addrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \read_addrb_reg_n_0_[0]\ : STD_LOGIC;
  signal \read_addrb_reg_n_0_[1]\ : STD_LOGIC;
  signal \read_addrb_reg_n_0_[2]\ : STD_LOGIC;
  signal \read_addrb_reg_n_0_[3]\ : STD_LOGIC;
  signal read_enable : STD_LOGIC;
  signal \read_enable_i_1__0_n_0\ : STD_LOGIC;
  signal read_enable_oclk_1 : STD_LOGIC;
  signal read_reset : STD_LOGIC;
  signal write_addr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \write_addr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \write_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_loop2[0].ram_inst_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[0].ram_inst_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[1].ram_inst_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[1].ram_inst_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[2].ram_inst_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[2].ram_inst_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[3].ram_inst_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_loop2[3].ram_inst_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_read_addra[2]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \FSM_sequential_read_addra[2]_i_1__1\ : label is "soft_lutpair155";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_read_addra_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_read_addra_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_read_addra_reg[2]\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \loop2[0].ram_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \loop2[1].ram_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \loop2[2].ram_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \loop2[3].ram_inst\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \read_enable_i_1__0\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \write_addr[1]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \write_addr[2]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \write_addr[3]_i_1\ : label is "soft_lutpair154";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
\FSM_sequential_read_addra[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_addra(0),
      O => \FSM_sequential_read_addra[0]_i_1__0_n_0\
    );
\FSM_sequential_read_addra[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_addra(0),
      I1 => read_addra(1),
      O => \FSM_sequential_read_addra[1]_i_1__0_n_0\
    );
\FSM_sequential_read_addra[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => read_reset,
      I1 => read_enable_oclk,
      O => \FSM_sequential_read_addra_reg[0]_0\(0)
    );
\FSM_sequential_read_addra[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => read_reset,
      I1 => read_enable_oclk_1,
      O => \FSM_sequential_read_addra[2]_i_1__0_n_0\
    );
\FSM_sequential_read_addra[2]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => read_reset,
      I1 => read_enable_oclk_0,
      O => \FSM_sequential_read_addra_reg[0]_1\(0)
    );
\FSM_sequential_read_addra[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(0),
      I2 => read_addra(2),
      O => \FSM_sequential_read_addra[2]_i_2__0_n_0\
    );
\FSM_sequential_read_addra_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \FSM_sequential_read_addra[0]_i_1__0_n_0\,
      Q => read_addra(0),
      R => \FSM_sequential_read_addra[2]_i_1__0_n_0\
    );
\FSM_sequential_read_addra_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \FSM_sequential_read_addra[1]_i_1__0_n_0\,
      Q => read_addra(1),
      R => \FSM_sequential_read_addra[2]_i_1__0_n_0\
    );
\FSM_sequential_read_addra_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \FSM_sequential_read_addra[2]_i_2__0_n_0\,
      Q => read_addra(2),
      R => \FSM_sequential_read_addra[2]_i_1__0_n_0\
    );
\dataout[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ramouta(6),
      I1 => ramouta(4),
      I2 => read_addra(1),
      I3 => ramouta(2),
      I4 => read_addra(0),
      I5 => ramouta(0),
      O => \dataout[0]_i_1_n_0\
    );
\dataout[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ramouta(7),
      I1 => ramouta(5),
      I2 => read_addra(1),
      I3 => ramouta(3),
      I4 => read_addra(0),
      I5 => ramouta(1),
      O => \dataout[1]_i_1_n_0\
    );
\dataout[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_6_out(0),
      I1 => ramouta(6),
      I2 => read_addra(1),
      I3 => ramouta(4),
      I4 => read_addra(0),
      I5 => ramouta(2),
      O => \dataout[2]_i_1_n_0\
    );
\dataout[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_6_out(1),
      I1 => ramouta(7),
      I2 => read_addra(1),
      I3 => ramouta(5),
      I4 => read_addra(0),
      I5 => ramouta(3),
      O => \dataout[3]_i_1_n_0\
    );
\dataout[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_4_out(0),
      I1 => p_6_out(0),
      I2 => read_addra(1),
      I3 => ramouta(6),
      I4 => read_addra(0),
      I5 => ramouta(4),
      O => \dataout[4]_i_1_n_0\
    );
\dataout[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_4_out(1),
      I1 => p_6_out(1),
      I2 => read_addra(1),
      I3 => ramouta(7),
      I4 => read_addra(0),
      I5 => ramouta(5),
      O => \dataout[5]_i_1_n_0\
    );
\dataout[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_2_out(0),
      I1 => p_4_out(0),
      I2 => read_addra(1),
      I3 => p_6_out(0),
      I4 => read_addra(0),
      I5 => ramouta(6),
      O => \dataout[6]_i_1_n_0\
    );
\dataout[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_2_out(1),
      I1 => p_4_out(1),
      I2 => read_addra(1),
      I3 => p_6_out(1),
      I4 => read_addra(0),
      I5 => ramouta(7),
      O => \dataout[7]_i_1_n_0\
    );
\dataout[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_out(0),
      I1 => p_2_out(0),
      I2 => read_addra(1),
      I3 => p_4_out(0),
      I4 => read_addra(0),
      I5 => p_6_out(0),
      O => \dataout[8]_i_1_n_0\
    );
\dataout[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_out(1),
      I1 => p_2_out(1),
      I2 => read_addra(1),
      I3 => p_4_out(1),
      I4 => read_addra(0),
      I5 => p_6_out(1),
      O => \dataout[9]_i_1_n_0\
    );
\dataout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\dataout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[1]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\dataout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[2]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\dataout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[3]_i_1_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\dataout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[4]_i_1_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\dataout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[5]_i_1_n_0\,
      Q => \^q\(5),
      R => '0'
    );
\dataout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[6]_i_1_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\dataout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[7]_i_1_n_0\,
      Q => \^q\(7),
      R => '0'
    );
\dataout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[8]_i_1_n_0\,
      Q => \^q\(8),
      R => '0'
    );
\dataout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout[9]_i_1_n_0\,
      Q => \^q\(9),
      R => '0'
    );
\loop2[0].ram_inst\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => read_addra_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3) => \read_addrb_reg_n_0_[3]\,
      ADDRB(2) => \read_addrb_reg_n_0_[2]\,
      ADDRB(1) => \read_addrb_reg_n_0_[1]\,
      ADDRB(0) => \read_addrb_reg_n_0_[0]\,
      ADDRC(4 downto 0) => B"00000",
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => write_addr(3 downto 0),
      DIA(1 downto 0) => \data_out_reg[7]\(1 downto 0),
      DIB(1 downto 0) => \data_out_reg[7]\(1 downto 0),
      DIC(1 downto 0) => \data_out_reg[7]\(1 downto 0),
      DID(1 downto 0) => \data_out_reg[7]\(1 downto 0),
      DOA(1 downto 0) => ramouta(1 downto 0),
      DOB(1 downto 0) => p_6_out(1 downto 0),
      DOC(1 downto 0) => \NLW_loop2[0].ram_inst_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_loop2[0].ram_inst_DOD_UNCONNECTED\(1 downto 0),
      WCLK => CLK,
      WE => '1'
    );
\loop2[0].ram_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(0),
      I2 => read_addra(2),
      O => read_addra_reg(3)
    );
\loop2[0].ram_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => read_addra(2),
      I1 => read_addra(1),
      I2 => read_addra(0),
      O => read_addra_reg(2)
    );
\loop2[0].ram_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => read_addra(2),
      I1 => read_addra(0),
      I2 => read_addra(1),
      O => read_addra_reg(1)
    );
\loop2[0].ram_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_addra(0),
      I1 => read_addra(2),
      O => read_addra_reg(0)
    );
\loop2[1].ram_inst\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => read_addra_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3) => \read_addrb_reg_n_0_[3]\,
      ADDRB(2) => \read_addrb_reg_n_0_[2]\,
      ADDRB(1) => \read_addrb_reg_n_0_[1]\,
      ADDRB(0) => \read_addrb_reg_n_0_[0]\,
      ADDRC(4 downto 0) => B"00000",
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => write_addr(3 downto 0),
      DIA(1 downto 0) => \data_out_reg[7]\(3 downto 2),
      DIB(1 downto 0) => \data_out_reg[7]\(3 downto 2),
      DIC(1 downto 0) => \data_out_reg[7]\(3 downto 2),
      DID(1 downto 0) => \data_out_reg[7]\(3 downto 2),
      DOA(1 downto 0) => ramouta(3 downto 2),
      DOB(1 downto 0) => p_4_out(1 downto 0),
      DOC(1 downto 0) => \NLW_loop2[1].ram_inst_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_loop2[1].ram_inst_DOD_UNCONNECTED\(1 downto 0),
      WCLK => CLK,
      WE => '1'
    );
\loop2[2].ram_inst\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => read_addra_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3) => \read_addrb_reg_n_0_[3]\,
      ADDRB(2) => \read_addrb_reg_n_0_[2]\,
      ADDRB(1) => \read_addrb_reg_n_0_[1]\,
      ADDRB(0) => \read_addrb_reg_n_0_[0]\,
      ADDRC(4 downto 0) => B"00000",
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => write_addr(3 downto 0),
      DIA(1 downto 0) => \data_out_reg[7]\(5 downto 4),
      DIB(1 downto 0) => \data_out_reg[7]\(5 downto 4),
      DIC(1 downto 0) => \data_out_reg[7]\(5 downto 4),
      DID(1 downto 0) => \data_out_reg[7]\(5 downto 4),
      DOA(1 downto 0) => ramouta(5 downto 4),
      DOB(1 downto 0) => p_2_out(1 downto 0),
      DOC(1 downto 0) => \NLW_loop2[2].ram_inst_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_loop2[2].ram_inst_DOD_UNCONNECTED\(1 downto 0),
      WCLK => CLK,
      WE => '1'
    );
\loop2[3].ram_inst\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => read_addra_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3) => \read_addrb_reg_n_0_[3]\,
      ADDRB(2) => \read_addrb_reg_n_0_[2]\,
      ADDRB(1) => \read_addrb_reg_n_0_[1]\,
      ADDRB(0) => \read_addrb_reg_n_0_[0]\,
      ADDRC(4 downto 0) => B"00000",
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => write_addr(3 downto 0),
      DIA(1 downto 0) => \data_out_reg[7]\(7 downto 6),
      DIB(1 downto 0) => \data_out_reg[7]\(7 downto 6),
      DIC(1 downto 0) => \data_out_reg[7]\(7 downto 6),
      DID(1 downto 0) => \data_out_reg[7]\(7 downto 6),
      DOA(1 downto 0) => ramouta(7 downto 6),
      DOB(1 downto 0) => p_0_out(1 downto 0),
      DOC(1 downto 0) => \NLW_loop2[3].ram_inst_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_loop2[3].ram_inst_DOD_UNCONNECTED\(1 downto 0),
      WCLK => CLK,
      WE => '1'
    );
\rcvd_ctkn_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80800300"
    )
        port map (
      I0 => \rcvd_ctkn_i_2__0_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(8),
      I3 => \rcvd_ctkn_i_3__0_n_0\,
      I4 => \^q\(4),
      O => rcvd_ctkn_reg
    );
\rcvd_ctkn_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(5),
      I4 => \^q\(7),
      I5 => \^q\(2),
      O => \rcvd_ctkn_i_2__0_n_0\
    );
\rcvd_ctkn_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(5),
      I4 => \^q\(7),
      I5 => \^q\(2),
      O => \rcvd_ctkn_i_3__0_n_0\
    );
\read_addrb[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(0),
      I2 => read_addra(2),
      O => read_addrb(0)
    );
\read_addrb[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(0),
      I2 => read_addra(2),
      O => read_addrb(1)
    );
\read_addrb[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(2),
      I2 => read_addra(0),
      O => read_addrb(2)
    );
\read_addrb[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => read_addra(2),
      I1 => read_addra(1),
      I2 => read_addra(0),
      O => read_addrb(3)
    );
\read_addrb_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => rx_clk,
      CE => '1',
      D => read_addrb(0),
      Q => \read_addrb_reg_n_0_[0]\,
      S => \FSM_sequential_read_addra[2]_i_1__0_n_0\
    );
\read_addrb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => read_addrb(1),
      Q => \read_addrb_reg_n_0_[1]\,
      R => \FSM_sequential_read_addra[2]_i_1__0_n_0\
    );
\read_addrb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => read_addrb(2),
      Q => \read_addrb_reg_n_0_[2]\,
      R => \FSM_sequential_read_addra[2]_i_1__0_n_0\
    );
\read_addrb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => read_addrb(3),
      Q => \read_addrb_reg_n_0_[3]\,
      R => \FSM_sequential_read_addra[2]_i_1__0_n_0\
    );
\read_enable_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => write_addr(2),
      I1 => write_addr(3),
      I2 => write_addr(1),
      I3 => write_addr(0),
      I4 => read_enable,
      O => \read_enable_i_1__0_n_0\
    );
read_enable_oclk_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => read_enable,
      Q => read_enable_oclk_1,
      R => '0'
    );
read_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \read_enable_i_1__0_n_0\,
      Q => read_enable,
      R => SR(0)
    );
read_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => reset_reg(0),
      Q => read_reset,
      R => '0'
    );
\write_addr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_addr(0),
      O => \write_addr[0]_i_1__0_n_0\
    );
\write_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C3C"
    )
        port map (
      I0 => write_addr(2),
      I1 => write_addr(1),
      I2 => write_addr(0),
      I3 => write_addr(3),
      O => \write_addr[1]_i_1_n_0\
    );
\write_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => write_addr(2),
      I1 => write_addr(1),
      I2 => write_addr(0),
      O => \write_addr[2]_i_1_n_0\
    );
\write_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F80"
    )
        port map (
      I0 => write_addr(2),
      I1 => write_addr(1),
      I2 => write_addr(0),
      I3 => write_addr(3),
      O => \write_addr[3]_i_1_n_0\
    );
\write_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[0]_i_1__0_n_0\,
      Q => write_addr(0),
      R => SR(0)
    );
\write_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[1]_i_1_n_0\,
      Q => write_addr(1),
      R => SR(0)
    );
\write_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[2]_i_1_n_0\,
      Q => write_addr(2),
      R => SR(0)
    );
\write_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[3]_i_1_n_0\,
      Q => write_addr(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_phsaligner is
  port (
    bitslip : out STD_LOGIC;
    red_vld : out STD_LOGIC;
    rawdata_vld_rising_reg : out STD_LOGIC;
    \wa_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wa_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rawdata_vld : out STD_LOGIC;
    rx_clk : in STD_LOGIC;
    \dataout_reg[6]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    psaligned_reg_0 : in STD_LOGIC;
    psaligned_reg_1 : in STD_LOGIC;
    we : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_phsaligner : entity is "phsaligner";
end overlay1_dvi_decoder_v2_0_0_phsaligner;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_phsaligner is
  signal \^bitslip\ : STD_LOGIC;
  signal \bitslip_i_1__1_n_0\ : STD_LOGIC;
  signal \bitslip_i_2__1_n_0\ : STD_LOGIC;
  signal blnkbgn : STD_LOGIC;
  signal \blnkbgn_i_1__4_n_0\ : STD_LOGIC;
  signal \blnkprd_cnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \blnkprd_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal cstate : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \cstate[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \cstate[1]_i_2__1_n_0\ : STD_LOGIC;
  signal ctkn_cnt_rst : STD_LOGIC;
  signal \ctkn_cnt_rst_i_1__1_n_0\ : STD_LOGIC;
  signal ctkn_cnt_tout : STD_LOGIC;
  signal ctkn_cnt_tout0_n_0 : STD_LOGIC;
  signal ctkn_counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ctkn_counter[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \ctkn_counter[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \ctkn_counter[2]_i_1__1_n_0\ : STD_LOGIC;
  signal ctkn_srh_rst : STD_LOGIC;
  signal \ctkn_srh_rst_i_1__1_n_0\ : STD_LOGIC;
  signal \ctkn_srh_timer[0]_i_5__1_n_0\ : STD_LOGIC;
  signal ctkn_srh_timer_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \ctkn_srh_timer_reg[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1__1_n_1\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1__1_n_2\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1__1_n_3\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1__1_n_4\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1__1_n_5\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1__1_n_6\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1__1_n_7\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1__1_n_1\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1__1_n_2\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1__1_n_3\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal ctkn_srh_tout : STD_LOGIC;
  signal \ctkn_srh_tout_i_1__1_n_0\ : STD_LOGIC;
  signal \ctkn_srh_tout_i_2__1_n_0\ : STD_LOGIC;
  signal \ctkn_srh_tout_i_3__1_n_0\ : STD_LOGIC;
  signal nstate : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \psaligned_i_1__1_n_0\ : STD_LOGIC;
  signal rcvd_ctkn : STD_LOGIC;
  signal rcvd_ctkn_q : STD_LOGIC;
  signal \^red_vld\ : STD_LOGIC;
  signal \NLW_ctkn_srh_timer_reg[8]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cstate[1]_i_2__1\ : label is "soft_lutpair236";
  attribute SOFT_HLUTNM of \cstate[2]_i_1__1\ : label is "soft_lutpair236";
  attribute SOFT_HLUTNM of \cstate[3]_i_1__2\ : label is "soft_lutpair235";
  attribute SOFT_HLUTNM of \cstate[4]_i_1__1\ : label is "soft_lutpair235";
  attribute SOFT_HLUTNM of ctkn_cnt_tout0 : label is "soft_lutpair238";
  attribute SOFT_HLUTNM of \ctkn_counter[0]_i_1__1\ : label is "soft_lutpair240";
  attribute SOFT_HLUTNM of \ctkn_counter[1]_i_1__1\ : label is "soft_lutpair240";
  attribute SOFT_HLUTNM of \ctkn_counter[2]_i_1__1\ : label is "soft_lutpair238";
  attribute SOFT_HLUTNM of iamrdy_i_1 : label is "soft_lutpair237";
  attribute SOFT_HLUTNM of \iamrdy_i_1__0\ : label is "soft_lutpair239";
  attribute SOFT_HLUTNM of \rawdata_vld_rising_i_1__1\ : label is "soft_lutpair237";
  attribute SOFT_HLUTNM of \we_i_1__1\ : label is "soft_lutpair239";
begin
  bitslip <= \^bitslip\;
  red_vld <= \^red_vld\;
\bitslip_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cstate(2),
      I1 => \bitslip_i_2__1_n_0\,
      I2 => \^bitslip\,
      O => \bitslip_i_1__1_n_0\
    );
\bitslip_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAAB"
    )
        port map (
      I0 => cstate(0),
      I1 => cstate(4),
      I2 => cstate(3),
      I3 => cstate(5),
      I4 => cstate(1),
      O => \bitslip_i_2__1_n_0\
    );
bitslip_reg: unisim.vcomponents.FDCE
     port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => \bitslip_i_1__1_n_0\,
      Q => \^bitslip\
    );
\blnkbgn_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rcvd_ctkn,
      I1 => rcvd_ctkn_q,
      O => \blnkbgn_i_1__4_n_0\
    );
blnkbgn_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \blnkbgn_i_1__4_n_0\,
      Q => blnkbgn,
      R => '0'
    );
\blnkprd_cnt[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFC00000002"
    )
        port map (
      I0 => cstate(4),
      I1 => cstate(5),
      I2 => cstate(3),
      I3 => cstate(1),
      I4 => cstate(2),
      I5 => \blnkprd_cnt_reg_n_0_[0]\,
      O => \blnkprd_cnt[0]_i_1__1_n_0\
    );
\blnkprd_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => \blnkprd_cnt[0]_i_1__1_n_0\,
      Q => \blnkprd_cnt_reg_n_0_[0]\
    );
\cstate[0]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cstate(0),
      I1 => ctkn_srh_tout,
      O => \cstate[0]_i_1__2_n_0\
    );
\cstate[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => \cstate[1]_i_2__1_n_0\,
      I1 => cstate(4),
      I2 => \blnkprd_cnt_reg_n_0_[0]\,
      I3 => cstate(3),
      I4 => rcvd_ctkn,
      O => nstate(1)
    );
\cstate[1]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EECCEEFC"
    )
        port map (
      I0 => cstate(0),
      I1 => cstate(2),
      I2 => cstate(1),
      I3 => ctkn_srh_tout,
      I4 => blnkbgn,
      O => \cstate[1]_i_2__1_n_0\
    );
\cstate[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => cstate(1),
      I1 => blnkbgn,
      I2 => ctkn_srh_tout,
      O => nstate(2)
    );
\cstate[3]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => blnkbgn,
      I1 => cstate(1),
      I2 => rcvd_ctkn,
      I3 => ctkn_cnt_tout,
      I4 => cstate(3),
      O => nstate(3)
    );
\cstate[4]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => cstate(3),
      I1 => rcvd_ctkn,
      I2 => ctkn_cnt_tout,
      O => nstate(4)
    );
\cstate[5]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \blnkprd_cnt_reg_n_0_[0]\,
      I1 => cstate(4),
      I2 => cstate(5),
      O => nstate(5)
    );
\cstate_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \cstate[0]_i_1__2_n_0\,
      PRE => SR(0),
      Q => cstate(0)
    );
\cstate_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => nstate(1),
      Q => cstate(1)
    );
\cstate_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => nstate(2),
      Q => cstate(2)
    );
\cstate_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => nstate(3),
      Q => cstate(3)
    );
\cstate_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => nstate(4),
      Q => cstate(4)
    );
\cstate_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => nstate(5),
      Q => cstate(5)
    );
\ctkn_cnt_rst_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777544444445"
    )
        port map (
      I0 => cstate(3),
      I1 => cstate(0),
      I2 => cstate(5),
      I3 => cstate(2),
      I4 => cstate(4),
      I5 => ctkn_cnt_rst,
      O => \ctkn_cnt_rst_i_1__1_n_0\
    );
ctkn_cnt_rst_reg: unisim.vcomponents.FDPE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_cnt_rst_i_1__1_n_0\,
      PRE => SR(0),
      Q => ctkn_cnt_rst
    );
ctkn_cnt_tout0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ctkn_counter(1),
      I1 => ctkn_counter(2),
      I2 => ctkn_counter(0),
      O => ctkn_cnt_tout0_n_0
    );
ctkn_cnt_tout_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => ctkn_cnt_tout0_n_0,
      Q => ctkn_cnt_tout,
      R => '0'
    );
\ctkn_counter[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctkn_counter(0),
      I1 => ctkn_cnt_rst,
      O => \ctkn_counter[0]_i_1__1_n_0\
    );
\ctkn_counter[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => ctkn_counter(1),
      I1 => ctkn_counter(0),
      I2 => ctkn_cnt_rst,
      O => \ctkn_counter[1]_i_1__1_n_0\
    );
\ctkn_counter[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => ctkn_counter(2),
      I1 => ctkn_counter(1),
      I2 => ctkn_counter(0),
      I3 => ctkn_cnt_rst,
      O => \ctkn_counter[2]_i_1__1_n_0\
    );
\ctkn_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_counter[0]_i_1__1_n_0\,
      Q => ctkn_counter(0),
      R => '0'
    );
\ctkn_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_counter[1]_i_1__1_n_0\,
      Q => ctkn_counter(1),
      R => '0'
    );
\ctkn_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_counter[2]_i_1__1_n_0\,
      Q => ctkn_counter(2),
      R => '0'
    );
\ctkn_srh_rst_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBBAAAAA888A"
    )
        port map (
      I0 => cstate(2),
      I1 => cstate(0),
      I2 => cstate(4),
      I3 => cstate(5),
      I4 => cstate(1),
      I5 => ctkn_srh_rst,
      O => \ctkn_srh_rst_i_1__1_n_0\
    );
ctkn_srh_rst_reg: unisim.vcomponents.FDPE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_rst_i_1__1_n_0\,
      PRE => SR(0),
      Q => ctkn_srh_rst
    );
\ctkn_srh_timer[0]_i_5__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctkn_srh_timer_reg(0),
      O => \ctkn_srh_timer[0]_i_5__1_n_0\
    );
\ctkn_srh_timer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[0]_i_1__1_n_7\,
      Q => ctkn_srh_timer_reg(0),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[0]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ctkn_srh_timer_reg[0]_i_1__1_n_0\,
      CO(2) => \ctkn_srh_timer_reg[0]_i_1__1_n_1\,
      CO(1) => \ctkn_srh_timer_reg[0]_i_1__1_n_2\,
      CO(0) => \ctkn_srh_timer_reg[0]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ctkn_srh_timer_reg[0]_i_1__1_n_4\,
      O(2) => \ctkn_srh_timer_reg[0]_i_1__1_n_5\,
      O(1) => \ctkn_srh_timer_reg[0]_i_1__1_n_6\,
      O(0) => \ctkn_srh_timer_reg[0]_i_1__1_n_7\,
      S(3 downto 1) => ctkn_srh_timer_reg(3 downto 1),
      S(0) => \ctkn_srh_timer[0]_i_5__1_n_0\
    );
\ctkn_srh_timer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[8]_i_1__1_n_5\,
      Q => ctkn_srh_timer_reg(10),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[8]_i_1__1_n_4\,
      Q => ctkn_srh_timer_reg(11),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[0]_i_1__1_n_6\,
      Q => ctkn_srh_timer_reg(1),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[0]_i_1__1_n_5\,
      Q => ctkn_srh_timer_reg(2),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[0]_i_1__1_n_4\,
      Q => ctkn_srh_timer_reg(3),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[4]_i_1__1_n_7\,
      Q => ctkn_srh_timer_reg(4),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctkn_srh_timer_reg[0]_i_1__1_n_0\,
      CO(3) => \ctkn_srh_timer_reg[4]_i_1__1_n_0\,
      CO(2) => \ctkn_srh_timer_reg[4]_i_1__1_n_1\,
      CO(1) => \ctkn_srh_timer_reg[4]_i_1__1_n_2\,
      CO(0) => \ctkn_srh_timer_reg[4]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctkn_srh_timer_reg[4]_i_1__1_n_4\,
      O(2) => \ctkn_srh_timer_reg[4]_i_1__1_n_5\,
      O(1) => \ctkn_srh_timer_reg[4]_i_1__1_n_6\,
      O(0) => \ctkn_srh_timer_reg[4]_i_1__1_n_7\,
      S(3 downto 0) => ctkn_srh_timer_reg(7 downto 4)
    );
\ctkn_srh_timer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[4]_i_1__1_n_6\,
      Q => ctkn_srh_timer_reg(5),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[4]_i_1__1_n_5\,
      Q => ctkn_srh_timer_reg(6),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[4]_i_1__1_n_4\,
      Q => ctkn_srh_timer_reg(7),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[8]_i_1__1_n_7\,
      Q => ctkn_srh_timer_reg(8),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctkn_srh_timer_reg[4]_i_1__1_n_0\,
      CO(3) => \NLW_ctkn_srh_timer_reg[8]_i_1__1_CO_UNCONNECTED\(3),
      CO(2) => \ctkn_srh_timer_reg[8]_i_1__1_n_1\,
      CO(1) => \ctkn_srh_timer_reg[8]_i_1__1_n_2\,
      CO(0) => \ctkn_srh_timer_reg[8]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctkn_srh_timer_reg[8]_i_1__1_n_4\,
      O(2) => \ctkn_srh_timer_reg[8]_i_1__1_n_5\,
      O(1) => \ctkn_srh_timer_reg[8]_i_1__1_n_6\,
      O(0) => \ctkn_srh_timer_reg[8]_i_1__1_n_7\,
      S(3 downto 0) => ctkn_srh_timer_reg(11 downto 8)
    );
\ctkn_srh_timer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[8]_i_1__1_n_6\,
      Q => ctkn_srh_timer_reg(9),
      R => ctkn_srh_rst
    );
\ctkn_srh_tout_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ctkn_srh_tout_i_2__1_n_0\,
      I1 => \ctkn_srh_tout_i_3__1_n_0\,
      O => \ctkn_srh_tout_i_1__1_n_0\
    );
\ctkn_srh_tout_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ctkn_srh_timer_reg(9),
      I1 => ctkn_srh_timer_reg(11),
      I2 => ctkn_srh_timer_reg(10),
      I3 => ctkn_srh_timer_reg(8),
      I4 => ctkn_srh_timer_reg(6),
      I5 => ctkn_srh_timer_reg(7),
      O => \ctkn_srh_tout_i_2__1_n_0\
    );
\ctkn_srh_tout_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => ctkn_srh_timer_reg(0),
      I1 => ctkn_srh_timer_reg(1),
      I2 => ctkn_srh_timer_reg(2),
      I3 => ctkn_srh_timer_reg(3),
      I4 => ctkn_srh_timer_reg(4),
      I5 => ctkn_srh_timer_reg(5),
      O => \ctkn_srh_tout_i_3__1_n_0\
    );
ctkn_srh_tout_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_tout_i_1__1_n_0\,
      Q => ctkn_srh_tout,
      R => '0'
    );
iamrdy_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^red_vld\,
      I1 => psaligned_reg_0,
      I2 => psaligned_reg_1,
      O => \wa_reg[0]\(0)
    );
\iamrdy_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^red_vld\,
      I1 => psaligned_reg_1,
      I2 => psaligned_reg_0,
      O => \wa_reg[0]_0\(0)
    );
\psaligned_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBA8888888A"
    )
        port map (
      I0 => cstate(5),
      I1 => cstate(1),
      I2 => cstate(4),
      I3 => cstate(2),
      I4 => cstate(3),
      I5 => \^red_vld\,
      O => \psaligned_i_1__1_n_0\
    );
psaligned_reg: unisim.vcomponents.FDCE
     port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => \psaligned_i_1__1_n_0\,
      Q => \^red_vld\
    );
\rawdata_vld_rising_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => psaligned_reg_0,
      I1 => psaligned_reg_1,
      I2 => \^red_vld\,
      I3 => we,
      O => rawdata_vld_rising_reg
    );
rcvd_ctkn_q_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => rcvd_ctkn,
      Q => rcvd_ctkn_q,
      R => '0'
    );
rcvd_ctkn_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout_reg[6]\,
      Q => rcvd_ctkn,
      R => '0'
    );
\we_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^red_vld\,
      I1 => psaligned_reg_1,
      I2 => psaligned_reg_0,
      O => rawdata_vld
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_phsaligner_12 is
  port (
    bitslip : out STD_LOGIC;
    blue_vld : out STD_LOGIC;
    rawdata_vld_rising_reg : out STD_LOGIC;
    rawdata_vld : out STD_LOGIC;
    rx_clk : in STD_LOGIC;
    \dataout_reg[6]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    psaligned_reg_0 : in STD_LOGIC;
    psaligned_reg_1 : in STD_LOGIC;
    we : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_phsaligner_12 : entity is "phsaligner";
end overlay1_dvi_decoder_v2_0_0_phsaligner_12;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_phsaligner_12 is
  signal \^bitslip\ : STD_LOGIC;
  signal bitslip_i_1_n_0 : STD_LOGIC;
  signal bitslip_i_2_n_0 : STD_LOGIC;
  signal blnkbgn : STD_LOGIC;
  signal \blnkbgn_i_1__2_n_0\ : STD_LOGIC;
  signal \blnkprd_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \blnkprd_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \^blue_vld\ : STD_LOGIC;
  signal cstate : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \cstate[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cstate[1]_i_2_n_0\ : STD_LOGIC;
  signal ctkn_cnt_rst : STD_LOGIC;
  signal ctkn_cnt_rst_i_1_n_0 : STD_LOGIC;
  signal ctkn_cnt_tout : STD_LOGIC;
  signal ctkn_cnt_tout0_n_0 : STD_LOGIC;
  signal ctkn_counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ctkn_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctkn_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \ctkn_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal ctkn_srh_rst : STD_LOGIC;
  signal ctkn_srh_rst_i_1_n_0 : STD_LOGIC;
  signal \ctkn_srh_timer[0]_i_5_n_0\ : STD_LOGIC;
  signal ctkn_srh_timer_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \ctkn_srh_timer_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal ctkn_srh_tout : STD_LOGIC;
  signal ctkn_srh_tout_i_1_n_0 : STD_LOGIC;
  signal ctkn_srh_tout_i_2_n_0 : STD_LOGIC;
  signal ctkn_srh_tout_i_3_n_0 : STD_LOGIC;
  signal nstate : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal psaligned_i_1_n_0 : STD_LOGIC;
  signal rcvd_ctkn : STD_LOGIC;
  signal rcvd_ctkn_q : STD_LOGIC;
  signal \NLW_ctkn_srh_timer_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cstate[1]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \cstate[2]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \cstate[3]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \cstate[4]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of ctkn_cnt_tout0 : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \ctkn_counter[0]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \ctkn_counter[1]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \ctkn_counter[2]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of rawdata_vld_rising_i_1 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of we_i_1 : label is "soft_lutpair74";
begin
  bitslip <= \^bitslip\;
  blue_vld <= \^blue_vld\;
bitslip_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cstate(2),
      I1 => bitslip_i_2_n_0,
      I2 => \^bitslip\,
      O => bitslip_i_1_n_0
    );
bitslip_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAAB"
    )
        port map (
      I0 => cstate(0),
      I1 => cstate(4),
      I2 => cstate(3),
      I3 => cstate(5),
      I4 => cstate(1),
      O => bitslip_i_2_n_0
    );
bitslip_reg: unisim.vcomponents.FDCE
     port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => bitslip_i_1_n_0,
      Q => \^bitslip\
    );
\blnkbgn_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rcvd_ctkn,
      I1 => rcvd_ctkn_q,
      O => \blnkbgn_i_1__2_n_0\
    );
blnkbgn_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \blnkbgn_i_1__2_n_0\,
      Q => blnkbgn,
      R => '0'
    );
\blnkprd_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFC00000002"
    )
        port map (
      I0 => cstate(4),
      I1 => cstate(5),
      I2 => cstate(3),
      I3 => cstate(1),
      I4 => cstate(2),
      I5 => \blnkprd_cnt_reg_n_0_[0]\,
      O => \blnkprd_cnt[0]_i_1_n_0\
    );
\blnkprd_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => \blnkprd_cnt[0]_i_1_n_0\,
      Q => \blnkprd_cnt_reg_n_0_[0]\
    );
\cstate[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cstate(0),
      I1 => ctkn_srh_tout,
      O => \cstate[0]_i_1__0_n_0\
    );
\cstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => \cstate[1]_i_2_n_0\,
      I1 => cstate(4),
      I2 => \blnkprd_cnt_reg_n_0_[0]\,
      I3 => cstate(3),
      I4 => rcvd_ctkn,
      O => nstate(1)
    );
\cstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EECCEEFC"
    )
        port map (
      I0 => cstate(0),
      I1 => cstate(2),
      I2 => cstate(1),
      I3 => ctkn_srh_tout,
      I4 => blnkbgn,
      O => \cstate[1]_i_2_n_0\
    );
\cstate[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => cstate(1),
      I1 => blnkbgn,
      I2 => ctkn_srh_tout,
      O => nstate(2)
    );
\cstate[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => blnkbgn,
      I1 => cstate(1),
      I2 => rcvd_ctkn,
      I3 => ctkn_cnt_tout,
      I4 => cstate(3),
      O => nstate(3)
    );
\cstate[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => cstate(3),
      I1 => rcvd_ctkn,
      I2 => ctkn_cnt_tout,
      O => nstate(4)
    );
\cstate[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \blnkprd_cnt_reg_n_0_[0]\,
      I1 => cstate(4),
      I2 => cstate(5),
      O => nstate(5)
    );
\cstate_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \cstate[0]_i_1__0_n_0\,
      PRE => SR(0),
      Q => cstate(0)
    );
\cstate_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => nstate(1),
      Q => cstate(1)
    );
\cstate_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => nstate(2),
      Q => cstate(2)
    );
\cstate_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => nstate(3),
      Q => cstate(3)
    );
\cstate_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => nstate(4),
      Q => cstate(4)
    );
\cstate_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => nstate(5),
      Q => cstate(5)
    );
ctkn_cnt_rst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777544444445"
    )
        port map (
      I0 => cstate(3),
      I1 => cstate(0),
      I2 => cstate(5),
      I3 => cstate(2),
      I4 => cstate(4),
      I5 => ctkn_cnt_rst,
      O => ctkn_cnt_rst_i_1_n_0
    );
ctkn_cnt_rst_reg: unisim.vcomponents.FDPE
     port map (
      C => rx_clk,
      CE => '1',
      D => ctkn_cnt_rst_i_1_n_0,
      PRE => SR(0),
      Q => ctkn_cnt_rst
    );
ctkn_cnt_tout0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ctkn_counter(1),
      I1 => ctkn_counter(2),
      I2 => ctkn_counter(0),
      O => ctkn_cnt_tout0_n_0
    );
ctkn_cnt_tout_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => ctkn_cnt_tout0_n_0,
      Q => ctkn_cnt_tout,
      R => '0'
    );
\ctkn_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctkn_counter(0),
      I1 => ctkn_cnt_rst,
      O => \ctkn_counter[0]_i_1_n_0\
    );
\ctkn_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => ctkn_counter(1),
      I1 => ctkn_counter(0),
      I2 => ctkn_cnt_rst,
      O => \ctkn_counter[1]_i_1_n_0\
    );
\ctkn_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => ctkn_counter(2),
      I1 => ctkn_counter(1),
      I2 => ctkn_counter(0),
      I3 => ctkn_cnt_rst,
      O => \ctkn_counter[2]_i_1_n_0\
    );
\ctkn_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_counter[0]_i_1_n_0\,
      Q => ctkn_counter(0),
      R => '0'
    );
\ctkn_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_counter[1]_i_1_n_0\,
      Q => ctkn_counter(1),
      R => '0'
    );
\ctkn_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_counter[2]_i_1_n_0\,
      Q => ctkn_counter(2),
      R => '0'
    );
ctkn_srh_rst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBBAAAAA888A"
    )
        port map (
      I0 => cstate(2),
      I1 => cstate(0),
      I2 => cstate(4),
      I3 => cstate(5),
      I4 => cstate(1),
      I5 => ctkn_srh_rst,
      O => ctkn_srh_rst_i_1_n_0
    );
ctkn_srh_rst_reg: unisim.vcomponents.FDPE
     port map (
      C => rx_clk,
      CE => '1',
      D => ctkn_srh_rst_i_1_n_0,
      PRE => SR(0),
      Q => ctkn_srh_rst
    );
\ctkn_srh_timer[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctkn_srh_timer_reg(0),
      O => \ctkn_srh_timer[0]_i_5_n_0\
    );
\ctkn_srh_timer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[0]_i_1_n_7\,
      Q => ctkn_srh_timer_reg(0),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ctkn_srh_timer_reg[0]_i_1_n_0\,
      CO(2) => \ctkn_srh_timer_reg[0]_i_1_n_1\,
      CO(1) => \ctkn_srh_timer_reg[0]_i_1_n_2\,
      CO(0) => \ctkn_srh_timer_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ctkn_srh_timer_reg[0]_i_1_n_4\,
      O(2) => \ctkn_srh_timer_reg[0]_i_1_n_5\,
      O(1) => \ctkn_srh_timer_reg[0]_i_1_n_6\,
      O(0) => \ctkn_srh_timer_reg[0]_i_1_n_7\,
      S(3 downto 1) => ctkn_srh_timer_reg(3 downto 1),
      S(0) => \ctkn_srh_timer[0]_i_5_n_0\
    );
\ctkn_srh_timer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[8]_i_1_n_5\,
      Q => ctkn_srh_timer_reg(10),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[8]_i_1_n_4\,
      Q => ctkn_srh_timer_reg(11),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[0]_i_1_n_6\,
      Q => ctkn_srh_timer_reg(1),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[0]_i_1_n_5\,
      Q => ctkn_srh_timer_reg(2),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[0]_i_1_n_4\,
      Q => ctkn_srh_timer_reg(3),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[4]_i_1_n_7\,
      Q => ctkn_srh_timer_reg(4),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctkn_srh_timer_reg[0]_i_1_n_0\,
      CO(3) => \ctkn_srh_timer_reg[4]_i_1_n_0\,
      CO(2) => \ctkn_srh_timer_reg[4]_i_1_n_1\,
      CO(1) => \ctkn_srh_timer_reg[4]_i_1_n_2\,
      CO(0) => \ctkn_srh_timer_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctkn_srh_timer_reg[4]_i_1_n_4\,
      O(2) => \ctkn_srh_timer_reg[4]_i_1_n_5\,
      O(1) => \ctkn_srh_timer_reg[4]_i_1_n_6\,
      O(0) => \ctkn_srh_timer_reg[4]_i_1_n_7\,
      S(3 downto 0) => ctkn_srh_timer_reg(7 downto 4)
    );
\ctkn_srh_timer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[4]_i_1_n_6\,
      Q => ctkn_srh_timer_reg(5),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[4]_i_1_n_5\,
      Q => ctkn_srh_timer_reg(6),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[4]_i_1_n_4\,
      Q => ctkn_srh_timer_reg(7),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[8]_i_1_n_7\,
      Q => ctkn_srh_timer_reg(8),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctkn_srh_timer_reg[4]_i_1_n_0\,
      CO(3) => \NLW_ctkn_srh_timer_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ctkn_srh_timer_reg[8]_i_1_n_1\,
      CO(1) => \ctkn_srh_timer_reg[8]_i_1_n_2\,
      CO(0) => \ctkn_srh_timer_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctkn_srh_timer_reg[8]_i_1_n_4\,
      O(2) => \ctkn_srh_timer_reg[8]_i_1_n_5\,
      O(1) => \ctkn_srh_timer_reg[8]_i_1_n_6\,
      O(0) => \ctkn_srh_timer_reg[8]_i_1_n_7\,
      S(3 downto 0) => ctkn_srh_timer_reg(11 downto 8)
    );
\ctkn_srh_timer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[8]_i_1_n_6\,
      Q => ctkn_srh_timer_reg(9),
      R => ctkn_srh_rst
    );
ctkn_srh_tout_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ctkn_srh_tout_i_2_n_0,
      I1 => ctkn_srh_tout_i_3_n_0,
      O => ctkn_srh_tout_i_1_n_0
    );
ctkn_srh_tout_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ctkn_srh_timer_reg(9),
      I1 => ctkn_srh_timer_reg(11),
      I2 => ctkn_srh_timer_reg(10),
      I3 => ctkn_srh_timer_reg(8),
      I4 => ctkn_srh_timer_reg(6),
      I5 => ctkn_srh_timer_reg(7),
      O => ctkn_srh_tout_i_2_n_0
    );
ctkn_srh_tout_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => ctkn_srh_timer_reg(0),
      I1 => ctkn_srh_timer_reg(1),
      I2 => ctkn_srh_timer_reg(2),
      I3 => ctkn_srh_timer_reg(3),
      I4 => ctkn_srh_timer_reg(4),
      I5 => ctkn_srh_timer_reg(5),
      O => ctkn_srh_tout_i_3_n_0
    );
ctkn_srh_tout_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => ctkn_srh_tout_i_1_n_0,
      Q => ctkn_srh_tout,
      R => '0'
    );
psaligned_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBA8888888A"
    )
        port map (
      I0 => cstate(5),
      I1 => cstate(1),
      I2 => cstate(4),
      I3 => cstate(2),
      I4 => cstate(3),
      I5 => \^blue_vld\,
      O => psaligned_i_1_n_0
    );
psaligned_reg: unisim.vcomponents.FDCE
     port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => psaligned_i_1_n_0,
      Q => \^blue_vld\
    );
rawdata_vld_rising_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => psaligned_reg_0,
      I1 => psaligned_reg_1,
      I2 => \^blue_vld\,
      I3 => we,
      O => rawdata_vld_rising_reg
    );
rcvd_ctkn_q_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => rcvd_ctkn,
      Q => rcvd_ctkn_q,
      R => '0'
    );
rcvd_ctkn_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout_reg[6]\,
      Q => rcvd_ctkn,
      R => '0'
    );
we_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^blue_vld\,
      I1 => psaligned_reg_1,
      I2 => psaligned_reg_0,
      O => rawdata_vld
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_phsaligner_6 is
  port (
    bitslip : out STD_LOGIC;
    green_vld : out STD_LOGIC;
    rawdata_vld_rising_reg : out STD_LOGIC;
    \wa_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rawdata_vld : out STD_LOGIC;
    rx_clk : in STD_LOGIC;
    \dataout_reg[6]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    psaligned_reg_0 : in STD_LOGIC;
    psaligned_reg_1 : in STD_LOGIC;
    we : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_phsaligner_6 : entity is "phsaligner";
end overlay1_dvi_decoder_v2_0_0_phsaligner_6;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_phsaligner_6 is
  signal \^bitslip\ : STD_LOGIC;
  signal \bitslip_i_1__0_n_0\ : STD_LOGIC;
  signal \bitslip_i_2__0_n_0\ : STD_LOGIC;
  signal blnkbgn : STD_LOGIC;
  signal \blnkbgn_i_1__3_n_0\ : STD_LOGIC;
  signal \blnkprd_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \blnkprd_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal cstate : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \cstate[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \cstate[1]_i_2__0_n_0\ : STD_LOGIC;
  signal ctkn_cnt_rst : STD_LOGIC;
  signal \ctkn_cnt_rst_i_1__0_n_0\ : STD_LOGIC;
  signal ctkn_cnt_tout : STD_LOGIC;
  signal ctkn_cnt_tout0_n_0 : STD_LOGIC;
  signal ctkn_counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ctkn_counter[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \ctkn_counter[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \ctkn_counter[2]_i_1__0_n_0\ : STD_LOGIC;
  signal ctkn_srh_rst : STD_LOGIC;
  signal \ctkn_srh_rst_i_1__0_n_0\ : STD_LOGIC;
  signal \ctkn_srh_timer[0]_i_5__0_n_0\ : STD_LOGIC;
  signal ctkn_srh_timer_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \ctkn_srh_timer_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \ctkn_srh_timer_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal ctkn_srh_tout : STD_LOGIC;
  signal \ctkn_srh_tout_i_1__0_n_0\ : STD_LOGIC;
  signal \ctkn_srh_tout_i_2__0_n_0\ : STD_LOGIC;
  signal \ctkn_srh_tout_i_3__0_n_0\ : STD_LOGIC;
  signal \^green_vld\ : STD_LOGIC;
  signal nstate : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \psaligned_i_1__0_n_0\ : STD_LOGIC;
  signal rcvd_ctkn : STD_LOGIC;
  signal rcvd_ctkn_q : STD_LOGIC;
  signal \NLW_ctkn_srh_timer_reg[8]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cstate[1]_i_2__0\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \cstate[2]_i_1__0\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \cstate[3]_i_1__1\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \cstate[4]_i_1__0\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of ctkn_cnt_tout0 : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \ctkn_counter[0]_i_1__0\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \ctkn_counter[1]_i_1__0\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \ctkn_counter[2]_i_1__0\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \iamrdy_i_1__1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \rawdata_vld_rising_i_1__0\ : label is "soft_lutpair158";
begin
  bitslip <= \^bitslip\;
  green_vld <= \^green_vld\;
\bitslip_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cstate(2),
      I1 => \bitslip_i_2__0_n_0\,
      I2 => \^bitslip\,
      O => \bitslip_i_1__0_n_0\
    );
\bitslip_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAAB"
    )
        port map (
      I0 => cstate(0),
      I1 => cstate(4),
      I2 => cstate(3),
      I3 => cstate(5),
      I4 => cstate(1),
      O => \bitslip_i_2__0_n_0\
    );
bitslip_reg: unisim.vcomponents.FDCE
     port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => \bitslip_i_1__0_n_0\,
      Q => \^bitslip\
    );
\blnkbgn_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rcvd_ctkn,
      I1 => rcvd_ctkn_q,
      O => \blnkbgn_i_1__3_n_0\
    );
blnkbgn_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \blnkbgn_i_1__3_n_0\,
      Q => blnkbgn,
      R => '0'
    );
\blnkprd_cnt[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFC00000002"
    )
        port map (
      I0 => cstate(4),
      I1 => cstate(5),
      I2 => cstate(3),
      I3 => cstate(1),
      I4 => cstate(2),
      I5 => \blnkprd_cnt_reg_n_0_[0]\,
      O => \blnkprd_cnt[0]_i_1__0_n_0\
    );
\blnkprd_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => \blnkprd_cnt[0]_i_1__0_n_0\,
      Q => \blnkprd_cnt_reg_n_0_[0]\
    );
\cstate[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cstate(0),
      I1 => ctkn_srh_tout,
      O => \cstate[0]_i_1__1_n_0\
    );
\cstate[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => \cstate[1]_i_2__0_n_0\,
      I1 => cstate(4),
      I2 => \blnkprd_cnt_reg_n_0_[0]\,
      I3 => cstate(3),
      I4 => rcvd_ctkn,
      O => nstate(1)
    );
\cstate[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EECCEEFC"
    )
        port map (
      I0 => cstate(0),
      I1 => cstate(2),
      I2 => cstate(1),
      I3 => ctkn_srh_tout,
      I4 => blnkbgn,
      O => \cstate[1]_i_2__0_n_0\
    );
\cstate[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => cstate(1),
      I1 => blnkbgn,
      I2 => ctkn_srh_tout,
      O => nstate(2)
    );
\cstate[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => blnkbgn,
      I1 => cstate(1),
      I2 => rcvd_ctkn,
      I3 => ctkn_cnt_tout,
      I4 => cstate(3),
      O => nstate(3)
    );
\cstate[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => cstate(3),
      I1 => rcvd_ctkn,
      I2 => ctkn_cnt_tout,
      O => nstate(4)
    );
\cstate[5]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \blnkprd_cnt_reg_n_0_[0]\,
      I1 => cstate(4),
      I2 => cstate(5),
      O => nstate(5)
    );
\cstate_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \cstate[0]_i_1__1_n_0\,
      PRE => SR(0),
      Q => cstate(0)
    );
\cstate_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => nstate(1),
      Q => cstate(1)
    );
\cstate_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => nstate(2),
      Q => cstate(2)
    );
\cstate_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => nstate(3),
      Q => cstate(3)
    );
\cstate_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => nstate(4),
      Q => cstate(4)
    );
\cstate_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => nstate(5),
      Q => cstate(5)
    );
\ctkn_cnt_rst_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777544444445"
    )
        port map (
      I0 => cstate(3),
      I1 => cstate(0),
      I2 => cstate(5),
      I3 => cstate(2),
      I4 => cstate(4),
      I5 => ctkn_cnt_rst,
      O => \ctkn_cnt_rst_i_1__0_n_0\
    );
ctkn_cnt_rst_reg: unisim.vcomponents.FDPE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_cnt_rst_i_1__0_n_0\,
      PRE => SR(0),
      Q => ctkn_cnt_rst
    );
ctkn_cnt_tout0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ctkn_counter(1),
      I1 => ctkn_counter(2),
      I2 => ctkn_counter(0),
      O => ctkn_cnt_tout0_n_0
    );
ctkn_cnt_tout_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => ctkn_cnt_tout0_n_0,
      Q => ctkn_cnt_tout,
      R => '0'
    );
\ctkn_counter[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctkn_counter(0),
      I1 => ctkn_cnt_rst,
      O => \ctkn_counter[0]_i_1__0_n_0\
    );
\ctkn_counter[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => ctkn_counter(1),
      I1 => ctkn_counter(0),
      I2 => ctkn_cnt_rst,
      O => \ctkn_counter[1]_i_1__0_n_0\
    );
\ctkn_counter[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => ctkn_counter(2),
      I1 => ctkn_counter(1),
      I2 => ctkn_counter(0),
      I3 => ctkn_cnt_rst,
      O => \ctkn_counter[2]_i_1__0_n_0\
    );
\ctkn_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_counter[0]_i_1__0_n_0\,
      Q => ctkn_counter(0),
      R => '0'
    );
\ctkn_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_counter[1]_i_1__0_n_0\,
      Q => ctkn_counter(1),
      R => '0'
    );
\ctkn_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_counter[2]_i_1__0_n_0\,
      Q => ctkn_counter(2),
      R => '0'
    );
\ctkn_srh_rst_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBBAAAAA888A"
    )
        port map (
      I0 => cstate(2),
      I1 => cstate(0),
      I2 => cstate(4),
      I3 => cstate(5),
      I4 => cstate(1),
      I5 => ctkn_srh_rst,
      O => \ctkn_srh_rst_i_1__0_n_0\
    );
ctkn_srh_rst_reg: unisim.vcomponents.FDPE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_rst_i_1__0_n_0\,
      PRE => SR(0),
      Q => ctkn_srh_rst
    );
\ctkn_srh_timer[0]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctkn_srh_timer_reg(0),
      O => \ctkn_srh_timer[0]_i_5__0_n_0\
    );
\ctkn_srh_timer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[0]_i_1__0_n_7\,
      Q => ctkn_srh_timer_reg(0),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ctkn_srh_timer_reg[0]_i_1__0_n_0\,
      CO(2) => \ctkn_srh_timer_reg[0]_i_1__0_n_1\,
      CO(1) => \ctkn_srh_timer_reg[0]_i_1__0_n_2\,
      CO(0) => \ctkn_srh_timer_reg[0]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ctkn_srh_timer_reg[0]_i_1__0_n_4\,
      O(2) => \ctkn_srh_timer_reg[0]_i_1__0_n_5\,
      O(1) => \ctkn_srh_timer_reg[0]_i_1__0_n_6\,
      O(0) => \ctkn_srh_timer_reg[0]_i_1__0_n_7\,
      S(3 downto 1) => ctkn_srh_timer_reg(3 downto 1),
      S(0) => \ctkn_srh_timer[0]_i_5__0_n_0\
    );
\ctkn_srh_timer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[8]_i_1__0_n_5\,
      Q => ctkn_srh_timer_reg(10),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[8]_i_1__0_n_4\,
      Q => ctkn_srh_timer_reg(11),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[0]_i_1__0_n_6\,
      Q => ctkn_srh_timer_reg(1),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[0]_i_1__0_n_5\,
      Q => ctkn_srh_timer_reg(2),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[0]_i_1__0_n_4\,
      Q => ctkn_srh_timer_reg(3),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[4]_i_1__0_n_7\,
      Q => ctkn_srh_timer_reg(4),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctkn_srh_timer_reg[0]_i_1__0_n_0\,
      CO(3) => \ctkn_srh_timer_reg[4]_i_1__0_n_0\,
      CO(2) => \ctkn_srh_timer_reg[4]_i_1__0_n_1\,
      CO(1) => \ctkn_srh_timer_reg[4]_i_1__0_n_2\,
      CO(0) => \ctkn_srh_timer_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctkn_srh_timer_reg[4]_i_1__0_n_4\,
      O(2) => \ctkn_srh_timer_reg[4]_i_1__0_n_5\,
      O(1) => \ctkn_srh_timer_reg[4]_i_1__0_n_6\,
      O(0) => \ctkn_srh_timer_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => ctkn_srh_timer_reg(7 downto 4)
    );
\ctkn_srh_timer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[4]_i_1__0_n_6\,
      Q => ctkn_srh_timer_reg(5),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[4]_i_1__0_n_5\,
      Q => ctkn_srh_timer_reg(6),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[4]_i_1__0_n_4\,
      Q => ctkn_srh_timer_reg(7),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[8]_i_1__0_n_7\,
      Q => ctkn_srh_timer_reg(8),
      R => ctkn_srh_rst
    );
\ctkn_srh_timer_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctkn_srh_timer_reg[4]_i_1__0_n_0\,
      CO(3) => \NLW_ctkn_srh_timer_reg[8]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \ctkn_srh_timer_reg[8]_i_1__0_n_1\,
      CO(1) => \ctkn_srh_timer_reg[8]_i_1__0_n_2\,
      CO(0) => \ctkn_srh_timer_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctkn_srh_timer_reg[8]_i_1__0_n_4\,
      O(2) => \ctkn_srh_timer_reg[8]_i_1__0_n_5\,
      O(1) => \ctkn_srh_timer_reg[8]_i_1__0_n_6\,
      O(0) => \ctkn_srh_timer_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => ctkn_srh_timer_reg(11 downto 8)
    );
\ctkn_srh_timer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_timer_reg[8]_i_1__0_n_6\,
      Q => ctkn_srh_timer_reg(9),
      R => ctkn_srh_rst
    );
\ctkn_srh_tout_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ctkn_srh_tout_i_2__0_n_0\,
      I1 => \ctkn_srh_tout_i_3__0_n_0\,
      O => \ctkn_srh_tout_i_1__0_n_0\
    );
\ctkn_srh_tout_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ctkn_srh_timer_reg(9),
      I1 => ctkn_srh_timer_reg(11),
      I2 => ctkn_srh_timer_reg(10),
      I3 => ctkn_srh_timer_reg(8),
      I4 => ctkn_srh_timer_reg(6),
      I5 => ctkn_srh_timer_reg(7),
      O => \ctkn_srh_tout_i_2__0_n_0\
    );
\ctkn_srh_tout_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => ctkn_srh_timer_reg(0),
      I1 => ctkn_srh_timer_reg(1),
      I2 => ctkn_srh_timer_reg(2),
      I3 => ctkn_srh_timer_reg(3),
      I4 => ctkn_srh_timer_reg(4),
      I5 => ctkn_srh_timer_reg(5),
      O => \ctkn_srh_tout_i_3__0_n_0\
    );
ctkn_srh_tout_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \ctkn_srh_tout_i_1__0_n_0\,
      Q => ctkn_srh_tout,
      R => '0'
    );
\iamrdy_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^green_vld\,
      I1 => psaligned_reg_1,
      I2 => psaligned_reg_0,
      O => \wa_reg[0]\(0)
    );
\psaligned_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBA8888888A"
    )
        port map (
      I0 => cstate(5),
      I1 => cstate(1),
      I2 => cstate(4),
      I3 => cstate(2),
      I4 => cstate(3),
      I5 => \^green_vld\,
      O => \psaligned_i_1__0_n_0\
    );
psaligned_reg: unisim.vcomponents.FDCE
     port map (
      C => rx_clk,
      CE => '1',
      CLR => SR(0),
      D => \psaligned_i_1__0_n_0\,
      Q => \^green_vld\
    );
\rawdata_vld_rising_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => psaligned_reg_0,
      I1 => psaligned_reg_1,
      I2 => \^green_vld\,
      I3 => we,
      O => rawdata_vld_rising_reg
    );
rcvd_ctkn_q_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => rcvd_ctkn,
      Q => rcvd_ctkn_q,
      R => '0'
    );
rcvd_ctkn_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \dataout_reg[6]\,
      Q => rcvd_ctkn,
      R => '0'
    );
\we_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^green_vld\,
      I1 => psaligned_reg_1,
      I2 => psaligned_reg_0,
      O => rawdata_vld
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_tmds_data_dec is
  port (
    blue : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \sdout_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rx_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_tmds_data_dec : entity is "tmds_data_dec";
end overlay1_dvi_decoder_v2_0_0_tmds_data_dec;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_tmds_data_dec is
  signal p_0_in : STD_LOGIC;
  signal p_13_out : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_1_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal p_1_in3_in : STD_LOGIC;
  signal p_1_in5_in : STD_LOGIC;
  signal p_1_in7_in : STD_LOGIC;
  signal p_1_in9_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \tmds_d9_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmds_d9_reg_n_0_[8]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \decoded[2]_i_1\ : label is "soft_lutpair244";
  attribute SOFT_HLUTNM of \decoded[3]_i_1\ : label is "soft_lutpair244";
  attribute SOFT_HLUTNM of \decoded[4]_i_1\ : label is "soft_lutpair243";
  attribute SOFT_HLUTNM of \decoded[5]_i_1\ : label is "soft_lutpair243";
  attribute SOFT_HLUTNM of \decoded[6]_i_1\ : label is "soft_lutpair242";
  attribute SOFT_HLUTNM of \decoded[7]_i_1\ : label is "soft_lutpair242";
  attribute SOFT_HLUTNM of \tmds_d9[0]_i_1\ : label is "soft_lutpair245";
  attribute SOFT_HLUTNM of \tmds_d9[1]_i_1\ : label is "soft_lutpair245";
  attribute SOFT_HLUTNM of \tmds_d9[2]_i_1\ : label is "soft_lutpair246";
  attribute SOFT_HLUTNM of \tmds_d9[3]_i_1\ : label is "soft_lutpair246";
  attribute SOFT_HLUTNM of \tmds_d9[4]_i_1\ : label is "soft_lutpair247";
  attribute SOFT_HLUTNM of \tmds_d9[5]_i_1\ : label is "soft_lutpair247";
  attribute SOFT_HLUTNM of \tmds_d9[6]_i_1\ : label is "soft_lutpair248";
  attribute SOFT_HLUTNM of \tmds_d9[7]_i_1\ : label is "soft_lutpair248";
begin
\decoded[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in,
      I1 => \tmds_d9_reg_n_0_[0]\,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(1)
    );
\decoded[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in,
      I1 => p_0_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(2)
    );
\decoded[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in1_in,
      I1 => p_1_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(3)
    );
\decoded[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in3_in,
      I1 => p_1_in1_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(4)
    );
\decoded[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in5_in,
      I1 => p_1_in3_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(5)
    );
\decoded[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in7_in,
      I1 => p_1_in5_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(6)
    );
\decoded[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in9_in,
      I1 => p_1_in7_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(7)
    );
\decoded_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \tmds_d9_reg_n_0_[0]\,
      Q => blue(0),
      R => '0'
    );
\decoded_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(1),
      Q => blue(1),
      R => '0'
    );
\decoded_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(2),
      Q => blue(2),
      R => '0'
    );
\decoded_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(3),
      Q => blue(3),
      R => '0'
    );
\decoded_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(4),
      Q => blue(4),
      R => '0'
    );
\decoded_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(5),
      Q => blue(5),
      R => '0'
    );
\decoded_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(6),
      Q => blue(6),
      R => '0'
    );
\decoded_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(7),
      Q => blue(7),
      R => '0'
    );
\tmds_d9[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sdout_reg[9]\(0),
      I1 => \sdout_reg[9]\(9),
      O => p_1_out(0)
    );
\tmds_d9[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sdout_reg[9]\(1),
      I1 => \sdout_reg[9]\(9),
      O => p_1_out(1)
    );
\tmds_d9[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sdout_reg[9]\(2),
      I1 => \sdout_reg[9]\(9),
      O => p_1_out(2)
    );
\tmds_d9[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sdout_reg[9]\(3),
      I1 => \sdout_reg[9]\(9),
      O => p_1_out(3)
    );
\tmds_d9[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sdout_reg[9]\(4),
      I1 => \sdout_reg[9]\(9),
      O => p_1_out(4)
    );
\tmds_d9[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sdout_reg[9]\(5),
      I1 => \sdout_reg[9]\(9),
      O => p_1_out(5)
    );
\tmds_d9[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sdout_reg[9]\(6),
      I1 => \sdout_reg[9]\(9),
      O => p_1_out(6)
    );
\tmds_d9[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sdout_reg[9]\(7),
      I1 => \sdout_reg[9]\(9),
      O => p_1_out(7)
    );
\tmds_d9_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(0),
      Q => \tmds_d9_reg_n_0_[0]\,
      R => '0'
    );
\tmds_d9_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(1),
      Q => p_0_in,
      R => '0'
    );
\tmds_d9_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(2),
      Q => p_1_in,
      R => '0'
    );
\tmds_d9_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(3),
      Q => p_1_in1_in,
      R => '0'
    );
\tmds_d9_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(4),
      Q => p_1_in3_in,
      R => '0'
    );
\tmds_d9_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(5),
      Q => p_1_in5_in,
      R => '0'
    );
\tmds_d9_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(6),
      Q => p_1_in7_in,
      R => '0'
    );
\tmds_d9_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(7),
      Q => p_1_in9_in,
      R => '0'
    );
\tmds_d9_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \sdout_reg[9]\(8),
      Q => \tmds_d9_reg_n_0_[8]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_tmds_data_dec_2 is
  port (
    green : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sdout : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rx_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_tmds_data_dec_2 : entity is "tmds_data_dec";
end overlay1_dvi_decoder_v2_0_0_tmds_data_dec_2;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_tmds_data_dec_2 is
  signal p_0_in : STD_LOGIC;
  signal p_13_out : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_1_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal p_1_in3_in : STD_LOGIC;
  signal p_1_in5_in : STD_LOGIC;
  signal p_1_in7_in : STD_LOGIC;
  signal p_1_in9_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \tmds_d9_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmds_d9_reg_n_0_[8]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \decoded[2]_i_1\ : label is "soft_lutpair251";
  attribute SOFT_HLUTNM of \decoded[3]_i_1\ : label is "soft_lutpair251";
  attribute SOFT_HLUTNM of \decoded[4]_i_1\ : label is "soft_lutpair250";
  attribute SOFT_HLUTNM of \decoded[5]_i_1\ : label is "soft_lutpair250";
  attribute SOFT_HLUTNM of \decoded[6]_i_1\ : label is "soft_lutpair249";
  attribute SOFT_HLUTNM of \decoded[7]_i_1\ : label is "soft_lutpair249";
  attribute SOFT_HLUTNM of \tmds_d9[0]_i_1\ : label is "soft_lutpair252";
  attribute SOFT_HLUTNM of \tmds_d9[1]_i_1\ : label is "soft_lutpair252";
  attribute SOFT_HLUTNM of \tmds_d9[2]_i_1\ : label is "soft_lutpair253";
  attribute SOFT_HLUTNM of \tmds_d9[3]_i_1\ : label is "soft_lutpair253";
  attribute SOFT_HLUTNM of \tmds_d9[4]_i_1\ : label is "soft_lutpair254";
  attribute SOFT_HLUTNM of \tmds_d9[5]_i_1\ : label is "soft_lutpair254";
  attribute SOFT_HLUTNM of \tmds_d9[6]_i_1\ : label is "soft_lutpair255";
  attribute SOFT_HLUTNM of \tmds_d9[7]_i_1\ : label is "soft_lutpair255";
begin
\decoded[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in,
      I1 => \tmds_d9_reg_n_0_[0]\,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(1)
    );
\decoded[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in,
      I1 => p_0_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(2)
    );
\decoded[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in1_in,
      I1 => p_1_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(3)
    );
\decoded[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in3_in,
      I1 => p_1_in1_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(4)
    );
\decoded[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in5_in,
      I1 => p_1_in3_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(5)
    );
\decoded[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in7_in,
      I1 => p_1_in5_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(6)
    );
\decoded[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in9_in,
      I1 => p_1_in7_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(7)
    );
\decoded_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \tmds_d9_reg_n_0_[0]\,
      Q => green(0),
      R => '0'
    );
\decoded_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(1),
      Q => green(1),
      R => '0'
    );
\decoded_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(2),
      Q => green(2),
      R => '0'
    );
\decoded_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(3),
      Q => green(3),
      R => '0'
    );
\decoded_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(4),
      Q => green(4),
      R => '0'
    );
\decoded_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(5),
      Q => green(5),
      R => '0'
    );
\decoded_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(6),
      Q => green(6),
      R => '0'
    );
\decoded_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(7),
      Q => green(7),
      R => '0'
    );
\tmds_d9[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sdout(0),
      I1 => sdout(9),
      O => p_1_out(0)
    );
\tmds_d9[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sdout(1),
      I1 => sdout(9),
      O => p_1_out(1)
    );
\tmds_d9[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sdout(2),
      I1 => sdout(9),
      O => p_1_out(2)
    );
\tmds_d9[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sdout(3),
      I1 => sdout(9),
      O => p_1_out(3)
    );
\tmds_d9[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sdout(4),
      I1 => sdout(9),
      O => p_1_out(4)
    );
\tmds_d9[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sdout(5),
      I1 => sdout(9),
      O => p_1_out(5)
    );
\tmds_d9[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sdout(6),
      I1 => sdout(9),
      O => p_1_out(6)
    );
\tmds_d9[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sdout(7),
      I1 => sdout(9),
      O => p_1_out(7)
    );
\tmds_d9_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(0),
      Q => \tmds_d9_reg_n_0_[0]\,
      R => '0'
    );
\tmds_d9_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(1),
      Q => p_0_in,
      R => '0'
    );
\tmds_d9_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(2),
      Q => p_1_in,
      R => '0'
    );
\tmds_d9_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(3),
      Q => p_1_in1_in,
      R => '0'
    );
\tmds_d9_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(4),
      Q => p_1_in3_in,
      R => '0'
    );
\tmds_d9_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(5),
      Q => p_1_in5_in,
      R => '0'
    );
\tmds_d9_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(6),
      Q => p_1_in7_in,
      R => '0'
    );
\tmds_d9_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(7),
      Q => p_1_in9_in,
      R => '0'
    );
\tmds_d9_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => sdout(8),
      Q => \tmds_d9_reg_n_0_[8]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_tmds_data_dec_3 is
  port (
    red : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sdout : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rx_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_tmds_data_dec_3 : entity is "tmds_data_dec";
end overlay1_dvi_decoder_v2_0_0_tmds_data_dec_3;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_tmds_data_dec_3 is
  signal p_0_in : STD_LOGIC;
  signal p_13_out : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_1_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal p_1_in3_in : STD_LOGIC;
  signal p_1_in5_in : STD_LOGIC;
  signal p_1_in7_in : STD_LOGIC;
  signal p_1_in9_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \tmds_d9_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmds_d9_reg_n_0_[8]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \decoded[2]_i_1\ : label is "soft_lutpair258";
  attribute SOFT_HLUTNM of \decoded[3]_i_1\ : label is "soft_lutpair258";
  attribute SOFT_HLUTNM of \decoded[4]_i_1\ : label is "soft_lutpair257";
  attribute SOFT_HLUTNM of \decoded[5]_i_1\ : label is "soft_lutpair257";
  attribute SOFT_HLUTNM of \decoded[6]_i_1\ : label is "soft_lutpair256";
  attribute SOFT_HLUTNM of \decoded[7]_i_1\ : label is "soft_lutpair256";
  attribute SOFT_HLUTNM of \tmds_d9[0]_i_1\ : label is "soft_lutpair259";
  attribute SOFT_HLUTNM of \tmds_d9[1]_i_1\ : label is "soft_lutpair259";
  attribute SOFT_HLUTNM of \tmds_d9[2]_i_1\ : label is "soft_lutpair260";
  attribute SOFT_HLUTNM of \tmds_d9[3]_i_1\ : label is "soft_lutpair260";
  attribute SOFT_HLUTNM of \tmds_d9[4]_i_1\ : label is "soft_lutpair261";
  attribute SOFT_HLUTNM of \tmds_d9[5]_i_1\ : label is "soft_lutpair261";
  attribute SOFT_HLUTNM of \tmds_d9[6]_i_1\ : label is "soft_lutpair262";
  attribute SOFT_HLUTNM of \tmds_d9[7]_i_1\ : label is "soft_lutpair262";
begin
\decoded[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in,
      I1 => \tmds_d9_reg_n_0_[0]\,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(1)
    );
\decoded[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in,
      I1 => p_0_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(2)
    );
\decoded[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in1_in,
      I1 => p_1_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(3)
    );
\decoded[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in3_in,
      I1 => p_1_in1_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(4)
    );
\decoded[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in5_in,
      I1 => p_1_in3_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(5)
    );
\decoded[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in7_in,
      I1 => p_1_in5_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(6)
    );
\decoded[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_1_in9_in,
      I1 => p_1_in7_in,
      I2 => \tmds_d9_reg_n_0_[8]\,
      O => p_13_out(7)
    );
\decoded_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \tmds_d9_reg_n_0_[0]\,
      Q => red(0),
      R => '0'
    );
\decoded_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(1),
      Q => red(1),
      R => '0'
    );
\decoded_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(2),
      Q => red(2),
      R => '0'
    );
\decoded_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(3),
      Q => red(3),
      R => '0'
    );
\decoded_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(4),
      Q => red(4),
      R => '0'
    );
\decoded_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(5),
      Q => red(5),
      R => '0'
    );
\decoded_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(6),
      Q => red(6),
      R => '0'
    );
\decoded_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_13_out(7),
      Q => red(7),
      R => '0'
    );
\tmds_d9[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sdout(0),
      I1 => sdout(9),
      O => p_1_out(0)
    );
\tmds_d9[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sdout(1),
      I1 => sdout(9),
      O => p_1_out(1)
    );
\tmds_d9[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sdout(2),
      I1 => sdout(9),
      O => p_1_out(2)
    );
\tmds_d9[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sdout(3),
      I1 => sdout(9),
      O => p_1_out(3)
    );
\tmds_d9[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sdout(4),
      I1 => sdout(9),
      O => p_1_out(4)
    );
\tmds_d9[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sdout(5),
      I1 => sdout(9),
      O => p_1_out(5)
    );
\tmds_d9[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sdout(6),
      I1 => sdout(9),
      O => p_1_out(6)
    );
\tmds_d9[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sdout(7),
      I1 => sdout(9),
      O => p_1_out(7)
    );
\tmds_d9_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(0),
      Q => \tmds_d9_reg_n_0_[0]\,
      R => '0'
    );
\tmds_d9_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(1),
      Q => p_0_in,
      R => '0'
    );
\tmds_d9_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(2),
      Q => p_1_in,
      R => '0'
    );
\tmds_d9_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(3),
      Q => p_1_in1_in,
      R => '0'
    );
\tmds_d9_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(4),
      Q => p_1_in3_in,
      R => '0'
    );
\tmds_d9_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(5),
      Q => p_1_in5_in,
      R => '0'
    );
\tmds_d9_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(6),
      Q => p_1_in7_in,
      R => '0'
    );
\tmds_d9_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => p_1_out(7),
      Q => p_1_in9_in,
      R => '0'
    );
\tmds_d9_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => sdout(8),
      Q => \tmds_d9_reg_n_0_[8]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_chnlbond is
  port (
    rcvd_ctkn0_1 : out STD_LOGIC;
    we : out STD_LOGIC;
    red_rdy : out STD_LOGIC;
    c1_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    c0_reg : out STD_LOGIC;
    \sdout_reg[0]\ : out STD_LOGIC;
    line_end : out STD_LOGIC;
    vgb_reg : out STD_LOGIC;
    dgb_reg : out STD_LOGIC;
    de_reg : out STD_LOGIC;
    rx_clk : in STD_LOGIC;
    rawdata_vld : in STD_LOGIC;
    psaligned_reg : in STD_LOGIC;
    psaligned_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    c1_reg_0 : in STD_LOGIC;
    c0_reg_0 : in STD_LOGIC;
    iamrdy_reg_0 : in STD_LOGIC;
    iamrdy_reg_1 : in STD_LOGIC;
    de_r : in STD_LOGIC;
    de_g : in STD_LOGIC;
    rcvd_ctkn0 : in STD_LOGIC;
    de_b : in STD_LOGIC;
    rcvd_ctkn0_0 : in STD_LOGIC;
    \dataout_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_chnlbond : entity is "chnlbond";
end overlay1_dvi_decoder_v2_0_0_chnlbond;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_chnlbond is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal blnkbgn : STD_LOGIC;
  signal \blnkbgn_i_1__1_n_0\ : STD_LOGIC;
  signal \de_i_2__1_n_0\ : STD_LOGIC;
  signal \de_i_3__1_n_0\ : STD_LOGIC;
  signal \de_i_4__1_n_0\ : STD_LOGIC;
  signal \dec_b/c01\ : STD_LOGIC;
  signal \dgb_i_2__0_n_0\ : STD_LOGIC;
  signal dpfo_dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \iamrdy_i_2__1_n_0\ : STD_LOGIC;
  signal line_end_INST_0_i_4_n_0 : STD_LOGIC;
  signal line_end_INST_0_i_5_n_0 : STD_LOGIC;
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ra_en : STD_LOGIC;
  signal \ra_en_i_1__1_n_0\ : STD_LOGIC;
  signal ra_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rawdata_vld_rising : STD_LOGIC;
  signal rcvd_ctkn : STD_LOGIC;
  signal \^rcvd_ctkn0_1\ : STD_LOGIC;
  signal rcvd_ctkn_q : STD_LOGIC;
  signal \^red_rdy\ : STD_LOGIC;
  signal skip_line : STD_LOGIC;
  signal \skip_line_i_1__1_n_0\ : STD_LOGIC;
  signal vgb_i_2_n_0 : STD_LOGIC;
  signal vgb_i_3_n_0 : STD_LOGIC;
  signal wa_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^we\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \c1_i_1__1\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \de_i_1__1\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \iamrdy_i_2__1\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \ra[0]_i_1__1\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \ra[1]_i_1__1\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \ra[2]_i_1__1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \ra[3]_i_1__1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of ra_en_i_2 : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \sdout[9]_i_1__0\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \skip_line_i_1__1\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \wa[0]_i_1__1\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \wa[1]_i_1__1\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \wa[2]_i_1__1\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \wa[3]_i_1__1\ : label is "soft_lutpair164";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  rcvd_ctkn0_1 <= \^rcvd_ctkn0_1\;
  red_rdy <= \^red_rdy\;
  we <= \^we\;
\blnkbgn_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rcvd_ctkn,
      I1 => rcvd_ctkn_q,
      O => \blnkbgn_i_1__1_n_0\
    );
blnkbgn_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \blnkbgn_i_1__1_n_0\,
      Q => blnkbgn,
      R => '0'
    );
\c0_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15FF1500"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      I2 => \^q\(6),
      I3 => \de_i_2__1_n_0\,
      I4 => c0_reg_0,
      O => c0_reg
    );
\c1_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"18FF1800"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(8),
      I2 => \^q\(9),
      I3 => \de_i_2__1_n_0\,
      I4 => c1_reg_0,
      O => c1_reg
    );
cbfifo_i: entity work.overlay1_dvi_decoder_v2_0_0_DRAM16XN
     port map (
      O_DATA_OUT_DP(9 downto 0) => dpfo_dout(9 downto 0),
      Q(3 downto 0) => wa_reg(3 downto 0),
      WRITE_EN => \^we\,
      \dataout_reg[9]\(9 downto 0) => \dataout_reg[9]\(9 downto 0),
      \ra_reg[3]\(3 downto 0) => ra_reg(3 downto 0),
      rx_clk => rx_clk
    );
\de_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \de_i_2__1_n_0\,
      O => de_reg
    );
\de_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000DB"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(9),
      I2 => \^q\(6),
      I3 => \de_i_3__1_n_0\,
      I4 => \de_i_4__1_n_0\,
      O => \de_i_2__1_n_0\
    );
\de_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6FF6FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(4),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \de_i_3__1_n_0\
    );
\de_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDBFFDBFFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(6),
      I2 => \^q\(2),
      I3 => \^q\(5),
      I4 => \^q\(4),
      I5 => \^q\(3),
      O => \de_i_4__1_n_0\
    );
\dgb_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(5),
      I4 => \dgb_i_2__0_n_0\,
      O => dgb_reg
    );
\dgb_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(7),
      I3 => \^q\(9),
      I4 => \^q\(8),
      I5 => \^q\(6),
      O => \dgb_i_2__0_n_0\
    );
\iamrdy_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => blnkbgn,
      I1 => skip_line,
      I2 => \^red_rdy\,
      O => \iamrdy_i_2__1_n_0\
    );
iamrdy_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \iamrdy_i_2__1_n_0\,
      Q => \^red_rdy\,
      R => psaligned_reg_0(0)
    );
line_end_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^rcvd_ctkn0_1\,
      I1 => de_r,
      I2 => de_g,
      I3 => rcvd_ctkn0,
      I4 => de_b,
      I5 => rcvd_ctkn0_0,
      O => line_end
    );
line_end_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044000000000F00"
    )
        port map (
      I0 => line_end_INST_0_i_4_n_0,
      I1 => \^q\(5),
      I2 => line_end_INST_0_i_5_n_0,
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \^rcvd_ctkn0_1\
    );
line_end_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(8),
      I3 => \^q\(7),
      I4 => \^q\(6),
      O => line_end_INST_0_i_4_n_0
    );
line_end_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(7),
      I3 => \^q\(8),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => line_end_INST_0_i_5_n_0
    );
\ra[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ra_reg(0),
      O => \p_0_in__4\(0)
    );
\ra[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ra_reg(0),
      I1 => ra_reg(1),
      O => \p_0_in__4\(1)
    );
\ra[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => ra_reg(0),
      I1 => ra_reg(1),
      I2 => ra_reg(2),
      O => \p_0_in__4\(2)
    );
\ra[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => ra_reg(1),
      I1 => ra_reg(0),
      I2 => ra_reg(2),
      I3 => ra_reg(3),
      O => \p_0_in__4\(3)
    );
\ra_en_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF70"
    )
        port map (
      I0 => blnkbgn,
      I1 => skip_line,
      I2 => ra_en,
      I3 => \dec_b/c01\,
      I4 => rawdata_vld_rising,
      O => \ra_en_i_1__1_n_0\
    );
ra_en_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^red_rdy\,
      I1 => iamrdy_reg_1,
      I2 => iamrdy_reg_0,
      O => \dec_b/c01\
    );
ra_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \ra_en_i_1__1_n_0\,
      Q => ra_en,
      R => '0'
    );
\ra_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => ra_en,
      D => \p_0_in__4\(0),
      Q => ra_reg(0),
      R => psaligned_reg_0(0)
    );
\ra_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => ra_en,
      D => \p_0_in__4\(1),
      Q => ra_reg(1),
      R => psaligned_reg_0(0)
    );
\ra_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => ra_en,
      D => \p_0_in__4\(2),
      Q => ra_reg(2),
      R => psaligned_reg_0(0)
    );
\ra_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => ra_en,
      D => \p_0_in__4\(3),
      Q => ra_reg(3),
      R => psaligned_reg_0(0)
    );
rawdata_vld_rising_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => psaligned_reg,
      Q => rawdata_vld_rising,
      R => '0'
    );
rcvd_ctkn_q_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => rcvd_ctkn,
      Q => rcvd_ctkn_q,
      R => '0'
    );
rcvd_ctkn_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \^rcvd_ctkn0_1\,
      Q => rcvd_ctkn,
      R => '0'
    );
\sdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(0),
      Q => \^q\(0),
      R => '0'
    );
\sdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(1),
      Q => \^q\(1),
      R => '0'
    );
\sdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(2),
      Q => \^q\(2),
      R => '0'
    );
\sdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(3),
      Q => \^q\(3),
      R => '0'
    );
\sdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(4),
      Q => \^q\(4),
      R => '0'
    );
\sdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(5),
      Q => \^q\(5),
      R => '0'
    );
\sdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(6),
      Q => \^q\(6),
      R => '0'
    );
\sdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(7),
      Q => \^q\(7),
      R => '0'
    );
\sdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(8),
      Q => \^q\(8),
      R => '0'
    );
\sdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(9),
      Q => \^q\(9),
      R => '0'
    );
\sdout[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^red_rdy\,
      I1 => iamrdy_reg_0,
      I2 => iamrdy_reg_1,
      O => \sdout_reg[0]\
    );
\skip_line_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => blnkbgn,
      I1 => skip_line,
      O => \skip_line_i_1__1_n_0\
    );
skip_line_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \skip_line_i_1__1_n_0\,
      Q => skip_line,
      R => psaligned_reg_0(0)
    );
vgb_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(7),
      I3 => vgb_i_2_n_0,
      I4 => vgb_i_3_n_0,
      I5 => \^q\(2),
      O => vgb_reg
    );
vgb_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(9),
      I3 => \^q\(8),
      O => vgb_i_2_n_0
    );
vgb_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => vgb_i_3_n_0
    );
\wa[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wa_reg(0),
      O => \p_0_in__3\(0)
    );
\wa[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wa_reg(0),
      I1 => wa_reg(1),
      O => \p_0_in__3\(1)
    );
\wa[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wa_reg(0),
      I1 => wa_reg(1),
      I2 => wa_reg(2),
      O => \p_0_in__3\(2)
    );
\wa[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wa_reg(1),
      I1 => wa_reg(0),
      I2 => wa_reg(2),
      I3 => wa_reg(3),
      O => \p_0_in__3\(3)
    );
\wa_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \p_0_in__3\(0),
      Q => wa_reg(0),
      R => psaligned_reg_0(0)
    );
\wa_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \p_0_in__3\(1),
      Q => wa_reg(1),
      R => psaligned_reg_0(0)
    );
\wa_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \p_0_in__3\(2),
      Q => wa_reg(2),
      R => psaligned_reg_0(0)
    );
\wa_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \p_0_in__3\(3),
      Q => wa_reg(3),
      R => psaligned_reg_0(0)
    );
we_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => rawdata_vld,
      Q => \^we\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_chnlbond_10 is
  port (
    rcvd_ctkn0 : out STD_LOGIC;
    we : out STD_LOGIC;
    blue_rdy : out STD_LOGIC;
    c1_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    c0_reg : out STD_LOGIC;
    vgb_reg : out STD_LOGIC;
    de_reg : out STD_LOGIC;
    rx_clk : in STD_LOGIC;
    rawdata_vld : in STD_LOGIC;
    psaligned_reg : in STD_LOGIC;
    psaligned_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    iamrdy_reg_0 : in STD_LOGIC;
    iamrdy_reg_1 : in STD_LOGIC;
    vsync_q2 : in STD_LOGIC;
    hsync_q2 : in STD_LOGIC;
    \dataout_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_chnlbond_10 : entity is "chnlbond";
end overlay1_dvi_decoder_v2_0_0_chnlbond_10;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_chnlbond_10 is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal blnkbgn : STD_LOGIC;
  signal blnkbgn_i_1_n_0 : STD_LOGIC;
  signal \^blue_rdy\ : STD_LOGIC;
  signal de_i_2_n_0 : STD_LOGIC;
  signal de_i_3_n_0 : STD_LOGIC;
  signal de_i_4_n_0 : STD_LOGIC;
  signal dpfo_dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal iamrdy_i_2_n_0 : STD_LOGIC;
  signal line_end_INST_0_i_7_n_0 : STD_LOGIC;
  signal \p_0_in__0__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ra_en : STD_LOGIC;
  signal ra_en11_out : STD_LOGIC;
  signal ra_en_i_1_n_0 : STD_LOGIC;
  signal \ra_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rawdata_vld_rising : STD_LOGIC;
  signal rcvd_ctkn : STD_LOGIC;
  signal \^rcvd_ctkn0\ : STD_LOGIC;
  signal rcvd_ctkn_q : STD_LOGIC;
  signal skip_line : STD_LOGIC;
  signal skip_line_i_1_n_0 : STD_LOGIC;
  signal \vgb_i_2__0_n_0\ : STD_LOGIC;
  signal \wa_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^we\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \c0_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of de_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of iamrdy_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ra[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ra[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ra[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ra[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of skip_line_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wa[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wa[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wa[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wa[3]_i_1\ : label is "soft_lutpair1";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  blue_rdy <= \^blue_rdy\;
  rcvd_ctkn0 <= \^rcvd_ctkn0\;
  we <= \^we\;
blnkbgn_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rcvd_ctkn,
      I1 => rcvd_ctkn_q,
      O => blnkbgn_i_1_n_0
    );
blnkbgn_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => blnkbgn_i_1_n_0,
      Q => blnkbgn,
      R => '0'
    );
\c0_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07FF0700"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(6),
      I2 => \^q\(8),
      I3 => de_i_2_n_0,
      I4 => hsync_q2,
      O => c0_reg
    );
\c1_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"18FF1800"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(6),
      I2 => \^q\(9),
      I3 => de_i_2_n_0,
      I4 => vsync_q2,
      O => c1_reg
    );
cbfifo_i: entity work.overlay1_dvi_decoder_v2_0_0_DRAM16XN_15
     port map (
      O_DATA_OUT_DP(9 downto 0) => dpfo_dout(9 downto 0),
      Q(3 downto 0) => \wa_reg__0\(3 downto 0),
      WRITE_EN => \^we\,
      \dataout_reg[9]\(9 downto 0) => \dataout_reg[9]\(9 downto 0),
      \ra_reg[3]\(3 downto 0) => \ra_reg__0\(3 downto 0),
      rx_clk => rx_clk
    );
de_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => de_i_2_n_0,
      O => de_reg
    );
de_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E7"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      I2 => \^q\(9),
      I3 => de_i_3_n_0,
      I4 => de_i_4_n_0,
      O => de_i_2_n_0
    );
de_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6FF6FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(4),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => de_i_3_n_0
    );
de_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDBFFDBFFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(6),
      I2 => \^q\(2),
      I3 => \^q\(5),
      I4 => \^q\(4),
      I5 => \^q\(3),
      O => de_i_4_n_0
    );
iamrdy_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => blnkbgn,
      I1 => skip_line,
      I2 => \^blue_rdy\,
      O => iamrdy_i_2_n_0
    );
iamrdy_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => iamrdy_i_2_n_0,
      Q => \^blue_rdy\,
      R => psaligned_reg_0(0)
    );
line_end_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100800"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => line_end_INST_0_i_7_n_0,
      O => \^rcvd_ctkn0\
    );
line_end_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE7E7FFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(7),
      O => line_end_INST_0_i_7_n_0
    );
\ra[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ra_reg__0\(0),
      O => \p_0_in__0__0\(0)
    );
\ra[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ra_reg__0\(0),
      I1 => \ra_reg__0\(1),
      O => \p_0_in__0__0\(1)
    );
\ra[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ra_reg__0\(0),
      I1 => \ra_reg__0\(1),
      I2 => \ra_reg__0\(2),
      O => \p_0_in__0__0\(2)
    );
\ra[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \ra_reg__0\(1),
      I1 => \ra_reg__0\(0),
      I2 => \ra_reg__0\(2),
      I3 => \ra_reg__0\(3),
      O => \p_0_in__0__0\(3)
    );
ra_en1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^blue_rdy\,
      I1 => iamrdy_reg_0,
      I2 => iamrdy_reg_1,
      O => ra_en11_out
    );
ra_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF70"
    )
        port map (
      I0 => blnkbgn,
      I1 => skip_line,
      I2 => ra_en,
      I3 => ra_en11_out,
      I4 => rawdata_vld_rising,
      O => ra_en_i_1_n_0
    );
ra_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => ra_en_i_1_n_0,
      Q => ra_en,
      R => '0'
    );
\ra_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => ra_en,
      D => \p_0_in__0__0\(0),
      Q => \ra_reg__0\(0),
      R => psaligned_reg_0(0)
    );
\ra_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => ra_en,
      D => \p_0_in__0__0\(1),
      Q => \ra_reg__0\(1),
      R => psaligned_reg_0(0)
    );
\ra_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => ra_en,
      D => \p_0_in__0__0\(2),
      Q => \ra_reg__0\(2),
      R => psaligned_reg_0(0)
    );
\ra_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => ra_en,
      D => \p_0_in__0__0\(3),
      Q => \ra_reg__0\(3),
      R => psaligned_reg_0(0)
    );
rawdata_vld_rising_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => psaligned_reg,
      Q => rawdata_vld_rising,
      R => '0'
    );
rcvd_ctkn_q_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => rcvd_ctkn,
      Q => rcvd_ctkn_q,
      R => '0'
    );
rcvd_ctkn_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \^rcvd_ctkn0\,
      Q => rcvd_ctkn,
      R => '0'
    );
\sdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(0),
      Q => \^q\(0),
      R => '0'
    );
\sdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(1),
      Q => \^q\(1),
      R => '0'
    );
\sdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(2),
      Q => \^q\(2),
      R => '0'
    );
\sdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(3),
      Q => \^q\(3),
      R => '0'
    );
\sdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(4),
      Q => \^q\(4),
      R => '0'
    );
\sdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(5),
      Q => \^q\(5),
      R => '0'
    );
\sdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(6),
      Q => \^q\(6),
      R => '0'
    );
\sdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(7),
      Q => \^q\(7),
      R => '0'
    );
\sdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(8),
      Q => \^q\(8),
      R => '0'
    );
\sdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(9),
      Q => \^q\(9),
      R => '0'
    );
skip_line_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => blnkbgn,
      I1 => skip_line,
      O => skip_line_i_1_n_0
    );
skip_line_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => skip_line_i_1_n_0,
      Q => skip_line,
      R => psaligned_reg_0(0)
    );
\vgb_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(4),
      I4 => \vgb_i_2__0_n_0\,
      O => vgb_reg
    );
\vgb_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      I2 => \^q\(2),
      I3 => \^q\(9),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \vgb_i_2__0_n_0\
    );
\wa[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wa_reg__0\(0),
      O => \p_0_in__2\(0)
    );
\wa[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wa_reg__0\(0),
      I1 => \wa_reg__0\(1),
      O => \p_0_in__2\(1)
    );
\wa[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \wa_reg__0\(0),
      I1 => \wa_reg__0\(1),
      I2 => \wa_reg__0\(2),
      O => \p_0_in__2\(2)
    );
\wa[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \wa_reg__0\(1),
      I1 => \wa_reg__0\(0),
      I2 => \wa_reg__0\(2),
      I3 => \wa_reg__0\(3),
      O => \p_0_in__2\(3)
    );
\wa_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \p_0_in__2\(0),
      Q => \wa_reg__0\(0),
      R => psaligned_reg_0(0)
    );
\wa_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \p_0_in__2\(1),
      Q => \wa_reg__0\(1),
      R => psaligned_reg_0(0)
    );
\wa_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \p_0_in__2\(2),
      Q => \wa_reg__0\(2),
      R => psaligned_reg_0(0)
    );
\wa_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \p_0_in__2\(3),
      Q => \wa_reg__0\(3),
      R => psaligned_reg_0(0)
    );
we_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => rawdata_vld,
      Q => \^we\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_chnlbond_4 is
  port (
    rcvd_ctkn0 : out STD_LOGIC;
    we : out STD_LOGIC;
    green_rdy : out STD_LOGIC;
    c0_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    c1_reg : out STD_LOGIC;
    \sdout_reg[0]\ : out STD_LOGIC;
    vgb_reg : out STD_LOGIC;
    dgb : out STD_LOGIC;
    de_reg : out STD_LOGIC;
    rx_clk : in STD_LOGIC;
    rawdata_vld : in STD_LOGIC;
    psaligned_reg : in STD_LOGIC;
    psaligned_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    iamrdy_reg_0 : in STD_LOGIC;
    iamrdy_reg_1 : in STD_LOGIC;
    ctl_code_wire : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \dataout_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_chnlbond_4 : entity is "chnlbond";
end overlay1_dvi_decoder_v2_0_0_chnlbond_4;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_chnlbond_4 is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal blnkbgn : STD_LOGIC;
  signal \blnkbgn_i_1__0_n_0\ : STD_LOGIC;
  signal \de_i_2__0_n_0\ : STD_LOGIC;
  signal \de_i_3__0_n_0\ : STD_LOGIC;
  signal \de_i_4__0_n_0\ : STD_LOGIC;
  signal de_i_5_n_0 : STD_LOGIC;
  signal dgb_i_2_n_0 : STD_LOGIC;
  signal dgb_i_3_n_0 : STD_LOGIC;
  signal dpfo_dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^green_rdy\ : STD_LOGIC;
  signal \iamrdy_i_2__0_n_0\ : STD_LOGIC;
  signal line_end_INST_0_i_6_n_0 : STD_LOGIC;
  signal \p_0_in__1__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__2__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ra_en : STD_LOGIC;
  signal ra_en11_out : STD_LOGIC;
  signal \ra_en_i_1__0_n_0\ : STD_LOGIC;
  signal ra_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rawdata_vld_rising : STD_LOGIC;
  signal rcvd_ctkn : STD_LOGIC;
  signal \^rcvd_ctkn0\ : STD_LOGIC;
  signal rcvd_ctkn_q : STD_LOGIC;
  signal skip_line : STD_LOGIC;
  signal \skip_line_i_1__0_n_0\ : STD_LOGIC;
  signal wa_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^we\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of c1_i_1 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \de_i_1__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \de_i_4__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of de_i_5 : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of dgb_i_2 : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of dgb_i_3 : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \iamrdy_i_2__0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \ra[0]_i_1__0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \ra[1]_i_1__0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \ra[2]_i_1__0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \ra[3]_i_1__0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of ra_en1 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \sdout[9]_i_1__1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \skip_line_i_1__0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \wa[0]_i_1__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \wa[1]_i_1__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \wa[2]_i_1__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \wa[3]_i_1__0\ : label is "soft_lutpair80";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  green_rdy <= \^green_rdy\;
  rcvd_ctkn0 <= \^rcvd_ctkn0\;
  we <= \^we\;
\blnkbgn_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rcvd_ctkn,
      I1 => rcvd_ctkn_q,
      O => \blnkbgn_i_1__0_n_0\
    );
blnkbgn_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \blnkbgn_i_1__0_n_0\,
      Q => blnkbgn,
      R => '0'
    );
c0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \^q\(8),
      I1 => \de_i_2__0_n_0\,
      I2 => ctl_code_wire(0),
      O => c0_reg
    );
c1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"62FF6200"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(6),
      I3 => \de_i_2__0_n_0\,
      I4 => ctl_code_wire(1),
      O => c1_reg
    );
cbfifo_i: entity work.overlay1_dvi_decoder_v2_0_0_DRAM16XN_9
     port map (
      O_DATA_OUT_DP(9 downto 0) => dpfo_dout(9 downto 0),
      Q(3 downto 0) => wa_reg(3 downto 0),
      WRITE_EN => \^we\,
      \dataout_reg[9]\(9 downto 0) => \dataout_reg[9]\(9 downto 0),
      \ra_reg[3]\(3 downto 0) => ra_reg(3 downto 0),
      rx_clk => rx_clk
    );
\de_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \de_i_2__0_n_0\,
      O => de_reg
    );
\de_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000404000404"
    )
        port map (
      I0 => \de_i_3__0_n_0\,
      I1 => \de_i_4__0_n_0\,
      I2 => de_i_5_n_0,
      I3 => \^q\(3),
      I4 => \^q\(9),
      I5 => \^q\(2),
      O => \de_i_2__0_n_0\
    );
\de_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9FF9FFFFFFFF9FF9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(7),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(6),
      I5 => \^q\(2),
      O => \de_i_3__0_n_0\
    );
\de_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(8),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \de_i_4__0_n_0\
    );
de_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(2),
      O => de_i_5_n_0
    );
dgb_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => dgb_i_2_n_0,
      I4 => \^q\(9),
      I5 => dgb_i_3_n_0,
      O => dgb
    );
dgb_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(8),
      I3 => \^q\(7),
      O => dgb_i_2_n_0
    );
dgb_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => dgb_i_3_n_0
    );
\iamrdy_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => blnkbgn,
      I1 => skip_line,
      I2 => \^green_rdy\,
      O => \iamrdy_i_2__0_n_0\
    );
iamrdy_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \iamrdy_i_2__0_n_0\,
      Q => \^green_rdy\,
      R => psaligned_reg_0(0)
    );
line_end_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000008"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => line_end_INST_0_i_6_n_0,
      O => \^rcvd_ctkn0\
    );
line_end_INST_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFDF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(7),
      I3 => \^q\(8),
      I4 => \^q\(6),
      O => line_end_INST_0_i_6_n_0
    );
\ra[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ra_reg(0),
      O => \p_0_in__2__0\(0)
    );
\ra[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ra_reg(0),
      I1 => ra_reg(1),
      O => \p_0_in__2__0\(1)
    );
\ra[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => ra_reg(0),
      I1 => ra_reg(1),
      I2 => ra_reg(2),
      O => \p_0_in__2__0\(2)
    );
\ra[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => ra_reg(1),
      I1 => ra_reg(0),
      I2 => ra_reg(2),
      I3 => ra_reg(3),
      O => \p_0_in__2__0\(3)
    );
ra_en1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^green_rdy\,
      I1 => iamrdy_reg_0,
      I2 => iamrdy_reg_1,
      O => ra_en11_out
    );
\ra_en_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF70"
    )
        port map (
      I0 => blnkbgn,
      I1 => skip_line,
      I2 => ra_en,
      I3 => ra_en11_out,
      I4 => rawdata_vld_rising,
      O => \ra_en_i_1__0_n_0\
    );
ra_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \ra_en_i_1__0_n_0\,
      Q => ra_en,
      R => '0'
    );
\ra_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => ra_en,
      D => \p_0_in__2__0\(0),
      Q => ra_reg(0),
      R => psaligned_reg_0(0)
    );
\ra_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => ra_en,
      D => \p_0_in__2__0\(1),
      Q => ra_reg(1),
      R => psaligned_reg_0(0)
    );
\ra_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => ra_en,
      D => \p_0_in__2__0\(2),
      Q => ra_reg(2),
      R => psaligned_reg_0(0)
    );
\ra_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => ra_en,
      D => \p_0_in__2__0\(3),
      Q => ra_reg(3),
      R => psaligned_reg_0(0)
    );
rawdata_vld_rising_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => psaligned_reg,
      Q => rawdata_vld_rising,
      R => '0'
    );
rcvd_ctkn_q_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => rcvd_ctkn,
      Q => rcvd_ctkn_q,
      R => '0'
    );
rcvd_ctkn_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \^rcvd_ctkn0\,
      Q => rcvd_ctkn,
      R => '0'
    );
\sdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(0),
      Q => \^q\(0),
      R => '0'
    );
\sdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(1),
      Q => \^q\(1),
      R => '0'
    );
\sdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(2),
      Q => \^q\(2),
      R => '0'
    );
\sdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(3),
      Q => \^q\(3),
      R => '0'
    );
\sdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(4),
      Q => \^q\(4),
      R => '0'
    );
\sdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(5),
      Q => \^q\(5),
      R => '0'
    );
\sdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(6),
      Q => \^q\(6),
      R => '0'
    );
\sdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(7),
      Q => \^q\(7),
      R => '0'
    );
\sdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(8),
      Q => \^q\(8),
      R => '0'
    );
\sdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => dpfo_dout(9),
      Q => \^q\(9),
      R => '0'
    );
\sdout[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^green_rdy\,
      I1 => iamrdy_reg_0,
      I2 => iamrdy_reg_1,
      O => vgb_reg
    );
\sdout[9]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^green_rdy\,
      I1 => iamrdy_reg_1,
      I2 => iamrdy_reg_0,
      O => \sdout_reg[0]\
    );
\skip_line_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => blnkbgn,
      I1 => skip_line,
      O => \skip_line_i_1__0_n_0\
    );
skip_line_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \skip_line_i_1__0_n_0\,
      Q => skip_line,
      R => psaligned_reg_0(0)
    );
\wa[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wa_reg(0),
      O => \p_0_in__1__0\(0)
    );
\wa[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wa_reg(0),
      I1 => wa_reg(1),
      O => \p_0_in__1__0\(1)
    );
\wa[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wa_reg(0),
      I1 => wa_reg(1),
      I2 => wa_reg(2),
      O => \p_0_in__1__0\(2)
    );
\wa[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wa_reg(1),
      I1 => wa_reg(0),
      I2 => wa_reg(2),
      I3 => wa_reg(3),
      O => \p_0_in__1__0\(3)
    );
\wa_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \p_0_in__1__0\(0),
      Q => wa_reg(0),
      R => psaligned_reg_0(0)
    );
\wa_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \p_0_in__1__0\(1),
      Q => wa_reg(1),
      R => psaligned_reg_0(0)
    );
\wa_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \p_0_in__1__0\(2),
      Q => wa_reg(2),
      R => psaligned_reg_0(0)
    );
\wa_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \p_0_in__1__0\(3),
      Q => wa_reg(3),
      R => psaligned_reg_0(0)
    );
we_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => rawdata_vld,
      Q => \^we\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff is
  port (
    read_enable_oclk : out STD_LOGIC;
    red_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    red_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rcvd_ctkn_reg : out STD_LOGIC;
    red_p : in STD_LOGIC;
    red_n : in STD_LOGIC;
    CLK : in STD_LOGIC;
    bitslipx1p25 : in STD_LOGIC;
    rx_clk : in STD_LOGIC;
    CLKB0 : in STD_LOGIC;
    reset_1p25 : in STD_LOGIC;
    rx_clk_0 : in STD_LOGIC;
    p_12_in : in STD_LOGIC;
    read_reset_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff : entity is "serdes_1_10_diff";
end overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff is
  signal m_delay_val_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mdataoutd : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mdout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_data_delay_m : STD_LOGIC;
  signal rx_data_delay_s : STD_LOGIC;
  signal rx_data_in_m : STD_LOGIC;
  signal rx_data_in_s : STD_LOGIC;
  signal s_delay_val_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal sdout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ISERDESE2_master_O_UNCONNECTED : STD_LOGIC;
  signal NLW_ISERDESE2_master_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_ISERDESE2_master_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_ISERDESE2_slave_O_UNCONNECTED : STD_LOGIC;
  signal NLW_ISERDESE2_slave_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_ISERDESE2_slave_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_idelay_m_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_idelay_s_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of ISERDESE2_master : label is "PRIMITIVE";
  attribute BOX_TYPE of ISERDESE2_slave : label is "PRIMITIVE";
  attribute BOX_TYPE of data_in : label is "PRIMITIVE";
  attribute BOX_TYPE of idelay_m : label is "PRIMITIVE";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of idelay_m : label is 0;
  attribute BOX_TYPE of idelay_s : label is "PRIMITIVE";
  attribute SIM_DELAY_D of idelay_s : label is 0;
begin
ISERDESE2_master: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 1,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslipx1p25,
      CE1 => '1',
      CE2 => '1',
      CLK => rx_clk,
      CLKB => CLKB0,
      CLKDIV => CLK,
      CLKDIVP => '0',
      D => '0',
      DDLY => rx_data_delay_m,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_ISERDESE2_master_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => mdout(7),
      Q2 => mdout(6),
      Q3 => mdout(5),
      Q4 => mdout(4),
      Q5 => mdout(3),
      Q6 => mdout(2),
      Q7 => mdout(1),
      Q8 => mdout(0),
      RST => reset_1p25,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_ISERDESE2_master_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_ISERDESE2_master_SHIFTOUT2_UNCONNECTED
    );
ISERDESE2_slave: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 1,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslipx1p25,
      CE1 => '1',
      CE2 => '1',
      CLK => rx_clk,
      CLKB => CLKB0,
      CLKDIV => CLK,
      CLKDIVP => '0',
      D => '0',
      DDLY => rx_data_delay_s,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_ISERDESE2_slave_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => sdout(7),
      Q2 => sdout(6),
      Q3 => sdout(5),
      Q4 => sdout(4),
      Q5 => sdout(3),
      Q6 => sdout(2),
      Q7 => sdout(1),
      Q8 => sdout(0),
      RST => reset_1p25,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_ISERDESE2_slave_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_ISERDESE2_slave_SHIFTOUT2_UNCONNECTED
    );
data_in: unisim.vcomponents.IBUFDS_DIFF_OUT
    generic map(
      DQS_BIAS => "FALSE",
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => red_p,
      IB => red_n,
      O => rx_data_in_m,
      OB => rx_data_in_s
    );
dc_inst: entity work.overlay1_dvi_decoder_v2_0_0_delay_controller_wrap
     port map (
      CLK => CLK,
      D(7 downto 0) => sdout(7 downto 0),
      Q(4 downto 0) => m_delay_val_in(4 downto 0),
      bitslipx1p25_reg(7 downto 0) => mdout(7 downto 0),
      \dataout_reg[7]\(7 downto 0) => mdataoutd(7 downto 0),
      p_12_in => p_12_in,
      red_debug(31 downto 0) => red_debug(31 downto 0),
      red_eye(31 downto 0) => red_eye(31 downto 0),
      reset_1p25 => reset_1p25,
      \sdataouta_reg[7]_0\(4 downto 0) => s_delay_val_in(4 downto 0)
    );
gb8to10: entity work.overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10
     port map (
      CLK => CLK,
      Q(9 downto 0) => Q(9 downto 0),
      \data_out_reg[7]\(7 downto 0) => mdataoutd(7 downto 0),
      rcvd_ctkn_reg => rcvd_ctkn_reg,
      read_enable_oclk => read_enable_oclk,
      read_reset_reg(0) => read_reset_reg(0),
      reset_1p25 => reset_1p25,
      rx_clk => rx_clk_0
    );
idelay_m: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => CLK,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => m_delay_val_in(4 downto 0),
      CNTVALUEOUT(4 downto 0) => NLW_idelay_m_CNTVALUEOUT_UNCONNECTED(4 downto 0),
      DATAIN => '0',
      DATAOUT => rx_data_delay_m,
      IDATAIN => rx_data_in_m,
      INC => '0',
      LD => '1',
      LDPIPEEN => '0',
      REGRST => '0'
    );
idelay_s: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '1',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => CLK,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => s_delay_val_in(4 downto 0),
      CNTVALUEOUT(4 downto 0) => NLW_idelay_s_CNTVALUEOUT_UNCONNECTED(4 downto 0),
      DATAIN => '0',
      DATAOUT => rx_data_delay_s,
      IDATAIN => rx_data_in_s,
      INC => '0',
      LD => '1',
      LDPIPEEN => '0',
      REGRST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff_11 is
  port (
    read_enable_oclk : out STD_LOGIC;
    blue_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    blue_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rcvd_ctkn_reg : out STD_LOGIC;
    blue_p : in STD_LOGIC;
    blue_n : in STD_LOGIC;
    CLK : in STD_LOGIC;
    bitslipx1p25 : in STD_LOGIC;
    rx_clk : in STD_LOGIC;
    CLKB0 : in STD_LOGIC;
    reset_1p25 : in STD_LOGIC;
    rx_clk_0 : in STD_LOGIC;
    p_12_in : in STD_LOGIC;
    read_reset_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff_11 : entity is "serdes_1_10_diff";
end overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff_11;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff_11 is
  signal m_delay_val_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mdataoutd : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mdout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_data_delay_m : STD_LOGIC;
  signal rx_data_delay_s : STD_LOGIC;
  signal rx_data_in_m : STD_LOGIC;
  signal rx_data_in_s : STD_LOGIC;
  signal s_delay_val_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal sdout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ISERDESE2_master_O_UNCONNECTED : STD_LOGIC;
  signal NLW_ISERDESE2_master_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_ISERDESE2_master_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_ISERDESE2_slave_O_UNCONNECTED : STD_LOGIC;
  signal NLW_ISERDESE2_slave_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_ISERDESE2_slave_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_idelay_m_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_idelay_s_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of ISERDESE2_master : label is "PRIMITIVE";
  attribute BOX_TYPE of ISERDESE2_slave : label is "PRIMITIVE";
  attribute BOX_TYPE of data_in : label is "PRIMITIVE";
  attribute BOX_TYPE of idelay_m : label is "PRIMITIVE";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of idelay_m : label is 0;
  attribute BOX_TYPE of idelay_s : label is "PRIMITIVE";
  attribute SIM_DELAY_D of idelay_s : label is 0;
begin
ISERDESE2_master: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 1,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslipx1p25,
      CE1 => '1',
      CE2 => '1',
      CLK => rx_clk,
      CLKB => CLKB0,
      CLKDIV => CLK,
      CLKDIVP => '0',
      D => '0',
      DDLY => rx_data_delay_m,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_ISERDESE2_master_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => mdout(7),
      Q2 => mdout(6),
      Q3 => mdout(5),
      Q4 => mdout(4),
      Q5 => mdout(3),
      Q6 => mdout(2),
      Q7 => mdout(1),
      Q8 => mdout(0),
      RST => reset_1p25,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_ISERDESE2_master_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_ISERDESE2_master_SHIFTOUT2_UNCONNECTED
    );
ISERDESE2_slave: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 1,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslipx1p25,
      CE1 => '1',
      CE2 => '1',
      CLK => rx_clk,
      CLKB => CLKB0,
      CLKDIV => CLK,
      CLKDIVP => '0',
      D => '0',
      DDLY => rx_data_delay_s,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_ISERDESE2_slave_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => sdout(7),
      Q2 => sdout(6),
      Q3 => sdout(5),
      Q4 => sdout(4),
      Q5 => sdout(3),
      Q6 => sdout(2),
      Q7 => sdout(1),
      Q8 => sdout(0),
      RST => reset_1p25,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_ISERDESE2_slave_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_ISERDESE2_slave_SHIFTOUT2_UNCONNECTED
    );
data_in: unisim.vcomponents.IBUFDS_DIFF_OUT
    generic map(
      DQS_BIAS => "FALSE",
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => blue_p,
      IB => blue_n,
      O => rx_data_in_m,
      OB => rx_data_in_s
    );
dc_inst: entity work.overlay1_dvi_decoder_v2_0_0_delay_controller_wrap_13
     port map (
      CLK => CLK,
      D(7 downto 0) => sdout(7 downto 0),
      Q(4 downto 0) => s_delay_val_in(4 downto 0),
      bitslipx1p25_reg(7 downto 0) => mdout(7 downto 0),
      blue_debug(31 downto 0) => blue_debug(31 downto 0),
      blue_eye(31 downto 0) => blue_eye(31 downto 0),
      \dataout_reg[7]\(7 downto 0) => mdataoutd(7 downto 0),
      m_delay_val_in(4 downto 0) => m_delay_val_in(4 downto 0),
      p_12_in => p_12_in,
      reset_1p25 => reset_1p25
    );
gb8to10: entity work.overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10_14
     port map (
      CLK => CLK,
      Q(9 downto 0) => Q(9 downto 0),
      \data_out_reg[7]\(7 downto 0) => mdataoutd(7 downto 0),
      rcvd_ctkn_reg => rcvd_ctkn_reg,
      read_enable_oclk => read_enable_oclk,
      read_reset_reg(0) => read_reset_reg(0),
      reset_1p25 => reset_1p25,
      rx_clk => rx_clk_0
    );
idelay_m: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => CLK,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => m_delay_val_in(4 downto 0),
      CNTVALUEOUT(4 downto 0) => NLW_idelay_m_CNTVALUEOUT_UNCONNECTED(4 downto 0),
      DATAIN => '0',
      DATAOUT => rx_data_delay_m,
      IDATAIN => rx_data_in_m,
      INC => '0',
      LD => '1',
      LDPIPEEN => '0',
      REGRST => '0'
    );
idelay_s: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '1',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => CLK,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => s_delay_val_in(4 downto 0),
      CNTVALUEOUT(4 downto 0) => NLW_idelay_s_CNTVALUEOUT_UNCONNECTED(4 downto 0),
      DATAIN => '0',
      DATAOUT => rx_data_delay_s,
      IDATAIN => rx_data_in_s,
      INC => '0',
      LD => '1',
      LDPIPEEN => '0',
      REGRST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff_5 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    pd_min_reg : out STD_LOGIC;
    green_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSM_sequential_read_addra_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_read_addra_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    green_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rcvd_ctkn_reg : out STD_LOGIC;
    green_p : in STD_LOGIC;
    green_n : in STD_LOGIC;
    CLK : in STD_LOGIC;
    bitslipx1p25 : in STD_LOGIC;
    rx_clk : in STD_LOGIC;
    CLKB0 : in STD_LOGIC;
    rx_clk_0 : in STD_LOGIC;
    reset_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    read_enable_oclk : in STD_LOGIC;
    read_enable_oclk_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff_5 : entity is "serdes_1_10_diff";
end overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff_5;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff_5 is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_delay_val_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mdataoutd : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mdout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_data_delay_m : STD_LOGIC;
  signal rx_data_delay_s : STD_LOGIC;
  signal rx_data_in_m : STD_LOGIC;
  signal rx_data_in_s : STD_LOGIC;
  signal s_delay_val_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal sdout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ISERDESE2_master_O_UNCONNECTED : STD_LOGIC;
  signal NLW_ISERDESE2_master_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_ISERDESE2_master_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_ISERDESE2_slave_O_UNCONNECTED : STD_LOGIC;
  signal NLW_ISERDESE2_slave_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_ISERDESE2_slave_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_idelay_m_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_idelay_s_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of ISERDESE2_master : label is "PRIMITIVE";
  attribute BOX_TYPE of ISERDESE2_slave : label is "PRIMITIVE";
  attribute BOX_TYPE of data_in : label is "PRIMITIVE";
  attribute BOX_TYPE of idelay_m : label is "PRIMITIVE";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of idelay_m : label is 0;
  attribute BOX_TYPE of idelay_s : label is "PRIMITIVE";
  attribute SIM_DELAY_D of idelay_s : label is 0;
begin
  SR(0) <= \^sr\(0);
ISERDESE2_master: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 1,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslipx1p25,
      CE1 => '1',
      CE2 => '1',
      CLK => rx_clk,
      CLKB => CLKB0,
      CLKDIV => CLK,
      CLKDIVP => '0',
      D => '0',
      DDLY => rx_data_delay_m,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_ISERDESE2_master_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => mdout(7),
      Q2 => mdout(6),
      Q3 => mdout(5),
      Q4 => mdout(4),
      Q5 => mdout(3),
      Q6 => mdout(2),
      Q7 => mdout(1),
      Q8 => mdout(0),
      RST => \^sr\(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_ISERDESE2_master_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_ISERDESE2_master_SHIFTOUT2_UNCONNECTED
    );
ISERDESE2_slave: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 1,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslipx1p25,
      CE1 => '1',
      CE2 => '1',
      CLK => rx_clk,
      CLKB => CLKB0,
      CLKDIV => CLK,
      CLKDIVP => '0',
      D => '0',
      DDLY => rx_data_delay_s,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_ISERDESE2_slave_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => sdout(7),
      Q2 => sdout(6),
      Q3 => sdout(5),
      Q4 => sdout(4),
      Q5 => sdout(3),
      Q6 => sdout(2),
      Q7 => sdout(1),
      Q8 => sdout(0),
      RST => \^sr\(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_ISERDESE2_slave_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_ISERDESE2_slave_SHIFTOUT2_UNCONNECTED
    );
data_in: unisim.vcomponents.IBUFDS_DIFF_OUT
    generic map(
      DQS_BIAS => "FALSE",
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => green_p,
      IB => green_n,
      O => rx_data_in_m,
      OB => rx_data_in_s
    );
dc_inst: entity work.overlay1_dvi_decoder_v2_0_0_delay_controller_wrap_7
     port map (
      CLK => CLK,
      D(7 downto 0) => sdout(7 downto 0),
      E(0) => pd_min_reg,
      Q(4 downto 0) => m_delay_val_in(4 downto 0),
      bitslipx1p25_reg(7 downto 0) => mdout(7 downto 0),
      \dataout_reg[7]\(7 downto 0) => mdataoutd(7 downto 0),
      green_debug(31 downto 0) => green_debug(31 downto 0),
      green_eye(31 downto 0) => green_eye(31 downto 0),
      reset_1p25_reg => \^sr\(0),
      \sdataouta_reg[7]_0\(4 downto 0) => s_delay_val_in(4 downto 0)
    );
gb8to10: entity work.overlay1_dvi_decoder_v2_0_0_gearbox_8_to_10_8
     port map (
      CLK => CLK,
      \FSM_sequential_read_addra_reg[0]_0\(0) => \FSM_sequential_read_addra_reg[0]\(0),
      \FSM_sequential_read_addra_reg[0]_1\(0) => \FSM_sequential_read_addra_reg[0]_0\(0),
      Q(9 downto 0) => Q(9 downto 0),
      SR(0) => \^sr\(0),
      \data_out_reg[7]\(7 downto 0) => mdataoutd(7 downto 0),
      rcvd_ctkn_reg => rcvd_ctkn_reg,
      read_enable_oclk => read_enable_oclk,
      read_enable_oclk_0 => read_enable_oclk_0,
      reset_reg(0) => reset_reg(0),
      rx_clk => rx_clk_0
    );
idelay_m: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => CLK,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => m_delay_val_in(4 downto 0),
      CNTVALUEOUT(4 downto 0) => NLW_idelay_m_CNTVALUEOUT_UNCONNECTED(4 downto 0),
      DATAIN => '0',
      DATAOUT => rx_data_delay_m,
      IDATAIN => rx_data_in_m,
      INC => '0',
      LD => '1',
      LDPIPEEN => '0',
      REGRST => '0'
    );
idelay_s: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '1',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => CLK,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => s_delay_val_in(4 downto 0),
      CNTVALUEOUT(4 downto 0) => NLW_idelay_s_CNTVALUEOUT_UNCONNECTED(4 downto 0),
      DATAIN => '0',
      DATAOUT => rx_data_delay_s,
      IDATAIN => rx_data_in_s,
      INC => '0',
      LD => '1',
      LDPIPEEN => '0',
      REGRST => '0'
    );
reset_1p25_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => reset_reg(0),
      Q => \^sr\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_decodeb is
  port (
    read_enable_oclk : out STD_LOGIC;
    blue_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rcvd_ctkn0 : out STD_LOGIC;
    de_b : out STD_LOGIC;
    b_vgb : out STD_LOGIC;
    b_cv : out STD_LOGIC;
    blue_vld : out STD_LOGIC;
    blue_rdy : out STD_LOGIC;
    hsync_q2 : out STD_LOGIC;
    vsync_q2 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cstate_reg[4]\ : out STD_LOGIC;
    \cstate_reg[0]\ : out STD_LOGIC;
    blue_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \sdout[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    blue_p : in STD_LOGIC;
    blue_n : in STD_LOGIC;
    CLK : in STD_LOGIC;
    rx_clk : in STD_LOGIC;
    CLKB0 : in STD_LOGIC;
    reset_1p25 : in STD_LOGIC;
    rx_clk_0 : in STD_LOGIC;
    p_12_in : in STD_LOGIC;
    iamrdy_reg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    psaligned_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    iamrdy_reg_0 : in STD_LOGIC;
    iamrdy_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    c1_reg_0 : in STD_LOGIC;
    psaligned_reg_0 : in STD_LOGIC;
    psaligned_reg_1 : in STD_LOGIC;
    data_gb_q0 : in STD_LOGIC;
    c1_reg_1 : in STD_LOGIC;
    g_cv : in STD_LOGIC;
    r_cv : in STD_LOGIC;
    g_vgb : in STD_LOGIC;
    r_vgb : in STD_LOGIC;
    read_reset_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_decodeb : entity is "decodeb";
end overlay1_dvi_decoder_v2_0_0_decodeb;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_decodeb is
  signal \^b_cv\ : STD_LOGIC;
  signal \^b_vgb\ : STD_LOGIC;
  signal bitslip : STD_LOGIC;
  signal bitslip_q : STD_LOGIC;
  signal bitslip_q2 : STD_LOGIC;
  signal bitslip_q20 : STD_LOGIC;
  signal bitslip_q3 : STD_LOGIC;
  signal bitslip_qn : STD_LOGIC;
  signal bitslipx1p25 : STD_LOGIC;
  signal bitslipx1p25_i_1_n_0 : STD_LOGIC;
  signal cbnd_n_14 : STD_LOGIC;
  signal cbnd_n_15 : STD_LOGIC;
  signal cbnd_n_16 : STD_LOGIC;
  signal cbnd_n_3 : STD_LOGIC;
  signal \cstate[0]_i_4_n_0\ : STD_LOGIC;
  signal \cstate[4]_i_2_n_0\ : STD_LOGIC;
  signal \^cstate_reg[4]\ : STD_LOGIC;
  signal des_0_n_75 : STD_LOGIC;
  signal \^hsync_q2\ : STD_LOGIC;
  signal phsalgn_0_n_2 : STD_LOGIC;
  signal rawdata : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rawdata_vld : STD_LOGIC;
  signal \^rcvd_ctkn0\ : STD_LOGIC;
  signal sdata : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^vsync_q2\ : STD_LOGIC;
  signal we : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cstate[0]_i_4\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \cstate[4]_i_2\ : label is "soft_lutpair77";
begin
  b_cv <= \^b_cv\;
  b_vgb <= \^b_vgb\;
  \cstate_reg[4]\ <= \^cstate_reg[4]\;
  hsync_q2 <= \^hsync_q2\;
  rcvd_ctkn0 <= \^rcvd_ctkn0\;
  vsync_q2 <= \^vsync_q2\;
bitslip_q2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bitslip_q,
      I1 => bitslip_qn,
      O => bitslip_q20
    );
bitslip_q2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bitslip_q20,
      Q => bitslip_q2,
      R => '0'
    );
bitslip_q3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bitslip_q2,
      Q => bitslip_q3,
      R => '0'
    );
bitslip_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bitslip,
      Q => bitslip_q,
      R => '0'
    );
bitslip_qn_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bitslip,
      Q => bitslip_qn,
      R => '0'
    );
bitslipx1p25_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bitslip_q2,
      I1 => bitslip_q3,
      O => bitslipx1p25_i_1_n_0
    );
bitslipx1p25_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bitslipx1p25_i_1_n_0,
      Q => bitslipx1p25,
      R => '0'
    );
c0_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => cbnd_n_14,
      Q => \^hsync_q2\,
      R => iamrdy_reg
    );
c1_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => cbnd_n_3,
      Q => \^vsync_q2\,
      R => iamrdy_reg
    );
cbnd: entity work.overlay1_dvi_decoder_v2_0_0_chnlbond_10
     port map (
      Q(9 downto 0) => sdata(9 downto 0),
      blue_rdy => blue_rdy,
      c0_reg => cbnd_n_14,
      c1_reg => cbnd_n_3,
      \dataout_reg[9]\(9 downto 0) => rawdata(9 downto 0),
      de_reg => cbnd_n_16,
      hsync_q2 => \^hsync_q2\,
      iamrdy_reg_0 => iamrdy_reg_0,
      iamrdy_reg_1 => iamrdy_reg_1,
      psaligned_reg => phsalgn_0_n_2,
      psaligned_reg_0(0) => psaligned_reg(0),
      rawdata_vld => rawdata_vld,
      rcvd_ctkn0 => \^rcvd_ctkn0\,
      rx_clk => rx_clk_0,
      vgb_reg => cbnd_n_15,
      vsync_q2 => \^vsync_q2\,
      we => we
    );
\cstate[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEAEAEAEAEAEAE"
    )
        port map (
      I0 => \cstate[0]_i_4_n_0\,
      I1 => Q(2),
      I2 => data_gb_q0,
      I3 => Q(0),
      I4 => \^cstate_reg[4]\,
      I5 => c1_reg_1,
      O => \cstate_reg[0]\
    );
\cstate[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFE00"
    )
        port map (
      I0 => \^b_cv\,
      I1 => r_cv,
      I2 => g_cv,
      I3 => Q(4),
      I4 => Q(1),
      O => \cstate[0]_i_4_n_0\
    );
\cstate[4]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555155555555"
    )
        port map (
      I0 => \^cstate_reg[4]\,
      I1 => \cstate[4]_i_2_n_0\,
      I2 => Q(0),
      I3 => Q(5),
      I4 => Q(3),
      I5 => c1_reg_0,
      O => D(0)
    );
\cstate[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \^b_cv\,
      I1 => r_cv,
      I2 => g_cv,
      I3 => Q(1),
      O => \cstate[4]_i_2_n_0\
    );
\cstate[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF010001000100"
    )
        port map (
      I0 => g_cv,
      I1 => r_cv,
      I2 => \^b_cv\,
      I3 => Q(4),
      I4 => \^cstate_reg[4]\,
      I5 => Q(3),
      O => D(1)
    );
\cstate[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^b_vgb\,
      I1 => g_vgb,
      I2 => r_vgb,
      O => \^cstate_reg[4]\
    );
ctl_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => \^rcvd_ctkn0\,
      Q => \^b_cv\,
      R => iamrdy_reg
    );
de_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => cbnd_n_16,
      Q => de_b,
      R => iamrdy_reg
    );
des_0: entity work.overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff_11
     port map (
      CLK => CLK,
      CLKB0 => CLKB0,
      Q(9 downto 0) => rawdata(9 downto 0),
      bitslipx1p25 => bitslipx1p25,
      blue_debug(31 downto 0) => blue_debug(31 downto 0),
      blue_eye(31 downto 0) => blue_eye(31 downto 0),
      blue_n => blue_n,
      blue_p => blue_p,
      p_12_in => p_12_in,
      rcvd_ctkn_reg => des_0_n_75,
      read_enable_oclk => read_enable_oclk,
      read_reset_reg(0) => read_reset_reg(0),
      reset_1p25 => reset_1p25,
      rx_clk => rx_clk,
      rx_clk_0 => rx_clk_0
    );
phsalgn_0: entity work.overlay1_dvi_decoder_v2_0_0_phsaligner_12
     port map (
      SR(0) => SR(0),
      bitslip => bitslip,
      blue_vld => blue_vld,
      \dataout_reg[6]\ => des_0_n_75,
      psaligned_reg_0 => psaligned_reg_0,
      psaligned_reg_1 => psaligned_reg_1,
      rawdata_vld => rawdata_vld,
      rawdata_vld_rising_reg => phsalgn_0_n_2,
      rx_clk => rx_clk_0,
      we => we
    );
\sdout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(0),
      Q => \sdout[9]\(0),
      R => iamrdy_reg
    );
\sdout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(1),
      Q => \sdout[9]\(1),
      R => iamrdy_reg
    );
\sdout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(2),
      Q => \sdout[9]\(2),
      R => iamrdy_reg
    );
\sdout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(3),
      Q => \sdout[9]\(3),
      R => iamrdy_reg
    );
\sdout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(4),
      Q => \sdout[9]\(4),
      R => iamrdy_reg
    );
\sdout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(5),
      Q => \sdout[9]\(5),
      R => iamrdy_reg
    );
\sdout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(6),
      Q => \sdout[9]\(6),
      R => iamrdy_reg
    );
\sdout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(7),
      Q => \sdout[9]\(7),
      R => iamrdy_reg
    );
\sdout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(8),
      Q => \sdout[9]\(8),
      R => iamrdy_reg
    );
\sdout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(9),
      Q => \sdout[9]\(9),
      R => iamrdy_reg
    );
vgb_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => cbnd_n_15,
      Q => \^b_vgb\,
      R => iamrdy_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_decodeg is
  port (
    reset_1p25 : out STD_LOGIC;
    p_12_in : out STD_LOGIC;
    green_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rcvd_ctkn0 : out STD_LOGIC;
    de_g : out STD_LOGIC;
    g_vgb : out STD_LOGIC;
    g_cv : out STD_LOGIC;
    green_vld : out STD_LOGIC;
    green_rdy : out STD_LOGIC;
    ctl_code_wire : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sdout_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_read_addra_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_read_addra_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    vgb_reg : out STD_LOGIC;
    data_gb_q0 : out STD_LOGIC;
    \cstate_reg[6]\ : out STD_LOGIC;
    cv_q0 : out STD_LOGIC;
    green_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \wa_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sdout[19]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    green_p : in STD_LOGIC;
    green_n : in STD_LOGIC;
    CLK : in STD_LOGIC;
    rx_clk : in STD_LOGIC;
    CLKB0 : in STD_LOGIC;
    rx_clk_0 : in STD_LOGIC;
    iamrdy_reg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    psaligned_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    iamrdy_reg_0 : in STD_LOGIC;
    iamrdy_reg_1 : in STD_LOGIC;
    r_dgb : in STD_LOGIC;
    vgb_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    psaligned_reg_0 : in STD_LOGIC;
    psaligned_reg_1 : in STD_LOGIC;
    read_enable_oclk : in STD_LOGIC;
    read_enable_oclk_0 : in STD_LOGIC;
    c1_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    r_cv : in STD_LOGIC;
    b_cv : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_decodeg : entity is "decodeg";
end overlay1_dvi_decoder_v2_0_0_decodeg;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_decodeg is
  signal bitslip : STD_LOGIC;
  signal bitslip_q : STD_LOGIC;
  signal bitslip_q2 : STD_LOGIC;
  signal bitslip_q20 : STD_LOGIC;
  signal bitslip_q3 : STD_LOGIC;
  signal bitslip_qn : STD_LOGIC;
  signal bitslipx1p25 : STD_LOGIC;
  signal \bitslipx1p25_i_1__0_n_0\ : STD_LOGIC;
  signal cbnd_n_14 : STD_LOGIC;
  signal cbnd_n_18 : STD_LOGIC;
  signal cbnd_n_3 : STD_LOGIC;
  signal \cstate[3]_i_2_n_0\ : STD_LOGIC;
  signal \^cstate_reg[6]\ : STD_LOGIC;
  signal \^ctl_code_wire\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^data_gb_q0\ : STD_LOGIC;
  signal des_0_n_78 : STD_LOGIC;
  signal dgb : STD_LOGIC;
  signal \^g_cv\ : STD_LOGIC;
  signal \^g_vgb\ : STD_LOGIC;
  signal phsalgn_0_n_2 : STD_LOGIC;
  signal rawdata : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rawdata_vld : STD_LOGIC;
  signal \^rcvd_ctkn0\ : STD_LOGIC;
  signal sdata : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal we : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cstate[3]_i_2\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of cv_q_i_1 : label is "soft_lutpair161";
begin
  \cstate_reg[6]\ <= \^cstate_reg[6]\;
  ctl_code_wire(1 downto 0) <= \^ctl_code_wire\(1 downto 0);
  data_gb_q0 <= \^data_gb_q0\;
  g_cv <= \^g_cv\;
  g_vgb <= \^g_vgb\;
  rcvd_ctkn0 <= \^rcvd_ctkn0\;
\bitslip_q2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bitslip_q,
      I1 => bitslip_qn,
      O => bitslip_q20
    );
bitslip_q2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bitslip_q20,
      Q => bitslip_q2,
      R => '0'
    );
bitslip_q3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bitslip_q2,
      Q => bitslip_q3,
      R => '0'
    );
bitslip_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bitslip,
      Q => bitslip_q,
      R => '0'
    );
bitslip_qn_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bitslip,
      Q => bitslip_qn,
      R => '0'
    );
\bitslipx1p25_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bitslip_q2,
      I1 => bitslip_q3,
      O => \bitslipx1p25_i_1__0_n_0\
    );
bitslipx1p25_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitslipx1p25_i_1__0_n_0\,
      Q => bitslipx1p25,
      R => '0'
    );
c0_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => cbnd_n_3,
      Q => \^ctl_code_wire\(0),
      R => iamrdy_reg
    );
c1_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => cbnd_n_14,
      Q => \^ctl_code_wire\(1),
      R => iamrdy_reg
    );
cbnd: entity work.overlay1_dvi_decoder_v2_0_0_chnlbond_4
     port map (
      Q(9 downto 0) => sdata(9 downto 0),
      c0_reg => cbnd_n_3,
      c1_reg => cbnd_n_14,
      ctl_code_wire(1 downto 0) => \^ctl_code_wire\(1 downto 0),
      \dataout_reg[9]\(9 downto 0) => rawdata(9 downto 0),
      de_reg => cbnd_n_18,
      dgb => dgb,
      green_rdy => green_rdy,
      iamrdy_reg_0 => iamrdy_reg_0,
      iamrdy_reg_1 => iamrdy_reg_1,
      psaligned_reg => phsalgn_0_n_2,
      psaligned_reg_0(0) => psaligned_reg(0),
      rawdata_vld => rawdata_vld,
      rcvd_ctkn0 => \^rcvd_ctkn0\,
      rx_clk => rx_clk_0,
      \sdout_reg[0]\ => \sdout_reg[0]_0\,
      vgb_reg => vgb_reg,
      we => we
    );
\cstate[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777700007000"
    )
        port map (
      I0 => r_dgb,
      I1 => \^g_vgb\,
      I2 => vgb_reg_0,
      I3 => Q(2),
      I4 => \cstate[3]_i_2_n_0\,
      I5 => Q(1),
      O => D(0)
    );
\cstate[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888800008000"
    )
        port map (
      I0 => r_dgb,
      I1 => \^g_vgb\,
      I2 => vgb_reg_0,
      I3 => Q(2),
      I4 => \cstate[3]_i_2_n_0\,
      I5 => Q(3),
      O => D(1)
    );
\cstate[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^g_cv\,
      I1 => r_cv,
      I2 => b_cv,
      O => \cstate[3]_i_2_n_0\
    );
\cstate[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC400000"
    )
        port map (
      I0 => \^data_gb_q0\,
      I1 => vgb_reg_0,
      I2 => Q(4),
      I3 => Q(0),
      I4 => c1_reg_0(0),
      I5 => \^cstate_reg[6]\,
      O => D(2)
    );
\cstate[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => c1_reg_0(1),
      I1 => \^ctl_code_wire\(0),
      I2 => \^ctl_code_wire\(1),
      O => \^cstate_reg[6]\
    );
ctl_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => \^rcvd_ctkn0\,
      Q => \^g_cv\,
      R => iamrdy_reg
    );
cv_q_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^g_cv\,
      I1 => r_cv,
      I2 => b_cv,
      O => cv_q0
    );
data_gb_q_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^g_vgb\,
      I1 => r_dgb,
      O => \^data_gb_q0\
    );
de_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => cbnd_n_18,
      Q => de_g,
      R => iamrdy_reg
    );
des_0: entity work.overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff_5
     port map (
      CLK => CLK,
      CLKB0 => CLKB0,
      \FSM_sequential_read_addra_reg[0]\(0) => \FSM_sequential_read_addra_reg[0]\(0),
      \FSM_sequential_read_addra_reg[0]_0\(0) => \FSM_sequential_read_addra_reg[0]_0\(0),
      Q(9 downto 0) => rawdata(9 downto 0),
      SR(0) => reset_1p25,
      bitslipx1p25 => bitslipx1p25,
      green_debug(31 downto 0) => green_debug(31 downto 0),
      green_eye(31 downto 0) => green_eye(31 downto 0),
      green_n => green_n,
      green_p => green_p,
      pd_min_reg => p_12_in,
      rcvd_ctkn_reg => des_0_n_78,
      read_enable_oclk => read_enable_oclk,
      read_enable_oclk_0 => read_enable_oclk_0,
      reset_reg(0) => SR(0),
      rx_clk => rx_clk,
      rx_clk_0 => rx_clk_0
    );
dgb_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => dgb,
      Q => \^g_vgb\,
      R => iamrdy_reg
    );
phsalgn_0: entity work.overlay1_dvi_decoder_v2_0_0_phsaligner_6
     port map (
      SR(0) => SR(0),
      bitslip => bitslip,
      \dataout_reg[6]\ => des_0_n_78,
      green_vld => green_vld,
      psaligned_reg_0 => psaligned_reg_0,
      psaligned_reg_1 => psaligned_reg_1,
      rawdata_vld => rawdata_vld,
      rawdata_vld_rising_reg => phsalgn_0_n_2,
      rx_clk => rx_clk_0,
      \wa_reg[0]\(0) => \wa_reg[0]\(0),
      we => we
    );
\sdout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(0),
      Q => \sdout[19]\(0),
      R => iamrdy_reg
    );
\sdout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(1),
      Q => \sdout[19]\(1),
      R => iamrdy_reg
    );
\sdout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(2),
      Q => \sdout[19]\(2),
      R => iamrdy_reg
    );
\sdout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(3),
      Q => \sdout[19]\(3),
      R => iamrdy_reg
    );
\sdout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(4),
      Q => \sdout[19]\(4),
      R => iamrdy_reg
    );
\sdout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(5),
      Q => \sdout[19]\(5),
      R => iamrdy_reg
    );
\sdout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(6),
      Q => \sdout[19]\(6),
      R => iamrdy_reg
    );
\sdout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(7),
      Q => \sdout[19]\(7),
      R => iamrdy_reg
    );
\sdout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(8),
      Q => \sdout[19]\(8),
      R => iamrdy_reg
    );
\sdout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(9),
      Q => \sdout[19]\(9),
      R => iamrdy_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_decoder is
  port (
    read_enable_oclk : out STD_LOGIC;
    red_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    r_dgb : out STD_LOGIC;
    r_vgb : out STD_LOGIC;
    r_cv : out STD_LOGIC;
    red_vld : out STD_LOGIC;
    red_rdy : out STD_LOGIC;
    \ctl_code_q_reg[3]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sdout_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    nstate10_out : out STD_LOGIC;
    line_end : out STD_LOGIC;
    basic_de : out STD_LOGIC;
    \cstate_reg[4]\ : out STD_LOGIC;
    red_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \wa_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wa_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sdout[29]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    red_p : in STD_LOGIC;
    red_n : in STD_LOGIC;
    CLK : in STD_LOGIC;
    rx_clk : in STD_LOGIC;
    CLKB0 : in STD_LOGIC;
    reset_1p25 : in STD_LOGIC;
    rx_clk_0 : in STD_LOGIC;
    p_12_in : in STD_LOGIC;
    iamrdy_reg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    psaligned_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    b_vgb : in STD_LOGIC;
    g_vgb : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    psaligned_reg_0 : in STD_LOGIC;
    psaligned_reg_1 : in STD_LOGIC;
    iamrdy_reg_0 : in STD_LOGIC;
    iamrdy_reg_1 : in STD_LOGIC;
    \cstate_reg[3]\ : in STD_LOGIC;
    vgb_reg_0 : in STD_LOGIC;
    c1_reg_0 : in STD_LOGIC;
    c1_reg_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    de_g : in STD_LOGIC;
    rcvd_ctkn0 : in STD_LOGIC;
    de_b : in STD_LOGIC;
    rcvd_ctkn0_0 : in STD_LOGIC;
    read_reset_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_decoder : entity is "decoder";
end overlay1_dvi_decoder_v2_0_0_decoder;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_decoder is
  signal bitslip : STD_LOGIC;
  signal bitslip_q : STD_LOGIC;
  signal bitslip_q2 : STD_LOGIC;
  signal bitslip_q20 : STD_LOGIC;
  signal bitslip_q3 : STD_LOGIC;
  signal bitslip_qn : STD_LOGIC;
  signal bitslipx1p25 : STD_LOGIC;
  signal \bitslipx1p25_i_1__1_n_0\ : STD_LOGIC;
  signal cbnd_n_14 : STD_LOGIC;
  signal cbnd_n_17 : STD_LOGIC;
  signal cbnd_n_18 : STD_LOGIC;
  signal cbnd_n_19 : STD_LOGIC;
  signal cbnd_n_3 : STD_LOGIC;
  signal \cstate[0]_i_2_n_0\ : STD_LOGIC;
  signal \cstate[7]_i_2_n_0\ : STD_LOGIC;
  signal \^ctl_code_q_reg[3]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal de_r : STD_LOGIC;
  signal des_0_n_75 : STD_LOGIC;
  signal phsalgn_0_n_2 : STD_LOGIC;
  signal \^r_dgb\ : STD_LOGIC;
  signal \^r_vgb\ : STD_LOGIC;
  signal rawdata : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rawdata_vld : STD_LOGIC;
  signal rcvd_ctkn0_1 : STD_LOGIC;
  signal sdata : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal we : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cstate[0]_i_2\ : label is "soft_lutpair241";
  attribute SOFT_HLUTNM of video_gb_q_i_1 : label is "soft_lutpair241";
begin
  \ctl_code_q_reg[3]\(1 downto 0) <= \^ctl_code_q_reg[3]\(1 downto 0);
  r_dgb <= \^r_dgb\;
  r_vgb <= \^r_vgb\;
basic_de_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^r_vgb\,
      I1 => b_vgb,
      I2 => g_vgb,
      I3 => de_g,
      I4 => de_b,
      I5 => de_r,
      O => basic_de
    );
\bitslip_q2_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bitslip_q,
      I1 => bitslip_qn,
      O => bitslip_q20
    );
bitslip_q2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bitslip_q20,
      Q => bitslip_q2,
      R => '0'
    );
bitslip_q3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bitslip_q2,
      Q => bitslip_q3,
      R => '0'
    );
bitslip_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bitslip,
      Q => bitslip_q,
      R => '0'
    );
bitslip_qn_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bitslip,
      Q => bitslip_qn,
      R => '0'
    );
\bitslipx1p25_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bitslip_q2,
      I1 => bitslip_q3,
      O => \bitslipx1p25_i_1__1_n_0\
    );
bitslipx1p25_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitslipx1p25_i_1__1_n_0\,
      Q => bitslipx1p25,
      R => '0'
    );
c0_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => cbnd_n_14,
      Q => \^ctl_code_q_reg[3]\(0),
      R => iamrdy_reg
    );
c1_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => cbnd_n_3,
      Q => \^ctl_code_q_reg[3]\(1),
      R => iamrdy_reg
    );
cbnd: entity work.overlay1_dvi_decoder_v2_0_0_chnlbond
     port map (
      Q(9 downto 0) => sdata(9 downto 0),
      c0_reg => cbnd_n_14,
      c0_reg_0 => \^ctl_code_q_reg[3]\(0),
      c1_reg => cbnd_n_3,
      c1_reg_0 => \^ctl_code_q_reg[3]\(1),
      \dataout_reg[9]\(9 downto 0) => rawdata(9 downto 0),
      de_b => de_b,
      de_g => de_g,
      de_r => de_r,
      de_reg => cbnd_n_19,
      dgb_reg => cbnd_n_18,
      iamrdy_reg_0 => iamrdy_reg_0,
      iamrdy_reg_1 => iamrdy_reg_1,
      line_end => line_end,
      psaligned_reg => phsalgn_0_n_2,
      psaligned_reg_0(0) => psaligned_reg(0),
      rawdata_vld => rawdata_vld,
      rcvd_ctkn0 => rcvd_ctkn0,
      rcvd_ctkn0_0 => rcvd_ctkn0_0,
      rcvd_ctkn0_1 => rcvd_ctkn0_1,
      red_rdy => red_rdy,
      rx_clk => rx_clk_0,
      \sdout_reg[0]\ => \sdout_reg[0]_0\,
      vgb_reg => cbnd_n_17,
      we => we
    );
\cstate[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDDDFDDDFCCCDDDD"
    )
        port map (
      I0 => \cstate[0]_i_2_n_0\,
      I1 => \cstate_reg[3]\,
      I2 => vgb_reg_0,
      I3 => Q(3),
      I4 => \^ctl_code_q_reg[3]\(0),
      I5 => c1_reg_0,
      O => D(0)
    );
\cstate[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0A0FFFF"
    )
        port map (
      I0 => \^r_dgb\,
      I1 => b_vgb,
      I2 => g_vgb,
      I3 => \^r_vgb\,
      I4 => Q(2),
      O => \cstate[0]_i_2_n_0\
    );
\cstate[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA0008008800"
    )
        port map (
      I0 => \^r_dgb\,
      I1 => Q(2),
      I2 => \^r_vgb\,
      I3 => g_vgb,
      I4 => b_vgb,
      I5 => Q(1),
      O => D(1)
    );
\cstate[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0004FFFF"
    )
        port map (
      I0 => \^ctl_code_q_reg[3]\(1),
      I1 => c1_reg_1(0),
      I2 => c1_reg_1(1),
      I3 => \^ctl_code_q_reg[3]\(0),
      I4 => Q(3),
      O => \cstate_reg[4]\
    );
\cstate[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000040004"
    )
        port map (
      I0 => \^ctl_code_q_reg[3]\(1),
      I1 => c1_reg_1(0),
      I2 => c1_reg_1(1),
      I3 => \^ctl_code_q_reg[3]\(0),
      I4 => Q(3),
      I5 => \cstate[7]_i_2_n_0\,
      O => D(2)
    );
\cstate[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D555"
    )
        port map (
      I0 => Q(0),
      I1 => \^r_vgb\,
      I2 => g_vgb,
      I3 => b_vgb,
      O => \cstate[7]_i_2_n_0\
    );
ctl_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => rcvd_ctkn0_1,
      Q => r_cv,
      R => iamrdy_reg
    );
de_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => cbnd_n_19,
      Q => de_r,
      R => iamrdy_reg
    );
des_0: entity work.overlay1_dvi_decoder_v2_0_0_serdes_1_10_diff
     port map (
      CLK => CLK,
      CLKB0 => CLKB0,
      Q(9 downto 0) => rawdata(9 downto 0),
      bitslipx1p25 => bitslipx1p25,
      p_12_in => p_12_in,
      rcvd_ctkn_reg => des_0_n_75,
      read_enable_oclk => read_enable_oclk,
      read_reset_reg(0) => read_reset_reg(0),
      red_debug(31 downto 0) => red_debug(31 downto 0),
      red_eye(31 downto 0) => red_eye(31 downto 0),
      red_n => red_n,
      red_p => red_p,
      reset_1p25 => reset_1p25,
      rx_clk => rx_clk,
      rx_clk_0 => rx_clk_0
    );
dgb_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => cbnd_n_18,
      Q => \^r_dgb\,
      R => iamrdy_reg
    );
phsalgn_0: entity work.overlay1_dvi_decoder_v2_0_0_phsaligner
     port map (
      SR(0) => SR(0),
      bitslip => bitslip,
      \dataout_reg[6]\ => des_0_n_75,
      psaligned_reg_0 => psaligned_reg_0,
      psaligned_reg_1 => psaligned_reg_1,
      rawdata_vld => rawdata_vld,
      rawdata_vld_rising_reg => phsalgn_0_n_2,
      red_vld => red_vld,
      rx_clk => rx_clk_0,
      \wa_reg[0]\(0) => \wa_reg[0]\(0),
      \wa_reg[0]_0\(0) => \wa_reg[0]_0\(0),
      we => we
    );
\sdout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(0),
      Q => \sdout[29]\(0),
      R => iamrdy_reg
    );
\sdout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(1),
      Q => \sdout[29]\(1),
      R => iamrdy_reg
    );
\sdout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(2),
      Q => \sdout[29]\(2),
      R => iamrdy_reg
    );
\sdout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(3),
      Q => \sdout[29]\(3),
      R => iamrdy_reg
    );
\sdout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(4),
      Q => \sdout[29]\(4),
      R => iamrdy_reg
    );
\sdout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(5),
      Q => \sdout[29]\(5),
      R => iamrdy_reg
    );
\sdout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(6),
      Q => \sdout[29]\(6),
      R => iamrdy_reg
    );
\sdout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(7),
      Q => \sdout[29]\(7),
      R => iamrdy_reg
    );
\sdout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(8),
      Q => \sdout[29]\(8),
      R => iamrdy_reg
    );
\sdout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => sdata(9),
      Q => \sdout[29]\(9),
      R => iamrdy_reg
    );
vgb_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk_0,
      CE => '1',
      D => cbnd_n_17,
      Q => \^r_vgb\,
      R => iamrdy_reg
    );
video_gb_q_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^r_vgb\,
      I1 => g_vgb,
      I2 => b_vgb,
      O => nstate10_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0_dvi_decoder is
  port (
    pll_lckd : out STD_LOGIC;
    p_clk : out STD_LOGIC;
    px1p25_dbg_clk : out STD_LOGIC;
    px5_clk : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    blue_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    green_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    red_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC;
    encoding : out STD_LOGIC;
    data_gb : out STD_LOGIC;
    video_gb : out STD_LOGIC;
    cv : out STD_LOGIC;
    blue_vld : out STD_LOGIC;
    blue_rdy : out STD_LOGIC;
    green_vld : out STD_LOGIC;
    green_rdy : out STD_LOGIC;
    red_vld : out STD_LOGIC;
    red_rdy : out STD_LOGIC;
    de : out STD_LOGIC;
    hdcp_ena : out STD_LOGIC;
    blue_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \sdout_9__s_port_]\ : out STD_LOGIC;
    sdout : out STD_LOGIC_VECTOR ( 28 downto 0 );
    green_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    red_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ctl_code : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green_di : out STD_LOGIC_VECTOR ( 3 downto 0 );
    red_di : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue_di : out STD_LOGIC_VECTOR ( 3 downto 0 );
    line_end : out STD_LOGIC;
    basic_de : out STD_LOGIC;
    blue : out STD_LOGIC_VECTOR ( 7 downto 0 );
    green : out STD_LOGIC_VECTOR ( 7 downto 0 );
    red : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_clk : in STD_LOGIC;
    mhz200_clk : in STD_LOGIC;
    blue_p : in STD_LOGIC;
    blue_n : in STD_LOGIC;
    CLKB0 : in STD_LOGIC;
    green_p : in STD_LOGIC;
    green_n : in STD_LOGIC;
    red_p : in STD_LOGIC;
    red_n : in STD_LOGIC;
    ex_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of overlay1_dvi_decoder_v2_0_0_dvi_decoder : entity is "dvi_decoder";
end overlay1_dvi_decoder_v2_0_0_dvi_decoder;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0_dvi_decoder is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal b_cv : STD_LOGIC;
  signal b_vgb : STD_LOGIC;
  signal \^blue_rdy\ : STD_LOGIC;
  signal \^blue_vld\ : STD_LOGIC;
  signal \cbnd/rcvd_ctkn0\ : STD_LOGIC;
  signal \cbnd/rcvd_ctkn0_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal clear_1 : STD_LOGIC;
  signal clear_2 : STD_LOGIC;
  signal clk_pixel_raw : STD_LOGIC;
  signal clk_pixel_x1p25_dbg_raw : STD_LOGIC;
  signal clk_pixel_x1p25_raw : STD_LOGIC;
  signal clk_pixel_x5_raw : STD_LOGIC;
  signal clkfb_2 : STD_LOGIC;
  signal cstate : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ctl_code_q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ctl_code_wire : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cv_q : STD_LOGIC;
  signal cv_q0 : STD_LOGIC;
  signal data_gb_q : STD_LOGIC;
  signal data_gb_q0 : STD_LOGIC;
  signal \^de\ : STD_LOGIC;
  signal de_b : STD_LOGIC;
  signal de_g : STD_LOGIC;
  signal dec_b_n_42 : STD_LOGIC;
  signal dec_b_n_43 : STD_LOGIC;
  signal dec_b_n_44 : STD_LOGIC;
  signal dec_g_n_44 : STD_LOGIC;
  signal dec_g_n_45 : STD_LOGIC;
  signal dec_g_n_46 : STD_LOGIC;
  signal dec_g_n_47 : STD_LOGIC;
  signal dec_g_n_48 : STD_LOGIC;
  signal dec_g_n_50 : STD_LOGIC;
  signal dec_r_n_40 : STD_LOGIC;
  signal dec_r_n_47 : STD_LOGIC;
  signal \des_0/dc_inst/p_12_in\ : STD_LOGIC;
  signal \des_0/gb8to10/read_enable_oclk\ : STD_LOGIC;
  signal \des_0/gb8to10/read_enable_oclk_3\ : STD_LOGIC;
  signal \des_0/reset_1p25\ : STD_LOGIC;
  signal encoding_i_1_n_0 : STD_LOGIC;
  signal encrypting_data_reg_n_0 : STD_LOGIC;
  signal encrypting_video_i_1_n_0 : STD_LOGIC;
  signal g_cv : STD_LOGIC;
  signal g_vgb : STD_LOGIC;
  signal \^green_rdy\ : STD_LOGIC;
  signal \^green_vld\ : STD_LOGIC;
  signal hsync_q1 : STD_LOGIC;
  signal hsync_q2 : STD_LOGIC;
  signal nstate : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal nstate10_out : STD_LOGIC;
  signal \^p_clk\ : STD_LOGIC;
  signal \^pll_lckd\ : STD_LOGIC;
  signal px1p25_clk : STD_LOGIC;
  signal \^px5_clk\ : STD_LOGIC;
  signal r_cv : STD_LOGIC;
  signal r_dgb : STD_LOGIC;
  signal r_vgb : STD_LOGIC;
  signal \^red_rdy\ : STD_LOGIC;
  signal \^red_vld\ : STD_LOGIC;
  signal reset_i_1_n_0 : STD_LOGIC;
  signal \^sdout\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \sdout_9__s_net_1\ : STD_LOGIC;
  signal video_gb_q : STD_LOGIC;
  signal vsync_q1 : STD_LOGIC;
  signal vsync_q2 : STD_LOGIC;
  signal NLW_IDELAYCTRL_inst_RDY_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IDELAYCTRL_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of MMCME2_BASE_inst : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of MMCME2_BASE_inst : label is "MMCME2_BASE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of encrypting_video_i_1 : label is "soft_lutpair263";
  attribute SOFT_HLUTNM of hdcp_ena_INST_0 : label is "soft_lutpair263";
  attribute BOX_TYPE of pclkbufg : label is "PRIMITIVE";
  attribute BOX_TYPE of pclkx1p25bufg : label is "PRIMITIVE";
  attribute BOX_TYPE of pclkx1p25bufgdbg : label is "PRIMITIVE";
  attribute BOX_TYPE of pclkx5bufio : label is "PRIMITIVE";
begin
  SR(0) <= \^sr\(0);
  blue_rdy <= \^blue_rdy\;
  blue_vld <= \^blue_vld\;
  de <= \^de\;
  green_rdy <= \^green_rdy\;
  green_vld <= \^green_vld\;
  p_clk <= \^p_clk\;
  pll_lckd <= \^pll_lckd\;
  px5_clk <= \^px5_clk\;
  red_rdy <= \^red_rdy\;
  red_vld <= \^red_vld\;
  sdout(28 downto 0) <= \^sdout\(28 downto 0);
  \sdout_9__s_port_]\ <= \sdout_9__s_net_1\;
IDELAYCTRL_inst: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "7SERIES"
    )
        port map (
      RDY => NLW_IDELAYCTRL_inst_RDY_UNCONNECTED,
      REFCLK => mhz200_clk,
      RST => \^sr\(0)
    );
MMCME2_BASE_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 5.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 6.734000,
      CLKIN2_PERIOD => 10.000000,
      CLKOUT0_DIVIDE_F => 5.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 5,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_DIVIDE => 4,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 4,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 1,
      REF_JITTER1 => 0.000000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfb_2,
      CLKFBOUT => clkfb_2,
      CLKFBOUTB => NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => rx_clk,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_pixel_raw,
      CLKOUT0B => NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_MMCME2_BASE_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => clk_pixel_x5_raw,
      CLKOUT2B => NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => clk_pixel_x1p25_raw,
      CLKOUT3B => NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => clk_pixel_x1p25_dbg_raw,
      CLKOUT5 => NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_MMCME2_BASE_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => \^pll_lckd\,
      PSCLK => '0',
      PSDONE => NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
\cstate_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^p_clk\,
      CE => '1',
      D => nstate(0),
      Q => cstate(0),
      S => \^sr\(0)
    );
\cstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^p_clk\,
      CE => '1',
      D => nstate(1),
      Q => cstate(1),
      R => \^sr\(0)
    );
\cstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^p_clk\,
      CE => '1',
      D => dec_g_n_44,
      Q => cstate(2),
      R => \^sr\(0)
    );
\cstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^p_clk\,
      CE => '1',
      D => nstate(3),
      Q => cstate(3),
      R => \^sr\(0)
    );
\cstate_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^p_clk\,
      CE => '1',
      D => dec_b_n_42,
      Q => cstate(4),
      R => \^sr\(0)
    );
\cstate_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^p_clk\,
      CE => '1',
      D => nstate(5),
      Q => cstate(5),
      R => \^sr\(0)
    );
\cstate_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^p_clk\,
      CE => '1',
      D => nstate(6),
      Q => cstate(6),
      R => \^sr\(0)
    );
\cstate_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^p_clk\,
      CE => '1',
      D => nstate(7),
      Q => cstate(7),
      R => \^sr\(0)
    );
\ctl_code_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => ctl_code_wire(0),
      Q => ctl_code_q(0),
      R => '0'
    );
\ctl_code_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => ctl_code_wire(1),
      Q => ctl_code_q(1),
      R => '0'
    );
\ctl_code_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => ctl_code_wire(2),
      Q => ctl_code_q(2),
      R => '0'
    );
\ctl_code_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => ctl_code_wire(3),
      Q => ctl_code_q(3),
      R => '0'
    );
\ctl_code_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => ctl_code_q(0),
      Q => ctl_code(0),
      R => '0'
    );
\ctl_code_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => ctl_code_q(1),
      Q => ctl_code(1),
      R => '0'
    );
\ctl_code_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => ctl_code_q(2),
      Q => ctl_code(2),
      R => '0'
    );
\ctl_code_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => ctl_code_q(3),
      Q => ctl_code(3),
      R => '0'
    );
cv_q_reg: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => cv_q0,
      Q => cv_q,
      R => '0'
    );
cv_reg: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => cv_q,
      Q => cv,
      R => '0'
    );
data_gb_q_reg: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => data_gb_q0,
      Q => data_gb_q,
      R => '0'
    );
data_gb_reg: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => data_gb_q,
      Q => data_gb,
      R => '0'
    );
dec_b: entity work.overlay1_dvi_decoder_v2_0_0_decodeb
     port map (
      CLK => px1p25_clk,
      CLKB0 => CLKB0,
      D(1) => nstate(5),
      D(0) => dec_b_n_42,
      Q(5 downto 1) => cstate(6 downto 2),
      Q(0) => cstate(0),
      SR(0) => \^sr\(0),
      b_cv => b_cv,
      b_vgb => b_vgb,
      blue_debug(31 downto 0) => blue_debug(31 downto 0),
      blue_eye(31 downto 0) => blue_eye(31 downto 0),
      blue_n => blue_n,
      blue_p => blue_p,
      blue_rdy => \^blue_rdy\,
      blue_vld => \^blue_vld\,
      c1_reg_0 => dec_r_n_47,
      c1_reg_1 => dec_g_n_50,
      \cstate_reg[0]\ => dec_b_n_44,
      \cstate_reg[4]\ => dec_b_n_43,
      data_gb_q0 => data_gb_q0,
      de_b => de_b,
      g_cv => g_cv,
      g_vgb => g_vgb,
      hsync_q2 => hsync_q2,
      iamrdy_reg => dec_g_n_48,
      iamrdy_reg_0 => \^green_rdy\,
      iamrdy_reg_1 => \^red_rdy\,
      p_12_in => \des_0/dc_inst/p_12_in\,
      psaligned_reg(0) => clear_2,
      psaligned_reg_0 => \^red_vld\,
      psaligned_reg_1 => \^green_vld\,
      r_cv => r_cv,
      r_vgb => r_vgb,
      rcvd_ctkn0 => \cbnd/rcvd_ctkn0\,
      read_enable_oclk => \des_0/gb8to10/read_enable_oclk\,
      read_reset_reg(0) => dec_g_n_46,
      reset_1p25 => \des_0/reset_1p25\,
      rx_clk => \^px5_clk\,
      rx_clk_0 => \^p_clk\,
      \sdout[9]\(9) => \sdout_9__s_net_1\,
      \sdout[9]\(8 downto 0) => \^sdout\(8 downto 0),
      vsync_q2 => vsync_q2
    );
dec_g: entity work.overlay1_dvi_decoder_v2_0_0_decodeg
     port map (
      CLK => px1p25_clk,
      CLKB0 => CLKB0,
      D(2) => nstate(6),
      D(1) => nstate(3),
      D(0) => dec_g_n_44,
      \FSM_sequential_read_addra_reg[0]\(0) => dec_g_n_46,
      \FSM_sequential_read_addra_reg[0]_0\(0) => dec_g_n_47,
      Q(4) => cstate(6),
      Q(3 downto 0) => cstate(3 downto 0),
      SR(0) => \^sr\(0),
      b_cv => b_cv,
      c1_reg_0(1 downto 0) => ctl_code_wire(3 downto 2),
      \cstate_reg[6]\ => dec_g_n_50,
      ctl_code_wire(1 downto 0) => ctl_code_wire(1 downto 0),
      cv_q0 => cv_q0,
      data_gb_q0 => data_gb_q0,
      de_g => de_g,
      g_cv => g_cv,
      g_vgb => g_vgb,
      green_debug(31 downto 0) => green_debug(31 downto 0),
      green_eye(31 downto 0) => green_eye(31 downto 0),
      green_n => green_n,
      green_p => green_p,
      green_rdy => \^green_rdy\,
      green_vld => \^green_vld\,
      iamrdy_reg => dec_r_n_40,
      iamrdy_reg_0 => \^blue_rdy\,
      iamrdy_reg_1 => \^red_rdy\,
      p_12_in => \des_0/dc_inst/p_12_in\,
      psaligned_reg(0) => clear_1,
      psaligned_reg_0 => \^red_vld\,
      psaligned_reg_1 => \^blue_vld\,
      r_cv => r_cv,
      r_dgb => r_dgb,
      rcvd_ctkn0 => \cbnd/rcvd_ctkn0_0\,
      read_enable_oclk => \des_0/gb8to10/read_enable_oclk\,
      read_enable_oclk_0 => \des_0/gb8to10/read_enable_oclk_3\,
      reset_1p25 => \des_0/reset_1p25\,
      rx_clk => \^px5_clk\,
      rx_clk_0 => \^p_clk\,
      \sdout[19]\(9 downto 0) => \^sdout\(18 downto 9),
      \sdout_reg[0]_0\ => dec_g_n_45,
      vgb_reg => dec_g_n_48,
      vgb_reg_0 => dec_b_n_43,
      \wa_reg[0]\(0) => clear
    );
dec_r: entity work.overlay1_dvi_decoder_v2_0_0_decoder
     port map (
      CLK => px1p25_clk,
      CLKB0 => CLKB0,
      D(2) => nstate(7),
      D(1 downto 0) => nstate(1 downto 0),
      Q(3 downto 2) => cstate(7 downto 6),
      Q(1 downto 0) => cstate(1 downto 0),
      SR(0) => \^sr\(0),
      b_vgb => b_vgb,
      basic_de => basic_de,
      c1_reg_0 => dec_g_n_50,
      c1_reg_1(1 downto 0) => ctl_code_wire(1 downto 0),
      \cstate_reg[3]\ => dec_b_n_44,
      \cstate_reg[4]\ => dec_r_n_47,
      \ctl_code_q_reg[3]\(1 downto 0) => ctl_code_wire(3 downto 2),
      de_b => de_b,
      de_g => de_g,
      g_vgb => g_vgb,
      iamrdy_reg => dec_g_n_45,
      iamrdy_reg_0 => \^green_rdy\,
      iamrdy_reg_1 => \^blue_rdy\,
      line_end => line_end,
      nstate10_out => nstate10_out,
      p_12_in => \des_0/dc_inst/p_12_in\,
      psaligned_reg(0) => clear,
      psaligned_reg_0 => \^green_vld\,
      psaligned_reg_1 => \^blue_vld\,
      r_cv => r_cv,
      r_dgb => r_dgb,
      r_vgb => r_vgb,
      rcvd_ctkn0 => \cbnd/rcvd_ctkn0_0\,
      rcvd_ctkn0_0 => \cbnd/rcvd_ctkn0\,
      read_enable_oclk => \des_0/gb8to10/read_enable_oclk_3\,
      read_reset_reg(0) => dec_g_n_47,
      red_debug(31 downto 0) => red_debug(31 downto 0),
      red_eye(31 downto 0) => red_eye(31 downto 0),
      red_n => red_n,
      red_p => red_p,
      red_rdy => \^red_rdy\,
      red_vld => \^red_vld\,
      reset_1p25 => \des_0/reset_1p25\,
      rx_clk => \^px5_clk\,
      rx_clk_0 => \^p_clk\,
      \sdout[29]\(9 downto 0) => \^sdout\(28 downto 19),
      \sdout_reg[0]_0\ => dec_r_n_40,
      vgb_reg_0 => dec_b_n_43,
      \wa_reg[0]\(0) => clear_2,
      \wa_reg[0]_0\(0) => clear_1
    );
dec_t4_b: entity work.overlay1_dvi_decoder_v2_0_0_decode_terc4
     port map (
      D(9) => \sdout_9__s_net_1\,
      D(8 downto 0) => \^sdout\(8 downto 0),
      SR(0) => \^sr\(0),
      blue_di(3 downto 0) => blue_di(3 downto 0),
      rx_clk => \^p_clk\
    );
dec_t4_g: entity work.overlay1_dvi_decoder_v2_0_0_decode_terc4_0
     port map (
      D(9 downto 0) => \^sdout\(18 downto 9),
      SR(0) => \^sr\(0),
      green_di(3 downto 0) => green_di(3 downto 0),
      rx_clk => \^p_clk\
    );
dec_t4_r: entity work.overlay1_dvi_decoder_v2_0_0_decode_terc4_1
     port map (
      D(9 downto 0) => \^sdout\(28 downto 19),
      SR(0) => \^sr\(0),
      red_di(3 downto 0) => red_di(3 downto 0),
      rx_clk => \^p_clk\
    );
encoding_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cstate(1),
      I1 => cstate(3),
      I2 => cstate(2),
      O => encoding_i_1_n_0
    );
encoding_reg: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => encoding_i_1_n_0,
      Q => encoding,
      R => \^sr\(0)
    );
encrypting_data_reg: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => cstate(2),
      Q => encrypting_data_reg_n_0,
      R => \^sr\(0)
    );
encrypting_video_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^de\,
      I1 => \^sr\(0),
      I2 => cstate(5),
      O => encrypting_video_i_1_n_0
    );
encrypting_video_reg: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => encrypting_video_i_1_n_0,
      Q => \^de\,
      R => '0'
    );
hdcp_ena_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => encrypting_data_reg_n_0,
      I1 => \^de\,
      O => hdcp_ena
    );
hsync_q1_reg: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => hsync_q2,
      Q => hsync_q1,
      R => '0'
    );
hsync_reg: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => hsync_q1,
      Q => hsync,
      R => '0'
    );
pclkbufg: unisim.vcomponents.BUFG
     port map (
      I => clk_pixel_raw,
      O => \^p_clk\
    );
pclkx1p25bufg: unisim.vcomponents.BUFR
    generic map(
      BUFR_DIVIDE => "BYPASS",
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE => '1',
      CLR => '0',
      I => clk_pixel_x1p25_raw,
      O => px1p25_clk
    );
pclkx1p25bufgdbg: unisim.vcomponents.BUFG
     port map (
      I => clk_pixel_x1p25_dbg_raw,
      O => px1p25_dbg_clk
    );
pclkx5bufio: unisim.vcomponents.BUFIO
     port map (
      I => clk_pixel_x5_raw,
      O => \^px5_clk\
    );
reset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ex_reset,
      I1 => \^pll_lckd\,
      O => reset_i_1_n_0
    );
reset_reg: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => reset_i_1_n_0,
      Q => \^sr\(0),
      R => '0'
    );
tmds_b: entity work.overlay1_dvi_decoder_v2_0_0_tmds_data_dec
     port map (
      blue(7 downto 0) => blue(7 downto 0),
      rx_clk => \^p_clk\,
      \sdout_reg[9]\(9) => \sdout_9__s_net_1\,
      \sdout_reg[9]\(8 downto 0) => \^sdout\(8 downto 0)
    );
tmds_g: entity work.overlay1_dvi_decoder_v2_0_0_tmds_data_dec_2
     port map (
      green(7 downto 0) => green(7 downto 0),
      rx_clk => \^p_clk\,
      sdout(9 downto 0) => \^sdout\(18 downto 9)
    );
tmds_r: entity work.overlay1_dvi_decoder_v2_0_0_tmds_data_dec_3
     port map (
      red(7 downto 0) => red(7 downto 0),
      rx_clk => \^p_clk\,
      sdout(9 downto 0) => \^sdout\(28 downto 19)
    );
video_gb_q_reg: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => nstate10_out,
      Q => video_gb_q,
      R => '0'
    );
video_gb_reg: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => video_gb_q,
      Q => video_gb,
      R => '0'
    );
vsync_q1_reg: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => vsync_q2,
      Q => vsync_q1,
      R => '0'
    );
vsync_reg: unisim.vcomponents.FDRE
     port map (
      C => \^p_clk\,
      CE => '1',
      D => vsync_q1,
      Q => vsync,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity overlay1_dvi_decoder_v2_0_0 is
  port (
    rx_clk : in STD_LOGIC;
    blue_p : in STD_LOGIC;
    blue_n : in STD_LOGIC;
    green_p : in STD_LOGIC;
    green_n : in STD_LOGIC;
    red_p : in STD_LOGIC;
    red_n : in STD_LOGIC;
    ex_reset : in STD_LOGIC;
    mhz200_clk : in STD_LOGIC;
    reset : out STD_LOGIC;
    p_clk : out STD_LOGIC;
    px5_clk : out STD_LOGIC;
    px1p25_dbg_clk : out STD_LOGIC;
    pll_lckd : out STD_LOGIC;
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC;
    de : out STD_LOGIC;
    basic_de : out STD_LOGIC;
    blue_vld : out STD_LOGIC;
    green_vld : out STD_LOGIC;
    red_vld : out STD_LOGIC;
    blue_rdy : out STD_LOGIC;
    green_rdy : out STD_LOGIC;
    red_rdy : out STD_LOGIC;
    psalgnerr : out STD_LOGIC;
    sdout : out STD_LOGIC_VECTOR ( 29 downto 0 );
    red : out STD_LOGIC_VECTOR ( 7 downto 0 );
    green : out STD_LOGIC_VECTOR ( 7 downto 0 );
    blue : out STD_LOGIC_VECTOR ( 7 downto 0 );
    encoding : out STD_LOGIC;
    hdcp_ena : out STD_LOGIC;
    red_di : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green_di : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue_di : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_gb : out STD_LOGIC;
    video_gb : out STD_LOGIC;
    ctl_code : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cv : out STD_LOGIC;
    line_end : out STD_LOGIC;
    green_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    blue_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    red_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    green_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    blue_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    red_debug : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of overlay1_dvi_decoder_v2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of overlay1_dvi_decoder_v2_0_0 : entity is "overlay1_dvi_decoder_v2_0_0,dvi_decoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of overlay1_dvi_decoder_v2_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of overlay1_dvi_decoder_v2_0_0 : entity is "dvi_decoder,Vivado 2016.1";
end overlay1_dvi_decoder_v2_0_0;

architecture STRUCTURE of overlay1_dvi_decoder_v2_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^px5_clk\ : STD_LOGIC;
begin
  psalgnerr <= \<const0>\;
  px5_clk <= \^px5_clk\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.overlay1_dvi_decoder_v2_0_0_dvi_decoder
     port map (
      CLKB0 => \^px5_clk\,
      SR(0) => reset,
      basic_de => basic_de,
      blue(7 downto 0) => blue(7 downto 0),
      blue_debug(31 downto 0) => blue_debug(31 downto 0),
      blue_di(3 downto 0) => blue_di(3 downto 0),
      blue_eye(31 downto 0) => blue_eye(31 downto 0),
      blue_n => blue_n,
      blue_p => blue_p,
      blue_rdy => blue_rdy,
      blue_vld => blue_vld,
      ctl_code(3 downto 0) => ctl_code(3 downto 0),
      cv => cv,
      data_gb => data_gb,
      de => de,
      encoding => encoding,
      ex_reset => ex_reset,
      green(7 downto 0) => green(7 downto 0),
      green_debug(31 downto 0) => green_debug(31 downto 0),
      green_di(3 downto 0) => green_di(3 downto 0),
      green_eye(31 downto 0) => green_eye(31 downto 0),
      green_n => green_n,
      green_p => green_p,
      green_rdy => green_rdy,
      green_vld => green_vld,
      hdcp_ena => hdcp_ena,
      hsync => hsync,
      line_end => line_end,
      mhz200_clk => mhz200_clk,
      p_clk => p_clk,
      pll_lckd => pll_lckd,
      px1p25_dbg_clk => px1p25_dbg_clk,
      px5_clk => \^px5_clk\,
      red(7 downto 0) => red(7 downto 0),
      red_debug(31 downto 0) => red_debug(31 downto 0),
      red_di(3 downto 0) => red_di(3 downto 0),
      red_eye(31 downto 0) => red_eye(31 downto 0),
      red_n => red_n,
      red_p => red_p,
      red_rdy => red_rdy,
      red_vld => red_vld,
      rx_clk => rx_clk,
      sdout(28 downto 9) => sdout(29 downto 10),
      sdout(8 downto 0) => sdout(8 downto 0),
      \sdout_9__s_port_]\ => sdout(9),
      video_gb => video_gb,
      vsync => vsync
    );
end STRUCTURE;
