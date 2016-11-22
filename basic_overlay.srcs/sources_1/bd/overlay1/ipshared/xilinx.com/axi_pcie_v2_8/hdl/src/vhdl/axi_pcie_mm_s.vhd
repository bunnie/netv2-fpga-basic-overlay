-------------------------------------------------------------------------------
-- (c) Copyright 2010 - 2010 Xilinx, Inc. All rights reserved.
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
-- Filename:        axi_pcie_mm_s.vhd
--
-- Description:     Ensure the Bar hit for RP & EP configuration 
--        is incorporated between this bridge core and 
--        enhanced PCIe core.
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_pcie_mm_s.vhd
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library axi_pcie_v2_8_0;

--------------------------------------------------------------------------------
--Notes
--------------------------------------------------------------------------------



entity axi_pcie_mm_s is
   generic(
      --Family Generics
      C_FAMILY                      : string; --  :="virtex7";
      C_S_AXI_ID_WIDTH              : integer; -- := 4;
      --C_M_AXI_THREAD_ID_WIDTH       : integer; -- := 4;
      C_S_AXI_ADDR_WIDTH            : integer; -- := 32;
      C_S_AXI_DATA_WIDTH            : integer; -- := 32;
      C_M_AXI_ADDR_WIDTH            : integer; -- := 32;
      C_M_AXI_DATA_WIDTH            : integer; -- := 32;
      C_S_AXIS_DATA_WIDTH           : integer; -- := 32;
      C_M_AXIS_DATA_WIDTH           : integer; -- := 32;
      C_COMP_TIMEOUT                : integer; -- := 0;
      C_USER_CLK_FREQ               : integer; -- := 1;
      C_USER_CLK2_DIV2              : string;  -- := "FALSE";
      C_INCLUDE_RC                  : integer; -- := 0;
      C_S_AXI_SUPPORTS_NARROW_BURST : integer; -- := 1;
      C_EP_LINK_PARTNER_RCB         : integer := 0;
      C_INCLUDE_BAROFFSET_REG       : integer; -- := 1;
      C_AXIREAD_NUM                 : integer := 8;    -- CR # 646225
      C_AXIBAR_NUM                  : integer; -- := 6;
      C_AXIBAR2PCIEBAR_0            : std_logic_vector; --:=x"00000000";
      C_AXIBAR2PCIEBAR_1            : std_logic_vector; --:=x"00000000";
      C_AXIBAR2PCIEBAR_2            : std_logic_vector; --:=x"00000000";
      C_AXIBAR2PCIEBAR_3            : std_logic_vector; --:=x"00000000";
      C_AXIBAR2PCIEBAR_4            : std_logic_vector; --:=x"00000000";
      C_AXIBAR2PCIEBAR_5            : std_logic_vector; --:=x"00000000";
      C_AXIBAR_AS_0                 : integer; -- := 0;
      C_AXIBAR_AS_1                 : integer; -- := 0;
      C_AXIBAR_AS_2                 : integer; -- := 0;
      C_AXIBAR_AS_3                 : integer; -- := 0;
      C_AXIBAR_AS_4                 : integer; -- := 0;
      C_AXIBAR_AS_5                 : integer; -- := 0;
      C_AXIBAR_0                    : std_logic_vector; -- := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_0           : std_logic_vector; -- := x"0000_0000";
      C_AXIBAR_1                    : std_logic_vector; -- := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_1           : std_logic_vector; -- := x"0000_0000";
      C_AXIBAR_2                    : std_logic_vector; -- := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_2           : std_logic_vector; -- := x"0000_0000";
      C_AXIBAR_3                    : std_logic_vector; -- := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_3           : std_logic_vector; -- := x"0000_0000";
      C_AXIBAR_4                    : std_logic_vector; -- := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_4           : std_logic_vector; -- := x"0000_0000";
      C_AXIBAR_5                    : std_logic_vector; -- := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_5           : std_logic_vector; -- := x"0000_0000";
      C_PCIEBAR_NUM                 : integer; -- := 3;
      C_PCIEBAR_AS                  : integer; -- := 1;
      C_PCIEBAR_LEN_0               : integer; -- := 16;
      C_PCIEBAR2AXIBAR_0            : std_logic_vector; --:=x"00000000";
      C_PCIEBAR2AXIBAR_0_SEC        : integer; -- := 0;
      C_PCIEBAR_LEN_1               : integer; -- := 16;
      C_PCIEBAR2AXIBAR_1            : std_logic_vector; --:=x"00000000";
      C_PCIEBAR2AXIBAR_1_SEC        : integer; -- := 0;
      C_PCIEBAR_LEN_2               : integer; -- := 16;
      C_PCIEBAR2AXIBAR_2            : std_logic_vector; --:=x"00000000";
      C_PCIEBAR2AXIBAR_2_SEC        : integer; -- := 0;
      C_S_AXIS_USER_WIDTH           : integer; -- := 12;
      C_TRN_NP_FC                   : string   -- := "FALSE"
      --C_M_AXI_AWUSER_WIDTH    : integer;
      --C_M_AXI_WUSER_WIDTH     : integer
      --C_NUM_USER_INTR         : integer := 6
   );
   port(

      -- AXI Global
      axi_aclk                : in  std_logic;
      reset                   : in  std_logic;

      -- AXI Slave Write Address Channel
      s_axi_awid              : in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      s_axi_awaddr            : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      s_axi_awregion          : in  std_logic_vector(3 downto 0);
      s_axi_awlen             : in  std_logic_vector(7 downto 0);
      s_axi_awsize            : in  std_logic_vector(2 downto 0);
      s_axi_awburst           : in  std_logic_vector(1 downto 0);
      s_axi_awvalid           : in  std_logic;
      s_axi_awready           : out std_logic;

      -- AXI Slave Write Data Channel
      s_axi_wdata             : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      s_axi_wstrb             : in  std_logic_vector(C_S_AXI_DATA_WIDTH/8-1 downto 0);
      s_axi_wlast             : in  std_logic;
      s_axi_wvalid            : in  std_logic;
      s_axi_wready            : out std_logic;

      -- AXI Slave Write Response Channel
      s_axi_bid               : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      s_axi_bresp             : out std_logic_vector(1 downto 0);
      s_axi_bvalid            : out std_logic;
      s_axi_bready            : in  std_logic;

      -- AXI Slave Read Address Channel
      s_axi_arid              : in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      s_axi_araddr            : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      s_axi_arregion          : in  std_logic_vector(3 downto 0);
      s_axi_arlen             : in  std_logic_vector(7 downto 0);
      s_axi_arsize            : in  std_logic_vector(2 downto 0);
      s_axi_arburst           : in  std_logic_vector(1 downto 0);
      s_axi_arvalid           : in  std_logic;
      s_axi_arready           : out std_logic;

      -- AXI Slave Read Data Channel
      s_axi_rid               : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      s_axi_rdata             : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      s_axi_rresp             : out std_logic_vector(1 downto 0);
      s_axi_rlast             : out std_logic;
      s_axi_rvalid            : out std_logic;
      s_axi_rready            : in  std_logic;

      -- AXIS Write Requester Channel
      m_axis_rw_tdata         : out std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
      m_axis_rw_tstrb         : out std_logic_vector(C_M_AXIS_DATA_WIDTH/8-1 downto 0);
      m_axis_rw_tlast         : out std_logic;
      m_axis_rw_tvalid        : out std_logic;
      m_axis_rw_tready        : in  std_logic;

      -- AXIS Read Requester Channel
      m_axis_rr_tid           : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      m_axis_rr_tdata         : out std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
      m_axis_rr_tstrb         : out std_logic_vector(C_M_AXIS_DATA_WIDTH/8-1 downto 0);
      m_axis_rr_tlast         : out std_logic;
      m_axis_rr_tvalid        : out std_logic;
      m_axis_rr_tready        : in  std_logic;

      -- AXIS Completion Requester Channel
      s_axis_rc_tdata         : in  std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
      s_axis_rc_tstrb         : in  std_logic_vector(C_M_AXIS_DATA_WIDTH/8-1 downto 0);
      s_axis_rc_tlast         : in  std_logic;
      s_axis_rc_tvalid        : in  std_logic;
      s_axis_rc_tready        : out std_logic;

      -- AXI Master Write Address Channel
      m_axi_awaddr            : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      m_axi_awlen             : out std_logic_vector(7 downto 0);
      m_axi_awsize            : out std_logic_vector(2 downto 0);
      m_axi_awburst           : out std_logic_vector(1 downto 0);
      m_axi_awprot            : out std_logic_vector(2 downto 0);
      m_axi_awvalid           : out std_logic;
      m_axi_awready           : in  std_logic;
      --m_axi_awid              : out std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
      m_axi_awlock            : out std_logic;
      m_axi_awcache           : out std_logic_vector(3 downto 0);

      -- AXI Master Write Data Channel
      m_axi_wdata             : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      m_axi_wstrb             : out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
      m_axi_wlast             : out std_logic;
      m_axi_wvalid            : out std_logic;
      m_axi_wready            : in  std_logic;

      -- AXI Master Write Response Channel
      m_axi_bresp             : in  std_logic_vector(1 downto 0);
      m_axi_bvalid            : in  std_logic;
      m_axi_bready            : out std_logic;

      -- AXI Master Read Address Channel
      --m_axi_arid              : out std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
      m_axi_araddr            : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      m_axi_arlen             : out std_logic_vector(7 downto 0);
      m_axi_arsize            : out std_logic_vector(2 downto 0);
      m_axi_arburst           : out std_logic_vector(1 downto 0);
      m_axi_arprot            : out std_logic_vector(2 downto 0);
      m_axi_arvalid           : out std_logic;
      m_axi_arready           : in  std_logic;
      m_axi_arlock            : out std_logic;
      m_axi_arcache           : out std_logic_vector(3 downto 0);
      --m_axi_aruser            : out std_logic_vector(C_M_AXI_AWUSER_WIDTH-1 downto 0);

      -- AXI Master Read Data Channel
      m_axi_rdata             : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      m_axi_rresp             : in  std_logic_vector(1 downto 0);
      m_axi_rlast             : in  std_logic;
      m_axi_rvalid            : in  std_logic;
      m_axi_rready            : out std_logic;
      --m_axi_ruser             : out std_logic_vector(C_M_AXI_WUSER_WIDTH-1 downto 0);

      -- AXIS Write Completer Channel
      s_axis_cw_tdata         : in  std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0);
      s_axis_cw_tstrb         : in  std_logic_vector(C_S_AXIS_DATA_WIDTH/8-1 downto 0);
      s_axis_cw_tlast         : in  std_logic;
      s_axis_cw_tvalid        : in  std_logic;
      s_axis_cw_tready        : out std_logic;
      s_axis_cw_tuser         : in  std_logic_vector(C_S_AXIS_USER_WIDTH-1 downto 0);
      
      -- AXIS Read Completer Channel
      s_axis_cr_tdata         : in  std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0);
      s_axis_cr_tstrb         : in  std_logic_vector(C_S_AXIS_DATA_WIDTH/8-1 downto 0);
      s_axis_cr_tlast         : in  std_logic;
      s_axis_cr_tvalid        : in  std_logic;
      s_axis_cr_tready        : out std_logic;
      s_axis_cr_tuser         : in  std_logic_vector(C_S_AXIS_USER_WIDTH-1 downto 0);

      -- AXIS Completion Completer Channel
      m_axis_cc_tdata         : out std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0);
      m_axis_cc_tstrb         : out std_logic_vector(C_S_AXIS_DATA_WIDTH/8-1 downto 0);
      m_axis_cc_tlast         : out std_logic;
      m_axis_cc_tvalid        : out std_logic;
      m_axis_cc_tready        : in  std_logic;
      m_axis_cc_tuser         : out std_logic_vector(C_S_AXIS_USER_WIDTH-1 downto 0);

      -- AXI-Lite Slave IPIC
      IP2Bus_Data             : out std_logic_vector(31 downto 0);
      IP2Bus_WrAck            : out std_logic;
      IP2Bus_RdAck            : out std_logic;
      IP2Bus_Error            : out std_logic;
      Bus2IP_Addr             : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      Bus2IP_Data             : in  std_logic_vector(31 downto 0);
      Bus2IP_RNW              : in  std_logic;
      Bus2IP_BE               : in  std_logic_vector(32/8-1 downto 0);
      Bus2IP_CS               : in  std_logic;

      -- AXI-S Block Interface
      blk_lnk_up              : in  std_logic;
      blk_bus_number          : in  std_logic_vector(7 downto 0);
      blk_device_number       : in  std_logic_vector(4 downto 0);
      blk_function_number     : in  std_logic_vector(2 downto 0);
      blk_command             : in  std_logic_vector(15 downto 0);
      blk_dcontrol            : in  std_logic_vector(15 downto 0);
      blk_lstatus             : in  std_logic_vector(15 downto 0);
      np_cpl_pending          : out std_logic;
      RP_bridge_en            : in  std_logic;

      --Interrupt Strobes
      SUR_int                 : out std_logic;
      SUC_int                 : out std_logic;
      SCT_int                 : out std_logic;
      SEP_int                 : out std_logic;
      SCA_int                 : out std_logic;
      SIB_int                 : out std_logic;
      MDE_int                 : out std_logic; -- Master DECERR interrupt
      MSE_int                 : out std_logic; -- Master SLVERR interrupt
      MEP_int                 : out std_logic; -- Slave Error Poison interrupt
      --MLE_int                 : out std_logic; -- Link Down interrupt
      --MEC_int                 : out std_logic  -- ECRC Error interrupt
      -- signals used to keep track NP buffer availability
      rdndreqpipeline         : out std_logic_vector(2 downto 0);
      rdreqpipeline           : out std_logic_vector(2 downto 0);
      np_pkt_complete         : out std_logic_vector(1 downto 0);
      config_gen_req          : in  std_logic
   );

