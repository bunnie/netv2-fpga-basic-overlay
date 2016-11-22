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
-- Filename:        slave_bridge.vhd
--
-- Description:     
--                  
-- This VHDL file is the HDL design file for the AXI slave write bridge. 
--                   
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              slave_bridge.vhd
--
-------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.conv_integer;

library axi_pcie_v2_8_0;
use axi_pcie_v2_8_0.all;
use axi_pcie_v2_8_0.axi_pcie_mm_s_pkg.all;

library lib_pkg_v1_0_2;
use lib_pkg_v1_0_2.lib_pkg.log2;

library lib_fifo_v1_0_4;
use lib_fifo_v1_0_4.sync_fifo_fg;

library lib_bmg_v1_0_4;
use lib_bmg_v1_0_4.blk_mem_gen_wrapper;

entity slave_bridge is
   generic(
      --Family Generics
      C_FAMILY                      : string  :="virtex7";
      C_S_AXI_ID_WIDTH              : integer := 4;
      C_S_AXI_ADDR_WIDTH            : integer := 32;
      C_S_AXI_DATA_WIDTH            : integer := 32;
      C_M_AXIS_DATA_WIDTH           : integer := 32;
      C_COMP_TIMEOUT                : integer := 0; -- 0=50us, 1=50ms
      C_USER_CLK_FREQ               : integer := 1;
      C_USER_CLK2_DIV2              : string  := "FALSE";
      C_INCLUDE_RC                  : integer; -- := 0;
      C_S_AXI_SUPPORTS_NARROW_BURST : integer := 1;
      C_EP_LINK_PARTNER_RCB         : integer := 0;
      C_AXIREAD_NUM                 : integer := 8;  -- CR # 646225
      C_AXIBAR_NUM                  : integer := 6;
      C_AXIBAR_AS_0                 : integer := 0;
      C_AXIBAR_AS_1                 : integer := 0;
      C_AXIBAR_AS_2                 : integer := 0;
      C_AXIBAR_AS_3                 : integer := 0;
      C_AXIBAR_AS_4                 : integer := 0;
      C_AXIBAR_AS_5                 : integer := 0;
      C_AXIBAR_0                    : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_0           : std_logic_vector := x"0000_0000";
      C_AXIBAR_1                    : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_1           : std_logic_vector := x"0000_0000";
      C_AXIBAR_2                    : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_2           : std_logic_vector := x"0000_0000";
      C_AXIBAR_3                    : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_3           : std_logic_vector := x"0000_0000";
      C_AXIBAR_4                    : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_4           : std_logic_vector := x"0000_0000";
      C_AXIBAR_5                    : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_5           : std_logic_vector := x"0000_0000"
   );
   port(

      -- AXI Global
      s_axi_aclk           : in  std_logic;
      reset                : in  std_logic;

      -- AXI Slave Write Address Channel
      s_axi_awid           : in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      s_axi_awaddr         : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      s_axi_awregion       : in  std_logic_vector(3 downto 0);
      s_axi_awlen          : in  std_logic_vector(7 downto 0);
      s_axi_awsize         : in  std_logic_vector(2 downto 0);
      s_axi_awburst        : in  std_logic_vector(1 downto 0);
      s_axi_awvalid        : in  std_logic;
      s_axi_awready        : out std_logic;

      -- AXI Slave Write Data Channel
      s_axi_wdata          : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      s_axi_wstrb          : in  std_logic_vector(C_S_AXI_DATA_WIDTH/8-1 downto 0);
      s_axi_wlast          : in  std_logic;
      s_axi_wvalid         : in  std_logic;
      s_axi_wready         : out std_logic;

      -- AXI Slave Write Response Channel
      s_axi_bid            : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      s_axi_bresp          : out std_logic_vector(1 downto 0);
      s_axi_bvalid         : out std_logic;
      s_axi_bready         : in  std_logic;

      -- AXI Slave Read Address Channel
      s_axi_arid           : in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      s_axi_araddr         : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      s_axi_arregion       : in  std_logic_vector(3 downto 0);
      s_axi_arlen          : in  std_logic_vector(7 downto 0);
      s_axi_arsize         : in  std_logic_vector(2 downto 0);
      s_axi_arburst        : in  std_logic_vector(1 downto 0);
      s_axi_arvalid        : in  std_logic;
      s_axi_arready        : out std_logic;

      -- AXI Slave Read Data Channel
      s_axi_rid            : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      s_axi_rdata          : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      s_axi_rresp          : out std_logic_vector(1 downto 0);
      s_axi_rlast          : out std_logic;
      s_axi_rvalid         : out std_logic;
      s_axi_rready         : in  std_logic;

      -- AXIS Write Requester Channel
      m_axis_rw_tdata      : out std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
      m_axis_rw_tstrb      : out std_logic_vector(C_M_AXIS_DATA_WIDTH/8-1 downto 0);
      m_axis_rw_tlast      : out std_logic;
      m_axis_rw_tvalid     : out std_logic;
      m_axis_rw_tready     : in  std_logic;

      -- AXIS Read Requester Channel
      m_axis_rr_tid        : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      m_axis_rr_tdata      : out std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
      m_axis_rr_tstrb      : out std_logic_vector(C_M_AXIS_DATA_WIDTH/8-1 downto 0);
      m_axis_rr_tlast      : out std_logic;
      m_axis_rr_tvalid     : out std_logic;
      m_axis_rr_tready     : in  std_logic;

      -- AXIS Completion Requester Channel
      s_axis_rc_tdata      : in  std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
      s_axis_rc_tstrb      : in  std_logic_vector(C_M_AXIS_DATA_WIDTH/8-1 downto 0);
      s_axis_rc_tlast      : in  std_logic;
      s_axis_rc_tvalid     : in  std_logic;
      s_axis_rc_tready     : out std_logic;

      -- AXI2PCIE translation vectors
      axibar2pciebar0      : in  std_logic_vector(63 downto 0);
      axibar2pciebar1      : in  std_logic_vector(63 downto 0);
      axibar2pciebar2      : in  std_logic_vector(63 downto 0);
      axibar2pciebar3      : in  std_logic_vector(63 downto 0);
      axibar2pciebar4      : in  std_logic_vector(63 downto 0);
      axibar2pciebar5      : in  std_logic_vector(63 downto 0);

      -- AXI-S Block Interface
      blk_lnk_up           : in  std_logic;
      blk_bus_number       : in  std_logic_vector(7 downto 0);
      blk_device_number    : in  std_logic_vector(4 downto 0);
      blk_function_number  : in  std_logic_vector(2 downto 0);
      blk_command          : in  std_logic_vector(15 downto 0);
      blk_dcontrol         : in  std_logic_vector(15 downto 0);
      blk_lstatus          : in  std_logic_vector(15 downto 0);
      np_cpl_pending       : out std_logic;
      RP_bridge_en         : in  std_logic;

      -- Ordering signals
      --slrdready     : out std_logic;
      --slcplready     : out std_logic;
      --slrdsend             : in  std_logic;
      --slcplsend            : in  std_logic;
      pend_slv_wr_cnt      : out std_logic_vector(1 downto 0);
      cmpl_slv_wr_cnt      : out std_logic_vector(1 downto 0);
      wrreqpend            : in  std_logic_vector(2 downto 0);
      wrreqcomp            : in  std_logic_vector(2 downto 0);
      slv_write_idle       : out std_logic;
      s_axi_awvalid_o      : out std_logic;
      master_wr_idle       : in  std_logic;
      
      -- Interrupts
      SUR                  : out std_logic;
      SUC                  : out std_logic;
      SCT                  : out std_logic;
      SEP                  : out std_logic;
      SCA                  : out std_logic;
      SIB                  : out std_logic;
      config_gen_req       : in  std_logic
   );

end slave_bridge;

