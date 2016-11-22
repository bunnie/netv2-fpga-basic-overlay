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
-- Filename:        axi_mm_s_masterbridge_rd.vhd
--
-- Description:     
--                  
-- This VHDL file is an HDL design file for the AXI MM/S master bridge read function. 
--                   
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_mm_s_masterbridge_rd.vhd
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_MISC.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

library lib_pkg_v1_0_2;
library lib_fifo_v1_0_4;
use lib_fifo_v1_0_4.sync_fifo_fg;
use lib_pkg_v1_0_2.lib_pkg.all;

library axi_pcie_v2_8_0;
use axi_pcie_v2_8_0.all;
use axi_pcie_v2_8_0.axi_pcie_mm_s_pkg.all;

--library XilinxCoreLib;
--use XilinxCoreLib.all;

--library UNISIM;
--use UNISIM.VComponents.all;

entity axi_mm_s_masterbridge_rd is
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
      C_S_AXIS_USER_WIDTH     : integer;
      C_TRN_NP_FC             : string
      );
   port(
      --AXI Global
      aclk             : in  std_logic; --meaningful port name
      reset            : in  std_logic; --meaningful port name
      --AXI Master Read Address Channel
      m_axi_araddr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0); --meaningful port name
      m_axi_arlen      : out std_logic_vector(7 downto 0); --meaningful port name
      m_axi_arsize     : out std_logic_vector(2 downto 0); --meaningful port name
      m_axi_arburst    : out std_logic_vector(1 downto 0); --meaningful port name
      m_axi_arprot     : out std_logic_vector(2 downto 0); --meaningful port name
      m_axi_arvalid    : out std_logic; --meaningful port name
      m_axi_arready    : in  std_logic; --meaningful port name
      m_axi_arlock     : out std_logic; --meaningful port name
      m_axi_arcache    : out std_logic_vector(3 downto 0); --meaningful port name
      --AXI Master Read Data Channel
      m_axi_rdata      : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); --meaningful port name
      m_axi_rresp      : in  std_logic_vector(1 downto 0); --meaningful port name
      m_axi_rlast      : in  std_logic; --meaningful port name
      m_axi_rvalid     : in  std_logic; --meaningful port name
      m_axi_rready     : out std_logic; --meaningful port name
      --AXIS Read Target Channel
      s_axis_cr_tdata  : in  std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0); --meaningful port name
      s_axis_cr_tstrb  : in  std_logic_vector(C_S_AXIS_DATA_WIDTH/8-1 downto 0); --meaningful port name
      s_axis_cr_tlast  : in  std_logic; --meaningful port name
      s_axis_cr_tvalid : in  std_logic; --meaningful port name
      s_axis_cr_tready : out std_logic; --meaningful port name
      s_axis_cr_tuser  : in  std_logic_vector(C_S_AXIS_USER_WIDTH-1 downto 0); --meaningful port name
      --AXIS Completion Target Channel
      m_axis_cc_tdata  : out std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0); --meaningful port name
      m_axis_cc_tstrb  : out std_logic_vector(C_S_AXIS_DATA_WIDTH/8-1 downto 0); --meaningful port name
      m_axis_cc_tlast  : out std_logic; --meaningful port name
      m_axis_cc_tvalid : out std_logic; --meaningful port name
      m_axis_cc_tready : in  std_logic; --meaningful port name
      m_axis_cc_tuser  : out std_logic_vector(C_S_AXIS_USER_WIDTH-1 downto 0); --meaningful port name
      --Master Bridge Interrupt Strobes
      master_int_rd    : out std_logic_vector(1 downto 0); --meaningful port name
      --AXI Streaming Block Interface
      blk_lnk_up          : in  std_logic; --meaningful port name
      blk_lnk_up_latch    : out std_logic; --meaningful port name
      blk_dcontrol        : in  std_logic_vector(15 downto 0); --meaningful port name
      blk_bus_number      : in  std_logic_vector(7 downto 0); --meaningful port name
      blk_device_number   : in  std_logic_vector(4 downto 0); --meaningful port name
      blk_function_number : in  std_logic_vector(2 downto 0); --meaningful port name
      --Internal Interface Ordering
      rdreq               : in  std_logic; --meaningful port name
      rdreq_ordernotreq   : out std_logic; --meaningful port name
      orrdreqpipeline     : in std_logic_vector(2 downto 0); --meaningful port name
      slwrreqpend         : in  std_logic_vector(1 downto 0); --meaningful port name
      rdtargetpipeline    : out std_logic_vector(2 downto 0); --meaningful port name
      rdndreqpipeline     : out std_logic_vector(2 downto 0); -- Used in NP OK mode
      rdreqpipeline       : out std_logic_vector(2 downto 0); -- Used in NP OK mode
      np_pkt_complete     : out std_logic_vector(1 downto 0); -- Used in NP Req mode. bit[1] = rdndreqpipeline; bit[0] = rdreqpipeline
      cplpendcpl          : in  cplpendcpl_array; --meaningful port name
      wrpending           : out wrpend_array; --meaningful port name
      wrreqpend           : in  std_logic_vector(2 downto 0); --meaningful port name
      slwrreqpending      : out slwrreqpending_array; --meaningful port name
      compready           : out std_logic_vector(2 downto 0); --meaningful port name
      wrreqcomp           : in  std_logic_vector(2 downto 0); --meaningful port name
      slv_write_idle      : in  std_logic; --meaningful port name
      s_axi_awvalid       : in  std_logic;
      master_wr_idle      : in  std_logic --meaningful port name
      );
