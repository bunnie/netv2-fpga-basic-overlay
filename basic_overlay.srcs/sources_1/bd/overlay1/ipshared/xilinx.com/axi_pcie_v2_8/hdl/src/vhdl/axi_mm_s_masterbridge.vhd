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
-- Filename:        axi_mm_s_masterbridge.vhd
--
-- Description:     
--                  
-- This VHDL file is an HDL design file for the AXI MM/S master bridge. 
--                   
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_mm_s_masterbridge.vhd
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_MISC.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

library axi_pcie_v2_8_0;
use axi_pcie_v2_8_0.all;
use axi_pcie_v2_8_0.axi_pcie_mm_s_pkg.all;

--library XilinxCoreLib;
--use XilinxCoreLib.all;

--library UNISIM;
--use UNISIM.VComponents.all;

entity axi_mm_s_masterbridge is
   generic(
      --Family Generics
      C_FAMILY                : string := "virtex7";
      C_M_AXI_ADDR_WIDTH      : integer := 32;
      C_M_AXI_DATA_WIDTH      : integer := 32;
      C_S_AXIS_DATA_WIDTH     : integer := 32;
      C_PCIEBAR_NUM           : integer := 3;
      C_PCIEBAR_AS            : integer := 1;
      C_PCIEBAR_LEN_0         : integer := 16;
      C_PCIEBAR2AXIBAR_0      : std_logic_vector := x"70000000";
      C_PCIEBAR2AXIBAR_0_SEC  : integer := 0;
      C_PCIEBAR_LEN_1         : integer := 16;
      C_PCIEBAR2AXIBAR_1      : std_logic_vector := x"80000000";
      C_PCIEBAR2AXIBAR_1_SEC  : integer := 0;
      C_PCIEBAR_LEN_2         : integer := 16;
      C_PCIEBAR2AXIBAR_2      : std_logic_vector := x"80000000";
      C_PCIEBAR2AXIBAR_2_SEC  : integer := 0;
      C_S_AXIS_USER_WIDTH     : integer := 12;
      C_TRN_NP_FC             : string  := "FALSE"
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
      --AXIS Write Target Channel
      s_axis_cw_tdata  : in  std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0); --meaningful port name
      s_axis_cw_tstrb  : in  std_logic_vector(C_S_AXIS_DATA_WIDTH/8-1 downto 0); --meaningful port name
      s_axis_cw_tlast  : in  std_logic; --meaningful port name
      s_axis_cw_tvalid : in  std_logic; --meaningful port name
      s_axis_cw_tready : out std_logic; --meaningful port name
      s_axis_cw_tuser  : in  std_logic_vector(C_S_AXIS_USER_WIDTH-1 downto 0); --meaningful port name
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
      --AXI Streaming Block Interface
      blk_lnk_up          : in  std_logic; --meaningful port name
      blk_dcontrol        : in  std_logic_vector(15 downto 0); --meaningful port name
      blk_bus_number      : in  std_logic_vector(7 downto 0); --meaningful port name
      blk_device_number   : in  std_logic_vector(4 downto 0); --meaningful port name
      blk_function_number : in  std_logic_vector(2 downto 0); --meaningful port name
      -- Master Bridge Interrupt Strobes
      MDE_int                 : out std_logic; --meaningful port name
      MSE_int                 : out std_logic; --meaningful port name
      MEP_int                 : out std_logic; --meaningful port name
      --Internal Interface Ordering
      slwrreqpend         : in  std_logic_vector(1 downto 0); --meaningful port name
      slwrreqcomp         : in  std_logic_vector(1 downto 0); --meaningful port name
      wrreqpend           : out std_logic_vector(2 downto 0); --meaningful port name
      wrreqcomp           : out std_logic_vector(2 downto 0); --meaningful port name
      slv_write_idle      : in  std_logic; --meaningful port name
      s_axi_awvalid       : in  std_logic; --meaningful port name
      master_wr_idle      : out std_logic; --meaningful port name
      -- signals used to keep track NP buffer availability
      rdndreqpipeline     : out std_logic_vector(2 downto 0); -- Used in NP OK mode
      rdreqpipeline       : out std_logic_vector(2 downto 0); -- Used in NP OK mode
      np_pkt_complete     : out std_logic_vector(1 downto 0)  -- Used in NP Req mode. bit[1] = rdndreqpipeline; bit[0] = rdreqpipeline
      );