architecture structure of slave_bridge is
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of structure : architecture is "yes";


  component axi_pcie_v2_8_0_axi_upsizer
      generic(
          C_FAMILY                    : string  := "none";
          C_AXI_ID_WIDTH              : integer := 4;
          C_AXI_ADDR_WIDTH            : integer := 32;
          C_S_AXI_DATA_WIDTH          : integer := 32;
          C_M_AXI_DATA_WIDTH          : integer := 32;
          C_AXI_SUPPORTS_USER_SIGNALS : integer := 0;
          C_AXI_AWUSER_WIDTH          : integer := 1;
          C_AXI_ARUSER_WIDTH          : integer := 1;
          C_AXI_WUSER_WIDTH           : integer := 1;
          C_AXI_RUSER_WIDTH           : integer := 1;
          C_AXI_BUSER_WIDTH           : integer := 1;
          C_AXI_SUPPORTS_WRITE        : integer := 1;
          C_AXI_SUPPORTS_READ         : integer := 1;
          C_S_AXI_R_REGISTER        : integer := 0;        -- CR # 649227
          C_M_AXI_R_REGISTER        : integer := 0;        -- CR # 649227
          C_PACKING_LEVEL             : integer := 1;
          C_SUPPORT_BURSTS            : integer := 1;
          C_SINGLE_THREAD             : integer := 1
      );
      port(
     -- Globals
          ARESETN                     :in  std_logic;
          ACLK                        :in  std_logic;
     -- Slave Interface Write Address Ports
          S_AXI_AWID                  :in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
          S_AXI_AWADDR                :in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
          S_AXI_AWLEN                 :in  std_logic_vector(7 downto 0);
          S_AXI_AWSIZE                :in  std_logic_vector(2 downto 0);
          S_AXI_AWBURST               :in  std_logic_vector(1 downto 0);
          S_AXI_AWLOCK                :in  std_logic_vector(1 downto 0);
          S_AXI_AWCACHE               :in  std_logic_vector(3 downto 0);
          S_AXI_AWPROT                :in  std_logic_vector(2 downto 0);
          S_AXI_AWREGION              :in  std_logic_vector(3 downto 0);
          S_AXI_AWQOS                 :in  std_logic_vector(3 downto 0);
          S_AXI_AWUSER                :in  std_logic_vector(0 downto 0);
          S_AXI_AWVALID               :in  std_logic;
          S_AXI_AWREADY               :out std_logic;
     -- Slave Interface Write Data Ports
          S_AXI_WDATA                 :in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
          S_AXI_WSTRB                 :in  std_logic_vector(C_S_AXI_DATA_WIDTH/8-1 downto 0);
          S_AXI_WLAST                 :in  std_logic;
          S_AXI_WUSER                 :in  std_logic_vector(0 downto 0);
          S_AXI_WVALID                :in  std_logic;
          S_AXI_WREADY                :out std_logic;
     -- Slave Interface Write Response Ports
          S_AXI_BID                   :out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
          S_AXI_BRESP                 :out std_logic_vector(1 downto 0);
          S_AXI_BUSER                 :out std_logic_vector(0 downto 0);
          S_AXI_BVALID                :out std_logic;
          S_AXI_BREADY                :in  std_logic;
     -- Slave Interface Read Address Ports
          S_AXI_ARID                  :in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
          S_AXI_ARADDR                :in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
          S_AXI_ARLEN                 :in  std_logic_vector(7 downto 0);
          S_AXI_ARSIZE                :in  std_logic_vector(2 downto 0);
          S_AXI_ARBURST               :in  std_logic_vector(1 downto 0);
          S_AXI_ARLOCK                :in  std_logic_vector(1 downto 0);
          S_AXI_ARCACHE               :in  std_logic_vector(3 downto 0);
          S_AXI_ARPROT                :in  std_logic_vector(2 downto 0);
          S_AXI_ARREGION              :in  std_logic_vector(3 downto 0);
          S_AXI_ARQOS                 :in  std_logic_vector(3 downto 0);
          S_AXI_ARUSER                :in  std_logic_vector(0 downto 0);
          S_AXI_ARVALID               :in  std_logic;
          S_AXI_ARREADY               :out std_logic;
     -- Slave Interface Read Data Ports
          S_AXI_RID                   :out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
          S_AXI_RDATA                 :out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
          S_AXI_RRESP                 :out std_logic_vector(1 downto 0);
          S_AXI_RLAST                 :out std_logic;
          S_AXI_RUSER                 :out std_logic_vector(0 downto 0);
          S_AXI_RVALID                :out std_logic;
          S_AXI_RREADY                :in  std_logic;
     -- Master Interface Write Address Port
          M_AXI_AWID                  :out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
          M_AXI_AWADDR                :out std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
          M_AXI_AWLEN                 :out std_logic_vector(7 downto 0);
          M_AXI_AWSIZE                :out std_logic_vector(2 downto 0);
          M_AXI_AWBURST               :out std_logic_vector(1 downto 0);
          M_AXI_AWREGION              :out std_logic_vector(3 downto 0);
          M_AXI_AWUSER                :out std_logic_vector(0 downto 0);
          M_AXI_AWVALID               :out std_logic;
          M_AXI_AWREADY               :in  std_logic;
	  M_AXI_AWLOCK                :out std_logic_vector(1 downto 0);
	  M_AXI_AWCACHE               :out std_logic_vector(3 downto 0);
	  M_AXI_AWPROT                :out std_logic_vector(2 downto 0);
	  M_AXI_AWQOS                 :out std_logic_vector(3 downto 0);
     -- Master Interface Write Data Ports
          M_AXI_WDATA                 :out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
          M_AXI_WSTRB                 :out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
          M_AXI_WLAST                 :out std_logic;
          M_AXI_WUSER                 :out std_logic_vector(0 downto 0);
          M_AXI_WVALID                :out std_logic;
          M_AXI_WREADY                :in  std_logic;
     -- Master Interface Write Response Ports
          M_AXI_BID                   :in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
          M_AXI_BRESP                 :in  std_logic_vector(1 downto 0);
          M_AXI_BUSER                 :in  std_logic_vector(0 downto 0);
          M_AXI_BVALID                :in  std_logic;
          M_AXI_BREADY                :out std_logic;
     -- Master Interface Read Address Port
          M_AXI_ARID                  :out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
          M_AXI_ARADDR                :out std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
          M_AXI_ARLEN                 :out std_logic_vector(7 downto 0);
          M_AXI_ARSIZE                :out std_logic_vector(2 downto 0);
          M_AXI_ARBURST               :out std_logic_vector(1 downto 0);
          M_AXI_ARREGION              :out std_logic_vector(3 downto 0);
          M_AXI_ARUSER                :out std_logic_vector(3 downto 0);
          M_AXI_ARVALID               :out std_logic;
          M_AXI_ARREADY               :in  std_logic;
	  M_AXI_ARLOCK                :out std_logic_vector(1 downto 0);
	  M_AXI_ARCACHE               :out std_logic_vector(3 downto 0);
	  M_AXI_ARPROT                :out std_logic_vector(2 downto 0);
	  M_AXI_ARQOS                 :out std_logic_vector(3 downto 0);
     -- Master Interface Read Data Ports
          M_AXI_RID                   :in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
          M_AXI_RDATA                 :in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
          M_AXI_RRESP                 :in  std_logic_vector(1 downto 0);
          M_AXI_RLAST                 :in  std_logic;
          M_AXI_RUSER                 :in  std_logic_vector(0 downto 0);
          M_AXI_RVALID                :in  std_logic;
          M_AXI_RREADY                :out std_logic
     );
  end component;


