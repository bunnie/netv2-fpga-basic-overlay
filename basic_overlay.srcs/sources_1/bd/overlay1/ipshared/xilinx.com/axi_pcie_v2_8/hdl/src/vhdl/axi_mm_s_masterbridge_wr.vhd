-------------------------------------------------------------------------------
-- (c) Copyright 2010 - 2011 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------------------
-- Filename:        axi_mm_s_masterbridge_wr.vhd
--
-- Description:     
--                  
-- This VHDL file is an HDL design file for the AXI MM/S master bridge write function. 
--                   
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_mm_s_masterbridge_wr.vhd
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_MISC.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

library lib_pkg_v1_0_2;
library lib_fifo_v1_0_4;
use lib_fifo_v1_0_4.sync_fifo_fg;

library axi_pcie_v2_8_0;
use axi_pcie_v2_8_0.all;

--library XilinxCoreLib;
--use XilinxCoreLib.all;

entity axi_mm_s_masterbridge_wr is
   generic(
      --Family Generics
      C_FAMILY                : string;
      C_M_AXI_ADDR_WIDTH      : integer;
      C_M_AXI_DATA_WIDTH      : integer;
      C_S_AXIS_DATA_WIDTH     : integer;
      C_PCIEBAR_NUM           : integer;
      C_PCIEBAR_AS            : integer;
      C_PCIEBAR_LEN_0         : integer;
      C_PCIEBAR2AXIBAR_0      : std_logic_vector;
      C_PCIEBAR2AXIBAR_0_SEC  : integer;
      C_PCIEBAR_LEN_1         : integer;
      C_PCIEBAR2AXIBAR_1      : std_logic_vector;
      C_PCIEBAR2AXIBAR_1_SEC  : integer;
      C_PCIEBAR_LEN_2         : integer;
      C_PCIEBAR2AXIBAR_2      : std_logic_vector;
      C_PCIEBAR2AXIBAR_2_SEC  : integer;
      C_S_AXIS_USER_WIDTH     : integer
      );
   port(
      --AXI Global
      aclk             : in  std_logic; --meaningful port name
      reset            : in  std_logic; --meaningful port name
      --AXI Master Write Address Channel
      m_axi_awaddr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0); --meaningful port name
      m_axi_awlen      : out std_logic_vector(7 downto 0); --meaningful port name
      m_axi_awsize     : out std_logic_vector(2 downto 0); --meaningful port name
      m_axi_awburst    : out std_logic_vector(1 downto 0); --meaningful port name
      m_axi_awprot     : out std_logic_vector(2 downto 0); --meaningful port name
      m_axi_awvalid    : out std_logic; --meaningful port name
      m_axi_awready    : in  std_logic; --meaningful port name
      m_axi_awlock     : out std_logic; --meaningful port name
      m_axi_awcache    : out std_logic_vector(3 downto 0); --meaningful port name
      --AXI Master Write Data Channel
      m_axi_wdata      : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); --meaningful port name
      m_axi_wstrb      : out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0); --meaningful port name
      m_axi_wlast      : out std_logic; --meaningful port name
      m_axi_wvalid     : out std_logic; --meaningful port name
      m_axi_wready     : in  std_logic; --meaningful port name
      --AXI Master Write Response Channel
      m_axi_bresp      : in  std_logic_vector(1 downto 0); --meaningful port name
      m_axi_bvalid     : in  std_logic; --meaningful port name
      m_axi_bready     : out std_logic; --meaningful port name
      --Master Bridge Interrupt Strobes
      master_int_wr    : out std_logic_vector(2 downto 0); --meaningful port name
      --Input from Enhanced PCIe
      blk_lnk_up       : in std_logic; --meaningful port name
      --AXIS Write Target Channel
      s_axis_cw_tdata  : in  std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0); --meaningful port name
      s_axis_cw_tstrb  : in  std_logic_vector(C_S_AXIS_DATA_WIDTH/8-1 downto 0); --meaningful port name
      s_axis_cw_tlast  : in  std_logic; --meaningful port name
      s_axis_cw_tvalid : in  std_logic; --meaningful port name
      s_axis_cw_tready : out std_logic; --meaningful port name
      s_axis_cw_tuser  : in  std_logic_vector(C_S_AXIS_USER_WIDTH-1 downto 0); --meaningful port name
      --Internal Interface Ordering
      wrreqpend        : out std_logic_vector(2 downto 0); --meaningful port name
      wrreqcomp        : out std_logic_vector(2 downto 0); --meaningful port name
      master_wr_idle   : out std_logic --meaningful port name
      );
end axi_mm_s_masterbridge_wr;

architecture behavioral of axi_mm_s_masterbridge_wr is
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of behavioral : architecture is "yes";