end axi_mm_s_masterbridge;

architecture behavioral of axi_mm_s_masterbridge is
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of behavioral : architecture is "yes";

signal rdreq, rdreq_ordernotreq       : std_logic;
signal rdtargetpipeline               : std_logic_vector(2 downto 0);
signal slwrreqpending                 : slwrreqpending_array;
signal compready                      : std_logic_vector(2 downto 0);
signal wrreqpendsig, wrreqcompsig     : std_logic_vector(2 downto 0);
signal orrdreqpipeline, orcplpipeline : std_logic_vector(2 downto 0);
signal cplpendcpl                     : cplpendcpl_array;
signal wrpending                      : wrpend_array;
signal sig_master_wr_idle             : std_logic;
signal master_int_wr                  : std_logic_vector(2 downto 0);
signal master_int_rd                  : std_logic_vector(1 downto 0);
signal blk_lnk_up_latch               : std_logic;
type rdorder_states is (wridle,
                        ordercheckreq);

signal rdorder : rdorder_states;

begin

rd_ordering: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         orrdreqpipeline <= (others => '0');
         rdreq <= '0';
      else
         rdreq <= '0';
         case rdorder is
            when wridle =>
               if sig_master_wr_idle = '1' then
                  rdreq <= rdreq_ordernotreq;
                  rdorder <= wridle;
                  if rdreq_ordernotreq = '1' then
                     orrdreqpipeline <= orrdreqpipeline + 1;
                  end if;
               else
                  rdorder <= ordercheckreq;
               end if;
            
            when ordercheckreq =>
               if rdtargetpipeline /= orrdreqpipeline then
                  if wrpending(conv_integer(orrdreqpipeline(1 downto 0)))(2 downto 0) = wrreqcompsig or 
                    wrpending(conv_integer(orrdreqpipeline(1 downto 0)))(3) = '1' then
                     rdreq <= '1';
                     orrdreqpipeline <= orrdreqpipeline + 1;
                     rdorder <= ordercheckreq;
                  end if;
               elsif sig_master_wr_idle = '1' then
                  rdorder <= wridle;
               end if;
            
            -- coverage off
            when others =>
               rdorder <= wridle;
            -- coverage on
         end case;
         if blk_lnk_up_latch = '0' then
            orrdreqpipeline <= rdtargetpipeline;
            rdreq           <= '0';
         end if;
      end if;
   end if;
end process;

cpl_ordering: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         orcplpipeline <= (others => '0');
         cplpendcpl <= (others => '0');
      else
         if compready /= orcplpipeline then
            cplpendcpl(conv_integer(orcplpipeline(1 downto 0))) <= '0';
            if slwrreqpending(conv_integer(orcplpipeline(1 downto 0))) = slwrreqcomp then
               cplpendcpl(conv_integer(orcplpipeline(1 downto 0))) <= '1';
               orcplpipeline <= orcplpipeline + 1;
            end if;
         end if;
      end if;
      if blk_lnk_up_latch = '0' then
         cplpendcpl <= (others => '0');
      end if;
   end if;
end process;

