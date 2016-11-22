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
-- Filename:        axi_enhanced_pcie.vhd
--
-- Description:     VHDL top-level wrapper for Verilog wrapper of the
--                  axi_pcie_enhanced_core_top.v file 
--                   
-- Comments:
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_enhanced_pcie.vhd
--                 enhanced_core_top_wrap.v
--                    axi_pcie_enhanced_core_top.v
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.conv_std_logic_vector;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

--------------------------------------------------------------------------------
--Notes
--------------------------------------------------------------------------------


entity axi_enhanced_pcie is
   generic(
      C_DATA_WIDTH                                               : integer:= 64;
      STRB_WIDTH                                                 : integer:= 8;
      BAR0_U                                                     : std_logic_vector(15 downto 0):= x"ffff";
      BAR0_L                                                     : std_logic_vector(15 downto 0):= x"ffff";        
      BAR1_U                                                     : std_logic_vector(15 downto 0):= x"ffff";
      BAR1_L                                                     : std_logic_vector(15 downto 0):= x"ffff";        
      BAR2_U                                                     : std_logic_vector(15 downto 0):= x"ffff";
      BAR2_L                                                     : std_logic_vector(15 downto 0):= x"ffff";        
      BAR3_U                                                     : std_logic_vector(15 downto 0):= x"ffff";
      BAR3_L                                                     : std_logic_vector(15 downto 0):= x"ffff";        
      BAR4_U                                                     : std_logic_vector(15 downto 0):= x"ffff";
      BAR4_L                                                     : std_logic_vector(15 downto 0):= x"ffff";        
      BAR5_U                                                     : std_logic_vector(15 downto 0):= x"ffff";
      BAR5_L                                                     : std_logic_vector(15 downto 0):= x"ffff"; 

      CARDBUS_CIS_POINTER                                        : integer:= conv_integer(x"00000000");
      CLASS_CODE                                                 : integer:= conv_integer(x"060000");
      CMD_INTX_IMPLEMENTED                                       : string:= "TRUE";
      CPL_TIMEOUT_DISABLE_SUPPORTED                              : string:= "FALSE";
      CPL_TIMEOUT_RANGES_SUPPORTED                               : integer:= conv_integer(x"0");-- 2

      DEV_CAP_EXT_TAG_SUPPORTED                                  : string:= "TRUE";
      DEV_CAP_MAX_PAYLOAD_SUPPORTED                              : integer:= 2;
      DEV_CAP_PHANTOM_FUNCTIONS_SUPPORT                          : integer:= 1;
      DEVICE_ID                                                  : integer:= conv_integer(x"6011");

      DISABLE_LANE_REVERSAL                                      : string:= "FALSE";
      DISABLE_SCRAMBLING                                         : string:= "FALSE";
      DSN_BASE_PTR                                               : integer:= conv_integer(x"000");
      DSN_CAP_NEXTPTR                                            : integer:= conv_integer(x"000");
      DSN_CAP_ON                                                 : string:= "FALSE";

      ENABLE_MSG_ROUTE                                           : integer:= conv_integer(x"200");
      ENABLE_RX_TD_ECRC_TRIM                                     : string:= "TRUE";
      EXPANSION_ROM_U                                            : integer:= conv_integer(x"ffff");
      EXPANSION_ROM_L                                            : integer:= conv_integer(x"f001");
      EXT_CFG_CAP_PTR                                            : integer:= conv_integer(x"3f");
      EXT_CFG_XP_CAP_PTR                                         : integer:= conv_integer(x"3ff");
      HEADER_TYPE                                                : integer:= conv_integer(x"00");
      INTERRUPT_PIN                                              : integer:= conv_integer(x"00");

      LINK_CAP_DLL_LINK_ACTIVE_REPORTING_CAP                     : string:= "FALSE";
      LINK_CAP_LINK_BANDWIDTH_NOTIFICATION_CAP                   : string:= "FALSE";
      LINK_CAP_MAX_LINK_SPEED                                    : integer:= conv_integer(x"1");
      LINK_CAP_MAX_LINK_WIDTH                                    : integer:= conv_integer(x"01");
      LINK_CAP_SURPRISE_DOWN_ERROR_CAPABLE                       : string:= "FALSE";

      LINK_CONTROL_RCB                                           : integer:= 0;
      LINK_CTRL2_DEEMPHASIS                                      : string:= "FALSE";
      LINK_CTRL2_HW_AUTONOMOUS_SPEED_DISABLE                     : string:= "FALSE";
      LINK_CTRL2_TARGET_LINK_SPEED                               : integer:= conv_integer(x"1");
      LINK_STATUS_SLOT_CLOCK_CONFIG                              : string:= "TRUE";

      LL_ACK_TIMEOUT                                             : integer:= conv_integer(x"0000");
      LL_ACK_TIMEOUT_EN                                          : string:= "FALSE";
      LL_ACK_TIMEOUT_FUNC                                        : integer:= 0;
      LL_REPLAY_TIMEOUT                                          : integer:= conv_integer(x"0026");
      LL_REPLAY_TIMEOUT_EN                                       : string:= "TRUE";
      LL_REPLAY_TIMEOUT_FUNC                                     : integer:= 1;

      LTSSM_MAX_LINK_WIDTH                                       : integer:= conv_integer(x"1");
      MSI_DECODE_ENABLE                                          : string:= "TRUE";
      MSI_CAP_MULTIMSGCAP                                        : integer:= 0;
      MSI_CAP_MULTIMSG_EXTENSION                                 : integer:= 0;
      MSI_CAP_ON                                                 : string:= "TRUE";
      MSI_CAP_PER_VECTOR_MASKING_CAPABLE                         : string:= "TRUE";
      MSI_CAP_64_BIT_ADDR_CAPABLE                                : string:= "TRUE";

      MSIX_CAP_ON                                                : string:= "FALSE";
      MSIX_CAP_PBA_BIR                                           : integer:= 0;
      MSIX_CAP_PBA_OFFSET                                        : integer:= conv_integer(x"00000050");
      MSIX_CAP_TABLE_BIR                                         : integer:= 0;
      MSIX_CAP_TABLE_OFFSET                                      : integer:= conv_integer(x"00000040");
      MSIX_CAP_TABLE_SIZE                                        : integer:= conv_integer(x"000");

      PCIE_CAP_DEVICE_PORT_TYPE                                  : integer:= conv_integer(x"0");
      PCIE_CAP_INT_MSG_NUM                                       : integer:= conv_integer(x"00");
      PCIE_CAP_NEXTPTR                                           : integer:= conv_integer(x"00");
      PCIE_DRP_ENABLE                                            : string:= "FALSE";
      PIPE_PIPELINE_STAGES                                       : integer:= 0;  -- 0 - 0 stages, 1 - 1 stage, 2 - 2 stages

      PM_CAP_DSI                                                 : string:= "TRUE";
      PM_CAP_D1SUPPORT                                           : string:= "FALSE";
      PM_CAP_D2SUPPORT                                           : string:= "FALSE";
      PM_CAP_NEXTPTR                                             : integer:= conv_integer(x"48");
      PM_CAP_PMESUPPORT                                          : integer:= conv_integer(x"00");
      PM_CSR_NOSOFTRST                                           : string:= "FALSE";

      PM_DATA_SCALE0                                             : integer:= conv_integer(x"0");
      PM_DATA_SCALE1                                             : integer:= conv_integer(x"0");
      PM_DATA_SCALE2                                             : integer:= conv_integer(x"0");
      PM_DATA_SCALE3                                             : integer:= conv_integer(x"0");
      PM_DATA_SCALE4                                             : integer:= conv_integer(x"0");
      PM_DATA_SCALE5                                             : integer:= conv_integer(x"0");
      PM_DATA_SCALE6                                             : integer:= conv_integer(x"0");
      PM_DATA_SCALE7                                             : integer:= conv_integer(x"0");

      PM_DATA0                                                   : integer:= conv_integer(x"00");
      PM_DATA1                                                   : integer:= conv_integer(x"00");
      PM_DATA2                                                   : integer:= conv_integer(x"00");
      PM_DATA3                                                   : integer:= conv_integer(x"00");
      PM_DATA4                                                   : integer:= conv_integer(x"00");
      PM_DATA5                                                   : integer:= conv_integer(x"00");
      PM_DATA6                                                   : integer:= conv_integer(x"00");
      PM_DATA7                                                   : integer:= conv_integer(x"00");

      REF_CLK_FREQ                                               : integer:= 0;  -- 0 - 100 MHz, 1 - 125 MHz, 2 - 250 MHz
      REVISION_ID                                                : integer:= conv_integer(x"00");
      ROOT_CAP_CRS_SW_VISIBILITY                                 : string:= "FALSE";
      SPARE_BIT0                                                 : integer:= 0;
      SUBSYSTEM_ID                                               : integer:= conv_integer(x"0007");
      SUBSYSTEM_VENDOR_ID                                        : integer:= conv_integer(x"10ee");

      SLOT_CAP_ATT_BUTTON_PRESENT                                : string:= "FALSE";
      SLOT_CAP_ATT_INDICATOR_PRESENT                             : string:= "FALSE";
      SLOT_CAP_ELEC_INTERLOCK_PRESENT                            : string:= "FALSE";
      SLOT_CAP_HOTPLUG_CAPABLE                                   : string:= "FALSE";
      SLOT_CAP_HOTPLUG_SURPRISE                                  : string:= "FALSE";
      SLOT_CAP_MRL_SENSOR_PRESENT                                : string:= "FALSE";
      SLOT_CAP_NO_CMD_COMPLETED_SUPPORT                          : string:= "FALSE";
      SLOT_CAP_PHYSICAL_SLOT_NUM                                 : integer:= conv_integer(x"0000");
      SLOT_CAP_POWER_CONTROLLER_PRESENT                          : string:= "FALSE";
      SLOT_CAP_POWER_INDICATOR_PRESENT                           : string:= "FALSE";
      SLOT_CAP_SLOT_POWER_LIMIT_SCALE                            : integer:= 0;
      SLOT_CAP_SLOT_POWER_LIMIT_VALUE                            : integer:= conv_integer(x"00");

      TL_RX_RAM_RADDR_LATENCY                                    : integer:= 0;
      TL_RX_RAM_RDATA_LATENCY                                    : integer:= 2;
      TL_RX_RAM_WRITE_LATENCY                                    : integer:= 0;
      TL_TX_RAM_RADDR_LATENCY                                    : integer:= 0;
      TL_TX_RAM_RDATA_LATENCY                                    : integer:= 2;
      TL_TX_RAM_WRITE_LATENCY                                    : integer:= 0;

      UPCONFIG_CAPABLE                                           : string:= "TRUE";
      UPSTREAM_FACING                                            : STRING:= "FALSE";
      USER_CLK_FREQ                                              : integer:= 1;--3
      VC_BASE_PTR                                                : integer:= conv_integer(x"10C");
      VC_CAP_NEXTPTR                                             : integer:= conv_integer(x"000");
      VC_CAP_ON                                                  : string:= "FALSE";
      VC_CAP_REJECT_SNOOP_TRANSACTIONS                           : string:= "FALSE";

      VC0_CPL_INFINITE                                           : string:= "TRUE";
      VC0_RX_RAM_LIMIT                                           : integer:= conv_integer(x"01ff");
      VC0_TOTAL_CREDITS_CD                                       : integer:= 77;
      VC0_TOTAL_CREDITS_CH                                       : integer:= 36;
      VC0_TOTAL_CREDITS_NPH                                      : integer:= 12;
      VC0_TOTAL_CREDITS_PD                                       : integer:= 77;
      VC0_TOTAL_CREDITS_PH                                       : integer:= 32;
      VC0_TX_LASTPACKET                                          : integer:= 13;

      VENDOR_ID                                                  : integer:= conv_integer(x"10ee");
      VSEC_BASE_PTR                                              : integer:= conv_integer(x"160");
      VSEC_CAP_NEXTPTR                                           : integer:= conv_integer(x"000");
      VSEC_CAP_ON                                                : string:= "FALSE";

      ALLOW_X8_GEN2                                              : string:= "FALSE";
      AER_BASE_PTR                                               : integer:= conv_integer(x"128");
      AER_CAP_ECRC_CHECK_CAPABLE                                 : string:= "FALSE";
      AER_CAP_ECRC_GEN_CAPABLE                                   : string:= "FALSE";
      AER_CAP_ID                                                 : integer:= conv_integer(x"0001");
      AER_CAP_INT_MSG_NUM_MSI                                    : integer:= conv_integer(x"0a");
      AER_CAP_INT_MSG_NUM_MSIX                                   : integer:= conv_integer(x"15");
      AER_CAP_NEXTPTR                                            : integer:= conv_integer(x"160");
      AER_CAP_ON                                                 : string:= "FALSE";
      AER_CAP_PERMIT_ROOTERR_UPDATE                              : string:= "TRUE";
      AER_CAP_VERSION                                            : integer:= conv_integer(x"1");

      CAPABILITIES_PTR                                           : integer:= conv_integer(x"40");
      CRM_MODULE_RSTS                                            : integer:= conv_integer(x"00");
      DEV_CAP_ENDPOINT_L0S_LATENCY                               : integer:= 0;
      DEV_CAP_ENDPOINT_L1_LATENCY                                : integer:= 0;
      DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE                       : string:= "FALSE";
      DEV_CAP_ROLE_BASED_ERROR                                   : string:= "TRUE";
      DEV_CAP_RSVD_14_12                                         : integer:= 0;
      DEV_CAP_RSVD_17_16                                         : integer:= 0;
      DEV_CAP_RSVD_31_29                                         : integer:= 0;
      DEV_CAP_ENABLE_SLOT_PWR_LIMIT_SCALE                        : string:= "TRUE";
      DEV_CAP_ENABLE_SLOT_PWR_LIMIT_VALUE                        : string:= "TRUE";
      DEV_CONTROL_AUX_POWER_SUPPORTED                            : string:= "FALSE";

      DISABLE_ASPM_L1_TIMER                                      : string:= "FALSE";
      DISABLE_BAR_FILTERING                                      : string:= "FALSE";
      DISABLE_ID_CHECK                                           : string:= "FALSE";
      DISABLE_RX_TC_FILTER                                       : string:= "FALSE";
      DNSTREAM_LINK_NUM                                          : integer:= conv_integer(x"00");

      DS_PORT_HOT_RST                                            : string:= "FALSE";  -- FALSE - for ROOT PORT(default), TRUE - for DOWNSTREAM PORT 
      DSN_CAP_ID                                                 : integer:= conv_integer(x"0000");
      DSN_CAP_VERSION                                            : integer:= conv_integer(x"1");
      ENTER_RVRY_EI_L0                                           : string:= "TRUE";
      INFER_EI                                                   : integer:= conv_integer(x"00");
      IS_SWITCH                                                  : string:= "FALSE";

      LAST_CONFIG_DWORD                                          : integer:= conv_integer(x"042");
      LINK_CAP_ASPM_SUPPORT                                      : integer:= 1;
      LINK_CAP_CLOCK_POWER_MANAGEMENT                            : string:= "FALSE";
      LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN1                      : integer:= 7;
      LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN2                      : integer:= 7;
      LINK_CAP_L0S_EXIT_LATENCY_GEN1                             : integer:= 7;
      LINK_CAP_L0S_EXIT_LATENCY_GEN2                             : integer:= 7;
      LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN1                       : integer:= 7;
      LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN2                       : integer:= 7;
      LINK_CAP_L1_EXIT_LATENCY_GEN1                              : integer:= 7;
      LINK_CAP_L1_EXIT_LATENCY_GEN2                              : integer:= 7;
      LINK_CAP_RSVD_23_22                                        : integer:= 0;

      MSI_BASE_PTR                                               : integer:= conv_integer(x"48");
      MSI_CAP_ID                                                 : integer:= conv_integer(x"05");
      MSI_CAP_NEXTPTR                                            : integer:= conv_integer(x"60");
      MSIX_BASE_PTR                                              : integer:= conv_integer(x"9c");
      MSIX_CAP_ID                                                : integer:= conv_integer(x"11");
      MSIX_CAP_NEXTPTR                                           : integer:= conv_integer(x"00");
      N_FTS_COMCLK_GEN1                                          : integer:= 255;
      N_FTS_COMCLK_GEN2                                          : integer:= 254;
      N_FTS_GEN1                                                 : integer:= 255;
      N_FTS_GEN2                                                 : integer:= 255;

      PCIE_BASE_PTR                                              : integer:= conv_integer(x"60");
      PCIE_CAP_CAPABILITY_ID                                     : integer:= conv_integer(x"10");
      PCIE_CAP_CAPABILITY_VERSION                                : integer:= conv_integer(x"2");
      PCIE_CAP_ON                                                : string:= "TRUE";
      PCIE_CAP_RSVD_15_14                                        : integer:= 0;
      PCIE_CAP_SLOT_IMPLEMENTED                                  : string:= "FALSE";
      PCIE_REVISION                                              : integer:= 2;
      PGL0_LANE                                                  : integer:= 0;
      PGL1_LANE                                                  : integer:= 1;
      PGL2_LANE                                                  : integer:= 2;
      PGL3_LANE                                                  : integer:= 3;
      PGL4_LANE                                                  : integer:= 4;
      PGL5_LANE                                                  : integer:= 5;
      PGL6_LANE                                                  : integer:= 6;
      PGL7_LANE                                                  : integer:= 7;
      PL_AUTO_CONFIG                                             : integer:= 1;
      PL_FAST_TRAIN                                              : string:= "FALSE";
      PCIE_EXT_CLK                                               : string:= "TRUE";
      PCIE_EXT_GT_COMMON : string:= "FALSE";
      EXT_CH_GT_DRP : string:= "FALSE";
     
TX_MARGIN_FULL_0  :integer:= conv_integer (x"4F");
TX_MARGIN_FULL_1  :integer:= conv_integer (x"4e");
TX_MARGIN_FULL_2  :integer:= conv_integer (x"4d");
TX_MARGIN_FULL_3  :integer:= conv_integer (x"4c");
TX_MARGIN_FULL_4  :integer:= conv_integer (x"43");
TX_MARGIN_LOW_0   :integer:= conv_integer (x"45");
TX_MARGIN_LOW_1   :integer:= conv_integer (x"46");
TX_MARGIN_LOW_2   :integer:= conv_integer (x"43");
TX_MARGIN_LOW_3   :integer:= conv_integer (x"42");
TX_MARGIN_LOW_4   :integer:=conv_integer  (x"40");

      PM_BASE_PTR                                                : integer:= conv_integer(x"40");
      PM_CAP_AUXCURRENT                                          : integer:= 0;
      PM_CAP_ID                                                  : integer:= conv_integer(x"01");
      PM_CAP_ON                                                  : string:= "TRUE";
      PM_CAP_PME_CLOCK                                           : string:= "FALSE";
      PM_CAP_RSVD_04                                             : integer:= 0;
      PM_CAP_VERSION                                             : integer:= 3;
      PM_CSR_BPCCEN                                              : string:= "FALSE";
      PM_CSR_B2B3                                                : string:= "FALSE";

      RECRC_CHK                                                  : integer:= 0;
      RECRC_CHK_TRIM                                             : string:= "FALSE";
      SELECT_DLL_IF                                              : string:= "FALSE";
      SPARE_BIT1                                                 : integer:= 0;
      SPARE_BIT2                                                 : integer:= 0;
      SPARE_BIT3                                                 : integer:= 0;
      SPARE_BIT4                                                 : integer:= 0;
      SPARE_BIT5                                                 : integer:= 0;
      SPARE_BIT6                                                 : integer:= 0;
      SPARE_BIT7                                                 : integer:= 0;
      SPARE_BIT8                                                 : integer:= 0;
      SPARE_BYTE0                                                : integer:= conv_integer(x"00");
      SPARE_BYTE1                                                : integer:= conv_integer(x"00");
      SPARE_BYTE2                                                : integer:= conv_integer(x"00");
      SPARE_BYTE3                                                : integer:= conv_integer(x"00");
      SPARE_WORD0                                                : integer:= conv_integer(x"00000000");
      SPARE_WORD1                                                : integer:= conv_integer(x"00000000");
      SPARE_WORD2                                                : integer:= conv_integer(x"00000000");
      SPARE_WORD3                                                : integer:= conv_integer(x"00000000");

      TL_RBYPASS                                                 : string:= "FALSE";
      TL_TFC_DISABLE                                             : string:= "FALSE";
      TL_TX_CHECKS_DISABLE                                       : string:= "FALSE";
      EXIT_LOOPBACK_ON_EI                                        : string:= "TRUE";
      UR_INV_REQ                                                 : string:= "TRUE";

      VC_CAP_ID                                                  : integer:= conv_integer(x"0002");
      VC_CAP_VERSION                                             : integer:= conv_integer(x"1");
      VSEC_CAP_HDR_ID                                            : integer:= conv_integer(x"1234");
      VSEC_CAP_HDR_LENGTH                                        : integer:= conv_integer(x"018");
      VSEC_CAP_HDR_REVISION                                      : integer:= conv_integer(x"1");
      VSEC_CAP_ID                                                : integer:= conv_integer(x"000b");
      VSEC_CAP_IS_LINK_VISIBLE                                   : string:= "TRUE";
      VSEC_CAP_VERSION                                           : integer:= conv_integer(x"1");

      C_BASEADDR_U                                               : integer:= conv_integer(x"FFFF");-- AXI Lite Base Address upper
      C_BASEADDR_L                                               : integer:= conv_integer(x"FFFF");-- AXI Lite Base Address lower
      C_HIGHADDR_U                                               : integer:= conv_integer(x"0000");-- AXI Lite High Address upper
      C_HIGHADDR_L                                               : integer:= conv_integer(x"0000");-- AXI Lite High Address lower
      C_MAX_LNK_WDT                                              : integer:= 1;                    -- Maximum Number of PCIE Lanes
      C_ROOT_PORT                                                : string:= "FALSE";               -- PCIe block is in root port mode
      C_RP_BAR_HIDE                                              : string:= "FALSE";               -- Hide RP PCIe BAR (prevent CPU from assigning address to RP BAR)
      C_RX_REALIGN                                               : string:= "TRUE";                -- Enable or Disable Realignment at RX Interface
      C_RX_PRESERVE_ORDER                                        : string:= "FALSE";               -- Preserve WR/ RD Ordering at the RX Interface
      C_LAST_CORE_CAP_ADDR                                       : integer:= conv_integer(x"000"); -- DWORD address of last enabled block capability
      C_VSEC_CAP_ADDR                                            : integer:= conv_integer(x"000"); -- DWORD address of start of VSEC Header
      C_VSEC_CAP_LAST                                            : string:= "FALSE";               -- VSEC next capability offset control
      C_VSEC_ID                                                  : integer:= conv_integer(x"0000");
      C_DEVICE_NUMBER                                            : integer:= 0;                    -- Device number for Root Port configurations only
      C_NUM_USER_INTR                                            : integer:= 0;                    -- Number of user interrupts in User interrupt vector
      C_USER_PTR                                                 : integer:= conv_integer(x"0000");-- Address pointer to User Space
      C_COMP_TIMEOUT                                             : integer:= 0;                    -- Completion Timout Value (0: 50us; 1:50ms)
      C_FAMILY                                                   : string:= "V6";                  -- Targeted FPGA family

  --*******************************************************************
  -- S6 Parameter List
  --*******************************************************************

      USR_CFG                                                    : string:= "FALSE";
      USR_EXT_CFG                                                : string:= "FALSE";
      LINK_CAP_L0S_EXIT_LATENCY                                  : integer:= 7;
      LINK_CAP_L1_EXIT_LATENCY                                   : integer:= 7;
      PLM_AUTO_CONFIG                                            : string:= "FALSE";
      FAST_TRAIN                                                 : string:= "FALSE";
      PCIE_GENERIC                                               : integer:= conv_integer("000011101111");
      GTP_SEL                                                    : integer:= 0;
      CFG_VEN_ID                                                 : integer:= conv_integer(x"10EE");
      CFG_DEV_ID                                                 : integer:= conv_integer(x"0007");
      CFG_REV_ID                                                 : integer:= conv_integer(x"00");
      CFG_SUBSYS_VEN_ID                                          : integer:= conv_integer(x"10EE");
      CFG_SUBSYS_ID                                              : integer:= conv_integer(x"0007");

  --*******************************************************************
  -- K7 Parameter List
  --*******************************************************************

      AER_CAP_MULTIHEADER                                        : string:= "FALSE";
      AER_CAP_OPTIONAL_ERR_SUPPORT                               : integer:= conv_integer(x"000000");
      DEV_CAP2_ARI_FORWARDING_SUPPORTED                          : string:= "FALSE";
      DEV_CAP2_ATOMICOP32_COMPLETER_SUPPORTED                    : string:= "FALSE";
      DEV_CAP2_ATOMICOP64_COMPLETER_SUPPORTED                    : string:= "FALSE";
      DEV_CAP2_ATOMICOP_ROUTING_SUPPORTED                        : string:= "FALSE";
      DEV_CAP2_CAS128_COMPLETER_SUPPORTED                        : string:= "FALSE";
      DEV_CAP2_TPH_COMPLETER_SUPPORTED                           : integer:= conv_integer(x"00");
      DEV_CONTROL_EXT_TAG_DEFAULT                                : string:= "FALSE";
      DISABLE_RX_POISONED_RESP                                   : string:= "FALSE";
      LINK_CAP_ASPM_OPTIONALITY                                  : string:= "FALSE";
      RBAR_BASE_PTR                                              : integer:= conv_integer(x"000");
      RBAR_CAP_CONTROL_ENCODEDBAR0                               : integer:= conv_integer(x"00");
      RBAR_CAP_CONTROL_ENCODEDBAR1                               : integer:= conv_integer(x"00");
      RBAR_CAP_CONTROL_ENCODEDBAR2                               : integer:= conv_integer(x"00");
      RBAR_CAP_CONTROL_ENCODEDBAR3                               : integer:= conv_integer(x"00");
      RBAR_CAP_CONTROL_ENCODEDBAR4                               : integer:= conv_integer(x"00");
      RBAR_CAP_CONTROL_ENCODEDBAR5                               : integer:= conv_integer(x"00");
      RBAR_CAP_INDEX0                                            : integer:= conv_integer(x"0");
      RBAR_CAP_INDEX1                                            : integer:= conv_integer(x"0");
      RBAR_CAP_INDEX2                                            : integer:= conv_integer(x"0");
      RBAR_CAP_INDEX3                                            : integer:= conv_integer(x"0");
      RBAR_CAP_INDEX4                                            : integer:= conv_integer(x"0");
      RBAR_CAP_INDEX5                                            : integer:= conv_integer(x"0");
      RBAR_CAP_ON                                                : string:= "FALSE";
      RBAR_CAP_SUP0                                              : integer:= conv_integer(x"00001");
      RBAR_CAP_SUP1                                              : integer:= conv_integer(x"00001");
      RBAR_CAP_SUP2                                              : integer:= conv_integer(x"00001");
      RBAR_CAP_SUP3                                              : integer:= conv_integer(x"00001");
      RBAR_CAP_SUP4                                              : integer:= conv_integer(x"00001");
      RBAR_CAP_SUP5                                              : integer:= conv_integer(x"00001");
      RBAR_NUM                                                   : integer:= conv_integer(x"0");
      TRN_NP_FC                                                  : string:= "TRUE";
      TRN_DW                                                     : string:= "FALSE";
      UR_ATOMIC                                                  : string:= "FALSE";
      UR_PRS_RESPONSE                                            : string:= "TRUE";
      USER_CLK2_DIV2                                             : string:= "FALSE";
      VC0_TOTAL_CREDITS_NPD                                      : integer:= 24;
      LINK_CAP_RSVD_23                                           : integer:= 0;
      CFG_ECRC_ERR_CPLSTAT                                       : integer:= 0;
      DISABLE_ERR_MSG                                            : string:= "FALSE";
      DISABLE_LOCKED_FILTER                                      : string:= "FALSE";
      DISABLE_PPM_FILTER                                         : string:= "FALSE";
      ENDEND_TLP_PREFIX_FORWARDING_SUPPORTED                     : string:= "FALSE";
      INTERRUPT_STAT_AUTO                                        : string:= "TRUE";
      MPS_FORCE                                                  : string:= "FALSE";
      PM_ASPML0S_TIMEOUT                                         : integer:= conv_integer(x"0000");
      PM_ASPML0S_TIMEOUT_EN                                      : string:= "FALSE";
      PM_ASPML0S_TIMEOUT_FUNC                                    : integer:= 0;
      PM_ASPM_FASTEXIT                                           : string:= "FALSE";
      PM_MF                                                      : string:= "FALSE";
      RP_AUTO_SPD                                                : integer:= conv_integer(x"1");
      RP_AUTO_SPD_LOOPCNT                                        : integer:= conv_integer(x"1f");
      SIM_VERSION                                                : string:= "1.0";
      SSL_MESSAGE_AUTO                                           : string:= "FALSE";
      TECRC_EP_INV                                               : string:= "FALSE";
      UR_CFG1                                                    : string:= "TRUE";
      USE_RID_PINS                                               : string:= "FALSE";
      DEV_CAP2_ENDEND_TLP_PREFIX_SUPPORTED                       : string:= "FALSE";
      DEV_CAP2_EXTENDED_FMT_FIELD_SUPPORTED                      : string:= "FALSE";
      DEV_CAP2_LTR_MECHANISM_SUPPORTED                           : string:= "FALSE";
      DEV_CAP2_MAX_ENDEND_TLP_PREFIXES                           : integer:= conv_integer(x"0");
      DEV_CAP2_NO_RO_ENABLED_PRPR_PASSING                        : string:= "FALSE";
      RBAR_CAP_ID                                                : integer:= conv_integer(x"0015");
      RBAR_CAP_NEXTPTR                                           : integer:= conv_integer(x"000");
      RBAR_CAP_VERSION                                           : integer:= conv_integer(x"1");
      PCIE_USE_MODE                                              : string:= "1.0";
      PCIE_GT_DEVICE                                             : string:= "GTP";
      PCIE_CHAN_BOND                                             : integer:= 1;
      PCIE_PLL_SEL                                               : string:= "CPLL";
      PCIE_ASYNC_EN                                              : string:= "FALSE";
      PCIE_TXBUF_EN                                              : string:= "FALSE";
      NO_SLV_ERR                    : string:= "FALSE";
      EXT_PIPE_INTERFACE                                         : string:= "FALSE"
   );
   port(
      -- 1. PCI Express (pci_exp) Interface
      ---------------------------------------------------------
      -- Tx
      pci_exp_txp                              : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
      pci_exp_txn                              : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
      -- Rx
      pci_exp_rxp                              : in  std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
      pci_exp_rxn                              : in  std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);