-- CONSTANTS --

   constant RD_BUFFER_DEPTH         : integer := 256*C_AXIREAD_NUM; -- 4, 8 or 16 bytes wide
   constant RD_BUFFER_ADDR_SIZE     : integer := log2(RD_BUFFER_DEPTH);
   constant ONES                    : std_logic_vector(0 to C_S_AXI_DATA_WIDTH/4-1):= (others => '1');
   constant ZEROS                   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
   signal wdata_fifo_dout           : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal wdata_fifo_dout1          : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal wdata_fifo_dout2          : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal wdata_fifo_rd_en          : std_logic := '0'; 
   signal wdata_fifo_rd_en1         : std_logic := '0'; 
   signal wdata_fifo_rd_en2         : std_logic := '0'; 
   signal wdata_fifo_empty          : std_logic;
   signal wdata_fifo_empty1         : std_logic;
   signal wdata_fifo_empty2         : std_logic;
   signal wdata_fifo_almost_empty   : std_logic;
   signal wdata_fifo_full           : std_logic;
   signal wdata_fifo_full1          : std_logic;
   signal wdata_fifo_full2          : std_logic;
   signal wdata_fifo_allmost_full   : std_logic;
   signal wdata_fifo_allmost_full1  : std_logic;
   signal wdata_fifo_allmost_full2  : std_logic;

   signal wdata                     : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal wdata1                    : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal wdata2                    : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal wdata_valid               : std_logic;
   signal wdata_valid1              : std_logic;
   signal wdata_valid2              : std_logic;
   signal waddr                     : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
   signal wlength_bytes             : std_logic_vector(12 downto 0);
   signal rlength_bytes             : std_logic_vector(12 downto 0);
   signal wbarhit                   : std_logic_vector(C_AXIBAR_NUM-1 downto 0);
   signal wfirst_BE                 : std_logic_vector(3 downto 0);
   signal wfirst_BE_valid           : std_logic;
   signal wlast_BE                  : std_logic_vector(3 downto 0);
   signal wlast_BE_valid            : std_logic;
   signal raddr                     : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
   signal rbarhit                   : std_logic_vector(C_AXIBAR_NUM-1 downto 0);
   signal araddr_2lsbs              : std_logic_vector(1 downto 0);
   signal rlast_BE                  : std_logic_vector(3 downto 0);
   signal read_req_sent             : std_logic;
   signal tag_sent                  : std_logic_vector(7 downto 0);
   signal length_sent               : std_logic_vector(9 downto 0);
   signal rreq_active               : std_logic;
   signal req_active_ptr            : integer range 0 to C_AXIREAD_NUM-1;
   signal req_active_ptr_d          : integer range 0 to C_AXIREAD_NUM-1;
   signal rdata_bram_rd_en          : std_logic;
   signal rdata_bram_addr           : std_logic_vector(RD_BUFFER_ADDR_SIZE-1 downto 0);
   signal rdata                     : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal data_stream_out           : std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
   signal cpl_buffer_addr           : std_logic_vector(RD_BUFFER_ADDR_SIZE-1 downto 0);
   signal cpl_data_str_done         : std_logic;
   signal tag_in_cpl                : std_logic_vector(7 downto 0);
   signal tag_cpl_status_clr        : tag_cpl_status_clr_array;
   signal tag_cpl_status_clr_d      : tag_cpl_status_clr_array;
   signal cpl_index                 : integer range 0 to C_AXIREAD_NUM-1;
   signal rdata_str_done            : std_logic;
   signal rdata_str_start           : std_logic;
   signal wdata_str_done            : std_logic;
   signal wdata_str_start           : std_logic;
   signal wfirst_word_offset        : integer;
   signal first_word_offset         : first_word_offset_array;
   signal reqID                     : std_logic_vector(15 downto 0) := x"5A5A";
   signal maxpayloadsize            : std_logic_vector(2 downto 0) := "000";
   signal maxreadreqsize            : std_logic_vector(2 downto 0) := "000";
   signal sig_m_axis_rr_tlast       : std_logic;
   signal wea                       : std_logic_vector(C_S_AXI_DATA_WIDTH/8-1 downto 0);
   signal illegal_burst_wr          : std_logic;
   signal illegal_burst_rd          : std_logic;
   signal illegal_burst_trns_wr     : std_logic;
   signal illegal_burst_trns_rd     : std_logic;
   signal unsupported_req           : std_logic;
   signal unexpected_cpl            : std_logic;
   signal header_ep                 : std_logic;
   signal completer_abort           : std_logic;
   signal cpl_timer_timeout_strb    : std_logic_vector(C_AXIREAD_NUM-1 downto 0);
   signal rd_req_index_err          : integer range 0 to C_AXIREAD_NUM-1;
   signal poisoned_req              : std_logic_vector(C_AXIREAD_NUM-1 downto 0);
   signal reset_inv_wr_fifo         : std_logic;
   signal illegal_burst_int_wr      : std_logic;
   signal illegal_burst_int_rd      : std_logic;
   signal illegal_burst_int         : std_logic;
   signal block_trns_lnkdwn         : std_logic;

   -- Master Interface Write Address Port
   signal sig_m_axi_awid            : std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
   signal sig_m_axi_awaddr          : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
   signal sig_m_axi_awlen           : std_logic_vector(7 downto 0);
   signal sig_m_axi_awsize          : std_logic_vector(2 downto 0);
   signal sig_m_axi_awburst         : std_logic_vector(1 downto 0);
   signal sig_m_axi_awregion        : std_logic_vector(3 downto 0);
   signal sig_m_axi_awvalid         : std_logic;
   signal sig_m_axi_awready         : std_logic;
   -- Master Interface Write Data Ports
   signal sig_m_axi_wdata           : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal sig_m_axi_wstrb           : std_logic_vector(C_S_AXI_DATA_WIDTH/8-1 downto 0);
   signal sig_m_axi_wlast           : std_logic;
   signal sig_m_axi_wvalid          : std_logic;
   signal sig_m_axi_wready          : std_logic;
   -- Master Interface Write Response Ports
   signal sig_m_axi_bid             : std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
   signal sig_m_axi_bresp           : std_logic_vector(1 downto 0);
   signal sig_m_axi_bvalid          : std_logic;
   signal sig_m_axi_bready          : std_logic;
   -- Master Interface Read Address Port
   signal sig_m_axi_arid            : std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
   signal sig_m_axi_araddr          : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
   signal sig_m_axi_arlen           : std_logic_vector(7 downto 0);
   signal sig_m_axi_arsize          : std_logic_vector(2 downto 0);
   signal sig_m_axi_arburst         : std_logic_vector(1 downto 0);
   signal sig_m_axi_arregion        : std_logic_vector(3 downto 0);
   signal sig_m_axi_arvalid         : std_logic;
   signal sig_m_axi_arready         : std_logic;
   -- Master Interface Read Data Ports
   signal sig_m_axi_rid             : std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
   signal sig_m_axi_rdata           : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal sig_m_axi_rresp           : std_logic_vector(1 downto 0);
   signal sig_m_axi_rlast           : std_logic;  
   signal sig_m_axi_rvalid          : std_logic;
   signal sig_m_axi_rready          : std_logic;
   signal pend_slv_wr_cnt_sig         : std_logic_vector(1 downto 0);
   signal cmpl_slv_wr_cnt_sig         : std_logic_vector(1 downto 0);
   signal slrdreadycnt, slcplreadycnt : std_logic_vector(3 downto 0);
   signal slrdorderpipeline           : std_logic_vector(3 downto 0);
   signal slcplorderpipeline          : std_logic_vector(3 downto 0);
   signal slrdready, slcplready       : std_logic := '0';
   signal slrdsend, slcplsend         : std_logic;
   type mswrreqpendrecord_array is array (0 to 7) of std_logic_vector(2 downto 0);
   signal mswrreqpendrecord           : mswrreqpendrecord_array;
   type slwrreqpendrecord_array is array (0 to 7) of std_logic_vector(1 downto 0);
   signal slwrreqpendrecord           : slwrreqpendrecord_array;
   signal sig_slv_write_idle          : std_logic;
   signal sig_m_axis_rw_tvalid        : std_logic;
   signal total_length_out            : integer;
   signal tag_pending_for_cpl         : std_logic;
   signal tag_len_active_valid        : std_logic;
   signal sig_pcie_bme                : std_logic;
   signal sig_tlp_str_start           : std_logic;
   signal sig_m_axis_rr_tvalid        : std_logic;
   signal sig_np_cpl_pending          : std_logic_vector(0 to C_AXIREAD_NUM-1);
   signal wr_ptr                      : std_logic;
   signal rd_ptr                      : std_logic;
   signal pu_axi_arsize_d             : std_logic_vector(2 downto 0);
   signal pu_axi_arlen_d              : std_logic_vector(7 downto 0);
   signal sig_s_axi_arready           : std_logic;
   signal read_req_sent_array         : std_logic_vector(0 to C_AXIREAD_NUM-1);
   signal sig_SCT                     : std_logic;

