-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Mon Oct 31 00:59:35 2016
-- Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_hdcp_engine_0_0/overlay1_hdcp_engine_0_0_stub.vhdl
-- Design      : overlay1_hdcp_engine_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a50tcsg325-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity overlay1_hdcp_engine_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    hpd : in STD_LOGIC;
    ctl_code : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cv : in STD_LOGIC;
    de : in STD_LOGIC;
    line_end : in STD_LOGIC;
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    hdcp_ena : in STD_LOGIC;
    Km_rdy : in STD_LOGIC;
    Km : in STD_LOGIC_VECTOR ( 55 downto 0 );
    An_rdy : in STD_LOGIC;
    An : in STD_LOGIC_VECTOR ( 63 downto 0 );
    cipher_stream : out STD_LOGIC_VECTOR ( 23 downto 0 );
    hdcp_is_ready : out STD_LOGIC
  );

end overlay1_hdcp_engine_0_0;

architecture stub of overlay1_hdcp_engine_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,hpd,ctl_code[3:0],cv,de,line_end,hsync,vsync,hdcp_ena,Km_rdy,Km[55:0],An_rdy,An[63:0],cipher_stream[23:0],hdcp_is_ready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hdcp_engine,Vivado 2016.1";
begin
end;