signal tlplengthsig              : std_logic_vector(9 downto 0);
signal firstdwbesig, lastdwbesig : std_logic_vector(3 downto 0);
signal tlpaddrlsig, tlpaddrhsig  : std_logic_vector(31 downto 0);
signal datainsig                 : std_logic_vector(C_S_AXIS_DATA_WIDTH downto 0);
signal dataoutsig                : std_logic_vector(C_M_AXI_DATA_WIDTH downto 0);
signal wrreqsetsig               : std_logic;
signal rdensig, wrensig          : std_logic;
signal treadydataenadjustsig     : std_logic;
signal emptysig, almost_fullsig  : std_logic;
signal dataensig                 : std_logic;
signal twtreadysig               : std_logic;
signal datacompchecksig          : std_logic;
signal tlppipelinesig            : std_logic_vector(2 downto 0);
signal s_axis_cw_tusersig        : std_logic_vector(C_PCIEBAR_NUM-1 downto 0);
signal sreset                    : std_logic;
signal wrreqpendsig              : std_logic_vector(2 downto 0);
signal wrreqcompsig              : std_logic_vector(2 downto 0);

constant DATA_WIDTH              : std_logic_vector(7 downto 0) := conv_std_logic_vector(C_S_AXIS_DATA_WIDTH, 8);
constant BRAM_DEPTH_MUL_512      : std_logic                    := DATA_WIDTH(6) or DATA_WIDTH(5);
constant BRAM_DEPTH_MULTIPLIER   : std_logic_vector(1 downto 0) := BRAM_DEPTH_MUL_512 & DATA_WIDTH(7);
constant BRAM_DEPTH              : integer range 0 to 512       := conv_integer(BRAM_DEPTH_MULTIPLIER);


begin


comp_write_data_fifo :  entity lib_fifo_v1_0_4.sync_fifo_fg
   generic map(
      C_FAMILY           => C_FAMILY,
      C_MEMORY_TYPE      => 1,                          --1:BRAM
      C_READ_DATA_WIDTH  => C_S_AXIS_DATA_WIDTH+1,      --Integer:33
      C_READ_DEPTH       => 256*BRAM_DEPTH,
      C_PRELOAD_REGS     => 1,                          --1:FWFT
      C_PRELOAD_LATENCY  => 0,                          --0:FWFT
      C_WRITE_DATA_WIDTH => C_S_AXIS_DATA_WIDTH+1,      --Integer:33
      C_WRITE_DEPTH      => 256*BRAM_DEPTH,
      C_HAS_ALMOST_FULL  => 1                           --1 more write b4 FIFO Full
      --C_DCOUNT_WIDTH     =>                           --Width of DATA_COUNT bus (1 – 23)
      --C_HAS_DCOUNT       =>                           --# of words written into the FIFO
      --C_PORTS_DIFFER     => 
      )
   port map(
      clk         => aclk,
      sinit       => sreset,
      din         => datainsig,
      wr_en       => wrensig,
      rd_en       => rdensig,
      dout        => dataoutsig,
      empty       => emptysig,
      almost_full => almost_fullsig,
      full        => open,
      rd_ack      => open,
      wr_ack      => open,
      rd_err      => open,
      wr_err      => open,
      data_count  => open
      );

comp_axi_s_masterbridge_wr : entity axi_pcie_v2_8_0.axi_s_masterbridge_wr
   generic map(
      --Family Generics
      C_FAMILY            => C_FAMILY,
      C_S_AXIS_DATA_WIDTH => C_S_AXIS_DATA_WIDTH,
      C_S_AXIS_USER_WIDTH => C_S_AXIS_USER_WIDTH,
      C_PCIEBAR_NUM       => C_PCIEBAR_NUM
      )
   port map(
      --AXI Global
      aclk             => aclk,
      reset            => reset,
      --AXIS Write Target Channel
      s_axis_cw_tdata  => s_axis_cw_tdata,
      s_axis_cw_tstrb  => s_axis_cw_tstrb,
      s_axis_cw_tlast  => s_axis_cw_tlast,
      s_axis_cw_tvalid => s_axis_cw_tvalid,
      s_axis_cw_tready => twtreadysig,
      s_axis_cw_tuser  => s_axis_cw_tuser,
      --Master Bridge Interrupt Strobes
      master_int       => master_int_wr(2),
      --Input from Enhanced PCIe
      blk_lnk_up       => blk_lnk_up,
      --Internal Interface
      tlplength          => tlplengthsig,
      firstdwbe          => firstdwbesig,
      lastdwbe           => lastdwbesig,
      tlpaddrl           => tlpaddrlsig,
      tlpaddrh           => tlpaddrhsig,
      datain             => datainsig,
      wrreqset           => wrreqsetsig,
      datacompcheck      => datacompchecksig,
      tlppipeline        => tlppipelinesig,
      dataen             => dataensig,
      almost_full        => almost_fullsig,
      wrreqpend          => wrreqpendsig,
      treadydataenadjust => treadydataenadjustsig
      );