begin

   m_axis_rr_tlast     <= sig_m_axis_rr_tlast;
   m_axis_rw_tvalid    <= sig_m_axis_rw_tvalid;
   m_axis_rr_tvalid    <= sig_m_axis_rr_tvalid;
   s_axi_awvalid_o     <= sig_m_axi_awvalid;
   reqID               <= blk_bus_number & blk_device_number & blk_function_number;
   maxpayloadsize      <= blk_dcontrol(7 downto 5);
   maxreadreqsize      <= blk_dcontrol(14 downto 12);
   reset_inv_wr_fifo   <= not(reset);

   pend_slv_wr_cnt     <= pend_slv_wr_cnt_sig;
   cmpl_slv_wr_cnt     <= cmpl_slv_wr_cnt_sig;
   slv_write_idle      <= sig_slv_write_idle;
   -- Interrupts
   SUR                 <= unsupported_req;
   SUC                 <= unexpected_cpl and reset;--block with reset
   SCT                 <= sig_SCT;
   SEP                 <= header_ep;
   SCA                 <= completer_abort;
   SIB                 <= illegal_burst_int;
   sig_pcie_bme        <= blk_command(2) when C_INCLUDE_RC = 0 else RP_bridge_en; --BME only if EP, use RP_bridge_en to block if RC

   np_cpl_pending      <= '0' when sig_np_cpl_pending = 0 else '1';

   -- wdata FIFO routing glue logic
   wdata1              <= wdata when wr_ptr = '0' else ZEROS;
   wdata2              <= wdata when wr_ptr = '1' else ZEROS;
   wdata_valid1        <= wdata_valid when wr_ptr = '0' else '0';
   wdata_valid2        <= wdata_valid when wr_ptr = '1' else '0';
   wdata_fifo_rd_en1   <= wdata_fifo_rd_en when rd_ptr = '0' else '0';
   wdata_fifo_rd_en2   <= wdata_fifo_rd_en when rd_ptr = '1' else '0';
   wdata_fifo_dout     <= wdata_fifo_dout1 when rd_ptr = '0' else wdata_fifo_dout2;
   wdata_fifo_allmost_full <= wdata_fifo_allmost_full1 when wr_ptr = '0' else wdata_fifo_allmost_full2;
   wdata_fifo_full     <= wdata_fifo_full1 when wr_ptr = '0' else wdata_fifo_full2;
   wdata_fifo_empty    <= wdata_fifo_empty1 when rd_ptr = '0' else wdata_fifo_empty2;

   np_cpl_pending_proc: process (s_axi_aclk)
   begin
      if rising_edge(s_axi_aclk) then
         if reset = '0' then
            sig_np_cpl_pending       <= (others => '0');
            tag_cpl_status_clr_d     <= (others => (others => '1'));
         else
            tag_cpl_status_clr_d     <= tag_cpl_status_clr;
            -- Set the slot in which request is registered
            --if sig_m_axis_rr_tvalid = '1' and m_axis_rr_tready = '1' then
            --   sig_np_cpl_pending(req_active_ptr) <= '1';
            --end if;
            -- Clear the slot for which request is completed
            for j in 0 to C_AXIREAD_NUM-1 loop
               if tag_cpl_status_clr(j)(0 to C_S_AXI_DATA_WIDTH/4-1) = ONES and 
                  tag_cpl_status_clr_d(j)(0 to C_S_AXI_DATA_WIDTH/4-1) /= ONES then 
                  sig_np_cpl_pending(j)  <= '0';
               end if;
            end loop;
            -- Set the slot in which request is registered
            if sig_m_axis_rr_tvalid = '1' and m_axis_rr_tready = '1' then
               sig_np_cpl_pending(req_active_ptr) <= '1';
            end if;
         end if;
      end if;
   end process;

   sct_proc: process (s_axi_aclk)
   begin
      if rising_edge(s_axi_aclk) then
         if reset = '0' then
            req_active_ptr_d    <= 0;
            read_req_sent_array <= (others => '0');
            sig_SCT             <= '0';
         else
            req_active_ptr_d    <= req_active_ptr;
            sig_SCT             <= '0';
            if read_req_sent = '1' then
               read_req_sent_array(req_active_ptr_d) <= '1';
            end if;
            if cpl_timer_timeout_strb /= 0 then
               for i in 0 to C_AXIREAD_NUM-1 loop
                  if cpl_timer_timeout_strb(i) = '1' and read_req_sent_array(i) = '1' then
                     sig_SCT <= '1';
                     read_req_sent_array(i) <= '0';
                  end if;
               end loop;
            end if;
         end if;
      end if;
   end process;

   slave_rd_ordering: process (s_axi_aclk)
   begin
      if rising_edge(s_axi_aclk) then
         if reset = '0' then
            slrdorderpipeline <= (others => '0');
            slrdsend <= '0';
            slrdreadycnt <= "0000";
         else
            if slrdready = '1' then
               slrdreadycnt <= slrdreadycnt + 1;
               slwrreqpendrecord(conv_integer(slrdreadycnt(2 downto 0))) <= pend_slv_wr_cnt_sig;
            end if;
            slrdsend <= '0';
            if slrdreadycnt /= slrdorderpipeline then
               if slwrreqpendrecord(conv_integer(slrdorderpipeline(2 downto 0))) = cmpl_slv_wr_cnt_sig then
                  slrdsend <= '1';
                  slrdorderpipeline <= slrdorderpipeline + 1;
               end if;
            end if;
         end if;
      end if;
   end process;

   slave_cpl_ordering: process (s_axi_aclk)
   begin
      if rising_edge(s_axi_aclk) then
         if reset = '0' then
            slcplorderpipeline <= (others => '0');
            slcplsend <= '0';
            slcplreadycnt <= "0000";
         else
            if slcplready = '1' then
               slcplreadycnt <= slcplreadycnt + 1;
               mswrreqpendrecord(conv_integer(slcplreadycnt(2 downto 0))) <= wrreqpend;
            end if;
            slcplsend <= '0';
            if slcplreadycnt /= slcplorderpipeline then
               if mswrreqpendrecord(conv_integer(slcplorderpipeline(2 downto 0))) = wrreqcomp then
                  slcplsend <= '1';
                  slcplorderpipeline <= slcplorderpipeline + 1;
               end if;
            end if;
         end if;
      end if;
   end process;

   illegal_burst_int_proc :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            illegal_burst_int_wr     <= '0';
            illegal_burst_int_rd     <= '0';
            illegal_burst_int        <= '0';
         else
            if(illegal_burst_wr = '1') then
               illegal_burst_int_wr     <= '1';
            end if;
            if(illegal_burst_rd = '1') then
               illegal_burst_int_rd     <= '1';
            end if;
            if(illegal_burst_int_wr = '1' and illegal_burst_int = '0') then
               illegal_burst_int        <= '1';
               illegal_burst_int_wr     <= '0';
            elsif(illegal_burst_int_rd = '1' and illegal_burst_int = '0') then
               illegal_burst_int        <= '1';
               illegal_burst_int_rd     <= '0';
            else
               illegal_burst_int        <= '0';
            end if;
         end if;
      end if;
   end process;


   comp_axi_slave_write : entity axi_pcie_v2_8_0.axi_slave_write
   generic map(
      --Family Generics
      C_FAMILY                => C_FAMILY,
      C_S_AXI_ID_WIDTH        => C_S_AXI_ID_WIDTH,
      C_S_AXI_ADDR_WIDTH      => C_S_AXI_ADDR_WIDTH,
      C_S_AXI_DATA_WIDTH      => C_S_AXI_DATA_WIDTH,
      C_AXIBAR_NUM            => C_AXIBAR_NUM,
      C_AXIBAR_0              => C_AXIBAR_0,
      C_AXIBAR_HIGHADDR_0     => C_AXIBAR_HIGHADDR_0,
      C_AXIBAR_1              => C_AXIBAR_1,
      C_AXIBAR_HIGHADDR_1     => C_AXIBAR_HIGHADDR_1,
      C_AXIBAR_2              => C_AXIBAR_2,
      C_AXIBAR_HIGHADDR_2     => C_AXIBAR_HIGHADDR_2,
      C_AXIBAR_3              => C_AXIBAR_3,
      C_AXIBAR_HIGHADDR_3     => C_AXIBAR_HIGHADDR_3,
      C_AXIBAR_4              => C_AXIBAR_4,
      C_AXIBAR_HIGHADDR_4     => C_AXIBAR_HIGHADDR_4,
      C_AXIBAR_5              => C_AXIBAR_5,
      C_AXIBAR_HIGHADDR_5     => C_AXIBAR_HIGHADDR_5
   )
   port map(

      -- AXI Global
      s_axi_aclk              => s_axi_aclk,
      reset                   => reset,

      -- AXI Slave Write Address Channel
      s_axi_awid              => sig_m_axi_awid,
      s_axi_awaddr            => sig_m_axi_awaddr,
      s_axi_awregion          => sig_m_axi_awregion,
      s_axi_awlen             => sig_m_axi_awlen,
      s_axi_awsize            => sig_m_axi_awsize,
      s_axi_awburst           => sig_m_axi_awburst,
      s_axi_awvalid           => sig_m_axi_awvalid,
      s_axi_awready           => sig_m_axi_awready,

      -- AXI Slave Write Data Channel
      s_axi_wdata             => sig_m_axi_wdata,
      s_axi_wstrb             => sig_m_axi_wstrb,
      s_axi_wlast             => sig_m_axi_wlast,
      s_axi_wvalid            => sig_m_axi_wvalid,
      s_axi_wready            => sig_m_axi_wready,

      -- AXI Slave Write Response Channel
      s_axi_bid               => sig_m_axi_bid,
      s_axi_bresp             => sig_m_axi_bresp,
      s_axi_bvalid            => sig_m_axi_bvalid,
      s_axi_bready            => sig_m_axi_bready,

      -- Ordering signals
      pend_slv_wr_cnt         => pend_slv_wr_cnt_sig,
      cmpl_slv_wr_cnt         => cmpl_slv_wr_cnt_sig,
      slv_write_idle          => sig_slv_write_idle,
      -- internal interface
      wdata                   => wdata,
      wdata_valid             => wdata_valid,
      first_word_offset       => wfirst_word_offset,
      wdata_fifo_full         => wdata_fifo_full,
      wdata_fifo_allmost_full => wdata_fifo_allmost_full,
      waddr                   => waddr,
      length_bytes            => wlength_bytes,
      wbarhit                 => wbarhit,
      first_BE                => wfirst_BE,
      first_BE_valid          => wfirst_BE_valid,
      last_BE                 => wlast_BE,
      last_BE_valid           => wlast_BE_valid,
      wdata_str_done          => wdata_str_done,
      wdata_str_start         => wdata_str_start,
      illegal_burst           => illegal_burst_wr,
      illegal_burst_trns      => illegal_burst_trns_wr,
      block_trns_lnkdwn       => block_trns_lnkdwn,
      blk_lnk_up              => blk_lnk_up,
      m_axis_rw_tvalid        => sig_m_axis_rw_tvalid,
      pcie_bme                => sig_pcie_bme,
      tlp_str_start           => sig_tlp_str_start,
      wr_ptr                  => wr_ptr,
      rd_ptr                  => rd_ptr
   );

   comp_axi_slave_read : entity axi_pcie_v2_8_0.axi_slave_read
   generic map(
      --Family Generics
      C_FAMILY                      => C_FAMILY,
      C_S_AXI_ID_WIDTH              => C_S_AXI_ID_WIDTH,
      C_S_AXI_ADDR_WIDTH            => C_S_AXI_ADDR_WIDTH,
      C_S_AXI_DATA_WIDTH            => C_S_AXI_DATA_WIDTH,
      C_COMP_TIMEOUT                => C_COMP_TIMEOUT,
      C_USER_CLK_FREQ               => C_USER_CLK_FREQ,
      C_USER_CLK2_DIV2              => C_USER_CLK2_DIV2,
      C_S_AXI_SUPPORTS_NARROW_BURST => C_S_AXI_SUPPORTS_NARROW_BURST,
      C_AXIREAD_NUM                 => C_AXIREAD_NUM,
      C_RD_BUFFER_ADDR_SIZE         => RD_BUFFER_ADDR_SIZE,
      C_AXIBAR_NUM                  => C_AXIBAR_NUM,
      C_AXIBAR_0                    => C_AXIBAR_0,
      C_AXIBAR_HIGHADDR_0           => C_AXIBAR_HIGHADDR_0,
      C_AXIBAR_1                    => C_AXIBAR_1,
      C_AXIBAR_HIGHADDR_1           => C_AXIBAR_HIGHADDR_1,
      C_AXIBAR_2                    => C_AXIBAR_2,
      C_AXIBAR_HIGHADDR_2           => C_AXIBAR_HIGHADDR_2,
      C_AXIBAR_3                    => C_AXIBAR_3,
      C_AXIBAR_HIGHADDR_3           => C_AXIBAR_HIGHADDR_3,
      C_AXIBAR_4                    => C_AXIBAR_4,
      C_AXIBAR_HIGHADDR_4           => C_AXIBAR_HIGHADDR_4,
      C_AXIBAR_5                    => C_AXIBAR_5,
      C_AXIBAR_HIGHADDR_5           => C_AXIBAR_HIGHADDR_5
   )
   port map(
      -- AXI Global
      s_axi_aclk              => s_axi_aclk,
      reset                   => reset,

      -- AXI Slave Read Address Channel
      s_axi_arid              => sig_m_axi_arid,
      s_axi_araddr            => sig_m_axi_araddr,
      s_axi_arregion          => sig_m_axi_arregion,
      s_axi_arlen             => sig_m_axi_arlen,
      s_axi_arsize            => sig_m_axi_arsize,
      s_axi_arburst           => sig_m_axi_arburst,
      s_axi_arvalid           => sig_m_axi_arvalid,
      s_axi_arready           => sig_m_axi_arready,
      pu_axi_arlen            => pu_axi_arlen_d,
      pu_axi_arsize           => pu_axi_arsize_d,

      -- AXI Slave Read Data Channel
      s_axi_rid               => sig_m_axi_rid,
      s_axi_rdata             => sig_m_axi_rdata,
      s_axi_rresp             => sig_m_axi_rresp,
      s_axi_rlast             => sig_m_axi_rlast,
      s_axi_rvalid            => sig_m_axi_rvalid,
      s_axi_rready            => sig_m_axi_rready,
      -- AXIS Read Requester Channel
      m_axis_rr_tid           => m_axis_rr_tid,
      -- Ordering signals
      slave_read_req_p        => slrdready,
      slave_rd_req_go         => slrdsend,
      slave_cmpl_rdy_p        => slcplready,
      slave_cmpl_go           => slcplsend,
      slv_write_idle          => sig_slv_write_idle,
      master_wr_idle          => master_wr_idle,

      -- internal interface
      raddr                   => raddr,
      length_bytes            => rlength_bytes,
      rbarhit                 => rbarhit,
      araddr_2lsbs            => araddr_2lsbs,
      last_BE                 => rlast_BE,
      req_active              => rreq_active,
      req_active_ptr          => req_active_ptr,
      read_req_sent           => read_req_sent,
      tag_cpl_status_clr      => tag_cpl_status_clr,
      rdata_bram_rd_en        => rdata_bram_rd_en,
      rdata_bram_addr         => rdata_bram_addr,
      rdata                   => rdata,
      cpl_index               => cpl_index,
      rdata_str_done          => rdata_str_done,
      rdata_str_start         => rdata_str_start,
      first_word_offset       => first_word_offset,
      illegal_burst           => illegal_burst_rd,
      cpl_timer_timeout_strb  => cpl_timer_timeout_strb,
      unsupported_req         => unsupported_req,
      completer_abort         => completer_abort,
      poisoned_req            => poisoned_req,
      header_ep               => header_ep,
      rd_req_index_err        => rd_req_index_err,
      blk_lnk_up              => blk_lnk_up,
      pcie_bme                => sig_pcie_bme
   );