end axi_mm_s_masterbridge_rd;

architecture behavioral of axi_mm_s_masterbridge_rd is
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of behavioral : architecture is "yes";

signal sreset, m_axi_rreadysig  : std_logic;
signal dataensig                : std_logic;
signal emptysig, almost_fullsig : std_logic;
signal dinsig, doutsig          : std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0);
signal rd_ensig, wr_ensig       : std_logic;
signal tlpaddrlsig              : tlpaddrl_array;
signal tlplengthsig             : tlplength_array;
signal rrespsig                 : rresp_array;
signal s_axis_cr_tusersig       : barhit_array;
signal bram_depth               : integer range 256 to 4096;
signal sig_rdtargetpipeline     : std_logic_vector(2 downto 0);
signal sig_addrstreampipeline   : std_logic_vector(2 downto 0);

begin

comp_read_data_fifo : entity lib_fifo_v1_0_4.sync_fifo_fg
   generic map(
      C_FAMILY           => C_FAMILY,
      C_MEMORY_TYPE      => 1,                            --1:BRAM
      C_READ_DATA_WIDTH  => C_S_AXIS_DATA_WIDTH,          --Integer:33
      C_READ_DEPTH       => 1024*128/C_S_AXIS_DATA_WIDTH, --bram_depth,
      C_PRELOAD_REGS     => 1,                            --1:FWFT
      C_PRELOAD_LATENCY  => 0,                            --0:FWFT
      C_WRITE_DATA_WIDTH => C_S_AXIS_DATA_WIDTH,          --Integer:33
      C_WRITE_DEPTH      => 1024*128/C_S_AXIS_DATA_WIDTH, --bram_depth
      C_HAS_ALMOST_FULL  => 1                             --1 more write b4 FIFO Full
      --C_DCOUNT_WIDTH     =>                             --Width of DATA_COUNT bus (1 – 23)
      --C_HAS_DCOUNT       =>                             --# of words written into the FIFO
      --C_PORTS_DIFFER     => 
      )
   port map(
      clk         => aclk,
      sinit       => sreset,
      din         => dinsig,
      wr_en       => wr_ensig,
      rd_en       => rd_ensig,
      dout        => doutsig,
      empty       => emptysig,
      almost_full => almost_fullsig,
      full        => open,
      rd_ack      => open,
      wr_ack      => open,
      rd_err      => open,
      wr_err      => open,
      data_count  => open
      );



