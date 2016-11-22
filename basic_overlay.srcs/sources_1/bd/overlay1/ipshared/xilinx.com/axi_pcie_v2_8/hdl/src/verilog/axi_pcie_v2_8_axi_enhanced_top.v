//-----------------------------------------------------------------------------
//
// (c) Copyright 2009-2010 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//-----------------------------------------------------------------------------
// Project    : Virtex-6 Integrated Block for PCI Express
// File       : axi_pcie_v2_8_0_axi_enhanced_top.v
// Version    : 2.1
//----------------------------------------------------------------------------//
//  File: axi_pcie_v2_8_0_axi_enhanced_top.v                        //
//                                                                            //
//  Description:                                                              //
//  TRN/AXI4-S Bridge top level module. Instantiates RX, TX and CFG modules.  //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_enhanced_top                                                        //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_pcie_v2_8_0_axi_enhanced_top #(
  parameter [31:0]           C_BASEADDR = 32'hFFFF_FFFF,    // AXI Lite Base Address
  parameter [31:0]           C_HIGHADDR = 32'h0000_0000,    // AXI Lite High Address
  parameter                  C_DATA_WIDTH = 32,             // RX/TX interface data width
  parameter                  C_MAX_LNK_WDT = 1,             // Maximum Number of PCIE Lanes
  parameter                  C_MSI_DECODE_ENABLE = "TRUE",  // Enable or Disable Incoming MSI Packet Decoding
  parameter                  C_ROOT_PORT = "FALSE",         // PCIe block is in root port mode
  parameter                  C_RP_BAR_HIDE = "FALSE",       // Hide RP PCIe BAR (prevent CPU from assigning address to RP BAR)
  parameter                  C_RX_REALIGN = "TRUE",         // Enable or Disable Realignment at RX Interface
  parameter                  C_RX_PRESERVE_ORDER = "FALSE", // Preserve WR/ RD Ordering at the RX Interface
  parameter [11:0]           C_LAST_CORE_CAP_ADDR = 12'h000,// DWORD address of last enabled block capability
  parameter [11:0]           C_VSEC_CAP_ADDR = 12'h000,     // DWORD address of start of VSEC Header
  parameter                  C_VSEC_CAP_LAST = "FALSE",     // VSEC next capability offset control
  parameter [15:0]           C_VSEC_ID = 16'h0000,
  parameter                  C_DEVICE_NUMBER = 0,           // Device number for Root Port configurations only
  parameter                  C_NUM_USER_INTR = 0,           // Number of user interrupts in User interrupt vector
  parameter [15:0]           C_USER_PTR = 16'h0000,         // Address pointer to User Space
  parameter                  C_COMP_TIMEOUT = 1'b0,         // Configuration Completion Timeout Value 'b0 = 50us 
  parameter        NO_SLV_ERR   = "FALSE",
                                                            // where 'b1 = 50ms
  parameter                  C_FAMILY = "X7",               // Targeted FPGA family
  parameter                  TCQ = 1,                       // Clock to Q time

  // Do not override parameters below this line
  parameter REM_WIDTH  = (C_DATA_WIDTH == 128) ? 2 : 1, // trem/rrem width
  parameter RBAR_WIDTH = (C_FAMILY == "X7") ? 8 : 7,    // trn_rbar_hit width
  parameter STRB_WIDTH = C_DATA_WIDTH / 8               // TSTRB width
  ) (
  //---------------------------------------------//
  // User Design I/O                             //
  //---------------------------------------------//

  // AXI TX - RW Interface
  //-----------
  input   [C_DATA_WIDTH-1:0] s_axis_rw_tdata,        // RW data from user
  input                      s_axis_rw_tvalid,       // RW data is valid
  output                     s_axis_rw_tready,       // RW ready for data
  input     [STRB_WIDTH-1:0] s_axis_rw_tstrb,        // RW strobe byte enables
  input                      s_axis_rw_tlast,        // RW data is last
  input                [3:0] s_axis_rw_tuser,        // RW user signals

  // AXI TX - RR Interface
  //-----------
  input   [C_DATA_WIDTH-1:0] s_axis_rr_tdata,        // RR data from user
  input                      s_axis_rr_tvalid,       // RR data is valid
  output                     s_axis_rr_tready,       // RR ready for data
  input     [STRB_WIDTH-1:0] s_axis_rr_tstrb,        // RR strobe byte enables
  input                      s_axis_rr_tlast,        // RR data is last
  input                [3:0] s_axis_rr_tuser,        // RR user signals

  // AXI TX - CC Interface
  //-----------
  input   [C_DATA_WIDTH-1:0] s_axis_cc_tdata,        // CC data from user
  input                      s_axis_cc_tvalid,       // CC data is valid
  output                     s_axis_cc_tready,       // CC ready for data
  input     [STRB_WIDTH-1:0] s_axis_cc_tstrb,        // CC strobe byte enables
  input                      s_axis_cc_tlast,        // CC data is last
  input                [3:0] s_axis_cc_tuser,        // CC user signals

  // AXI RX - CW Interface
  //-----------
  output  [C_DATA_WIDTH-1:0] m_axis_cw_tdata,        // CW data to user
  output                     m_axis_cw_tvalid,       // CW data is valid
  input                      m_axis_cw_tready,       // CW ready for data
  output    [STRB_WIDTH-1:0] m_axis_cw_tstrb,        // CW strobe byte enables
  output                     m_axis_cw_tlast,        // CW data is last
  output              [21:0] m_axis_cw_tuser,        // CW user signals

  // AXI RX - CR Interface
  //-----------
  output  [C_DATA_WIDTH-1:0] m_axis_cr_tdata,        // CR data to user
  output                     m_axis_cr_tvalid,       // CR data is valid
  input                      m_axis_cr_tready,       // CR ready for data
  output    [STRB_WIDTH-1:0] m_axis_cr_tstrb,        // CR strobe byte enables
  output                     m_axis_cr_tlast,        // CR data is last
  output              [21:0] m_axis_cr_tuser,        // CR user signals

  // AXI RX - RC Interface
  //-----------
  output  [C_DATA_WIDTH-1:0] m_axis_rc_tdata,        // RC data to user
  output                     m_axis_rc_tvalid,       // RC data is valid
  input                      m_axis_rc_tready,       // RC ready for data
  output    [STRB_WIDTH-1:0] m_axis_rc_tstrb,        // RC strobe byte enables
  output                     m_axis_rc_tlast,        // RC data is last
  output              [21:0] m_axis_rc_tuser,        // RC user signals

  // AXI -Lite Interface - CFG Block
  //-------------------------

  input               [31:0] s_axi_ctl_awaddr,       // AXI Lite Write address
  input                      s_axi_ctl_awvalid,      // AXI Lite Write Address Valid
  output                     s_axi_ctl_awready,      // AXI Lite Write Address Core ready
  input               [31:0] s_axi_ctl_wdata,        // AXI Lite Write Data
  input                [3:0] s_axi_ctl_wstrb,        // AXI Lite Write Data strobe
  input                      s_axi_ctl_wvalid,       // AXI Lite Write data Valid
  output                     s_axi_ctl_wready,       // AXI Lite Write Data Core ready
  output               [1:0] s_axi_ctl_bresp,        // AXI Lite Write Data strobe
  output                     s_axi_ctl_bvalid,       // AXI Lite Write data Valid
  input                      s_axi_ctl_bready,       // AXI Lite Write Data Core ready

  input               [31:0] s_axi_ctl_araddr,       // AXI Lite Read address
  input                      s_axi_ctl_arvalid,      // AXI Lite Read Address Valid
  output                     s_axi_ctl_arready,      // AXI Lite Read Address Core ready
  output              [31:0] s_axi_ctl_rdata,        // AXI Lite Read Data
  output               [1:0] s_axi_ctl_rresp,        // AXI Lite Read Data strobe
  output                     s_axi_ctl_rvalid,       // AXI Lite Read data Valid
  input                      s_axi_ctl_rready,       // AXI Lite Read Data Core ready

  // AXI Lite User IPIC Signals
  //---------------------------

  output                     Bus2IP_CS,              // Chip Select
  output               [3:0] Bus2IP_BE,              // Byte Enable Vector
  output                     Bus2IP_RNW,             // Read Npt Write Qualifier
  output              [31:0] Bus2IP_Addr,            // Address Bus
  output              [31:0] Bus2IP_Data,            // Write Data Bus
  input                      IP2Bus_RdAck,           // Read Acknowledgement
  input                      IP2Bus_WrAck,           // Write Acknowledgement
  input               [31:0] IP2Bus_Data,            // Read Data Bus
  input                      IP2Bus_Error,           // Error Qualifier

  //Interrupts
  //-----------------

  output                     ctl_intr,               // user interrupt
  input [C_NUM_USER_INTR-1:0]ctl_user_intr,          // User interrupt vector used only in axi_pcie_mm_s

  //---------------------------------------------//
  // PCIe Block I/O                              //
  //---------------------------------------------//

  // TRN TX
  //-----------
  output [C_DATA_WIDTH-1:0] trn_td,                  // TX data from block
  output                    trn_tsof,                // TX start of packet
  output                    trn_teof,                // TX end of packet
  output                    trn_tsrc_rdy,            // TX source ready
  input                     trn_tdst_rdy,            // TX destination ready
  output                    trn_tsrc_dsc,            // TX source discontinue
  output    [REM_WIDTH-1:0] trn_trem,                // TX remainder
  output                    trn_terrfwd,             // TX error forward
  output                    trn_tstr,                // TX streaming enable
  input                     trn_terr_drop,           // TRN Err Drop
  output                    trn_tecrc_gen,           // TX ECRC generate

  // TRN RX
  //-----------
  input  [C_DATA_WIDTH-1:0] trn_rd,                  // RX data from block
  input                     trn_rsof,                // RX start of packet
  input                     trn_reof,                // RX end of packet
  input                     trn_rsrc_rdy,            // RX source ready
  output                    trn_rdst_rdy,            // RX destination ready
  input                     trn_rsrc_dsc,            // RX source discontinue
  input     [REM_WIDTH-1:0] trn_rrem,                // RX remainder
  input                     trn_rerrfwd,             // RX error forward
  input    [RBAR_WIDTH-1:0] trn_rbar_hit,            // RX BAR hit
  input                     trn_recrc_err,           // RX ECRC error

  // TRN Management Interface
  //-------------------------------------------
  input                     cfg_mgmt_rd_wr_done,     // Read Write Done
  input              [31:0] cfg_mgmt_do,             // Data out
  output                    cfg_mgmt_rd_en,          // Read Enable
  output                    cfg_mgmt_wr_en,          // Write Enable
  output                    cfg_mgmt_wr_read_only,   // Read only
  output                    cfg_mgmt_wr_rw1c_as_rw,  // Read and Write 1 to clear
  output             [31:0] cfg_mgmt_di,             // Data Input
  output              [3:0] cfg_mgmt_byte_en,        // Byte Enable
  output              [9:0] cfg_mgmt_dwaddr,         // Address

  // Error and Interrupt pins from TRN to CFG
  //---------------------------------------------

  input              [15:0] cfg_msg_data,
  input                     cfg_msg_received,
  input                     cfg_msg_received_err_cor,
  input                     cfg_msg_received_err_fatal,
  input                     cfg_msg_received_err_non_fatal,
  input                     cfg_msg_received_assert_inta,
  input                     cfg_msg_received_assert_intb,
  input                     cfg_msg_received_assert_intc,
  input                     cfg_msg_received_assert_intd,
  input                     cfg_msg_received_deassert_inta,
  input                     cfg_msg_received_deassert_intb,
  input                     cfg_msg_received_deassert_intc,
  input                     cfg_msg_received_deassert_intd,
  input               [7:0] cfg_bus_number,
  input               [4:0] cfg_device_number,
  input                     pl_sel_link_rate,
  input               [1:0] pl_sel_link_width,
  input               [5:0] pl_ltssm_state,
  input               [1:0] pl_lane_reversal_mode,
  input                     pl_link_gen2_capable,
  input                     pl_link_upcfg_capable,
  input                     pl_received_hot_reset,
  output [1:0]              pl_directed_link_width,   // Directed Link Width
  output                    pl_directed_link_speed,   // Directed Link Speed
  output                    pl_directed_link_auton,   // Directed Link Autonomous
  output [1:0]              pl_directed_link_change,  // Directed Link Change
  input                     trn_lnk_up,
  output                    RP_bridge_en,

  // System
  //-----------
  input                     np_cpl_pending,            // Non-posted Completions pending
  output [15:0]             requester_id,              // {Bus#/Device#/Function#} in RC mode
  input                     com_sysrst,                // Bridge Reset from the reset block
  input                     com_iclk,                  // Interface Clock
  input                     com_cclk,                   // AXI Lite Clock
  output                    config_gen_req
  );

  // Wire interconnects betweeen RX block and Cfg block
  //--------------------------------------

  wire   [C_DATA_WIDTH-1:0] m_axis_cfg_tdata;
  wire                      m_axis_cfg_tvalid;
  wire                      m_axis_cfg_tready;
  wire    [STRB_WIDTH-1 :0] m_axis_cfg_tstrb;
  wire                      m_axis_cfg_tlast;
  wire               [21:0] m_axis_cfg_tuser;

  // Wire interconnects betweeen RX block and MSI block
  //--------------------------------------

  wire   [C_DATA_WIDTH-1:0] m_axis_msi_tdata;
  wire                      m_axis_msi_tvalid;
  wire                      m_axis_msi_tready;
  wire    [STRB_WIDTH-1 :0] m_axis_msi_tstrb;
  wire                      m_axis_msi_tlast;
  wire               [21:0] m_axis_msi_tuser;
  wire                      is_msi;
  wire               [63:0] msi_address;

  // Wire interconnects betweeen TX block and Cfg block
  //--------------------------------------

  wire   [C_DATA_WIDTH-1:0] s_axis_cfg_tdata;
  wire                      s_axis_cfg_tvalid;
  wire                      s_axis_cfg_tready;
  wire    [STRB_WIDTH-1 :0] s_axis_cfg_tstrb;
  wire                      s_axis_cfg_tlast;
  wire                [3:0] s_axis_cfg_tuser;
  wire                      cfg_req;



  //---------------------------------------------//
  // RX Block Instantiation                      //
  //---------------------------------------------//

  axi_pcie_v2_8_0_axi_enhanced_rx #(
    .C_DATA_WIDTH( C_DATA_WIDTH ),
    .C_FAMILY( C_FAMILY ),
    .C_RX_REALIGN( C_RX_REALIGN),
    .C_RX_PRESERVE_ORDER( C_RX_PRESERVE_ORDER),
    .C_MSI_DECODE_ENABLE( C_MSI_DECODE_ENABLE ),
    .C_ROOT_PORT( C_ROOT_PORT ),
    .REM_WIDTH( REM_WIDTH ),
    .RBAR_WIDTH( RBAR_WIDTH ),
    .STRB_WIDTH( STRB_WIDTH )
  ) rx_inst (

    // Outgoing AXI - RC Interface
    //-----------
    .m_axis_rc_tdata( m_axis_rc_tdata ),
    .m_axis_rc_tvalid( m_axis_rc_tvalid ),
    .m_axis_rc_tready( m_axis_rc_tready ),
    .m_axis_rc_tstrb( m_axis_rc_tstrb ),
    .m_axis_rc_tlast( m_axis_rc_tlast ),
    .m_axis_rc_tuser( m_axis_rc_tuser ),

    // Outgoing AXI - CW Interface
    //-----------
    .m_axis_cw_tdata( m_axis_cw_tdata ),
    .m_axis_cw_tvalid( m_axis_cw_tvalid ),
    .m_axis_cw_tready( m_axis_cw_tready ),
    .m_axis_cw_tstrb( m_axis_cw_tstrb ),
    .m_axis_cw_tlast( m_axis_cw_tlast ),
    .m_axis_cw_tuser( m_axis_cw_tuser ),

    // Outgoing AXI - CR Interface
    //-----------
    .m_axis_cr_tdata( m_axis_cr_tdata ),
    .m_axis_cr_tvalid( m_axis_cr_tvalid ),
    .m_axis_cr_tready( m_axis_cr_tready ),
    .m_axis_cr_tstrb( m_axis_cr_tstrb ),
    .m_axis_cr_tlast( m_axis_cr_tlast ),
    .m_axis_cr_tuser( m_axis_cr_tuser ),

    // Outgoing AXI - CFG Interface
    //-----------
    .m_axis_cfg_tdata( m_axis_cfg_tdata ),
    .m_axis_cfg_tvalid( m_axis_cfg_tvalid ),
    .m_axis_cfg_tready( m_axis_cfg_tready ),
    .m_axis_cfg_tstrb( m_axis_cfg_tstrb ),
    .m_axis_cfg_tlast( m_axis_cfg_tlast ),
    .m_axis_cfg_tuser( m_axis_cfg_tuser ),

    // Outgoing AXI - MSI Interface
    //-----------
    .m_axis_msi_tdata( m_axis_msi_tdata ),
    .m_axis_msi_tvalid( m_axis_msi_tvalid ),
    .m_axis_msi_tready( m_axis_msi_tready ),
    .m_axis_msi_tstrb( m_axis_msi_tstrb ),
    .m_axis_msi_tlast( m_axis_msi_tlast ),
    .m_axis_msi_tuser( m_axis_msi_tuser ),
    .is_msi( is_msi ),
    .msi_address( msi_address ),

    //user Inputs
    //----------------

    .cfg_req(cfg_req ),

    // Incoming TRN RX
    //-----------
    .trn_rd( trn_rd ),
    .trn_rsof( trn_rsof ),
    .trn_reof( trn_reof ),
    .trn_rsrc_rdy( trn_rsrc_rdy ),
    .trn_rdst_rdy( trn_rdst_rdy ),
    .trn_rsrc_dsc( trn_rsrc_dsc ),
    .trn_rrem( trn_rrem ),
    .trn_rerrfwd( trn_rerrfwd ),
    .trn_rbar_hit( trn_rbar_hit ),
    .trn_recrc_err( trn_recrc_err ),
    .trn_lnk_up( trn_lnk_up ),

    // System
    //-----------
    .com_iclk( com_iclk ),
    .com_sysrst( com_sysrst )
  );



  //---------------------------------------------//
  // TX Block Instantiation                      //
  //---------------------------------------------//

  axi_pcie_v2_8_0_axi_enhanced_tx #(
    .C_DATA_WIDTH( C_DATA_WIDTH ),
    .C_FAMILY( C_FAMILY ),
    .C_ROOT_PORT( C_ROOT_PORT ),
    .REM_WIDTH( REM_WIDTH ),
    .STRB_WIDTH( STRB_WIDTH )
  ) tx_inst (

    // Incoming AXI RW
    //-----------
    .s_axis_rw_tdata( s_axis_rw_tdata ),
    .s_axis_rw_tvalid( s_axis_rw_tvalid ),
    .s_axis_rw_tready( s_axis_rw_tready ),
    .s_axis_rw_tstrb( s_axis_rw_tstrb ),
    .s_axis_rw_tlast( s_axis_rw_tlast ),
    .s_axis_rw_tuser( s_axis_rw_tuser ),

    // Incoming AXI RR
    //-----------
    .s_axis_rr_tdata( s_axis_rr_tdata ),
    .s_axis_rr_tvalid( s_axis_rr_tvalid ),
    .s_axis_rr_tready( s_axis_rr_tready ),
    .s_axis_rr_tstrb( s_axis_rr_tstrb ),
    .s_axis_rr_tlast( s_axis_rr_tlast ),
    .s_axis_rr_tuser( s_axis_rr_tuser ),

    // Incoming AXI CC
    //-----------
    .s_axis_cc_tdata( s_axis_cc_tdata ),
    .s_axis_cc_tvalid( s_axis_cc_tvalid ),
    .s_axis_cc_tready( s_axis_cc_tready ),
    .s_axis_cc_tstrb( s_axis_cc_tstrb ),
    .s_axis_cc_tlast( s_axis_cc_tlast ),
    .s_axis_cc_tuser( s_axis_cc_tuser ),

    // Incoming AXI CFG
    //-----------
    .s_axis_cfg_tdata( s_axis_cfg_tdata ),
    .s_axis_cfg_tvalid( s_axis_cfg_tvalid ),
    .s_axis_cfg_tready( s_axis_cfg_tready ),
    .s_axis_cfg_tstrb( s_axis_cfg_tstrb ),
    .s_axis_cfg_tlast( s_axis_cfg_tlast ),
    .s_axis_cfg_tuser( s_axis_cfg_tuser ),
    .cfg_req(cfg_req),

    // Outgoing TRN TX
    //-----------
    .trn_td( trn_td ),
    .trn_tsof( trn_tsof ),
    .trn_teof( trn_teof ),
    .trn_tsrc_rdy( trn_tsrc_rdy ),
    .trn_tdst_rdy( trn_tdst_rdy ),
    .trn_tsrc_dsc( trn_tsrc_dsc ),
    .trn_trem( trn_trem ),
    .trn_terrfwd( trn_terrfwd ),
    .trn_tstr( trn_tstr ),
    .trn_tecrc_gen( trn_tecrc_gen ),
    .trn_lnk_up( trn_lnk_up ),
    // System
    //-----------
    .com_iclk( com_iclk ),
    .com_sysrst ( com_sysrst )
    );

  axi_pcie_v2_8_0_axi_enhanced_cfg#(
  .C_BASEADDR( C_BASEADDR ),
  .C_HIGHADDR( C_HIGHADDR ),
  .C_DATA_WIDTH( C_DATA_WIDTH ),
  .C_ROOT_PORT( C_ROOT_PORT ),
  .C_RP_BAR_HIDE( C_RP_BAR_HIDE ),
  .C_LAST_CORE_CAP_ADDR( C_LAST_CORE_CAP_ADDR ),
  .C_VSEC_CAP_ADDR( C_VSEC_CAP_ADDR ),
  .C_VSEC_CAP_LAST( C_VSEC_CAP_LAST ),
  .C_VSEC_ID( C_VSEC_ID ),
  .C_DEVICE_NUMBER( C_DEVICE_NUMBER ),
  .C_NUM_USER_INTR( C_NUM_USER_INTR ),
  .C_USER_PTR( C_USER_PTR ),
  .C_COMP_TIMEOUT( C_COMP_TIMEOUT ),
  .C_FAMILY( C_FAMILY ),
  .NO_SLV_ERR( NO_SLV_ERR  ),

  .REM_WIDTH( REM_WIDTH ),
  .RBAR_WIDTH( RBAR_WIDTH ),
  .STRB_WIDTH( STRB_WIDTH )
  )  cfg_inst(

  // AXI -Lite Write Address channel
  .s_axi_ctl_awaddr(s_axi_ctl_awaddr),
  .s_axi_ctl_awvalid(s_axi_ctl_awvalid),
  .s_axi_ctl_awready(s_axi_ctl_awready),

  // AXI - Lite Write Data Channel
  .s_axi_ctl_wdata(s_axi_ctl_wdata),
  .s_axi_ctl_wstrb(s_axi_ctl_wstrb),
  .s_axi_ctl_wvalid(s_axi_ctl_wvalid),
  .s_axi_ctl_wready(s_axi_ctl_wready),

  // AXI - Lite Write Response Channel
  .s_axi_ctl_bresp(s_axi_ctl_bresp),
  .s_axi_ctl_bvalid(s_axi_ctl_bvalid),
  .s_axi_ctl_bready(s_axi_ctl_bready),

  // AXI -Lite Read Address channel
  .s_axi_ctl_araddr(s_axi_ctl_araddr),
  .s_axi_ctl_arvalid(s_axi_ctl_arvalid),
  .s_axi_ctl_arready(s_axi_ctl_arready),

  // AXI - Lite Read Response Channel
  .s_axi_ctl_rdata(s_axi_ctl_rdata),
  .s_axi_ctl_rresp(s_axi_ctl_rresp),
  .s_axi_ctl_rvalid(s_axi_ctl_rvalid),
  .s_axi_ctl_rready(s_axi_ctl_rready),

  // IPIC Interface

  .Bus2IP_CS(Bus2IP_CS),
  .Bus2IP_BE(Bus2IP_BE),
  .Bus2IP_RNW(Bus2IP_RNW),
  .Bus2IP_Addr(Bus2IP_Addr),
  .Bus2IP_Data(Bus2IP_Data),
  .IP2Bus_RdAck(IP2Bus_RdAck),
  .IP2Bus_WrAck(IP2Bus_WrAck),
  .IP2Bus_Data(IP2Bus_Data),
  .IP2Bus_Error(IP2Bus_Error),

  // AXI- S Cfg- RX Interface
  .m_axis_cfg_tdata( m_axis_cfg_tdata ),
  .m_axis_cfg_tvalid( m_axis_cfg_tvalid ),
  .m_axis_cfg_tready( m_axis_cfg_tready ),
  .m_axis_cfg_tstrb( m_axis_cfg_tstrb ),
  .m_axis_cfg_tlast( m_axis_cfg_tlast ),
  .m_axis_cfg_tuser( m_axis_cfg_tuser ),

  // AXI- S MSI- RX Interface
  .m_axis_msi_tdata( m_axis_msi_tdata ),
  .m_axis_msi_tvalid( m_axis_msi_tvalid ),
  .m_axis_msi_tready( m_axis_msi_tready ),
  .m_axis_msi_tstrb( m_axis_msi_tstrb ),
  .m_axis_msi_tlast( m_axis_msi_tlast ),
  .m_axis_msi_tuser( m_axis_msi_tuser ),
  .is_msi( is_msi ),
  .msi_base_addr(msi_address),

  // AXI- S Cfg- TX Interface
  .s_axis_cfg_tdata( s_axis_cfg_tdata ),
  .s_axis_cfg_tvalid( s_axis_cfg_tvalid ),
  .s_axis_cfg_tready( s_axis_cfg_tready ),
  .s_axis_cfg_tstrb( s_axis_cfg_tstrb ),
  .s_axis_cfg_tlast( s_axis_cfg_tlast ),
  .s_axis_cfg_tuser( s_axis_cfg_tuser ),
  .cfg_req( cfg_req ),

  // Cfg Mgmt Interface

  .cfg_mgmt_rd_wr_done( cfg_mgmt_rd_wr_done ),
  .cfg_mgmt_do( cfg_mgmt_do ),
  .cfg_mgmt_rd_en( cfg_mgmt_rd_en ),
  .cfg_mgmt_wr_en( cfg_mgmt_wr_en ),
  .cfg_mgmt_wr_readonly( cfg_mgmt_wr_read_only ),
  .cfg_mgmt_wr_rw1c_as_rw( cfg_mgmt_wr_rw1c_as_rw ),
  .cfg_mgmt_di( cfg_mgmt_di ),
  .cfg_mgmt_byte_en( cfg_mgmt_byte_en ),
  .cfg_mgmt_dwaddr( cfg_mgmt_dwaddr ),

  // Cfg Error and Interrupt pins

  .cfg_msg_data( cfg_msg_data ),
  .cfg_msg_received( cfg_msg_received ),
  .cfg_msg_received_err_cor( cfg_msg_received_err_cor ),
  .cfg_msg_received_err_fatal( cfg_msg_received_err_fatal ),
  .cfg_msg_received_err_non_fatal( cfg_msg_received_err_non_fatal ),
  .cfg_msg_received_assert_inta( cfg_msg_received_assert_inta ),
  .cfg_msg_received_assert_intb( cfg_msg_received_assert_intb ),
  .cfg_msg_received_assert_intc( cfg_msg_received_assert_intc ),
  .cfg_msg_received_assert_intd( cfg_msg_received_assert_intd ),
  .cfg_msg_received_deassert_inta( cfg_msg_received_deassert_inta ),
  .cfg_msg_received_deassert_intb( cfg_msg_received_deassert_intb ),
  .cfg_msg_received_deassert_intc( cfg_msg_received_deassert_intc ),
  .cfg_msg_received_deassert_intd( cfg_msg_received_deassert_intd ),
  .cfg_bus_number( cfg_bus_number ),
  .cfg_device_number( cfg_device_number ),
  .pl_sel_link_rate( pl_sel_link_rate ),
  .pl_sel_link_width( pl_sel_link_width ),
  .pl_ltssm_state( pl_ltssm_state ),
  .pl_lane_reversal_mode( pl_lane_reversal_mode ),
  .pl_link_gen2_capable(pl_link_gen2_capable ),
  .pl_link_upcfg_capable(pl_link_upcfg_capable ),
  .pl_received_hot_reset( pl_received_hot_reset ),
  .RP_bridge_en( RP_bridge_en ),
  .pl_directed_link_width( pl_directed_link_width ),   // Directed Link Width
  .pl_directed_link_speed( pl_directed_link_speed ),   // Directed Link Speed
  .pl_directed_link_auton( pl_directed_link_auton ),   // Directed Link Autonomous
  .pl_directed_link_change( pl_directed_link_change ),
  .trn_lnk_up( trn_lnk_up ),
  .trn_recrc_err( trn_recrc_err ),
  .trn_tstr( trn_tstr ),
  .trn_terr_drop ( trn_terr_drop ),
  .ctl_intr( ctl_intr ),               // user interrupt
  .ctl_user_intr( ctl_user_intr ),

  //User Misc I/O
  .np_cpl_pending(np_cpl_pending),
  .s_axis_rr_tvalid(s_axis_rr_tvalid ),
  .requester_id(requester_id ),

  // System IOs
  .com_iclk( com_iclk),
  .com_cclk( com_cclk ),
  .com_sysrst( com_sysrst ),
  .config_gen_req(config_gen_req)
  );

endmodule