WriteEnable: process(aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         wrensig <= '0';
      else
         wrensig <= (twtreadysig or (treadydataenadjustsig and not(almost_fullsig))) and 
                    (s_axis_cw_tvalid or treadydataenadjustsig) and dataensig;
      end if;
   end if;
end process;

Bar_Hit: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         s_axis_cw_tusersig <= (others => '0');
      elsif twtreadysig = '1' then
         if C_PCIEBAR_AS = 0 then
            s_axis_cw_tusersig <= s_axis_cw_tuser(C_PCIEBAR_NUM+1 downto 2);
         else
            for i in 0 to C_PCIEBAR_NUM-1 loop
               s_axis_cw_tusersig(i) <= s_axis_cw_tuser(2*(i+1));
            end loop;
         end if;
      end if;
   end if;
end process;

comp_axi_mm_masterbridge_wr : entity axi_pcie_v2_8_0.axi_mm_masterbridge_wr
   generic map(
      --Family Generics
      C_FAMILY                => C_FAMILY,
      C_M_AXI_ADDR_WIDTH      => C_M_AXI_ADDR_WIDTH,
      C_M_AXI_DATA_WIDTH      => C_M_AXI_DATA_WIDTH,
      C_PCIEBAR_NUM           => C_PCIEBAR_NUM,
      C_PCIEBAR_AS            => C_PCIEBAR_AS,
      C_PCIEBAR_LEN_0         => C_PCIEBAR_LEN_0,
      C_PCIEBAR2AXIBAR_0      => C_PCIEBAR2AXIBAR_0,
      C_PCIEBAR2AXIBAR_0_SEC  => C_PCIEBAR2AXIBAR_0_SEC,
      C_PCIEBAR_LEN_1         => C_PCIEBAR_LEN_1,
      C_PCIEBAR2AXIBAR_1      => C_PCIEBAR2AXIBAR_1,
      C_PCIEBAR2AXIBAR_1_SEC  => C_PCIEBAR2AXIBAR_1_SEC,
      C_PCIEBAR_LEN_2         => C_PCIEBAR_LEN_2,
      C_PCIEBAR2AXIBAR_2      => C_PCIEBAR2AXIBAR_2,
      C_PCIEBAR2AXIBAR_2_SEC  => C_PCIEBAR2AXIBAR_2_SEC
      )
   port map(
      --AXI Global
      aclk    => aclk,
      reset   => reset,
      --AXI Master Write Address Channel
      m_axi_awaddr    => m_axi_awaddr,
      m_axi_awlen     => m_axi_awlen,
      m_axi_awsize    => m_axi_awsize,
      m_axi_awburst   => m_axi_awburst,
      m_axi_awprot    => m_axi_awprot,
      m_axi_awvalid   => m_axi_awvalid,
      m_axi_awready   => m_axi_awready,
      m_axi_awlock    => m_axi_awlock,
      m_axi_awcache   => m_axi_awcache,
      --AXI Master Write Data Channel
      m_axi_wdata     => m_axi_wdata,
      m_axi_wstrb     => m_axi_wstrb,
      m_axi_wlast     => m_axi_wlast,
      m_axi_wvalid    => m_axi_wvalid,
      m_axi_wready    => m_axi_wready,
      --AXI Master Write Response Channel
      m_axi_bresp     => m_axi_bresp,
      m_axi_bvalid    => m_axi_bvalid,
      m_axi_bready    => m_axi_bready,
      --Master Bridge Interrupt Strobes
      master_int      => master_int_wr(1 downto 0),
      --Internal Interface
      wrreqset        => wrreqsetsig,
      datacompcheck   => datacompchecksig,
      tlplength       => tlplengthsig,
      firstdwbe       => firstdwbesig,
      lastdwbe        => lastdwbesig,
      tlpaddrl        => tlpaddrlsig,
      tlpaddrh        => tlpaddrhsig,
      dout            => dataoutsig,
      rd_en           => rdensig,
      empty           => emptysig,
      tlppipeline     => tlppipelinesig,
      barhit          => s_axis_cw_tusersig(C_PCIEBAR_NUM-1 downto 0),
      --Internal Interface Ordering
      wrreqcomp       => wrreqcompsig
      );

s_axis_cw_tready <= twtreadysig;
sreset <= not(reset);

wrreqpend <= wrreqpendsig;
wrreqcomp <= wrreqcompsig;

master_wr_idle <= '1' when wrreqpendsig = wrreqcompsig else
                  '0';

end behavioral;