qpll_drp_crscode	: in std_logic_vector(11 downto 0);
qpll_drp_fsm		: in std_logic_vector(17 downto 0);
qpll_drp_done     	: in std_logic_vector(1 downto 0);
qpll_drp_reset    	: in std_logic_vector(1 downto 0);       
qpll_qplllock    	: in std_logic_vector(1 downto 0);
qpll_qplloutclk    	: in std_logic_vector(1 downto 0);
qpll_qplloutrefclk	: in std_logic_vector(1 downto 0);
 qpll_qplld    : out std_logic_vector(1 downto 0)    ;
 qpll_qpllreset: out std_logic_vector(1 downto 0)    ;
 qpll_drp_clk: out std_logic_vector(1 downto 0)     ;
 qpll_drp_rst_n: out std_logic_vector(1 downto 0)     ;
 qpll_drp_ovrd: out std_logic_vector(1 downto 0)     ;
 qpll_drp_gen3: out std_logic_vector(1 downto 0)     ;
 qpll_drp_start: out std_logic_vector(1 downto 0)     ;

 pipe_txprbssel		:in std_logic_vector(2 downto 0);	
 pipe_rxprbssel	    	:in std_logic_vector(2 downto 0);    
 pipe_txprbsforceerr	:in std_logic;	
 pipe_rxprbscntreset	:in std_logic;	
 pipe_loopback 	    	:in std_logic_vector(2 downto 0);
 pipe_txinhibit               :in std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);

 pipe_rxprbserr : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);


 pipe_rst_fsm 	:out std_logic_vector(4 downto 0);
 pipe_qrst_fsm	:out std_logic_vector(11 downto 0);	
 pipe_rate_fsm	:out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*5)-1 downto 0);	
 pipe_sync_fsm_tx	:out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*6)-1 downto 0);	
 pipe_sync_fsm_rx	:out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*7)-1 downto 0);	
 pipe_drp_fsm		:out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*7)-1 downto 0);	

 pipe_rst_idle	:out std_logic;	
 pipe_qrst_idle	:out std_logic;	
 pipe_rate_idle	:out std_logic;	
 pipe_eyescandataerror	:out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
 pipe_rxstatus : out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*3)-1 downto 0);    
 pipe_dmonitorout : out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*15)-1 downto 0);

 pipe_cpll_lock          : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0); 
 pipe_qpll_lock          : out std_logic_vector(((LINK_CAP_MAX_LINK_WIDTH/8)+1)-1 downto 0); 
 pipe_rxpmaresetdone     : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);  
 pipe_rxbufstatus        : out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*3)-1 downto 0);     
 pipe_txphaligndone      : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);   
 pipe_txphinitdone       : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);      
 pipe_txdlysresetdone    : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);    
 pipe_rxphaligndone      : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);     
 pipe_rxdlysresetdone    : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);      
 pipe_rxsyncdone         : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);      
 pipe_rxdisperr          : out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*8)-1 downto 0);     
 pipe_rxnotintable       : out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*8)-1 downto 0);     
 pipe_rxcommadet         : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);   

 gt_ch_drp_rdy	:out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);	
 pipe_debug_0 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
 pipe_debug_1 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
 pipe_debug_2 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
 pipe_debug_3 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
 pipe_debug_4 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
 pipe_debug_5 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
 pipe_debug_6 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
 pipe_debug_7 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
 pipe_debug_8 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
 pipe_debug_9 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
 pipe_debug	:out std_logic_vector(31 downto 0);

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

 INT_PCLK_OUT_SLAVE	: out std_logic;	 
 INT_RXUSRCLK_OUT    	: out std_logic;   	
 INT_DCLK_OUT        	: out std_logic;   	
 INT_USERCLK1_OUT    	: out std_logic;   	
 INT_USERCLK2_OUT    	: out std_logic;   	
 INT_OOBCLK_OUT      	: out std_logic;   	
 INT_MMCM_LOCK_OUT   	: out std_logic;   	
 INT_QPLLLOCK_OUT	: out std_logic_vector(1 downto 0);	
 INT_QPLLOUTCLK_OUT	: out std_logic_vector(1 downto 0);	
 INT_QPLLOUTREFCLK_OUT	: out std_logic_vector(1 downto 0);	
 INT_RXOUTCLK_OUT 	: out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);	      
 INT_PCLK_SEL_SLAVE	: in std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);	


    -------------Channel DRP---------------------------------
 ext_ch_gt_drpclk	 : out std_logic;	
 ext_ch_gt_drpaddr	 : in std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*9)-1 downto 0);	
 ext_ch_gt_drpen	 : in std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);	
 ext_ch_gt_drpdi	 : in std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*16)-1 downto 0);	
 ext_ch_gt_drpwe	 : in std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);	

 ext_ch_gt_drpdo	: out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*16)-1 downto 0);	
 ext_ch_gt_drprdy	: out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);	
      ---------------------------------------------------------
      -- 2. Transaction (TRN) Interface
      ---------------------------------------------------------
      -- Rx
      rx_np_ok                                 : in  std_logic;
      rx_np_req                                : in  std_logic;

      ---------------------------------------------
      -- AXI TX - RW Interface
      -----------
      s_axis_rw_tdata                          : in  std_logic_vector(C_DATA_WIDTH-1 downto 0); -- RW data from user
      s_axis_rw_tvalid                         : in  std_logic;                                 -- RW data is valid
      s_axis_rw_tready                         : out std_logic;                                 -- RW ready for data
      s_axis_rw_tstrb                          : in  std_logic_vector(STRB_WIDTH-1 downto 0);   -- RW strobe byte enables
      s_axis_rw_tlast                          : in  std_logic;                                 -- RW data is last
      s_axis_rw_tuser                          : in  std_logic_vector(3 downto 0);              -- RW user signals

      -- AXI TX - RR Interface
      -------------
      s_axis_rr_tdata                          : in  std_logic_vector(C_DATA_WIDTH-1 downto 0); -- RR data from user
      s_axis_rr_tvalid                         : in  std_logic;                                 -- RR data is valid
      s_axis_rr_tready                         : out std_logic;                                 -- RR ready for data
      s_axis_rr_tstrb                          : in  std_logic_vector(STRB_WIDTH-1 downto 0);   -- RR strobe byte enables
      s_axis_rr_tlast                          : in  std_logic;                                 -- RR data is last
      s_axis_rr_tuser                          : in  std_logic_vector(3 downto 0);              -- RR user signals

      -- AXI TX - CC Interface
      -------------
      s_axis_cc_tdata                          : in  std_logic_vector(C_DATA_WIDTH-1 downto 0); -- CC data from user
      s_axis_cc_tvalid                         : in  std_logic;                                 -- CC data is valid
      s_axis_cc_tready                         : out std_logic;                                 -- CC ready for data
      s_axis_cc_tstrb                          : in  std_logic_vector(STRB_WIDTH-1 downto 0);   -- CC strobe byte enables
      s_axis_cc_tlast                          : in  std_logic;                                 -- CC data is last
      s_axis_cc_tuser                          : in  std_logic_vector(3 downto 0);              -- CC user signals

      -- AXI RX - CW Interface
      -------------
      m_axis_cw_tdata                          : out std_logic_vector(C_DATA_WIDTH-1 downto 0); -- CW data to user
      m_axis_cw_tvalid                         : out std_logic;                                 -- CW data is valid
      m_axis_cw_tready                         : in  std_logic;                                 -- CW ready for data
      m_axis_cw_tstrb                          : out std_logic_vector(STRB_WIDTH-1 downto 0);   -- CW strobe byte enables
      m_axis_cw_tlast                          : out std_logic;                                 -- CW data is last
      m_axis_cw_tuser                          : out std_logic_vector(21 downto 0);             -- CW user signals
 
      -- AXI RX - CR Interface
      -------------
      m_axis_cr_tdata                          : out std_logic_vector(C_DATA_WIDTH-1 downto 0); -- CR data to user
      m_axis_cr_tvalid                         : out std_logic;                                 -- CR data is valid
      m_axis_cr_tready                         : in  std_logic;                                 -- CR ready for data
      m_axis_cr_tstrb                          : out std_logic_vector(STRB_WIDTH-1 downto 0);   -- CR strobe byte enables
      m_axis_cr_tlast                          : out std_logic;                                 -- CR data is last
      m_axis_cr_tuser                          : out std_logic_vector(21 downto 0);             -- CR user signals

      -- AXI RX - RC Interface
      -------------
      m_axis_rc_tdata                          : out std_logic_vector(C_DATA_WIDTH-1 downto 0); -- RC data to user
      m_axis_rc_tvalid                         : out std_logic;                                 -- RC data is valid
      m_axis_rc_tready                         : in  std_logic;                                 -- RC ready for data
      m_axis_rc_tstrb                          : out std_logic_vector(STRB_WIDTH-1 downto 0);   -- RC strobe byte enables
      m_axis_rc_tlast                          : out std_logic;                                 -- RC data is last
      m_axis_rc_tuser                          : out std_logic_vector(21 downto 0);             -- RC user signals

      -- AXI -Lite Interface - CFG Block
      ---------------------------
      s_axi_ctl_awaddr                         : in  std_logic_vector(31 downto 0);             -- AXI Lite Write address
      s_axi_ctl_awvalid                        : in  std_logic;                                 -- AXI Lite Write Address Valid
      s_axi_ctl_awready                        : out std_logic;                                 -- AXI Lite Write Address Core ready
      s_axi_ctl_wdata                          : in  std_logic_vector(31 downto 0);             -- AXI Lite Write Data
      s_axi_ctl_wstrb                          : in  std_logic_vector(3 downto 0);              -- AXI Lite Write Data strobe
      s_axi_ctl_wvalid                         : in  std_logic;                                 -- AXI Lite Write data Valid
      s_axi_ctl_wready                         : out std_logic;                                 -- AXI Lite Write Data Core ready
      s_axi_ctl_bresp                          : out std_logic_vector(1 downto 0);              -- AXI Lite Write Data strobe
      s_axi_ctl_bvalid                         : out std_logic;                                 -- AXI Lite Write data Valid
      s_axi_ctl_bready                         : in  std_logic;                                 -- AXI Lite Write Data Core ready

      s_axi_ctl_araddr                         : in  std_logic_vector(31 downto 0);             -- AXI Lite Read address
      s_axi_ctl_arvalid                        : in  std_logic;                                 -- AXI Lite Read Address Valid
      s_axi_ctl_arready                        : out std_logic;                                 -- AXI Lite Read Address Core ready
      s_axi_ctl_rdata                          : out std_logic_vector(31 downto 0);             -- AXI Lite Read Data
      s_axi_ctl_rresp                          : out std_logic_vector(1 downto 0);              -- AXI Lite Read Data strobe
      s_axi_ctl_rvalid                         : out std_logic;                                 -- AXI Lite Read data Valid
      s_axi_ctl_rready                         : in  std_logic;                                 -- AXI Lite Read Data Core ready

      -- AXI Lite User IPIC Signals
      -----------------------------
      Bus2IP_CS                                : out std_logic;                                 -- Chip Select
      Bus2IP_BE                                : out std_logic_vector(3 downto 0);              -- Byte Enable Vector
      Bus2IP_RNW                               : out std_logic;                                 -- Read Npt Write Qualifier
      Bus2IP_Addr                              : out std_logic_vector(31 downto 0);             -- Address Bus
      Bus2IP_Data                              : out std_logic_vector(31 downto 0);             -- Write Data Bus
      IP2Bus_RdAck                             : in  std_logic;                                 -- Read Acknowledgement
      IP2Bus_WrAck                             : in  std_logic;                                 -- Write Acknowledgement
      IP2Bus_Data                              : in  std_logic_vector(31 downto 0);             -- Read Data Bus
      IP2Bus_Error                             : in  std_logic;                                 -- Error Qualifier

      --Interrupts
      -------------------
      ctl_intr                                 : out std_logic;                                 -- user interrupt
      ctl_user_intr                            : in  std_logic_vector(C_NUM_USER_INTR-1 downto 0);-- User interrupt vector used only in axi_pcie_mm_s
  
      -- User Misc.
      -------------
      --user_turnoff_ok                          : in  std_logic;                                 -- Turnoff OK from user
      --user_tcfg_gnt                            : in  std_logic;                                 -- Send cfg OK from user

      np_cpl_pending                           : in  std_logic;
      RP_bridge_en                             : out std_logic;

      ---------------------------------------------------------
      -- 3. Configuration (CFG) Interface
      ---------------------------------------------------------

      blk_err_cor                              : in  std_logic;
      blk_err_ur                               : in  std_logic;
      blk_err_ecrc                             : in  std_logic;
      blk_err_cpl_timeout                      : in  std_logic;
      blk_err_cpl_abort                        : in  std_logic;
      blk_err_cpl_unexpect                     : in  std_logic;
      blk_err_posted                           : in  std_logic;
      blk_err_locked                           : in  std_logic;
      blk_err_tlp_cpl_header                   : in  std_logic_vector(47 downto 0);
      blk_err_cpl_rdy                          : out std_logic;
      blk_interrupt                            : in  std_logic;
      blk_interrupt_rdy                        : out std_logic;
      blk_interrupt_assert                     : in  std_logic;
      blk_interrupt_di                         : in  std_logic_vector(7 downto 0);
      cfg_interrupt_do                         : out std_logic_vector(7 downto 0);
      blk_interrupt_mmenable                   : out std_logic_vector(2 downto 0);
      blk_interrupt_msienable                  : out std_logic;
      blk_interrupt_msixenable                 : out std_logic;
      blk_interrupt_msixfm                     : out std_logic;
      blk_trn_pending                          : in  std_logic;
      cfg_pm_send_pme_to                       : in  std_logic;
      blk_status                               : out std_logic_vector(15 downto 0);
      blk_command                              : out std_logic_vector(15 downto 0);
      blk_dstatus                              : out std_logic_vector(15 downto 0);
      blk_dcommand                             : out std_logic_vector(15 downto 0);
      blk_lstatus                              : out std_logic_vector(15 downto 0);
      blk_lcommand                             : out std_logic_vector(15 downto 0);
      blk_dcommand2                            : out std_logic_vector(15 downto 0);
      blk_pcie_link_state                      : out std_logic_vector(2 downto 0);
      blk_dsn                                  : in  std_logic_vector(63 downto 0);
      blk_pmcsr_pme_en                         : out std_logic;
      blk_pmcsr_pme_status                     : out std_logic;
      blk_pmcsr_powerstate                     : out std_logic_vector(1 downto 0);

      cfg_msg_received                         : out std_logic;
      blk_msg_data                             : out std_logic_vector(15 downto 0);
      blk_msg_received_err_cor                 : out std_logic;
      blk_msg_received_err_non_fatal           : out std_logic;
      blk_msg_received_err_fatal               : out std_logic;
      blk_msg_received_pme_to_ack              : out std_logic;
      blk_msg_received_assert_inta             : out std_logic;
      blk_msg_received_assert_intb             : out std_logic;
      blk_msg_received_assert_intc             : out std_logic;
      blk_msg_received_assert_intd             : out std_logic;
      blk_msg_received_deassert_inta           : out std_logic;
      blk_msg_received_deassert_intb           : out std_logic;
      blk_msg_received_deassert_intc           : out std_logic;
      blk_msg_received_deassert_intd           : out std_logic;

      blk_link_up                              : out std_logic;

      blk_ds_bus_number                        : in  std_logic_vector(7 downto 0);
      blk_ds_device_number                     : in  std_logic_vector(4 downto 0);

      -- Only for End point Cores
      blk_to_turnoff                           : out  std_logic;
      blk_turnoff_ok                           : in std_logic;
      blk_pm_wake                              : in std_logic;

      blk_bus_number                           : out std_logic_vector(7 downto 0);
      blk_device_number                        : out std_logic_vector(4 downto 0);
      blk_function_number                      : out std_logic_vector(2 downto 0);

      ---------------------------------------------------------
      -- 4. Physical Layer Control and Status (PL) Interface
      ---------------------------------------------------------

      blk_pl_initial_link_width                : out std_logic_vector(2 downto 0);
      blk_pl_lane_reversal_mode                : out std_logic_vector(1 downto 0);
      blk_pl_link_gen2_capable                 : out std_logic;
      blk_pl_link_partner_gen2_supported       : out std_logic;
      blk_pl_link_upcfg_capable                : out std_logic;
      blk_pl_ltssm_state                       : out std_logic_vector(5 downto 0);
      blk_pl_sel_link_rate                     : out std_logic;
      blk_pl_sel_link_width                    : out std_logic_vector(1 downto 0);
      blk_pl_upstream_prefer_deemph            : in  std_logic;
      blk_pl_hot_rst                           : out std_logic;

      -- Flow Control
      blk_fc_cpld                              : out std_logic_vector(11 downto 0);
      blk_fc_cplh                              : out std_logic_vector(7 downto 0);
      blk_fc_npd                               : out std_logic_vector(11 downto 0);
      blk_fc_nph                               : out std_logic_vector(7 downto 0);
      blk_fc_pd                                : out std_logic_vector(11 downto 0);
      blk_fc_ph                                : out std_logic_vector(7 downto 0);
      blk_fc_sel                               : in  std_logic_vector(2 downto 0);

      -- Tx

      blk_tbuf_av                              : out std_logic_vector(5 downto 0);
      blk_tcfg_req                             : out std_logic;                                    
      blk_tcfg_gnt                             : in  std_logic;                               

      tx_err_drop                              : out std_logic;                     

      --S-6 Specific

      cfg_do                                   : out std_logic_vector(31 downto 0);
      cfg_rd_wr_done                           : out std_logic;                                
      cfg_dwaddr                               : in  std_logic_vector(9 downto 0);
      cfg_rd_en                                : in  std_logic;                          

      ---------------------------------------------------------
      -- 5. System  (SYS) Interface
      ---------------------------------------------------------

      com_sysclk                               : in  std_logic;
      com_sysrst                               : in  std_logic;
      mmcm_lock                                : out std_logic;
      com_iclk                                 : out std_logic;
      com_cclk                                 : out std_logic;
      com_corereset                            : out std_logic;

      clk_fab_refclk                           : in std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
      clk_pclk                                 : in std_logic;
      clk_rxusrclk                             : in std_logic;
      clk_dclk                                 : in std_logic;
      clk_userclk1                             : in std_logic;
      clk_userclk2                             : in std_logic;
      clk_oobclk_in                            : in std_logic;
      clk_mmcm_lock                            : in std_logic;
      clk_txoutclk                             : out std_logic;
      clk_rxoutclk                             : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
      clk_pclk_sel                             : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
      clk_gen3                                 : out std_logic;
      PIPE_MMCM_RST_N                          : in std_logic;
      config_gen_req                           : out std_logic
      
   );

