-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Mon Oct 31 00:59:30 2016
-- Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_dvi_encoder_v2_0_0/overlay1_dvi_encoder_v2_0_0_stub.vhdl
-- Design      : overlay1_dvi_encoder_v2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a50tcsg325-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity overlay1_dvi_encoder_v2_0_0 is
  Port ( 
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

end overlay1_dvi_encoder_v2_0_0;

architecture stub of overlay1_dvi_encoder_v2_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "p_clk,px5_clk,reset,blue_din[7:0],green_din[7:0],red_din[7:0],hsync,vsync,de,TMDS_0_P,TMDS_0_N,TMDS_1_P,TMDS_1_N,TMDS_2_P,TMDS_2_N,TMDS_CLK_P,TMDS_CLK_N,vid_gb,dat_gb,dat_ena,blue_di[3:0],green_di[3:0],red_di[3:0],ctl_code[3:0],bypass_sdata[29:0],bypass_ena,bypass_video_only";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dvi_encoder,Vivado 2016.1";
begin
end;