-- write data path

   comp_write_data_fifo : entity lib_fifo_v1_0_4.sync_fifo_fg
   generic map(
      C_FAMILY             => C_FAMILY,           --    String  := "virtex5"; -- new for FIFO Gen
      C_DCOUNT_WIDTH       => 9,                  -- integer := 8 ;
      C_HAS_DCOUNT         => 0,                  --    integer := 1 ;
      C_HAS_ALMOST_FULL    => 1,                  --    integer := 0 ;
      C_MEMORY_TYPE        => 1,                  --    integer := 0 ;  -- 0 = distributed RAM, 1 = BRAM
      C_READ_DATA_WIDTH    => C_S_AXI_DATA_WIDTH, --    integer := 16;
      C_READ_DEPTH         => 256,                --    integer := 16;
      C_PRELOAD_REGS       => 1,                  --    integer := 0 ;  -- 1 = first word fall through
      C_PRELOAD_LATENCY    => 0,                  --    integer := 1 ;  -- 0 = first word fall through
      C_WRITE_DATA_WIDTH   => C_S_AXI_DATA_WIDTH, --    integer := 16;
      C_WRITE_DEPTH        => 256                 --    integer := 16
      )
   port map(
      Clk                  => s_axi_aclk,         -- in  std_logic;
      Sinit                => reset_inv_wr_fifo,  -- in  std_logic;
      Din                  => wdata1,             -- in  std_logic_vector(C_WRITE_DATA_WIDTH-1 downto 0);
      Wr_en                => wdata_valid1,       -- in  std_logic;
      Rd_en                => wdata_fifo_rd_en1,  -- in  std_logic;
      Dout                 => wdata_fifo_dout1,   -- out std_logic_vector(C_READ_DATA_WIDTH-1 downto 0);
      Almost_full          => wdata_fifo_allmost_full1,-- out std_logic;
      Full                 => wdata_fifo_full1,   -- out std_logic;
      Empty                => wdata_fifo_empty1   -- out std_logic;
      );

   comp_write_data_fifo2 : entity lib_fifo_v1_0_4.sync_fifo_fg
   generic map(
      C_FAMILY             => C_FAMILY,           --    String  := "virtex5"; -- new for FIFO Gen
      C_DCOUNT_WIDTH       => 9,                  -- integer := 8 ;
      C_HAS_DCOUNT         => 0,                  --    integer := 1 ;
      C_HAS_ALMOST_FULL    => 1,                  --    integer := 0 ;
      C_MEMORY_TYPE        => 1,                  --    integer := 0 ;  -- 0 = distributed RAM, 1 = BRAM
      C_READ_DATA_WIDTH    => C_S_AXI_DATA_WIDTH, --    integer := 16;
      C_READ_DEPTH         => 256,                --    integer := 16;
      C_PRELOAD_REGS       => 1,                  --    integer := 0 ;  -- 1 = first word fall through
      C_PRELOAD_LATENCY    => 0,                  --    integer := 1 ;  -- 0 = first word fall through
      C_WRITE_DATA_WIDTH   => C_S_AXI_DATA_WIDTH, --    integer := 16;
      C_WRITE_DEPTH        => 256                 --    integer := 16
      )
   port map(
      Clk                  => s_axi_aclk,         -- in  std_logic;
      Sinit                => reset_inv_wr_fifo,  -- in  std_logic;
      Din                  => wdata2,             -- in  std_logic_vector(C_WRITE_DATA_WIDTH-1 downto 0);
      Wr_en                => wdata_valid2,       -- in  std_logic;
      Rd_en                => wdata_fifo_rd_en2,  -- in  std_logic;
      Dout                 => wdata_fifo_dout2,   -- out std_logic_vector(C_READ_DATA_WIDTH-1 downto 0);
      Almost_full          => wdata_fifo_allmost_full2,-- out std_logic;
      Full                 => wdata_fifo_full2,   -- out std_logic;
      Empty                => wdata_fifo_empty2   -- out std_logic;
      );