end axi_enhanced_pcie;

architecture structure of axi_enhanced_pcie is
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of structure : architecture is "yes";

component axi_pcie_v2_8_0_enhanced_core_top_wrap
   generic(
      C_DATA_WIDTH                             : integer:= 64;
      STRB_WIDTH                               : integer:= 8;
      BAR0_U                                   : std_logic_vector(15 downto 0):= x"ffff";
      BAR0_L                                   : std_logic_vector(15 downto 0):= x"ffff";
      BAR1_U                                   : std_logic_vector(15 downto 0):= x"ffff";
      BAR1_L                                   : std_logic_vector(15 downto 0):= x"ffff";
      BAR2_U                                   : std_logic_vector(15 downto 0):= x"ffff";
      BAR2_L                                   : std_logic_vector(15 downto 0):= x"ffff";
      BAR3_U                                   : std_logic_vector(15 downto 0):= x"ffff";
      BAR3_L                                   : std_logic_vector(15 downto 0):= x"ffff";
      BAR4_U                                   : std_logic_vector(15 downto 0):= x"ffff";
      BAR4_L                                   : std_logic_vector(15 downto 0):= x"ffff";
      BAR5_U                                   : std_logic_vector(15 downto 0):= x"ffff";
      BAR5_L                                   : std_logic_vector(15 downto 0):= x"ffff";

      CARDBUS_CIS_POINTER                      : integer:= conv_integer(x"00000000");
      CLASS_CODE                               : integer:= conv_integer(x"060000");
      CMD_INTX_IMPLEMENTED                     : string:= "TRUE";
      CPL_TIMEOUT_DISABLE_SUPPORTED            : string:= "FALSE";
      CPL_TIMEOUT_RANGES_SUPPORTED             : integer:= conv_integer(x"2");

      DEV_CAP_EXT_TAG_SUPPORTED                : string:= "FALSE";
      DEV_CAP_MAX_PAYLOAD_SUPPORTED            : integer:= 2;
      DEV_CAP_PHANTOM_FUNCTIONS_SUPPORT        : integer:= 0;
      DEVICE_ID                                : integer:= conv_integer(x"6011");

      DISABLE_LANE_REVERSAL                    : string:= "TRUE";
      DISABLE_SCRAMBLING                       : string:= "FALSE";
      DSN_BASE_PTR                             : integer:= conv_integer(x"100");
      DSN_CAP_NEXTPTR                          : integer:= conv_integer(x"000");
      DSN_CAP_ON                               : string:= "TRUE";

      ENABLE_MSG_ROUTE                         : integer:= conv_integer(x"000");
      ENABLE_RX_TD_ECRC_TRIM                   : string:= "FALSE";
      EXPANSION_ROM_U                          : integer:= conv_integer(x"ffff");
      EXPANSION_ROM_L                          : integer:= conv_integer(x"f001");
      EXT_CFG_CAP_PTR                          : integer:= conv_integer(x"3f");
      EXT_CFG_XP_CAP_PTR                       : integer:= conv_integer(x"3ff");
      HEADER_TYPE                              : integer:= conv_integer(x"00");
      INTERRUPT_PIN                            : integer:= conv_integer(x"01");

      LINK_CAP_DLL_LINK_ACTIVE_REPORTING_CAP   : string:= "FALSE";
      LINK_CAP_LINK_BANDWIDTH_NOTIFICATION_CAP : string:= "FALSE";
      LINK_CAP_MAX_LINK_SPEED                  : integer:= conv_integer(x"1");
      LINK_CAP_MAX_LINK_WIDTH                  : integer:= conv_integer(x"01");
      LINK_CAP_SURPRISE_DOWN_ERROR_CAPABLE     : string:= "FALSE";

      LINK_CONTROL_RCB                         : integer:= 0;
      LINK_CTRL2_DEEMPHASIS                    : string:= "FALSE";
      LINK_CTRL2_HW_AUTONOMOUS_SPEED_DISABLE   : string:= "FALSE";
      LINK_CTRL2_TARGET_LINK_SPEED             : integer:= conv_integer(x"0");
      LINK_STATUS_SLOT_CLOCK_CONFIG            : string:= "FALSE";

      LL_ACK_TIMEOUT                           : integer:= conv_integer(x"0000");
      LL_ACK_TIMEOUT_EN                        : string:= "FALSE";
      LL_ACK_TIMEOUT_FUNC                      : integer:= 0;
      LL_REPLAY_TIMEOUT                        : integer:= conv_integer(x"0026");
      LL_REPLAY_TIMEOUT_EN                     : string:= "TRUE";
      LL_REPLAY_TIMEOUT_FUNC                   : integer:= 1;

      LTSSM_MAX_LINK_WIDTH                     : integer:= conv_integer(x"1");
      MSI_DECODE_ENABLE                        : string:= "TRUE";
      MSI_CAP_MULTIMSGCAP                      : integer:= 0;
      MSI_CAP_MULTIMSG_EXTENSION               : integer:= 0;
      MSI_CAP_ON                               : string:= "TRUE";
      MSI_CAP_PER_VECTOR_MASKING_CAPABLE       : string:= "FALSE";
      MSI_CAP_64_BIT_ADDR_CAPABLE              : string:= "TRUE";

      MSIX_CAP_ON                              : string:= "FALSE";
      MSIX_CAP_PBA_BIR                         : integer:= 0;
      MSIX_CAP_PBA_OFFSET                      : integer:= conv_integer(x"00000000");
      MSIX_CAP_TABLE_BIR                       : integer:= 0;
      MSIX_CAP_TABLE_OFFSET                    : integer:= conv_integer(x"00000000");
      MSIX_CAP_TABLE_SIZE                      : integer:= conv_integer(x"000");

      PCIE_CAP_DEVICE_PORT_TYPE                : integer:= conv_integer(x"0");
      PCIE_CAP_INT_MSG_NUM                     : integer:= conv_integer(x"01");
      PCIE_CAP_NEXTPTR                         : integer:= conv_integer(x"00");
      PCIE_DRP_ENABLE                          : string:= "FALSE";
      PIPE_PIPELINE_STAGES                     : integer:= 0;  -- 0 - 0 stages, 1 - 1 stage, 2 - 2 stages

      PM_CAP_DSI                               : string:= "FALSE";
      PM_CAP_D1SUPPORT                         : string:= "FALSE";
      PM_CAP_D2SUPPORT                         : string:= "FALSE";
      PM_CAP_NEXTPTR                           : integer:= conv_integer(x"48");
      PM_CAP_PMESUPPORT                        : integer:= conv_integer(x"0f");
      PM_CSR_NOSOFTRST                         : string:= "TRUE";

      PM_DATA_SCALE0                           : integer:= conv_integer(x"0");
      PM_DATA_SCALE1                           : integer:= conv_integer(x"0");
      PM_DATA_SCALE2                           : integer:= conv_integer(x"0");
      PM_DATA_SCALE3                           : integer:= conv_integer(x"0");
      PM_DATA_SCALE4                           : integer:= conv_integer(x"0");
      PM_DATA_SCALE5                           : integer:= conv_integer(x"0");
      PM_DATA_SCALE6                           : integer:= conv_integer(x"0");
      PM_DATA_SCALE7                           : integer:= conv_integer(x"0");

      PM_DATA0                                 : integer:= conv_integer(x"00");
      PM_DATA1                                 : integer:= conv_integer(x"00");
      PM_DATA2                                 : integer:= conv_integer(x"00");
      PM_DATA3                                 : integer:= conv_integer(x"00");
      PM_DATA4                                 : integer:= conv_integer(x"00");
      PM_DATA5                                 : integer:= conv_integer(x"00");
      PM_DATA6                                 : integer:= conv_integer(x"00");
      PM_DATA7                                 : integer:= conv_integer(x"00");

      REF_CLK_FREQ                             : integer:= 0;  -- 0 - 100 MHz, 1 - 125 MHz, 2 - 250 MHz
      REVISION_ID                              : integer:= conv_integer(x"00");
      ROOT_CAP_CRS_SW_VISIBILITY               : string:= "FALSE";
      SPARE_BIT0                               : integer:= 0;
      SUBSYSTEM_ID                             : integer:= conv_integer(x"0007");
      SUBSYSTEM_VENDOR_ID                      : integer:= conv_integer(x"10ee");

      SLOT_CAP_ATT_BUTTON_PRESENT              : string:= "FALSE";
      SLOT_CAP_ATT_INDICATOR_PRESENT           : string:= "FALSE";
      SLOT_CAP_ELEC_INTERLOCK_PRESENT          : string:= "FALSE";
      SLOT_CAP_HOTPLUG_CAPABLE                 : string:= "FALSE";
      SLOT_CAP_HOTPLUG_SURPRISE                : string:= "FALSE";
      SLOT_CAP_MRL_SENSOR_PRESENT              : string:= "FALSE";
      SLOT_CAP_NO_CMD_COMPLETED_SUPPORT        : string:= "FALSE";
      SLOT_CAP_PHYSICAL_SLOT_NUM               : integer:= conv_integer(x"0000");
      SLOT_CAP_POWER_CONTROLLER_PRESENT        : string:= "FALSE";
      SLOT_CAP_POWER_INDICATOR_PRESENT         : string:= "FALSE";
      SLOT_CAP_SLOT_POWER_LIMIT_SCALE          : integer:= 0;
      SLOT_CAP_SLOT_POWER_LIMIT_VALUE          : integer:= conv_integer(x"00");

      TL_RX_RAM_RADDR_LATENCY                  : integer:= 0;
      TL_RX_RAM_RDATA_LATENCY                  : integer:= 2;
      TL_RX_RAM_WRITE_LATENCY                  : integer:= 0;
      TL_TX_RAM_RADDR_LATENCY                  : integer:= 0;
      TL_TX_RAM_RDATA_LATENCY                  : integer:= 2;
      TL_TX_RAM_WRITE_LATENCY                  : integer:= 0;

      UPCONFIG_CAPABLE                         : string:= "TRUE";
      UPSTREAM_FACING                          : STRING:= "FALSE";
      USER_CLK_FREQ                            : integer:= 1;--3
      VC_BASE_PTR                              : integer:= conv_integer(x"000");
      VC_CAP_NEXTPTR                           : integer:= conv_integer(x"000");
      VC_CAP_ON                                : string:= "FALSE";
      VC_CAP_REJECT_SNOOP_TRANSACTIONS         : string:= "FALSE";

      VC0_CPL_INFINITE                         : string:= "TRUE";
      VC0_RX_RAM_LIMIT                         : integer:= conv_integer(x"07ff");
      VC0_TOTAL_CREDITS_CD                     : integer:= 308;
      VC0_TOTAL_CREDITS_CH                     : integer:= 36;
      VC0_TOTAL_CREDITS_NPH                    : integer:= 12;
      VC0_TOTAL_CREDITS_PD                     : integer:= 308;
      VC0_TOTAL_CREDITS_PH                     : integer:= 32;
      VC0_TX_LASTPACKET                        : integer:= 29;

      VENDOR_ID                                : integer:= conv_integer(x"10ee");
      VSEC_BASE_PTR                            : integer:= conv_integer(x"000");
      VSEC_CAP_NEXTPTR                         : integer:= conv_integer(x"000");
      VSEC_CAP_ON                              : string:= "FALSE";

      ALLOW_X8_GEN2                            : string:= "FALSE";
      AER_BASE_PTR                             : integer:= conv_integer(x"128");
      AER_CAP_ECRC_CHECK_CAPABLE               : string:= "FALSE";
      AER_CAP_ECRC_GEN_CAPABLE                 : string:= "FALSE";
      AER_CAP_ID                               : integer:= conv_integer(x"0001");
      AER_CAP_INT_MSG_NUM_MSI                  : integer:= conv_integer(x"0a");
      AER_CAP_INT_MSG_NUM_MSIX                 : integer:= conv_integer(x"15");
      AER_CAP_NEXTPTR                          : integer:= conv_integer(x"160");
      AER_CAP_ON                               : string:= "FALSE";
      AER_CAP_PERMIT_ROOTERR_UPDATE            : string:= "TRUE";
      AER_CAP_VERSION                          : integer:= conv_integer(x"1");

      CAPABILITIES_PTR                         : integer:= conv_integer(x"40");
      CRM_MODULE_RSTS                          : integer:= conv_integer(x"00");
      DEV_CAP_ENDPOINT_L0S_LATENCY             : integer:= 0;
      DEV_CAP_ENDPOINT_L1_LATENCY              : integer:= 0;
      DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE     : string:= "FALSE";
      DEV_CAP_ROLE_BASED_ERROR                 : string:= "TRUE";
      DEV_CAP_RSVD_14_12                       : integer:= 0;
      DEV_CAP_RSVD_17_16                       : integer:= 0;
      DEV_CAP_RSVD_31_29                       : integer:= 0;
      DEV_CAP_ENABLE_SLOT_PWR_LIMIT_SCALE      : string:= "TRUE";
      DEV_CAP_ENABLE_SLOT_PWR_LIMIT_VALUE      : string:= "TRUE";
      DEV_CONTROL_AUX_POWER_SUPPORTED          : string:= "FALSE";

      DISABLE_ASPM_L1_TIMER                    : string:= "FALSE";
      DISABLE_BAR_FILTERING                    : string:= "FALSE";
      DISABLE_ID_CHECK                         : string:= "FALSE";
      DISABLE_RX_TC_FILTER                     : string:= "FALSE";
      DNSTREAM_LINK_NUM                        : integer:= conv_integer(x"00");

      DS_PORT_HOT_RST                          : string:= "FALSE";  -- FALSE - for ROOT PORT(default), TRUE - for DOWNSTREAM PORT 
      DSN_CAP_ID                               : integer:= conv_integer(x"0003");
      DSN_CAP_VERSION                          : integer:= conv_integer(x"1");
      ENTER_RVRY_EI_L0                         : string:= "TRUE";
      INFER_EI                                 : integer:= conv_integer(x"0c");
      IS_SWITCH                                : string:= "FALSE";

      LAST_CONFIG_DWORD                        : integer:= conv_integer(x"3ff");
      LINK_CAP_ASPM_SUPPORT                    : integer:= 1;
      LINK_CAP_CLOCK_POWER_MANAGEMENT          : string:= "FALSE";
      LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN1    : integer:= 7;
      LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN2    : integer:= 7;
      LINK_CAP_L0S_EXIT_LATENCY_GEN1           : integer:= 7;
      LINK_CAP_L0S_EXIT_LATENCY_GEN2           : integer:= 7;
      LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN1     : integer:= 7;
      LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN2     : integer:= 7;
      LINK_CAP_L1_EXIT_LATENCY_GEN1            : integer:= 7;
      LINK_CAP_L1_EXIT_LATENCY_GEN2            : integer:= 7;
      LINK_CAP_RSVD_23_22                      : integer:= 0;

      MSI_BASE_PTR                             : integer:= conv_integer(x"48");
      MSI_CAP_ID                               : integer:= conv_integer(x"05");
      MSI_CAP_NEXTPTR                          : integer:= conv_integer(x"60");
      MSIX_BASE_PTR                            : integer:= conv_integer(x"9c");
      MSIX_CAP_ID                              : integer:= conv_integer(x"11");
      MSIX_CAP_NEXTPTR                         : integer:= conv_integer(x"00");
      N_FTS_COMCLK_GEN1                        : integer:= 255;
      N_FTS_COMCLK_GEN2                        : integer:= 254;
      N_FTS_GEN1                               : integer:= 255;
      N_FTS_GEN2                               : integer:= 255;

      PCIE_BASE_PTR                            : integer:= conv_integer(x"60");
      PCIE_CAP_CAPABILITY_ID                   : integer:= conv_integer(x"10");
      PCIE_CAP_CAPABILITY_VERSION              : integer:= conv_integer(x"2");
      PCIE_CAP_ON                              : string:= "TRUE";
      PCIE_CAP_RSVD_15_14                      : integer:= 0;
      PCIE_CAP_SLOT_IMPLEMENTED                : string:= "FALSE";
      PCIE_REVISION                            : integer:= 2;
      PGL0_LANE                                : integer:= 0;
      PGL1_LANE                                : integer:= 1;
      PGL2_LANE                                : integer:= 2;
      PGL3_LANE                                : integer:= 3;
      PGL4_LANE                                : integer:= 4;
      PGL5_LANE                                : integer:= 5;
      PGL6_LANE                                : integer:= 6;
      PGL7_LANE                                : integer:= 7;
      PL_AUTO_CONFIG                           : integer:= 0;
      PL_FAST_TRAIN                            : string:= "FALSE";
      PCIE_EXT_CLK                             : string:= "TRUE";
      NO_SLV_ERR                    : string:= "FALSE";
       PCIE_EXT_GT_COMMON : string:= "FALSE";
       EXT_CH_GT_DRP : string:= "FALSE";

 TX_MARGIN_FULL_0  :integer:= conv_integer (x"4F");
 TX_MARGIN_FULL_1  :integer:= conv_integer (x"4e");
 TX_MARGIN_FULL_2  :integer:= conv_integer (x"4d");
 TX_MARGIN_FULL_3  :integer:= conv_integer (x"4c");
 TX_MARGIN_FULL_4  :integer:= conv_integer (x"43");
 TX_MARGIN_LOW_0   :integer:= conv_integer (x"45");
 TX_MARGIN_LOW_1   :integer:= conv_integer (x"46");
 TX_MARGIN_LOW_2   :integer:= conv_integer (x"43");
 TX_MARGIN_LOW_3   :integer:= conv_integer (x"42");
 TX_MARGIN_LOW_4   :integer:=conv_integer  (x"40");
      PM_BASE_PTR                              : integer:= conv_integer(x"40");
      PM_CAP_AUXCURRENT                        : integer:= 0;
      PM_CAP_ID                                : integer:= conv_integer(x"01");
      PM_CAP_ON                                : string:= "TRUE";
      PM_CAP_PME_CLOCK                         : string:= "FALSE";
      PM_CAP_RSVD_04                           : integer:= 0;
      PM_CAP_VERSION                           : integer:= 3;
      PM_CSR_BPCCEN                            : string:= "FALSE";
      PM_CSR_B2B3                              : string:= "FALSE";

      RECRC_CHK                                : integer:= 0;
      RECRC_CHK_TRIM                           : string:= "FALSE";
      SELECT_DLL_IF                            : string:= "FALSE";
      SPARE_BIT1                               : integer:= 0;
      SPARE_BIT2                               : integer:= 0;
      SPARE_BIT3                               : integer:= 0;
      SPARE_BIT4                               : integer:= 0;
      SPARE_BIT5                               : integer:= 0;
      SPARE_BIT6                               : integer:= 0;
      SPARE_BIT7                               : integer:= 0;
      SPARE_BIT8                               : integer:= 0;
      SPARE_BYTE0                              : integer:= conv_integer(x"00");
      SPARE_BYTE1                              : integer:= conv_integer(x"00");
      SPARE_BYTE2                              : integer:= conv_integer(x"00");
      SPARE_BYTE3                              : integer:= conv_integer(x"00");
      SPARE_WORD0                              : integer:= conv_integer(x"00000000");
      SPARE_WORD1                              : integer:= conv_integer(x"00000000");
      SPARE_WORD2                              : integer:= conv_integer(x"00000000");
      SPARE_WORD3                              : integer:= conv_integer(x"00000000");

      TL_RBYPASS                               : string:= "FALSE";
      TL_TFC_DISABLE                           : string:= "FALSE";
      TL_TX_CHECKS_DISABLE                     : string:= "FALSE";
      EXIT_LOOPBACK_ON_EI                      : string:= "TRUE";
      UR_INV_REQ                               : string:= "TRUE";

      VC_CAP_ID                                : integer:= conv_integer(x"0002");
      VC_CAP_VERSION                           : integer:= conv_integer(x"1");
      VSEC_CAP_HDR_ID                          : integer:= conv_integer(x"1234");
      VSEC_CAP_HDR_LENGTH                      : integer:= conv_integer(x"018");
      VSEC_CAP_HDR_REVISION                    : integer:= conv_integer(x"1");
      VSEC_CAP_ID                              : integer:= conv_integer(x"000b");
      VSEC_CAP_IS_LINK_VISIBLE                 : string:= "TRUE";
      VSEC_CAP_VERSION                         : integer:= conv_integer(x"1");

      C_BASEADDR_U                             : integer:= conv_integer(x"FFFF");-- AXI Lite Base Address upper
      C_BASEADDR_L                             : integer:= conv_integer(x"FFFF");-- AXI Lite Base Address lower
      C_HIGHADDR_U                             : integer:= conv_integer(x"0000");-- AXI Lite High Address upper
      C_HIGHADDR_L                             : integer:= conv_integer(x"0000");-- AXI Lite High Address lower

      C_MAX_LNK_WDT                            : integer:= 1;                    -- Maximum Number of PCIE Lanes
      C_ROOT_PORT                              : string:= "FALSE";               -- PCIe block is in root port mode
      C_RP_BAR_HIDE                            : string:= "FALSE";               -- Hide RP PCIe BAR (prevent CPU from assigning address to RP BAR)
      C_RX_REALIGN                             : string:= "TRUE";                -- Enable or Disable Realignment at RX Interface
      C_RX_PRESERVE_ORDER                      : string:= "FALSE";               -- Preserve WR/ RD Ordering at the RX Interface
      C_LAST_CORE_CAP_ADDR                     : integer:= conv_integer(x"000"); -- DWORD address of last enabled block capability
      C_VSEC_CAP_ADDR                          : integer:= conv_integer(x"000"); -- DWORD address of start of VSEC Header
      C_VSEC_CAP_LAST                          : string:= "FALSE";               -- VSEC next capability offset control
      C_VSEC_ID                                : integer:= conv_integer(x"0000");
      C_DEVICE_NUMBER                          : integer:= 0;                    -- Device number for Root Port configurations only
      C_NUM_USER_INTR                          : integer:= 0;                    -- Number of user interrupts in User interrupt vector
      C_USER_PTR                               : integer:= conv_integer(x"0000"); -- Address pointer to User Space
      C_COMP_TIMEOUT                           : integer:= 0;                    -- Completion Timout Value (0: 50us; 1:50ms)
      C_FAMILY                                 : string:= "V6";                   -- Targeted FPGA family

  --*******************************************************************
  -- S6 Parameter List
  --*******************************************************************

      USR_CFG                                  : string:= "FALSE";
      USR_EXT_CFG                              : string:= "FALSE";
      LINK_CAP_L0S_EXIT_LATENCY                : integer:= 7;
      LINK_CAP_L1_EXIT_LATENCY                 : integer:= 7;
      PLM_AUTO_CONFIG                          : string:= "FALSE";
      FAST_TRAIN                               : string:= "FALSE";
      PCIE_GENERIC                             : integer:= conv_integer("000011101111");
      GTP_SEL                                  : integer:= 0;
      CFG_VEN_ID                               : integer:= conv_integer(x"10EE");
      CFG_DEV_ID                               : integer:= conv_integer(x"0007");
      CFG_REV_ID                               : integer:= conv_integer(x"00");
      CFG_SUBSYS_VEN_ID                        : integer:= conv_integer(x"10EE");
      CFG_SUBSYS_ID                            : integer:= conv_integer(x"0007");

  --*******************************************************************
  -- K7 Parameter List
  --*******************************************************************

      AER_CAP_MULTIHEADER                      : string:= "FALSE";
      AER_CAP_OPTIONAL_ERR_SUPPORT             : integer:= conv_integer(x"000000");
      DEV_CAP2_ARI_FORWARDING_SUPPORTED        : string:= "FALSE";
      DEV_CAP2_ATOMICOP32_COMPLETER_SUPPORTED  : string:= "FALSE";
      DEV_CAP2_ATOMICOP64_COMPLETER_SUPPORTED  : string:= "FALSE";
      DEV_CAP2_ATOMICOP_ROUTING_SUPPORTED      : string:= "FALSE";
      DEV_CAP2_CAS128_COMPLETER_SUPPORTED      : string:= "FALSE";
      DEV_CAP2_TPH_COMPLETER_SUPPORTED         : integer:= conv_integer(x"00");
      DEV_CONTROL_EXT_TAG_DEFAULT              : string:= "FALSE";
      DISABLE_RX_POISONED_RESP                 : string:= "FALSE";
      LINK_CAP_ASPM_OPTIONALITY                : string:= "FALSE";
      RBAR_BASE_PTR                            : integer:= conv_integer(x"000");
      RBAR_CAP_CONTROL_ENCODEDBAR0             : integer:= conv_integer(x"00");
      RBAR_CAP_CONTROL_ENCODEDBAR1             : integer:= conv_integer(x"00");
      RBAR_CAP_CONTROL_ENCODEDBAR2             : integer:= conv_integer(x"00");
      RBAR_CAP_CONTROL_ENCODEDBAR3             : integer:= conv_integer(x"00");
      RBAR_CAP_CONTROL_ENCODEDBAR4             : integer:= conv_integer(x"00");
      RBAR_CAP_CONTROL_ENCODEDBAR5             : integer:= conv_integer(x"00");
      RBAR_CAP_INDEX0                          : integer:= conv_integer(x"0");
      RBAR_CAP_INDEX1                          : integer:= conv_integer(x"0");
      RBAR_CAP_INDEX2                          : integer:= conv_integer(x"0");
      RBAR_CAP_INDEX3                          : integer:= conv_integer(x"0");
      RBAR_CAP_INDEX4                          : integer:= conv_integer(x"0");
      RBAR_CAP_INDEX5                          : integer:= conv_integer(x"0");
      RBAR_CAP_ON                              : string:= "FALSE";
      RBAR_CAP_SUP0                            : integer:= conv_integer(x"00001");
      RBAR_CAP_SUP1                            : integer:= conv_integer(x"00001");
      RBAR_CAP_SUP2                            : integer:= conv_integer(x"00001");
      RBAR_CAP_SUP3                            : integer:= conv_integer(x"00001");
      RBAR_CAP_SUP4                            : integer:= conv_integer(x"00001");
      RBAR_CAP_SUP5                            : integer:= conv_integer(x"00001");
      RBAR_NUM                                 : integer:= conv_integer(x"0");
      TRN_NP_FC                                : string:= "TRUE";
      TRN_DW                                   : string:= "FALSE";
      UR_ATOMIC                                : string:= "FALSE";
      UR_PRS_RESPONSE                          : string:= "TRUE";
      USER_CLK2_DIV2                           : string:= "FALSE";
      VC0_TOTAL_CREDITS_NPD                    : integer:= 24;
      LINK_CAP_RSVD_23                         : integer:= 0;
      CFG_ECRC_ERR_CPLSTAT                     : integer:= 0;
      DISABLE_ERR_MSG                          : string:= "FALSE";
      DISABLE_LOCKED_FILTER                    : string:= "FALSE";
      DISABLE_PPM_FILTER                       : string:= "FALSE";
      ENDEND_TLP_PREFIX_FORWARDING_SUPPORTED   : string:= "FALSE";
      INTERRUPT_STAT_AUTO                      : string:= "TRUE";
      MPS_FORCE                                : string:= "FALSE";
      PM_ASPML0S_TIMEOUT                       : integer:= conv_integer(x"0000");
      PM_ASPML0S_TIMEOUT_EN                    : string:= "FALSE";
      PM_ASPML0S_TIMEOUT_FUNC                  : integer:= 0;
      PM_ASPM_FASTEXIT                         : string:= "FALSE";
      PM_MF                                    : string:= "FALSE";
      RP_AUTO_SPD                              : integer:= conv_integer(x"1");
      RP_AUTO_SPD_LOOPCNT                      : integer:= conv_integer(x"1f");
      SIM_VERSION                              : string:= "1.0";
      SSL_MESSAGE_AUTO                         : string:= "FALSE";
      TECRC_EP_INV                             : string:= "FALSE";
      UR_CFG1                                  : string:= "TRUE";
      USE_RID_PINS                             : string:= "FALSE";
      DEV_CAP2_ENDEND_TLP_PREFIX_SUPPORTED     : string:= "FALSE";
      DEV_CAP2_EXTENDED_FMT_FIELD_SUPPORTED    : string:= "FALSE";
      DEV_CAP2_LTR_MECHANISM_SUPPORTED         : string:= "FALSE";
      DEV_CAP2_MAX_ENDEND_TLP_PREFIXES         : integer:= conv_integer(x"0");
      DEV_CAP2_NO_RO_ENABLED_PRPR_PASSING      : string:= "FALSE";
      RBAR_CAP_ID                              : integer:= conv_integer(x"0015");
      RBAR_CAP_NEXTPTR                         : integer:= conv_integer(x"000");
      RBAR_CAP_VERSION                         : integer:= conv_integer(x"1");
      PCIE_USE_MODE                            : string:= "1.0";
      PCIE_GT_DEVICE                           : string:= "GTP";
      PCIE_CHAN_BOND                           : integer:= 1;
      PCIE_PLL_SEL                             : string:= "CPLL";
      PCIE_ASYNC_EN                            : string:= "FALSE";
      PCIE_TXBUF_EN                            : string:= "FALSE";
      EXT_PIPE_INTERFACE                       : string:= "FALSE"
   );
   port(
      -- 1. PCI Express (pci_exp) Interface
      ---------------------------------------------------------
      -- Tx
      pci_exp_txp                              : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
      pci_exp_txn                              : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
      -- Rx
      pci_exp_rxp                              : in  std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
      pci_exp_rxn                              : in  std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
 qpll_drp_crscode      : in std_logic_vector(11 downto 0);
 qpll_drp_fsm          : in std_logic_vector(17 downto 0);
 qpll_drp_done         : in std_logic_vector(1 downto 0);
 qpll_drp_reset        : in std_logic_vector(1 downto 0);
 qpll_qplllock         : in std_logic_vector(1 downto 0);
 qpll_qplloutclk       : in std_logic_vector(1 downto 0);
 qpll_qplloutrefclk    : in std_logic_vector(1 downto 0);
 qpll_qplld    : out std_logic_vector(1 downto 0)    ;
  qpll_qpllreset: out std_logic_vector(1 downto 0)    ;
  qpll_drp_clk: out std_logic_vector(1 downto 0)     ;
  qpll_drp_rst_n: out std_logic_vector(1 downto 0)     ;
  qpll_drp_ovrd: out std_logic_vector(1 downto 0)     ;
  qpll_drp_gen3: out std_logic_vector(1 downto 0)     ;
  qpll_drp_start: out std_logic_vector(1 downto 0)     ;

  pipe_txprbssel               :in std_logic_vector(2 downto 0);
  pipe_rxprbssel               :in std_logic_vector(2 downto 0);
  pipe_txprbsforceerr  :in std_logic;
  pipe_rxprbscntreset  :in std_logic;
  pipe_loopback                :in std_logic_vector(2 downto 0);
  pipe_txinhibit               :in std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);

  pipe_rxprbserr : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);


  pipe_rst_fsm         :out std_logic_vector(4 downto 0);
  pipe_qrst_fsm        :out std_logic_vector(11 downto 0);
  pipe_rate_fsm        :out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*5)-1 downto 0);
  pipe_sync_fsm_tx     :out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*6)-1 downto 0);
  pipe_sync_fsm_rx     :out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*7)-1 downto 0);
  pipe_drp_fsm         :out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*7)-1 downto 0);

  pipe_rst_idle        :out std_logic;
  pipe_qrst_idle       :out std_logic;
  pipe_rate_idle       :out std_logic;
  pipe_eyescandataerror	:out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
  pipe_rxstatus : out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*3)-1 downto 0);    
  pipe_dmonitorout : out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*15)-1 downto 0);

  pipe_cpll_lock          : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0); 
  pipe_qpll_lock          : out std_logic_vector(((LINK_CAP_MAX_LINK_WIDTH/8)+1)-1 downto 0); 
  pipe_rxpmaresetdone     : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);  
  pipe_rxbufstatus        : out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*3)-1 downto 0);     
  pipe_txphaligndone      : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);   
  pipe_txphinitdone       : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);      
  pipe_txdlysresetdone    : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);    
  pipe_rxphaligndone      : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);     
  pipe_rxdlysresetdone    : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);      
  pipe_rxsyncdone         : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);      
  pipe_rxdisperr          : out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*8)-1 downto 0);     
  pipe_rxnotintable       : out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*8)-1 downto 0);     
  pipe_rxcommadet         : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);   

  gt_ch_drp_rdy        :out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
  pipe_debug_0 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
  pipe_debug_1 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
  pipe_debug_2 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
  pipe_debug_3 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
  pipe_debug_4 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
  pipe_debug_5 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
  pipe_debug_6 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
  pipe_debug_7 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
  pipe_debug_8 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
  pipe_debug_9 : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
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

 INT_PCLK_OUT_SLAVE	: out std_logic;	 
 INT_RXUSRCLK_OUT    	: out std_logic;   	
 INT_DCLK_OUT        	: out std_logic;   	
 INT_USERCLK1_OUT    	: out std_logic;   	
 INT_USERCLK2_OUT    	: out std_logic;   	
 INT_OOBCLK_OUT      	: out std_logic;   	
 INT_MMCM_LOCK_OUT   	: out std_logic;   	
 INT_QPLLLOCK_OUT	: out std_logic_vector(1 downto 0);	
 INT_QPLLOUTCLK_OUT	: out std_logic_vector(1 downto 0);	
 INT_QPLLOUTREFCLK_OUT	: out std_logic_vector(1 downto 0);	
 INT_RXOUTCLK_OUT 	: out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);	      
 INT_PCLK_SEL_SLAVE	: in std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);	
     -------------Channel DRP---------------------------------
  ext_ch_gt_drpclk      : out std_logic;
  ext_ch_gt_drpaddr     : in std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*9)-1 downto 0);
  ext_ch_gt_drpen       : in std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
  ext_ch_gt_drpdi       : in std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*16)-1 downto 0);
  ext_ch_gt_drpwe       : in std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);

  ext_ch_gt_drpdo      : out std_logic_vector((LINK_CAP_MAX_LINK_WIDTH*16)-1 downto 0);
  ext_ch_gt_drprdy     : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);

      ---------------------------------------------------------
      -- 2. Transaction (TRN) Interface
      ---------------------------------------------------------
      -- Rx
      rx_np_ok                                 : in  std_logic;
      rx_np_req                                : in  std_logic;

      ---------------------------------------------
      -- AXI TX - RW Interface
      -----------
      s_axis_rw_tdata                          : in  std_logic_vector(C_DATA_WIDTH-1 downto 0); -- RW data from user
      s_axis_rw_tvalid                         : in  std_logic;                                 -- RW data is valid
      s_axis_rw_tready                         : out std_logic;                                 -- RW ready for data
      s_axis_rw_tstrb                          : in  std_logic_vector(STRB_WIDTH-1 downto 0);   -- RW strobe byte enables
      s_axis_rw_tlast                          : in  std_logic;                                 -- RW data is last
      s_axis_rw_tuser                          : in  std_logic_vector(3 downto 0);              -- RW user signals

      -- AXI TX - RR Interface
      -------------
      s_axis_rr_tdata                          : in  std_logic_vector(C_DATA_WIDTH-1 downto 0); -- RR data from user
      s_axis_rr_tvalid                         : in  std_logic;                                 -- RR data is valid
      s_axis_rr_tready                         : out std_logic;                                 -- RR ready for data
      s_axis_rr_tstrb                          : in  std_logic_vector(STRB_WIDTH-1 downto 0);   -- RR strobe byte enables
      s_axis_rr_tlast                          : in  std_logic;                                 -- RR data is last
      s_axis_rr_tuser                          : in  std_logic_vector(3 downto 0);              -- RR user signals

      -- AXI TX - CC Interface
      -------------
      s_axis_cc_tdata                          : in  std_logic_vector(C_DATA_WIDTH-1 downto 0); -- CC data from user
      s_axis_cc_tvalid                         : in  std_logic;                                 -- CC data is valid
      s_axis_cc_tready                         : out std_logic;                                 -- CC ready for data
      s_axis_cc_tstrb                          : in  std_logic_vector(STRB_WIDTH-1 downto 0);   -- CC strobe byte enables
      s_axis_cc_tlast                          : in  std_logic;                                 -- CC data is last
      s_axis_cc_tuser                          : in  std_logic_vector(3 downto 0);              -- CC user signals

      -- AXI RX - CW Interface
      -------------
      m_axis_cw_tdata                          : out std_logic_vector(C_DATA_WIDTH-1 downto 0); -- CW data to user
      m_axis_cw_tvalid                         : out std_logic;                                 -- CW data is valid
      m_axis_cw_tready                         : in  std_logic;                                 -- CW ready for data
      m_axis_cw_tstrb                          : out std_logic_vector(STRB_WIDTH-1 downto 0);   -- CW strobe byte enables
      m_axis_cw_tlast                          : out std_logic;                                 -- CW data is last
      m_axis_cw_tuser                          : out std_logic_vector(21 downto 0);             -- CW user signals
 
      -- AXI RX - CR Interface
      -------------
      m_axis_cr_tdata                          : out std_logic_vector(C_DATA_WIDTH-1 downto 0); -- CR data to user
      m_axis_cr_tvalid                         : out std_logic;                                 -- CR data is valid
      m_axis_cr_tready                         : in  std_logic;                                 -- CR ready for data
      m_axis_cr_tstrb                          : out std_logic_vector(STRB_WIDTH-1 downto 0);   -- CR strobe byte enables
      m_axis_cr_tlast                          : out std_logic;                                 -- CR data is last
      m_axis_cr_tuser                          : out std_logic_vector(21 downto 0);             -- CR user signals

      -- AXI RX - RC Interface
      -------------
      m_axis_rc_tdata                          : out std_logic_vector(C_DATA_WIDTH-1 downto 0); -- RC data to user
      m_axis_rc_tvalid                         : out std_logic;                                 -- RC data is valid
      m_axis_rc_tready                         : in  std_logic;                                 -- RC ready for data
      m_axis_rc_tstrb                          : out std_logic_vector(STRB_WIDTH-1 downto 0);   -- RC strobe byte enables
      m_axis_rc_tlast                          : out std_logic;                                 -- RC data is last
      m_axis_rc_tuser                          : out std_logic_vector(21 downto 0);             -- RC user signals

      -- AXI -Lite Interface - CFG Block
      ---------------------------
      s_axi_ctl_awaddr                         : in  std_logic_vector(31 downto 0);             -- AXI Lite Write address
      s_axi_ctl_awvalid                        : in  std_logic;                                 -- AXI Lite Write Address Valid
      s_axi_ctl_awready                        : out std_logic;                                 -- AXI Lite Write Address Core ready
      s_axi_ctl_wdata                          : in  std_logic_vector(31 downto 0);             -- AXI Lite Write Data
      s_axi_ctl_wstrb                          : in  std_logic_vector(3 downto 0);              -- AXI Lite Write Data strobe
      s_axi_ctl_wvalid                         : in  std_logic;                                 -- AXI Lite Write data Valid
      s_axi_ctl_wready                         : out std_logic;                                 -- AXI Lite Write Data Core ready
      s_axi_ctl_bresp                          : out std_logic_vector(1 downto 0);              -- AXI Lite Write Data strobe
      s_axi_ctl_bvalid                         : out std_logic;                                 -- AXI Lite Write data Valid
      s_axi_ctl_bready                         : in  std_logic;                                 -- AXI Lite Write Data Core ready

      s_axi_ctl_araddr                         : in  std_logic_vector(31 downto 0);             -- AXI Lite Read address
      s_axi_ctl_arvalid                        : in  std_logic;                                 -- AXI Lite Read Address Valid
      s_axi_ctl_arready                        : out std_logic;                                 -- AXI Lite Read Address Core ready
      s_axi_ctl_rdata                          : out std_logic_vector(31 downto 0);             -- AXI Lite Read Data
      s_axi_ctl_rresp                          : out std_logic_vector(1 downto 0);              -- AXI Lite Read Data strobe
      s_axi_ctl_rvalid                         : out std_logic;                                 -- AXI Lite Read data Valid
      s_axi_ctl_rready                         : in  std_logic;                                 -- AXI Lite Read Data Core ready

      -- AXI Lite User IPIC Signals
      -----------------------------
      Bus2IP_CS                                : out std_logic;                                 -- Chip Select
      Bus2IP_BE                                : out std_logic_vector(3 downto 0);              -- Byte Enable Vector
      Bus2IP_RNW                               : out std_logic;                                 -- Read Npt Write Qualifier
      Bus2IP_Addr                              : out std_logic_vector(31 downto 0);             -- Address Bus
      Bus2IP_Data                              : out std_logic_vector(31 downto 0);             -- Write Data Bus
      IP2Bus_RdAck                             : in  std_logic;                                 -- Read Acknowledgement
      IP2Bus_WrAck                             : in  std_logic;                                 -- Write Acknowledgement
      IP2Bus_Data                              : in  std_logic_vector(31 downto 0);             -- Read Data Bus
      IP2Bus_Error                             : in  std_logic;                                 -- Error Qualifier

      --Interrupts
      -------------------
      ctl_intr                                 : out std_logic;                                 -- user interrupt
      ctl_user_intr                            : in  std_logic_vector(C_NUM_USER_INTR-1 downto 0);-- User interrupt vector used only in axi_pcie_mm_s
  
      -- User Misc.
      -------------
      --user_turnoff_ok                          : in  std_logic;                                 -- Turnoff OK from user
      --user_tcfg_gnt                            : in  std_logic;                                 -- Send cfg OK from user
      np_cpl_pending                           : in  std_logic;
      RP_bridge_en                             : out std_logic;

      ---------------------------------------------------------
      -- 3. Configuration (CFG) Interface
      ---------------------------------------------------------

      blk_err_cor                              : in  std_logic;
      blk_err_ur                               : in  std_logic;
      blk_err_ecrc                             : in  std_logic;
      blk_err_cpl_timeout                      : in  std_logic;
      blk_err_cpl_abort                        : in  std_logic;
      blk_err_cpl_unexpect                     : in  std_logic;
      blk_err_posted                           : in  std_logic;
      blk_err_locked                           : in  std_logic;
      blk_err_tlp_cpl_header                   : in  std_logic_vector(47 downto 0);
      blk_err_cpl_rdy                          : out std_logic;
      blk_interrupt                            : in  std_logic;
      blk_interrupt_rdy                        : out std_logic;
      blk_interrupt_assert                     : in  std_logic;
      blk_interrupt_di                         : in  std_logic_vector(7 downto 0);
      cfg_interrupt_do                         : out std_logic_vector(7 downto 0);
      blk_interrupt_mmenable                   : out std_logic_vector(2 downto 0);
      blk_interrupt_msienable                  : out std_logic;
      blk_interrupt_msixenable                 : out std_logic;
      blk_interrupt_msixfm                     : out std_logic;
      blk_trn_pending                          : in  std_logic;
      cfg_pm_send_pme_to                       : in  std_logic;
      blk_status                               : out std_logic_vector(15 downto 0);
      blk_command                              : out std_logic_vector(15 downto 0);
      blk_dstatus                              : out std_logic_vector(15 downto 0);
      blk_dcommand                             : out std_logic_vector(15 downto 0);
      blk_lstatus                              : out std_logic_vector(15 downto 0);
      blk_lcommand                             : out std_logic_vector(15 downto 0);
      blk_dcommand2                            : out std_logic_vector(15 downto 0);
      blk_pcie_link_state                      : out std_logic_vector(2 downto 0);
      blk_dsn                                  : in  std_logic_vector(63 downto 0);
      blk_pmcsr_pme_en                         : out std_logic;
      blk_pmcsr_pme_status                     : out std_logic;
      blk_pmcsr_powerstate                     : out std_logic_vector(1 downto 0);

      cfg_msg_received                         : out std_logic;
      blk_msg_data                             : out std_logic_vector(15 downto 0);
      blk_msg_received_err_cor                 : out std_logic;
      blk_msg_received_err_non_fatal           : out std_logic;
      blk_msg_received_err_fatal               : out std_logic;
      blk_msg_received_pme_to_ack              : out std_logic;
      blk_msg_received_assert_inta             : out std_logic;
      blk_msg_received_assert_intb             : out std_logic;
      blk_msg_received_assert_intc             : out std_logic;
      blk_msg_received_assert_intd             : out std_logic;
      blk_msg_received_deassert_inta           : out std_logic;
      blk_msg_received_deassert_intb           : out std_logic;
      blk_msg_received_deassert_intc           : out std_logic;
      blk_msg_received_deassert_intd           : out std_logic;

      blk_link_up                              : out std_logic;

      blk_ds_bus_number                        : in  std_logic_vector(7 downto 0);
      blk_ds_device_number                     : in  std_logic_vector(4 downto 0);

      -- Only for End point Cores
      blk_to_turnoff                           : out  std_logic;
      blk_turnoff_ok                           : in std_logic;
      blk_pm_wake                              : in std_logic;

      blk_bus_number                           : out std_logic_vector(7 downto 0);
      blk_device_number                        : out std_logic_vector(4 downto 0);
      blk_function_number                      : out std_logic_vector(2 downto 0);

      ---------------------------------------------------------
      -- 4. Physical Layer Control and Status (PL) Interface
      ---------------------------------------------------------

      blk_pl_initial_link_width                : out std_logic_vector(2 downto 0);
      blk_pl_lane_reversal_mode                : out std_logic_vector(1 downto 0);
      blk_pl_link_gen2_capable                 : out std_logic;
      blk_pl_link_partner_gen2_supported       : out std_logic;
      blk_pl_link_upcfg_capable                : out std_logic;
      blk_pl_ltssm_state                       : out std_logic_vector(5 downto 0);
      blk_pl_sel_link_rate                     : out std_logic;
      blk_pl_sel_link_width                    : out std_logic_vector(1 downto 0);
      blk_pl_upstream_prefer_deemph            : in  std_logic;
      blk_pl_hot_rst                           : out std_logic;

      -- Flow Control
      blk_fc_cpld                              : out std_logic_vector(11 downto 0);
      blk_fc_cplh                              : out std_logic_vector(7 downto 0);
      blk_fc_npd                               : out std_logic_vector(11 downto 0);
      blk_fc_nph                               : out std_logic_vector(7 downto 0);
      blk_fc_pd                                : out std_logic_vector(11 downto 0);
      blk_fc_ph                                : out std_logic_vector(7 downto 0);
      blk_fc_sel                               : in  std_logic_vector(2 downto 0);

      -- Tx

      blk_tbuf_av                              : out std_logic_vector(5 downto 0);
      blk_tcfg_req                             : out std_logic;                                    
      blk_tcfg_gnt                             : in  std_logic;                               

      tx_err_drop                              : out std_logic;                     

      --S-6 Specific

      cfg_do                                   : out std_logic_vector(31 downto 0);
      cfg_rd_wr_done                           : out std_logic;                                
      cfg_dwaddr                               : in  std_logic_vector(9 downto 0);
      cfg_rd_en                                : in  std_logic;                          

      ---------------------------------------------------------
      -- 5. System  (SYS) Interface
      ---------------------------------------------------------

      com_sysclk                               : in  std_logic;
      com_sysrst                               : in  std_logic;
      mmcm_lock                                : out std_logic;
      com_iclk                                 : out std_logic;
      com_cclk                                 : out std_logic;
      com_corereset                            : out std_logic;

      ---------------------------------------------------------
      -- 6. Additional Signals for K7
      ---------------------------------------------------------

      clk_fab_refclk                           : in std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
      clk_pclk                                 : in std_logic;
      clk_rxusrclk                             : in std_logic;
      clk_dclk                                 : in std_logic;
      clk_userclk1                             : in std_logic;
      clk_userclk2                             : in std_logic;
      clk_oobclk_in                            : in std_logic;
      clk_mmcm_lock                            : in std_logic;
      clk_txoutclk                             : out std_logic;
      clk_rxoutclk                             : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
      clk_pclk_sel                             : out std_logic_vector(LINK_CAP_MAX_LINK_WIDTH-1 downto 0);
      clk_gen3                                 : out std_logic;
      PIPE_MMCM_RST_N                          : in std_logic;
      user_clk_out                             : out std_logic;
      user_reset_out                           : out std_logic;
      cfg_received_func_lvl_rst                : out std_logic;
      cfg_err_atomic_egress_blocked            : in std_logic;
      cfg_err_internal_cor                     : in std_logic;
      cfg_err_malformed                        : in std_logic;
      cfg_err_mc_blocked                       : in std_logic;
      cfg_err_poisoned                         : in std_logic;
      cfg_err_norecovery                       : in std_logic;
      cfg_err_acs                              : in std_logic;
      cfg_err_internal_uncor                   : in std_logic;
      cfg_pm_halt_aspm_l0s                     : in std_logic;
      cfg_pm_halt_aspm_l1                      : in std_logic;
      cfg_pm_force_state_en                    : in std_logic;
      cfg_pm_force_state                       : in std_logic_vector(1 downto 0);
      cfg_interrupt_stat                       : in std_logic;
      cfg_pciecap_interrupt_msgnum             : in std_logic_vector(4 downto 0);
      cfg_bridge_serr_en                       : out std_logic;
      cfg_slot_control_electromech_il_ctl_pulse: out std_logic;
      cfg_root_control_syserr_corr_err_en      : out std_logic;
      cfg_root_control_syserr_non_fatal_err_en : out std_logic;
      cfg_root_control_syserr_fatal_err_en     : out std_logic;
      cfg_root_control_pme_int_en              : out std_logic;
      cfg_aer_rooterr_corr_err_reporting_en    : out std_logic;
      cfg_aer_rooterr_non_fatal_err_reporting_en : out std_logic;
      cfg_aer_rooterr_fatal_err_reporting_en   : out std_logic;
      cfg_aer_rooterr_corr_err_received        : out std_logic;
      cfg_aer_rooterr_non_fatal_err_received   : out std_logic;
      cfg_aer_rooterr_fatal_err_received       : out std_logic;
      cfg_msg_received_pm_as_nak               : out std_logic;
      cfg_msg_received_pm_pme                  : out std_logic;
      cfg_msg_received_setslotpowerlimit       : out std_logic;
      pl_phy_lnk_up                            : out std_logic;
      pl_tx_pm_state                           : out std_logic_vector(2 downto 0);
      pl_rx_pm_state                           : out std_logic_vector(1 downto 0);
      pl_directed_change_done                  : out std_logic;
      pl_downstream_deemph_source              : in std_logic;
      cfg_err_aer_headerlog                    : in std_logic_vector(127 downto 0);
      cfg_aer_interrupt_msgnum                 : in std_logic_vector(4 downto 0);
      cfg_err_aer_headerlog_set                : out std_logic;
      cfg_aer_ecrc_check_en                    : out std_logic;
      cfg_aer_ecrc_gen_en                      : out std_logic;
      cfg_vc_tcvc_map                          : out std_logic_vector(6 downto 0);
      config_gen_req                           : out std_logic
   );
