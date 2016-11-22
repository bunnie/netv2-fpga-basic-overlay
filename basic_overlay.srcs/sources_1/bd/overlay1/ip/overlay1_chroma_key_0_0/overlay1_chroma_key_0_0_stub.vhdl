-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Mon Nov 21 13:24:16 2016
-- Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/largework/fpga/netv2/basic-overlay/basic_overlay.srcs/sources_1/bd/overlay1/ip/overlay1_chroma_key_0_0/overlay1_chroma_key_0_0_stub.vhdl
-- Design      : overlay1_chroma_key_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a50tcsg325-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity overlay1_chroma_key_0_0 is
  Port ( 
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

end overlay1_chroma_key_0_0;

architecture stub of overlay1_chroma_key_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,blue_video[7:0],green_video[7:0],red_video[7:0],blue_comp[7:0],green_comp[7:0],red_comp[7:0],blue_blend[7:0],green_blend[7:0],red_blend[7:0],cipher_stream[23:0],chroma_en,hsync,vsync,de,vid_gb,dat_gb,dat_ena,ctl_code[3:0],blue_di[3:0],red_di[3:0],green_di[3:0],hsync_pipe,vsync_pipe,de_pipe,vid_gb_pipe,dat_gb_pipe,dat_ena_pipe,ctl_code_pipe[3:0],blue_di_pipe[3:0],green_di_pipe[3:0],red_di_pipe[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "chroma_key,Vivado 2016.1";
begin
end;