-- read data path

   comp_read_data_bram : entity lib_bmg_v1_0_4.blk_mem_gen_wrapper
   generic map(
      C_FAMILY             => C_FAMILY,
      C_BYTE_SIZE          => 8,   -- 8 or 9
      C_WRITE_WIDTH_A      => C_S_AXI_DATA_WIDTH, --: integer := 32;  -- 1 to 1152
      C_READ_WIDTH_A       => C_S_AXI_DATA_WIDTH, --: integer := 32;  -- 1 to 1152
      C_WRITE_DEPTH_A      => RD_BUFFER_DEPTH, --: integer := 64;  -- 2 to 9011200
      C_READ_DEPTH_A       => RD_BUFFER_DEPTH, --: integer := 64;  -- 2 to 9011200
      C_ADDRA_WIDTH        => RD_BUFFER_ADDR_SIZE, --: integer := 6;   -- 1 to 24
      C_USE_BYTE_WEA       => 1,   -- 0, 1
      C_WEA_WIDTH          => C_S_AXI_DATA_WIDTH/8,   -- 1 to 128
      C_WRITE_WIDTH_B      => C_S_AXI_DATA_WIDTH, --: integer := 32;  -- 1 to 1152
      C_READ_WIDTH_B       => C_S_AXI_DATA_WIDTH, --: integer := 32;  -- 1 to 1152
      C_WRITE_DEPTH_B      => RD_BUFFER_DEPTH, --: integer := 64;  -- 2 to 9011200
      C_READ_DEPTH_B       => RD_BUFFER_DEPTH, --: integer := 64;  -- 2 to 9011200
      C_ADDRB_WIDTH        => RD_BUFFER_ADDR_SIZE   --: integer := 6;   -- 1 to 24
      )
   port map(
      clka                 => s_axi_aclk, --: in  std_logic;
      dina                 => data_stream_out, --: in  std_logic_vector(c_write_width_a-1 downto 0) := (OTHERS => '0');
      addra                => cpl_buffer_addr, --: in  std_logic_vector(c_addra_width-1   downto 0);
      ena                  => '1', --: in  std_logic := '1';
      wea                  => wea, --: in  std_logic_vector(c_wea_width-1     downto 0) := (OTHERS => '0');

      clkb                 => s_axi_aclk, --: in  std_logic := '0';
      dinb                 => (OTHERS => '0'), --: in  std_logic_vector(c_write_width_b-1 downto 0) := (OTHERS => '0');
      addrb                => rdata_bram_addr, --: in  std_logic_vector(c_addrb_width-1   downto 0) := (OTHERS => '0');
      enb                  => rdata_bram_rd_en, --: in  std_logic := '1';
      web                  => (OTHERS => '0'), --: in  std_logic_vector(c_web_width-1     downto 0) := (OTHERS => '0');
      doutb                => rdata --: out std_logic_vector(c_read_width_b-1  downto 0);
      );


-- write streaming interface
   comp_slave_write_req_tlp : entity axi_pcie_v2_8_0.slave_write_req_tlp
   generic map(
      --Family Generics
      C_FAMILY                => C_FAMILY,
      C_S_AXI_ADDR_WIDTH      => C_S_AXI_ADDR_WIDTH,
      C_S_AXI_DATA_WIDTH      => C_S_AXI_DATA_WIDTH,
      C_M_AXIS_DATA_WIDTH     => C_M_AXIS_DATA_WIDTH,
      C_AXIBAR_NUM            => C_AXIBAR_NUM,
      C_AXIBAR_0              => C_AXIBAR_0,
      C_AXIBAR_HIGHADDR_0     => C_AXIBAR_HIGHADDR_0,
      C_AXIBAR_1              => C_AXIBAR_1,
      C_AXIBAR_HIGHADDR_1     => C_AXIBAR_HIGHADDR_1,
      C_AXIBAR_2              => C_AXIBAR_2,
      C_AXIBAR_HIGHADDR_2     => C_AXIBAR_HIGHADDR_2,
      C_AXIBAR_3              => C_AXIBAR_3,
      C_AXIBAR_HIGHADDR_3     => C_AXIBAR_HIGHADDR_3,
      C_AXIBAR_4              => C_AXIBAR_4,
      C_AXIBAR_HIGHADDR_4     => C_AXIBAR_HIGHADDR_4,
      C_AXIBAR_5              => C_AXIBAR_5,
      C_AXIBAR_HIGHADDR_5     => C_AXIBAR_HIGHADDR_5,
      C_AXIBAR_AS_0           => C_AXIBAR_AS_0,
      C_AXIBAR_AS_1           => C_AXIBAR_AS_1,
      C_AXIBAR_AS_2           => C_AXIBAR_AS_2,
      C_AXIBAR_AS_3           => C_AXIBAR_AS_3,
      C_AXIBAR_AS_4           => C_AXIBAR_AS_4,
      C_AXIBAR_AS_5           => C_AXIBAR_AS_5
   )
   port map(

      -- AXI Global
      aclk                    => s_axi_aclk,
      reset                   => reset,

      -- internal interface
      maxpayloadsize          => maxpayloadsize,
      waddr                   => waddr,
      length_bytes            => wlength_bytes,
      wbarhit                 => wbarhit,
      wdata                   => wdata_fifo_dout,
      first_BE                => wfirst_BE,
      first_BE_valid          => wfirst_BE_valid,
      last_BE                 => wlast_BE,
      last_BE_valid           => wlast_BE_valid,
      first_word_offset       => wfirst_word_offset,
      wdata_fifo_rd_en        => wdata_fifo_rd_en,
      wdata_fifo_empty        => wdata_fifo_empty,
      reqID                   => reqID,
      wdata_str_done          => wdata_str_done,
      wdata_str_start         => wdata_str_start,
      illegal_burst_trns      => illegal_burst_trns_wr,
      block_trns_lnkdwn       => block_trns_lnkdwn,
      blk_lnk_up              => blk_lnk_up,
      pcie_bme                => sig_pcie_bme,
      tlp_str_start           => sig_tlp_str_start,

      -- AXI2PCIE translation vectors
      axibar2pciebar0         => axibar2pciebar0,
      axibar2pciebar1         => axibar2pciebar1,
      axibar2pciebar2         => axibar2pciebar2,
      axibar2pciebar3         => axibar2pciebar3,
      axibar2pciebar4         => axibar2pciebar4,
      axibar2pciebar5         => axibar2pciebar5,

      -- AXI Streaming interface
      m_axis_rw_tvalid        => sig_m_axis_rw_tvalid,
      m_axis_rw_tready        => m_axis_rw_tready,
      m_axis_rw_tdata         => m_axis_rw_tdata,
      m_axis_rw_tstrb         => m_axis_rw_tstrb,
      m_axis_rw_tlast         => m_axis_rw_tlast
   );


