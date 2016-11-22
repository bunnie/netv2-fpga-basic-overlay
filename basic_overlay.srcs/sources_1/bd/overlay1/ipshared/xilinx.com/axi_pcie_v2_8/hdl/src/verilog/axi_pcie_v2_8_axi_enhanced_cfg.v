//----------------------------------------------------------------------------//
//  File: axi_pcie_v2_8_0_axi_enhanced_cfg.v                        //
//                                                                            //
//  Description:                                                              //
//                                                                            //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_enhanced_cfg                                                        //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_pcie_v2_8_0_axi_enhanced_cfg #(
  parameter [31:0]           C_BASEADDR = 32'hFFFF_FFFF,    // AXI Lite Base Address
  parameter [31:0]           C_HIGHADDR = 32'h0000_0000,    // AXI Lite High Address
  parameter                  C_ADDR_WIDTH = 12,             // Address Width of the PCIe Block
  parameter                  C_DATA_WIDTH = 32,             // AXI-S Interface Data Width
  parameter                  C_MAX_LNK_WDT = 1,             // Maximum Number of PCIE Lanes
  parameter                  C_ROOT_PORT = "FALSE",         // PCIe block is in root port mode
  parameter                  C_RP_BAR_HIDE = "FALSE",       // Hide RP PCIe BAR (prevent CPU from assigning address to RP BAR)
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
  parameter                  TCQ = 1,                       // Clock-to-Q delay
  // Do not override parameters below this line
  parameter REM_WIDTH  = (C_DATA_WIDTH == 128) ? 2 : 1, // trem/rrem width
  parameter RBAR_WIDTH = (C_FAMILY == "X7") ? 8 : 7,    // trn_rbar_hit width
  parameter STRB_WIDTH = C_DATA_WIDTH / 8               // TSTRB width
  ) (
  
  //-------------------------------------------------//
  // AXI-Lite Interface connected to User Side       //
  //-------------------------------------------------//

  // AXI-Lite Write Address Channel
  input [31:0]               s_axi_ctl_awaddr,       // AXI Lite Write Address
  input                      s_axi_ctl_awvalid,      // AXI Lite Write Address Valid
  output                     s_axi_ctl_awready,      // AXI Lite Write Address Core ready

  // AXI-Lite Write Data Channel
  input [31:0]               s_axi_ctl_wdata,        // AXI Lite Write Data
  input [3:0]                s_axi_ctl_wstrb,        // AXI Lite Write Data strobe
  input                      s_axi_ctl_wvalid,       // AXI Lite Write Data Valid
  output                     s_axi_ctl_wready,       // AXI Lite Write Data Core ready

  // AXI-Lite Write Response Channel
  output [1:0]               s_axi_ctl_bresp,        // AXI Lite Write Data strobe
  output                     s_axi_ctl_bvalid,       // AXI Lite Write Data Valid
  input                      s_axi_ctl_bready,       // AXI Lite Write Data Core ready

  // AXI-Lite Read Address Channel
  input [31:0]               s_axi_ctl_araddr,       // AXI Lite Read Address
  input                      s_axi_ctl_arvalid,      // AXI Lite Read Address Valid
  output                     s_axi_ctl_arready,      // AXI Lite Read Address Core ready

  // AXI-Lite Read Data Channel
  output [31:0]              s_axi_ctl_rdata,        // AXI Lite Read Data
  output [1:0]               s_axi_ctl_rresp,        // AXI Lite Read Data strobe
  output                     s_axi_ctl_rvalid,       // AXI Lite Read Data Valid
  input                      s_axi_ctl_rready,       // AXI Lite Read Data Core ready
  
  //-------------------------------------------------//
  // AXI-Lite Control Interrupt Signals              //
  //-------------------------------------------------//
  output                      ctl_intr,              // Interrupt Line
  input [C_NUM_USER_INTR-1:0] ctl_user_intr,         // User Interrupt Vector

  //--------------------------------------------//
  // AXI-S Interface from RX Module             //
  //--------------------------------------------//
  input [C_DATA_WIDTH-1:0]   m_axis_cfg_tdata,       // AXI-S Data from RX module
  input                      m_axis_cfg_tvalid,      // Data is valid
  output                     m_axis_cfg_tready,      // Data Ready
  input [STRB_WIDTH-1:0]     m_axis_cfg_tstrb,       // Strobe byte enables
  input                      m_axis_cfg_tlast,       // Data Last
  input [21:0]               m_axis_cfg_tuser,       // AXI-S User Signals
  
  //--------------------------------------------//
  // AXI-S MSI Interface from RX Module             //
  //--------------------------------------------//
  input [C_DATA_WIDTH-1:0]   m_axis_msi_tdata,       // AXI-S Data from RX module
  input                      m_axis_msi_tvalid,      // Data is valid
  output                     m_axis_msi_tready,      // Data Ready
  input [STRB_WIDTH-1:0]     m_axis_msi_tstrb,       // Strobe byte enables
  input                      m_axis_msi_tlast,       // Data Last
  input [21:0]               m_axis_msi_tuser,       // AXI-S User Signals
  
  //--------------------------------------------//
  // AXI-S Interface to TX Module               //
  //--------------------------------------------//
  output [C_DATA_WIDTH-1:0]  s_axis_cfg_tdata,       // AXI-S Data from RX module
  output                     s_axis_cfg_tvalid,      // Data is valid
  input                      s_axis_cfg_tready,      // Data Ready
  output [STRB_WIDTH-1:0]    s_axis_cfg_tstrb,       // Strobe byte enables
  output                     s_axis_cfg_tlast,       // Data Last
  output [3:0]               s_axis_cfg_tuser,       // AXI-S User Signals
 
  //--------------------------------------------//
  // PCIe Configurtion Management Interface     //
  //--------------------------------------------//
  input                      cfg_mgmt_rd_wr_done,    // Read Write Done
  input [31:0]               cfg_mgmt_do,            // Data out
  output                     cfg_mgmt_rd_en,         // Read Enable
  output                     cfg_mgmt_wr_en,         // Write Enable
  output                     cfg_mgmt_wr_readonly,   // Write to Read only location
  output                     cfg_mgmt_wr_rw1c_as_rw, // Write to Read/Write 1 to clear location
  output [31:0]              cfg_mgmt_di,            // Data Input
  output [3:0]               cfg_mgmt_byte_en,       // Byte Enable
  output [9:0]               cfg_mgmt_dwaddr,        // Address

  //--------------------------------------------//
  // PCIe Configurtion Management Interface     //
  //--------------------------------------------//
  output                     Bus2IP_CS,              // Chip Select
  output [3:0]               Bus2IP_BE,              // Byte Enable Vector
  output                     Bus2IP_RNW,             // Read Npt Write Qualifier
  output [31:0]              Bus2IP_Addr,            // Address Bus
  output [31:0]              Bus2IP_Data,            // Write Data Bus
  input                      IP2Bus_RdAck,           // Read Acknowledgement
  input                      IP2Bus_WrAck,           // Write Acknowledgement
  input  [31:0]              IP2Bus_Data,            // Read Data Bus
  input                      IP2Bus_Error,           // Error Qualifier
  //--------------------------------------------//
  // Status Interface from PCIe Block           //
  //--------------------------------------------//
  input [15:0]               cfg_msg_data,                   // Message Requester ID
  input                      cfg_msg_received,               // Indication of Message received
  input                      cfg_msg_received_err_cor,      // Correctable Error received
  input                      cfg_msg_received_err_non_fatal,     // Non-Fatal Error received
  input                      cfg_msg_received_err_fatal,         // Fatal Error received
  input                      cfg_msg_received_assert_inta,   // INTA Assert
  input                      cfg_msg_received_assert_intb,   // INTB Assert
  input                      cfg_msg_received_assert_intc,   // INTC Assert
  input                      cfg_msg_received_assert_intd,   // INTD Assert
  input                      cfg_msg_received_deassert_inta, // INTA Dessert
  input                      cfg_msg_received_deassert_intb, // INTB Dessert
  input                      cfg_msg_received_deassert_intc, // INTC Dessert
  input                      cfg_msg_received_deassert_intd, // INTD Dessert

  // PL_* pins to/from PCIe Block
  output                     RP_bridge_en,             // RP Bridge Enable bit
  output [1:0]               pl_directed_link_width,   // Directed Link Width
  output                     pl_directed_link_speed,   // Directed Link Speed
  output                     pl_directed_link_auton,   // Directed Link Autonomous
  output [1:0]               pl_directed_link_change,  // Directed Link Change
  input                      pl_sel_link_rate,         // Link rate
  input                      pl_received_hot_reset,    // Received Hot Reset
  input [1:0]                pl_sel_link_width,        // Link Width
  input [5:0]                pl_ltssm_state,           // LTSSM State
  input [1:0]                pl_lane_reversal_mode,    // Lane Reversal Mode
  input                      pl_link_gen2_capable,     // DUT is gen2 capable
  input                      pl_link_upcfg_capable,    // Upconfig Capable

  //--------------------------------------------//
  // Control Channel side-band signals          //
  //--------------------------------------------//
  
  // To/From RX Block
  input                      is_msi,                 // MSI is present on the AXI-S Interface
  output [63:0]              msi_base_addr,          // MSI Base Address

  // To/From User Interface
  input                      np_cpl_pending,         // Non-Posted TLPs are waiting for completion to come
  input                      s_axis_rr_tvalid,       // TVALID of RR interface
  output [15:0]              requester_id,           // {Bus#/Device#/Function#} in RC mode

  // To/From TX Block
  output                     cfg_req,                // Configuration Request

  // From PCIe TRN TX/RX Interface
  input                      trn_lnk_up,             // TRN Link Up
  input                      trn_tstr,               // TRN Streaming mode
  input                      trn_terr_drop,          // TRN Error Drop
  input                      trn_recrc_err,          // TRN Received ECRC Error
  
  // From PCIe CFG interface
  input [4:0]                cfg_device_number,      // Device Number
  input [7:0]                cfg_bus_number,         // Bus Number

  //--------------------------------------------//
  // System I/Os                                //
  //--------------------------------------------//
  input                      com_sysrst,             // Reset Signal for the core
  input                      com_iclk,               // Interface Clock
  input                      com_cclk,                // AXI Lite Clock
  output                     config_gen_req
  );

  // Wires

  // AXI-Lite Interface to connect AXI-Lite slave to AXI-Lite to IPIC Bridge
  //-------------
  wire [31:0]                s_axi_ctl_awaddr_ipic_bridge; // AXI Lite Write Address
  wire                       s_axi_ctl_awvalid_ipic_bridge;// AXI Lite Write Address Valid
  wire                       s_axi_ctl_awready_ipic_bridge;// AXI Lite Write Address Core ready
  wire [31:0]                s_axi_ctl_wdata_ipic_bridge;  // AXI Lite Write Data
  wire [3:0]                 s_axi_ctl_wstrb_ipic_bridge;  // AXI Lite Write Data strobe
  wire                       s_axi_ctl_wvalid_ipic_bridge; // AXI Lite Write Data Valid
  wire                       s_axi_ctl_wready_ipic_bridge; // AXI Lite Write Data Core ready
  wire [1:0]                 s_axi_ctl_bresp_ipic_bridge;  // AXI Lite Write Data strobe
  wire                       s_axi_ctl_bvalid_ipic_bridge; // AXI Lite Write Data Valid
  wire                       s_axi_ctl_bready_ipic_bridge; // AXI Lite Write Data Core ready
  wire [31:0]                s_axi_ctl_araddr_ipic_bridge; // AXI Lite Read Address
  wire                       s_axi_ctl_arvalid_ipic_bridge;// AXI Lite Read Address Valid
  wire                       s_axi_ctl_arready_ipic_bridge;// AXI Lite Read Address Core ready
  wire [31:0]                s_axi_ctl_rdata_ipic_bridge;  // AXI Lite Read Data
  wire [1:0]                 s_axi_ctl_rresp_ipic_bridge;  // AXI Lite Read Data strobe
  wire                       s_axi_ctl_rvalid_ipic_bridge; // AXI Lite Read Data Valid
  wire                       s_axi_ctl_rready_ipic_bridge; // AXI Lite Read Data Core ready

  // AXI-Lite Interface to connect AXI-Lite slave to Config Block Bridge
  //-------------
  wire [31:0]                s_axi_ctl_awaddr_blk_bridge;  // AXI Lite Write Address
  wire                       s_axi_ctl_awvalid_blk_bridge; // AXI Lite Write Address Valid
  wire                       s_axi_ctl_awready_blk_bridge; // AXI Lite Write Address Core ready
  wire [31:0]                s_axi_ctl_wdata_blk_bridge;   // AXI Lite Write Data
  wire [3:0]                 s_axi_ctl_wstrb_blk_bridge;   // AXI Lite Write Data strobe
  wire                       s_axi_ctl_wvalid_blk_bridge;  // AXI Lite Write Data Valid
  wire                       s_axi_ctl_wready_blk_bridge;  // AXI Lite Write Data Core ready
  wire [1:0]                 s_axi_ctl_bresp_blk_bridge;   // AXI Lite Write Data strobe
  wire                       s_axi_ctl_bvalid_blk_bridge;  // AXI Lite Write Data Valid
  wire                       s_axi_ctl_bready_blk_bridge;  // AXI Lite Write Data Core ready
  wire [31:0]                s_axi_ctl_araddr_blk_bridge;  // AXI Lite Read Address
  wire                       s_axi_ctl_arvalid_blk_bridge; // AXI Lite Read Address Valid
  wire                       s_axi_ctl_arready_blk_bridge; // AXI Lite Read Address Core ready
  wire [31:0]                s_axi_ctl_rdata_blk_bridge;   // AXI Lite Read Data
  wire [1:0]                 s_axi_ctl_rresp_blk_bridge;   // AXI Lite Read Data strobe
  wire                       s_axi_ctl_rvalid_blk_bridge;  // AXI Lite Read Data Valid
  wire                       s_axi_ctl_rready_blk_bridge;  // AXI Lite Read Data Core ready

  // AXI-Lite Interface to connect AXI-Lite slave to Config gen and sink
  //-------------
  wire [31:0]                s_axi_ctl_awaddr_gen_sink;    // AXI Lite Write Address
  wire                       s_axi_ctl_awvalid_gen_sink;   // AXI Lite Write Address Valid
  wire                       s_axi_ctl_awready_gen_sink;   // AXI Lite Write Address Core ready
  wire [31:0]                s_axi_ctl_wdata_gen_sink;     // AXI Lite Write Data
  wire [3:0]                 s_axi_ctl_wstrb_gen_sink;     // AXI Lite Write Data strobe
  wire                       s_axi_ctl_wvalid_gen_sink;    // AXI Lite Write Data Valid
  wire                       s_axi_ctl_wready_gen_sink;    // AXI Lite Write Data Core ready
  wire [1:0]                 s_axi_ctl_bresp_gen_sink;     // AXI Lite Write Data strobe
  wire                       s_axi_ctl_bvalid_gen_sink;    // AXI Lite Write Data Valid
  wire                       s_axi_ctl_bready_gen_sink;    // AXI Lite Write Data Core ready
  wire [31:0]                s_axi_ctl_araddr_gen_sink;    // AXI Lite Read Address
  wire                       s_axi_ctl_arvalid_gen_sink;   // AXI Lite Read Address Valid
  wire                       s_axi_ctl_arready_gen_sink;   // AXI Lite Read Address Core ready
  wire [31:0]                s_axi_ctl_rdata_gen_sink;     // AXI Lite Read Data
  wire [1:0]                 s_axi_ctl_rresp_gen_sink;     // AXI Lite Read Data strobe
  wire                       s_axi_ctl_rvalid_gen_sink;    // AXI Lite Read Data Valid
  wire                       s_axi_ctl_rready_gen_sink;    // AXI Lite Read Data Core ready

  // AXI-Lite Interface to connect AXI-Lite slave to Event Handler
  //-------------
  wire [31:0]                s_axi_ctl_awaddr_ev_hndlr;    // AXI Lite Write Address
  wire                       s_axi_ctl_awvalid_ev_hndlr;   // AXI Lite Write Address Valid
  wire                       s_axi_ctl_awready_ev_hndlr;   // AXI Lite Write Address Core ready
  wire [31:0]                s_axi_ctl_wdata_ev_hndlr;     // AXI Lite Write Data
  wire [3:0]                 s_axi_ctl_wstrb_ev_hndlr;     // AXI Lite Write Data strobe
  wire                       s_axi_ctl_wvalid_ev_hndlr;    // AXI Lite Write Data Valid
  wire                       s_axi_ctl_wready_ev_hndlr;    // AXI Lite Write Data Core ready
  wire [1:0]                 s_axi_ctl_bresp_ev_hndlr;     // AXI Lite Write Data strobe
  wire                       s_axi_ctl_bvalid_ev_hndlr;    // AXI Lite Write Data Valid
  wire                       s_axi_ctl_bready_ev_hndlr;    // AXI Lite Write Data Core ready
  wire [31:0]                s_axi_ctl_araddr_ev_hndlr;    // AXI Lite Read Address
  wire                       s_axi_ctl_arvalid_ev_hndlr;   // AXI Lite Read Address Valid
  wire                       s_axi_ctl_arready_ev_hndlr;   // AXI Lite Read Address Core ready
  wire [31:0]                s_axi_ctl_rdata_ev_hndlr;     // AXI Lite Read Data
  wire [1:0]                 s_axi_ctl_rresp_ev_hndlr;     // AXI Lite Read Data strobe
  wire                       s_axi_ctl_rvalid_ev_hndlr;    // AXI Lite Read Data Valid
  wire                       s_axi_ctl_rready_ev_hndlr;    // AXI Lite Read Data Core ready  

  // Control Channel side-band signals
  //-------------
  wire [2:0]                 cpl_status;                // Completion status
  wire                       cfg_type;                  // CFG Type
  wire                       cfg_timeout;               // configuration Completion Timeout
  wire                       cfg_mgmt_wr_rw1c_as_rw_o;  // Write to WR1C location
  wire                       cfg_mgmt_wr_readonly_o;    // Write to ReadOnly location
  wire                       corr_err_rcvd;             // Received Correctable Error
  wire                       non_fatal_err_rcvd;        // Received Non-Fatal Error
  wire                       fatal_err_rcvd;            // Received Fatal Error
  wire                       intx_msg_rcvd;             // Received INTx Message
  wire                       msi_msg_rcvd;              // Received MSI Message
  wire                       msg_req;                   // Message Request
  wire                       msg_sent;                  // Acknowledgement for MsgD (Slot_Power_Limit Msg TLP)
  wire [7:0]                 slot_power_limit_value;    // Slot Power Limit Value fatched from Slot Cap Register
  wire [1:0]                 slot_power_limit_scale;    // Slot Power Limit Scale fatched from Slot Cap Register
  wire                       m_axis_cfg_tready_gen_sink;// TREADY from Config Gen/Sink sub-module 
  wire                       m_axis_cfg_tready_rp;      // TREADY from Config Gen/Sink sub-module 
                                                        // for AXI-S CFG interface of to receive Cfg Completions
  wire                       m_axis_cfg_tready_ev_hndlr;// TREADY from Event Handler sub-module
                                                        // for AXI-S CFG interface to receive MSI Interrupts
  wire                       intr_fifo_not_empty_o;     // Root Port Interrupt FIFO is not empty
  wire                       corr_err_in_fifo;          // Correctable Error is present in Root Port Error FIFO
  wire                       non_fatal_err_in_fifo;     // Non-Fatal Error is present in Root Port Error FIFO
  wire                       fatal_err_in_fifo;         // Fatal Error is present in Root Port Error FIFO

  wire                       msi_irq;
  wire                       msi_irq_sel;

  wire                       Bus2IP_Clk;
  wire                       Bus2IP_Resetn;
  wire                       Bus2IP_RdCE;
  wire                       Bus2IP_WrCE;

 // AXI-Lite Slave Module instantiation
  axi_pcie_v2_8_0_axi_enhanced_cfg_slave #(
    .C_BASEADDR(C_BASEADDR ),
    .C_HIGHADDR(C_HIGHADDR ),
    .C_ADDR_WIDTH(C_ADDR_WIDTH ),
    .C_DATA_WIDTH(C_DATA_WIDTH ),
    .C_MAX_LNK_WDT(C_MAX_LNK_WDT ),
    .C_ROOT_PORT(C_ROOT_PORT ),
    .C_LAST_CORE_CAP_ADDR(C_LAST_CORE_CAP_ADDR ),
    .C_VSEC_CAP_ADDR(C_VSEC_CAP_ADDR ),
    .C_VSEC_CAP_LAST(C_VSEC_CAP_LAST ),
    .C_VSEC_ID(C_VSEC_ID ),
    .C_DEVICE_NUMBER(C_DEVICE_NUMBER ),
    .C_NUM_USER_INTR(C_NUM_USER_INTR ),
    .C_USER_PTR(C_USER_PTR ),
    .NO_SLV_ERR( NO_SLV_ERR  ),
    .C_FAMILY(C_FAMILY ),
    .TCQ(TCQ )
  ) axi_enhanced_cfg_slave_inst (
  
    // AXI-Lite Interface connected to User Side
    //-------------
    .s_axi_ctl_awaddr(s_axi_ctl_awaddr ),
    .s_axi_ctl_awvalid(s_axi_ctl_awvalid ),
    .s_axi_ctl_awready(s_axi_ctl_awready ),
    .s_axi_ctl_wdata(s_axi_ctl_wdata ),
    .s_axi_ctl_wstrb(s_axi_ctl_wstrb ),
    .s_axi_ctl_wvalid(s_axi_ctl_wvalid ),
    .s_axi_ctl_wready(s_axi_ctl_wready ),
    .s_axi_ctl_bresp(s_axi_ctl_bresp ),
    .s_axi_ctl_bvalid(s_axi_ctl_bvalid ),
    .s_axi_ctl_bready(s_axi_ctl_bready ),
    .s_axi_ctl_araddr(s_axi_ctl_araddr ),
    .s_axi_ctl_arvalid(s_axi_ctl_arvalid ),
    .s_axi_ctl_arready(s_axi_ctl_arready ),
    .s_axi_ctl_rdata(s_axi_ctl_rdata ),
    .s_axi_ctl_rresp(s_axi_ctl_rresp ),
    .s_axi_ctl_rvalid(s_axi_ctl_rvalid ),
    .s_axi_ctl_rready(s_axi_ctl_rready ),
    
    // AXI-Lite Interface for AXI-Lite to IPIC Bridge
    //-------------
    .s_axi_ctl_awaddr_ipic_bridge(s_axi_ctl_awaddr_ipic_bridge ),
    .s_axi_ctl_awvalid_ipic_bridge(s_axi_ctl_awvalid_ipic_bridge ),
    .s_axi_ctl_awready_ipic_bridge(s_axi_ctl_awready_ipic_bridge ),
    .s_axi_ctl_wdata_ipic_bridge(s_axi_ctl_wdata_ipic_bridge ),
    .s_axi_ctl_wstrb_ipic_bridge(s_axi_ctl_wstrb_ipic_bridge ),
    .s_axi_ctl_wvalid_ipic_bridge(s_axi_ctl_wvalid_ipic_bridge ),
    .s_axi_ctl_wready_ipic_bridge(s_axi_ctl_wready_ipic_bridge ),
    .s_axi_ctl_bresp_ipic_bridge(s_axi_ctl_bresp_ipic_bridge ),
    .s_axi_ctl_bvalid_ipic_bridge(s_axi_ctl_bvalid_ipic_bridge ),
    .s_axi_ctl_bready_ipic_bridge(s_axi_ctl_bready_ipic_bridge ),
    .s_axi_ctl_araddr_ipic_bridge(s_axi_ctl_araddr_ipic_bridge ),
    .s_axi_ctl_arvalid_ipic_bridge(s_axi_ctl_arvalid_ipic_bridge ),
    .s_axi_ctl_arready_ipic_bridge(s_axi_ctl_arready_ipic_bridge ),
    .s_axi_ctl_rdata_ipic_bridge(s_axi_ctl_rdata_ipic_bridge ),
    .s_axi_ctl_rresp_ipic_bridge(s_axi_ctl_rresp_ipic_bridge ),
    .s_axi_ctl_rvalid_ipic_bridge(s_axi_ctl_rvalid_ipic_bridge ),
    .s_axi_ctl_rready_ipic_bridge(s_axi_ctl_rready_ipic_bridge ),
    
    // AXI-Lite Interface for Config Block Bridge
    //-------------
    .s_axi_ctl_awaddr_blk_bridge(s_axi_ctl_awaddr_blk_bridge ),
    .s_axi_ctl_awvalid_blk_bridge(s_axi_ctl_awvalid_blk_bridge ),
    .s_axi_ctl_awready_blk_bridge(s_axi_ctl_awready_blk_bridge ),
    .s_axi_ctl_wdata_blk_bridge(s_axi_ctl_wdata_blk_bridge ),
    .s_axi_ctl_wstrb_blk_bridge(s_axi_ctl_wstrb_blk_bridge ),
    .s_axi_ctl_wvalid_blk_bridge(s_axi_ctl_wvalid_blk_bridge ),
    .s_axi_ctl_wready_blk_bridge(s_axi_ctl_wready_blk_bridge ),
    .s_axi_ctl_bresp_blk_bridge(s_axi_ctl_bresp_blk_bridge ),
    .s_axi_ctl_bvalid_blk_bridge(s_axi_ctl_bvalid_blk_bridge ),
    .s_axi_ctl_bready_blk_bridge(s_axi_ctl_bready_blk_bridge ),
    .s_axi_ctl_araddr_blk_bridge(s_axi_ctl_araddr_blk_bridge ),
    .s_axi_ctl_arvalid_blk_bridge(s_axi_ctl_arvalid_blk_bridge ),
    .s_axi_ctl_arready_blk_bridge(s_axi_ctl_arready_blk_bridge ),
    .s_axi_ctl_rdata_blk_bridge(s_axi_ctl_rdata_blk_bridge ),
    .s_axi_ctl_rresp_blk_bridge(s_axi_ctl_rresp_blk_bridge ),
    .s_axi_ctl_rvalid_blk_bridge(s_axi_ctl_rvalid_blk_bridge ),
    .s_axi_ctl_rready_blk_bridge(s_axi_ctl_rready_blk_bridge ),
    
    // AXI-Lite Interface for Config gen and sink
    //-------------
    .s_axi_ctl_awaddr_gen_sink(s_axi_ctl_awaddr_gen_sink ),
    .s_axi_ctl_awvalid_gen_sink(s_axi_ctl_awvalid_gen_sink ),
    .s_axi_ctl_awready_gen_sink(s_axi_ctl_awready_gen_sink ),
    .s_axi_ctl_wdata_gen_sink(s_axi_ctl_wdata_gen_sink ),
    .s_axi_ctl_wstrb_gen_sink(s_axi_ctl_wstrb_gen_sink ),
    .s_axi_ctl_wvalid_gen_sink(s_axi_ctl_wvalid_gen_sink ),
    .s_axi_ctl_wready_gen_sink(s_axi_ctl_wready_gen_sink ),
    .s_axi_ctl_bresp_gen_sink(s_axi_ctl_bresp_gen_sink ),
    .s_axi_ctl_bvalid_gen_sink(s_axi_ctl_bvalid_gen_sink ),
    .s_axi_ctl_bready_gen_sink(s_axi_ctl_bready_gen_sink ),
    .s_axi_ctl_araddr_gen_sink(s_axi_ctl_araddr_gen_sink ),
    .s_axi_ctl_arvalid_gen_sink(s_axi_ctl_arvalid_gen_sink ),
    .s_axi_ctl_arready_gen_sink(s_axi_ctl_arready_gen_sink ),
    .s_axi_ctl_rdata_gen_sink(s_axi_ctl_rdata_gen_sink ),
    .s_axi_ctl_rresp_gen_sink(s_axi_ctl_rresp_gen_sink ),
    .s_axi_ctl_rvalid_gen_sink(s_axi_ctl_rvalid_gen_sink ),
    .s_axi_ctl_rready_gen_sink(s_axi_ctl_rready_gen_sink ),
    
    // AXI-Lite Interface for Event Handler
    //-------------
    .s_axi_ctl_awaddr_ev_hndlr(s_axi_ctl_awaddr_ev_hndlr ),
    .s_axi_ctl_awvalid_ev_hndlr(s_axi_ctl_awvalid_ev_hndlr ),
    .s_axi_ctl_awready_ev_hndlr(s_axi_ctl_awready_ev_hndlr ),
    .s_axi_ctl_wdata_ev_hndlr(s_axi_ctl_wdata_ev_hndlr ),
    .s_axi_ctl_wstrb_ev_hndlr(s_axi_ctl_wstrb_ev_hndlr ),
    .s_axi_ctl_wvalid_ev_hndlr(s_axi_ctl_wvalid_ev_hndlr ),
    .s_axi_ctl_wready_ev_hndlr(s_axi_ctl_wready_ev_hndlr ),
    .s_axi_ctl_bresp_ev_hndlr(s_axi_ctl_bresp_ev_hndlr ),
    .s_axi_ctl_bvalid_ev_hndlr(s_axi_ctl_bvalid_ev_hndlr ),
    .s_axi_ctl_bready_ev_hndlr(s_axi_ctl_bready_ev_hndlr ),
    .s_axi_ctl_araddr_ev_hndlr(s_axi_ctl_araddr_ev_hndlr ),
    .s_axi_ctl_arvalid_ev_hndlr(s_axi_ctl_arvalid_ev_hndlr ),
    .s_axi_ctl_arready_ev_hndlr(s_axi_ctl_arready_ev_hndlr ),
    .s_axi_ctl_rdata_ev_hndlr(s_axi_ctl_rdata_ev_hndlr ),
    .s_axi_ctl_rresp_ev_hndlr(s_axi_ctl_rresp_ev_hndlr ),
    .s_axi_ctl_rvalid_ev_hndlr(s_axi_ctl_rvalid_ev_hndlr ),
    .s_axi_ctl_rready_ev_hndlr(s_axi_ctl_rready_ev_hndlr ),
    
    // AXI-Lite Control Interrupt Signals
    //-------------
    .ctl_intr(ctl_intr ),
    .ctl_user_intr(ctl_user_intr ),
    .MSI_IRQ_I (msi_irq),
    .MSI_IRQ_SEL_I (msi_irq_sel),
    // Control Channel side-band signals
    //-------------
    .cfg_type(cfg_type ),
    .cpl_status(cpl_status ),
    .np_cpl_pending(np_cpl_pending ),
    .s_axis_rr_tvalid(s_axis_rr_tvalid ),
    .cfg_timeout(cfg_timeout ),
    .cfg_req(cfg_req ),
    .msg_req(msg_req ),
    .msg_sent(msg_sent ),
    .slot_power_limit_value(slot_power_limit_value ),
    .slot_power_limit_scale(slot_power_limit_scale ),
    .requester_id(requester_id ),
    .cfg_mgmt_wr_rw1c_as_rw_o(cfg_mgmt_wr_rw1c_as_rw_o ),
    .cfg_mgmt_wr_readonly_o(cfg_mgmt_wr_readonly_o ),
    .corr_err_rcvd(corr_err_rcvd ),
    .non_fatal_err_rcvd(non_fatal_err_rcvd ),
    .fatal_err_rcvd(fatal_err_rcvd ),
    .intx_msg_rcvd(intx_msg_rcvd ),
    .msi_msg_rcvd(msi_msg_rcvd ),
    .pl_directed_link_width(pl_directed_link_width ),
    .pl_directed_link_speed(pl_directed_link_speed ),
    .pl_directed_link_auton(pl_directed_link_auton ),
    .pl_directed_link_change(pl_directed_link_change ),
    .pl_sel_link_rate(pl_sel_link_rate ),
    .pl_received_hot_reset(pl_received_hot_reset ),
    .pl_sel_link_width(pl_sel_link_width ),
    .pl_ltssm_state(pl_ltssm_state ),
    .pl_lane_reversal_mode(pl_lane_reversal_mode ),
    .pl_link_gen2_capable(pl_link_gen2_capable ),
    .pl_link_upcfg_capable(pl_link_upcfg_capable ),
    .trn_lnk_up(trn_lnk_up ),
    .trn_tstr(trn_tstr ),
    .trn_terr_drop(trn_terr_drop ),
    .trn_recrc_err(trn_recrc_err ),
    .cfg_device_number(cfg_device_number ),
    .cfg_bus_number(cfg_bus_number ),
    .intr_fifo_empty(!intr_fifo_not_empty_o ),
    .corr_err_in_fifo(corr_err_in_fifo ),
    .non_fatal_err_in_fifo(non_fatal_err_in_fifo ),
    .fatal_err_in_fifo(fatal_err_in_fifo ),

    // System I/Os
    //-------------
    .com_sysrst(com_sysrst ),
    .com_cclk(com_cclk ),
    .config_gen_req(config_gen_req)
    );

 // Cofig Rd/Wr Gen and Sink
  axi_pcie_v2_8_0_axi_enhanced_cfg_gen_sink #(
    .C_DATA_WIDTH(C_DATA_WIDTH ),
    .C_FAMILY(C_FAMILY ),
    .C_ROOT_PORT(C_ROOT_PORT ),
    .C_COMP_TIMEOUT(C_COMP_TIMEOUT ),
    .TCQ(TCQ ),
    .REM_WIDTH (REM_WIDTH  ),
    .RBAR_WIDTH(RBAR_WIDTH ),
    .STRB_WIDTH(STRB_WIDTH )
  ) axi_enhanced_cfg_gen_sink_inst (
  
    // AXI-Lite Interface
    //-------------
    .s_axi_ctl_awaddr(s_axi_ctl_awaddr_gen_sink ),
    .s_axi_ctl_awvalid(s_axi_ctl_awvalid_gen_sink ),
    .s_axi_ctl_awready(s_axi_ctl_awready_gen_sink ),
    .s_axi_ctl_wdata(s_axi_ctl_wdata_gen_sink ),
    .s_axi_ctl_wstrb(s_axi_ctl_wstrb_gen_sink ),
    .s_axi_ctl_wvalid(s_axi_ctl_wvalid_gen_sink ),
    .s_axi_ctl_wready(s_axi_ctl_wready_gen_sink ),
    .s_axi_ctl_bresp(s_axi_ctl_bresp_gen_sink ),
    .s_axi_ctl_bvalid(s_axi_ctl_bvalid_gen_sink ),
    .s_axi_ctl_bready(s_axi_ctl_bready_gen_sink ),
    .s_axi_ctl_araddr(s_axi_ctl_araddr_gen_sink ),
    .s_axi_ctl_arvalid(s_axi_ctl_arvalid_gen_sink ),
    .s_axi_ctl_arready(s_axi_ctl_arready_gen_sink ),
    .s_axi_ctl_rdata(s_axi_ctl_rdata_gen_sink ),
    .s_axi_ctl_rresp(s_axi_ctl_rresp_gen_sink ),
    .s_axi_ctl_rvalid(s_axi_ctl_rvalid_gen_sink ),
    .s_axi_ctl_rready(s_axi_ctl_rready_gen_sink ),
    
    // AXI-S Interface from RX Module
    //-------------
    .m_axis_cfg_tdata(m_axis_cfg_tdata ),
    .m_axis_cfg_tvalid(m_axis_cfg_tvalid ),
    .m_axis_cfg_tready(m_axis_cfg_tready_rp ),
    .m_axis_cfg_tstrb(m_axis_cfg_tstrb ),
    .m_axis_cfg_tlast(m_axis_cfg_tlast ),
    .m_axis_cfg_tuser(m_axis_cfg_tuser ),
    
    // AXI-S Interface to TX Module
    //-------------
    .s_axis_cfg_tdata(s_axis_cfg_tdata ),
    .s_axis_cfg_tvalid(s_axis_cfg_tvalid ),
    .s_axis_cfg_tready(s_axis_cfg_tready ),
    .s_axis_cfg_tstrb(s_axis_cfg_tstrb ),
    .s_axis_cfg_tlast(s_axis_cfg_tlast ),
    .s_axis_cfg_tuser(s_axis_cfg_tuser ),
    
    // Control Channel side-band signals
    //-------------
    .cfg_type(cfg_type ),
    .requester_id(requester_id ),
    .is_msi(1'b0 ),
    .msg_req(msg_req ),
    .msg_sent(msg_sent ),
    .slot_power_limit_value(slot_power_limit_value ),
    .slot_power_limit_scale(slot_power_limit_scale ),
    .cpl_status(cpl_status ),
    .cfg_timeout(cfg_timeout ),
    
    // System I/Os
    //-------------
    .com_sysrst(com_sysrst ),
    .com_iclk(com_iclk ),
    .com_cclk(com_cclk )
    );
  
 // Block Config Bridge
  axi_pcie_v2_8_0_axi_enhanced_cfg_block_bridge #(
    .C_FAMILY(C_FAMILY ),
    .C_ROOT_PORT(C_ROOT_PORT ),
    .C_ADDR_WIDTH(C_ADDR_WIDTH ),
    .C_BASEADDR(C_BASEADDR ),
    .C_HIGHADDR(C_HIGHADDR ),
    .C_RP_BAR_HIDE(C_RP_BAR_HIDE ),
    .TCQ(TCQ )
  ) axi_enhanced_cfg_block_bridge_inst (
  
    // AXI-Lite Interface
    //-------------
    .s_axi_ctl_awaddr(s_axi_ctl_awaddr_blk_bridge ),
    .s_axi_ctl_awvalid(s_axi_ctl_awvalid_blk_bridge ),
    .s_axi_ctl_awready(s_axi_ctl_awready_blk_bridge ),
    .s_axi_ctl_wdata(s_axi_ctl_wdata_blk_bridge ),
    .s_axi_ctl_wstrb(s_axi_ctl_wstrb_blk_bridge ),
    .s_axi_ctl_wvalid(s_axi_ctl_wvalid_blk_bridge ),
    .s_axi_ctl_wready(s_axi_ctl_wready_blk_bridge ),
    .s_axi_ctl_bresp(s_axi_ctl_bresp_blk_bridge ),
    .s_axi_ctl_bvalid(s_axi_ctl_bvalid_blk_bridge ),
    .s_axi_ctl_bready(s_axi_ctl_bready_blk_bridge ),
    .s_axi_ctl_araddr(s_axi_ctl_araddr_blk_bridge ),
    .s_axi_ctl_arvalid(s_axi_ctl_arvalid_blk_bridge ),
    .s_axi_ctl_arready(s_axi_ctl_arready_blk_bridge ),
    .s_axi_ctl_rdata(s_axi_ctl_rdata_blk_bridge ),
    .s_axi_ctl_rresp(s_axi_ctl_rresp_blk_bridge ),
    .s_axi_ctl_rvalid(s_axi_ctl_rvalid_blk_bridge ),
    .s_axi_ctl_rready(s_axi_ctl_rready_blk_bridge ),
    
    // Special Access Control Signals
    //-------------
    .cfg_mgmt_wr_rw1c_as_rw_i(cfg_mgmt_wr_rw1c_as_rw_o ),
    .cfg_mgmt_wr_readonly_i(cfg_mgmt_wr_readonly_o ),
    
    // PCIe Configurtion Management Interface
    //-------------
    .cfg_mgmt_rd_wr_done(cfg_mgmt_rd_wr_done ),
    .cfg_mgmt_do(cfg_mgmt_do ),
    .cfg_mgmt_rd_en(cfg_mgmt_rd_en ),
    .cfg_mgmt_wr_en(cfg_mgmt_wr_en ),
    .cfg_mgmt_wr_readonly(cfg_mgmt_wr_readonly ),
    .cfg_mgmt_wr_rw1c_as_rw(cfg_mgmt_wr_rw1c_as_rw ),
    .cfg_mgmt_di(cfg_mgmt_di ),
    .cfg_mgmt_byte_en(cfg_mgmt_byte_en ),
    .cfg_mgmt_dwaddr(cfg_mgmt_dwaddr ),
    
    // System I/Os
    //-------------
    .com_sysrst(com_sysrst ),
    .com_iclk(com_iclk ),
    .com_cclk(com_cclk )
  );
  
  // Event Handler
  axi_pcie_v2_8_0_axi_enhanced_cfg_event_handler #(
    .C_DATA_WIDTH(C_DATA_WIDTH ),
    .C_FAMILY(C_FAMILY ),
    .C_ROOT_PORT(C_ROOT_PORT ),
    .C_VSEC_CAP_ADDR(C_VSEC_CAP_ADDR ),
    .TCQ(TCQ ),
    .REM_WIDTH (REM_WIDTH  ),
    .RBAR_WIDTH(RBAR_WIDTH ),
    .STRB_WIDTH(STRB_WIDTH )
  ) axi_enhanced_cfg_event_handler_inst (
  
    // AXI-Lite Interface
    //-------------
    .s_axi_ctl_awaddr(s_axi_ctl_awaddr_ev_hndlr ),
    .s_axi_ctl_awvalid(s_axi_ctl_awvalid_ev_hndlr ),
    .s_axi_ctl_awready(s_axi_ctl_awready_ev_hndlr ),
    .s_axi_ctl_wdata(s_axi_ctl_wdata_ev_hndlr ),
    .s_axi_ctl_wstrb(s_axi_ctl_wstrb_ev_hndlr ),
    .s_axi_ctl_wvalid(s_axi_ctl_wvalid_ev_hndlr ),
    .s_axi_ctl_wready(s_axi_ctl_wready_ev_hndlr ),
    .s_axi_ctl_bresp(s_axi_ctl_bresp_ev_hndlr ),
    .s_axi_ctl_bvalid(s_axi_ctl_bvalid_ev_hndlr ),
    .s_axi_ctl_bready(s_axi_ctl_bready_ev_hndlr ),
    .s_axi_ctl_araddr(s_axi_ctl_araddr_ev_hndlr ),
    .s_axi_ctl_arvalid(s_axi_ctl_arvalid_ev_hndlr ),
    .s_axi_ctl_arready(s_axi_ctl_arready_ev_hndlr ),
    .s_axi_ctl_rdata(s_axi_ctl_rdata_ev_hndlr ),
    .s_axi_ctl_rresp(s_axi_ctl_rresp_ev_hndlr ),
    .s_axi_ctl_rvalid(s_axi_ctl_rvalid_ev_hndlr ),
    .s_axi_ctl_rready(s_axi_ctl_rready_ev_hndlr ),
    
    // AXI-S MSI Interface from RX Module
    //-------------
    .m_axis_cfg_tdata(m_axis_msi_tdata ),
    .m_axis_cfg_tvalid(m_axis_msi_tvalid ),
    .m_axis_cfg_tready(m_axis_msi_tready ),
    .m_axis_cfg_tstrb(m_axis_msi_tstrb ),
    .m_axis_cfg_tlast(m_axis_msi_tlast ),
    .m_axis_cfg_tuser(m_axis_msi_tuser ),
    // Status Interface from PCIe Block
    //-------------
    .cfg_msg_data(cfg_msg_data ),
    .cfg_msg_received(cfg_msg_received ),
    .cfg_msg_received_err_cor(cfg_msg_received_err_cor ),
    .cfg_msg_received_err_non_fatal(cfg_msg_received_err_non_fatal ),
    .cfg_msg_received_err_fatal(cfg_msg_received_err_fatal ),
    .cfg_msg_received_assert_inta(cfg_msg_received_assert_inta ),
    .cfg_msg_received_assert_intb(cfg_msg_received_assert_intb ),
    .cfg_msg_received_assert_intc(cfg_msg_received_assert_intc ),
    .cfg_msg_received_assert_intd(cfg_msg_received_assert_intd ),
    .cfg_msg_received_deassert_inta(cfg_msg_received_deassert_inta ),
    .cfg_msg_received_deassert_intb(cfg_msg_received_deassert_intb ),
    .cfg_msg_received_deassert_intc(cfg_msg_received_deassert_intc ),
    .cfg_msg_received_deassert_intd(cfg_msg_received_deassert_intd ),
    .trn_lnk_up(trn_lnk_up ),
    .RP_bridge_en(RP_bridge_en ),
    .pl_ltssm_state(pl_ltssm_state ),
    
    // Control Channel side-band signals
    //-------------
    .is_msi(is_msi ),
    .msi_base_addr(msi_base_addr ),
    .corr_err_rcvd(corr_err_rcvd ),
    .non_fatal_err_rcvd(non_fatal_err_rcvd ),
    .fatal_err_rcvd(fatal_err_rcvd ),
    .intx_msg_rcvd(intx_msg_rcvd ),
    .msi_msg_rcvd(msi_msg_rcvd ),
    .intr_fifo_not_empty_o(intr_fifo_not_empty_o ),
    .corr_err_in_fifo(corr_err_in_fifo ),
    .non_fatal_err_in_fifo(non_fatal_err_in_fifo ),
    .fatal_err_in_fifo(fatal_err_in_fifo ),

    // IRQ
    //----
    .p_ctl_intr    (ctl_intr),
    .MSI_IRQ_O     (msi_irq),
    .MSI_IRQ_SEL_O (msi_irq_sel),
    
    // System I/Os
    //-------------
    .com_sysrst(com_sysrst ),
    .com_iclk(com_iclk ),
    .com_cclk(com_cclk )
  );

  // AXI-Lite to IPIC Bridge
  
  axi_pcie_v2_8_0_axi_lite_ipif #(
    // AXI port dependant parameters
    .C_S_AXI_DATA_WIDTH( ), // Default 32-bit
    .C_S_AXI_ADDR_WIDTH( ), //Default 32-bit
    .C_S_AXI_MIN_SIZE(32'h0000_00FF ), 
    .C_USE_WSTRB(1 ),
    .C_DPHASE_TIMEOUT( ),
    .C_NUM_ADDRESS_RANGES(1 ),
    .C_TOTAL_NUM_CE(1 ),
    .C_ARD_ADDR_RANGE_ARRAY({{16'h0000,({4'h0,C_VSEC_CAP_ADDR} + C_USER_PTR)},
                            {16'h0000,({4'h0,C_VSEC_CAP_ADDR} + C_USER_PTR + 16'h00FF)}} ),
    .C_ARD_NUM_CE_ARRAY( ),
    .C_FAMILY(C_FAMILY ),
    .TCQ(TCQ )
  ) axi_lite_ipif_inst (
  
    // AXI-Lite Interface
    //-----------
    .S_AXI_ACLK(com_cclk ),
    .S_AXI_ARESETN(~com_sysrst ),
    .S_AXI_AWADDR(s_axi_ctl_awaddr_ipic_bridge ),
    .S_AXI_AWVALID(s_axi_ctl_awvalid_ipic_bridge ),
    .S_AXI_AWREADY(s_axi_ctl_awready_ipic_bridge ),
    .S_AXI_WDATA(s_axi_ctl_wdata_ipic_bridge ),
    .S_AXI_WSTRB(s_axi_ctl_wstrb_ipic_bridge ),
    .S_AXI_WVALID(s_axi_ctl_wvalid_ipic_bridge ),
    .S_AXI_WREADY(s_axi_ctl_wready_ipic_bridge ),
    .S_AXI_BRESP(s_axi_ctl_bresp_ipic_bridge ),
    .S_AXI_BVALID(s_axi_ctl_bvalid_ipic_bridge ),
    .S_AXI_BREADY(s_axi_ctl_bready_ipic_bridge ),
    .S_AXI_ARADDR(s_axi_ctl_araddr_ipic_bridge ),
    .S_AXI_ARVALID(s_axi_ctl_arvalid_ipic_bridge ),
    .S_AXI_ARREADY(s_axi_ctl_arready_ipic_bridge ),
    .S_AXI_RDATA(s_axi_ctl_rdata_ipic_bridge ),
    .S_AXI_RRESP(s_axi_ctl_rresp_ipic_bridge ),
    .S_AXI_RVALID(s_axi_ctl_rvalid_ipic_bridge ),
    .S_AXI_RREADY(s_axi_ctl_rready_ipic_bridge ),

    // IPIC Interface
    //-----------
    .Bus2IP_Clk(Bus2IP_Clk ),
    .Bus2IP_Resetn(Bus2IP_Resetn ),
    .Bus2IP_Addr(Bus2IP_Addr ),
    .Bus2IP_RNW(Bus2IP_RNW ),
    .Bus2IP_BE(Bus2IP_BE ),
    .Bus2IP_CS(Bus2IP_CS ),
    .Bus2IP_RdCE(Bus2IP_RdCE ),
    .Bus2IP_WrCE(Bus2IP_WrCE ),
    .Bus2IP_Data(Bus2IP_Data ),
    .IP2Bus_Data(IP2Bus_Data ),
    .IP2Bus_WrAck(IP2Bus_WrAck ),
    .IP2Bus_RdAck(IP2Bus_RdAck ),
    .IP2Bus_Error(IP2Bus_Error )
  );

  generate
  if(C_ROOT_PORT == "TRUE") begin : root_port

    // Glue logic to drive m_axis_cfg_tready output pin based on is_msi condition
    // Event Handler sub-module has to respond for MSI Interrupts
    // Config Gen/Sink sub-module has to respond for Configuration completions
    assign m_axis_cfg_tready = m_axis_cfg_tready_rp;

  end // root_port
  else begin : end_point

    assign m_axis_cfg_tready = 1'b0;

  end // end_point
  endgenerate

endmodule