end axi_pcie_mm_s;

architecture structure of axi_pcie_mm_s is
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of structure : architecture is "yes";

   signal axibar2pciebar0     : std_logic_vector(63 downto 0);
   signal axibar2pciebar1     : std_logic_vector(63 downto 0);
   signal axibar2pciebar2     : std_logic_vector(63 downto 0);
   signal axibar2pciebar3     : std_logic_vector(63 downto 0);
   signal axibar2pciebar4     : std_logic_vector(63 downto 0);
   signal axibar2pciebar5     : std_logic_vector(63 downto 0);
   
   signal slwrreqpendsig              : std_logic_vector(1 downto 0);
   signal slwrreqcompsig              : std_logic_vector(1 downto 0);
   signal sig_slv_write_idle          : std_logic;
   signal sig_s_axi_awvalid           : std_logic;
   signal sig_master_wr_idle          : std_logic;
   signal wrreqpendsig, wrreqcompsig  : std_logic_vector(2 downto 0);
   
begin

   comp_register_block : entity axi_pcie_v2_8_0.register_block
   generic map(
      --Family Generics
      C_FAMILY                => C_FAMILY,
      C_S_AXI_ADDR_WIDTH      => C_S_AXI_ADDR_WIDTH,
      C_S_AXI_DATA_WIDTH      => C_S_AXI_DATA_WIDTH,
      C_AXIBAR_NUM            => C_AXIBAR_NUM,
      C_INCLUDE_BAROFFSET_REG => C_INCLUDE_BAROFFSET_REG,
      C_AXIBAR2PCIEBAR_0      => C_AXIBAR2PCIEBAR_0,
      C_AXIBAR2PCIEBAR_1      => C_AXIBAR2PCIEBAR_1,
      C_AXIBAR2PCIEBAR_2      => C_AXIBAR2PCIEBAR_2,
      C_AXIBAR2PCIEBAR_3      => C_AXIBAR2PCIEBAR_3,
      C_AXIBAR2PCIEBAR_4      => C_AXIBAR2PCIEBAR_4,
      C_AXIBAR2PCIEBAR_5      => C_AXIBAR2PCIEBAR_5,
      C_AXIBAR_AS_0           => C_AXIBAR_AS_0,
      C_AXIBAR_AS_1           => C_AXIBAR_AS_1,
      C_AXIBAR_AS_2           => C_AXIBAR_AS_2,
      C_AXIBAR_AS_3           => C_AXIBAR_AS_3,
      C_AXIBAR_AS_4           => C_AXIBAR_AS_4,
      C_AXIBAR_AS_5           => C_AXIBAR_AS_5
   )
   port map(
      -- AXI Global
      s_axi_aclk              => axi_aclk,
      reset                   => reset,

      -- AXI-Lite Slave IPIC
      IP2Bus_Data             => IP2Bus_Data,
      IP2Bus_WrAck            => IP2Bus_WrAck,
      IP2Bus_RdAck            => IP2Bus_RdAck,
      IP2Bus_Error            => IP2Bus_Error,
      Bus2IP_Addr             => Bus2IP_Addr,
      Bus2IP_Data             => Bus2IP_Data,
      Bus2IP_RNW              => Bus2IP_RNW,
      Bus2IP_BE               => Bus2IP_BE,
      Bus2IP_CS               => Bus2IP_CS,
      axibar2pciebar0         => axibar2pciebar0,
      axibar2pciebar1         => axibar2pciebar1,
      axibar2pciebar2         => axibar2pciebar2,
      axibar2pciebar3         => axibar2pciebar3,
      axibar2pciebar4         => axibar2pciebar4,
      axibar2pciebar5         => axibar2pciebar5
   );