-- read request streaming interface
   comp_slave_read_req_tlp : entity axi_pcie_v2_8_0.slave_read_req_tlp
   generic map(
      --Family Generics
      C_FAMILY                => C_FAMILY,
      C_S_AXI_ID_WIDTH        => C_S_AXI_ID_WIDTH,
      C_S_AXI_ADDR_WIDTH      => C_S_AXI_ADDR_WIDTH,
      C_S_AXI_DATA_WIDTH      => C_S_AXI_DATA_WIDTH,
      C_M_AXIS_DATA_WIDTH     => C_M_AXIS_DATA_WIDTH,
      C_AXIBAR_NUM            => C_AXIBAR_NUM,
      C_AXIBAR_0              => C_AXIBAR_0,
      C_AXIBAR_HIGHADDR_0     => C_AXIBAR_HIGHADDR_0,
      C_AXIBAR_1              => C_AXIBAR_1,
      C_AXIBAR_HIGHADDR_1     => C_AXIBAR_HIGHADDR_1,
      C_AXIBAR_2              => C_AXIBAR_2,
      C_AXIBAR_HIGHADDR_2     => C_AXIBAR_HIGHADDR_2,
      C_AXIBAR_3              => C_AXIBAR_3,
      C_AXIBAR_HIGHADDR_3     => C_AXIBAR_HIGHADDR_3,
      C_AXIBAR_4              => C_AXIBAR_4,
      C_AXIBAR_HIGHADDR_4     => C_AXIBAR_HIGHADDR_4,
      C_AXIBAR_5              => C_AXIBAR_5,
      C_AXIBAR_HIGHADDR_5     => C_AXIBAR_HIGHADDR_5,
      C_AXIBAR_AS_0           => C_AXIBAR_AS_0,
      C_AXIBAR_AS_1           => C_AXIBAR_AS_1,
      C_AXIBAR_AS_2           => C_AXIBAR_AS_2,
      C_AXIBAR_AS_3           => C_AXIBAR_AS_3,
      C_AXIBAR_AS_4           => C_AXIBAR_AS_4,
      C_AXIBAR_AS_5           => C_AXIBAR_AS_5,
      C_EP_LINK_PARTNER_RCB   => C_EP_LINK_PARTNER_RCB
   )
   port map(

      -- AXI Global
      aclk                    => s_axi_aclk,
      reset                   => reset,

      -- internal interface
      maxreadreqsize          => maxreadreqsize,
      raddr                   => raddr,
      length_bytes            => rlength_bytes,
      rbarhit                 => rbarhit,
      araddr_2lsbs            => araddr_2lsbs,
      last_BE                 => rlast_BE,
      reqID                   => reqID,
      req_active              => rreq_active,
      read_req_sent           => read_req_sent,
      tag_sent                => tag_sent,
      length_sent             => length_sent,
      illegal_burst           => illegal_burst_rd,
      illegal_burst_trns      => illegal_burst_trns_rd,
      total_length_out        => total_length_out,
      pcie_bme                => sig_pcie_bme,
      blk_lnk_up              => blk_lnk_up,
      tag_pending_for_cpl     => tag_pending_for_cpl,

      -- AXI2PCIE translation vectors
      axibar2pciebar0         => axibar2pciebar0,
      axibar2pciebar1         => axibar2pciebar1,
      axibar2pciebar2         => axibar2pciebar2,
      axibar2pciebar3         => axibar2pciebar3,
      axibar2pciebar4         => axibar2pciebar4,
      axibar2pciebar5         => axibar2pciebar5,

      -- AXI Streaming interface
      m_axis_rr_tvalid        => sig_m_axis_rr_tvalid,
      m_axis_rr_tready        => m_axis_rr_tready,
      m_axis_rr_tdata         => m_axis_rr_tdata,
      m_axis_rr_tstrb         => m_axis_rr_tstrb,
      m_axis_rr_tlast         => sig_m_axis_rr_tlast,
      config_gen_req          => config_gen_req
   );


-- read completions streaming interface
   comp_slave_read_cpl_tlp : entity axi_pcie_v2_8_0.slave_read_cpl_tlp
   generic map(
      --Family Generics
      C_FAMILY                => C_FAMILY,
      C_AXIREAD_NUM           => C_AXIREAD_NUM,
      C_RD_BUFFER_ADDR_SIZE   => RD_BUFFER_ADDR_SIZE,
      C_M_AXIS_DATA_WIDTH     => C_M_AXIS_DATA_WIDTH
   )
   port map(
      -- AXI Global
      aclk                    => s_axi_aclk,
      reset                   => reset,

      -- internal interface
      maxreadreqsize          => maxreadreqsize,--: in  std_logic_vector(2 downto 0);
      m_axis_rr_tlast         => sig_m_axis_rr_tlast,
      m_axis_rr_tready        => m_axis_rr_tready,
      read_req_sent           => read_req_sent,
      tag_sent                => tag_sent,--: in  std_logic_vector(7 downto 0);
      length_sent             => length_sent,--: in  std_logic_vector(9 downto 0);
      rreq_active             => rreq_active,--: in  std_logic;
      req_active_ptr          => req_active_ptr,--: in  integer range 0 to 7;
      data_stream_out         => data_stream_out,--: out std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
      read_data_bram_we       => wea,--: out std_logic_vector(C_S_AXI_DATA_WIDTH/8-1 downto 0);
      cpl_buffer_addr         => cpl_buffer_addr,--: out std_logic_vector(10 downto 0);
      cpl_data_str_done       => cpl_data_str_done,--: out std_logic;
      tag_in_cpl              => tag_in_cpl,--: out std_logic_vector(7 downto 0);
      tag_cpl_status_clr      => tag_cpl_status_clr,
      cpl_index               => cpl_index,
      rdata_str_done          => rdata_str_done,
      rdata_str_start         => rdata_str_start,
      first_word_offset       => first_word_offset,
      unsupported_req         => unsupported_req,
      completer_abort         => completer_abort,
      poisoned_req            => poisoned_req,
      unexpected_cpl          => unexpected_cpl,
      cpl_timer_timeout_strb  => cpl_timer_timeout_strb,
      rd_req_index_err        => rd_req_index_err,
      blk_lnk_up              => blk_lnk_up,
      header_ep               => header_ep,
      reqID                   => reqID,
      illegal_burst_trns      => illegal_burst_trns_rd,
      total_length_out        => total_length_out,
      tag_pending_for_cpl     => tag_pending_for_cpl,
      tag_len_active_valid_o  => tag_len_active_valid,

      -- AXI Streaming interface
      s_axis_rc_tdata         => s_axis_rc_tdata,--: in  std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
      s_axis_rc_tstrb         => s_axis_rc_tstrb,--: in  std_logic_vector(C_M_AXIS_DATA_WIDTH/8-1 downto 0);
      s_axis_rc_tlast         => s_axis_rc_tlast,--: in  std_logic;
      s_axis_rc_tvalid        => s_axis_rc_tvalid,--: in  std_logic;
      s_axis_rc_tready        => s_axis_rc_tready--: out std_logic
   );



gen_axi_upsizer : if C_S_AXI_SUPPORTS_NARROW_BURST = 1 generate