comp_axi_s_masterbridge_rd : entity axi_pcie_v2_8_0.axi_s_masterbridge_rd
   generic map(
      --Family Generics
      C_FAMILY            => C_FAMILY,
      C_S_AXIS_DATA_WIDTH => C_S_AXIS_DATA_WIDTH,
      C_S_AXIS_USER_WIDTH => C_S_AXIS_USER_WIDTH,
      C_PCIEBAR_NUM       => C_PCIEBAR_NUM,
      C_PCIEBAR_AS        => C_PCIEBAR_AS,
      C_TRN_NP_FC         => C_TRN_NP_FC
      )
   port map(
      --AXI Global
      aclk             => aclk,
      reset            => reset,
      --AXIS Read Target Channel
      s_axis_cr_tdata  => s_axis_cr_tdata,
      s_axis_cr_tstrb  => s_axis_cr_tstrb,
      s_axis_cr_tlast  => s_axis_cr_tlast,
      s_axis_cr_tvalid => s_axis_cr_tvalid,
      s_axis_cr_tready => s_axis_cr_tready,
      s_axis_cr_tuser  => s_axis_cr_tuser,
      --AXIS Completion Target Channel
      m_axis_cc_tdata  => m_axis_cc_tdata,
      m_axis_cc_tstrb  => m_axis_cc_tstrb,
      m_axis_cc_tlast  => m_axis_cc_tlast,
      m_axis_cc_tvalid => m_axis_cc_tvalid,
      m_axis_cc_tready => m_axis_cc_tready,
      m_axis_cc_tuser  => m_axis_cc_tuser,
      --AXI Streaming Block Interface
      blk_lnk_up          => blk_lnk_up,
      blk_dcontrol        => blk_dcontrol,
      blk_bus_number      => blk_bus_number,
      blk_device_number   => blk_device_number,
      blk_function_number => blk_function_number,
      --Internal Interface
      rresp           => rrespsig,
      rdreq           => rdreq_ordernotreq,
      empty           => emptysig,
      dout            => doutsig,
      tlpaddrl_out    => tlpaddrlsig,
      tlplength_out   => tlplengthsig,
      rd_en           => rd_ensig,
      --Internal Interface Ordering
      rdtargetpipeline_out => sig_rdtargetpipeline,
      orrdreqpipeline => orrdreqpipeline,
      cplpendcpl      => cplpendcpl,
      wrpending       => wrpending,
      wrreqpend       => wrreqpend,
      slv_write_idle  => slv_write_idle,
      master_wr_idle  => master_wr_idle,
      wrreqcomp       => wrreqcomp,
      addrstreampipeline => sig_addrstreampipeline,
      blk_lnk_up_latch_o => blk_lnk_up_latch,
      rdndreqpipeline_o  => rdndreqpipeline,
      rdreqpipeline_o    => rdreqpipeline,
      np_pkt_complete_o  => np_pkt_complete,
      s_axis_cr_tusersig => s_axis_cr_tusersig
      );

comp_axi_mm_masterbridge_rd : entity axi_pcie_v2_8_0.axi_mm_masterbridge_rd
   generic map(
      --Family Generics
      C_FAMILY             => C_FAMILY,
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
      --AXI Master Read Address Channel
      m_axi_araddr     => m_axi_araddr,
      m_axi_arlen      => m_axi_arlen,
      m_axi_arsize     => m_axi_arsize,
      m_axi_arburst    => m_axi_arburst,
      m_axi_arprot     => m_axi_arprot,
      m_axi_arvalid    => m_axi_arvalid,
      m_axi_arready    => m_axi_arready,
      m_axi_arlock     => m_axi_arlock,
      m_axi_arcache    => m_axi_arcache,
      --AXI Master Read Data Channel
      m_axi_rdata      => m_axi_rdata,
      m_axi_rresp      => m_axi_rresp,
      m_axi_rlast      => m_axi_rlast,
      m_axi_rvalid     => m_axi_rvalid,
      m_axi_rready     => m_axi_rreadysig,
      --Master Bridge Interrupt Strobes
      master_int      => master_int_rd,
      --Internal Interface
      rdreq           => rdreq,
      almost_full     => almost_fullsig,
      dataen          => dataensig,
      din             => dinsig,
      tlpaddrl        => tlpaddrlsig,
      tlplength       => tlplengthsig,
      rresp           => rrespsig,
      barhit          => s_axis_cr_tusersig,
      blk_lnk_up      => blk_lnk_up,
      --Internal Interface Ordering
      slwrreqpend     => slwrreqpend,
      slwrreqpending  => slwrreqpending,
      compready       => compready,
      addrstreampipeline => sig_addrstreampipeline,
      s_axi_awvalid   => s_axi_awvalid,
      rdtargetpipeline => sig_rdtargetpipeline,
      master_wr_idle  => master_wr_idle
      );

WriteEnable: process(aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         wr_ensig <= '0';
      else
         wr_ensig <= m_axi_rreadysig and m_axi_rvalid and dataensig;
      end if;
   end if;
end process;

m_axi_rready <= m_axi_rreadysig;
sreset <= not(reset);
rdtargetpipeline <= sig_rdtargetpipeline;

end behavioral;
