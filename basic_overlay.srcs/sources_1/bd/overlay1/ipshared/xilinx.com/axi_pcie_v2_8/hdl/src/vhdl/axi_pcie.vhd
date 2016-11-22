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
-- Filename:        axi_pcie.vhd
--
-- Description:     
--                  
-- This VHDL file is the HDL design file for the AXI PCIe bridge. 
--                   
-- Comments:
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--                axi_pcie.vhd
--
-------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;
--use ieee.std_logic_arith.conv_integer;
use ieee.std_logic_arith.conv_std_logic_vector;

library axi_pcie_v2_8_0;
use axi_pcie_v2_8_0.all;

library lib_pkg_v1_0_2;
use lib_pkg_v1_0_2.lib_pkg.all;

--------------------------------------------------------------------------------
--Notes
--------------------------------------------------------------------------------



entity axi_pcie is
   generic(
      --Family Generics
      C_PCIE_BLK_LOCN               : string  := "0";
      C_XLNX_REF_BOARD              : string  := "NONE";
      C_FAMILY                      : string  := "virtex7";
      C_DEVICE                      : string  := "xc7k325t";
      C_SPEED                       : string  := "-1";
      C_INSTANCE                    : string  := "AXI_PCIe";
      C_S_AXI_ID_WIDTH              : integer := 4;
      -- C_M_AXI_THREAD_ID_WIDTH       : integer := 4;
      C_S_AXI_ADDR_WIDTH            : integer := 32;
      C_S_AXI_DATA_WIDTH            : integer := 32;
      C_M_AXI_ADDR_WIDTH            : integer := 32;
      C_M_AXI_DATA_WIDTH            : integer := 32;
    
      --PCIe Generics
      C_NO_OF_LANES                 : integer := 1;
      C_MAX_LINK_SPEED              : integer := 0;
                             -- 0 = 2.5 GT/s, 1 = 5.0 GT/s
      C_PCIE_USE_MODE               : string  := "1.0";
      C_DEVICE_ID                   : std_logic_vector := x"0000";
      C_VENDOR_ID                   : std_logic_vector := x"0000";
      C_CLASS_CODE                  : std_logic_vector := x"000000";
      C_REF_CLK_FREQ                : integer := 0;
                             --0 - 100 MHz, 1 - 125 MHz, 2 - 250 MHz
      PCIE_EXT_CLK                  : string:= "FALSE";
      EXT_PIPE_INTERFACE            : string:= "FALSE";
      PCIE_EXT_GT_COMMON            : string:= "FALSE";
      EXT_CH_GT_DRP                 : string:= "FALSE";
      SHARED_LOGIC_IN_CORE          : string:= "FALSE";
      TRANSCEIVER_CTRL_STATUS_PORTS : string:= "FALSE";
      AXI_ACLK_LOOPBACK             : string:= "FALSE";
      NO_SLV_ERR                    : string:= "FALSE";
      C_RP_BAR_HIDE                 : string:= "FALSE";
      C_TRN_NP_FC                   : string:= "FALSE";

      C_REV_ID                      : std_logic_vector := x"00";
      C_SUBSYSTEM_ID                : std_logic_vector := x"0000";
      C_SUBSYSTEM_VENDOR_ID         : std_logic_vector := x"0000";
      C_PCIE_CAP_SLOT_IMPLEMENTED   : integer := 0;
      C_SLOT_CLOCK_CONFIG           : string:= "TRUE";
      C_MSI_DECODE_ENABLE           : string:= "TRUE";
      C_NUM_MSI_REQ                 : integer := 0;
      C_INTERRUPT_PIN               : integer := 0;
      C_COMP_TIMEOUT                : integer := 0;
      C_INCLUDE_RC                  : integer := 0;
      C_S_AXI_SUPPORTS_NARROW_BURST : integer := 1;
      C_EP_LINK_PARTNER_RCB         : integer := 0;
      C_INCLUDE_BAROFFSET_REG       : integer := 1;
      C_BASEADDR                    : std_logic_vector := x"FFFF_FFFF";
      C_HIGHADDR                    : std_logic_vector := x"0000_0000";
      C_AXIBAR_NUM                  : integer := 6;
      C_AXIBAR2PCIEBAR_0            : std_logic_vector :=x"00000000";
      C_AXIBAR2PCIEBAR_1            : std_logic_vector :=x"00000000";
      C_AXIBAR2PCIEBAR_2            : std_logic_vector :=x"00000000";
      C_AXIBAR2PCIEBAR_3            : std_logic_vector :=x"00000000";
      C_AXIBAR2PCIEBAR_4            : std_logic_vector :=x"00000000";
      C_AXIBAR2PCIEBAR_5            : std_logic_vector :=x"00000000";
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
      C_AXIBAR_HIGHADDR_5           : std_logic_vector := x"0000_0000";
      C_PCIEBAR_NUM                 : integer := 3;
      C_PCIEBAR_AS                  : integer := 1;
      C_PCIEBAR_LEN_0               : integer := 16;
      C_PCIEBAR2AXIBAR_0            : std_logic_vector(0 to 31) :=x"00000000";
      C_PCIEBAR2AXIBAR_0_SEC        : integer := 1;
      C_PCIEBAR_LEN_1               : integer := 16;
      C_PCIEBAR2AXIBAR_1            : std_logic_vector(0 to 31) :=x"00000000";
      C_PCIEBAR2AXIBAR_1_SEC        : integer := 1;
      C_PCIEBAR_LEN_2               : integer := 16;
      C_PCIEBAR2AXIBAR_2            : std_logic_vector(0 to 31) :=x"00000000";
      C_PCIEBAR2AXIBAR_2_SEC        : integer := 1
   );
   port(
      -- AXI Global
      axi_aclk                : in  std_logic; -- AXI clock
      axi_aresetn             : in  std_logic; -- AXI active low synchronous reset
      axi_aclk_out            : out std_logic; -- PCIe clock for AXI clock
      axi_ctl_aclk            : in  std_logic; -- AXI LITE clock
      axi_ctl_aclk_out        : out std_logic; -- PCIe clock for AXI LITE clock
      mmcm_lock               : out std_logic := '1'; -- MMCM lock signal output
      interrupt_out           : out std_logic; -- active high interrupt out
      INTX_MSI_Request        : in  std_logic; -- Legacy interrupt/initiate MSI (Endpoint only)
      INTX_MSI_Grant          : out std_logic; -- Legacy interrupt/MSI Grant signal (Endpoint only)
      MSI_enable              : out std_logic; -- 1 = MSI, 0 = INTX
      MSI_Vector_Num          : in  std_logic_vector(4 downto 0);
      MSI_Vector_Width        : out std_logic_vector(2 downto 0);

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

      -- AXI Master Read Data Channel
      m_axi_rdata             : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      m_axi_rresp             : in  std_logic_vector(1 downto 0);
      m_axi_rlast             : in  std_logic;
      m_axi_rvalid            : in  std_logic;
      m_axi_rready            : out std_logic;

      -- PCI Express (pci_exp) Interface
      -- Tx
      pci_exp_txp             : out std_logic_vector(C_NO_OF_LANES-1 downto 0);
      pci_exp_txn             : out std_logic_vector(C_NO_OF_LANES-1 downto 0);
      -- Rx
      pci_exp_rxp             : in  std_logic_vector(C_NO_OF_LANES-1 downto 0);
      pci_exp_rxn             : in  std_logic_vector(C_NO_OF_LANES-1 downto 0);
      REFCLK                  : in  std_logic;
      

      -- AXI -Lite Interface - CFG Block
      s_axi_ctl_awaddr        : in  std_logic_vector(31 downto 0); -- AXI Lite Write address
      s_axi_ctl_awvalid       : in  std_logic;                     -- AXI Lite Write Address Valid
      s_axi_ctl_awready       : out std_logic;                     -- AXI Lite Write Address Core ready
      s_axi_ctl_wdata         : in  std_logic_vector(31 downto 0); -- AXI Lite Write Data
      s_axi_ctl_wstrb         : in  std_logic_vector(3 downto 0);  -- AXI Lite Write Data strobe
      s_axi_ctl_wvalid        : in  std_logic;                     -- AXI Lite Write data Valid
      s_axi_ctl_wready        : out std_logic;                     -- AXI Lite Write Data Core ready
      s_axi_ctl_bresp         : out std_logic_vector(1 downto 0);  -- AXI Lite Write Data strobe
      s_axi_ctl_bvalid        : out std_logic;                     -- AXI Lite Write data Valid
      s_axi_ctl_bready        : in  std_logic;                     -- AXI Lite Write Data Core ready

      s_axi_ctl_araddr        : in  std_logic_vector(31 downto 0); -- AXI Lite Read address
      s_axi_ctl_arvalid       : in  std_logic;                     -- AXI Lite Read Address Valid
      s_axi_ctl_arready       : out std_logic;                     -- AXI Lite Read Address Core ready
      s_axi_ctl_rdata         : out std_logic_vector(31 downto 0); -- AXI Lite Read Data
      s_axi_ctl_rresp         : out std_logic_vector(1 downto 0);  -- AXI Lite Read Data strobe
      s_axi_ctl_rvalid        : out std_logic;                     -- AXI Lite Read data Valid
      s_axi_ctl_rready        : in  std_logic;                     -- AXI Lite Read Data Core ready
qpll_drp_crscode      : in std_logic_vector(11 downto 0);
 qpll_drp_fsm          : in std_logic_vector(17 downto 0);
 qpll_drp_done         : in std_logic_vector(1 downto 0);
 qpll_drp_reset        : in std_logic_vector(1 downto 0);
 qpll_qplllock         : in std_logic_vector(1 downto 0);
 qpll_qplloutclk       : in std_logic_vector(1 downto 0);
 qpll_qplloutrefclk    : in std_logic_vector(1 downto 0);
  qpll_qplld    : out std_logic_vector(1 downto 0)        ;
  qpll_qpllreset: out std_logic_vector(1 downto 0)    ;
  qpll_drp_clk: out std_logic_vector(1 downto 0)    ;
  qpll_drp_rst_n: out std_logic_vector(1 downto 0)    ;
  qpll_drp_ovrd: out std_logic_vector(1 downto 0)    ;
  qpll_drp_gen3: out std_logic_vector(1 downto 0)    ;
  qpll_drp_start: out std_logic_vector(1 downto 0)    ;

  pipe_txprbssel               :in std_logic_vector(2 downto 0);
  pipe_rxprbssel               :in std_logic_vector(2 downto 0);
  pipe_txprbsforceerr  :in std_logic;
  pipe_rxprbscntreset  :in std_logic;
  pipe_loopback                :in std_logic_vector(2 downto 0);
  pipe_txinhibit               :in std_logic_vector(C_NO_OF_LANES-1 downto 0);

  pipe_rxprbserr : out std_logic_vector(C_NO_OF_LANES-1 downto 0);


  pipe_rst_fsm         :out std_logic_vector(4 downto 0);
  pipe_qrst_fsm        :out std_logic_vector(11 downto 0);
  pipe_rate_fsm        :out std_logic_vector((C_NO_OF_LANES*5)-1 downto 0);
  pipe_sync_fsm_tx     :out std_logic_vector((C_NO_OF_LANES*6)-1 downto 0);
  pipe_sync_fsm_rx     :out std_logic_vector((C_NO_OF_LANES*7)-1 downto 0);
  pipe_drp_fsm         :out std_logic_vector((C_NO_OF_LANES*7)-1 downto 0);

  pipe_rst_idle        :out std_logic;
  pipe_qrst_idle       :out std_logic;
  pipe_rate_idle       :out std_logic;
  pipe_eyescandataerror	:out std_logic_vector(C_NO_OF_LANES-1 downto 0);
  pipe_rxstatus : out std_logic_vector((C_NO_OF_LANES*3)-1 downto 0);    
  pipe_dmonitorout : out std_logic_vector((C_NO_OF_LANES*15)-1 downto 0);

 pipe_cpll_lock          : out std_logic_vector(C_NO_OF_LANES-1 downto 0); 
 pipe_qpll_lock          : out std_logic_vector(((C_NO_OF_LANES/8)+1)-1 downto 0); 
 pipe_rxpmaresetdone     : out std_logic_vector(C_NO_OF_LANES-1 downto 0);  
 pipe_rxbufstatus        : out std_logic_vector((C_NO_OF_LANES*3)-1 downto 0);     
 pipe_txphaligndone      : out std_logic_vector(C_NO_OF_LANES-1 downto 0);   
 pipe_txphinitdone       : out std_logic_vector(C_NO_OF_LANES-1 downto 0);      
 pipe_txdlysresetdone    : out std_logic_vector(C_NO_OF_LANES-1 downto 0);    
 pipe_rxphaligndone      : out std_logic_vector(C_NO_OF_LANES-1 downto 0);     
 pipe_rxdlysresetdone    : out std_logic_vector(C_NO_OF_LANES-1 downto 0);      
 pipe_rxsyncdone         : out std_logic_vector(C_NO_OF_LANES-1 downto 0);      
 pipe_rxdisperr          : out std_logic_vector((C_NO_OF_LANES*8)-1 downto 0);     
 pipe_rxnotintable       : out std_logic_vector((C_NO_OF_LANES*8)-1 downto 0);     
 pipe_rxcommadet         : out std_logic_vector(C_NO_OF_LANES-1 downto 0);   

  gt_ch_drp_rdy        :out std_logic_vector(C_NO_OF_LANES-1 downto 0);
  pipe_debug_0 : out std_logic_vector(C_NO_OF_LANES-1 downto 0);
  pipe_debug_1 : out std_logic_vector(C_NO_OF_LANES-1 downto 0);
  pipe_debug_2 : out std_logic_vector(C_NO_OF_LANES-1 downto 0);
  pipe_debug_3 : out std_logic_vector(C_NO_OF_LANES-1 downto 0);
  pipe_debug_4 : out std_logic_vector(C_NO_OF_LANES-1 downto 0);
  pipe_debug_5 : out std_logic_vector(C_NO_OF_LANES-1 downto 0);
  pipe_debug_6 : out std_logic_vector(C_NO_OF_LANES-1 downto 0);
  pipe_debug_7 : out std_logic_vector(C_NO_OF_LANES-1 downto 0);
  pipe_debug_8 : out std_logic_vector(C_NO_OF_LANES-1 downto 0);
  pipe_debug_9 : out std_logic_vector(C_NO_OF_LANES-1 downto 0);
  pipe_debug   :out std_logic_vector(31 downto 0);

 common_commands_in:in std_logic_vector(11 downto 0); 	
 pipe_rx_0_sigs	   :in std_logic_vector(24 downto 0);     
 pipe_rx_1_sigs	   :in std_logic_vector(24 downto 0);     
 pipe_rx_2_sigs	   :in std_logic_vector(24 downto 0);     
 pipe_rx_3_sigs	   :in std_logic_vector(24 downto 0);     
 pipe_rx_4_sigs	   :in std_logic_vector(24 downto 0);     
 pipe_rx_5_sigs	   :in std_logic_vector(24 downto 0);     
 pipe_rx_6_sigs	   :in std_logic_vector(24 downto 0);     
 pipe_rx_7_sigs	   :in std_logic_vector(24 downto 0);     
                          
 common_commands_out:out std_logic_vector(11 downto 0);	
 pipe_tx_0_sigs	    :out std_logic_vector(24 downto 0);    
 pipe_tx_1_sigs	    :out std_logic_vector(24 downto 0);    
 pipe_tx_2_sigs	    :out std_logic_vector(24 downto 0);    
 pipe_tx_3_sigs	    :out std_logic_vector(24 downto 0);    
 pipe_tx_4_sigs	    :out std_logic_vector(24 downto 0);    
 pipe_tx_5_sigs	    :out std_logic_vector(24 downto 0);    
 pipe_tx_6_sigs	    :out std_logic_vector(24 downto 0);    
 pipe_tx_7_sigs	    :out std_logic_vector(24 downto 0);    

 int_pclk_out_slave	: out std_logic;	 
 int_rxusrclk_out    	: out std_logic;   	
 int_dclk_out        	: out std_logic;   	
 int_userclk1_out    	: out std_logic;   	
 int_userclk2_out    	: out std_logic;   	
 int_oobclk_out      	: out std_logic;   	
 int_mmcm_lock_out   	: out std_logic;   	
 int_qplllock_out	: out std_logic_vector(1 downto 0);	
 int_qplloutclk_out	: out std_logic_vector(1 downto 0);	
 int_qplloutrefclk_out	: out std_logic_vector(1 downto 0);	
 int_rxoutclk_out 	: out std_logic_vector(C_NO_OF_LANES-1 downto 0);	      
 int_pclk_sel_slave	: in std_logic_vector(C_NO_OF_LANES-1 downto 0);	

     -------------Channel DRP---------------------------------
  ext_ch_gt_drpclk      : out std_logic;
  ext_ch_gt_drpaddr     : in std_logic_vector((C_NO_OF_LANES*9)-1 downto 0);
  ext_ch_gt_drpen       : in std_logic_vector(C_NO_OF_LANES-1 downto 0);
  ext_ch_gt_drpdi       : in std_logic_vector((C_NO_OF_LANES*16)-1 downto 0);
  ext_ch_gt_drpwe       : in std_logic_vector(C_NO_OF_LANES-1 downto 0);

  ext_ch_gt_drpdo      : out std_logic_vector((C_NO_OF_LANES*16)-1 downto 0);
  ext_ch_gt_drprdy     : out std_logic_vector(C_NO_OF_LANES-1 downto 0);
      clk_fab_refclk                           : in std_logic_vector(C_NO_OF_LANES-1 downto 0);
      clk_pclk                                 : in std_logic;
      clk_rxusrclk                             : in std_logic;
      clk_dclk                                 : in std_logic;
      clk_userclk1                             : in std_logic;
      clk_userclk2                             : in std_logic;
      clk_oobclk_in                            : in std_logic;
      clk_mmcm_lock                            : in std_logic;
      clk_txoutclk                             : out std_logic;
      clk_rxoutclk                             : out std_logic_vector(C_NO_OF_LANES-1 downto 0);
      clk_pclk_sel                             : out std_logic_vector(C_NO_OF_LANES-1 downto 0);
      pipe_mmcm_rst_n                          : in std_logic;
      clk_gen3                                 : out std_logic
   );