comp_AXI_MM_S_MasterBridge: entity axi_pcie_v2_8_0.AXI_MM_S_MasterBridge
   generic map(
      --Family Generics
      C_FAMILY                => C_FAMILY,
      --C_M_AXI_THREAD_ID_WIDTH => C_M_AXI_THREAD_ID_WIDTH,
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
      --C_M_AXI_AWUSER_WIDTH    => C_M_AXI_AWUSER_WIDTH,
      --C_M_AXI_WUSER_WIDTH     => C_M_AXI_WUSER_WIDTH
      --C_M_AXI_BUSER_WIDTH     => C_M_AXI_BUSER_WIDTH
      )
   port map(
      --AXI Global
      aclk                    => axi_aclk,
      reset                   => reset,
      --AXI Master Write Address Channel
      --m_axi_awid              => m_axi_awid,            --temporary
      m_axi_awaddr            => m_axi_awaddr,
      m_axi_awlen             => m_axi_awlen,
      m_axi_awsize            => m_axi_awsize,
      m_axi_awburst           => m_axi_awburst,
      m_axi_awprot            => m_axi_awprot,
      m_axi_awvalid           => m_axi_awvalid,
      m_axi_awready           => m_axi_awready,
      m_axi_awlock            => m_axi_awlock,
      m_axi_awcache           => m_axi_awcache,
      --m_axi_awuser     => m_axi_awuser,
      --AXI Master Write Data Channel
      m_axi_wdata             => m_axi_wdata,
      m_axi_wstrb             => m_axi_wstrb,
      m_axi_wlast             => m_axi_wlast,
      m_axi_wvalid            => m_axi_wvalid,
      m_axi_wready            => m_axi_wready,
      --m_axi_wuser      => m_axi_wuser,
      --AXI Master Write Response Channel
      m_axi_bresp             => m_axi_bresp,
      m_axi_bvalid            => m_axi_bvalid,
      m_axi_bready            => m_axi_bready,
      --m_axi_buser      => m_axi_buser,
      --Master Bridge Interrupt Strobes
      --master_int       => open,            --temporary
      MDE_int                 => MDE_int,
      MSE_int                 => MSE_int,
      MEP_int                 => MEP_int,
      --MLE_int                 => MLE_int,
      --MEC_int                 => MEC_int,
      --AXIS Write Completer Channel
      s_axis_cw_tdata         => s_axis_cw_tdata,
      s_axis_cw_tstrb         => s_axis_cw_tstrb,
      s_axis_cw_tlast         => s_axis_cw_tlast,
      s_axis_cw_tvalid        => s_axis_cw_tvalid,
      s_axis_cw_tready        => s_axis_cw_tready,
      s_axis_cw_tuser         => s_axis_cw_tuser,
      --AXI Master Read Address Channel
      --m_axi_arid              => m_axi_arid,
      m_axi_araddr            => m_axi_araddr,
      m_axi_arlen             => m_axi_arlen,
      m_axi_arsize            => m_axi_arsize,
      m_axi_arburst           => m_axi_arburst,
      m_axi_arprot            => m_axi_arprot,
      m_axi_arvalid           => m_axi_arvalid,
      m_axi_arready           => m_axi_arready,
      m_axi_arlock            => m_axi_arlock,
      m_axi_arcache           => m_axi_arcache,
    --m_axi_aruser     => m_axi_aruser,
    --AXI Master Read Data Channel
      m_axi_rdata             => m_axi_rdata,
      m_axi_rresp             => m_axi_rresp,
      m_axi_rlast             => m_axi_rlast,
      m_axi_rvalid            => m_axi_rvalid,
      m_axi_rready            => m_axi_rready,
    --m_axi_ruser      => m_axi_ruser,
    --AXIS Read Completer Channel
      s_axis_cr_tdata         => s_axis_cr_tdata,
      s_axis_cr_tstrb         => s_axis_cr_tstrb,
      s_axis_cr_tlast         => s_axis_cr_tlast,
      s_axis_cr_tvalid        => s_axis_cr_tvalid,
      s_axis_cr_tready        => s_axis_cr_tready,
      s_axis_cr_tuser         => s_axis_cr_tuser,
    --AXIS Completion Completer Channel
      m_axis_cc_tdata         => m_axis_cc_tdata,
      m_axis_cc_tstrb         => m_axis_cc_tstrb,
      m_axis_cc_tlast         => m_axis_cc_tlast,
      m_axis_cc_tvalid        => m_axis_cc_tvalid,
      m_axis_cc_tready        => m_axis_cc_tready,
      m_axis_cc_tuser         => m_axis_cc_tuser,
      --AXI Streaming Block Interface
      blk_lnk_up              => blk_lnk_up,
      blk_dcontrol            => blk_dcontrol,
      blk_bus_number          => blk_bus_number,
      blk_device_number       => blk_device_number,
      blk_function_number     => blk_function_number,
      --Internal Interface Ordering
      slwrreqpend             => slwrreqpendsig,
      slwrreqcomp             => slwrreqcompsig,
      wrreqpend               => wrreqpendsig,
      wrreqcomp               => wrreqcompsig,
      slv_write_idle          => sig_slv_write_idle,
      s_axi_awvalid           => sig_s_axi_awvalid,
      master_wr_idle          => sig_master_wr_idle,
      -- signals required for X7 NP credit return logic
      rdndreqpipeline         => rdndreqpipeline,
      rdreqpipeline           => rdreqpipeline,
      np_pkt_complete         => np_pkt_complete
      );

-- slave bridge deleted

--clk_user_intr <= slave_int & master_int;

end architecture;