-- axi_upsizer implemented
comp_axi_upsizer : axi_pcie_v2_8_0_axi_upsizer
    generic map(
        C_FAMILY                    => "rtl",            --: string  := "none";
        C_AXI_ID_WIDTH              => C_S_AXI_ID_WIDTH,    --: integer := 4;
        C_AXI_ADDR_WIDTH            => C_S_AXI_ADDR_WIDTH,  --: integer := 32;
        C_S_AXI_DATA_WIDTH          => C_S_AXI_DATA_WIDTH,  --: integer := 32;
        C_M_AXI_DATA_WIDTH          => C_S_AXI_DATA_WIDTH,  --: integer := 64;
        C_AXI_SUPPORTS_WRITE        => 1,                   --: integer := 1;
        C_AXI_SUPPORTS_READ         => 1,                   --: integer := 1;
        C_S_AXI_R_REGISTER          => 0,                -- CR # 649227
        C_M_AXI_R_REGISTER          => 0,                -- CR # 649227
        C_PACKING_LEVEL             => 2,                   --: integer := 1;
        C_SUPPORT_BURSTS            => 1,                   --: integer := 1;
        C_SINGLE_THREAD             => 0                    --: integer := 1
    )
    port map(
   -- Globals
        ARESETN                     => reset,              --:in  std_logic;
        ACLK                        => s_axi_aclk,         --:in  std_logic;
   -- Slave Interface Write Address Ports
        S_AXI_AWID                  => s_axi_awid,         --:in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
        S_AXI_AWADDR                => s_axi_awaddr,       --:in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWLEN                 => s_axi_awlen,        --:in  std_logic_vector(7 downto 0);
        S_AXI_AWSIZE                => s_axi_awsize,       --:in  std_logic_vector(2 downto 0);
        S_AXI_AWBURST               => s_axi_awburst,      --:in  std_logic_vector(1 downto 0);
        S_AXI_AWLOCK                => "00",               --:in  std_logic_vector(1 downto 0);
        S_AXI_AWCACHE               => "0000",             --:in  std_logic_vector(3 downto 0);
        S_AXI_AWPROT                => "000",              --:in  std_logic_vector(2 downto 0);
        S_AXI_AWREGION              => s_axi_awregion,     --:in  std_logic_vector(3 downto 0);
        S_AXI_AWQOS                 => "0000",             --:in  std_logic_vector(3 downto 0);
        S_AXI_AWUSER                => "0",                --:in  std_logic_vector(C_AXI_AWUSER_WIDTH-1 downto 0);
        S_AXI_AWVALID               => s_axi_awvalid,      --:in  std_logic;
        S_AXI_AWREADY               => s_axi_awready,      --:out std_logic;
   -- Slave Interface Write Data Ports
        S_AXI_WDATA                 => s_axi_wdata,        --:in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB                 => s_axi_wstrb,        --:in  std_logic_vector(C_S_AXI_DATA_WIDTH/8-1 downto 0);
        S_AXI_WLAST                 => s_axi_wlast,        --:in  std_logic;
        S_AXI_WUSER                 => "0",                --:in  std_logic_vector(C_AXI_WUSER_WIDTH-1 downto 0);
        S_AXI_WVALID                => s_axi_wvalid,       --:in  std_logic;
        S_AXI_WREADY                => s_axi_wready,       --:out std_logic;
   -- Slave Interface Write Response Ports
        S_AXI_BID                   => s_axi_bid,          --:out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
        S_AXI_BRESP                 => s_axi_bresp,        --:out std_logic_vector(1 downto 0);
        S_AXI_BVALID                => s_axi_bvalid,       --:out std_logic;
        S_AXI_BREADY                => s_axi_bready,       --:in  std_logic;
   -- Slave Interface Read Address Ports
        S_AXI_ARID                  => s_axi_arid,         --:in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
        S_AXI_ARADDR                => s_axi_araddr,       --:in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARLEN                 => s_axi_arlen,        --:in  std_logic_vector(7 downto 0);
        S_AXI_ARSIZE                => s_axi_arsize,       --:in  std_logic_vector(2 downto 0);
        S_AXI_ARBURST               => s_axi_arburst,      --:in  std_logic_vector(1 downto 0);
        S_AXI_ARLOCK                => "00",               --:in  std_logic_vector(1 downto 0);
        S_AXI_ARCACHE               => "0000",             --:in  std_logic_vector(3 downto 0);
        S_AXI_ARPROT                => "000",              --:in  std_logic_vector(2 downto 0);
        S_AXI_ARREGION              => s_axi_arregion,     --:in  std_logic_vector(3 downto 0);
        S_AXI_ARQOS                 => "0000",             --:in  std_logic_vector(3 downto 0);
        S_AXI_ARUSER                => "0",                --:in  std_logic_vector(C_AXI_ARUSER_WIDTH-1 downto 0);
        S_AXI_ARVALID               => s_axi_arvalid,      --:in  std_logic;
        S_AXI_ARREADY               => sig_s_axi_arready,  --:out std_logic;
   -- Slave Interface Read Data Ports
        S_AXI_RID                   => s_axi_rid,          --:out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
        S_AXI_RDATA                 => s_axi_rdata,        --:out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP                 => s_axi_rresp,        --:out std_logic_vector(1 downto 0);
        S_AXI_RLAST                 => s_axi_rlast,        --:out std_logic;
        S_AXI_RVALID                => s_axi_rvalid,       --:out std_logic;
        S_AXI_RREADY                => s_axi_rready,       --:in  std_logic;
   -- Master Interface Write Address Port
        M_AXI_AWID                  => sig_m_axi_awid,     --:out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
        M_AXI_AWADDR                => sig_m_axi_awaddr,   --:out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
        M_AXI_AWLEN                 => sig_m_axi_awlen,    --:out std_logic_vector(7 downto 0);
        M_AXI_AWSIZE                => sig_m_axi_awsize,   --:out std_logic_vector(2 downto 0);
        M_AXI_AWBURST               => sig_m_axi_awburst,  --:out std_logic_vector(1 downto 0);
        M_AXI_AWREGION              => sig_m_axi_awregion, --:out std_logic_vector(3 downto 0);
        M_AXI_AWVALID               => sig_m_axi_awvalid,  --:out std_logic;
        M_AXI_AWREADY               => sig_m_axi_awready,  --:in  std_logic;
   -- Master Interface Write Data Ports
        M_AXI_WDATA                 => sig_m_axi_wdata,    --:out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
        M_AXI_WSTRB                 => sig_m_axi_wstrb,    --:out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
        M_AXI_WLAST                 => sig_m_axi_wlast,    --:out std_logic;
        M_AXI_WVALID                => sig_m_axi_wvalid,   --:out std_logic;
        M_AXI_WREADY                => sig_m_axi_wready,   --:in  std_logic;
   -- Master Interface Write Response Ports
        M_AXI_BID                   => sig_m_axi_bid,      --:in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
        M_AXI_BRESP                 => sig_m_axi_bresp,    --:in  std_logic_vector(1 downto 0);
        M_AXI_BUSER                 => "0",                --:in  std_logic_vector(C_AXI_BUSER_WIDTH-1 downto 0);
        M_AXI_BVALID                => sig_m_axi_bvalid,   --:in  std_logic;
        M_AXI_BREADY                => sig_m_axi_bready,   --:out std_logic;
   -- Master Interface Read Address Port
        M_AXI_ARID                  => sig_m_axi_arid,     --:out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
        M_AXI_ARADDR                => sig_m_axi_araddr,   --:out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
        M_AXI_ARLEN                 => sig_m_axi_arlen,    --:out std_logic_vector(7 downto 0);
        M_AXI_ARSIZE                => sig_m_axi_arsize,   --:out std_logic_vector(2 downto 0);
        M_AXI_ARBURST               => sig_m_axi_arburst,  --:out std_logic_vector(1 downto 0);
        M_AXI_ARREGION              => sig_m_axi_arregion, --:out std_logic_vector(3 downto 0);
        M_AXI_ARVALID               => sig_m_axi_arvalid,  --:out std_logic;
        M_AXI_ARREADY               => sig_m_axi_arready,  --:in  std_logic;
   -- Master Interface Read Data Ports
        M_AXI_RID                   => sig_m_axi_rid,      --:in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
        M_AXI_RDATA                 => sig_m_axi_rdata,    --:in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
        M_AXI_RRESP                 => sig_m_axi_rresp,    --:in  std_logic_vector(1 downto 0);
        M_AXI_RLAST                 => sig_m_axi_rlast,    --:in  std_logic;
        M_AXI_RUSER                 => "0",                --:in  std_logic_vector(C_AXI_RUSER_WIDTH-1 downto 0);
        M_AXI_RVALID                => sig_m_axi_rvalid,   --:in  std_logic;
        M_AXI_RREADY                => sig_m_axi_rready    --:out std_logic
   );

   s_axi_arready  <= sig_s_axi_arready;
   pu_axi_arsize_len_sync : process (s_axi_aclk)
   begin
      if (rising_edge(s_axi_aclk)) then
         if reset = '0' then
            pu_axi_arlen_d  <= (others => '0');
            pu_axi_arsize_d <= (others => '0');
         elsif s_axi_arvalid = '1' and sig_s_axi_arready = '1' then
            pu_axi_arlen_d  <= s_axi_arlen;
            pu_axi_arsize_d <= s_axi_arsize;
         end if;
      end if;
   end process;
end generate;

gen_no_axi_upsizer : if C_S_AXI_SUPPORTS_NARROW_BURST = 0 generate

-- no axi_upsizer implemented

   -- Slave Interface Write Address Ports
   sig_m_axi_awid                  <= s_axi_awid;
   sig_m_axi_awaddr                <= s_axi_awaddr;
   sig_m_axi_awlen                 <= s_axi_awlen;
   sig_m_axi_awsize                <= s_axi_awsize;
   sig_m_axi_awburst               <= s_axi_awburst;
   sig_m_axi_awregion              <= s_axi_awregion;
   sig_m_axi_awvalid               <= s_axi_awvalid;
   s_axi_awready                   <= sig_m_axi_awready;
   -- Slave Interface Write Data Ports
   sig_m_axi_wdata                 <= s_axi_wdata;
   sig_m_axi_wstrb                 <= s_axi_wstrb;
   sig_m_axi_wlast                 <= s_axi_wlast;
   sig_m_axi_wvalid                <= s_axi_wvalid;
   s_axi_wready                    <= sig_m_axi_wready;
   -- Slave Interface Write Response Ports
   s_axi_bid                       <= sig_m_axi_bid;
   s_axi_bresp                     <= sig_m_axi_bresp;
   s_axi_bvalid                    <= sig_m_axi_bvalid;
   sig_m_axi_bready                <= s_axi_bready;
   -- Slave Interface Read Address Ports
   sig_m_axi_arid                  <= s_axi_arid;
   sig_m_axi_araddr                <= s_axi_araddr;
   sig_m_axi_arlen                 <= s_axi_arlen;
   sig_m_axi_arsize                <= s_axi_arsize;
   sig_m_axi_arburst               <= s_axi_arburst;
   sig_m_axi_arregion              <= s_axi_arregion;
   sig_m_axi_arvalid               <= s_axi_arvalid;
   s_axi_arready                   <= sig_m_axi_arready;
   -- Slave Interface Read Data Ports
   s_axi_rid                       <= sig_m_axi_rid;
   s_axi_rdata                     <= sig_m_axi_rdata;
   s_axi_rresp                     <= sig_m_axi_rresp;
   s_axi_rlast                     <= sig_m_axi_rlast;
   s_axi_rvalid                    <= sig_m_axi_rvalid;
   sig_m_axi_rready                <= s_axi_rready;
   -- pre-upsizer signals
   pu_axi_arlen_d                  <= s_axi_arlen;
   pu_axi_arsize_d                 <= s_axi_arsize;

end generate;


end architecture;