end axi_pcie;

architecture structure of axi_pcie is
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of structure : architecture is "yes";


-------------------------------------------------------------------------------

  -- Copied function "to_string" from MicroBlaze v8.30a
  
  -----------------------------------------------------------------------------
  -- Converts an integer to a decimal string
  -----------------------------------------------------------------------------
  function To_String(from : integer) return string is
  begin
    return integer'image(from);
  end function To_String;

  -----------------------------------------------------------------------------
  -- Converts a std_logic_vector to a hexadecimal string with leading "0x"
  -----------------------------------------------------------------------------
  function To_String(from : std_logic_vector) return String is
    type INT_TO_CHAR_TYPE is array (integer range 0 to 15) of character;
    constant INT_TO_STRHEX_TABLE : INT_TO_CHAR_TYPE :=
      ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');

    variable value   : unsigned(0 to ((from'length + 3) / 4) * 4 - 1) := (others => '0');
    variable result  : string(1 to value'length / 4);
    variable v_index : integer := value'high;
    variable r_index : integer := result'high;
  begin
    value(value'high - from'length + 1 to value'high) := unsigned(from);
    while r_index > 0 loop
      result(r_index) := INT_TO_STRHEX_TABLE(to_integer(value(v_index - 3 to v_index)));
      v_index := v_index - 4;
      r_index := r_index - 1;
    end loop;
    return "0x" & result;
  end function To_String;


-------------------------------------------------------------------------------



  constant C_CORE_GENERATION_INFO : string := C_INSTANCE & ",AXI_PCIe,{"
      & "c_instance="                      & C_INSTANCE
      & ",c_family="                       & C_FAMILY
      & ",c_s_axi_id_width="               & to_string(C_S_AXI_ID_WIDTH)
      & ",c_s_axi_data_width="             & to_string(C_S_AXI_DATA_WIDTH)
      & ",c_m_axi_data_width="             & to_string(C_M_AXI_DATA_WIDTH)
      & ",c_no_of_lanes="                  & to_string(C_NO_OF_LANES)
      & ",c_max_link_speed="               & to_string(C_MAX_LINK_SPEED)
      & ",c_ref_clk_freq="                 & to_string(C_REF_CLK_FREQ)
      & ",c_pcie_cap_slot_implemented="   & to_string(C_PCIE_CAP_SLOT_IMPLEMENTED)
      & ",c_num_msi_req ="                 & to_string(C_NUM_MSI_REQ)
      & ",c_interrupt_pin="                & to_string(C_INTERRUPT_PIN)
      & ",c_include_rc="                   & to_string(C_INCLUDE_RC)
      & ",c_s_axi_supports_narrow_burst="  & to_string(C_S_AXI_SUPPORTS_NARROW_BURST)
      & ",c_include_baroffset_reg="      & to_string(C_INCLUDE_BAROFFSET_REG)
      & ",c_axibar_num="                   & to_string(C_AXIBAR_NUM)
      & ",c_pciebar_num="                 & to_string(C_PCIEBAR_NUM)
      & "}";

  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of structure : architecture is C_CORE_GENERATION_INFO;

-------------------------------------------------------------------------------

   function Conv_to_String(BINARY_INTEGER : integer) return string is
      begin
         if(BINARY_INTEGER = 0) then
            return("FALSE");
         else
            return("TRUE");
         end if;
   end function;
   function Conv_to_String_Inv(BINARY_INTEGER : integer) return string is
      begin
         if(BINARY_INTEGER = 1) then
            return("FALSE");
         else
            return("TRUE");
         end if;
   end function;
   function String_Inv(STRING_VAL : string) return string is
      begin
         if(STRING_VAL = "TRUE") then
            return("FALSE");
         else
            return("TRUE");
         end if;
   end function;

  constant CON_PCIE_CAP_SLOT_IMPLEMENTED : string := Conv_to_String(C_PCIE_CAP_SLOT_IMPLEMENTED);
  constant ROOT_PORT : string := Conv_to_String(C_INCLUDE_RC);
  constant UPSTREAM_FACING : string := Conv_to_String(1-C_INCLUDE_RC);
  constant VSEC_CAP_LAST : string := Conv_to_String(1-C_INCLUDE_BAROFFSET_REG);
  constant PCIE_ASYNC_EN : string := String_Inv(C_SLOT_CLOCK_CONFIG);
  
  
  
-------------------------------------------------------------------------------
-- prefetch_config
-- This function configures PCIBAR_PREFETCH parmameters
-------------------------------------------------------------------------------

--function prefetch_config(pcibar_as, use_prefetch_from_pkg, pcibar_prefetch : integer) return integer is
--   variable var_out : integer;
--   begin
--      if(use_prefetch_from_pkg=0) then
--         var_out := pcibar_as;
--      else
--         var_out := pcibar_prefetch;
--      end if;
--   return(var_out);
--end function;

-------------------------------------------------------------------------------
-- Function func_invert
-- This function takes in a SLV, inverts all bits in the vector and returns
-- a SLV
-------------------------------------------------------------------------------
  function func_invert(in_vec : std_logic_vector(63 downto 0)) return std_logic_vector is
    variable var_out : std_logic_vector(63 downto 0);
      begin
        for i in 0 to 63 loop
          var_out(i):=not in_vec(i);
        end loop;
      return(var_out);
  end function;

-------------------------------------------------------------------------------
-- pcibar_config
-- This function configures the PCIBARs
-------------------------------------------------------------------------------

  constant PCIBAR_PREFETCH_0  : integer := C_PCIEBAR_AS;  --prefetch_config(C_PCIEBAR_AS, 0, 0);
  constant PCIBAR_PREFETCH_1  : integer := C_PCIEBAR_AS;  --prefetch_config(C_PCIEBAR_AS, 0, 0);
  constant PCIBAR_PREFETCH_2  : integer := C_PCIEBAR_AS;  --prefetch_config(C_PCIEBAR_AS, 0, 0);

  function pcibar_config(pcibar_prefetch_32, pcibar_prefetch_64, pcibar_as, pcibar_len_32, pcibar_len_64, pcibar_en, pcibar_num_32, pcibar_num_64 : integer) return std_logic_vector is
     variable var_out : std_logic_vector(63 downto 0);
     begin
        if(pcibar_as=1) then -- 64 bit BARs
           if(pcibar_num_64<pcibar_en) then
              if(pcibar_prefetch_64=1) then
                 if (pcibar_len_64 = 32) then
                   var_out := x"FFFF_FFFF_0000_0000" + x"C";
                 elsif (pcibar_len_64 = 31) then
                   var_out := x"FFFF_FFFF_8000_0000" + x"C";
                 else
                   var_out := func_invert(conv_std_logic_vector(((2**pcibar_len_64)-1),64))+x"C";
                 end if;
              else
                 assert FALSE
                 report "INVALID BAR: 64 bit, non-prefetch NOT ALLOWED"
                 severity Warning;
              end if;
           else
              var_out:= (others=>'0');
           end if;
        else               -- 32 bit BARs
           if(pcibar_num_32<pcibar_en) then
              if(pcibar_prefetch_32=1) then
                 assert FALSE
                 report "INVALID BAR: 32 bit, prefetch NOT ALLOWED"
                 severity Warning;
              else
                 if(pcibar_num_32=1) then
                   if (pcibar_len_32 = 32) then
                     var_out := x"0000_0000"+x"0"&x"0000_0000";
                   elsif (pcibar_len_32 = 31) then
                     var_out := x"8000_0000"+x"0"&x"0000_0000";
                   else
                     var_out := func_invert(conv_std_logic_vector(((2**pcibar_len_32)-1),64))(31 downto 0)+x"0"&x"0000_0000";
                   end if;
                 else
                   if (pcibar_len_32 = 32) then
                     var_out := x"0000_0000"&x"0000_0000"+x"0";
                   elsif (pcibar_len_32 = 31) then
                     var_out := x"0000_0000"&x"8000_0000"+x"0";
                   else
                     var_out := x"0000_0000"&func_invert(conv_std_logic_vector(((2**pcibar_len_32)-1),64))(31 downto 0)+x"0";
                   end if;
                 end if;
              end if;
           else
              var_out := (others=>'0');
           end if;
        end if;
     return(var_out);
  end function;

  --------------------------------------------------------------------------------

  function group_7series_family (C_FAMILY : string) return string is
    begin
      if (C_FAMILY = "kintex7" or C_FAMILY = "virtex7" or C_FAMILY = "artix7" or C_FAMILY = "zynq") then
        return ("7series");
      else
        return (C_FAMILY);
      end if;
  end function;

  --------------------------------------------------------------------------------
  -- purpose: Assign the value to depending on the device port type 
  function get_dll_link_active_report_cap (
    constant dev_port : integer)
      return string is
   begin  -- get_dll_link_active_report_cap 
     if (dev_port = 1) then 
        return ("TRUE");
     else 
        return ("FALSE");
     end if; 
   end get_dll_link_active_report_cap;

  -- Added to find derivative of all FPGA architectures.
  -- For example, "virtex6l" will return "virtex6" (so correct V6 PCIe block is instantiated)
--  constant C_FAMILY_DER           : string := get_root_family (C_FAMILY);

  -- Added to group together 7-series FPGA architectures.
  constant C_FAMILY_I         : string := "7series";
  --constant C_FAMILY_I         : string := group_7series_family (C_FAMILY_DER);

  constant C_S_AXIS_DATA_WIDTH          : integer := C_S_AXI_DATA_WIDTH;
  constant C_M_AXIS_DATA_WIDTH          : integer := C_M_AXI_DATA_WIDTH;
  constant C_S_AXIS_USER_WIDTH          : integer := 22;
  constant NUM_OF_INTERRUPTS            : integer := 9;
  constant ZEROS                        : std_logic_vector(7 downto 0):= "00000000";
  constant BASEADDR_i                   : std_logic_vector(31 downto 0):= C_BASEADDR;
  constant BASEADDR_U                   : std_logic_vector(15 downto 0):= BASEADDR_i(31 downto 16);
  constant BASEADDR_L                   : std_logic_vector(15 downto 0):= BASEADDR_i(15 downto 0);
  constant HIGHADDR_i                   : std_logic_vector(31 downto 0):= C_HIGHADDR;
  constant HIGHADDR_U                   : std_logic_vector(15 downto 0):= HIGHADDR_i(31 downto 16);
  constant HIGHADDR_L                   : std_logic_vector(15 downto 0):= HIGHADDR_i(15 downto 0);
  constant PCIE_GENERIC                 : integer := conv_integer("010001101111") + (128*C_INTERRUPT_PIN);
  constant C_PL_FAST_TRAIN              : string := "FALSE"; --default hardware is not fast train
  constant LINK_CAP_DLL_LINK_ACTIVE_REPORTING_CAP_LOCAL : string := get_dll_link_active_report_cap (C_INCLUDE_RC);
  constant MODELSIM                     : boolean := false --sim is always fast train
-- synthesis translate_off
       or true
-- synthesis translate_on
  ;

  function Fast_Train_Conv(MODELSIM : boolean; C_PL_FAST_TRAIN : string) return string is
    begin
      if(MODELSIM) then
        return("TRUE");
      else
-- coverage off
        return(C_PL_FAST_TRAIN);
-- coverage on
      end if;
  end function;

  constant C_PL_FAST_TRAIN_LOCAL : string := Fast_Train_Conv(MODELSIM, C_PL_FAST_TRAIN);
  constant BAR0_i  : std_logic_vector(31 downto 0):= pcibar_config(PCIBAR_PREFETCH_0, PCIBAR_PREFETCH_0, C_PCIEBAR_AS, C_PCIEBAR_LEN_0, C_PCIEBAR_LEN_0, C_PCIEBAR_NUM, 0, 0)(31 downto 0);
  constant BAR0_U  : std_logic_vector(15 downto 0):=BAR0_i(31 downto 16);
  constant BAR0_L  : std_logic_vector(15 downto 0):=BAR0_i(15 downto 0);
  constant BAR1_i  : std_logic_vector(31 downto 0):= pcibar_config(PCIBAR_PREFETCH_1, PCIBAR_PREFETCH_0, C_PCIEBAR_AS, C_PCIEBAR_LEN_1, C_PCIEBAR_LEN_0, C_PCIEBAR_NUM, 1, 0)(63 downto 32);
  constant BAR1_U  : std_logic_vector(15 downto 0):=BAR1_i(31 downto 16);
  constant BAR1_L  : std_logic_vector(15 downto 0):=BAR1_i(15 downto 0);
  constant BAR2_i  : std_logic_vector(31 downto 0):= pcibar_config(PCIBAR_PREFETCH_2, PCIBAR_PREFETCH_1, C_PCIEBAR_AS, C_PCIEBAR_LEN_2, C_PCIEBAR_LEN_1, C_PCIEBAR_NUM, 2, 1)(31 downto 0);
  constant BAR2_U_EP  : std_logic_vector(15 downto 0):=BAR2_i(31 downto 16);
  constant BAR2_L_EP  : std_logic_vector(15 downto 0):=BAR2_i(15 downto 0);
  constant BAR3_i  : std_logic_vector(31 downto 0):= pcibar_config(PCIBAR_PREFETCH_2, PCIBAR_PREFETCH_1, C_PCIEBAR_AS, C_PCIEBAR_LEN_2, C_PCIEBAR_LEN_1, C_PCIEBAR_NUM, 3, 1)(63 downto 32);
  constant BAR3_U_EP  : std_logic_vector(15 downto 0):=BAR3_i(31 downto 16);
  constant BAR3_L_EP  : std_logic_vector(15 downto 0):=BAR3_i(15 downto 0);
  constant BAR4_i  : std_logic_vector(31 downto 0):= pcibar_config(PCIBAR_PREFETCH_2, PCIBAR_PREFETCH_2, C_PCIEBAR_AS, C_PCIEBAR_LEN_2, C_PCIEBAR_LEN_2, C_PCIEBAR_NUM, 4, 2)(31 downto 0);
  constant BAR4_U_EP  : std_logic_vector(15 downto 0):=BAR4_i(31 downto 16);
  constant BAR4_L_EP  : std_logic_vector(15 downto 0):=BAR4_i(15 downto 0);
  constant BAR5_i  : std_logic_vector(31 downto 0):= pcibar_config(PCIBAR_PREFETCH_2, PCIBAR_PREFETCH_2, C_PCIEBAR_AS, C_PCIEBAR_LEN_2, C_PCIEBAR_LEN_2, C_PCIEBAR_NUM, 5, 2)(63 downto 32);
  constant BAR5_U_EP  : std_logic_vector(15 downto 0):=BAR5_i(31 downto 16);
  constant BAR5_L_EP  : std_logic_vector(15 downto 0):=BAR5_i(15 downto 0);
  --Fixed for V6 RP configuration
  constant BAR2_U_RP      : std_logic_vector(15 downto 0):=x"00ff";
  constant BAR2_L_RP      : std_logic_vector(15 downto 0):=x"ffff";
  constant BAR3_U_RP      : std_logic_vector(15 downto 0):=x"ffff";
  constant BAR3_L_RP      : std_logic_vector(15 downto 0):=x"f1f1";
  constant BAR4_U_RP      : std_logic_vector(15 downto 0):=x"fff0";
  constant BAR4_L_RP      : std_logic_vector(15 downto 0):=x"fff0";
  constant BAR5_U_RP      : std_logic_vector(15 downto 0):=x"0000";
  constant BAR5_L_RP      : std_logic_vector(15 downto 0):=x"0000";

-- coverage off

  --------------------------------------------------------------------------------

  function rp_bars_mux(C_INCLUDE_RC : integer; EP_BAR, RP_BAR : std_logic_vector) return std_logic_vector is
    begin
      if(C_INCLUDE_RC = 0) then
        return(EP_BAR);
      else
        return(RP_BAR);
      end if;
  end function;

  constant BAR2_U             : std_logic_vector  := rp_bars_mux(C_INCLUDE_RC, BAR2_U_EP, BAR2_U_RP);
  constant BAR2_L             : std_logic_vector  := rp_bars_mux(C_INCLUDE_RC, BAR2_L_EP, BAR2_L_RP);
  constant BAR3_U             : std_logic_vector  := rp_bars_mux(C_INCLUDE_RC, BAR3_U_EP, BAR3_U_RP);
  constant BAR3_L             : std_logic_vector  := rp_bars_mux(C_INCLUDE_RC, BAR3_L_EP, BAR3_L_RP);
  constant BAR4_U             : std_logic_vector  := rp_bars_mux(C_INCLUDE_RC, BAR4_U_EP, BAR4_U_RP);
  constant BAR4_L             : std_logic_vector  := rp_bars_mux(C_INCLUDE_RC, BAR4_L_EP, BAR4_L_RP);
  constant BAR5_U             : std_logic_vector  := rp_bars_mux(C_INCLUDE_RC, BAR5_U_EP, BAR5_U_RP);
  constant BAR5_L             : std_logic_vector  := rp_bars_mux(C_INCLUDE_RC, BAR5_L_EP, BAR5_L_RP);



  --------------------------------------------------------------------------------

  function set_pcie_use_mode (C_PCIE_USE_MODE : string) return string is
    begin
      -- Make sure C_PCI_USE_MODE = 3.0 for GES K7 GT wrappers in Zynq.  
      --if (C_FAMILY = "zynq") then
      --  return ("3.0");
      --else
        return (C_PCIE_USE_MODE);
      --end if;
  end function;

  constant PCIE_USE_MODE : string := set_pcie_use_mode (C_PCIE_USE_MODE);

  --------------------------------------------------------------------------------

  --------------------------------------------------------------------------------

  function set_pcie_gt_device (C_FAMILY : string) return string is
    begin
      -- Make sure  PCIE_GT_DEVICE = GTP for A7 GT wrappers.  
      if (C_FAMILY = "artix7" or (C_FAMILY = "zynq" and (C_DEVICE = "xc7z015" or C_DEVICE = "xc7z015i"))) then
        return ("GTP");
      else
        return ("GTX");
      end if;
  end function;

  constant PCIE_GT_DEVICE : string := set_pcie_gt_device (C_FAMILY);

  --------------------------------------------------------------------------------

  function family_axi_enhanced (C_FAMILY : string) return string is
    begin
      if(C_FAMILY = "virtex6") then
        return("V6");
      elsif(C_FAMILY = "spartan6") then
        return("S6");
      elsif(C_FAMILY = "7series") then
        return("X7");
      else
        return(C_FAMILY);
      end if;
  end function;

  constant FAMILY : string  := family_axi_enhanced (C_FAMILY_I);
  
  
  --------------------------------------------------------------------------------
  

  function family_user_clock (C_FAMILY, DEV, SPD : string) return integer is
    begin
      if(C_FAMILY = "virtex6") then
        return(2);
      elsif(C_FAMILY = "spartan6") then
        return(1);
      -- use DEV instead of C_FAMILY for zynq devices check
      -- clock down user_clk frequency in Zynq to help ease timing for smaller -1 devices
      -- No Gen2 support for -1 devices
      elsif(DEV = "zynq" and (SPD = "-1" or SPD = "-1i" or SPD = "-1q" or SPD = "-1l" or SPD = "-1ql" or SPD = "-1il")) then
        if (C_NO_OF_LANES = 1 or (C_NO_OF_LANES = 2 and C_MAX_LINK_SPEED = 0)) then
          if (C_S_AXI_DATA_WIDTH = 128) then
            return(2);
          else
            return (1);
          end if;
        -- This is for x2g2, x4g1/2, and x8g1/2 case which requires 125MHz at a minimum
        else
          if (C_S_AXI_DATA_WIDTH = 128) then
            return(3);
          else
            return(2);
          end if;
        end if;
      elsif (C_FAMILY = "7series") then
        if (C_S_AXI_DATA_WIDTH = 128) then
          return(3);
        elsif (C_NO_OF_LANES = 1 and C_MAX_LINK_SPEED = 0) then
          return (1);
        else
          return(2);
        end if;
      else
        return(0);
      end if;
  end function;

  --------------------------------------------------------------------------------


  function family_pcie_cap_capability_version(C_FAMILY : string) return integer is
    begin
      if(C_FAMILY = "virtex6" or C_FAMILY = "7series") then
        return(2);
      elsif(C_FAMILY = "spartan6") then
        return(1);
      else
        return(0);
      end if;
  end function;
  
  
  constant USER_CLK_FREQ : integer  := family_user_clock (C_FAMILY_I, C_FAMILY, C_SPEED);              -- 7-Series/Z(128) = 3; Z -1 half freq on x1/x2, 7-Series/V6/Z(64) = 2, S6 = 1
  constant PCIE_CAP_CAPABILITY_VERSION : integer := family_pcie_cap_capability_version (C_FAMILY_I);   -- 7-Series/V6/Z = 2, S6 = 1


  --------------------------------------------------------------------------------


  function family_total_credits_nph (C_FAMILY : string) return integer is
    begin
      if(C_FAMILY = "virtex6" or C_FAMILY = "7series") then
        return(12);
      elsif(C_FAMILY = "spartan6") then
        return(8);
      else
        return(0);
      end if;
  end function;

  constant VC0_TOTAL_CREDITS_NPH : integer := family_total_credits_nph (C_FAMILY_I);     -- V6/7-Series/Z = 12, S6 = 8

  --------------------------------------------------------------------------------
  

  function family_total_credits_pd (C_FAMILY : string) return integer is
    begin
      if(C_FAMILY = "virtex6") then
        return(154);
      elsif(C_FAMILY = "7series") then 
        return(181);        
      elsif(C_FAMILY = "spartan6") then
        return(211);
      else
        return(0);
      end if;
  end function;

  constant VC0_TOTAL_CREDITS_PD : integer := family_total_credits_pd (C_FAMILY_I);     -- V6 = 154, S6 = 211, 7-Series/Z = 181


  --------------------------------------------------------------------------------


  function family_total_credits_cd(C_FAMILY : string) return integer is
    begin
      if(C_FAMILY = "virtex6") then
        return(154);
      elsif(C_FAMILY = "7series") then 
        return(205);        
      elsif(C_FAMILY = "spartan6") then
        return(211);
      else
        return(0);
      end if;
  end function;

  constant VC0_TOTAL_CREDITS_CD : integer := family_total_credits_cd (C_FAMILY_I);     -- V6 = 154, S6 = 211, 7-Series/Z = 205


  --------------------------------------------------------------------------------


  function family_total_credits_ch(C_FAMILY : string) return integer is
    begin
      if(C_FAMILY = "virtex6" or C_FAMILY = "7series") then
        return(36);
      elsif(C_FAMILY = "spartan6") then
        return(40);
      else
        return(0);
      end if;
  end function;

  constant VC0_TOTAL_CREDITS_CH : integer := family_total_credits_ch (C_FAMILY_I);     -- V6/7-Series/Z= 36, S6 = 40


  --------------------------------------------------------------------------------


  function family_rx_ram_limit(C_FAMILY : string) return integer is
    begin
      if(C_FAMILY = "spartan6") then
        return(conv_integer(x"7ff"));
      elsif(C_FAMILY = "virtex6" or C_FAMILY = "7series") then
        return(conv_integer(x"3ff"));
      else
        return(0);
      end if;
  end function;

  constant VC0_RX_RAM_LIMIT : integer := family_rx_ram_limit (C_FAMILY_I);     -- S6 = 7FFh, V6/7-Series/Z = 3FFh


  --------------------------------------------------------------------------------


  function incl_rc_msi_cap_pvm(C_INCLUDE_RC : integer) return string is
    begin 
      if(C_INCLUDE_RC = 1) then
        return("TRUE");
      else
        return("FALSE");
      end if;
  end function;

  constant MSI_CAP_PER_VECTOR_MASKING_CAPABLE : string := incl_rc_msi_cap_pvm (C_INCLUDE_RC); -- C_INCLUDE_RC = 1 ->"TRUE" 


  --------------------------------------------------------------------------------


  function incl_rc_pcie_cap_device_port_type(C_INCLUDE_RC : integer) return integer is
    begin
      if(C_INCLUDE_RC = 1) then
        return(conv_integer(x"4"));
      else
        return(conv_integer(x"0"));
      end if;
  end function;

  constant PCIE_CAP_DEVICE_PORT_TYPE : integer := incl_rc_pcie_cap_device_port_type (C_INCLUDE_RC); --RC = 0x4, EP = 0x0


  --------------------------------------------------------------------------------

  function family_ll_replay_timeout(C_FAMILY : string) return integer is
    begin
      if (C_FAMILY = "virtex6") then
        return(conv_integer(x"0026"));
      elsif (C_FAMILY = "7series") then
        return(conv_integer(x"0000"));
      elsif (C_FAMILY = "spartan6") then
        return(conv_integer(x"00FF"));
      else
        return(0);
      end if;
  end function;

  constant LL_REPLAY_TIMEOUT : integer := family_ll_replay_timeout (C_FAMILY_I);
  
  --------------------------------------------------------------------------------


  function family_ll_replay_timeout_en (C_FAMILY : string) return string is
    begin
      if (C_FAMILY = "7series") then
        return("FALSE");
      else
        return("TRUE");
      end if;
  end function;

  constant LL_REPLAY_TIMEOUT_EN : string := family_ll_replay_timeout_en (C_FAMILY_I);     -- 7-Series/Z = "FALSE", V6/S6 = "TRUE"


  --------------------------------------------------------------------------------

  function family_pipe_pipeline_stages(C_FAMILY : string) return integer is
    begin
      if(C_FAMILY = "virtex6" or C_FAMILY = "spartan6") then
        return(0);
      elsif(C_FAMILY = "7series") then
        return(1);
      else
        return(0);
      end if;
  end function;

  constant PIPE_PIPELINE_STAGES : integer := family_pipe_pipeline_stages (C_FAMILY_I);    -- 7-Series/Z = 1, V6/S6 = 0


  --------------------------------------------------------------------------------


  function data_width_trn_dw(C_S_AXI_DATA_WIDTH : integer) return string is
    begin
      if (C_S_AXI_DATA_WIDTH = 128) then
        return("TRUE");
      else
        return("FALSE");
      end if;
  end function;

  constant TRN_DW : string := data_width_trn_dw (C_S_AXI_DATA_WIDTH);


  --------------------------------------------------------------------------------

  function data_width_user_clk2_div2(C_S_AXI_DATA_WIDTH : integer) return string is
    begin
      if(C_S_AXI_DATA_WIDTH = 128) then
        return("TRUE");
      else
        return("FALSE");
      end if;
  end function;

  constant USER_CLK2_DIV2 : string := data_width_user_clk2_div2(C_S_AXI_DATA_WIDTH);


  --------------------------------------------------------------------------------

  -- CR # 646225
  -- Move function to top level of IP
  function calc_axiread_num (C_S_AXI_DATA_WIDTH : integer) return integer is
  begin
     if C_S_AXI_DATA_WIDTH = 128 then
        return(4);
     else
        return(8);
     end if;
  end function;

  constant C_AXIREAD_NUM           : integer := calc_axiread_num (C_S_AXI_DATA_WIDTH);


  --------------------------------------------------------------------------------
  --------------------------------------------------------------------------------

  function calc_ep_link_partner_rcb (C_INCLUDE_RC, C_EP_LINK_PARTNER_RCB : integer) return integer is
  begin
     if C_INCLUDE_RC = 1 then
        return(1);
     else
        return(C_EP_LINK_PARTNER_RCB);
     end if;
  end function;

  constant EP_LINK_PARTNER_RCB     : integer := calc_ep_link_partner_rcb (C_INCLUDE_RC,C_EP_LINK_PARTNER_RCB);

-- coverage on



-- Signals

   signal axi_areset                      : std_logic;
   signal axi_aclk_in                     : std_logic;
   signal sig_axi_aclk_out                : std_logic;
   signal sig_pci_exp_txp                 : std_logic_vector(C_NO_OF_LANES-1 downto 0):= ZEROS(C_NO_OF_LANES-1 downto 0);
   signal sig_pci_exp_txn                 : std_logic_vector(C_NO_OF_LANES-1 downto 0):= ZEROS(C_NO_OF_LANES-1 downto 0);

   signal sig_pci_exp_rxp                 : std_logic_vector(C_NO_OF_LANES-1 downto 0);
   signal sig_pci_exp_rxn                 : std_logic_vector(C_NO_OF_LANES-1 downto 0);

   -- AXIS Write Requester Channel
   signal sig_m_axis_rw_tdata         : std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
   signal sig_m_axis_rw_tstrb         : std_logic_vector(C_M_AXIS_DATA_WIDTH/8-1 downto 0);
   signal sig_m_axis_rw_tlast         : std_logic;
   signal sig_m_axis_rw_tvalid        : std_logic;
   signal sig_m_axis_rw_tready        : std_logic;

   -- AXIS Read Requester Channel
   signal sig_m_axis_rr_tdata         : std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
   signal sig_m_axis_rr_tstrb         : std_logic_vector(C_M_AXIS_DATA_WIDTH/8-1 downto 0);
   signal sig_m_axis_rr_tlast         : std_logic;
   signal sig_m_axis_rr_tvalid        : std_logic;
   signal sig_m_axis_rr_tready        : std_logic;

   -- AXIS Completion Requester Channel
   signal sig_s_axis_rc_tdata         : std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
   signal sig_s_axis_rc_tstrb         : std_logic_vector(C_M_AXIS_DATA_WIDTH/8-1 downto 0);
   signal sig_s_axis_rc_tlast         : std_logic;
   signal sig_s_axis_rc_tvalid        : std_logic;
   signal sig_s_axis_rc_tready        : std_logic;

   -- AXIS Write Completer Channel
   signal sig_s_axis_cw_tdata         : std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0);
   signal sig_s_axis_cw_tstrb         : std_logic_vector(C_S_AXIS_DATA_WIDTH/8-1 downto 0);
   signal sig_s_axis_cw_tlast         : std_logic;
   signal sig_s_axis_cw_tvalid        : std_logic;
   signal sig_s_axis_cw_tready        : std_logic;
   signal sig_s_axis_cw_tuser         : std_logic_vector(C_S_AXIS_USER_WIDTH-1 downto 0);
      
   -- AXIS Read Completer Channel
   signal sig_s_axis_cr_tdata         : std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0);
   signal sig_s_axis_cr_tstrb         : std_logic_vector(C_S_AXIS_DATA_WIDTH/8-1 downto 0);
   signal sig_s_axis_cr_tlast         : std_logic;
   signal sig_s_axis_cr_tvalid        : std_logic;
   signal sig_s_axis_cr_tready        : std_logic;
   signal sig_s_axis_cr_tuser         : std_logic_vector(C_S_AXIS_USER_WIDTH-1 downto 0);

   -- AXIS Completion Completer Channel
   signal sig_m_axis_cc_tdata         : std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0);
   signal sig_m_axis_cc_tstrb         : std_logic_vector(C_S_AXIS_DATA_WIDTH/8-1 downto 0);
   signal sig_m_axis_cc_tlast         : std_logic;
   signal sig_m_axis_cc_tvalid        : std_logic;
   signal sig_m_axis_cc_tready        : std_logic;
   signal sig_m_axis_cc_tuser         : std_logic_vector(C_S_AXIS_USER_WIDTH-1 downto 0);

   -- AXI-Lite Slave IPIC
   signal sig_IP2Bus_Data             : std_logic_vector(31 downto 0);
   signal sig_IP2Bus_WrAck            : std_logic;
   signal sig_IP2Bus_RdAck            : std_logic;
   signal sig_IP2Bus_Error            : std_logic;
   signal sig_Bus2IP_Addr             : std_logic_vector(32-1 downto 0);
   signal sig_Bus2IP_Data             : std_logic_vector(31 downto 0);
   signal sig_Bus2IP_RNW              : std_logic;
   signal sig_Bus2IP_BE               : std_logic_vector(32/8-1 downto 0);
   signal sig_Bus2IP_CS               : std_logic;

   -- AXI-S Block Interface
   signal sig_blk_lnk_up              : std_logic;
   signal sig_blk_bus_number          : std_logic_vector(7 downto 0);
   signal sig_blk_device_number       : std_logic_vector(4 downto 0);
   signal sig_blk_function_number     : std_logic_vector(2 downto 0);
   signal sig_blk_command             : std_logic_vector(15 downto 0);
   signal sig_blk_dcontrol            : std_logic_vector(15 downto 0);
   signal sig_blk_lstatus             : std_logic_vector(15 downto 0);

   --Interrupt Strobes
   signal sig_SUR_int                 : std_logic;
   signal sig_SUC_int                 : std_logic;
   signal sig_SCT_int                 : std_logic;
   signal sig_SEP_int                 : std_logic;
   signal sig_SCA_int                 : std_logic;
   signal sig_SIB_int                 : std_logic;
   signal sig_MDE_int                 : std_logic;
   signal sig_MSE_int                 : std_logic;
   signal sig_MEP_int                 : std_logic;
   --signal sig_MLE_int                 : std_logic;
   --signal sig_MEC_int                 : std_logic;
   signal interrupt_vector            : std_logic_vector(NUM_OF_INTERRUPTS-1 downto 0);
   signal np_cpl_pending              : std_logic;
   signal np_cpl_pending_qual         : std_logic;
   signal sig_blk_interrupt           : std_logic;
   signal sig_blk_interrupt_rdy       : std_logic;
   signal sig_blk_interrupt_assert    : std_logic;
   signal sig_blk_interrupt_di        : std_logic_vector(7 downto 0);
   signal sig_blk_interrupt_msienable : std_logic;
   signal sig_intx_msi_request        : std_logic;
   signal sig_intx_msi_grant          : std_logic;
   signal sig_msi_vector_num          : std_logic_vector(4 downto 0);
   signal intx_msi_request_1d         : std_logic;
   signal intx_msi_request_2d         : std_logic;
   signal intx_msi_request_3d         : std_logic;
   signal msi_vector_num_1d           : std_logic_vector(4 downto 0);
   signal msi_vector_num_2d           : std_logic_vector(4 downto 0);
   signal sig_mmcm_lock               : std_logic;
   signal RP_bridge_en                : std_logic;

   type legint_msiSM_STATES is (NO_INTR,
                                INTR_HS);
   signal legint_msiSM : legint_msiSM_STATES;
   signal INTX_state                  : std_logic;
   constant SELECTED_INT              : std_logic_vector(7 downto 0) := conv_std_logic_vector(C_INTERRUPT_PIN-1, 8);

   signal counter_50: integer := 0;

-- Signals for np_req_mode: if C_TRN_NP_FC = "TRUE"
   signal sig_rx_np_req               : std_logic;
   signal rx_np_req_cntr              : integer range 0 to 15;
   signal np_pkt_complete             : std_logic_vector(1 downto 0); -- bit[1] = rdndreqpipeline; bit[0] = rdreqpipeline
-- End np_req_mode signals

-- Signals for np_ok_mode: if C_TRN_NP_FC = "FALSE"
   type rx_np_okSM_STATES is (INIT,
                              WAIT_PIPE_LATENCY,
                              CHECK_NP_PIPELINE,
                              ASSERT_NP_OK);
   signal rx_np_okSM                  : rx_np_okSM_STATES;
   constant RX_PIPE_LATENCY           : integer := 12;
   signal sig_rx_np_ok                : std_logic;
   signal rx_np_ok_int                : std_logic;
   signal rx_np_ok_cntr               : integer range 0 to 15;
   signal pipe_latency_cntr           : integer range 0 to 15;
   signal disable_rx_np_ok            : std_logic;
   signal rdndreqpipeline             : std_logic_vector(2 downto 0);
   signal rdreqpipeline               : std_logic_vector(2 downto 0);
   signal rdndreqpipeline_d           : std_logic_vector(2 downto 0);
   signal rdreqpipeline_d             : std_logic_vector(2 downto 0);
-- End np_ok_mode signals

   signal config_gen_req              : std_logic;

begin

   -- Tx
   pci_exp_txp                   <= sig_pci_exp_txp;
   pci_exp_txn                   <= sig_pci_exp_txn;
   -- Rx
   sig_pci_exp_rxp               <= pci_exp_rxp;
   sig_pci_exp_rxn               <= pci_exp_rxn;
   
   axi_areset                    <= not(axi_aresetn);
clk_input : if AXI_ACLK_LOOPBACK = "TRUE" generate
   axi_aclk_in			 <= axi_aclk;
end generate;
intrnl_clk_input : if AXI_ACLK_LOOPBACK = "FALSE" generate
   axi_aclk_in			 <= sig_axi_aclk_out;
end generate;
   axi_aclk_out			 <= sig_axi_aclk_out;

   interrupt_vector              <= sig_MEP_int & sig_MSE_int & sig_MDE_int & sig_SIB_int & sig_SCA_int & sig_SEP_int & sig_SCT_int & sig_SUC_int & sig_SUR_int;
   MSI_enable                    <= sig_blk_interrupt_msienable;
   INTX_MSI_Grant                <= sig_intx_msi_grant;
   sig_intx_msi_request          <= INTX_MSI_Request;
   sig_msi_vector_num            <= MSI_Vector_Num;
   np_cpl_pending_qual           <= np_cpl_pending when C_INCLUDE_RC = 1 else '1';

   mmcm_lock                     <= sig_mmcm_lock;

np_req_mode: if C_TRN_NP_FC = "TRUE" generate begin
   sig_rx_np_ok            <= '0';

--**************************************************************************************************
-- This StateMachine will actively look for available NP Buffer space of MM/S MasterBridge Rd module
-- and make full use of rx_np_req signal to control NP traffic on receive side. Hence avoids potential
-- PCIe-Rx MemRd buffer overflow problem
--**************************************************************************************************

   rx_np_req_proc : process (axi_aclk_in)
   begin
      if(rising_edge(axi_aclk_in)) then
         if(axi_aresetn = '0' or sig_blk_lnk_up = '0') then
            sig_rx_np_req            <= '0';
            
            -- 128-bit: assert rx_np_req for 4 clock cycles, doing so will accept up to 4 NP packets
            -- if it has any
            if C_S_AXI_DATA_WIDTH = 128 then -- 128-bit
                rx_np_req_cntr   <= 4;

            -- 64-bit: assert rx_np_req for 5 clock cycles, doing so will accept up to 5 NP packets
            -- if it has any
            elsif C_S_AXI_DATA_WIDTH = 64 then -- 64-bit
                rx_np_req_cntr   <= 5;

            -- 32-bit: assert rx_np_req for 9 clock cycles, doing so will accept up to 9 NP packets
            -- if it has any
            else -- 32-bit
                rx_np_req_cntr   <= 9;
            end if; -- C_S_AXI_DATA_WIDTH
            
         else
            
            -- Request more NP packet if the pipeline still have some space
            if rx_np_req_cntr /= 0 then
                sig_rx_np_req    <= '1';
            else
                sig_rx_np_req    <= '0';
            end if;
            
            if np_pkt_complete(0) = '1' or np_pkt_complete(1) = '1' then
	        -- OR'ing because it can only be completion with data or without data but not both
                -- Increment one when completion is sent (a read request has been serviced), and
                --  there's no pending rx_np_req signal update
                -- If there's pending update, then it will be +1 then -1, so no change
                if rx_np_req_cntr = 0 then
                    rx_np_req_cntr   <= rx_np_req_cntr + 1;
                end if;
            else
                -- Decrement one if there's pending update
                if rx_np_req_cntr /= 0 then
                    rx_np_req_cntr   <= rx_np_req_cntr - 1;
                end if;
            end if;
            
         end if; -- axi_areset
      end if; -- axi_aclk
   end process;
end generate;

np_ok_mode: if C_TRN_NP_FC = "FALSE" generate begin
   disable_rx_np_ok              <= '1' when rdreqpipeline_d = "000" and rdndreqpipeline_d = "000" and sig_s_axis_cr_tlast = '1' else '0';
   sig_rx_np_ok                  <= rx_np_ok_int and (not(disable_rx_np_ok)) when C_S_AXI_DATA_WIDTH = 128 else rx_np_ok_int;
   sig_rx_np_req                 <= '1';

--**************************************************************************************************
-- This StateMachine will actively look for available NP Buffer space of MM/S MasterBridge Rd module
-- and make full use of rx_np_ok signal to control NP traffic on receive side. Hence avoids potential
-- PCIe-Rx Cpl buffer overflow problem
--**************************************************************************************************

   rx_np_ok_proc : process (axi_aclk_in)
   begin
      if(rising_edge(axi_aclk_in)) then
         if(axi_aresetn = '0') then
            rx_np_ok_int              <= '0';
            rx_np_ok_cntr             <= 0;
            pipe_latency_cntr         <= 0;
            rdreqpipeline_d           <= "000";
            rdndreqpipeline_d         <= "000";
            rx_np_okSM                <= INIT;
         else
            rdreqpipeline_d           <= rdreqpipeline;
            rdndreqpipeline_d         <= rdndreqpipeline;
            
            case rx_np_okSM is
            
            when INIT =>

               rx_np_ok_cntr      <= rx_np_ok_cntr;
	       pipe_latency_cntr  <= pipe_latency_cntr;
               -- De-assert rx_np_ok as soon as 1st NP TLP on CR interface is encountered
               -- Assumption here is pessimistic becuase there can be many back-2-back MRds
               -- In 128-bit mode, situation is worse as there could be 5 MRd back-to-back
               -- even if we de-assert rx_np_ok after encountering 1st NP TLP on CR interface
               if rdreqpipeline_d = "000" and rdndreqpipeline_d = "000" and 
                  sig_s_axis_cr_tlast = '1' then
                  rx_np_ok_int     <= '0';
                  rx_np_okSM       <= WAIT_PIPE_LATENCY;
               else
                  rx_np_ok_int     <= '1';
               end if;

            -- Wait for enough amout of time so that NP TLPs can propagate from Block to MM/S masterbridge rd
            -- and rdreqpipeline gets updated
            when WAIT_PIPE_LATENCY =>

               rx_np_ok_cntr        <= rx_np_ok_cntr;
               rx_np_ok_int         <= rx_np_ok_int;
               -- RX_PIPE_LATENCY is constant which is set to 12 based on best practices and assumption
               -- that MRds in-flight along with those block may give even after de-asserting rx_np_ok will be
               -- pipelined in MM/S masterbridge rd module successfully
               if pipe_latency_cntr = RX_PIPE_LATENCY then
                  rx_np_okSM        <= CHECK_NP_PIPELINE;
                  pipe_latency_cntr <= 0;
               else
                  pipe_latency_cntr <= pipe_latency_cntr + 1;
               end if;

            -- Check if there is some slot vacant to accomodate more MRd
            when CHECK_NP_PIPELINE =>

               pipe_latency_cntr   <= pipe_latency_cntr;
	       -- Pipeline is found empty... go to INIT state
               if rdreqpipeline_d = "000" and rdndreqpipeline_d = "000" then
                  rx_np_okSM       <= INIT;
                  rx_np_ok_int     <= '1';

               -- Pipeline is not empty but can accomodate more TLPs
               -- At this point, MM/S masterbridge rd can accomodate 3 additional NP TLP in 32/64-bit mode
               -- and 4 NP TLPs in 128-bit mode
               elsif rdreqpipeline_d = "001" or rdndreqpipeline_d = "001" then

                  -- 128-bit: assert rx_np_ok for 4 clock cycles and by doing so, block may throw 4 NP TLPs
                  -- if it will have any
                  if C_S_AXI_DATA_WIDTH = 128 then -- 128-bit
                     rx_np_ok_cntr    <= 4;

                  -- 64-bit: assert rx_np_ok for 6 clock cycles and by doing so, block may throw 3 NP TLPs
                  -- if it will have any
                  elsif C_S_AXI_DATA_WIDTH = 64 then -- 64-bit
                     rx_np_ok_cntr    <= 6;

                  -- 32-bit: assert rx_np_ok for 9 clock cycles and by doing so, block may throw 3 NP TLPs
                  -- if it will have any
                  else -- 32-bit
                     rx_np_ok_cntr    <= 9;
                  end if;

                  rx_np_okSM       <= ASSERT_NP_OK;

               -- At this point, MM/S masterbridge rd can accomodate 2 additional NP TLP in 32/64-bit mode
               -- and 3 NP TLPs in 128-bit mode
               elsif rdreqpipeline_d = "010" or rdndreqpipeline_d = "010" then

                  -- 32-bit: assert rx_np_ok for 6 clock cycles and by doing so, block may throw 2 NP TLPs
                  -- if it will have any
                  if C_S_AXI_DATA_WIDTH = 32 then -- 32-bit
                     rx_np_ok_cntr    <= 6;

                  -- 64/128-bit: assert rx_np_ok for 3 clock cycles and by doing so, block may throw 
                  -- 3 NP TLPs in 128-bit mode and 2 TLPs in 64-bit mode if it will have any
                  else -- 64/128-bit
                     rx_np_ok_cntr    <= 3;
                  end if;

                  rx_np_okSM       <= ASSERT_NP_OK;

               -- At this point, MM/S masterbridge rd can accomodate 1 additional NP TLP in 32/64-bit mode
               -- and 2 NP TLPs in 128-bit mode
               elsif rdreqpipeline_d = "011" or rdndreqpipeline_d = "011" then
                  rx_np_okSM       <= ASSERT_NP_OK;
                  rx_np_ok_cntr    <= 2;
               end if;

            -- SM will come to this state when rdreqpipeline will have available space sufficient enough to
            -- accomodate 1 or more MRd TLPs. This state retains rx_np_ok asserted for number of clock cycles
            -- programmed in rx_np_ok_cntr before next check iteration
            when ASSERT_NP_OK =>

               pipe_latency_cntr   <= pipe_latency_cntr;
	       if rx_np_ok_cntr = 0 then
                  rx_np_okSM       <= WAIT_PIPE_LATENCY;
                  rx_np_ok_int     <= '0';
               else
                  rx_np_ok_cntr    <= rx_np_ok_cntr - 1;
                  rx_np_ok_int     <= '1';
               end if;

            end case;

         end if;
      end if;
   end process;
end generate;

--***************************************************************************************************
-- Legacy and MSI interrupt logic
--***************************************************************************************************

   legacy_MSI_interrupt_proc : process (axi_aclk_in)
   begin
      if(rising_edge(axi_aclk_in)) then
         if(axi_aresetn = '0') then
            sig_blk_interrupt         <= '0';
            sig_blk_interrupt_assert  <= '0';
            sig_blk_interrupt_di      <= (others => '0');
            INTX_state                <= '0';
            legint_msiSM              <= NO_INTR;
            intx_msi_request_1d       <= '0';
            intx_msi_request_2d       <= '0';
            intx_msi_request_3d       <= '0';
            msi_vector_num_1d         <= (others => '0');
            msi_vector_num_2d         <= (others => '0');
            sig_intx_msi_grant        <= '0';
         elsif C_INCLUDE_RC = 0 then -- only for End Point
            intx_msi_request_1d       <= sig_intx_msi_request;
            intx_msi_request_2d       <= intx_msi_request_1d;
            intx_msi_request_3d       <= intx_msi_request_2d;
            msi_vector_num_1d         <= sig_msi_vector_num;
            msi_vector_num_2d         <= msi_vector_num_1d;
            case legint_msiSM is

               when NO_INTR =>
                  if sig_blk_interrupt_msienable = '1' then
                     if intx_msi_request_2d = '1' and intx_msi_request_3d = '0' then --positive edge detect
                        sig_blk_interrupt         <= '1';
                        sig_blk_interrupt_assert  <= '0';
                        sig_blk_interrupt_di      <= ("000" & msi_vector_num_2d);
                        legint_msiSM              <= INTR_HS;
                     end if;
                  else
                     if sig_intx_msi_request /= INTX_state then
                        sig_blk_interrupt         <= '1';
                        sig_blk_interrupt_assert  <= sig_intx_msi_request;
                        sig_blk_interrupt_di      <= SELECTED_INT;
                        INTX_state                <= sig_intx_msi_request;
                        legint_msiSM              <= INTR_HS;
                     end if;
                  end if;
                  sig_intx_msi_grant  <= '0';

               when INTR_HS =>
                  INTX_state                   <= INTX_state;
		  if sig_blk_interrupt_rdy = '1' then
                     sig_blk_interrupt         <= '0';
                     sig_blk_interrupt_assert  <= '0';
                     sig_blk_interrupt_di      <= (others => '0');
                     legint_msiSM              <= NO_INTR;
                     sig_intx_msi_grant        <= '1';
                  end if;

            end case;
         end if;
      end if;
   end process;

   comp_axi_pcie_mm_s: entity axi_pcie_v2_8_0.axi_pcie_mm_s
    generic map(
      --Family Generics
      -- C_FAMILY                      => C_FAMILY_I,
      C_FAMILY                      => C_FAMILY,  -- MM/S bridge gets derivative C_FAMILY parameter      
      C_S_AXI_ID_WIDTH              => C_S_AXI_ID_WIDTH,
      --C_M_AXI_THREAD_ID_WIDTH       => C_M_AXI_THREAD_ID_WIDTH,
      C_S_AXI_ADDR_WIDTH            => C_S_AXI_ADDR_WIDTH,
      C_S_AXI_DATA_WIDTH            => C_S_AXI_DATA_WIDTH,
      C_M_AXI_ADDR_WIDTH            => C_M_AXI_ADDR_WIDTH,
      C_M_AXI_DATA_WIDTH            => C_M_AXI_DATA_WIDTH,
      C_S_AXIS_DATA_WIDTH           => C_S_AXIS_DATA_WIDTH,
      C_M_AXIS_DATA_WIDTH           => C_M_AXIS_DATA_WIDTH,
      C_COMP_TIMEOUT                => C_COMP_TIMEOUT,
      C_USER_CLK_FREQ               => USER_CLK_FREQ,
      C_USER_CLK2_DIV2              => USER_CLK2_DIV2,
      C_INCLUDE_RC                  => C_INCLUDE_RC,
      C_S_AXI_SUPPORTS_NARROW_BURST => C_S_AXI_SUPPORTS_NARROW_BURST,
      C_EP_LINK_PARTNER_RCB         => EP_LINK_PARTNER_RCB,
      C_INCLUDE_BAROFFSET_REG       => C_INCLUDE_BAROFFSET_REG,
      C_AXIREAD_NUM                 => C_AXIREAD_NUM,   -- CR # 646225
      C_AXIBAR_NUM                  => C_AXIBAR_NUM,
      C_AXIBAR2PCIEBAR_0            => C_AXIBAR2PCIEBAR_0,
      C_AXIBAR2PCIEBAR_1            => C_AXIBAR2PCIEBAR_1,
      C_AXIBAR2PCIEBAR_2            => C_AXIBAR2PCIEBAR_2,
      C_AXIBAR2PCIEBAR_3            => C_AXIBAR2PCIEBAR_3,
      C_AXIBAR2PCIEBAR_4            => C_AXIBAR2PCIEBAR_4,
      C_AXIBAR2PCIEBAR_5            => C_AXIBAR2PCIEBAR_5,
      C_AXIBAR_AS_0                 => C_AXIBAR_AS_0,
      C_AXIBAR_AS_1                 => C_AXIBAR_AS_1,
      C_AXIBAR_AS_2                 => C_AXIBAR_AS_2,
      C_AXIBAR_AS_3                 => C_AXIBAR_AS_3,
      C_AXIBAR_AS_4                 => C_AXIBAR_AS_4,
      C_AXIBAR_AS_5                 => C_AXIBAR_AS_5,
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
      C_AXIBAR_HIGHADDR_5           => C_AXIBAR_HIGHADDR_5,
      C_PCIEBAR_NUM                 => C_PCIEBAR_NUM,
      C_PCIEBAR_AS                  => C_PCIEBAR_AS,
      C_PCIEBAR_LEN_0               => C_PCIEBAR_LEN_0,
      C_PCIEBAR2AXIBAR_0            => C_PCIEBAR2AXIBAR_0,
      C_PCIEBAR2AXIBAR_0_SEC        => C_PCIEBAR2AXIBAR_0_SEC,
      C_PCIEBAR_LEN_1               => C_PCIEBAR_LEN_1,
      C_PCIEBAR2AXIBAR_1            => C_PCIEBAR2AXIBAR_1,
      C_PCIEBAR2AXIBAR_1_SEC        => C_PCIEBAR2AXIBAR_1_SEC,
      C_PCIEBAR_LEN_2               => C_PCIEBAR_LEN_2,
      C_PCIEBAR2AXIBAR_2            => C_PCIEBAR2AXIBAR_2,
      C_PCIEBAR2AXIBAR_2_SEC        => C_PCIEBAR2AXIBAR_2_SEC,
      C_S_AXIS_USER_WIDTH           => C_S_AXIS_USER_WIDTH,
      C_TRN_NP_FC                   => C_TRN_NP_FC
    )
    port map(
      -- AXI Global
      axi_aclk                => axi_aclk_in,
      reset                   => axi_aresetn,

      -- AXI Slave Write Address Channel
      s_axi_awid              => s_axi_awid,
      s_axi_awaddr            => s_axi_awaddr,
      s_axi_awregion          => s_axi_awregion,
      s_axi_awlen             => s_axi_awlen,
      s_axi_awsize            => s_axi_awsize,
      s_axi_awburst           => s_axi_awburst,
      s_axi_awvalid           => s_axi_awvalid,
      s_axi_awready           => s_axi_awready,

      -- AXI Slave Write Data Channel
      s_axi_wdata             => s_axi_wdata,
      s_axi_wstrb             => s_axi_wstrb,
      s_axi_wlast             => s_axi_wlast,
      s_axi_wvalid            => s_axi_wvalid,
      s_axi_wready            => s_axi_wready,

      -- AXI Slave Write Response Channel
      s_axi_bid               => s_axi_bid,
      s_axi_bresp             => s_axi_bresp,
      s_axi_bvalid            => s_axi_bvalid,
      s_axi_bready            => s_axi_bready,

      -- AXI Slave Read Address Channel
      s_axi_arid              => s_axi_arid,
      s_axi_araddr            => s_axi_araddr,
      s_axi_arregion          => s_axi_arregion,
      s_axi_arlen             => s_axi_arlen,
      s_axi_arsize            => s_axi_arsize,
      s_axi_arburst           => s_axi_arburst,
      s_axi_arvalid           => s_axi_arvalid,
      s_axi_arready           => s_axi_arready,

      -- AXI Slave Read Data Channel
      s_axi_rid               => s_axi_rid,
      s_axi_rdata             => s_axi_rdata,
      s_axi_rresp             => s_axi_rresp,
      s_axi_rlast             => s_axi_rlast,
      s_axi_rvalid            => s_axi_rvalid,
      s_axi_rready            => s_axi_rready,

      -- AXIS Write Requester Channel
      m_axis_rw_tdata         => sig_m_axis_rw_tdata,
      m_axis_rw_tstrb         => sig_m_axis_rw_tstrb,
      m_axis_rw_tlast         => sig_m_axis_rw_tlast,
      m_axis_rw_tvalid        => sig_m_axis_rw_tvalid,
      m_axis_rw_tready        => sig_m_axis_rw_tready,

      -- AXIS Read Requester Channel
      m_axis_rr_tdata         => sig_m_axis_rr_tdata,
      m_axis_rr_tstrb         => sig_m_axis_rr_tstrb,
      m_axis_rr_tlast         => sig_m_axis_rr_tlast,
      m_axis_rr_tvalid        => sig_m_axis_rr_tvalid,
      m_axis_rr_tready        => sig_m_axis_rr_tready,

      -- AXIS Completion Requester Channel
      s_axis_rc_tdata         => sig_s_axis_rc_tdata,
      s_axis_rc_tstrb         => sig_s_axis_rc_tstrb,
      s_axis_rc_tlast         => sig_s_axis_rc_tlast,
      s_axis_rc_tvalid        => sig_s_axis_rc_tvalid,
      s_axis_rc_tready        => sig_s_axis_rc_tready,

      -- AXI Master Write Address Channel
      m_axi_awaddr            => m_axi_awaddr,
      m_axi_awlen             => m_axi_awlen,
      m_axi_awsize            => m_axi_awsize,
      m_axi_awburst           => m_axi_awburst,
      m_axi_awprot            => m_axi_awprot,
      m_axi_awvalid           => m_axi_awvalid,
      m_axi_awready           => m_axi_awready,
      --m_axi_awid              => m_axi_awid,
      m_axi_awlock            => m_axi_awlock,
      m_axi_awcache           => m_axi_awcache,

      -- AXI Master Write Data Channel
      m_axi_wdata             => m_axi_wdata,
      m_axi_wstrb             => m_axi_wstrb,
      m_axi_wlast             => m_axi_wlast,
      m_axi_wvalid            => m_axi_wvalid,
      m_axi_wready            => m_axi_wready,

      -- AXI Master Write Response Channel
      m_axi_bresp             => m_axi_bresp,
      m_axi_bvalid            => m_axi_bvalid,
      m_axi_bready            => m_axi_bready,

      -- AXI Master Read Address Channel
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

      -- AXI Master Read Data Channel
      m_axi_rdata             => m_axi_rdata,
      m_axi_rresp             => m_axi_rresp,
      m_axi_rlast             => m_axi_rlast,
      m_axi_rvalid            => m_axi_rvalid,
      m_axi_rready            => m_axi_rready,

      -- AXIS Write Completer Channel
      s_axis_cw_tdata         => sig_s_axis_cw_tdata,
      s_axis_cw_tstrb         => sig_s_axis_cw_tstrb,
      s_axis_cw_tlast         => sig_s_axis_cw_tlast,
      s_axis_cw_tvalid        => sig_s_axis_cw_tvalid,
      s_axis_cw_tready        => sig_s_axis_cw_tready,
      s_axis_cw_tuser         => sig_s_axis_cw_tuser,
      
      -- AXIS Read Completer Channel
      s_axis_cr_tdata         => sig_s_axis_cr_tdata,
      s_axis_cr_tstrb         => sig_s_axis_cr_tstrb,
      s_axis_cr_tlast         => sig_s_axis_cr_tlast,
      s_axis_cr_tvalid        => sig_s_axis_cr_tvalid,
      s_axis_cr_tready        => sig_s_axis_cr_tready,
      s_axis_cr_tuser         => sig_s_axis_cr_tuser,

      -- AXIS Completion Completer Channel
      m_axis_cc_tdata         => sig_m_axis_cc_tdata,
      m_axis_cc_tstrb         => sig_m_axis_cc_tstrb,
      m_axis_cc_tlast         => sig_m_axis_cc_tlast,
      m_axis_cc_tvalid        => sig_m_axis_cc_tvalid,
      m_axis_cc_tready        => sig_m_axis_cc_tready,
      m_axis_cc_tuser         => sig_m_axis_cc_tuser,

      -- AXI-Lite Slave IPIC
      IP2Bus_Data             => sig_IP2Bus_Data,
      IP2Bus_WrAck            => sig_IP2Bus_WrAck,
      IP2Bus_RdAck            => sig_IP2Bus_RdAck,
      IP2Bus_Error            => sig_IP2Bus_Error,
      Bus2IP_Addr             => sig_Bus2IP_Addr,
      Bus2IP_Data             => sig_Bus2IP_Data,
      Bus2IP_RNW              => sig_Bus2IP_RNW,
      Bus2IP_BE               => sig_Bus2IP_BE,
      Bus2IP_CS               => sig_Bus2IP_CS,

      -- AXI-S Block Interface
      blk_lnk_up              => sig_blk_lnk_up,
      blk_bus_number          => sig_blk_bus_number,
      blk_device_number       => sig_blk_device_number,
      blk_function_number     => sig_blk_function_number,
      blk_command             => sig_blk_command,
      blk_dcontrol            => sig_blk_dcontrol,
      blk_lstatus             => sig_blk_lstatus,
      np_cpl_pending          => np_cpl_pending,-- out  std_logic;
      RP_bridge_en            => RP_bridge_en,

      --Interrupt Strobes
      SUR_int                 => sig_SUR_int,
      SUC_int                 => sig_SUC_int,
      SCT_int                 => sig_SCT_int,
      SEP_int                 => sig_SEP_int,
      SCA_int                 => sig_SCA_int,
      SIB_int                 => sig_SIB_int,
      MDE_int                 => sig_MDE_int, -- Master DECERR interrupt
      MSE_int                 => sig_MSE_int, -- Master SLVERR interrupt
      MEP_int                 => sig_MEP_int, -- Slave Error Poison interrupt
      --MLE_int                 => sig_MLE_int, -- Link Down interrupt
      --MEC_int                 => sig_MEC_int  -- ECRC Error interrupt
      
      -- signals used to keep track NP buffer availability
-- Signals for np_req_mode: if C_TRN_NP_FC = "TRUE"
      np_pkt_complete         => np_pkt_complete,
-- End np_req_mode signals
      
-- Signals for np_ok_mode: if C_TRN_NP_FC = "FALSE"
      rdndreqpipeline         => rdndreqpipeline,
      rdreqpipeline           => rdreqpipeline,
-- End np_ok_mode signals

      config_gen_req          => config_gen_req
    );

   comp_axi_enhanced_pcie: entity axi_pcie_v2_8_0.axi_enhanced_pcie
    generic map(
      C_DATA_WIDTH                             => C_S_AXIS_DATA_WIDTH,
      STRB_WIDTH                               => C_S_AXIS_DATA_WIDTH/8,
      NO_SLV_ERR                               => NO_SLV_ERR,
      BAR0_U                                   => BAR0_U,
      BAR0_L                                   => BAR0_L,
      BAR1_U                                   => BAR1_U,
      BAR1_L                                   => BAR1_L,
      BAR2_U                                   => BAR2_U,
      BAR2_L                                   => BAR2_L,
      BAR3_U                                   => BAR3_U,
      BAR3_L                                   => BAR3_L,
      BAR4_U                                   => BAR4_U,
      BAR4_L                                   => BAR4_L,
      BAR5_U                                   => BAR5_U,
      BAR5_L                                   => BAR5_L,
      CARDBUS_CIS_POINTER                      => conv_integer(x"00000000"),
      CLASS_CODE                               => conv_integer(C_CLASS_CODE),
      CMD_INTX_IMPLEMENTED                     => "TRUE",
      CPL_TIMEOUT_DISABLE_SUPPORTED            => "FALSE",
      CPL_TIMEOUT_RANGES_SUPPORTED             => conv_integer(x"0"),-- 2
      DEV_CAP_EXT_TAG_SUPPORTED                => "TRUE",
      DEV_CAP_MAX_PAYLOAD_SUPPORTED            => 1,-- 256 bytes
      DEV_CAP_PHANTOM_FUNCTIONS_SUPPORT        => 1,
      DEVICE_ID                                => conv_integer(C_DEVICE_ID),
      DISABLE_LANE_REVERSAL                    => "TRUE",    -- CR # 618714 "FALSE",
      DISABLE_SCRAMBLING                       => "FALSE",
      DSN_BASE_PTR                             => conv_integer(x"100"),
      DSN_CAP_NEXTPTR                          => conv_integer(x"000"),
      DSN_CAP_ON                               => "TRUE",
      ENABLE_MSG_ROUTE                         => conv_integer(x"27f"),
      ENABLE_RX_TD_ECRC_TRIM                   => "TRUE",
      EXPANSION_ROM_U                          => 0,
      EXPANSION_ROM_L                          => 0, 
      EXT_CFG_CAP_PTR                          => conv_integer(x"3f"),
      EXT_CFG_XP_CAP_PTR                       => conv_integer(x"3ff"),
      HEADER_TYPE                              => C_INCLUDE_RC,
      INTERRUPT_PIN                            => C_INTERRUPT_PIN, --: integer:= conv_integer(x"00"),
      LINK_CAP_DLL_LINK_ACTIVE_REPORTING_CAP   => LINK_CAP_DLL_LINK_ACTIVE_REPORTING_CAP_LOCAL,
      LINK_CAP_LINK_BANDWIDTH_NOTIFICATION_CAP => "FALSE",
      LINK_CAP_MAX_LINK_SPEED                  => C_MAX_LINK_SPEED+1, -- 2.5 GT/s, 5.0 GT/s
      LINK_CAP_MAX_LINK_WIDTH                  => C_NO_OF_LANES,
      LINK_CAP_SURPRISE_DOWN_ERROR_CAPABLE     => "FALSE",
      LINK_CONTROL_RCB                         => 0,
      LINK_CTRL2_DEEMPHASIS                    => "FALSE",
      LINK_CTRL2_HW_AUTONOMOUS_SPEED_DISABLE   => "FALSE",
      LINK_CTRL2_TARGET_LINK_SPEED             => C_MAX_LINK_SPEED+1, -- 2.5 GT/s, 5.0 GT/s
      LINK_STATUS_SLOT_CLOCK_CONFIG            => C_SLOT_CLOCK_CONFIG,
      LL_ACK_TIMEOUT                           => conv_integer(x"0000"),
      LL_ACK_TIMEOUT_EN                        => "FALSE",
      LL_ACK_TIMEOUT_FUNC                      => 0,
      LL_REPLAY_TIMEOUT                        => LL_REPLAY_TIMEOUT,
      LL_REPLAY_TIMEOUT_EN                     => LL_REPLAY_TIMEOUT_EN,
      LL_REPLAY_TIMEOUT_FUNC                   => 1,
      LTSSM_MAX_LINK_WIDTH                     => C_NO_OF_LANES,
      MSI_DECODE_ENABLE                        => C_MSI_DECODE_ENABLE,
      MSI_CAP_MULTIMSGCAP                      => C_NUM_MSI_REQ,
      MSI_CAP_MULTIMSG_EXTENSION               => 0,
      MSI_CAP_ON                               => "TRUE",
      MSI_CAP_PER_VECTOR_MASKING_CAPABLE       => MSI_CAP_PER_VECTOR_MASKING_CAPABLE,
      MSI_CAP_64_BIT_ADDR_CAPABLE              => "TRUE",

      MSIX_CAP_ON                              => "FALSE",
      MSIX_CAP_PBA_BIR                         => 0,
      MSIX_CAP_PBA_OFFSET                      => conv_integer(x"00000050"),
      MSIX_CAP_TABLE_BIR                       => 0,
      MSIX_CAP_TABLE_OFFSET                    => conv_integer(x"00000040"),
      MSIX_CAP_TABLE_SIZE                      => conv_integer(x"000"),

      PCIE_CAP_DEVICE_PORT_TYPE                => PCIE_CAP_DEVICE_PORT_TYPE,
      PCIE_CAP_INT_MSG_NUM                     => conv_integer(x"00"),
      PCIE_CAP_NEXTPTR                         => conv_integer(x"00"),
      PCIE_DRP_ENABLE                          => "FALSE",
      PIPE_PIPELINE_STAGES                     => PIPE_PIPELINE_STAGES,  -- 0 - 0 stages, 1 - 1 stage, 2 - 2 stages

      PM_CAP_DSI                               => "TRUE",
      PM_CAP_D1SUPPORT                         => "FALSE",
      PM_CAP_D2SUPPORT                         => "FALSE",
      PM_CAP_NEXTPTR                           => conv_integer(x"48"),
      PM_CAP_PMESUPPORT                        => conv_integer(x"00"),
      PM_CSR_NOSOFTRST                         => "TRUE",

      PM_DATA_SCALE0                           => conv_integer(x"0"),
      PM_DATA_SCALE1                           => conv_integer(x"0"),
      PM_DATA_SCALE2                           => conv_integer(x"0"),
      PM_DATA_SCALE3                           => conv_integer(x"0"),
      PM_DATA_SCALE4                           => conv_integer(x"0"),
      PM_DATA_SCALE5                           => conv_integer(x"0"),
      PM_DATA_SCALE6                           => conv_integer(x"0"),
      PM_DATA_SCALE7                           => conv_integer(x"0"),

      PM_DATA0                                 => conv_integer(x"00"),
      PM_DATA1                                 => conv_integer(x"00"),
      PM_DATA2                                 => conv_integer(x"00"),
      PM_DATA3                                 => conv_integer(x"00"),
      PM_DATA4                                 => conv_integer(x"00"),
      PM_DATA5                                 => conv_integer(x"00"),
      PM_DATA6                                 => conv_integer(x"00"),
      PM_DATA7                                 => conv_integer(x"00"),
      REF_CLK_FREQ                             => C_REF_CLK_FREQ,-- 0 - 100 MHz, 1 - 125 MHz, 2 - 250 MHz
      REVISION_ID                              => conv_integer(C_REV_ID),
      ROOT_CAP_CRS_SW_VISIBILITY               => "FALSE",
      SPARE_BIT0                               => 0,
      SUBSYSTEM_ID                             => conv_integer(C_SUBSYSTEM_ID),
      SUBSYSTEM_VENDOR_ID                      => conv_integer(C_SUBSYSTEM_VENDOR_ID),
      SLOT_CAP_ATT_BUTTON_PRESENT              => "FALSE",
      SLOT_CAP_ATT_INDICATOR_PRESENT           => "FALSE",
      SLOT_CAP_ELEC_INTERLOCK_PRESENT          => "FALSE",
      SLOT_CAP_HOTPLUG_CAPABLE                 => "FALSE",
      SLOT_CAP_HOTPLUG_SURPRISE                => "FALSE",
      SLOT_CAP_MRL_SENSOR_PRESENT              => "FALSE",
      SLOT_CAP_NO_CMD_COMPLETED_SUPPORT        => "FALSE",
      SLOT_CAP_PHYSICAL_SLOT_NUM               => conv_integer(x"0000"),
      SLOT_CAP_POWER_CONTROLLER_PRESENT        => "FALSE",
      SLOT_CAP_POWER_INDICATOR_PRESENT         => "FALSE",
      SLOT_CAP_SLOT_POWER_LIMIT_SCALE          => 0,
      SLOT_CAP_SLOT_POWER_LIMIT_VALUE          => conv_integer(x"00"),
      TL_RX_RAM_RADDR_LATENCY                  => 0,
      TL_RX_RAM_RDATA_LATENCY                  => 2,
      TL_RX_RAM_WRITE_LATENCY                  => 0,
      TL_TX_RAM_RADDR_LATENCY                  => 0,
      TL_TX_RAM_RDATA_LATENCY                  => 2,
      TL_TX_RAM_WRITE_LATENCY                  => 0,

      UPCONFIG_CAPABLE                         => "TRUE",
      UPSTREAM_FACING                          => UPSTREAM_FACING,
      USER_CLK_FREQ                            => USER_CLK_FREQ,
      VC_BASE_PTR                              => conv_integer(x"10C"),
      VC_CAP_NEXTPTR                           => conv_integer(x"000"),
      VC_CAP_ON                                => "FALSE",
      VC_CAP_REJECT_SNOOP_TRANSACTIONS         => "FALSE",

      VC0_CPL_INFINITE                         => "TRUE",
      VC0_RX_RAM_LIMIT                         => VC0_RX_RAM_LIMIT,
      VC0_TOTAL_CREDITS_CD                     => VC0_TOTAL_CREDITS_CD,
      VC0_TOTAL_CREDITS_CH                     => VC0_TOTAL_CREDITS_CH,
      VC0_TOTAL_CREDITS_NPH                    => VC0_TOTAL_CREDITS_NPH,
      VC0_TOTAL_CREDITS_PD                     => VC0_TOTAL_CREDITS_PD,
      VC0_TOTAL_CREDITS_PH                     => 32,
      VC0_TX_LASTPACKET                        => 28,
      VENDOR_ID                                => conv_integer(C_VENDOR_ID),
      VSEC_BASE_PTR                            => conv_integer(x"000"),
      VSEC_CAP_NEXTPTR                         => conv_integer(x"000"),
      VSEC_CAP_ON                              => "FALSE",

      ALLOW_X8_GEN2                            => "FALSE",
      AER_BASE_PTR                             => conv_integer(x"000"),
      AER_CAP_ECRC_CHECK_CAPABLE               => "FALSE",
      AER_CAP_ECRC_GEN_CAPABLE                 => "FALSE",
      AER_CAP_ID                               => conv_integer(x"0001"),
      AER_CAP_INT_MSG_NUM_MSI                  => conv_integer(x"0a"),
      AER_CAP_INT_MSG_NUM_MSIX                 => conv_integer(x"15"),
      AER_CAP_NEXTPTR                          => conv_integer(x"160"),
      AER_CAP_ON                               => "FALSE",
      AER_CAP_PERMIT_ROOTERR_UPDATE            => "TRUE",
      AER_CAP_VERSION                          => conv_integer(x"1"),

      CAPABILITIES_PTR                         => conv_integer(x"40"),
      CRM_MODULE_RSTS                          => conv_integer(x"00"),
      DEV_CAP_ENDPOINT_L0S_LATENCY             => 0,
      DEV_CAP_ENDPOINT_L1_LATENCY              => 0,
      DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE     => "FALSE",
      DEV_CAP_ROLE_BASED_ERROR                 => "TRUE",
      DEV_CAP_RSVD_14_12                       => 0,
      DEV_CAP_RSVD_17_16                       => 0,
      DEV_CAP_RSVD_31_29                       => 0,
      DEV_CAP_ENABLE_SLOT_PWR_LIMIT_SCALE      => "TRUE",
      DEV_CAP_ENABLE_SLOT_PWR_LIMIT_VALUE      => "TRUE",
      DEV_CONTROL_AUX_POWER_SUPPORTED          => "FALSE",

      DISABLE_ASPM_L1_TIMER                    => "FALSE",
      DISABLE_BAR_FILTERING                    => "FALSE",
      DISABLE_ID_CHECK                         => "FALSE",
      DISABLE_RX_TC_FILTER                     => "FALSE",
      DNSTREAM_LINK_NUM                        => conv_integer(x"00"),

      DS_PORT_HOT_RST                          => "FALSE",  -- FALSE - for ROOT PORT(default), TRUE - for DOWNSTREAM PORT 
      DSN_CAP_ID                               => conv_integer(x"0003"),
      DSN_CAP_VERSION                          => conv_integer(x"1"),
      ENTER_RVRY_EI_L0                         => "TRUE",
      INFER_EI                                 => conv_integer(x"00"),
      IS_SWITCH                                => "FALSE",

      LAST_CONFIG_DWORD                        => conv_integer(x"042"),
      LINK_CAP_ASPM_SUPPORT                    => 1,
      LINK_CAP_CLOCK_POWER_MANAGEMENT          => "FALSE",
      LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN1    => 7,
      LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN2    => 7,
      LINK_CAP_L0S_EXIT_LATENCY_GEN1           => 7,
      LINK_CAP_L0S_EXIT_LATENCY_GEN2           => 7,
      LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN1     => 7,
      LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN2     => 7,
      LINK_CAP_L1_EXIT_LATENCY_GEN1            => 7,
      LINK_CAP_L1_EXIT_LATENCY_GEN2            => 7,
      LINK_CAP_RSVD_23_22                      => 0,

      MSI_BASE_PTR                             => conv_integer(x"48"),
      MSI_CAP_ID                               => conv_integer(x"05"),
      MSI_CAP_NEXTPTR                          => conv_integer(x"60"),
      MSIX_BASE_PTR                            => conv_integer(x"9c"),
      MSIX_CAP_ID                              => conv_integer(x"11"),
      MSIX_CAP_NEXTPTR                         => conv_integer(x"00"),
      N_FTS_COMCLK_GEN1                        => 255,
      N_FTS_COMCLK_GEN2                        => 254,
      N_FTS_GEN1                               => 255,
      N_FTS_GEN2                               => 255,

      PCIE_BASE_PTR                            => conv_integer(x"60"),
      PCIE_CAP_CAPABILITY_ID                   => conv_integer(x"10"),
      PCIE_CAP_CAPABILITY_VERSION              => PCIE_CAP_CAPABILITY_VERSION,
      PCIE_CAP_ON                              => "TRUE",
      PCIE_CAP_RSVD_15_14                      => 0,
      PCIE_CAP_SLOT_IMPLEMENTED                => CON_PCIE_CAP_SLOT_IMPLEMENTED,
      PCIE_REVISION                            => 2,
      PGL0_LANE                                => 0,
      PGL1_LANE                                => 1,
      PGL2_LANE                                => 2,
      PGL3_LANE                                => 3,
      PGL4_LANE                                => 4,
      PGL5_LANE                                => 5,
      PGL6_LANE                                => 6,
      PGL7_LANE                                => 7,
      PL_AUTO_CONFIG                           => 1,
      PL_FAST_TRAIN                            => C_PL_FAST_TRAIN_LOCAL,
      PCIE_EXT_CLK                             => PCIE_EXT_CLK,
      PCIE_EXT_GT_COMMON 		       => PCIE_EXT_GT_COMMON,
      EXT_CH_GT_DRP 			       => EXT_CH_GT_DRP,

      TX_MARGIN_FULL_0                         => conv_integer (x"4F"),
      TX_MARGIN_FULL_1                         => conv_integer (x"4e"),
      TX_MARGIN_FULL_2                         => conv_integer (x"4d"),
      TX_MARGIN_FULL_3                         => conv_integer (x"4c"),
      TX_MARGIN_FULL_4                         => conv_integer (x"43"),
      TX_MARGIN_LOW_0                          => conv_integer (x"45"),
      TX_MARGIN_LOW_1                          => conv_integer (x"46"),
      TX_MARGIN_LOW_2                          => conv_integer (x"43"),
      TX_MARGIN_LOW_3                          => conv_integer (x"42"),
      TX_MARGIN_LOW_4                          => conv_integer  (x"40"),
      PM_BASE_PTR                              => conv_integer(x"40"),
      PM_CAP_AUXCURRENT                        => 0,
      PM_CAP_ID                                => conv_integer(x"01"),
      PM_CAP_ON                                => "TRUE",
      PM_CAP_PME_CLOCK                         => "FALSE",
      PM_CAP_RSVD_04                           => 0,
      PM_CAP_VERSION                           => 3,
      PM_CSR_BPCCEN                            => "FALSE",
      PM_CSR_B2B3                              => "FALSE",
      RECRC_CHK                                => 0,
      RECRC_CHK_TRIM                           => "FALSE",
      SELECT_DLL_IF                            => "FALSE",
      SPARE_BIT1                               => 0,
      SPARE_BIT2                               => 0,
      SPARE_BIT3                               => 0,
      SPARE_BIT4                               => 0,
      SPARE_BIT5                               => 0,
      SPARE_BIT6                               => 0,
      SPARE_BIT7                               => 0,
      SPARE_BIT8                               => 0,
      SPARE_BYTE0                              => conv_integer(x"00"),
      SPARE_BYTE1                              => conv_integer(x"00"),
      SPARE_BYTE2                              => conv_integer(x"00"),
      SPARE_BYTE3                              => conv_integer(x"00"),
      SPARE_WORD0                              => conv_integer(x"00000000"),
      SPARE_WORD1                              => conv_integer(x"00000000"),
      SPARE_WORD2                              => conv_integer(x"00000000"),
      SPARE_WORD3                              => conv_integer(x"00000000"),

      TL_RBYPASS                               => "FALSE",
      TL_TFC_DISABLE                           => "FALSE",
      TL_TX_CHECKS_DISABLE                     => "FALSE",
      EXIT_LOOPBACK_ON_EI                      => "TRUE",
      UR_INV_REQ                               => "TRUE",

      VC_CAP_ID                                => conv_integer(x"0002"),
      VC_CAP_VERSION                           => conv_integer(x"1"),
      VSEC_CAP_HDR_ID                          => conv_integer(x"1234"),
      VSEC_CAP_HDR_LENGTH                      => conv_integer(x"018"),
      VSEC_CAP_HDR_REVISION                    => conv_integer(x"1"),
      VSEC_CAP_ID                              => conv_integer(x"000b"),
      VSEC_CAP_IS_LINK_VISIBLE                 => "FALSE",
      VSEC_CAP_VERSION                         => conv_integer(x"1"),
      C_BASEADDR_U                             => conv_integer(BASEADDR_U),-- AXI Lite Base Address upper
      C_BASEADDR_L                             => conv_integer(BASEADDR_L),-- AXI Lite Base Address lower
      C_HIGHADDR_U                             => conv_integer(HIGHADDR_U),-- AXI Lite High Address upper
      C_HIGHADDR_L                             => conv_integer(HIGHADDR_L),-- AXI Lite High Address lower
      C_MAX_LNK_WDT                            => 1,                    -- Maximum Number of PCIE Lanes
      C_ROOT_PORT                              => ROOT_PORT,            -- PCIe block is in root port mode
      C_RP_BAR_HIDE                            => C_RP_BAR_HIDE,        -- Hide RP PCIe BAR (prevent CPU from assigning address to RP BAR)
      C_RX_REALIGN                             => "FALSE",                -- Enable or Disable Realignment at RX Interface
      C_RX_PRESERVE_ORDER                      => "FALSE",               -- Preserve WR/ RD Ordering at the RX Interface
      C_LAST_CORE_CAP_ADDR                     => conv_integer(x"100"), -- DWORD address of last enabled block capability
      C_VSEC_CAP_ADDR                          => conv_integer(x"128"), -- DWORD address of start of VSEC Header
      C_VSEC_CAP_LAST                          => VSEC_CAP_LAST,
      C_VSEC_ID                                => conv_integer(x"0001"),
      C_DEVICE_NUMBER                          => 0,                    -- Device number for Root Port configurations only
      C_NUM_USER_INTR                          => NUM_OF_INTERRUPTS,
      C_USER_PTR                               => conv_integer(x"D8"),
      C_COMP_TIMEOUT                           => C_COMP_TIMEOUT,
      C_FAMILY                                 => FAMILY,
      USR_CFG                                  => "FALSE",
      USR_EXT_CFG                              => "FALSE",
      LINK_CAP_L0S_EXIT_LATENCY                => 7,
      LINK_CAP_L1_EXIT_LATENCY                 => 7,
      PLM_AUTO_CONFIG                          => "FALSE",
      FAST_TRAIN                               => C_PL_FAST_TRAIN_LOCAL,
      PCIE_GENERIC                             => PCIE_GENERIC, --conv_integer("000011101111"),
      GTP_SEL                                  => 0,
      CFG_VEN_ID                               => conv_integer(C_VENDOR_ID),
      CFG_DEV_ID                               => conv_integer(C_DEVICE_ID),
      CFG_REV_ID                               => conv_integer(C_REV_ID),
      CFG_SUBSYS_VEN_ID                        => conv_integer(C_SUBSYSTEM_VENDOR_ID),
      CFG_SUBSYS_ID                            => conv_integer(C_SUBSYSTEM_ID),

      AER_CAP_MULTIHEADER                      => "FALSE",
      AER_CAP_OPTIONAL_ERR_SUPPORT             => conv_integer(x"000000"),
      DEV_CAP2_ARI_FORWARDING_SUPPORTED        => "FALSE",
      DEV_CAP2_ATOMICOP32_COMPLETER_SUPPORTED  => "FALSE",
      DEV_CAP2_ATOMICOP64_COMPLETER_SUPPORTED  => "FALSE",
      DEV_CAP2_ATOMICOP_ROUTING_SUPPORTED      => "FALSE",
      DEV_CAP2_CAS128_COMPLETER_SUPPORTED      => "FALSE",
      DEV_CAP2_TPH_COMPLETER_SUPPORTED         => conv_integer("00"),
      DEV_CONTROL_EXT_TAG_DEFAULT              => "FALSE",
      DISABLE_RX_POISONED_RESP                 => "FALSE",
      LINK_CAP_ASPM_OPTIONALITY                => "FALSE",
      RBAR_BASE_PTR                            => conv_integer(x"000"),
      RBAR_CAP_CONTROL_ENCODEDBAR0             => conv_integer(x"00"),
      RBAR_CAP_CONTROL_ENCODEDBAR1             => conv_integer(x"00"),
      RBAR_CAP_CONTROL_ENCODEDBAR2             => conv_integer(x"00"),
      RBAR_CAP_CONTROL_ENCODEDBAR3             => conv_integer(x"00"),
      RBAR_CAP_CONTROL_ENCODEDBAR4             => conv_integer(x"00"),
      RBAR_CAP_CONTROL_ENCODEDBAR5             => conv_integer(x"00"),
      RBAR_CAP_INDEX0                          => conv_integer(x"0"),
      RBAR_CAP_INDEX1                          => conv_integer(x"0"),
      RBAR_CAP_INDEX2                          => conv_integer(x"0"),
      RBAR_CAP_INDEX3                          => conv_integer(x"0"),
      RBAR_CAP_INDEX4                          => conv_integer(x"0"),
      RBAR_CAP_INDEX5                          => conv_integer(x"0"),
      RBAR_CAP_ON                              => "FALSE",
      RBAR_CAP_SUP0                            => conv_integer(x"00000001"),
      RBAR_CAP_SUP1                            => conv_integer(x"00000001"),
      RBAR_CAP_SUP2                            => conv_integer(x"00000001"),
      RBAR_CAP_SUP3                            => conv_integer(x"00000001"),
      RBAR_CAP_SUP4                            => conv_integer(x"00000001"),
      RBAR_CAP_SUP5                            => conv_integer(x"00000001"),
      RBAR_NUM                                 => conv_integer(x"0"),
      TRN_NP_FC                                => C_TRN_NP_FC, -- CR 824083
      TRN_DW                                   => TRN_DW,
      UR_ATOMIC                                => "FALSE",
      UR_PRS_RESPONSE                          => "TRUE",
      USER_CLK2_DIV2                           => USER_CLK2_DIV2,
      VC0_TOTAL_CREDITS_NPD                    => 24,
      LINK_CAP_RSVD_23                         => 0,
      CFG_ECRC_ERR_CPLSTAT                     => 0,
      DISABLE_ERR_MSG                          => "FALSE",
      DISABLE_LOCKED_FILTER                    => "FALSE",
      DISABLE_PPM_FILTER                       => "FALSE",
      ENDEND_TLP_PREFIX_FORWARDING_SUPPORTED   => "FALSE",
      INTERRUPT_STAT_AUTO                      => "TRUE",
      MPS_FORCE                                => "FALSE",
      PM_ASPML0S_TIMEOUT                       => conv_integer(x"0000"),
      PM_ASPML0S_TIMEOUT_EN                    => "FALSE",
      PM_ASPML0S_TIMEOUT_FUNC                  => 0,
      PM_ASPM_FASTEXIT                         => "FALSE",
      PM_MF                                    => "FALSE",
      RP_AUTO_SPD                              => conv_integer(x"1"),
      RP_AUTO_SPD_LOOPCNT                      => conv_integer(x"1f"),
      SIM_VERSION                              => "1.0",
      SSL_MESSAGE_AUTO                         => "FALSE",
      TECRC_EP_INV                             => "FALSE",
      UR_CFG1                                  => "TRUE",
      USE_RID_PINS                             => "FALSE",
      DEV_CAP2_ENDEND_TLP_PREFIX_SUPPORTED     => "FALSE",
      DEV_CAP2_EXTENDED_FMT_FIELD_SUPPORTED    => "FALSE",
      DEV_CAP2_LTR_MECHANISM_SUPPORTED         => "FALSE",
      DEV_CAP2_MAX_ENDEND_TLP_PREFIXES         => conv_integer(x"0"),
      DEV_CAP2_NO_RO_ENABLED_PRPR_PASSING      => "FALSE",
      RBAR_CAP_ID                              => conv_integer(x"0015"),
      RBAR_CAP_NEXTPTR                         => conv_integer(x"000"),
      RBAR_CAP_VERSION                         => conv_integer(x"1"),
      PCIE_USE_MODE                            => PCIE_USE_MODE,
      PCIE_GT_DEVICE                           => PCIE_GT_DEVICE,
      PCIE_CHAN_BOND                           => 0,
      PCIE_PLL_SEL                             => "CPLL",
      PCIE_ASYNC_EN                            => PCIE_ASYNC_EN,
      PCIE_TXBUF_EN                            => "FALSE"
      -- synthesis translate_off
      ,EXT_PIPE_INTERFACE                       =>  EXT_PIPE_INTERFACE
      -- synthesis translate_on
    )
    port map(
      -- 1. PCI Express (pci_exp) Interface
      ---------------------------------------------------------
      -- Tx
      pci_exp_txp                              => sig_pci_exp_txp,
      pci_exp_txn                              => sig_pci_exp_txn,
      -- Rx
      pci_exp_rxp                              => sig_pci_exp_rxp,
      pci_exp_rxn                              => sig_pci_exp_rxn,
qpll_drp_crscode      => qpll_drp_crscode    ,
  qpll_drp_fsm          => qpll_drp_fsm        ,
  qpll_drp_done         => qpll_drp_done       ,
  qpll_drp_reset        => qpll_drp_reset      ,
  qpll_qplllock         => qpll_qplllock       ,
  qpll_qplloutclk       => qpll_qplloutclk     ,
  qpll_qplloutrefclk    => qpll_qplloutrefclk  ,
   qpll_qplld    => qpll_qplld    ,
   qpll_qpllreset=> qpll_qpllreset,
   qpll_drp_clk  => qpll_drp_clk  ,
   qpll_drp_rst_n=> qpll_drp_rst_n,
   qpll_drp_ovrd => qpll_drp_ovrd ,
   qpll_drp_gen3 => qpll_drp_gen3 ,
   qpll_drp_start=> qpll_drp_start,

   pipe_txprbssel      => pipe_txprbssel     ,
   pipe_rxprbssel      => pipe_rxprbssel     ,
   pipe_txprbsforceerr => pipe_txprbsforceerr,
   pipe_rxprbscntreset => pipe_rxprbscntreset,
   pipe_loopback       => pipe_loopback      ,
   pipe_txinhibit        => pipe_txinhibit       ,

   pipe_rxprbserr        => pipe_rxprbserr       ,
   pipe_rst_fsm          => pipe_rst_fsm         ,
   pipe_qrst_fsm         => pipe_qrst_fsm        ,
   pipe_rate_fsm         => pipe_rate_fsm        ,
   pipe_sync_fsm_tx      => pipe_sync_fsm_tx     ,
   pipe_sync_fsm_rx      => pipe_sync_fsm_rx     ,
   pipe_drp_fsm          => pipe_drp_fsm         ,

   pipe_rst_idle => pipe_rst_idle ,
   pipe_qrst_idle=> pipe_qrst_idle,
   pipe_rate_idle=> pipe_rate_idle,
   pipe_eyescandataerror	=> pipe_eyescandataerror,
   pipe_rxstatus    => pipe_rxstatus,
   pipe_dmonitorout => pipe_dmonitorout,
  
   pipe_cpll_lock         =>  pipe_cpll_lock 	,
   pipe_qpll_lock         =>  pipe_qpll_lock 	,
   pipe_rxpmaresetdone    =>  pipe_rxpmaresetdone	,       
   pipe_rxbufstatus 	 =>  pipe_rxbufstatus 	,         
   pipe_txphaligndone     =>  pipe_txphaligndone 	,       
   pipe_txphinitdone 	 =>  pipe_txphinitdone 	,        
   pipe_txdlysresetdone   =>  pipe_txdlysresetdone,    
   pipe_rxphaligndone     =>  pipe_rxphaligndone 	,      
   pipe_rxdlysresetdone   =>  pipe_rxdlysresetdone,     
   pipe_rxsyncdone 	 =>  pipe_rxsyncdone 	,       
   pipe_rxdisperr 	 =>  pipe_rxdisperr 	,       
   pipe_rxnotintable 	 =>  pipe_rxnotintable 	,      
   pipe_rxcommadet 	 =>  pipe_rxcommadet 	,        

   gt_ch_drp_rdy => gt_ch_drp_rdy ,
   pipe_debug_0        => pipe_debug_0         ,
   pipe_debug_1        => pipe_debug_1         ,
   pipe_debug_2        => pipe_debug_2         ,
   pipe_debug_3        => pipe_debug_3         ,
   pipe_debug_4        => pipe_debug_4         ,
   pipe_debug_5        => pipe_debug_5         ,
   pipe_debug_6        => pipe_debug_6         ,
   pipe_debug_7        => pipe_debug_7         ,
   pipe_debug_8        => pipe_debug_8         ,
   pipe_debug_9        => pipe_debug_9         ,
   pipe_debug          => pipe_debug           ,

  common_commands_in		=>common_commands_in	,
  pipe_rx_0_sigs		=>pipe_rx_0_sigs	,
  pipe_rx_1_sigs		=>pipe_rx_1_sigs	,
  pipe_rx_2_sigs		=>pipe_rx_2_sigs	,
  pipe_rx_3_sigs		=>pipe_rx_3_sigs	,
  pipe_rx_4_sigs		=>pipe_rx_4_sigs	,
  pipe_rx_5_sigs		=>pipe_rx_5_sigs	,
  pipe_rx_6_sigs		=>pipe_rx_6_sigs	,
  pipe_rx_7_sigs		=>pipe_rx_7_sigs	,
                                                 
  common_commands_out		=>common_commands_out	,
  pipe_tx_0_sigs		=>pipe_tx_0_sigs	,
  pipe_tx_1_sigs		=>pipe_tx_1_sigs	,
  pipe_tx_2_sigs		=>pipe_tx_2_sigs	,
  pipe_tx_3_sigs		=>pipe_tx_3_sigs	,
  pipe_tx_4_sigs		=>pipe_tx_4_sigs	,
  pipe_tx_5_sigs		=>pipe_tx_5_sigs	,
  pipe_tx_6_sigs		=>pipe_tx_6_sigs	,
  pipe_tx_7_sigs		=>pipe_tx_7_sigs	,

INT_PCLK_OUT_SLAVE	=>		int_pclk_out_slave,	
INT_RXUSRCLK_OUT  	=>      	int_rxusrclk_out  ,      
INT_RXOUTCLK_OUT  	=>      	int_rxoutclk_out  ,      
INT_DCLK_OUT	  	=>      	int_dclk_out	  ,      
INT_USERCLK1_OUT  	=>      	int_userclk1_out  ,      
INT_USERCLK2_OUT  	=>      	int_userclk2_out  ,      
INT_OOBCLK_OUT	  	=>      	int_oobclk_out	  ,      
INT_MMCM_LOCK_OUT 	=>      	int_mmcm_lock_out ,      
INT_QPLLLOCK_OUT  	=>      	int_qplllock_out  ,      
INT_QPLLOUTCLK_OUT	=>		int_qplloutclk_out,	
INT_QPLLOUTREFCLK_OUT		=>	int_qplloutrefclk_out,	
INT_PCLK_SEL_SLAVE		=>	int_pclk_sel_slave   ,   

    -------------Channel DRP---------------------------------
   ext_ch_gt_drpclk    => ext_ch_gt_drpclk ,
   ext_ch_gt_drpaddr   => ext_ch_gt_drpaddr,
   ext_ch_gt_drpen     => ext_ch_gt_drpen  ,
   ext_ch_gt_drpdi     => ext_ch_gt_drpdi  ,
   ext_ch_gt_drpwe     => ext_ch_gt_drpwe  ,

   ext_ch_gt_drpdo     => ext_ch_gt_drpdo  ,
   ext_ch_gt_drprdy    => ext_ch_gt_drprdy ,

      clk_fab_refclk                           => clk_fab_refclk  ,
      clk_pclk                                 => clk_pclk        ,
      clk_rxusrclk                             => clk_rxusrclk    ,
      clk_dclk                                 => clk_dclk        ,
      clk_userclk1                             => clk_userclk1    ,
      clk_userclk2                             => clk_userclk2    ,
      clk_oobclk_in                            => clk_oobclk_in   ,
      clk_mmcm_lock                            => clk_mmcm_lock   ,
      clk_txoutclk                             => clk_txoutclk    ,
      clk_rxoutclk                             => clk_rxoutclk    ,
      clk_pclk_sel                             => clk_pclk_sel    ,
      clk_gen3                                 => clk_gen3        ,
      PIPE_MMCM_RST_N                          => pipe_mmcm_rst_n,


      ---------------------------------------------------------
      -- 2. Transaction (TRN) Interface
      ---------------------------------------------------------
      -- Rx
      rx_np_ok                                 => sig_rx_np_ok, --: in  std_logic;
      rx_np_req                                => sig_rx_np_req,--: in  std_logic;
      
      ---------------------------------------------
      -- AXI TX - RW Interface
      -----------
      s_axis_rw_tdata                          => sig_m_axis_rw_tdata,
      s_axis_rw_tvalid                         => sig_m_axis_rw_tvalid,
      s_axis_rw_tready                         => sig_m_axis_rw_tready,
      s_axis_rw_tstrb                          => sig_m_axis_rw_tstrb,
      s_axis_rw_tlast                          => sig_m_axis_rw_tlast,
      s_axis_rw_tuser                          => "0000",

      -- AXI TX - RR Interface
      -------------
      s_axis_rr_tdata                          => sig_m_axis_rr_tdata,
      s_axis_rr_tvalid                         => sig_m_axis_rr_tvalid,
      s_axis_rr_tready                         => sig_m_axis_rr_tready,
      s_axis_rr_tstrb                          => sig_m_axis_rr_tstrb,
      s_axis_rr_tlast                          => sig_m_axis_rr_tlast,
      s_axis_rr_tuser                          => "0000",

      -- AXI TX - CC Interface
      -------------
      s_axis_cc_tdata                          => sig_m_axis_cc_tdata,
      s_axis_cc_tvalid                         => sig_m_axis_cc_tvalid,
      s_axis_cc_tready                         => sig_m_axis_cc_tready,
      s_axis_cc_tstrb                          => sig_m_axis_cc_tstrb,
      s_axis_cc_tlast                          => sig_m_axis_cc_tlast,
      s_axis_cc_tuser                          => sig_m_axis_cc_tuser(3 downto 0),

      -- AXI RX - CW Interface
      -------------
      m_axis_cw_tdata                          => sig_s_axis_cw_tdata,
      m_axis_cw_tvalid                         => sig_s_axis_cw_tvalid,
      m_axis_cw_tready                         => sig_s_axis_cw_tready,
      m_axis_cw_tstrb                          => sig_s_axis_cw_tstrb,
      m_axis_cw_tlast                          => sig_s_axis_cw_tlast,
      m_axis_cw_tuser                          => sig_s_axis_cw_tuser,
 
      -- AXI RX - CR Interface
      -------------
      m_axis_cr_tdata                          => sig_s_axis_cr_tdata,
      m_axis_cr_tvalid                         => sig_s_axis_cr_tvalid,
      m_axis_cr_tready                         => sig_s_axis_cr_tready,
      m_axis_cr_tstrb                          => sig_s_axis_cr_tstrb,
      m_axis_cr_tlast                          => sig_s_axis_cr_tlast,
      m_axis_cr_tuser                          => sig_s_axis_cr_tuser,

      -- AXI RX - RC Interface
      -------------
      m_axis_rc_tdata                          => sig_s_axis_rc_tdata,
      m_axis_rc_tvalid                         => sig_s_axis_rc_tvalid,
      m_axis_rc_tready                         => sig_s_axis_rc_tready,
      m_axis_rc_tstrb                          => sig_s_axis_rc_tstrb,
      m_axis_rc_tlast                          => sig_s_axis_rc_tlast,
      --m_axis_rc_tuser                          => 

      -- AXI -Lite Interface - CFG Block
      ---------------------------
      s_axi_ctl_awaddr                         => s_axi_ctl_awaddr, -- AXI Lite Write address
      s_axi_ctl_awvalid                        => s_axi_ctl_awvalid,-- AXI Lite Write Address Valid
      s_axi_ctl_awready                        => s_axi_ctl_awready,-- AXI Lite Write Address Core ready
      s_axi_ctl_wdata                          => s_axi_ctl_wdata,  -- AXI Lite Write Data
      s_axi_ctl_wstrb                          => s_axi_ctl_wstrb,  -- AXI Lite Write Data strobe
      s_axi_ctl_wvalid                         => s_axi_ctl_wvalid, -- AXI Lite Write data Valid
      s_axi_ctl_wready                         => s_axi_ctl_wready, -- AXI Lite Write Data Core ready
      s_axi_ctl_bresp                          => s_axi_ctl_bresp,  -- AXI Lite Write Data strobe
      s_axi_ctl_bvalid                         => s_axi_ctl_bvalid, -- AXI Lite Write data Valid
      s_axi_ctl_bready                         => s_axi_ctl_bready, -- AXI Lite Write Data Core ready

      s_axi_ctl_araddr                         => s_axi_ctl_araddr, -- AXI Lite Read address
      s_axi_ctl_arvalid                        => s_axi_ctl_arvalid,-- AXI Lite Read Address Valid
      s_axi_ctl_arready                        => s_axi_ctl_arready,-- AXI Lite Read Address Core ready
      s_axi_ctl_rdata                          => s_axi_ctl_rdata,  -- AXI Lite Read Data
      s_axi_ctl_rresp                          => s_axi_ctl_rresp,  -- AXI Lite Read Data strobe
      s_axi_ctl_rvalid                         => s_axi_ctl_rvalid, -- AXI Lite Read data Valid
      s_axi_ctl_rready                         => s_axi_ctl_rready, -- AXI Lite Read Data Core ready

      -- AXI Lite User IPIC Signals
      -----------------------------
      Bus2IP_CS                                => sig_Bus2IP_CS,    -- Chip Select
      Bus2IP_BE                                => sig_Bus2IP_BE,    -- Byte Enable Vector
      Bus2IP_RNW                               => sig_Bus2IP_RNW,   -- Read Npt Write Qualifier
      Bus2IP_Addr                              => sig_Bus2IP_Addr,  -- Address Bus
      Bus2IP_Data                              => sig_Bus2IP_Data,  -- Write Data Bus
      IP2Bus_RdAck                             => sig_IP2Bus_RdAck, -- Read Acknowledgement
      IP2Bus_WrAck                             => sig_IP2Bus_WrAck, -- Write Acknowledgement
      IP2Bus_Data                              => sig_IP2Bus_Data,  -- Read Data Bus
      IP2Bus_Error                             => sig_IP2Bus_Error, -- Error Qualifier

      --Interrupts
      -------------------
      ctl_intr                                 => interrupt_out,    -- user interrupt
      ctl_user_intr                            => interrupt_vector,
  
      -- User Misc.
      -------------
      --user_turnoff_ok                          => in  std_logic;                                 -- Turnoff OK from user
      --user_tcfg_gnt                            => in  std_logic;                                 -- Send cfg OK from user

      np_cpl_pending                           => np_cpl_pending_qual,-- in  std_logic;
      RP_bridge_en                             => RP_bridge_en,

      ---------------------------------------------------------
      -- 3. Configuration (CFG) Interface
      ---------------------------------------------------------

      blk_err_cor                              => '0',--in  std_logic;
      blk_err_ur                               => '0',--in  std_logic;
      blk_err_ecrc                             => '0',--in  std_logic;
      blk_err_cpl_timeout                      => '0',--in  std_logic;
      blk_err_cpl_abort                        => '0',--in  std_logic;
      blk_err_cpl_unexpect                     => '0',--in  std_logic;
      blk_err_posted                           => '0',--in  std_logic;
      blk_err_locked                           => '0',--in  std_logic;
      blk_err_tlp_cpl_header                   => x"0000_0000_0000",--in  std_logic_vector(47 downto 0);
      --blk_err_cpl_rdy                          => out std_logic;
      blk_interrupt                            => sig_blk_interrupt,--in  std_logic;
      --blk_interrupt                            => '0',--in  std_logic;
      blk_interrupt_rdy                        => sig_blk_interrupt_rdy, --out std_logic;
      blk_interrupt_assert                     => sig_blk_interrupt_assert,--in  std_logic;
      blk_interrupt_di                         => sig_blk_interrupt_di,--in  std_logic_vector(7 downto 0);
      --cfg_interrupt_do                         => out std_logic_vector(7 downto 0);
      blk_interrupt_mmenable                   => MSI_Vector_Width,
      blk_interrupt_msienable                  => sig_blk_interrupt_msienable, -- out std_logic;
      --blk_interrupt_msixenable                 => out std_logic;
      --blk_interrupt_msixfm                     => out std_logic;
      blk_trn_pending                          => '0',--in  std_logic;
      cfg_pm_send_pme_to                       => '0',--in  std_logic;
      --blk_status                               => out std_logic_vector(15 downto 0);
      blk_command                              => sig_blk_command,
      --blk_dstatus                              => out std_logic_vector(15 downto 0);
      blk_dcommand                             => sig_blk_dcontrol,
      blk_lstatus                              => sig_blk_lstatus,
      --blk_lcommand                             => out std_logic_vector(15 downto 0);
      --blk_dcommand2                            => out std_logic_vector(15 downto 0);

      --blk_pcie_link_state                      => out std_logic_vector(2 downto 0);
      blk_dsn                                  => x"0000000000000000",--in  std_logic_vector(63 downto 0);
      --blk_pmcsr_pme_en                         => out std_logic;
      --blk_pmcsr_pme_status                     => out std_logic;
      --blk_pmcsr_powerstate                     => out std_logic_vector(1 downto 0);

      --cfg_msg_received                         => out std_logic;
      --blk_msg_data                             => out std_logic_vector(15 downto 0);
      --blk_msg_received_err_cor                 => out std_logic;
      --blk_msg_received_err_non_fatal           => out std_logic;
      --blk_msg_received_err_fatal               => out std_logic;
      --blk_msg_received_pme_to_ack              => out std_logic;
      --blk_msg_received_assert_inta             => out std_logic;
      --blk_msg_received_assert_intb             => out std_logic;
      --blk_msg_received_assert_intc             => out std_logic;
      --blk_msg_received_assert_intd             => out std_logic;
      --blk_msg_received_deassert_inta           => out std_logic;
      --blk_msg_received_deassert_intb           => out std_logic;
      --blk_msg_received_deassert_intc           => out std_logic;
      --blk_msg_received_deassert_intd           => out std_logic;

      blk_link_up                              => sig_blk_lnk_up,

      blk_ds_bus_number                        => x"00",--in  std_logic_vector(7 downto 0);
      blk_ds_device_number                     => "00000",--in  std_logic_vector(4 downto 0);

      -- Only for End point Cores
      --blk_to_turnoff                           => out  std_logic;
      blk_turnoff_ok                           => '0',--in std_logic;
      blk_pm_wake                              => '0',--in std_logic;

      blk_bus_number                           => sig_blk_bus_number,
      blk_device_number                        => sig_blk_device_number,
      blk_function_number                      => sig_blk_function_number,

      ---------------------------------------------------------
      -- 4. Physical Layer Control and Status (PL) Interface
      ---------------------------------------------------------

      --blk_pl_initial_link_width                => out std_logic_vector(2 downto 0);
      --blk_pl_lane_reversal_mode                => out std_logic_vector(1 downto 0);
      --blk_pl_link_gen2_capable                 => out std_logic;
      --blk_pl_link_partner_gen2_supported       => out std_logic;
      --blk_pl_link_upcfg_capable                => out std_logic;
      --blk_pl_ltssm_state                       => out std_logic_vector(5 downto 0);
      --blk_pl_sel_link_rate                     => out std_logic;
      --blk_pl_sel_link_width                    => out std_logic_vector(1 downto 0);
      blk_pl_upstream_prefer_deemph            => '0',--in  std_logic;
      --blk_pl_hot_rst                           => out std_logic;

      -- Flow Control
      --blk_fc_cpld                              => out std_logic_vector(11 downto 0);
      --blk_fc_cplh                              => out std_logic_vector(7 downto 0);
      --blk_fc_npd                               => out std_logic_vector(11 downto 0);
      --blk_fc_nph                               => out std_logic_vector(7 downto 0);
      --blk_fc_pd                                => out std_logic_vector(11 downto 0);
      --blk_fc_ph                                => out std_logic_vector(7 downto 0);
      blk_fc_sel                               => "100",--in  std_logic_vector(2 downto 0);

      -- Tx

      --blk_tbuf_av                              => out std_logic_vector(5 downto 0);
      --blk_tcfg_req                             => out std_logic;                                    
      blk_tcfg_gnt                             => '1',--in  std_logic;                               

      --tx_err_drop                              => --out std_logic;

      --S-6 Specific

      --cfg_do                                   => out std_logic_vector(31 downto 0);
      --cfg_rd_wr_done                           => out std_logic;                                
      cfg_dwaddr                               => "0000000000",--in  std_logic_vector(9 downto 0);
      cfg_rd_en                                => '0',--in  std_logic;                          

      ---------------------------------------------------------
      -- 5. System  (SYS) Interface
      ---------------------------------------------------------

      com_sysclk                               => REFCLK,
      com_sysrst                               => axi_areset,
      mmcm_lock                                => sig_mmcm_lock,
      com_iclk                                 => axi_ctl_aclk_out,
      com_cclk                                 => sig_axi_aclk_out,
      config_gen_req				=> config_gen_req
      --com_corereset                            => out std_logic,
      
    );


end architecture;