end component;

begin

   comp_enhanced_core_top_wrap : axi_pcie_v2_8_0_enhanced_core_top_wrap
      generic map (
      C_DATA_WIDTH                             => C_DATA_WIDTH,
      STRB_WIDTH                               => STRB_WIDTH,
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

      CARDBUS_CIS_POINTER                      => CARDBUS_CIS_POINTER,
      CLASS_CODE                               => CLASS_CODE,
      CMD_INTX_IMPLEMENTED                     => CMD_INTX_IMPLEMENTED,
      CPL_TIMEOUT_DISABLE_SUPPORTED            => CPL_TIMEOUT_DISABLE_SUPPORTED,
      CPL_TIMEOUT_RANGES_SUPPORTED             => CPL_TIMEOUT_RANGES_SUPPORTED,

      DEV_CAP_EXT_TAG_SUPPORTED                => DEV_CAP_EXT_TAG_SUPPORTED,
      DEV_CAP_MAX_PAYLOAD_SUPPORTED            => DEV_CAP_MAX_PAYLOAD_SUPPORTED,
      DEV_CAP_PHANTOM_FUNCTIONS_SUPPORT        => DEV_CAP_PHANTOM_FUNCTIONS_SUPPORT,
      DEVICE_ID                                => DEVICE_ID,

      DISABLE_LANE_REVERSAL                    => DISABLE_LANE_REVERSAL,
      DISABLE_SCRAMBLING                       => DISABLE_SCRAMBLING,
      DSN_BASE_PTR                             => DSN_BASE_PTR,
      DSN_CAP_NEXTPTR                          => DSN_CAP_NEXTPTR,
      DSN_CAP_ON                               => DSN_CAP_ON,

      ENABLE_MSG_ROUTE                         => ENABLE_MSG_ROUTE,
      ENABLE_RX_TD_ECRC_TRIM                   => ENABLE_RX_TD_ECRC_TRIM,
      EXPANSION_ROM_U                          => EXPANSION_ROM_U,
      EXPANSION_ROM_L                          => EXPANSION_ROM_L,
      EXT_CFG_CAP_PTR                          => EXT_CFG_CAP_PTR,
      EXT_CFG_XP_CAP_PTR                       => EXT_CFG_XP_CAP_PTR,
      HEADER_TYPE                              => HEADER_TYPE,
      INTERRUPT_PIN                            => INTERRUPT_PIN,

      LINK_CAP_DLL_LINK_ACTIVE_REPORTING_CAP   => LINK_CAP_DLL_LINK_ACTIVE_REPORTING_CAP,
      LINK_CAP_LINK_BANDWIDTH_NOTIFICATION_CAP => LINK_CAP_LINK_BANDWIDTH_NOTIFICATION_CAP,
      LINK_CAP_MAX_LINK_SPEED                  => LINK_CAP_MAX_LINK_SPEED,
      LINK_CAP_MAX_LINK_WIDTH                  => LINK_CAP_MAX_LINK_WIDTH,
      LINK_CAP_SURPRISE_DOWN_ERROR_CAPABLE     => LINK_CAP_SURPRISE_DOWN_ERROR_CAPABLE,

      LINK_CONTROL_RCB                         => LINK_CONTROL_RCB,
      LINK_CTRL2_DEEMPHASIS                    => LINK_CTRL2_DEEMPHASIS,
      LINK_CTRL2_HW_AUTONOMOUS_SPEED_DISABLE   => LINK_CTRL2_HW_AUTONOMOUS_SPEED_DISABLE,
      LINK_CTRL2_TARGET_LINK_SPEED             => LINK_CTRL2_TARGET_LINK_SPEED,
      LINK_STATUS_SLOT_CLOCK_CONFIG            => LINK_STATUS_SLOT_CLOCK_CONFIG,

      LL_ACK_TIMEOUT                           => LL_ACK_TIMEOUT,
      LL_ACK_TIMEOUT_EN                        => LL_ACK_TIMEOUT_EN,
      LL_ACK_TIMEOUT_FUNC                      => LL_ACK_TIMEOUT_FUNC,
      LL_REPLAY_TIMEOUT                        => LL_REPLAY_TIMEOUT,
      LL_REPLAY_TIMEOUT_EN                     => LL_REPLAY_TIMEOUT_EN,
      LL_REPLAY_TIMEOUT_FUNC                   => LL_REPLAY_TIMEOUT_FUNC,

      LTSSM_MAX_LINK_WIDTH                     => LTSSM_MAX_LINK_WIDTH,
      MSI_DECODE_ENABLE                        => MSI_DECODE_ENABLE,
      MSI_CAP_MULTIMSGCAP                      => MSI_CAP_MULTIMSGCAP,
      MSI_CAP_MULTIMSG_EXTENSION               => MSI_CAP_MULTIMSG_EXTENSION,
      MSI_CAP_ON                               => MSI_CAP_ON,
      MSI_CAP_PER_VECTOR_MASKING_CAPABLE       => MSI_CAP_PER_VECTOR_MASKING_CAPABLE,
      MSI_CAP_64_BIT_ADDR_CAPABLE              => MSI_CAP_64_BIT_ADDR_CAPABLE,

      MSIX_CAP_ON                              => MSIX_CAP_ON,
      MSIX_CAP_PBA_BIR                         => MSIX_CAP_PBA_BIR,
      MSIX_CAP_PBA_OFFSET                      => MSIX_CAP_PBA_OFFSET,
      MSIX_CAP_TABLE_BIR                       => MSIX_CAP_TABLE_BIR,
      MSIX_CAP_TABLE_OFFSET                    => MSIX_CAP_TABLE_OFFSET,
      MSIX_CAP_TABLE_SIZE                      => MSIX_CAP_TABLE_SIZE,

      PCIE_CAP_DEVICE_PORT_TYPE                => PCIE_CAP_DEVICE_PORT_TYPE,
      PCIE_CAP_INT_MSG_NUM                     => PCIE_CAP_INT_MSG_NUM,
      PCIE_CAP_NEXTPTR                         => PCIE_CAP_NEXTPTR,
      PCIE_DRP_ENABLE                          => PCIE_DRP_ENABLE,
      PIPE_PIPELINE_STAGES                     => PIPE_PIPELINE_STAGES,

      PM_CAP_DSI                               => PM_CAP_DSI,
      PM_CAP_D1SUPPORT                         => PM_CAP_D1SUPPORT,
      PM_CAP_D2SUPPORT                         => PM_CAP_D2SUPPORT,
      PM_CAP_NEXTPTR                           => PM_CAP_NEXTPTR,
      PM_CAP_PMESUPPORT                        => PM_CAP_PMESUPPORT,
      PM_CSR_NOSOFTRST                         => PM_CSR_NOSOFTRST,

      PM_DATA_SCALE0                           => PM_DATA_SCALE0,
      PM_DATA_SCALE1                           => PM_DATA_SCALE1,
      PM_DATA_SCALE2                           => PM_DATA_SCALE2,
      PM_DATA_SCALE3                           => PM_DATA_SCALE3,
      PM_DATA_SCALE4                           => PM_DATA_SCALE4,
      PM_DATA_SCALE5                           => PM_DATA_SCALE5,
      PM_DATA_SCALE6                           => PM_DATA_SCALE6,
      PM_DATA_SCALE7                           => PM_DATA_SCALE7,

      PM_DATA0                                 => PM_DATA0,
      PM_DATA1                                 => PM_DATA1,
      PM_DATA2                                 => PM_DATA2,
      PM_DATA3                                 => PM_DATA3,
      PM_DATA4                                 => PM_DATA4,
      PM_DATA5                                 => PM_DATA5,
      PM_DATA6                                 => PM_DATA6,
      PM_DATA7                                 => PM_DATA7,

      REF_CLK_FREQ                             => REF_CLK_FREQ,
      REVISION_ID                              => REVISION_ID,
      ROOT_CAP_CRS_SW_VISIBILITY               => ROOT_CAP_CRS_SW_VISIBILITY,
      SPARE_BIT0                               => SPARE_BIT0,
      SUBSYSTEM_ID                             => SUBSYSTEM_ID,
      SUBSYSTEM_VENDOR_ID                      => SUBSYSTEM_VENDOR_ID,

      SLOT_CAP_ATT_BUTTON_PRESENT              => SLOT_CAP_ATT_BUTTON_PRESENT,
      SLOT_CAP_ATT_INDICATOR_PRESENT           => SLOT_CAP_ATT_INDICATOR_PRESENT,
      SLOT_CAP_ELEC_INTERLOCK_PRESENT          => SLOT_CAP_ELEC_INTERLOCK_PRESENT,
      SLOT_CAP_HOTPLUG_CAPABLE                 => SLOT_CAP_HOTPLUG_CAPABLE,
      SLOT_CAP_HOTPLUG_SURPRISE                => SLOT_CAP_HOTPLUG_SURPRISE,
      SLOT_CAP_MRL_SENSOR_PRESENT              => SLOT_CAP_MRL_SENSOR_PRESENT,
      SLOT_CAP_NO_CMD_COMPLETED_SUPPORT        => SLOT_CAP_NO_CMD_COMPLETED_SUPPORT,
      SLOT_CAP_PHYSICAL_SLOT_NUM               => SLOT_CAP_PHYSICAL_SLOT_NUM,
      SLOT_CAP_POWER_CONTROLLER_PRESENT        => SLOT_CAP_POWER_CONTROLLER_PRESENT,
      SLOT_CAP_POWER_INDICATOR_PRESENT         => SLOT_CAP_POWER_INDICATOR_PRESENT,
      SLOT_CAP_SLOT_POWER_LIMIT_SCALE          => SLOT_CAP_SLOT_POWER_LIMIT_SCALE,
      SLOT_CAP_SLOT_POWER_LIMIT_VALUE          => SLOT_CAP_SLOT_POWER_LIMIT_VALUE,

      TL_RX_RAM_RADDR_LATENCY                  => TL_RX_RAM_RADDR_LATENCY,
      TL_RX_RAM_RDATA_LATENCY                  => TL_RX_RAM_RDATA_LATENCY,
      TL_RX_RAM_WRITE_LATENCY                  => TL_RX_RAM_WRITE_LATENCY,
      TL_TX_RAM_RADDR_LATENCY                  => TL_TX_RAM_RADDR_LATENCY,
      TL_TX_RAM_RDATA_LATENCY                  => TL_TX_RAM_RDATA_LATENCY,
      TL_TX_RAM_WRITE_LATENCY                  => TL_TX_RAM_WRITE_LATENCY,

      UPCONFIG_CAPABLE                         => UPCONFIG_CAPABLE,
      UPSTREAM_FACING                          => UPSTREAM_FACING,
      USER_CLK_FREQ                            => USER_CLK_FREQ,
      VC_BASE_PTR                              => VC_BASE_PTR,
      VC_CAP_NEXTPTR                           => VC_CAP_NEXTPTR,
      VC_CAP_ON                                => VC_CAP_ON,
      VC_CAP_REJECT_SNOOP_TRANSACTIONS         => VC_CAP_REJECT_SNOOP_TRANSACTIONS,

      VC0_CPL_INFINITE                         => VC0_CPL_INFINITE,
      VC0_RX_RAM_LIMIT                         => VC0_RX_RAM_LIMIT,
      VC0_TOTAL_CREDITS_CD                     => VC0_TOTAL_CREDITS_CD,
      VC0_TOTAL_CREDITS_CH                     => VC0_TOTAL_CREDITS_CH,
      VC0_TOTAL_CREDITS_NPH                    => VC0_TOTAL_CREDITS_NPH,
      VC0_TOTAL_CREDITS_PD                     => VC0_TOTAL_CREDITS_PD,
      VC0_TOTAL_CREDITS_PH                     => VC0_TOTAL_CREDITS_PH,
      VC0_TX_LASTPACKET                        => VC0_TX_LASTPACKET,

      VENDOR_ID                                => VENDOR_ID,
      VSEC_BASE_PTR                            => VSEC_BASE_PTR,
      VSEC_CAP_NEXTPTR                         => VSEC_CAP_NEXTPTR,
      VSEC_CAP_ON                              => VSEC_CAP_ON,

      ALLOW_X8_GEN2                            => ALLOW_X8_GEN2,
      AER_BASE_PTR                             => AER_BASE_PTR,
      AER_CAP_ECRC_CHECK_CAPABLE               => AER_CAP_ECRC_CHECK_CAPABLE,
      AER_CAP_ECRC_GEN_CAPABLE                 => AER_CAP_ECRC_GEN_CAPABLE,
      AER_CAP_ID                               => AER_CAP_ID,
      AER_CAP_INT_MSG_NUM_MSI                  => AER_CAP_INT_MSG_NUM_MSI,
      AER_CAP_INT_MSG_NUM_MSIX                 => AER_CAP_INT_MSG_NUM_MSIX,
      AER_CAP_NEXTPTR                          => AER_CAP_NEXTPTR,
      AER_CAP_ON                               => AER_CAP_ON,
      AER_CAP_PERMIT_ROOTERR_UPDATE            => AER_CAP_PERMIT_ROOTERR_UPDATE,
      AER_CAP_VERSION                          => AER_CAP_VERSION,

      CAPABILITIES_PTR                         => CAPABILITIES_PTR,
      CRM_MODULE_RSTS                          => CRM_MODULE_RSTS,
      DEV_CAP_ENDPOINT_L0S_LATENCY             => DEV_CAP_ENDPOINT_L0S_LATENCY,
      DEV_CAP_ENDPOINT_L1_LATENCY              => DEV_CAP_ENDPOINT_L1_LATENCY,
      DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE     => DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE,
      DEV_CAP_ROLE_BASED_ERROR                 => DEV_CAP_ROLE_BASED_ERROR,
      DEV_CAP_RSVD_14_12                       => DEV_CAP_RSVD_14_12,
      DEV_CAP_RSVD_17_16                       => DEV_CAP_RSVD_17_16,
      DEV_CAP_RSVD_31_29                       => DEV_CAP_RSVD_31_29,
      DEV_CAP_ENABLE_SLOT_PWR_LIMIT_SCALE      => DEV_CAP_ENABLE_SLOT_PWR_LIMIT_SCALE,
      DEV_CAP_ENABLE_SLOT_PWR_LIMIT_VALUE      => DEV_CAP_ENABLE_SLOT_PWR_LIMIT_VALUE,
      DEV_CONTROL_AUX_POWER_SUPPORTED          => DEV_CONTROL_AUX_POWER_SUPPORTED,

      DISABLE_ASPM_L1_TIMER                    => DISABLE_ASPM_L1_TIMER,
      DISABLE_BAR_FILTERING                    => DISABLE_BAR_FILTERING,
      DISABLE_ID_CHECK                         => DISABLE_ID_CHECK,
      DISABLE_RX_TC_FILTER                     => DISABLE_RX_TC_FILTER,
      DNSTREAM_LINK_NUM                        => DNSTREAM_LINK_NUM,

      DS_PORT_HOT_RST                          => DS_PORT_HOT_RST,
      DSN_CAP_ID                               => DSN_CAP_ID,
      DSN_CAP_VERSION                          => DSN_CAP_VERSION,
      ENTER_RVRY_EI_L0                         => ENTER_RVRY_EI_L0,
      INFER_EI                                 => INFER_EI,
      IS_SWITCH                                => IS_SWITCH,

      LAST_CONFIG_DWORD                        => LAST_CONFIG_DWORD,
      LINK_CAP_ASPM_SUPPORT                    => LINK_CAP_ASPM_SUPPORT,
      LINK_CAP_CLOCK_POWER_MANAGEMENT          => LINK_CAP_CLOCK_POWER_MANAGEMENT,
      LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN1    => LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN1,
      LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN2    => LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN2,
      LINK_CAP_L0S_EXIT_LATENCY_GEN1           => LINK_CAP_L0S_EXIT_LATENCY_GEN1,
      LINK_CAP_L0S_EXIT_LATENCY_GEN2           => LINK_CAP_L0S_EXIT_LATENCY_GEN2,
      LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN1     => LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN1,
      LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN2     => LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN2,
      LINK_CAP_L1_EXIT_LATENCY_GEN1            => LINK_CAP_L1_EXIT_LATENCY_GEN1,
      LINK_CAP_L1_EXIT_LATENCY_GEN2            => LINK_CAP_L1_EXIT_LATENCY_GEN2,
      LINK_CAP_RSVD_23_22                      => LINK_CAP_RSVD_23_22,

      MSI_BASE_PTR                             => MSI_BASE_PTR,
      MSI_CAP_ID                               => MSI_CAP_ID,
      MSI_CAP_NEXTPTR                          => MSI_CAP_NEXTPTR,
      MSIX_BASE_PTR                            => MSIX_BASE_PTR,
      MSIX_CAP_ID                              => MSIX_CAP_ID,
      MSIX_CAP_NEXTPTR                         => MSIX_CAP_NEXTPTR,
      N_FTS_COMCLK_GEN1                        => N_FTS_COMCLK_GEN1,
      N_FTS_COMCLK_GEN2                        => N_FTS_COMCLK_GEN2,
      N_FTS_GEN1                               => N_FTS_GEN1,
      N_FTS_GEN2                               => N_FTS_GEN2,

      PCIE_BASE_PTR                            => PCIE_BASE_PTR,
      PCIE_CAP_CAPABILITY_ID                   => PCIE_CAP_CAPABILITY_ID,
      PCIE_CAP_CAPABILITY_VERSION              => PCIE_CAP_CAPABILITY_VERSION,
      PCIE_CAP_ON                              => PCIE_CAP_ON,
      PCIE_CAP_RSVD_15_14                      => PCIE_CAP_RSVD_15_14,
      PCIE_CAP_SLOT_IMPLEMENTED                => PCIE_CAP_SLOT_IMPLEMENTED,
      PCIE_REVISION                            => PCIE_REVISION,
      PGL0_LANE                                => PGL0_LANE,
      PGL1_LANE                                => PGL1_LANE,
      PGL2_LANE                                => PGL2_LANE,
      PGL3_LANE                                => PGL3_LANE,
      PGL4_LANE                                => PGL4_LANE,
      PGL5_LANE                                => PGL5_LANE,
      PGL6_LANE                                => PGL6_LANE,
      PGL7_LANE                                => PGL7_LANE,
      PL_AUTO_CONFIG                           => PL_AUTO_CONFIG,
      PL_FAST_TRAIN                            => PL_FAST_TRAIN,
      PCIE_EXT_CLK                             => PCIE_EXT_CLK,
       PCIE_EXT_GT_COMMON     =>PCIE_EXT_GT_COMMON ,
       EXT_CH_GT_DRP            => EXT_CH_GT_DRP,	    
      NO_SLV_ERR                               => NO_SLV_ERR,

 TX_MARGIN_FULL_0  =>TX_MARGIN_FULL_0  ,
 TX_MARGIN_FULL_1  =>TX_MARGIN_FULL_1  ,
 TX_MARGIN_FULL_2  =>TX_MARGIN_FULL_2  ,
 TX_MARGIN_FULL_3  =>TX_MARGIN_FULL_3  ,
 TX_MARGIN_FULL_4  =>TX_MARGIN_FULL_4  ,
 TX_MARGIN_LOW_0   =>TX_MARGIN_LOW_0   ,
 TX_MARGIN_LOW_1   =>TX_MARGIN_LOW_1   ,
 TX_MARGIN_LOW_2   =>TX_MARGIN_LOW_2   ,
 TX_MARGIN_LOW_3   =>TX_MARGIN_LOW_3   ,
 TX_MARGIN_LOW_4   =>TX_MARGIN_LOW_4   ,
      PM_BASE_PTR                              => PM_BASE_PTR,
      PM_CAP_AUXCURRENT                        => PM_CAP_AUXCURRENT,
      PM_CAP_ID                                => PM_CAP_ID,
      PM_CAP_ON                                => PM_CAP_ON,
      PM_CAP_PME_CLOCK                         => PM_CAP_PME_CLOCK,
      PM_CAP_RSVD_04                           => PM_CAP_RSVD_04,
      PM_CAP_VERSION                           => PM_CAP_VERSION,
      PM_CSR_BPCCEN                            => PM_CSR_BPCCEN,
      PM_CSR_B2B3                              => PM_CSR_B2B3,

      RECRC_CHK                                => RECRC_CHK,
      RECRC_CHK_TRIM                           => RECRC_CHK_TRIM,
      SELECT_DLL_IF                            => SELECT_DLL_IF,
      SPARE_BIT1                               => SPARE_BIT1,
      SPARE_BIT2                               => SPARE_BIT2,
      SPARE_BIT3                               => SPARE_BIT3,
      SPARE_BIT4                               => SPARE_BIT4,
      SPARE_BIT5                               => SPARE_BIT5,
      SPARE_BIT6                               => SPARE_BIT6,
      SPARE_BIT7                               => SPARE_BIT7,
      SPARE_BIT8                               => SPARE_BIT8,
      SPARE_BYTE0                              => SPARE_BYTE0,
      SPARE_BYTE1                              => SPARE_BYTE1,
      SPARE_BYTE2                              => SPARE_BYTE2,
      SPARE_BYTE3                              => SPARE_BYTE3,
      SPARE_WORD0                              => SPARE_WORD0,
      SPARE_WORD1                              => SPARE_WORD1,
      SPARE_WORD2                              => SPARE_WORD2,
      SPARE_WORD3                              => SPARE_WORD3,

      TL_RBYPASS                               => TL_RBYPASS,
      TL_TFC_DISABLE                           => TL_TFC_DISABLE,
      TL_TX_CHECKS_DISABLE                     => TL_TX_CHECKS_DISABLE,
      EXIT_LOOPBACK_ON_EI                      => EXIT_LOOPBACK_ON_EI,
      UR_INV_REQ                               => UR_INV_REQ,

      VC_CAP_ID                                => VC_CAP_ID,
      VC_CAP_VERSION                           => VC_CAP_VERSION,
      VSEC_CAP_HDR_ID                          => VSEC_CAP_HDR_ID,
      VSEC_CAP_HDR_LENGTH                      => VSEC_CAP_HDR_LENGTH,
      VSEC_CAP_HDR_REVISION                    => VSEC_CAP_HDR_REVISION,
      VSEC_CAP_ID                              => VSEC_CAP_ID,
      VSEC_CAP_IS_LINK_VISIBLE                 => VSEC_CAP_IS_LINK_VISIBLE,
      VSEC_CAP_VERSION                         => VSEC_CAP_VERSION,

      C_BASEADDR_U                             => C_BASEADDR_U,
      C_BASEADDR_L                             => C_BASEADDR_L,
      C_HIGHADDR_U                             => C_HIGHADDR_U,
      C_HIGHADDR_L                             => C_HIGHADDR_L,

      C_MAX_LNK_WDT                            => C_MAX_LNK_WDT,
      C_ROOT_PORT                              => C_ROOT_PORT,
      C_RP_BAR_HIDE                            => C_RP_BAR_HIDE,
      C_RX_REALIGN                             => C_RX_REALIGN,
      C_RX_PRESERVE_ORDER                      => C_RX_PRESERVE_ORDER,
      C_LAST_CORE_CAP_ADDR                     => C_LAST_CORE_CAP_ADDR,
      C_VSEC_CAP_ADDR                          => C_VSEC_CAP_ADDR,
      C_VSEC_CAP_LAST                          => C_VSEC_CAP_LAST,
      C_VSEC_ID                                => C_VSEC_ID,
      C_DEVICE_NUMBER                          => C_DEVICE_NUMBER,
      C_NUM_USER_INTR                          => C_NUM_USER_INTR,
      C_USER_PTR                               => C_USER_PTR,
      C_COMP_TIMEOUT                           => C_COMP_TIMEOUT,
      C_FAMILY                                 => C_FAMILY,

      USR_CFG                                  => USR_CFG,
      USR_EXT_CFG                              => USR_EXT_CFG,
      LINK_CAP_L0S_EXIT_LATENCY                => LINK_CAP_L0S_EXIT_LATENCY,
      LINK_CAP_L1_EXIT_LATENCY                 => LINK_CAP_L1_EXIT_LATENCY,
      PLM_AUTO_CONFIG                          => PLM_AUTO_CONFIG,
      FAST_TRAIN                               => FAST_TRAIN,
      PCIE_GENERIC                             => PCIE_GENERIC,
      GTP_SEL                                  => GTP_SEL,
      CFG_VEN_ID                               => CFG_VEN_ID,
      CFG_DEV_ID                               => CFG_DEV_ID,
      CFG_REV_ID                               => CFG_REV_ID,
      CFG_SUBSYS_VEN_ID                        => CFG_SUBSYS_VEN_ID,
      CFG_SUBSYS_ID                            => CFG_SUBSYS_ID,

      AER_CAP_MULTIHEADER                      => AER_CAP_MULTIHEADER,
      AER_CAP_OPTIONAL_ERR_SUPPORT             => AER_CAP_OPTIONAL_ERR_SUPPORT,
      DEV_CAP2_ARI_FORWARDING_SUPPORTED        => DEV_CAP2_ARI_FORWARDING_SUPPORTED,
      DEV_CAP2_ATOMICOP32_COMPLETER_SUPPORTED  => DEV_CAP2_ATOMICOP32_COMPLETER_SUPPORTED,
      DEV_CAP2_ATOMICOP64_COMPLETER_SUPPORTED  => DEV_CAP2_ATOMICOP64_COMPLETER_SUPPORTED,
      DEV_CAP2_ATOMICOP_ROUTING_SUPPORTED      => DEV_CAP2_ATOMICOP_ROUTING_SUPPORTED,
      DEV_CAP2_CAS128_COMPLETER_SUPPORTED      => DEV_CAP2_CAS128_COMPLETER_SUPPORTED,
      DEV_CAP2_TPH_COMPLETER_SUPPORTED         => DEV_CAP2_TPH_COMPLETER_SUPPORTED,
      DEV_CONTROL_EXT_TAG_DEFAULT              => DEV_CONTROL_EXT_TAG_DEFAULT,
      DISABLE_RX_POISONED_RESP                 => DISABLE_RX_POISONED_RESP,
      LINK_CAP_ASPM_OPTIONALITY                => LINK_CAP_ASPM_OPTIONALITY,
      RBAR_BASE_PTR                            => RBAR_BASE_PTR,
      RBAR_CAP_CONTROL_ENCODEDBAR0             => RBAR_CAP_CONTROL_ENCODEDBAR0,
      RBAR_CAP_CONTROL_ENCODEDBAR1             => RBAR_CAP_CONTROL_ENCODEDBAR1,
      RBAR_CAP_CONTROL_ENCODEDBAR2             => RBAR_CAP_CONTROL_ENCODEDBAR2,
      RBAR_CAP_CONTROL_ENCODEDBAR3             => RBAR_CAP_CONTROL_ENCODEDBAR3,
      RBAR_CAP_CONTROL_ENCODEDBAR4             => RBAR_CAP_CONTROL_ENCODEDBAR4,
      RBAR_CAP_CONTROL_ENCODEDBAR5             => RBAR_CAP_CONTROL_ENCODEDBAR5,
      RBAR_CAP_INDEX0                          => RBAR_CAP_INDEX0,
      RBAR_CAP_INDEX1                          => RBAR_CAP_INDEX1,
      RBAR_CAP_INDEX2                          => RBAR_CAP_INDEX2,
      RBAR_CAP_INDEX3                          => RBAR_CAP_INDEX3,
      RBAR_CAP_INDEX4                          => RBAR_CAP_INDEX4,
      RBAR_CAP_INDEX5                          => RBAR_CAP_INDEX5,
      RBAR_CAP_ON                              => RBAR_CAP_ON,
      RBAR_CAP_SUP0                            => RBAR_CAP_SUP0,
      RBAR_CAP_SUP1                            => RBAR_CAP_SUP1,
      RBAR_CAP_SUP2                            => RBAR_CAP_SUP2,
      RBAR_CAP_SUP3                            => RBAR_CAP_SUP3,
      RBAR_CAP_SUP4                            => RBAR_CAP_SUP4,
      RBAR_CAP_SUP5                            => RBAR_CAP_SUP5,
      RBAR_NUM                                 => RBAR_NUM,
      TRN_NP_FC                                => TRN_NP_FC,
      TRN_DW                                   => TRN_DW,
      UR_ATOMIC                                => UR_ATOMIC,
      UR_PRS_RESPONSE                          => UR_PRS_RESPONSE,
      USER_CLK2_DIV2                           => USER_CLK2_DIV2,
      VC0_TOTAL_CREDITS_NPD                    => VC0_TOTAL_CREDITS_NPD,
      LINK_CAP_RSVD_23                         => LINK_CAP_RSVD_23,
      CFG_ECRC_ERR_CPLSTAT                     => CFG_ECRC_ERR_CPLSTAT,
      DISABLE_ERR_MSG                          => DISABLE_ERR_MSG,
      DISABLE_LOCKED_FILTER                    => DISABLE_LOCKED_FILTER,
      DISABLE_PPM_FILTER                       => DISABLE_PPM_FILTER,
      ENDEND_TLP_PREFIX_FORWARDING_SUPPORTED   => ENDEND_TLP_PREFIX_FORWARDING_SUPPORTED,
      INTERRUPT_STAT_AUTO                      => INTERRUPT_STAT_AUTO,
      MPS_FORCE                                => MPS_FORCE,
      PM_ASPML0S_TIMEOUT                       => PM_ASPML0S_TIMEOUT,
      PM_ASPML0S_TIMEOUT_EN                    => PM_ASPML0S_TIMEOUT_EN,
      PM_ASPML0S_TIMEOUT_FUNC                  => PM_ASPML0S_TIMEOUT_FUNC,
      PM_ASPM_FASTEXIT                         => PM_ASPM_FASTEXIT,
      PM_MF                                    => PM_MF,
      RP_AUTO_SPD                              => RP_AUTO_SPD,
      RP_AUTO_SPD_LOOPCNT                      => RP_AUTO_SPD_LOOPCNT,
      SIM_VERSION                              => SIM_VERSION,
      SSL_MESSAGE_AUTO                         => SSL_MESSAGE_AUTO,
      TECRC_EP_INV                             => TECRC_EP_INV,
      UR_CFG1                                  => UR_CFG1,
      USE_RID_PINS                             => USE_RID_PINS,
      DEV_CAP2_ENDEND_TLP_PREFIX_SUPPORTED     => DEV_CAP2_ENDEND_TLP_PREFIX_SUPPORTED,
      DEV_CAP2_EXTENDED_FMT_FIELD_SUPPORTED    => DEV_CAP2_EXTENDED_FMT_FIELD_SUPPORTED,
      DEV_CAP2_LTR_MECHANISM_SUPPORTED         => DEV_CAP2_LTR_MECHANISM_SUPPORTED,
      DEV_CAP2_MAX_ENDEND_TLP_PREFIXES         => DEV_CAP2_MAX_ENDEND_TLP_PREFIXES,
      DEV_CAP2_NO_RO_ENABLED_PRPR_PASSING      => DEV_CAP2_NO_RO_ENABLED_PRPR_PASSING,
      RBAR_CAP_ID                              => RBAR_CAP_ID,
      RBAR_CAP_NEXTPTR                         => RBAR_CAP_NEXTPTR,
      RBAR_CAP_VERSION                         => RBAR_CAP_VERSION,
      PCIE_USE_MODE                            => PCIE_USE_MODE,
      PCIE_GT_DEVICE                           => PCIE_GT_DEVICE,
      PCIE_CHAN_BOND                           => PCIE_CHAN_BOND,
      PCIE_PLL_SEL                             => PCIE_PLL_SEL,
      PCIE_ASYNC_EN                            => PCIE_ASYNC_EN,
      PCIE_TXBUF_EN                            => PCIE_TXBUF_EN,
      EXT_PIPE_INTERFACE                       => EXT_PIPE_INTERFACE 
      )
      port map ( 
      -- 1. PCI Express (pci_exp) Interface
      ---------------------------------------------------------
      -- Tx
      pci_exp_txp                              => pci_exp_txp,
      pci_exp_txn                              => pci_exp_txn,
      -- Rx
      pci_exp_rxp                              => pci_exp_rxp,
      pci_exp_rxn                              => pci_exp_rxn,
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
  pipe_debug_0 	=> pipe_debug_0 	,
  pipe_debug_1 	=> pipe_debug_1 	,
  pipe_debug_2 	=> pipe_debug_2 	,
  pipe_debug_3 	=> pipe_debug_3 	,
  pipe_debug_4 	=> pipe_debug_4 	,
  pipe_debug_5 	=> pipe_debug_5 	,
  pipe_debug_6 	=> pipe_debug_6 	,
  pipe_debug_7 	=> pipe_debug_7 	,
  pipe_debug_8 	=> pipe_debug_8 	,
  pipe_debug_9 	=> pipe_debug_9 	,
  pipe_debug   	=> pipe_debug   	,

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

INT_PCLK_OUT_SLAVE	=>		INT_PCLK_OUT_SLAVE,	
INT_RXUSRCLK_OUT  	=>      	INT_RXUSRCLK_OUT  ,      
INT_RXOUTCLK_OUT  	=>      	INT_RXOUTCLK_OUT  ,      
INT_DCLK_OUT	  	=>      	INT_DCLK_OUT	  ,      
INT_USERCLK1_OUT  	=>      	INT_USERCLK1_OUT  ,      
INT_USERCLK2_OUT  	=>      	INT_USERCLK2_OUT  ,      
INT_OOBCLK_OUT	  	=>      	INT_OOBCLK_OUT	  ,      
INT_MMCM_LOCK_OUT 	=>      	INT_MMCM_LOCK_OUT ,      
INT_QPLLLOCK_OUT  	=>      	INT_QPLLLOCK_OUT  ,      
INT_QPLLOUTCLK_OUT	=>		INT_QPLLOUTCLK_OUT,	
INT_QPLLOUTREFCLK_OUT		=>	INT_QPLLOUTREFCLK_OUT,	
INT_PCLK_SEL_SLAVE		=>	INT_PCLK_SEL_SLAVE   ,   

     -------------Channel DRP---------------------------------
  ext_ch_gt_drpclk    => ext_ch_gt_drpclk ,
  ext_ch_gt_drpaddr   => ext_ch_gt_drpaddr,
  ext_ch_gt_drpen     => ext_ch_gt_drpen  ,
  ext_ch_gt_drpdi     => ext_ch_gt_drpdi  ,
  ext_ch_gt_drpwe     => ext_ch_gt_drpwe  ,
                                          
  ext_ch_gt_drpdo     => ext_ch_gt_drpdo  ,
  ext_ch_gt_drprdy    => ext_ch_gt_drprdy ,

      ---------------------------------------------------------
      -- 2. Transaction (TRN) Interface
      ---------------------------------------------------------
      -- Rx
      rx_np_ok                                 => rx_np_ok,
      rx_np_req                                => rx_np_req,

      ---------------------------------------------
      -- AXI TX - RW Interface
      -----------
      s_axis_rw_tdata                          => s_axis_rw_tdata,
      s_axis_rw_tvalid                         => s_axis_rw_tvalid,
      s_axis_rw_tready                         => s_axis_rw_tready,
      s_axis_rw_tstrb                          => s_axis_rw_tstrb,
      s_axis_rw_tlast                          => s_axis_rw_tlast,
      s_axis_rw_tuser                          => s_axis_rw_tuser,

      -- AXI TX - RR Interface
      -------------
      s_axis_rr_tdata                          => s_axis_rr_tdata,
      s_axis_rr_tvalid                         => s_axis_rr_tvalid,
      s_axis_rr_tready                         => s_axis_rr_tready,
      s_axis_rr_tstrb                          => s_axis_rr_tstrb,
      s_axis_rr_tlast                          => s_axis_rr_tlast,
      s_axis_rr_tuser                          => s_axis_rr_tuser,

      -- AXI TX - CC Interface
      -------------
      s_axis_cc_tdata                          => s_axis_cc_tdata,
      s_axis_cc_tvalid                         => s_axis_cc_tvalid,
      s_axis_cc_tready                         => s_axis_cc_tready,
      s_axis_cc_tstrb                          => s_axis_cc_tstrb,
      s_axis_cc_tlast                          => s_axis_cc_tlast,
      s_axis_cc_tuser                          => s_axis_cc_tuser,

      -- AXI RX - CW Interface
      -------------
      m_axis_cw_tdata                          => m_axis_cw_tdata,
      m_axis_cw_tvalid                         => m_axis_cw_tvalid,
      m_axis_cw_tready                         => m_axis_cw_tready,
      m_axis_cw_tstrb                          => m_axis_cw_tstrb,
      m_axis_cw_tlast                          => m_axis_cw_tlast,
      m_axis_cw_tuser                          => m_axis_cw_tuser,
 
      -- AXI RX - CR Interface
      -------------
      m_axis_cr_tdata                          => m_axis_cr_tdata,
      m_axis_cr_tvalid                         => m_axis_cr_tvalid,
      m_axis_cr_tready                         => m_axis_cr_tready,
      m_axis_cr_tstrb                          => m_axis_cr_tstrb,
      m_axis_cr_tlast                          => m_axis_cr_tlast,
      m_axis_cr_tuser                          => m_axis_cr_tuser,

      -- AXI RX - RC Interface
      -------------
      m_axis_rc_tdata                          => m_axis_rc_tdata,
      m_axis_rc_tvalid                         => m_axis_rc_tvalid,
      m_axis_rc_tready                         => m_axis_rc_tready,
      m_axis_rc_tstrb                          => m_axis_rc_tstrb,
      m_axis_rc_tlast                          => m_axis_rc_tlast,
      m_axis_rc_tuser                          => m_axis_rc_tuser,

      -- AXI -Lite Interface - CFG Block
      ---------------------------
      s_axi_ctl_awaddr                         => s_axi_ctl_awaddr,
      s_axi_ctl_awvalid                        => s_axi_ctl_awvalid,
      s_axi_ctl_awready                        => s_axi_ctl_awready,
      s_axi_ctl_wdata                          => s_axi_ctl_wdata,
      s_axi_ctl_wstrb                          => s_axi_ctl_wstrb,
      s_axi_ctl_wvalid                         => s_axi_ctl_wvalid,
      s_axi_ctl_wready                         => s_axi_ctl_wready,
      s_axi_ctl_bresp                          => s_axi_ctl_bresp,
      s_axi_ctl_bvalid                         => s_axi_ctl_bvalid,
      s_axi_ctl_bready                         => s_axi_ctl_bready,

      s_axi_ctl_araddr                         => s_axi_ctl_araddr,
      s_axi_ctl_arvalid                        => s_axi_ctl_arvalid,
      s_axi_ctl_arready                        => s_axi_ctl_arready,
      s_axi_ctl_rdata                          => s_axi_ctl_rdata,
      s_axi_ctl_rresp                          => s_axi_ctl_rresp,
      s_axi_ctl_rvalid                         => s_axi_ctl_rvalid,
      s_axi_ctl_rready                         => s_axi_ctl_rready,

      -- AXI Lite User IPIC Signals
      -----------------------------
      Bus2IP_CS                                => Bus2IP_CS,
      Bus2IP_BE                                => Bus2IP_BE,
      Bus2IP_RNW                               => Bus2IP_RNW,
      Bus2IP_Addr                              => Bus2IP_Addr,
      Bus2IP_Data                              => Bus2IP_Data,
      IP2Bus_RdAck                             => IP2Bus_RdAck,
      IP2Bus_WrAck                             => IP2Bus_WrAck,
      IP2Bus_Data                              => IP2Bus_Data,
      IP2Bus_Error                             => IP2Bus_Error,

      --Interrupts
      -------------------
      ctl_intr                                 => ctl_intr,
      ctl_user_intr                            => ctl_user_intr,
  
      -- User Misc.
      -------------
      --user_turnoff_ok                          => user_turnoff_ok,
      --user_tcfg_gnt                            => user_tcfg_gnt,

      np_cpl_pending                           => np_cpl_pending,
      RP_bridge_en                             => RP_bridge_en,

      ---------------------------------------------------------
      -- 3. Configuration (CFG) Interface
      ---------------------------------------------------------

      blk_err_cor                              => blk_err_cor,
      blk_err_ur                               => blk_err_ur,
      blk_err_ecrc                             => blk_err_ecrc,
      blk_err_cpl_timeout                      => blk_err_cpl_timeout,
      blk_err_cpl_abort                        => blk_err_cpl_abort,
      blk_err_cpl_unexpect                     => blk_err_cpl_unexpect,
      blk_err_posted                           => blk_err_posted,
      blk_err_locked                           => blk_err_locked,
      blk_err_tlp_cpl_header                   => blk_err_tlp_cpl_header,
      blk_err_cpl_rdy                          => blk_err_cpl_rdy,
      blk_interrupt                            => blk_interrupt,
      blk_interrupt_rdy                        => blk_interrupt_rdy,
      blk_interrupt_assert                     => blk_interrupt_assert,
      blk_interrupt_di                         => blk_interrupt_di,
      cfg_interrupt_do                         => cfg_interrupt_do,
      blk_interrupt_mmenable                   => blk_interrupt_mmenable,
      blk_interrupt_msienable                  => blk_interrupt_msienable,
      blk_interrupt_msixenable                 => blk_interrupt_msixenable,
      blk_interrupt_msixfm                     => blk_interrupt_msixfm,
      blk_trn_pending                          => blk_trn_pending,
      cfg_pm_send_pme_to                       => cfg_pm_send_pme_to,
      blk_status                               => blk_status,
      blk_command                              => blk_command,
      blk_dstatus                              => blk_dstatus,
      blk_dcommand                             => blk_dcommand,
      blk_lstatus                              => blk_lstatus,
      blk_lcommand                             => blk_lcommand,
      blk_dcommand2                            => blk_dcommand2,
      blk_pcie_link_state                      => blk_pcie_link_state,
      blk_dsn                                  => blk_dsn,
      blk_pmcsr_pme_en                         => blk_pmcsr_pme_en,
      blk_pmcsr_pme_status                     => blk_pmcsr_pme_status,
      blk_pmcsr_powerstate                     => blk_pmcsr_powerstate,

      cfg_msg_received                         => cfg_msg_received,
      blk_msg_data                             => blk_msg_data,
      blk_msg_received_err_cor                 => blk_msg_received_err_cor,
      blk_msg_received_err_non_fatal           => blk_msg_received_err_non_fatal,
      blk_msg_received_err_fatal               => blk_msg_received_err_fatal,
      blk_msg_received_pme_to_ack              => blk_msg_received_pme_to_ack,
      blk_msg_received_assert_inta             => blk_msg_received_assert_inta,
      blk_msg_received_assert_intb             => blk_msg_received_assert_intb,
      blk_msg_received_assert_intc             => blk_msg_received_assert_intc,
      blk_msg_received_assert_intd             => blk_msg_received_assert_intd,
      blk_msg_received_deassert_inta           => blk_msg_received_deassert_inta,
      blk_msg_received_deassert_intb           => blk_msg_received_deassert_intb,
      blk_msg_received_deassert_intc           => blk_msg_received_deassert_intc,
      blk_msg_received_deassert_intd           => blk_msg_received_deassert_intd,

      blk_link_up                              => blk_link_up,

      blk_ds_bus_number                        => blk_ds_bus_number,
      blk_ds_device_number                     => blk_ds_device_number,

      -- Only for End point Cores
      blk_to_turnoff                           => blk_to_turnoff,
      blk_turnoff_ok                           => blk_turnoff_ok,
      blk_pm_wake                              => blk_pm_wake,

      blk_bus_number                           => blk_bus_number,
      blk_device_number                        => blk_device_number,
      blk_function_number                      => blk_function_number,

      ---------------------------------------------------------
      -- 4. Physical Layer Control and Status (PL) Interface
      ---------------------------------------------------------

      blk_pl_initial_link_width                => blk_pl_initial_link_width,
      blk_pl_lane_reversal_mode                => blk_pl_lane_reversal_mode,
      blk_pl_link_gen2_capable                 => blk_pl_link_gen2_capable,
      blk_pl_link_partner_gen2_supported       => blk_pl_link_partner_gen2_supported,
      blk_pl_link_upcfg_capable                => blk_pl_link_upcfg_capable,
      blk_pl_ltssm_state                       => blk_pl_ltssm_state,
      blk_pl_sel_link_rate                     => blk_pl_sel_link_rate,
      blk_pl_sel_link_width                    => blk_pl_sel_link_width,
      blk_pl_upstream_prefer_deemph            => blk_pl_upstream_prefer_deemph,
      blk_pl_hot_rst                           => blk_pl_hot_rst,

      -- Flow Control
      blk_fc_cpld                              => blk_fc_cpld,
      blk_fc_cplh                              => blk_fc_cplh,
      blk_fc_npd                               => blk_fc_npd,
      blk_fc_nph                               => blk_fc_nph,
      blk_fc_pd                                => blk_fc_pd,
      blk_fc_ph                                => blk_fc_ph,
      blk_fc_sel                               => blk_fc_sel,

      -- Tx

      blk_tbuf_av                              => blk_tbuf_av,
      blk_tcfg_req                             => blk_tcfg_req,                 
      blk_tcfg_gnt                             => blk_tcfg_gnt,            

      tx_err_drop                              => tx_err_drop,  

      --S-6 Specific

      cfg_do                                   => cfg_do,
      cfg_rd_wr_done                           => cfg_rd_wr_done,            
      cfg_dwaddr                               => cfg_dwaddr,
      cfg_rd_en                                => cfg_rd_en,      

      ---------------------------------------------------------
      -- 5. System  (SYS) Interface
      ---------------------------------------------------------

      com_sysclk                               => com_sysclk,
      com_sysrst                               => com_sysrst,
      mmcm_lock                                => mmcm_lock,
      com_iclk                                 => com_iclk,
      com_cclk                                 => com_cclk,
      com_corereset                            => com_corereset,
      
      ---------------------------------------------------------
      -- 6. Additional Signals for K7
      ---------------------------------------------------------
      
      clk_fab_refclk                           => clk_fab_refclk,
      clk_pclk                                 => clk_pclk,
      clk_rxusrclk                             => clk_rxusrclk,
      clk_dclk                                 => clk_dclk,
      clk_userclk1                             => clk_userclk1,
      clk_userclk2                             => clk_userclk2,
      clk_oobclk_in                            => clk_oobclk_in,
      clk_mmcm_lock                            => clk_mmcm_lock,
      clk_txoutclk                             => clk_txoutclk,
      clk_rxoutclk                             => clk_rxoutclk,
      clk_pclk_sel                             => clk_pclk_sel,
      clk_gen3                                 => clk_gen3,
      PIPE_MMCM_RST_N                          => PIPE_MMCM_RST_N,
      user_clk_out                             => open,
      user_reset_out                           => open,
      cfg_received_func_lvl_rst                => open,
      cfg_err_atomic_egress_blocked            => '0',
      cfg_err_internal_cor                     => '0',
      cfg_err_malformed                        => '0',
      cfg_err_mc_blocked                       => '0',
      cfg_err_poisoned                         => '0',
      cfg_err_norecovery                       => '0',
      cfg_err_acs                              => '0',
      cfg_err_internal_uncor                   => '0',
      cfg_pm_halt_aspm_l0s                     => '0',
      cfg_pm_halt_aspm_l1                      => '0',
      cfg_pm_force_state_en                    => '0',
      cfg_pm_force_state                       => (others => '0'),
      cfg_interrupt_stat                       => '0',
      cfg_pciecap_interrupt_msgnum             => (others => '0'),
      cfg_bridge_serr_en                       => open,
      cfg_slot_control_electromech_il_ctl_pulse => open,
      cfg_root_control_syserr_corr_err_en      => open,
      cfg_root_control_syserr_non_fatal_err_en => open,
      cfg_root_control_syserr_fatal_err_en     => open,
      cfg_root_control_pme_int_en              => open,
      cfg_aer_rooterr_corr_err_reporting_en    => open,
      cfg_aer_rooterr_non_fatal_err_reporting_en => open,
      cfg_aer_rooterr_fatal_err_reporting_en   => open,
      cfg_aer_rooterr_corr_err_received        => open,
      cfg_aer_rooterr_non_fatal_err_received   => open,
      cfg_aer_rooterr_fatal_err_received       => open,
      cfg_msg_received_pm_as_nak               => open,
      cfg_msg_received_pm_pme                  => open,
      cfg_msg_received_setslotpowerlimit       => open,
      pl_phy_lnk_up                            => open,
      pl_tx_pm_state                           => open,
      pl_rx_pm_state                           => open,
      pl_directed_change_done                  => open,
      pl_downstream_deemph_source              => '0',
      cfg_err_aer_headerlog                    => (others => '0'),
      cfg_aer_interrupt_msgnum                 => (others => '0'),
      cfg_err_aer_headerlog_set                => open,
      cfg_aer_ecrc_check_en                    => open,
      cfg_aer_ecrc_gen_en                      => open,
      cfg_vc_tcvc_map                          => open,
      config_gen_req                           => config_gen_req
   );

end architecture;