comp_axi_mm_s_masterbridge_wr: entity axi_pcie_v2_8_0.axi_mm_s_masterbridge_wr
   generic map(
      --Family Generics
      C_FAMILY                => C_FAMILY,
      C_M_AXI_ADDR_WIDTH      => C_M_AXI_ADDR_WIDTH,
      C_M_AXI_DATA_WIDTH      => C_M_AXI_DATA_WIDTH,
      C_S_AXIS_DATA_WIDTH     => C_S_AXIS_DATA_WIDTH,
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
      C_PCIEBAR2AXIBAR_2_SEC  => C_PCIEBAR2AXIBAR_2_SEC,
      C_S_AXIS_USER_WIDTH     => C_S_AXIS_USER_WIDTH
      )
   port map(
      --AXI Global
      aclk             => aclk,
      reset            => reset,
      --AXI Master Write Address Channel
      m_axi_awaddr     => m_axi_awaddr,
      m_axi_awlen      => m_axi_awlen,
      m_axi_awsize     => m_axi_awsize,
      m_axi_awburst    => m_axi_awburst,
      m_axi_awprot     => m_axi_awprot,
      m_axi_awvalid    => m_axi_awvalid,
      m_axi_awready    => m_axi_awready,
      m_axi_awlock     => m_axi_awlock,
      m_axi_awcache    => m_axi_awcache,
      --AXI Master Write Data Channel
      m_axi_wdata      => m_axi_wdata,
      m_axi_wstrb      => m_axi_wstrb,
      m_axi_wlast      => m_axi_wlast,
      m_axi_wvalid     => m_axi_wvalid,
      m_axi_wready     => m_axi_wready,
      --AXI Master Write Response Channel
      m_axi_bresp      => m_axi_bresp,
      m_axi_bvalid     => m_axi_bvalid,
      m_axi_bready     => m_axi_bready,
      --Master Bridge Interrupt Strobes
      master_int_wr    => master_int_wr,
      --AXI Streaming Block Interface
      blk_lnk_up       => blk_lnk_up,
      --AXIS Write Target Channel
      s_axis_cw_tdata  => s_axis_cw_tdata,
      s_axis_cw_tstrb  => s_axis_cw_tstrb,
      s_axis_cw_tlast  => s_axis_cw_tlast,
      s_axis_cw_tvalid => s_axis_cw_tvalid,
      s_axis_cw_tready => s_axis_cw_tready,
      s_axis_cw_tuser  => s_axis_cw_tuser,
      --Internal Interface Ordering
      wrreqpend        => wrreqpendsig,
      wrreqcomp        => wrreqcompsig,
      master_wr_idle   => sig_master_wr_idle
      );

comp_axi_mm_s_masterbridge_rd: entity axi_pcie_v2_8_0.axi_mm_s_masterbridge_rd
   generic map(
      --Family Generics
      C_FAMILY                => C_FAMILY,
      C_M_AXI_ADDR_WIDTH      => C_M_AXI_ADDR_WIDTH,
      C_M_AXI_DATA_WIDTH      => C_M_AXI_DATA_WIDTH,
      C_S_AXIS_DATA_WIDTH     => C_S_AXIS_DATA_WIDTH,
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
      C_PCIEBAR2AXIBAR_2_SEC  => C_PCIEBAR2AXIBAR_2_SEC,
      C_S_AXIS_USER_WIDTH     => C_S_AXIS_USER_WIDTH,
      C_TRN_NP_FC             => C_TRN_NP_FC
      )
   port map(
      --AXI Global
      aclk             => aclk,
      reset            => reset,
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
      m_axi_rready     => m_axi_rready,
      --Master Bridge Interrupt Strobes
      master_int_rd    => master_int_rd,
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
      blk_lnk_up_latch    => blk_lnk_up_latch,
      blk_dcontrol        => blk_dcontrol,
      blk_bus_number      => blk_bus_number,
      blk_device_number   => blk_device_number,
      blk_function_number => blk_function_number,
      --Internal Interface Ordering
      rdreq            => rdreq,
      rdreq_ordernotreq => rdreq_ordernotreq,
      slwrreqpend      => slwrreqpend,
      rdtargetpipeline => rdtargetpipeline,
      rdndreqpipeline  => rdndreqpipeline,
      rdreqpipeline    => rdreqpipeline,
      np_pkt_complete  => np_pkt_complete,
      orrdreqpipeline  => orrdreqpipeline,
      cplpendcpl       => cplpendcpl,
      wrpending        => wrpending,
      wrreqpend        => wrreqpendsig,
      slwrreqpending   => slwrreqpending,
      compready        => compready,
      wrreqcomp        => wrreqcompsig,
      slv_write_idle   => slv_write_idle,
      s_axi_awvalid    => s_axi_awvalid,
      master_wr_idle   => sig_master_wr_idle
      );

wrreqpend <= wrreqpendsig;
wrreqcomp <= wrreqcompsig;
master_wr_idle   <= sig_master_wr_idle;

MDE_int <= master_int_wr(0) or master_int_rd(0);
MSE_int <= master_int_wr(1) or master_int_rd(1);
MEP_int <= master_int_wr(2);

end behavioral;
