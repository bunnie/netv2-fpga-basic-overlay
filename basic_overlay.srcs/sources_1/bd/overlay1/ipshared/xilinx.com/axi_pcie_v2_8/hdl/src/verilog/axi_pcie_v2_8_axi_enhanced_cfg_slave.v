//----------------------------------------------------------------------------//
//  File: axi_pcie_v2_8_0_axi_enhanced_cfg_slave.v                  //
//                                                                            //
//  Description:                                                              //
//                                                                            //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_enhanced_cfg                                                        //
//    axi_enhanced_cfg_slave                                                  //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_pcie_v2_8_0_axi_enhanced_cfg_slave #(
  parameter [31:0]           C_BASEADDR = 32'hFFFF_FFFF,    // AXI Lite Base Address
  parameter [31:0]           C_HIGHADDR = 32'h0000_0000,    // AXI Lite High Address
  parameter                  C_ADDR_WIDTH = 12,             // Address Width of the PCIe Block
  parameter                  C_DATA_WIDTH = 32,             // AXI-S Interface Data Width
  parameter                  C_MAX_LNK_WDT = 1,             // Maximum Number of PCIE Lanes
  parameter                  C_ROOT_PORT = "FALSE",         // PCIe block is in root port mode
  parameter [11:0]           C_LAST_CORE_CAP_ADDR = 12'h000,// DWORD address of last enabled block capability
  parameter [11:0]           C_VSEC_CAP_ADDR = 12'h000,     // DWORD address of start of VSEC Header
  parameter                  C_VSEC_CAP_LAST = "FALSE",     // VSEC next capability offset control
  parameter [15:0]           C_VSEC_ID = 16'h0000,
  parameter                  C_DEVICE_NUMBER = 0,           // Device number for Root Port configurations only
  parameter                  C_NUM_USER_INTR = 0,           // Number of user interrupts in User interrupt vector
  parameter [15:0]           C_USER_PTR = 16'h0000,         // Address pointer to User Space
  parameter                  C_FAMILY = "X7",               // Targeted FPGA family
  parameter                  NO_SLV_ERR = "FALSE",
  parameter                  TCQ = 1                        // Clock-to-Q delay
  ) (
  
  //-------------------------------------------------//
  // AXI-Lite Interface connected to User Side       //
  //-------------------------------------------------//

  // AXI-Lite Write Address Channel
  input [31:0]               s_axi_ctl_awaddr,       // AXI Lite Write Address
  input                      s_axi_ctl_awvalid,      // AXI Lite Write Address Valid
  output reg                 s_axi_ctl_awready,      // AXI Lite Write Address Core ready

  // AXI-Lite Write Data Channel
  input [31:0]               s_axi_ctl_wdata,        // AXI Lite Write Data
  input [3:0]                s_axi_ctl_wstrb,        // AXI Lite Write Data strobe
  input                      s_axi_ctl_wvalid,       // AXI Lite Write Data Valid
  output reg                 s_axi_ctl_wready,       // AXI Lite Write Data Core ready

  // AXI-Lite Write Response Channel
  output reg [1:0]           s_axi_ctl_bresp,        // AXI Lite Write Data strobe
  output reg                 s_axi_ctl_bvalid,       // AXI Lite Write Data Valid
  input                      s_axi_ctl_bready,       // AXI Lite Write Data Core ready

  // AXI-Lite Read Address Channel
  input [31:0]               s_axi_ctl_araddr,       // AXI Lite Read Address
  input                      s_axi_ctl_arvalid,      // AXI Lite Read Address Valid
  output reg                 s_axi_ctl_arready,      // AXI Lite Read Address Core ready

  // AXI-Lite Read Data Channel
  output reg [31:0]          s_axi_ctl_rdata,        // AXI Lite Read Data
  output reg [1:0]           s_axi_ctl_rresp,        // AXI Lite Read Data strobe
  output reg                 s_axi_ctl_rvalid,       // AXI Lite Read Data Valid
  input                      s_axi_ctl_rready,       // AXI Lite Read Data Core ready

  //-------------------------------------------------//
  // AXI-Lite Interface for AXI-Lite to IPIC Bridge  //
  //-------------------------------------------------//

  // AXI-Lite Write Address Channel
  output reg[31:0]           s_axi_ctl_awaddr_ipic_bridge,  // AXI Lite Write Address
  output reg                 s_axi_ctl_awvalid_ipic_bridge, // AXI Lite Write Address Valid
  input                      s_axi_ctl_awready_ipic_bridge, // AXI Lite Write Address Core ready

  // AXI-Lite Write Data Channel
  output reg [31:0]          s_axi_ctl_wdata_ipic_bridge,   // AXI Lite Write Data
  output reg [3:0]           s_axi_ctl_wstrb_ipic_bridge,   // AXI Lite Write Data strobe
  output reg                 s_axi_ctl_wvalid_ipic_bridge,  // AXI Lite Write Data Valid
  input                      s_axi_ctl_wready_ipic_bridge,  // AXI Lite Write Data Core ready

  // AXI-Lite Write Response Channel
  input [1:0]                s_axi_ctl_bresp_ipic_bridge,   // AXI Lite Write Data strobe
  input                      s_axi_ctl_bvalid_ipic_bridge,  // AXI Lite Write Data Valid
  output reg                 s_axi_ctl_bready_ipic_bridge,  // AXI Lite Write Data Core ready

  // AXI-Lite Read Address Channel
  output reg [31:0]          s_axi_ctl_araddr_ipic_bridge,  // AXI Lite Read Address
  output reg                 s_axi_ctl_arvalid_ipic_bridge, // AXI Lite Read Address Valid
  input                      s_axi_ctl_arready_ipic_bridge, // AXI Lite Read Address Core ready

  // AXI-Lite Read Data Channel
  input [31:0]               s_axi_ctl_rdata_ipic_bridge,   // AXI Lite Read Data
  input [1:0]                s_axi_ctl_rresp_ipic_bridge,   // AXI Lite Read Data strobe
  input                      s_axi_ctl_rvalid_ipic_bridge,  // AXI Lite Read Data Valid
  output reg                 s_axi_ctl_rready_ipic_bridge,  // AXI Lite Read Data Core ready

  //-------------------------------------------------//
  // AXI-Lite Interface for Config Block Bridge      //
  //-------------------------------------------------//

  // AXI-Lite Write Address Channel
  output reg [31:0]          s_axi_ctl_awaddr_blk_bridge,   // AXI Lite Write Address
  output reg                 s_axi_ctl_awvalid_blk_bridge,  // AXI Lite Write Address Valid
  input                      s_axi_ctl_awready_blk_bridge,  // AXI Lite Write Address Core ready

  // AXI-Lite Write Data Channel
  output reg [31:0]          s_axi_ctl_wdata_blk_bridge,    // AXI Lite Write Data
  output reg [3:0]           s_axi_ctl_wstrb_blk_bridge,    // AXI Lite Write Data strobe
  output reg                 s_axi_ctl_wvalid_blk_bridge,   // AXI Lite Write Data Valid
  input                      s_axi_ctl_wready_blk_bridge,   // AXI Lite Write Data Core ready

  // AXI-Lite Write Response Channel
  input [1:0]                s_axi_ctl_bresp_blk_bridge,    // AXI Lite Write Data strobe
  input                      s_axi_ctl_bvalid_blk_bridge,   // AXI Lite Write Data Valid
  output reg                 s_axi_ctl_bready_blk_bridge,   // AXI Lite Write Data Core ready

  // AXI-Lite Read Address Channel
  output reg [31:0]          s_axi_ctl_araddr_blk_bridge,   // AXI Lite Read Address
  output reg                 s_axi_ctl_arvalid_blk_bridge,  // AXI Lite Read Address Valid
  input                      s_axi_ctl_arready_blk_bridge,  // AXI Lite Read Address Core ready

  // AXI-Lite Read Data Channel
  input [31:0]               s_axi_ctl_rdata_blk_bridge,    // AXI Lite Read Data
  input [1:0]                s_axi_ctl_rresp_blk_bridge,    // AXI Lite Read Data strobe
  input                      s_axi_ctl_rvalid_blk_bridge,   // AXI Lite Read Data Valid
  output reg                 s_axi_ctl_rready_blk_bridge,   // AXI Lite Read Data Core ready

  //-------------------------------------------------//
  // AXI-Lite Interface for Config gen and sink      //
  //-------------------------------------------------//

  // AXI-Lite Write Address Channel
  output reg [31:0]          s_axi_ctl_awaddr_gen_sink,     // AXI Lite Write Address
  output reg                 s_axi_ctl_awvalid_gen_sink,    // AXI Lite Write Address Valid
  input                      s_axi_ctl_awready_gen_sink,    // AXI Lite Write Address Core ready

  // AXI-Lite Write Data Channel
  output reg [31:0]          s_axi_ctl_wdata_gen_sink,      // AXI Lite Write Data
  output reg [3:0]           s_axi_ctl_wstrb_gen_sink,      // AXI Lite Write Data strobe
  output reg                 s_axi_ctl_wvalid_gen_sink,     // AXI Lite Write Data Valid
  input                      s_axi_ctl_wready_gen_sink,     // AXI Lite Write Data Core ready

  // AXI-Lite Write Response Channel
  input [1:0]                s_axi_ctl_bresp_gen_sink,      // AXI Lite Write Data strobe
  input                      s_axi_ctl_bvalid_gen_sink,     // AXI Lite Write Data Valid
  output reg                 s_axi_ctl_bready_gen_sink,     // AXI Lite Write Data Core ready

  // AXI-Lite Read Address Channel
  output reg [31:0]          s_axi_ctl_araddr_gen_sink,     // AXI Lite Read Address
  output reg                 s_axi_ctl_arvalid_gen_sink,    // AXI Lite Read Address Valid
  input                      s_axi_ctl_arready_gen_sink,    // AXI Lite Read Address Core ready

  // AXI-Lite Read Data Channel
  input [31:0]               s_axi_ctl_rdata_gen_sink,      // AXI Lite Read Data
  input [1:0]                s_axi_ctl_rresp_gen_sink,      // AXI Lite Read Data strobe
  input                      s_axi_ctl_rvalid_gen_sink,     // AXI Lite Read Data Valid
  output reg                 s_axi_ctl_rready_gen_sink,     // AXI Lite Read Data Core ready

  //-------------------------------------------------//
  // AXI-Lite Interface for Event Handler            //
  //-------------------------------------------------//

  // AXI-Lite Write Address Channel
  output reg [31:0]          s_axi_ctl_awaddr_ev_hndlr,     // AXI Lite Write Address
  output reg                 s_axi_ctl_awvalid_ev_hndlr,    // AXI Lite Write Address Valid
  input                      s_axi_ctl_awready_ev_hndlr,    // AXI Lite Write Address Core ready

  // AXI-Lite Write Data Channel
  output reg [31:0]          s_axi_ctl_wdata_ev_hndlr,      // AXI Lite Write Data
  output reg [3:0]           s_axi_ctl_wstrb_ev_hndlr,      // AXI Lite Write Data strobe
  output reg                 s_axi_ctl_wvalid_ev_hndlr,     // AXI Lite Write Data Valid
  input                      s_axi_ctl_wready_ev_hndlr,     // AXI Lite Write Data Core ready

  // AXI-Lite Write Response Channel
  input [1:0]                s_axi_ctl_bresp_ev_hndlr,      // AXI Lite Write Data strobe
  input                      s_axi_ctl_bvalid_ev_hndlr,     // AXI Lite Write Data Valid
  output reg                 s_axi_ctl_bready_ev_hndlr,     // AXI Lite Write Data Core ready

  // AXI-Lite Read Address Channel
  output reg [31:0]          s_axi_ctl_araddr_ev_hndlr,     // AXI Lite Read Address
  output reg                 s_axi_ctl_arvalid_ev_hndlr,    // AXI Lite Read Address Valid
  input                      s_axi_ctl_arready_ev_hndlr,    // AXI Lite Read Address Core ready

  // AXI-Lite Read Data Channel
  input [31:0]               s_axi_ctl_rdata_ev_hndlr,      // AXI Lite Read Data
  input [1:0]                s_axi_ctl_rresp_ev_hndlr,      // AXI Lite Read Data strobe
  input                      s_axi_ctl_rvalid_ev_hndlr,     // AXI Lite Read Data Valid
  output reg                 s_axi_ctl_rready_ev_hndlr,     // AXI Lite Read Data Core ready

  //-------------------------------------------------//
  // AXI-Lite Control Interrupt Signals              //
  //-------------------------------------------------//
  output                      ctl_intr,              // Interrupt Line
  input [C_NUM_USER_INTR-1:0] ctl_user_intr,         // User Interrupt Vector
  input                       MSI_IRQ_I,
  input                       MSI_IRQ_SEL_I,

  //-------------------------------------------------//
  // Control Channel side-band signals               //
  //-------------------------------------------------//
  output reg                 cfg_type,                 // Configuration TLP type
  input [2:0]                cpl_status,               // Completion status
  input                      np_cpl_pending,           // Non-Posted TLPs are waiting for completion to come
  input                      s_axis_rr_tvalid,         // TVALID of RR interface
  input                      cfg_timeout,              // Configuration Completion Timeout
  output reg                 cfg_req,                  // Configuration Request
  output reg                 msg_req,                  // Message Request
  input                      msg_sent,                 // Acknowledgement for MsgD (Slot_Power_Limit Msg TLP)
  output reg [7:0]           slot_power_limit_value,   // Slot Power Limit Value fatched from Slot Cap Register
  output reg [1:0]           slot_power_limit_scale,   // Slot Power Limit Scale fatched from Slot Cap Register
  output reg [15:0]          requester_id,             // Requester ID
  output reg                 cfg_mgmt_wr_rw1c_as_rw_o, // Write to WR1C location
  output reg                 cfg_mgmt_wr_readonly_o,   // Write to ReadOnly location
  input                      corr_err_rcvd,            // Received Correctable Error
  input                      non_fatal_err_rcvd,       // Received Non-Fatal Error
  input                      fatal_err_rcvd,           // Received Fatal Error
  input                      intx_msg_rcvd,            // Received INTx Message
  input                      msi_msg_rcvd,             // Received MSI Message
  output reg [1:0]           pl_directed_link_width,   // Directed Link Width
  output reg                 pl_directed_link_speed,   // Directed Link Speed
  output reg                 pl_directed_link_auton,   // Directed Link Autonomous
  output wire [1:0]          pl_directed_link_change,  // Directed Link Change
  input                      pl_sel_link_rate,         // Link rate
  input                      pl_received_hot_reset,    // Received Hot Reset
  input [1:0]                pl_sel_link_width,        // Link Width
  input [5:0]                pl_ltssm_state,           // LTSSM State
  input [1:0]                pl_lane_reversal_mode,    // Lane Reversal Mode
  input                      pl_link_gen2_capable,     // DUT is gen2 capable
  input                      pl_link_upcfg_capable,    // Upconfig Capable
  input                      trn_lnk_up,               // TRN Link Up
  input                      trn_tstr,                 // TRN Streaming mode
  input                      trn_terr_drop,            // TRN Error Drop
  input                      trn_recrc_err,            // TRN Received ECRC Error
  input [4:0]                cfg_device_number,        // Device number
  input [7:0]                cfg_bus_number,           // Bus number
  input                      intr_fifo_empty,          // Interrupt FIFO empty flag
  input                      corr_err_in_fifo,         // Correctable error is present inside Error FIFO
  input                      non_fatal_err_in_fifo,    // Non-Fatal error is present inside Error FIFO
  input                      fatal_err_in_fifo,        // Fatal error is present inside Error FIFO

  //--------------------------------------------//
  // System I/Os                                //
  //--------------------------------------------//
  input                      com_sysrst,             // Reset Signal for the core
  input                      com_cclk,                // AXI Lite Clock
  output reg                 config_gen_req
  );

  // wires
  wire [31:0]                vsec_cap;               // VSEC Capability
  wire [31:0]                vsec_header;            // VSEC Header
  wire [31:0]                bridge_info;            // Bridge Info
  wire [31:0]                bridge_status_control;  // Bridge Status and Control
  reg [31:0]                 interrupt_decode;       // Interrupt Decode
  reg [31:0]                 interrupt_mask;         // Interrupt Mask
  wire [31:0]                bus_location;           // Bus Location
  wire [31:0]                phy_status_control;     // PHY Status and Control

  wire                       gen2_present;           // Gen2 is present
  wire                       rp_present;             // Root Port Present
  wire [2:0]                 ecam_size;              // ECAM Size
  wire [11:0]                last_core_cap_addr;     // Last core capability offset
  wire [4:0]                 device_number;          // C_DEVICE_NUMBER
  reg [7:0]                  blk_bus_number;         // Bus Number of PCIe Block

  // registers
  reg                        axi_lite_intf_busy;     // AXI-Lite interface busy flag
  reg                        wait_for_idle;          // Asserted when any ready signal is asserted indicating a transaction has complete
                                                     // De-assert only when SM is in IDLE state (response has been ack'ed by user)
  reg                        global_intr_disable;    // Global Interrupt Disable
  reg [7:0]                  port_number;            // Port Number for Link Capability register
  reg                        trn_lnk_up_d;
  reg                        pl_received_hot_reset_d;
  reg                        trn_recrc_err_d;
  reg [C_NUM_USER_INTR-1:0]  ctl_user_intr_d;

  reg                        request_type;           // 0 - Read request and 1 - Write request
  reg                        override_last_core_cap; // FLAG to inform when to override C_LAST_CORE_CAP_ADDR
  reg                        ready_is_given;         // FLAG to indicate that *ready is given already
  reg [1:0]                  pl_directed_link_change_d; // Directed Link change

  //---------------------------------------------------------------------------------------------------//
  // Local variable to determine which AXI-Lite interface will be connected to User AXI-Lite interface
  //---------------------------------------------------------------------------------------------------//
  // Variable Name: state
  //---------------------
  // Value     || Description
  //           ||
  //  000      || IDLE state
  //           ||
  //  001      || User AXI-Lite interface will be connected to Block config Bridge AXI-Lite interface
  //           ||
  //  010      || AXI-Lite Slave module has to respond to any request as these registers are residing in
  //           || this module itself
  //           ||
  //  011      || User AXI-Lite interface will be connected to Event handler AXI-Lite interface
  //           ||
  //  100      || User AXI-Lite interface will be connected to AXI-Lite to IPIC Bridge AXI-Lite interface
  //           ||
  //  101      || User AXI-Lite interface will be connected to Config Gen/Sink sub-module AXi-Lite interface
  //           || (For Root Port Case only)
  //           ||
  //  110      || SLVERR Reponse will be issued for requests targetting to the invalid bus number ranges
  //           || (For Root Port Case only)
  //           ||
  //  111      || Access to the Reserved config space where AXI-Lite slave module has to respond
  //           || In this case, reads will return OKAY response with 0's on data channel and writes will
  //           || have no effect.
  //---------------------------------------------------------------------------------------------------//
  reg [2:0]                  state;                  // State will determine which internal interface
                                                     // is connected to AXI-Lite user interaface
  localparam IDLE        = 3'b000;
  localparam BLK_BRIDGE  = 3'b001;
  localparam CFG_SLAVE   = 3'b010;
  localparam EVENT_HNDLR = 3'b011;
  localparam IPIC_BRIDGE = 3'b100;
  localparam GEN_SINK    = 3'b101;
  localparam SLVERR_RESP = 3'b110;
  localparam RSVD_SPACE  = 3'b111;

  assign last_core_cap_addr = (C_VSEC_CAP_LAST == "TRUE") ? 12'h000 : (C_VSEC_CAP_ADDR + C_USER_PTR);

  assign ecam_size          = (C_HIGHADDR - C_BASEADDR)/2**20;

  assign rp_present         = (C_ROOT_PORT == "TRUE") ? 1'b1 : 1'b0;

  assign gen2_present       = pl_link_gen2_capable;

  assign vsec_cap    = {last_core_cap_addr,
                        4'h1,                        // Capability Version. hardwired to '0'
                        16'h00b                      // VSEC_CAP_ID. Hardcoded to 00Bh
                       };

  assign vsec_header = {12'h38,                      // VSEC Length. Hardwired to 38h (56d)
                        4'h0,                        // Version of capability structure. hardwired to '0'
                        C_VSEC_ID                    // Unique ID Value of VSEC structure
                       };

  assign bridge_info = {13'd0,                       // Reserved
                        ecam_size,                   // ECAM Size
                        13'd0,                       // Reserved
                        pl_link_upcfg_capable,       // Upconfig Capable
                        rp_present,                  // Is Root Port
                        gen2_present                 // Gen2 is present 
                       };

  assign bridge_status_control = {14'd0,             // Reserved
                                  cfg_mgmt_wr_readonly_o,
                                  cfg_mgmt_wr_rw1c_as_rw_o,
                                  7'd0,              // Reserved
                                  global_intr_disable,
                                  7'd0,              // Reserved
                                  1'b0               // Reserved. Tied to 0
                                 };

  assign device_number   = C_DEVICE_NUMBER;          // For RP core

  // Generate block to drive bus location register in EP and RP mode of the core
  generate
  if(C_ROOT_PORT == "TRUE") begin
    assign bus_location  = {8'h00,                   // Reserved
                            port_number,             // Port Number
                            blk_bus_number,          // Bus Number
                            device_number,           // Device Number
                            3'b000                   // Function Number. hardwired to '0'
                           };
  end
  else begin
    assign bus_location  = {8'h00,                   // Reserved
                            port_number,             // Port Number will be tied to '0' for EP
                            cfg_bus_number,          // Bus Number field set by the RC
                            cfg_device_number,       // Device Number field set by the RC
                            3'b000                   // Function Number. hardwired to '0'
                           };
  end
  endgenerate

  assign phy_status_control = {10'd0,                   // Reserved
                               pl_directed_link_change_d, // Directed Link Change
                               pl_directed_link_auton,  // Directed Link Autonomous
                               pl_directed_link_speed,  // Directed Link Speed
                               pl_directed_link_width,  // Directed Link Width
                               4'h0,                    // Reserved
                               trn_lnk_up,              // Link is up
                               pl_lane_reversal_mode,   // Lane Reversal
                               pl_ltssm_state,          // LTSSM State
                               pl_sel_link_width,       // Link Width
                               pl_sel_link_rate         // Link Rate
                              };

  assign pl_directed_link_change = pl_directed_link_change_d;

  // Interrupt line will be Asserted if-
  // 1) global_intr_disable is set to '0'
  // 2) Any of Interrupt Decode register bit is set and corresponding bit in Interrupt Mask register is also set
  
  assign ctl_intr = (global_intr_disable == 1'b1) ? 1'b0:(|(interrupt_decode & interrupt_mask));

  generate
 
  if(C_ROOT_PORT == "TRUE") begin : root_port
  
  // Root Port functionality resides here...
  // register declaration specific to the RootPort
  reg [7:0]            secondary_bus_number;
  reg [7:0]            subordinate_bus_number;
  reg                  msg_tlp_valid;
  reg                  schedule_msg_tlp;
  reg                  slot_cap_updated;
  reg                  msg_tlp_valid_d;
  reg                  msg_sent_d;
  reg                  assert_valid;
  integer              i; // loop variable

  always@(posedge com_cclk)
  begin
    if(com_sysrst) begin
      request_type                  <= #TCQ 1'b0;
      state                         <= #TCQ 3'b000;
      cfg_req                       <= #TCQ 'b0;
      msg_req                       <= #TCQ 'b0;
      slot_power_limit_value        <= #TCQ 'b0;
      slot_power_limit_scale        <= #TCQ 'b0;
      axi_lite_intf_busy            <= #TCQ 'b0;
      override_last_core_cap        <= #TCQ 'b0;
      // RP specific signals
      blk_bus_number                <= #TCQ 'b0;
      secondary_bus_number          <= #TCQ 'b0;
      subordinate_bus_number        <= #TCQ 'b0;
      cfg_type                      <= #TCQ 'b0;
      msg_tlp_valid                 <= #TCQ 'b0;
      slot_cap_updated              <= #TCQ 'b0;
      config_gen_req            <= #TCQ 1'b0;
    end
    else begin
      // Make decision to drive interface once axi_lite_intf_busy is low
      // Otherwise stick to the previous interface which has yet to give response
      // to the user AXI-Lite interface for either read/write request
      if(!axi_lite_intf_busy) begin
        // Transmit the message TLP as soon as schedule_msg_tlp is asserted and
        // AXI-Lite slave module is done with the previous request
        if(schedule_msg_tlp) begin
          msg_req                             <= 1'b1;
          cfg_req                             <= 1'b1;
          // Use AXI-Lite write channel for handshake purpose
          // Write Operation request
          request_type                        <= #TCQ 1'b1;
          axi_lite_intf_busy                  <= #TCQ 1'b1;
          state                               <= #TCQ GEN_SINK;
          config_gen_req                      <= #TCQ 1'b0;
        end
        else begin
          // Give priority to read operation
          if(s_axi_ctl_arvalid) begin
            // Bus Number 0 is for primary bus number
            if((s_axi_ctl_araddr[27:20] == blk_bus_number) && (s_axi_ctl_araddr[19:15] == device_number)) begin
              config_gen_req    <= #TCQ 1'b0;
              // Towards Block config bridge to access PCIe Block Configuration Registers
              if(s_axi_ctl_araddr[11:0] <= (C_VSEC_CAP_ADDR - 12'h004)) begin
                // Read Operation will be given priority
                request_type                  <= #TCQ 1'b0;
                state                         <= #TCQ BLK_BRIDGE;
                axi_lite_intf_busy            <= #TCQ 1'b1;
                // Snoop Read operation to override Next Cap. Offset value of C_LAST_CORE_CAP_ADDR
                if(s_axi_ctl_araddr[11:0] == C_LAST_CORE_CAP_ADDR) begin
                  override_last_core_cap      <= #TCQ 1'b1;
                end
              end
              // Core VSEC Registers inside Slave module
              else if(s_axi_ctl_araddr[11:0] < (C_VSEC_CAP_ADDR + 12'h020)) begin
                  // Read Operation will be given priority
                  request_type                  <= #TCQ 1'b0;
                  state                         <= #TCQ CFG_SLAVE;
                  axi_lite_intf_busy            <= #TCQ 1'b1;
              end
              // Core VSEC Registers inside Event Handler module
              else if(s_axi_ctl_araddr[11:0] <= (C_VSEC_CAP_ADDR + 12'h34)) begin
                // Read Operation will be given priority
                request_type                  <= #TCQ 1'b0;
                state                         <= #TCQ EVENT_HNDLR;
                axi_lite_intf_busy            <= #TCQ 1'b1;
              end
              // User Register Space
              else if((s_axi_ctl_araddr[11:0] >= (C_VSEC_CAP_ADDR + C_USER_PTR)) &&
                                                 (s_axi_ctl_araddr[11:0] <= (C_VSEC_CAP_ADDR + C_USER_PTR +12'h0FF))) begin
                // Read Operation will be given priority
                request_type                  <= #TCQ 1'b0;
                state                         <= #TCQ IPIC_BRIDGE;
                axi_lite_intf_busy            <= #TCQ 1'b1;
              end
              // Reserved Register Space
              else begin
              // Access to reserved space
                // Read Operation will be given priority
                request_type                  <= #TCQ 1'b0;
                state                         <= #TCQ RSVD_SPACE;
                axi_lite_intf_busy            <= #TCQ 1'b1;
              end
            end
            else if((s_axi_ctl_araddr[27:20] == blk_bus_number) && (s_axi_ctl_araddr[19:15] != device_number)) begin
              // Read Operation will be given priority
              config_gen_req            <= #TCQ 1'b0;
              request_type                  <= #TCQ 1'b0;
              axi_lite_intf_busy            <= #TCQ 1'b1;
              // SLVERR Response will be issued
              state                       <= #TCQ SLVERR_RESP;
            end
            // Drive Config gen sink AXI-Lite interface
            else if((!np_cpl_pending) && (!s_axis_rr_tvalid))begin
              // Read Operation will be given priority
              config_gen_req            <= #TCQ 1'b0;
              request_type                  <= #TCQ 1'b0;
              axi_lite_intf_busy            <= #TCQ 1'b1;
              if((s_axi_ctl_araddr[27:20] == secondary_bus_number ) && (s_axi_ctl_araddr[19:15] == device_number)) begin
                state                       <= #TCQ GEN_SINK;
                  cfg_type                  <= #TCQ 1'b0; // EndPoint DS device
                cfg_req                     <= #TCQ 1'b1;
                end
              else if((s_axi_ctl_araddr[27:20] > secondary_bus_number) && 
                      (s_axi_ctl_araddr[27:20] <= subordinate_bus_number)  ) begin // Valid bus number range
                state                       <= #TCQ GEN_SINK;
                cfg_type                    <= #TCQ 1'b1; // Switch DS device
                // Indicate to TX Block about Config request
                cfg_req                     <= #TCQ 1'b1;
              end
              else begin
                // SLVERR Response will be issued
                state                       <= #TCQ SLVERR_RESP;
              end
            end
            // Proposed code for 55x issue
            else if (np_cpl_pending) begin
                config_gen_req <= #TCQ 1'b1;
            end
            else begin
                config_gen_req <= #TCQ 1'b0;
            end
          end
          // Write Operation
          else if (s_axi_ctl_awvalid && s_axi_ctl_wvalid) begin
            // Bus number 0 is for primary bus number
            if((s_axi_ctl_awaddr[27:20] == blk_bus_number) && (s_axi_ctl_awaddr[19:15] == device_number)) begin
              config_gen_req            <= #TCQ 1'b0;
              // Towards Block config bridge to access PCIe Block Configuration Registers
              if(s_axi_ctl_awaddr[11:0] <= (C_VSEC_CAP_ADDR - 12'h004)) begin
                // Write Operation request
                request_type                  <= #TCQ 1'b1;
                state                         <= #TCQ BLK_BRIDGE;
                axi_lite_intf_busy            <= #TCQ 1'b1;
                // snoop write operation to capture primary, secondary and sub-ordinate bus numbers
                if(s_axi_ctl_awaddr[11:0] == 12'h18) begin
                  blk_bus_number              <= #TCQ ( s_axi_ctl_wstrb[0] ? s_axi_ctl_wdata[7:0]   : blk_bus_number         );
                  secondary_bus_number        <= #TCQ ( s_axi_ctl_wstrb[1] ? s_axi_ctl_wdata[15:8]  : secondary_bus_number   );
                  subordinate_bus_number      <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[23:16] : subordinate_bus_number );
                end
                // snoop the slot capability register space for scheduling slot_power_limit_msg TLP
                // PCIE_BASE_PTR + OFFSET(Byte offset  : 'h14)
                if(s_axi_ctl_awaddr[11:0] == 12'h060 + 12'h014) begin
                  slot_power_limit_value[0]   <= #TCQ ( s_axi_ctl_wstrb[0] ? s_axi_ctl_wdata[7]    : slot_power_limit_value[0]   );
                  slot_power_limit_value[7:1] <= #TCQ ( s_axi_ctl_wstrb[1] ? s_axi_ctl_wdata[14:8] : slot_power_limit_value[7:1] );
                  slot_power_limit_scale[0]   <= #TCQ ( s_axi_ctl_wstrb[1] ? s_axi_ctl_wdata[15]   : slot_power_limit_scale[0]   );
                  slot_power_limit_scale[1]   <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[16]   : slot_power_limit_scale[1]   );
                  msg_tlp_valid               <= #TCQ 1'b1;
                  slot_cap_updated            <= #TCQ 1'b1;
                end
              end
              // Core VSEC Registers inside Slave module
              else if(s_axi_ctl_awaddr[11:0] < (C_VSEC_CAP_ADDR + 12'h020)) begin
                // Write Operation request
                request_type                  <= #TCQ 1'b1;
                state                         <= #TCQ CFG_SLAVE;
                axi_lite_intf_busy            <= #TCQ 1'b1;
              end
              // Core VSEC Registers inside Event Handler module
              else if(s_axi_ctl_awaddr[11:0] <= (C_VSEC_CAP_ADDR + 12'h34)) begin
                // Write Operation request
                request_type                  <= #TCQ 1'b1;
                state                         <= #TCQ EVENT_HNDLR;
                axi_lite_intf_busy            <= #TCQ 1'b1;
              end
              // User Register Space
              else if((s_axi_ctl_awaddr[11:0] >= (C_VSEC_CAP_ADDR + C_USER_PTR)) &&
                                                 (s_axi_ctl_awaddr[11:0] <= (C_VSEC_CAP_ADDR + C_USER_PTR +12'h0FF))) begin
                // Write Operation request
                request_type                  <= #TCQ 1'b1;
                state                         <= #TCQ IPIC_BRIDGE;
                axi_lite_intf_busy            <= #TCQ 1'b1;
              end
              // Reserved Register Space
              else begin
                // Write Operation request
                request_type                  <= #TCQ 1'b1;
                state                         <= #TCQ RSVD_SPACE;
                axi_lite_intf_busy            <= #TCQ 1'b1;
              end
            end
            else if((s_axi_ctl_awaddr[27:20] == blk_bus_number) && (s_axi_ctl_awaddr[19:15] != device_number)) begin
              config_gen_req <= #TCQ 1'b0;
              // Write Operation request
              request_type                  <= #TCQ 1'b1;
              axi_lite_intf_busy            <= #TCQ 1'b1;
              // SLVERR Response will be issued
              state                         <= #TCQ SLVERR_RESP;
            end
            // Drive gen sink AXI-Lite interface
            else if((!np_cpl_pending) && (!s_axis_rr_tvalid)) begin
              config_gen_req <= #TCQ 1'b0;
              // Write Operation request
              request_type                  <= #TCQ 1'b1;
              axi_lite_intf_busy            <= #TCQ 1'b1;
              if((s_axi_ctl_awaddr[27:20] == secondary_bus_number ) && (s_axi_ctl_awaddr[19:15] == device_number)) begin
                state                       <= #TCQ GEN_SINK;
                cfg_type                    <= #TCQ 1'b0; // EndPoint DS device
                cfg_req                     <= #TCQ 1'b1;
                end
              else if((s_axi_ctl_awaddr[27:20] > secondary_bus_number) && 
                            (s_axi_ctl_awaddr[27:20] <= subordinate_bus_number)  ) begin // Valid bus number range
                state                       <= #TCQ GEN_SINK;
                cfg_type                    <= #TCQ 1'b1; // Switch DS device
                // Indicate to TX Block about Config request
                cfg_req                     <= #TCQ 1'b1;
              end
              else begin
                // SLVERR Response will be issued
                state                       <= #TCQ SLVERR_RESP;
              end
            end
            else if(np_cpl_pending) begin
                config_gen_req <= #TCQ 1'b1;
            end
            else begin
                config_gen_req <= #TCQ 1'b0;
            end
          end
          // No Read/Write Operation
          else begin
            request_type                  <= #TCQ 1'b0;
            state                         <= #TCQ IDLE;
          end
        end
      end
      // De-Assert below signals if asserted already
      // 3rd condition is required because msg_req will not be visible to top level AXI-Lite interface
      if((s_axi_ctl_bvalid && s_axi_ctl_bready) || (s_axi_ctl_rvalid && s_axi_ctl_rready)
         || (s_axi_ctl_bvalid_gen_sink && s_axi_ctl_bready_gen_sink)) begin
        axi_lite_intf_busy     <= #TCQ 1'b0;
        cfg_req                <= #TCQ 1'b0;
        msg_req                <= #TCQ 1'b0;
        override_last_core_cap <= #TCQ 'b0;
        state                  <= #TCQ IDLE;
      end
      if(slot_cap_updated) begin
        slot_cap_updated <= #TCQ 1'b0;
      end
    end
  end

  always@(posedge com_cclk)
  begin
    if(com_sysrst) begin
      // AXI-Lite user interface output pins
      s_axi_ctl_awready             <= #TCQ 1'b0;
      s_axi_ctl_wready              <= #TCQ 1'b0;
      s_axi_ctl_bresp               <= #TCQ 2'b00;
      s_axi_ctl_bvalid              <= #TCQ 1'b0;
      s_axi_ctl_arready             <= #TCQ 1'b0;
      s_axi_ctl_rdata               <= #TCQ 32'b0;
      s_axi_ctl_rresp               <= #TCQ 2'b00;
      s_axi_ctl_rvalid              <= #TCQ 1'b0;
      // AXI-Lite interface going towards Config Gen/Sink
      s_axi_ctl_awaddr_gen_sink     <= #TCQ 32'b0;
      s_axi_ctl_awvalid_gen_sink    <= #TCQ 1'b0;
      s_axi_ctl_wdata_gen_sink      <= #TCQ 32'b0;
      s_axi_ctl_wstrb_gen_sink      <= #TCQ 4'b0;
      s_axi_ctl_wvalid_gen_sink     <= #TCQ 1'b0;
      s_axi_ctl_bready_gen_sink     <= #TCQ 1'b0;
      s_axi_ctl_araddr_gen_sink     <= #TCQ 32'b0;
      s_axi_ctl_arvalid_gen_sink    <= #TCQ 1'b0;
      s_axi_ctl_rready_gen_sink     <= #TCQ 1'b0;
      // AXI-Lite interface going towards Block config Bridge
      s_axi_ctl_awaddr_blk_bridge   <= #TCQ 32'b0;
      s_axi_ctl_awvalid_blk_bridge  <= #TCQ 1'b0;
      s_axi_ctl_wdata_blk_bridge    <= #TCQ 32'b0;
      s_axi_ctl_wstrb_blk_bridge    <= #TCQ 4'b0;
      s_axi_ctl_wvalid_blk_bridge   <= #TCQ 1'b0;
      s_axi_ctl_bready_blk_bridge   <= #TCQ 1'b0;
      s_axi_ctl_araddr_blk_bridge   <= #TCQ 32'b0;
      s_axi_ctl_arvalid_blk_bridge  <= #TCQ 1'b0;
      s_axi_ctl_rready_blk_bridge   <= #TCQ 1'b0;
      // AXI-Lite interface going towards Event Handler
      s_axi_ctl_awaddr_ev_hndlr     <= #TCQ 32'b0;
      s_axi_ctl_awvalid_ev_hndlr    <= #TCQ 1'b0;
      s_axi_ctl_wdata_ev_hndlr      <= #TCQ 32'b0;
      s_axi_ctl_wstrb_ev_hndlr      <= #TCQ 4'b0;
      s_axi_ctl_wvalid_ev_hndlr     <= #TCQ 1'b0;
      s_axi_ctl_bready_ev_hndlr     <= #TCQ 1'b0;
      s_axi_ctl_araddr_ev_hndlr     <= #TCQ 32'b0;
      s_axi_ctl_arvalid_ev_hndlr    <= #TCQ 1'b0;
      s_axi_ctl_rready_ev_hndlr     <= #TCQ 1'b0;
      // AXI-Lite interface going towards IPIC Bridge
      s_axi_ctl_awaddr_ipic_bridge  <= #TCQ 32'b0;
      s_axi_ctl_awvalid_ipic_bridge <= #TCQ 1'b0;
      s_axi_ctl_wdata_ipic_bridge   <= #TCQ 32'b0;
      s_axi_ctl_wstrb_ipic_bridge   <= #TCQ 4'b0;
      s_axi_ctl_wvalid_ipic_bridge  <= #TCQ 1'b0;
      s_axi_ctl_bready_ipic_bridge  <= #TCQ 1'b0;
      s_axi_ctl_araddr_ipic_bridge  <= #TCQ 32'b0;
      s_axi_ctl_arvalid_ipic_bridge <= #TCQ 1'b0;
      s_axi_ctl_rready_ipic_bridge  <= #TCQ 1'b0;
      // register initialization
      interrupt_decode              <= #TCQ 'b0;
      interrupt_mask                <= #TCQ 'b0;
      trn_lnk_up_d                  <= #TCQ 'b0;
      trn_recrc_err_d               <= #TCQ 'b0;
      ctl_user_intr_d               <= #TCQ 'b0;
      pl_received_hot_reset_d       <= #TCQ 'b1;
      // Side-band and internal control signals
      global_intr_disable           <= #TCQ 'b0;
      port_number                   <= #TCQ 'b0;
      requester_id                  <= #TCQ 'b0;
      cfg_mgmt_wr_rw1c_as_rw_o      <= #TCQ 'b0;
      cfg_mgmt_wr_readonly_o        <= #TCQ 'b0;
      pl_directed_link_width        <= #TCQ 'b0;
      pl_directed_link_speed        <= #TCQ 'b0;
      pl_directed_link_auton        <= #TCQ 'b0;
      pl_directed_link_change_d     <= #TCQ 'b0;
      ready_is_given                <= #TCQ 'b0;
      schedule_msg_tlp              <= #TCQ 'b0;
      msg_tlp_valid_d               <= #TCQ 'b0;
      assert_valid                  <= #TCQ 'b1;
      msg_sent_d                    <= #TCQ 'b0;
      wait_for_idle                 <= #TCQ 'b0;
    end
    else begin
      case(state)
      BLK_BRIDGE : begin
                     if(request_type) begin // Write Request
                       // Connect AXI-Lite User Interface to Block Config Bridge AXI-Lite Interface
                       s_axi_ctl_awaddr_blk_bridge   <= #TCQ s_axi_ctl_awaddr;
                       if(s_axi_ctl_bready && s_axi_ctl_bvalid_blk_bridge) begin
                         s_axi_ctl_awvalid_blk_bridge  <= #TCQ 'b0;
                         s_axi_ctl_wvalid_blk_bridge   <= #TCQ 'b0;
                         wait_for_idle                 <= #TCQ 'b1;
                       end
                       else begin
                         if (!wait_for_idle) begin
                           s_axi_ctl_awvalid_blk_bridge  <= #TCQ s_axi_ctl_awvalid;
                           s_axi_ctl_wvalid_blk_bridge   <= #TCQ s_axi_ctl_wvalid;
                         end else begin
                           s_axi_ctl_awvalid_blk_bridge  <= #TCQ 'b0;
                           s_axi_ctl_wvalid_blk_bridge   <= #TCQ 'b0;
                         end
                       end
                       s_axi_ctl_awready             <= #TCQ s_axi_ctl_awready_blk_bridge;
                       s_axi_ctl_wdata_blk_bridge    <= #TCQ s_axi_ctl_wdata;
                       s_axi_ctl_wstrb_blk_bridge    <= #TCQ s_axi_ctl_wstrb;
                       s_axi_ctl_wready              <= #TCQ s_axi_ctl_wready_blk_bridge;
                       if(s_axi_ctl_bvalid && s_axi_ctl_bready) begin
                         s_axi_ctl_bvalid            <= #TCQ 'b0;
                         s_axi_ctl_bresp             <= #TCQ 2'b00;
                       end
                       else begin
                         s_axi_ctl_bvalid            <= #TCQ s_axi_ctl_bvalid_blk_bridge;
                         s_axi_ctl_bresp             <= #TCQ s_axi_ctl_bresp_blk_bridge;
                       end
                       s_axi_ctl_bready_blk_bridge   <= #TCQ s_axi_ctl_bready;
                       // Tie to default values for write request
                       s_axi_ctl_arvalid_blk_bridge  <= #TCQ 'b0;
                       s_axi_ctl_arready             <= #TCQ 'b0;
                       s_axi_ctl_rresp               <= #TCQ 'b0;
                       s_axi_ctl_rvalid              <= #TCQ 'b0;
                       s_axi_ctl_rready_blk_bridge   <= #TCQ 'b0;
                     end
                     else begin // Read Request
                       // Connect AXI-Lite User Interface to Block Config Bridge AXI-Lite Interface
                       s_axi_ctl_araddr_blk_bridge   <= #TCQ s_axi_ctl_araddr;
                       if(s_axi_ctl_rready && s_axi_ctl_rvalid_blk_bridge) begin
                         s_axi_ctl_arvalid_blk_bridge  <= #TCQ 'b0;
                         wait_for_idle                 <= #TCQ 'b1;
                       end
                       else begin
                         if (!wait_for_idle)
                           s_axi_ctl_arvalid_blk_bridge  <= #TCQ s_axi_ctl_arvalid;
                         else
                           s_axi_ctl_arvalid_blk_bridge  <= #TCQ 'b0;
                       end
                       s_axi_ctl_arready             <= #TCQ s_axi_ctl_arready_blk_bridge;
                       // Override Next Capability Offset value of C_LAST_CORE_CAP_ADDR to point to 
                       // Core's Internal VSEC Register Space
                       if(override_last_core_cap) begin
                         s_axi_ctl_rdata[31:20]      <= #TCQ C_VSEC_CAP_ADDR;
                         s_axi_ctl_rdata[19:0]       <= #TCQ s_axi_ctl_rdata_blk_bridge[19:0];
                       end
                       else begin
                         s_axi_ctl_rdata               <= #TCQ s_axi_ctl_rdata_blk_bridge;
                       end
                       if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
                         s_axi_ctl_rresp             <= #TCQ 2'b00;
                         s_axi_ctl_rvalid            <= #TCQ 'b0;
                       end
                       else begin
                         s_axi_ctl_rresp             <= #TCQ s_axi_ctl_rresp_blk_bridge;
                         s_axi_ctl_rvalid            <= #TCQ s_axi_ctl_rvalid_blk_bridge;
                       end
                       s_axi_ctl_rready_blk_bridge   <= #TCQ s_axi_ctl_rready;
                       // Tie to Default values for read request
                       s_axi_ctl_awvalid_blk_bridge  <= #TCQ 'b0;
                       s_axi_ctl_awready             <= #TCQ 'b0;
                       s_axi_ctl_wstrb_blk_bridge    <= #TCQ 'b0;
                       s_axi_ctl_wvalid_blk_bridge   <= #TCQ 'b0;
                       s_axi_ctl_wready              <= #TCQ 'b0;
                       s_axi_ctl_bresp               <= #TCQ 'b0;
                       s_axi_ctl_bvalid              <= #TCQ 'b0;
                       s_axi_ctl_bready_blk_bridge   <= #TCQ 'b0;
                     end
                   end
      CFG_SLAVE :  begin
                     // Internal Core VSEC registers of the slave
                     if(request_type) begin // Write Request
                       //Assert *wready for 1 clock cycle if not given already
                       if(!ready_is_given) begin
                         s_axi_ctl_awready           <= #TCQ 'b1;
                         s_axi_ctl_wready            <= #TCQ 'b1;
                         ready_is_given              <= #TCQ 'b1;
                       end
                       if(s_axi_ctl_awready) begin
                         s_axi_ctl_awready           <= #TCQ 'b0;
                         s_axi_ctl_wready            <= #TCQ 'b0;
                       end
                       // Give response OKAY on the same clock cycle without any delay
                       if(s_axi_ctl_awready && s_axi_ctl_awvalid) begin
                         case(s_axi_ctl_awaddr[11:0])
                         C_VSEC_CAP_ADDR             : begin
                                                         // VSEC Capability Register
                                                         // All fields are read only
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h004) : begin
                                                         // VSEC Header
                                                         // All fields are read only
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h008) : begin
                                                         // Bridge Info
                                                         // All fields are read only
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h00C) : begin
                                                         // Bridge Status Control
                                                         global_intr_disable        <= #TCQ ( s_axi_ctl_wstrb[1] ? s_axi_ctl_wdata[8] : global_intr_disable );
                                                         if(C_FAMILY != "S6") begin
                                                           cfg_mgmt_wr_rw1c_as_rw_o <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[16] : cfg_mgmt_wr_rw1c_as_rw_o );
                                                         end
                                                         if(C_FAMILY == "X7") begin
                                                           cfg_mgmt_wr_readonly_o   <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[17] : cfg_mgmt_wr_readonly_o );
                                                         end
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h010) : begin
                                                         // Interrupt Decode
                                                         // Write '1' to any bit will clear that bit
                                                         
                                                         interrupt_decode[7:0] <= #TCQ ( s_axi_ctl_wstrb[0] ? ((~s_axi_ctl_wdata[7:0]) & interrupt_decode[7:0]) : interrupt_decode[7:0] );
                                                         interrupt_decode[8]   <= #TCQ ( s_axi_ctl_wstrb[1] ? ((~s_axi_ctl_wdata[8])   & interrupt_decode[8])   : interrupt_decode[8]   );
                                                         
                                                         // Correctable Error bit
                                                         if(!corr_err_in_fifo && (s_axi_ctl_wstrb[1])) begin
                                                           interrupt_decode[9] <= #TCQ ((~s_axi_ctl_wdata[9]) & interrupt_decode[9]);
                                                         end
                                                         
                                                         // Non-Fatal Error bit
                                                         if(!non_fatal_err_in_fifo && (s_axi_ctl_wstrb[1])) begin
                                                           interrupt_decode[10] <= #TCQ ((~s_axi_ctl_wdata[10]) & interrupt_decode[10]);
                                                         end
                                                         
                                                         // Fatal Error bit
                                                         if(!fatal_err_in_fifo && (s_axi_ctl_wstrb[1])) begin
                                                           interrupt_decode[11] <= #TCQ ((~s_axi_ctl_wdata[11]) & interrupt_decode[11]);
                                                         end
                                                         
                                                         interrupt_decode[15:12] <= #TCQ ( s_axi_ctl_wstrb[1] ? ((~s_axi_ctl_wdata[15:12]) & interrupt_decode[15:12]) : interrupt_decode[15:12] );
                                                         
                                                         // MSI/INTx Msg received
                                                         if (MSI_IRQ_SEL_I)
                                                         begin
                                                           if (intr_fifo_empty && (s_axi_ctl_wstrb[2]))
                                                           begin
                                                             interrupt_decode[16] <= #TCQ ((~s_axi_ctl_wdata[16]) & interrupt_decode[16]);
                                                             interrupt_decode[17] <= #TCQ ((~s_axi_ctl_wdata[17]) & interrupt_decode[17]);
                                                           end
                                                           else
                                                           begin
                                                             interrupt_decode[16] <= #TCQ interrupt_decode[16];
                                                             interrupt_decode[17] <= #TCQ interrupt_decode[17];
                                                           end
                                                         end
                                                         else
                                                         begin
                                                           interrupt_decode[16] <= #TCQ interrupt_decode[16];
                                                           interrupt_decode[17] <= #TCQ interrupt_decode[17];
                                                         end
                                
                                                         interrupt_decode[23:18] <= #TCQ ( s_axi_ctl_wstrb[2] ? ((~s_axi_ctl_wdata[23:18]) & interrupt_decode[23:18]) : interrupt_decode[23:18] );
                                                         interrupt_decode[31:24] <= #TCQ ( s_axi_ctl_wstrb[3] ? ((~s_axi_ctl_wdata[31:24]) & interrupt_decode[31:24]) : interrupt_decode[31:24] );

                                                       end
                         (C_VSEC_CAP_ADDR + 12'h014) : begin
                                                       // Interrupt Mask
                                                       interrupt_mask[0]     <= #TCQ ( s_axi_ctl_wstrb[0] ? s_axi_ctl_wdata[0] : interrupt_mask[0] );
                                                       // ECRC Error mask is for Fuji cores only
                                                       if(C_FAMILY == "X7") begin
                                                         interrupt_mask[1]   <= #TCQ ( s_axi_ctl_wstrb[0] ? s_axi_ctl_wdata[1] : interrupt_mask[1] );
                                                       end
                                                       interrupt_mask[2]     <= #TCQ ( s_axi_ctl_wstrb[0] ? s_axi_ctl_wdata[2]     : interrupt_mask[2] );
                                                       interrupt_mask[7:5]   <= #TCQ ( s_axi_ctl_wstrb[0] ? s_axi_ctl_wdata[7:5]   : interrupt_mask[7:5] );
                                                       interrupt_mask[11:8]  <= #TCQ ( s_axi_ctl_wstrb[1] ? s_axi_ctl_wdata[11:8]  : interrupt_mask[11:8] );
                                                       interrupt_mask[17:16] <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[17:16] : interrupt_mask[17:16] );
                                                       // coverage off -item b 1 -allfalse
                                                       if(C_NUM_USER_INTR != 0) begin 
                                                         if(C_NUM_USER_INTR < 5) begin
                                                           interrupt_mask[20+C_NUM_USER_INTR-1:20] <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[20+C_NUM_USER_INTR-1:20] : interrupt_mask[20+C_NUM_USER_INTR-1:20] );
                                                         end else begin // C_NUM_USER_INTR >= 5
                                                           interrupt_mask[23:20]                   <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[23:20] : interrupt_mask[23:20] );
                                                           interrupt_mask[20+C_NUM_USER_INTR-1:24] <= #TCQ ( s_axi_ctl_wstrb[3] ? s_axi_ctl_wdata[20+C_NUM_USER_INTR-1:24] : interrupt_mask[20+C_NUM_USER_INTR-1:24] );
                                                         end
                                                       end
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h018) : begin
                                                         // Bus Location
                                                         port_number <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[23:16] : port_number );
                                                       end
                         default                     : begin
                                                         // PHY Status/Control register
                                                         if(C_FAMILY != "S6") begin
                                                           pl_directed_link_width    <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[17:16] : pl_directed_link_width );
                                                           pl_directed_link_speed    <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[18]    : pl_directed_link_speed );
                                                           pl_directed_link_auton    <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[19]    : pl_directed_link_auton );
                                                           pl_directed_link_change_d <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[21:20] : pl_directed_link_change_d );
                                                         end
                                                       end
                         endcase
                         s_axi_ctl_bresp             <= #TCQ 'b0;
                         s_axi_ctl_bvalid            <= #TCQ 'b1;
                       end
                       // De-assert valid once user assertes corresponding ready signal at response channel
                       if(s_axi_ctl_bvalid && s_axi_ctl_bready) begin
                         s_axi_ctl_bvalid            <= #TCQ 'b0;
                       end
                       // Tie to default values in case of write request
                       s_axi_ctl_arready             <= #TCQ 'b0;
                       s_axi_ctl_rresp               <= #TCQ 'b0;
                       s_axi_ctl_rvalid              <= #TCQ 'b0;
                     end
                     else begin // Read Request
                       // Assert s_axi_ctl_arready signal for 1 clock cycle if not given already
                       if(!ready_is_given) begin
                         s_axi_ctl_arready           <= #TCQ 'b1;
                         ready_is_given              <= #TCQ 'b1;
                       end
                       if(s_axi_ctl_arready) begin
                         s_axi_ctl_arready           <= #TCQ 'b0;
                       end
                       // Give response OKAY on the same clock cycle without any delay
                       if(s_axi_ctl_arvalid && s_axi_ctl_arready) begin
                         case(s_axi_ctl_araddr[11:0])
                         C_VSEC_CAP_ADDR             : begin
                                                         // VSEC Capability Register
                                                         // All fields are read only
                                                         s_axi_ctl_rdata <= #TCQ vsec_cap;
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h004) : begin
                                                         // VSEC Header
                                                         // All fields are read only
                                                         s_axi_ctl_rdata <= #TCQ vsec_header;
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h008) : begin
                                                         // Bridge Info
                                                         // All fields are read only
                                                         s_axi_ctl_rdata <= #TCQ bridge_info;
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h00C) : begin
                                                         // Bridge Status Control
                                                         s_axi_ctl_rdata <= #TCQ bridge_status_control;
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h010) : begin
                                                         // Interrupt Decode
                                                         s_axi_ctl_rdata <= #TCQ interrupt_decode;
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h014) : begin
                                                         // Interrupt Mask
                                                         s_axi_ctl_rdata <= #TCQ interrupt_mask;
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h018) : begin
                                                         // Bus Location
                                                         s_axi_ctl_rdata <= #TCQ bus_location;
                                                       end
                         default                     : begin
                                                         // PHY Status/Control
                                                         s_axi_ctl_rdata <= #TCQ phy_status_control;
                                                       end
                         endcase
                         s_axi_ctl_rresp             <= #TCQ 'b0;
                         s_axi_ctl_rvalid            <= #TCQ 'b1;
                       end
                       // De-assert valid once user assertes corresponding ready signal at response channel
                       if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
                         s_axi_ctl_rvalid            <= #TCQ 'b0;
                       end
                       // Tie to default values in case of write request
                       s_axi_ctl_awready             <= #TCQ 'b0;
                       s_axi_ctl_wready              <= #TCQ 'b0;
                       s_axi_ctl_bresp               <= #TCQ 'b0;
                       s_axi_ctl_bvalid              <= #TCQ 'b0;
                     end
                   end
      EVENT_HNDLR: begin
                     if(request_type) begin // Write Request
                       // Connect AXI-Lite User Interface to Event Handler AXI-Lite Interface
                       s_axi_ctl_awaddr_ev_hndlr     <= #TCQ s_axi_ctl_awaddr;
                       if(s_axi_ctl_bready && s_axi_ctl_bvalid_ev_hndlr) begin
                         s_axi_ctl_awvalid_ev_hndlr    <= #TCQ 'b0;
                         s_axi_ctl_wvalid_ev_hndlr     <= #TCQ 'b0;
                         wait_for_idle                 <= #TCQ 'b1;
                       end
                       else begin
                         if (!wait_for_idle) begin
                           s_axi_ctl_awvalid_ev_hndlr  <= #TCQ s_axi_ctl_awvalid;
                           s_axi_ctl_wvalid_ev_hndlr   <= #TCQ s_axi_ctl_wvalid;
                         end else begin
                           s_axi_ctl_awvalid_ev_hndlr  <= #TCQ 'b0;
                           s_axi_ctl_wvalid_ev_hndlr   <= #TCQ 'b0;
                         end
                       end
                       s_axi_ctl_awready             <= #TCQ s_axi_ctl_awready_ev_hndlr;
                       s_axi_ctl_wdata_ev_hndlr      <= #TCQ s_axi_ctl_wdata;
                       s_axi_ctl_wstrb_ev_hndlr      <= #TCQ s_axi_ctl_wstrb;
                       s_axi_ctl_wready              <= #TCQ s_axi_ctl_wready_ev_hndlr;
                       if(s_axi_ctl_bvalid && s_axi_ctl_bready) begin
                         s_axi_ctl_bvalid            <= #TCQ 'b0;
                         s_axi_ctl_bresp             <= #TCQ 2'b00;
                       end
                       else begin
                         s_axi_ctl_bvalid            <= #TCQ s_axi_ctl_bvalid_ev_hndlr;
                         s_axi_ctl_bresp             <= #TCQ s_axi_ctl_bresp_ev_hndlr;
                       end
                       s_axi_ctl_bready_ev_hndlr     <= #TCQ s_axi_ctl_bready;
                       // Tie to default values for write request
                       s_axi_ctl_arvalid_ev_hndlr    <= #TCQ 'b0;
                       s_axi_ctl_arready             <= #TCQ 'b0;
                       s_axi_ctl_rresp               <= #TCQ 'b0;
                       s_axi_ctl_rvalid              <= #TCQ 'b0;
                       s_axi_ctl_rready_ev_hndlr     <= #TCQ 'b0;
                     end
                     else begin // Read Request
                       // Connect AXI-Lite User Interface to Event Handler AXI-Lite Interface
                       s_axi_ctl_araddr_ev_hndlr     <= #TCQ s_axi_ctl_araddr;
                       if(s_axi_ctl_rready && s_axi_ctl_rvalid_ev_hndlr) begin
                         s_axi_ctl_arvalid_ev_hndlr    <= #TCQ 'b0;
                         wait_for_idle                 <= #TCQ 'b1;
                       end
                       else begin
                         if (!wait_for_idle)
                           s_axi_ctl_arvalid_ev_hndlr  <= #TCQ s_axi_ctl_arvalid;
                         else
                           s_axi_ctl_arvalid_ev_hndlr  <= #TCQ 'b0;
                       end
                       s_axi_ctl_arready             <= #TCQ s_axi_ctl_arready_ev_hndlr;
                       s_axi_ctl_rdata               <= #TCQ s_axi_ctl_rdata_ev_hndlr;
                       if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
                         s_axi_ctl_rresp             <= #TCQ 2'b00;
                         s_axi_ctl_rvalid            <= #TCQ 'b0;
                       end
                       else begin
                         s_axi_ctl_rresp             <= #TCQ s_axi_ctl_rresp_ev_hndlr;
                         s_axi_ctl_rvalid            <= #TCQ s_axi_ctl_rvalid_ev_hndlr;
                       end
                       s_axi_ctl_rready_ev_hndlr     <= #TCQ s_axi_ctl_rready;
                       // Tie to Default values for read request
                       s_axi_ctl_awvalid_ev_hndlr    <= #TCQ 'b0;
                       s_axi_ctl_awready             <= #TCQ 'b0;
                       s_axi_ctl_wstrb_ev_hndlr      <= #TCQ 'b0;
                       s_axi_ctl_wvalid_ev_hndlr     <= #TCQ 'b0;
                       s_axi_ctl_wready              <= #TCQ 'b0;
                       s_axi_ctl_bresp               <= #TCQ 'b0;
                       s_axi_ctl_bvalid              <= #TCQ 'b0;
                       s_axi_ctl_bready_ev_hndlr     <= #TCQ 'b0;
                     end
                   end
      IPIC_BRIDGE: begin
                     if(request_type) begin // Write Request
                       // Connect AXI-Lite User Interface to AXI-Lite interface of AXI-Lite to IPIC Bridge
                       s_axi_ctl_awaddr_ipic_bridge  <= #TCQ s_axi_ctl_awaddr;
                       if(s_axi_ctl_bready && s_axi_ctl_bvalid_ipic_bridge) begin
                         s_axi_ctl_awvalid_ipic_bridge <= #TCQ 'b0;
                         s_axi_ctl_wvalid_ipic_bridge  <= #TCQ 'b0;
                         wait_for_idle                 <= #TCQ 'b1;
                       end
                       else begin
                         if (!wait_for_idle) begin
                           s_axi_ctl_awvalid_ipic_bridge  <= #TCQ s_axi_ctl_awvalid;
                           s_axi_ctl_wvalid_ipic_bridge   <= #TCQ s_axi_ctl_wvalid;
                         end else begin
                           s_axi_ctl_awvalid_ipic_bridge  <= #TCQ 'b0;
                           s_axi_ctl_wvalid_ipic_bridge   <= #TCQ 'b0;
                         end
                       end
                       s_axi_ctl_awready             <= #TCQ s_axi_ctl_awready_ipic_bridge;
                       s_axi_ctl_wdata_ipic_bridge   <= #TCQ s_axi_ctl_wdata;
                       s_axi_ctl_wstrb_ipic_bridge   <= #TCQ s_axi_ctl_wstrb;
                       s_axi_ctl_wready              <= #TCQ s_axi_ctl_wready_ipic_bridge;
                       if(s_axi_ctl_bvalid && s_axi_ctl_bready) begin
                         s_axi_ctl_bvalid            <= #TCQ 'b0;
                         s_axi_ctl_bresp             <= #TCQ 2'b00;
                       end
                       else begin
                         s_axi_ctl_bvalid            <= #TCQ s_axi_ctl_bvalid_ipic_bridge;
                         s_axi_ctl_bresp             <= #TCQ s_axi_ctl_bresp_ipic_bridge;
                       end
                       s_axi_ctl_bready_ipic_bridge  <= #TCQ s_axi_ctl_bready;
                       // Tie to default values for write request
                       s_axi_ctl_arvalid_ipic_bridge <= #TCQ 'b0;
                       s_axi_ctl_arready             <= #TCQ 'b0;
                       s_axi_ctl_rresp               <= #TCQ 'b0;
                       s_axi_ctl_rvalid              <= #TCQ 'b0;
                       s_axi_ctl_rready_ipic_bridge  <= #TCQ 'b0;
                     end
                     else begin // Read Request
                       // Connect AXI-Lite User Interface to AXI-Lite interface of AXI-Lite to IPIC Bridge
                       s_axi_ctl_araddr_ipic_bridge  <= #TCQ s_axi_ctl_araddr;
                       if(s_axi_ctl_rready && s_axi_ctl_rvalid_ipic_bridge) begin
                         s_axi_ctl_arvalid_ipic_bridge <= #TCQ 'b0;
                         wait_for_idle                 <= #TCQ 'b1;
                       end
                       else begin
                         if (!wait_for_idle)
                           s_axi_ctl_arvalid_ipic_bridge  <= #TCQ s_axi_ctl_arvalid;
                         else
                           s_axi_ctl_arvalid_ipic_bridge  <= #TCQ 'b0;
                       end
                       s_axi_ctl_arready             <= #TCQ s_axi_ctl_arready_ipic_bridge;
                       s_axi_ctl_rdata               <= #TCQ s_axi_ctl_rdata_ipic_bridge;
                       if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
                         s_axi_ctl_rresp             <= #TCQ 2'b00;
                         s_axi_ctl_rvalid            <= #TCQ 'b0;
                       end
                       else begin
                         s_axi_ctl_rresp             <= #TCQ s_axi_ctl_rresp_ipic_bridge;
                         s_axi_ctl_rvalid            <= #TCQ s_axi_ctl_rvalid_ipic_bridge;
                       end
                       s_axi_ctl_rready_ipic_bridge  <= #TCQ s_axi_ctl_rready;
                       // Tie to Default values for read request
                       s_axi_ctl_awvalid_ipic_bridge <= #TCQ 'b0;
                       s_axi_ctl_awready             <= #TCQ 'b0;
                       s_axi_ctl_wstrb_ipic_bridge   <= #TCQ 'b0;
                       s_axi_ctl_wvalid_ipic_bridge  <= #TCQ 'b0;
                       s_axi_ctl_wready              <= #TCQ 'b0;
                       s_axi_ctl_bresp               <= #TCQ 'b0;
                       s_axi_ctl_bvalid              <= #TCQ 'b0;
                       s_axi_ctl_bready_ipic_bridge  <= #TCQ 'b0;
                     end
                   end
      GEN_SINK :   begin
                     if(request_type) begin // Write Request
                       // slot power limit message TLP Tx request
                       if(msg_req) begin
                         // Assert awvalid and wvalid signals
                         s_axi_ctl_awvalid_gen_sink    <= #TCQ assert_valid;
                         s_axi_ctl_wvalid_gen_sink     <= #TCQ assert_valid;
                         s_axi_ctl_awaddr_gen_sink     <= #TCQ 'b0;
                         s_axi_ctl_awready             <= #TCQ 1'b0;
                         s_axi_ctl_wdata_gen_sink      <= #TCQ 'b0;
                         s_axi_ctl_wstrb_gen_sink      <= #TCQ 'b1;
                         s_axi_ctl_wready              <= #TCQ 1'b0;
                         s_axi_ctl_bvalid              <= #TCQ 1'b0;
                         s_axi_ctl_bresp               <= #TCQ 'b0;
                         // Tie to default values for write request
                         s_axi_ctl_arvalid_gen_sink    <= #TCQ 'b0;
                         s_axi_ctl_arready             <= #TCQ 'b0;
                         s_axi_ctl_rresp               <= #TCQ 'b0;
                         s_axi_ctl_rvalid              <= #TCQ 'b0;
                         s_axi_ctl_rready_gen_sink     <= #TCQ 'b0;

                         if(s_axi_ctl_awready_gen_sink) begin
                           s_axi_ctl_awvalid_gen_sink <= #TCQ 1'b0;
                           s_axi_ctl_wvalid_gen_sink  <= #TCQ 1'b0;
                           assert_valid               <= #TCQ 1'b0;
                         end
                         if(s_axi_ctl_bvalid_gen_sink) begin
                           s_axi_ctl_bready_gen_sink  <= #TCQ 1'b1;
                         end
                         if(s_axi_ctl_bready_gen_sink) begin
                           s_axi_ctl_bready_gen_sink  <= #TCQ 1'b0;
                           assert_valid               <= #TCQ 1'b1;
                         end
                       end
                       else begin
                         // Connect AXI-Lite User Interface to AXI-Lite interface of Config Gen/Sink
                         s_axi_ctl_awaddr_gen_sink    <= #TCQ s_axi_ctl_awaddr;
                         if(s_axi_ctl_bready && s_axi_ctl_bvalid_gen_sink) begin
                           s_axi_ctl_awvalid_gen_sink   <= #TCQ 'b0;
                           s_axi_ctl_wvalid_gen_sink    <= #TCQ 'b0;
                           wait_for_idle                <= #TCQ 'b1;
                         end
                         else begin
                           if (!wait_for_idle) begin
                             s_axi_ctl_awvalid_gen_sink  <= #TCQ s_axi_ctl_awvalid;
                             s_axi_ctl_wvalid_gen_sink   <= #TCQ s_axi_ctl_wvalid;
                           end else begin
                             s_axi_ctl_awvalid_gen_sink  <= #TCQ 'b0;
                             s_axi_ctl_wvalid_gen_sink   <= #TCQ 'b0;
                           end
                         end
                         s_axi_ctl_awready            <= #TCQ s_axi_ctl_awready_gen_sink;
                         s_axi_ctl_wdata_gen_sink     <= #TCQ s_axi_ctl_wdata;
                         s_axi_ctl_wstrb_gen_sink     <= #TCQ s_axi_ctl_wstrb;
                         s_axi_ctl_wready             <= #TCQ s_axi_ctl_wready_gen_sink;
                         if(s_axi_ctl_bvalid && s_axi_ctl_bready) begin
                           s_axi_ctl_bvalid           <= #TCQ 'b0;
                           s_axi_ctl_bresp            <= #TCQ 2'b00;
                         end
                         else begin
                           s_axi_ctl_bvalid           <= #TCQ s_axi_ctl_bvalid_gen_sink;
                           s_axi_ctl_bresp            <= #TCQ s_axi_ctl_bresp_gen_sink;
                         end
                         s_axi_ctl_bready_gen_sink    <= #TCQ s_axi_ctl_bready;
                         // Tie to default values for write request
                         s_axi_ctl_arvalid_gen_sink   <= #TCQ 'b0;
                         s_axi_ctl_arready            <= #TCQ 'b0;
                         s_axi_ctl_rresp              <= #TCQ 'b0;
                         s_axi_ctl_rvalid             <= #TCQ 'b0;
                         s_axi_ctl_rready_gen_sink    <= #TCQ 'b0;
                       end
                     end
                     else begin // Read Request
                       // Connect AXI-Lite User Interface to AXI-Lite interface of Config Gen/Sink
                       s_axi_ctl_araddr_gen_sink      <= #TCQ s_axi_ctl_araddr;
                       if(s_axi_ctl_rready && s_axi_ctl_rvalid_gen_sink) begin
                         s_axi_ctl_arvalid_gen_sink    <= #TCQ 'b0;
                         wait_for_idle                 <= #TCQ 'b1;
                       end
                       else begin
                         if (!wait_for_idle)
                           s_axi_ctl_arvalid_gen_sink  <= #TCQ s_axi_ctl_arvalid;
                         else
                           s_axi_ctl_arvalid_gen_sink  <= #TCQ 'b0;
                       end
                       s_axi_ctl_arready              <= #TCQ s_axi_ctl_arready_gen_sink;
                       s_axi_ctl_rdata                <= #TCQ s_axi_ctl_rdata_gen_sink;
                       if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
                         s_axi_ctl_rresp              <= #TCQ 2'b00;
                         s_axi_ctl_rvalid             <= #TCQ 'b0;
                       end
                       else begin
                         s_axi_ctl_rresp              <= #TCQ s_axi_ctl_rresp_gen_sink;
                         s_axi_ctl_rvalid             <= #TCQ s_axi_ctl_rvalid_gen_sink;
                       end
                       s_axi_ctl_rready_gen_sink      <= #TCQ s_axi_ctl_rready;
                       // Tie to Default values for read request
                       s_axi_ctl_awvalid_gen_sink     <= #TCQ 'b0;
                       s_axi_ctl_awready              <= #TCQ 'b0;
                       s_axi_ctl_wstrb_gen_sink       <= #TCQ 'b0;
                       s_axi_ctl_wvalid_gen_sink      <= #TCQ 'b0;
                       s_axi_ctl_wready               <= #TCQ 'b0;
                       s_axi_ctl_bresp                <= #TCQ 'b0;
                       s_axi_ctl_bvalid               <= #TCQ 'b0;
                       s_axi_ctl_bready_gen_sink      <= #TCQ 'b0;
                     end
                   end
      SLVERR_RESP: begin
                   // Access to Reserved register space
                     if(request_type) begin // Write Request
                       // Assert *wready for 1 clock cycle if not given already
                       if(!ready_is_given) begin
                         s_axi_ctl_awready           <= #TCQ 'b1;
                         s_axi_ctl_wready            <= #TCQ 'b1;
                         ready_is_given              <= #TCQ 'b1;
                       end
                       if(s_axi_ctl_awready && s_axi_ctl_wready) begin
                         s_axi_ctl_awready           <= #TCQ 'b0;
                         s_axi_ctl_wready            <= #TCQ 'b0;
                       end
                       // Give response OKAY on the same clock cycle without any delay
                       if(s_axi_ctl_awready && s_axi_ctl_wready && s_axi_ctl_awvalid && s_axi_ctl_wvalid) begin
                         s_axi_ctl_bresp             <= #TCQ 2'b10; // SLVERR
                         s_axi_ctl_bvalid            <= #TCQ 'b1;
                       end
                       // De-assert valid once user assertes corresponding ready signal at response channel
                       if(s_axi_ctl_bvalid && s_axi_ctl_bready) begin
                         s_axi_ctl_bvalid            <= #TCQ 'b0;
                       end
                       // Tie to default values in case of write request
                       s_axi_ctl_arready             <= #TCQ 'b0;
                       s_axi_ctl_rresp               <= #TCQ 'b0;
                       s_axi_ctl_rvalid              <= #TCQ 'b0;
                     end
                     else begin // Read Request
                       // Assert s_axi_ctl_arready signal for 1 clock cycle if not given already
                       if(!ready_is_given) begin
                         s_axi_ctl_arready           <= #TCQ 'b1;
                         ready_is_given              <= #TCQ 'b1;
                       end
                       if(s_axi_ctl_arready) begin
                         s_axi_ctl_arready           <= #TCQ 'b0;
                       end
                       // Give response OKAY on the same clock cycle without any delay
                       if(s_axi_ctl_arvalid && s_axi_ctl_arready) begin
                         if(NO_SLV_ERR == "TRUE" && (s_axi_ctl_araddr[27:20] != blk_bus_number) && (s_axi_ctl_araddr[11:0] == 12'h00)) begin
                           s_axi_ctl_rresp             <= #TCQ 2'b00; // OK
                           s_axi_ctl_rdata             <= #TCQ 32'hffffffff;
                           s_axi_ctl_rvalid            <= #TCQ 'b1;
                         end
                         else begin
                           s_axi_ctl_rresp             <= #TCQ 2'b10; // SLVERR
                           s_axi_ctl_rdata             <= #TCQ 32'hffffffff;
                           s_axi_ctl_rvalid            <= #TCQ 'b1;
                         end
                       end
                       // De-assert valid once user assertes corresponding ready signal at response channel
                       if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
                         s_axi_ctl_rvalid            <= #TCQ 'b0;
                       end
                       // Tie to default values in case of write request
                       s_axi_ctl_awready             <= #TCQ 'b0;
                       s_axi_ctl_wready              <= #TCQ 'b0;
                       s_axi_ctl_bresp               <= #TCQ 'b0;
                       s_axi_ctl_bvalid              <= #TCQ 'b0;
                     end
                   end
      RSVD_SPACE : begin
                     // Access to Reserved register space
                     if(request_type) begin // Write Request
                       // Assert *wready for 1 clock cycle if not given already
                       if(!ready_is_given) begin
                         s_axi_ctl_awready           <= #TCQ 'b1;
                         s_axi_ctl_wready            <= #TCQ 'b1;
                         ready_is_given              <= #TCQ 'b1;
                       end
                       if(s_axi_ctl_awready) begin
                         s_axi_ctl_awready           <= #TCQ 'b0;
                         s_axi_ctl_wready            <= #TCQ 'b0;
                       end
                       // Give response OKAY on the same clock cycle without any delay
                       if(s_axi_ctl_awready && s_axi_ctl_awvalid) begin
                         s_axi_ctl_bresp             <= #TCQ 'b0;
                         s_axi_ctl_bvalid            <= #TCQ 'b1;
                       end
                       // De-assert valid once user assertes corresponding ready signal at response channel
                       if(s_axi_ctl_bvalid && s_axi_ctl_bready) begin
                         s_axi_ctl_bvalid            <= #TCQ 'b0;
                       end
                       // Tie to default values in case of write request
                       s_axi_ctl_arready             <= #TCQ 'b0;
                       s_axi_ctl_rresp               <= #TCQ 'b0;
                       s_axi_ctl_rvalid              <= #TCQ 'b0;
                     end
                     else begin // Read Request
                       // Assert s_axi_ctl_arready signal for 1 clock cycle if not given already
                       if(!ready_is_given) begin
                         s_axi_ctl_arready           <= #TCQ 'b1;
                         ready_is_given              <= #TCQ 'b1;
                       end
                       if(s_axi_ctl_arready) begin
                         s_axi_ctl_arready           <= #TCQ 'b0;
                       end
                       // Give response OKAY on the same clock cycle without any delay
                       if(s_axi_ctl_arvalid && s_axi_ctl_arready) begin
                         s_axi_ctl_rresp             <= #TCQ 'b0;
                         s_axi_ctl_rdata             <= #TCQ 'b0;
                         s_axi_ctl_rvalid            <= #TCQ 'b1;
                       end
                       // De-assert valid once user assertes corresponding ready signal at response channel
                       if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
                         s_axi_ctl_rvalid            <= #TCQ 'b0;
                       end
                       // Tie to default values in case of write request
                       s_axi_ctl_awready             <= #TCQ 'b0;
                       s_axi_ctl_wready              <= #TCQ 'b0;
                       s_axi_ctl_bresp               <= #TCQ 'b0;
                       s_axi_ctl_bvalid              <= #TCQ 'b0;
                     end
                   end
      default :    begin
                     // AXI-Lite user interface output pins
                     s_axi_ctl_awready             <= #TCQ 1'b0;
                     s_axi_ctl_wready              <= #TCQ 1'b0;
                     s_axi_ctl_bresp               <= #TCQ 2'b00;
                     s_axi_ctl_bvalid              <= #TCQ 1'b0;
                     s_axi_ctl_arready             <= #TCQ 1'b0;
                     s_axi_ctl_rdata               <= #TCQ 32'b0;
                     s_axi_ctl_rresp               <= #TCQ 2'b00;
                     s_axi_ctl_rvalid              <= #TCQ 1'b0;
                     // AXI-Lite interface going towards Config Gen/Sink
                     s_axi_ctl_awaddr_gen_sink     <= #TCQ 32'b0;
                     s_axi_ctl_awvalid_gen_sink    <= #TCQ 1'b0;
                     s_axi_ctl_wdata_gen_sink      <= #TCQ 32'b0;
                     s_axi_ctl_wstrb_gen_sink      <= #TCQ 4'b0;
                     s_axi_ctl_wvalid_gen_sink     <= #TCQ 1'b0;
                     s_axi_ctl_bready_gen_sink     <= #TCQ 1'b0;
                     s_axi_ctl_araddr_gen_sink     <= #TCQ 32'b0;
                     s_axi_ctl_arvalid_gen_sink    <= #TCQ 1'b0;
                     s_axi_ctl_rready_gen_sink     <= #TCQ 1'b0;
                     // AXI-Lite interface going towards Block config Bridge
                     s_axi_ctl_awaddr_blk_bridge   <= #TCQ 32'b0;
                     s_axi_ctl_awvalid_blk_bridge  <= #TCQ 1'b0;
                     s_axi_ctl_wdata_blk_bridge    <= #TCQ 32'b0;
                     s_axi_ctl_wstrb_blk_bridge    <= #TCQ 4'b0;
                     s_axi_ctl_wvalid_blk_bridge   <= #TCQ 1'b0;
                     s_axi_ctl_bready_blk_bridge   <= #TCQ 1'b0;
                     s_axi_ctl_araddr_blk_bridge   <= #TCQ 32'b0;
                     s_axi_ctl_arvalid_blk_bridge  <= #TCQ 1'b0;
                     s_axi_ctl_rready_blk_bridge   <= #TCQ 1'b0;
                     // AXI-Lite interface going towards Event Handler
                     s_axi_ctl_awaddr_ev_hndlr     <= #TCQ 32'b0;
                     s_axi_ctl_awvalid_ev_hndlr    <= #TCQ 1'b0;
                     s_axi_ctl_wdata_ev_hndlr      <= #TCQ 32'b0;
                     s_axi_ctl_wstrb_ev_hndlr      <= #TCQ 4'b0;
                     s_axi_ctl_wvalid_ev_hndlr     <= #TCQ 1'b0;
                     s_axi_ctl_bready_ev_hndlr     <= #TCQ 1'b0;
                     s_axi_ctl_araddr_ev_hndlr     <= #TCQ 32'b0;
                     s_axi_ctl_arvalid_ev_hndlr    <= #TCQ 1'b0;
                     s_axi_ctl_rready_ev_hndlr     <= #TCQ 1'b0;
                     // AXI-Lite interface going towards IPIC Bridge
                     s_axi_ctl_awaddr_ipic_bridge  <= #TCQ 32'b0;
                     s_axi_ctl_awvalid_ipic_bridge <= #TCQ 1'b0;
                     s_axi_ctl_wdata_ipic_bridge   <= #TCQ 32'b0;
                     s_axi_ctl_wstrb_ipic_bridge   <= #TCQ 4'b0;
                     s_axi_ctl_wvalid_ipic_bridge  <= #TCQ 1'b0;
                     s_axi_ctl_bready_ipic_bridge  <= #TCQ 1'b0;
                     s_axi_ctl_araddr_ipic_bridge  <= #TCQ 32'b0;
                     s_axi_ctl_arvalid_ipic_bridge <= #TCQ 1'b0;
                     s_axi_ctl_rready_ipic_bridge  <= #TCQ 1'b0;
                     // control signal
                     ready_is_given                <= #TCQ 'b0;
                     wait_for_idle                 <= #TCQ 'b0;
                   end
      endcase
      // Delayed Version of trn_lnk_up
      trn_lnk_up_d       <= #TCQ trn_lnk_up;
      trn_recrc_err_d    <= #TCQ trn_recrc_err;
      ctl_user_intr_d    <= #TCQ ctl_user_intr;

      // requester_id
      requester_id       <= #TCQ {blk_bus_number,device_number,3'b000};
      // Capture Link Down status
      if(trn_lnk_up_d && (!trn_lnk_up)) begin
        interrupt_decode[0] <= #TCQ 1'b1;
      end
      // Capture ECRC Error status
      if((!trn_recrc_err_d) && trn_recrc_err) begin
        interrupt_decode[1] <= #TCQ 1'b1;
      end
      // Capture Streaming Error
      // coverage off
      if(trn_tstr && trn_terr_drop) begin
        interrupt_decode[2] <= #TCQ 1'b1;
      end
      // coverage on
      // Capture non-zero completion status
      if(cpl_status != 'b0) begin
        interrupt_decode[7:5] <= #TCQ cpl_status;
      end
      // Capture config completion timeout
      if(cfg_timeout) begin
        interrupt_decode[8] <= #TCQ cfg_timeout;
      end
      // Capture Correctable error
      if(corr_err_rcvd) begin
        interrupt_decode[9] <= #TCQ corr_err_rcvd;
      end
      // Capture Non-Fatal error
      if(non_fatal_err_rcvd) begin
        interrupt_decode[10] <= #TCQ non_fatal_err_rcvd;
      end
      // Capture Fatal error
      if(fatal_err_rcvd) begin
        interrupt_decode[11] <= #TCQ fatal_err_rcvd;
      end
      // Capture INTx Message
      if(intx_msg_rcvd) begin
        interrupt_decode[16] <= #TCQ intx_msg_rcvd;
      end
      
      if (MSI_IRQ_SEL_I) begin
        // Capture MSI Message
        if(msi_msg_rcvd) begin
          interrupt_decode[17] <= #TCQ msi_msg_rcvd;
        end
      end
      else begin
        // Capture MSI Interrupt
        interrupt_decode[17] <= #TCQ MSI_IRQ_I;
      end
      // Capture User Interrupt (for axi_pcie_mm_s bridge application only)
      for(i = 0; i < C_NUM_USER_INTR; i = i+1) begin
        if((!ctl_user_intr_d[i]) && ctl_user_intr[i]) begin
          interrupt_decode[20+i] <= #TCQ 1'b1;
        end
      end
      // Schedule TLP when either the Link transitions from non-DL_Up to DL_Up
      // or slot capabilities register is written
      // slot_power_limit_msg TLP will not be scheduled(optional and not supported here)
      // till the time slot capabilities register is written
      if((!trn_lnk_up_d && trn_lnk_up && msg_tlp_valid)|| (!msg_tlp_valid_d && msg_tlp_valid) || slot_cap_updated) begin
        schedule_msg_tlp     <= #TCQ 1'b1;
      end
      // deassert the schedule_msg_tlp after getting ACK
      if(msg_sent_d) begin
        schedule_msg_tlp     <= #TCQ 1'b0;
      end
      // registered version of msg_tlp_valid
      msg_tlp_valid_d        <= #TCQ msg_tlp_valid;
      msg_sent_d             <= #TCQ msg_sent;

      // Clear pl_directed_link_change_d after link speed/witdh change is done
      if(pl_ltssm_state == 6'h20 && pl_directed_link_change_d == 2'b10) begin // Recovery.Idle
        pl_directed_link_change_d <= #TCQ 2'b00;
      end
      else if ((pl_ltssm_state == 6'h15 || pl_ltssm_state == 6'h00 ) 
                && pl_directed_link_change_d != 2'b00) begin
        pl_directed_link_change_d <= #TCQ 2'b00;
      end
    end
  end // always

  end // root_port
  
  else begin : end_point

  integer i; // loop variable
  
  always@(posedge com_cclk)
  begin
    if(com_sysrst) begin
      request_type                  <= #TCQ 1'b0;
      state                         <= #TCQ IDLE;
      axi_lite_intf_busy            <= #TCQ 'b0;
      override_last_core_cap        <= #TCQ 'b0;
    end
    else begin
      // Make decision to drive interface once axi_lite_intf_busy is low
      // Otherwise stick to the previous interface which has yet to give response
      // to the user AXI-Lite interface for either read/write request
      if(!axi_lite_intf_busy) begin
          // Give priority to read operation
        if(s_axi_ctl_arvalid) begin
          // Towards Block config bridge to access PCIe Block Configuration Registers
          if(s_axi_ctl_araddr[11:0] <= (C_VSEC_CAP_ADDR - 12'h004)) begin
            // Read Operation will be given priority
            request_type                  <= #TCQ 1'b0;
            state                         <= #TCQ BLK_BRIDGE;
            axi_lite_intf_busy            <= #TCQ 1'b1;
            // Snoop Read operation to override Next Cap. Offset value of C_LAST_CORE_CAP_ADDR
            if(s_axi_ctl_araddr[11:0] == C_LAST_CORE_CAP_ADDR) begin
              override_last_core_cap      <= #TCQ 1'b1;
            end
          end
          // Core VSEC Registers inside Slave module
          else if(s_axi_ctl_araddr[11:0] < (C_VSEC_CAP_ADDR + 12'h020)) begin
            // Read Operation will be given priority
            request_type                  <= #TCQ 1'b0;
            state                         <= #TCQ CFG_SLAVE;
            axi_lite_intf_busy            <= #TCQ 1'b1;
          end
          // Core VSEC Registers inside Event Handler module
          else if(s_axi_ctl_araddr[11:0] <= (C_VSEC_CAP_ADDR + 12'h34)) begin
            // Read Operation will be given priority
            request_type                  <= #TCQ 1'b0;
            state                         <= #TCQ EVENT_HNDLR;
            axi_lite_intf_busy            <= #TCQ 1'b1;
          end
          // User Register Space
          else if((s_axi_ctl_araddr[11:0] >= (C_VSEC_CAP_ADDR + C_USER_PTR)) &&
                                            (s_axi_ctl_araddr[11:0] <= (C_VSEC_CAP_ADDR + C_USER_PTR +12'h0FF))) begin
            // Read Operation will be given priority
            request_type                  <= #TCQ 1'b0;
            state                         <= #TCQ IPIC_BRIDGE;
            axi_lite_intf_busy            <= #TCQ 1'b1;
          end
          // Reserved Register Space
          else begin
            // Access to reserved space
            // Read Operation will be given priority
            request_type                  <= #TCQ 1'b0;
            state                         <= #TCQ RSVD_SPACE;
            axi_lite_intf_busy            <= #TCQ 1'b1;
          end
        end
        // Write Operation
        else if (s_axi_ctl_awvalid && s_axi_ctl_wvalid) begin
          // Towards Block config bridge to access PCIe Block Configuration Registers
          if(s_axi_ctl_awaddr[11:0] <= (C_VSEC_CAP_ADDR - 12'h004)) begin
            // Write Operation request
            request_type                  <= #TCQ 1'b1;
            state                         <= #TCQ BLK_BRIDGE;
            axi_lite_intf_busy            <= #TCQ 1'b1;
          end
          // Core VSEC Registers inside Slave module
          else if(s_axi_ctl_awaddr[11:0] < (C_VSEC_CAP_ADDR + 12'h020)) begin
            // Write Operation request
            request_type                  <= #TCQ 1'b1;
            state                         <= #TCQ CFG_SLAVE;
            axi_lite_intf_busy            <= #TCQ 1'b1;
          end
          // Core VSEC Registers inside Event Handler module
          else if(s_axi_ctl_awaddr[11:0] <= (C_VSEC_CAP_ADDR + 12'h34)) begin
            // Write Operation request
            request_type                  <= #TCQ 1'b1;
            state                         <= #TCQ EVENT_HNDLR;
            axi_lite_intf_busy            <= #TCQ 1'b1;
          end
          // User Register Space
          else if((s_axi_ctl_awaddr[11:0] >= (C_VSEC_CAP_ADDR + C_USER_PTR)) &&
                                            (s_axi_ctl_awaddr[11:0] <= (C_VSEC_CAP_ADDR + C_USER_PTR +12'h0FF))) begin
            // Write Operation request
            request_type                  <= #TCQ 1'b1;
            state                         <= #TCQ IPIC_BRIDGE;
            axi_lite_intf_busy            <= #TCQ 1'b1;
          end
          // Reserved Register Space
          else begin
            // Write Operation request
            request_type                  <= #TCQ 1'b1;
            state                         <= #TCQ RSVD_SPACE;
            axi_lite_intf_busy            <= #TCQ 1'b1;
          end
        end
        // No Read/Write Operation
        else begin
          request_type                  <= #TCQ 1'b0;
          state                         <= #TCQ IDLE;
        end
      end
      // De-Assert ECAM busy and override_last_core_cap register
      if((s_axi_ctl_bvalid && s_axi_ctl_bready) || (s_axi_ctl_rvalid && s_axi_ctl_rready)) begin
        axi_lite_intf_busy     <= #TCQ 1'b0;
        state                  <= #TCQ IDLE;
        override_last_core_cap <= #TCQ 1'b0;
      end
    end
  end

  always@(posedge com_cclk)
  begin
    if(com_sysrst) begin
      // AXI-Lite user interface output pins
      config_gen_req            <= #TCQ 1'b0;
      s_axi_ctl_awready             <= #TCQ 1'b0;
      s_axi_ctl_wready              <= #TCQ 1'b0;
      s_axi_ctl_bresp               <= #TCQ 2'b00;
      s_axi_ctl_bvalid              <= #TCQ 1'b0;
      s_axi_ctl_arready             <= #TCQ 1'b0;
      s_axi_ctl_rdata               <= #TCQ 32'b0;
      s_axi_ctl_rresp               <= #TCQ 2'b00;
      s_axi_ctl_rvalid              <= #TCQ 1'b0;
      // AXI-Lite interface going towards Config Gen/Sink
      s_axi_ctl_awaddr_gen_sink     <= #TCQ 32'b0;
      s_axi_ctl_awvalid_gen_sink    <= #TCQ 1'b0;
      s_axi_ctl_wdata_gen_sink      <= #TCQ 32'b0;
      s_axi_ctl_wstrb_gen_sink      <= #TCQ 4'b0;
      s_axi_ctl_wvalid_gen_sink     <= #TCQ 1'b0;
      s_axi_ctl_bready_gen_sink     <= #TCQ 1'b0;
      s_axi_ctl_araddr_gen_sink     <= #TCQ 32'b0;
      s_axi_ctl_arvalid_gen_sink    <= #TCQ 1'b0;
      s_axi_ctl_rready_gen_sink     <= #TCQ 1'b0;
      // AXI-Lite interface going towards Block config Bridge
      s_axi_ctl_awaddr_blk_bridge   <= #TCQ 32'b0;
      s_axi_ctl_awvalid_blk_bridge  <= #TCQ 1'b0;
      s_axi_ctl_wdata_blk_bridge    <= #TCQ 32'b0;
      s_axi_ctl_wstrb_blk_bridge    <= #TCQ 4'b0;
      s_axi_ctl_wvalid_blk_bridge   <= #TCQ 1'b0;
      s_axi_ctl_bready_blk_bridge   <= #TCQ 1'b0;
      s_axi_ctl_araddr_blk_bridge   <= #TCQ 32'b0;
      s_axi_ctl_arvalid_blk_bridge  <= #TCQ 1'b0;
      s_axi_ctl_rready_blk_bridge   <= #TCQ 1'b0;
      // AXI-Lite interface going towards Event Handler
      s_axi_ctl_awaddr_ev_hndlr     <= #TCQ 32'b0;
      s_axi_ctl_awvalid_ev_hndlr    <= #TCQ 1'b0;
      s_axi_ctl_wdata_ev_hndlr      <= #TCQ 32'b0;
      s_axi_ctl_wstrb_ev_hndlr      <= #TCQ 4'b0;
      s_axi_ctl_wvalid_ev_hndlr     <= #TCQ 1'b0;
      s_axi_ctl_bready_ev_hndlr     <= #TCQ 1'b0;
      s_axi_ctl_araddr_ev_hndlr     <= #TCQ 32'b0;
      s_axi_ctl_arvalid_ev_hndlr    <= #TCQ 1'b0;
      s_axi_ctl_rready_ev_hndlr     <= #TCQ 1'b0;
      // AXI-Lite interface going towards IPIC Bridge
      s_axi_ctl_awaddr_ipic_bridge  <= #TCQ 32'b0;
      s_axi_ctl_awvalid_ipic_bridge <= #TCQ 1'b0;
      s_axi_ctl_wdata_ipic_bridge   <= #TCQ 32'b0;
      s_axi_ctl_wstrb_ipic_bridge   <= #TCQ 4'b0;
      s_axi_ctl_wvalid_ipic_bridge  <= #TCQ 1'b0;
      s_axi_ctl_bready_ipic_bridge  <= #TCQ 1'b0;
      s_axi_ctl_araddr_ipic_bridge  <= #TCQ 32'b0;
      s_axi_ctl_arvalid_ipic_bridge <= #TCQ 1'b0;
      s_axi_ctl_rready_ipic_bridge  <= #TCQ 1'b0;
      // register initialization
      interrupt_decode              <= #TCQ 'b0;
      interrupt_mask                <= #TCQ 'b0;
      trn_lnk_up_d                  <= #TCQ 'b0;
      trn_recrc_err_d               <= #TCQ 'b0;
      pl_received_hot_reset_d       <= #TCQ 'b1;
      ctl_user_intr_d               <= #TCQ 'b0;
      // Side-band and internal control signals
      global_intr_disable           <= #TCQ 'b0;
      port_number                   <= #TCQ 'b0;
      cfg_req                       <= #TCQ 'b0;
      msg_req                       <= #TCQ 'b0;
      cfg_type                      <= #TCQ 'b0;
      blk_bus_number                <= #TCQ 'b0;
      slot_power_limit_value        <= #TCQ 'b0;
      slot_power_limit_scale        <= #TCQ 'b0;
      requester_id                  <= #TCQ 'b0;
      cfg_mgmt_wr_rw1c_as_rw_o      <= #TCQ 'b0;
      cfg_mgmt_wr_readonly_o        <= #TCQ 'b0;
      pl_directed_link_width        <= #TCQ 'b0;
      pl_directed_link_speed        <= #TCQ 'b0;
      pl_directed_link_auton        <= #TCQ 'b0;
      pl_directed_link_change_d     <= #TCQ 'b0;
      ready_is_given                <= #TCQ 'b0;
      wait_for_idle                 <= #TCQ 'b0;
    end
    else begin
      config_gen_req <= #TCQ 1'b0;
      case(state)
      BLK_BRIDGE : begin
                     if(request_type) begin // Write Request
                       // Connect AXI-Lite User Interface to Block Config Bridge AXI-Lite Interface
                       s_axi_ctl_awaddr_blk_bridge   <= #TCQ s_axi_ctl_awaddr;
                       if(s_axi_ctl_bready && s_axi_ctl_bvalid_blk_bridge) begin
                         s_axi_ctl_awvalid_blk_bridge  <= #TCQ 'b0;
                         s_axi_ctl_wvalid_blk_bridge   <= #TCQ 'b0;
                         wait_for_idle                 <= #TCQ 'b1;
                       end
                       else begin
                         if (!wait_for_idle) begin
                           s_axi_ctl_awvalid_blk_bridge  <= #TCQ s_axi_ctl_awvalid;
                           s_axi_ctl_wvalid_blk_bridge   <= #TCQ s_axi_ctl_wvalid;
                         end else begin
                           s_axi_ctl_awvalid_blk_bridge  <= #TCQ 'b0;
                           s_axi_ctl_wvalid_blk_bridge   <= #TCQ 'b0;
                         end
                       end
                       s_axi_ctl_awready             <= #TCQ s_axi_ctl_awready_blk_bridge;
                       s_axi_ctl_wdata_blk_bridge    <= #TCQ s_axi_ctl_wdata;
                       s_axi_ctl_wstrb_blk_bridge    <= #TCQ s_axi_ctl_wstrb;
                       s_axi_ctl_wready              <= #TCQ s_axi_ctl_wready_blk_bridge;
                       if(s_axi_ctl_bvalid && s_axi_ctl_bready) begin
                         s_axi_ctl_bvalid            <= #TCQ 'b0;
                         s_axi_ctl_bresp             <= #TCQ 2'b00;
                       end
                       else begin
                         s_axi_ctl_bvalid            <= #TCQ s_axi_ctl_bvalid_blk_bridge;
                         s_axi_ctl_bresp             <= #TCQ s_axi_ctl_bresp_blk_bridge;
                       end
                       s_axi_ctl_bready_blk_bridge   <= #TCQ s_axi_ctl_bready;
                       // Tie to default values for write request
                       s_axi_ctl_arvalid_blk_bridge  <= #TCQ 'b0;
                       s_axi_ctl_arready             <= #TCQ 'b0;
                       s_axi_ctl_rresp               <= #TCQ 'b0;
                       s_axi_ctl_rvalid              <= #TCQ 'b0;
                       s_axi_ctl_rready_blk_bridge   <= #TCQ 'b0;
                     end
                     else begin // Read Request
                       // Connect AXI-Lite User Interface to Block Config Bridge AXI-Lite Interface
                       s_axi_ctl_araddr_blk_bridge   <= #TCQ s_axi_ctl_araddr;
                       if(s_axi_ctl_rready && s_axi_ctl_rvalid_blk_bridge) begin
                         s_axi_ctl_arvalid_blk_bridge <= #TCQ 'b0;
                         wait_for_idle                <= #TCQ 'b1;
                       end
                       else begin
                         if (!wait_for_idle)
                           s_axi_ctl_arvalid_blk_bridge  <= #TCQ s_axi_ctl_arvalid;
                         else
                           s_axi_ctl_arvalid_blk_bridge  <= #TCQ 'b0;
                       end
                       s_axi_ctl_arready             <= #TCQ s_axi_ctl_arready_blk_bridge;
                       // Override Next Capability Offset value of C_LAST_CORE_CAP_ADDR to point to 
                       // Core's Internal VSEC Register Space
                       if(override_last_core_cap) begin
                         s_axi_ctl_rdata[31:20]      <= #TCQ C_VSEC_CAP_ADDR;
                         s_axi_ctl_rdata[19:0]       <= #TCQ s_axi_ctl_rdata_blk_bridge[19:0];
                       end
                       else begin
                         s_axi_ctl_rdata             <= #TCQ s_axi_ctl_rdata_blk_bridge;
                       end
                       if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
                         s_axi_ctl_rresp             <= #TCQ 2'b00;
                         s_axi_ctl_rvalid            <= #TCQ 'b0;
                       end
                       else begin
                         s_axi_ctl_rresp             <= #TCQ s_axi_ctl_rresp_blk_bridge;
                         s_axi_ctl_rvalid            <= #TCQ s_axi_ctl_rvalid_blk_bridge;
                       end
                       s_axi_ctl_rready_blk_bridge   <= #TCQ s_axi_ctl_rready;
                       // Tie to Default values for read request
                       s_axi_ctl_awvalid_blk_bridge  <= #TCQ 'b0;
                       s_axi_ctl_awready             <= #TCQ 'b0;
                       s_axi_ctl_wstrb_blk_bridge    <= #TCQ 'b0;
                       s_axi_ctl_wvalid_blk_bridge   <= #TCQ 'b0;
                       s_axi_ctl_wready              <= #TCQ 'b0;
                       s_axi_ctl_bresp               <= #TCQ 'b0;
                       s_axi_ctl_bvalid              <= #TCQ 'b0;
                       s_axi_ctl_bready_blk_bridge   <= #TCQ 'b0;
                     end
                   end
      CFG_SLAVE :  begin
                     // Internal Core VSEC registers of the slave
                     if(request_type) begin // Write Request
                       //Assert *wready for 1 clock cycle if not given already
                       if(!ready_is_given) begin
                         s_axi_ctl_awready           <= #TCQ 'b1;
                         s_axi_ctl_wready            <= #TCQ 'b1;
                         ready_is_given              <= #TCQ 'b1;
                       end
                       if(s_axi_ctl_awready) begin
                         s_axi_ctl_awready           <= #TCQ 'b0;
                         s_axi_ctl_wready            <= #TCQ 'b0;
                       end
                       // Give response OKAY on the same clock cycle without any delay
                       if(s_axi_ctl_awready && s_axi_ctl_awvalid) begin
                         case(s_axi_ctl_awaddr[11:0])
                         C_VSEC_CAP_ADDR             : begin
                                                         // VSEC Capability Register
                                                         // All fields are read only
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h004) : begin
                                                         // VSEC Header
                                                         // All fields are read only
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h008) : begin
                                                         // Bridge Info
                                                         // All fields are read only
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h00C) : begin
                                                         // Bridge Status Control
                                                         global_intr_disable        <= #TCQ ( s_axi_ctl_wstrb[1] ? s_axi_ctl_wdata[8] : global_intr_disable );
                                                         if(C_FAMILY != "S6") begin
                                                           cfg_mgmt_wr_rw1c_as_rw_o <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[16] : cfg_mgmt_wr_rw1c_as_rw_o );
                                                         end
                                                         if(C_FAMILY == "X7") begin
                                                           cfg_mgmt_wr_readonly_o   <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[17] : cfg_mgmt_wr_readonly_o );
                                                         end
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h010) : begin
                                                         // Interrupt Decode
                                                         // Write '1' to any bit will clear that bit
                                                         interrupt_decode[7:0]   <= #TCQ ( s_axi_ctl_wstrb[0] ? ((~s_axi_ctl_wdata[7:0]) & interrupt_decode[7:0])     : interrupt_decode[7:0]   );
                                                         interrupt_decode[15:8]  <= #TCQ ( s_axi_ctl_wstrb[1] ? ((~s_axi_ctl_wdata[15:8]) & interrupt_decode[15:8])   : interrupt_decode[15:8]  );
                                                         interrupt_decode[23:16] <= #TCQ ( s_axi_ctl_wstrb[2] ? ((~s_axi_ctl_wdata[23:16]) & interrupt_decode[23:16]) : interrupt_decode[23:16] );
                                                         interrupt_decode[31:24] <= #TCQ ( s_axi_ctl_wstrb[3] ? ((~s_axi_ctl_wdata[31:24]) & interrupt_decode[31:24]) : interrupt_decode[31:24] );
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h014) : begin
                                                         // Interrupt Mask
                                                         interrupt_mask[0]     <= #TCQ ( s_axi_ctl_wstrb[0] ? s_axi_ctl_wdata[0] : interrupt_mask[0] );
                                                         // ECRC Error mask is for Fuji cores only
                                                         if(C_FAMILY == "X7") begin
                                                           interrupt_mask[1]   <= #TCQ ( s_axi_ctl_wstrb[0] ? s_axi_ctl_wdata[1] : interrupt_mask[1] );
                                                         end
                                                         interrupt_mask[3:2]   <= #TCQ ( s_axi_ctl_wstrb[0] ? s_axi_ctl_wdata[3:2] : interrupt_mask[3:2] );
                                                         // Nam - added according to Manish's input
                                                         // coverage off -item b 1 -allfalse
                                                       if(C_NUM_USER_INTR != 0) begin 
                                                         if(C_NUM_USER_INTR < 5) begin
                                                           interrupt_mask[20+C_NUM_USER_INTR-1:20] <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[20+C_NUM_USER_INTR-1:20] : interrupt_mask[20+C_NUM_USER_INTR-1:20] );
                                                         end else begin // C_NUM_USER_INTR >= 5
                                                           interrupt_mask[23:20]                   <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[23:20] : interrupt_mask[23:20] );
                                                           interrupt_mask[20+C_NUM_USER_INTR-1:24] <= #TCQ ( s_axi_ctl_wstrb[3] ? s_axi_ctl_wdata[20+C_NUM_USER_INTR-1:24] : interrupt_mask[20+C_NUM_USER_INTR-1:24] );
                                                         end
                                                       end
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h018) : begin
                                                         // Bus Location
                                                         if(C_FAMILY != "S6") begin
                                                           port_number <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[23:16] : port_number );
                                                         end
                                                       end
                         default                     : begin
                                                         // PHY Status/Control register
                                                         if(C_FAMILY != "S6") begin
                                                           pl_directed_link_width    <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[17:16] : pl_directed_link_width    );
                                                           pl_directed_link_speed    <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[18]    : pl_directed_link_speed    );
                                                           pl_directed_link_auton    <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[19]    : pl_directed_link_auton    );
                                                           pl_directed_link_change_d <= #TCQ ( s_axi_ctl_wstrb[2] ? s_axi_ctl_wdata[21:20] : pl_directed_link_change_d );
                                                         end
                                                       end
                         endcase
                         s_axi_ctl_bresp             <= #TCQ 'b0;
                         s_axi_ctl_bvalid            <= #TCQ 'b1;
                       end
                       // De-assert valid once user assertes corresponding ready signal at response channel
                       if(s_axi_ctl_bvalid && s_axi_ctl_bready) begin
                         s_axi_ctl_bvalid            <= #TCQ 'b0;
                       end
                       // Tie to default values in case of write request
                       s_axi_ctl_arready             <= #TCQ 'b0;
                       s_axi_ctl_rresp               <= #TCQ 'b0;
                       s_axi_ctl_rvalid              <= #TCQ 'b0;
                     end
                     else begin // Read Request
                       // Assert s_axi_ctl_arready signal for 1 clock cycle if not given already
                       if(!ready_is_given) begin
                         s_axi_ctl_arready           <= #TCQ 'b1;
                         ready_is_given              <= #TCQ 'b1;
                       end
                       if(s_axi_ctl_arready) begin
                         s_axi_ctl_arready           <= #TCQ 'b0;
                       end
                       // Give response OKAY on the same clock cycle without any delay
                       if(s_axi_ctl_arvalid && s_axi_ctl_arready) begin
                         case(s_axi_ctl_araddr[11:0])
                         C_VSEC_CAP_ADDR             : begin
                                                         // VSEC Capability Register
                                                         // All fields are read only
                                                         s_axi_ctl_rdata <= #TCQ vsec_cap;
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h004) : begin
                                                         // VSEC Header
                                                         // All fields are read only
                                                         s_axi_ctl_rdata <= #TCQ vsec_header;
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h008) : begin
                                                         // Bridge Info
                                                         // All fields are read only
                                                         s_axi_ctl_rdata <= #TCQ bridge_info;
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h00C) : begin
                                                         // Bridge Status Control
                                                         s_axi_ctl_rdata <= #TCQ bridge_status_control;
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h010) : begin
                                                         // Interrupt Decode
                                                         s_axi_ctl_rdata <= #TCQ interrupt_decode;
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h014) : begin
                                                         // Interrupt Mask
                                                         s_axi_ctl_rdata <= #TCQ interrupt_mask;
                                                       end
                         (C_VSEC_CAP_ADDR + 12'h018) : begin
                                                         // Bus Location
                                                         s_axi_ctl_rdata <= #TCQ bus_location;
                                                       end
                         default                     : begin
                                                         // PHY Status/Control
                                                         s_axi_ctl_rdata <= #TCQ phy_status_control;
                                                       end
                         endcase
                         s_axi_ctl_rresp             <= #TCQ 'b0;
                         s_axi_ctl_rvalid            <= #TCQ 'b1;
                       end
                       // De-assert valid once user assertes corresponding ready signal at response channel
                       if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
                         s_axi_ctl_rvalid            <= #TCQ 'b0;
                       end
                       // Tie to default values in case of write request
                       s_axi_ctl_awready             <= #TCQ 'b0;
                       s_axi_ctl_wready              <= #TCQ 'b0;
                       s_axi_ctl_bresp               <= #TCQ 'b0;
                       s_axi_ctl_bvalid              <= #TCQ 'b0;
                     end
                   end
      EVENT_HNDLR: begin
                     if(request_type) begin // Write Request
                       // Connect AXI-Lite User Interface to Event Handler AXI-Lite Interface
                       s_axi_ctl_awaddr_ev_hndlr     <= #TCQ s_axi_ctl_awaddr;
                       if(s_axi_ctl_bready && s_axi_ctl_bvalid_ev_hndlr) begin
                         s_axi_ctl_awvalid_ev_hndlr    <= #TCQ 'b0;
                         s_axi_ctl_wvalid_ev_hndlr     <= #TCQ 'b0;
                         wait_for_idle                 <= #TCQ 'b1;
                       end
                       else begin
                         if (!wait_for_idle) begin
                           s_axi_ctl_awvalid_ev_hndlr  <= #TCQ s_axi_ctl_awvalid;
                           s_axi_ctl_wvalid_ev_hndlr   <= #TCQ s_axi_ctl_wvalid;
                         end else begin
                           s_axi_ctl_awvalid_ev_hndlr  <= #TCQ 'b0;
                           s_axi_ctl_wvalid_ev_hndlr   <= #TCQ 'b0;
                         end
                       end
                       s_axi_ctl_awready             <= #TCQ s_axi_ctl_awready_ev_hndlr;
                       s_axi_ctl_wdata_ev_hndlr      <= #TCQ s_axi_ctl_wdata;
                       s_axi_ctl_wstrb_ev_hndlr      <= #TCQ s_axi_ctl_wstrb;
                       s_axi_ctl_wready              <= #TCQ s_axi_ctl_wready_ev_hndlr;
                       if(s_axi_ctl_bvalid && s_axi_ctl_bready) begin
                         s_axi_ctl_bvalid            <= #TCQ 'b0;
                         s_axi_ctl_bresp             <= #TCQ 2'b00;
                       end
                       else begin
                         s_axi_ctl_bvalid            <= #TCQ s_axi_ctl_bvalid_ev_hndlr;
                         s_axi_ctl_bresp             <= #TCQ s_axi_ctl_bresp_ev_hndlr;
                       end
                       s_axi_ctl_bready_ev_hndlr     <= #TCQ s_axi_ctl_bready;
                       // Tie to default values for write request
                       s_axi_ctl_arvalid_ev_hndlr    <= #TCQ 'b0;
                       s_axi_ctl_arready             <= #TCQ 'b0;
                       s_axi_ctl_rresp               <= #TCQ 'b0;
                       s_axi_ctl_rvalid              <= #TCQ 'b0;
                       s_axi_ctl_rready_ev_hndlr     <= #TCQ 'b0;
                     end
                     else begin // Read Request
                       // Connect AXI-Lite User Interface to Event Handler AXI-Lite Interface
                       s_axi_ctl_araddr_ev_hndlr     <= #TCQ s_axi_ctl_araddr;
                       if(s_axi_ctl_rready && s_axi_ctl_rvalid_ev_hndlr) begin
                         s_axi_ctl_arvalid_ev_hndlr    <= #TCQ 'b0;
                         wait_for_idle                 <= #TCQ 'b1;
                       end
                       else begin
                         if (!wait_for_idle)
                           s_axi_ctl_arvalid_ev_hndlr  <= #TCQ s_axi_ctl_arvalid;
                         else
                           s_axi_ctl_arvalid_ev_hndlr  <= #TCQ 'b0;
                       end
                       s_axi_ctl_arready             <= #TCQ s_axi_ctl_arready_ev_hndlr;
                       s_axi_ctl_rdata               <= #TCQ s_axi_ctl_rdata_ev_hndlr;
                       if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
                         s_axi_ctl_rresp             <= #TCQ 2'b00;
                         s_axi_ctl_rvalid            <= #TCQ 'b0;
                       end
                       else begin
                         s_axi_ctl_rresp             <= #TCQ s_axi_ctl_rresp_ev_hndlr;
                         s_axi_ctl_rvalid            <= #TCQ s_axi_ctl_rvalid_ev_hndlr;
                       end
                       s_axi_ctl_rready_ev_hndlr     <= #TCQ s_axi_ctl_rready;
                       // Tie to Default values for read request
                       s_axi_ctl_awvalid_ev_hndlr    <= #TCQ 'b0;
                       s_axi_ctl_awready             <= #TCQ 'b0;
                       s_axi_ctl_wstrb_ev_hndlr      <= #TCQ 'b0;
                       s_axi_ctl_wvalid_ev_hndlr     <= #TCQ 'b0;
                       s_axi_ctl_wready              <= #TCQ 'b0;
                       s_axi_ctl_bresp               <= #TCQ 'b0;
                       s_axi_ctl_bvalid              <= #TCQ 'b0;
                       s_axi_ctl_bready_ev_hndlr     <= #TCQ 'b0;
                     end
                   end
      IPIC_BRIDGE: begin
                     if(request_type) begin // Write Request
                       // Connect AXI-Lite User Interface to AXI-Lite interface of AXI-Lite to IPIC Bridge
                       s_axi_ctl_awaddr_ipic_bridge  <= #TCQ s_axi_ctl_awaddr;
                       if(s_axi_ctl_bready && s_axi_ctl_bvalid_ipic_bridge) begin
                         s_axi_ctl_awvalid_ipic_bridge <= #TCQ 'b0;
                         s_axi_ctl_wvalid_ipic_bridge  <= #TCQ 'b0;
                         wait_for_idle                 <= #TCQ 'b1;
                       end
                       else begin
                         if (!wait_for_idle) begin
                           s_axi_ctl_awvalid_ipic_bridge  <= #TCQ s_axi_ctl_awvalid;
                           s_axi_ctl_wvalid_ipic_bridge   <= #TCQ s_axi_ctl_wvalid;
                         end else begin
                           s_axi_ctl_awvalid_ipic_bridge  <= #TCQ 'b0;
                           s_axi_ctl_wvalid_ipic_bridge   <= #TCQ 'b0;
                         end
                       end
                       s_axi_ctl_awready             <= #TCQ s_axi_ctl_awready_ipic_bridge;
                       s_axi_ctl_wdata_ipic_bridge   <= #TCQ s_axi_ctl_wdata;
                       s_axi_ctl_wstrb_ipic_bridge   <= #TCQ s_axi_ctl_wstrb;
                       s_axi_ctl_wready              <= #TCQ s_axi_ctl_wready_ipic_bridge;
                       if(s_axi_ctl_bvalid && s_axi_ctl_bready) begin
                         s_axi_ctl_bvalid            <= #TCQ 'b0;
                         s_axi_ctl_bresp             <= #TCQ 2'b00;
                       end
                       else begin
                         s_axi_ctl_bvalid            <= #TCQ s_axi_ctl_bvalid_ipic_bridge;
                         s_axi_ctl_bresp             <= #TCQ s_axi_ctl_bresp_ipic_bridge;
                       end
                       s_axi_ctl_bready_ipic_bridge  <= #TCQ s_axi_ctl_bready;
                       // Tie to default values for write request
                       s_axi_ctl_arvalid_ipic_bridge <= #TCQ 'b0;
                       s_axi_ctl_arready             <= #TCQ 'b0;
                       s_axi_ctl_rresp               <= #TCQ 'b0;
                       s_axi_ctl_rvalid              <= #TCQ 'b0;
                       s_axi_ctl_rready_ipic_bridge  <= #TCQ 'b0;
                     end
                     else begin // Read Request
                       // Connect AXI-Lite User Interface to AXI-Lite interface of AXI-Lite to IPIC Bridge
                       s_axi_ctl_araddr_ipic_bridge  <= #TCQ s_axi_ctl_araddr;
                       if(s_axi_ctl_rready && s_axi_ctl_rvalid_ipic_bridge) begin
                         s_axi_ctl_arvalid_ipic_bridge <= #TCQ 'b0;
                         wait_for_idle                 <= #TCQ 'b1;
                       end
                       else begin
                         if (!wait_for_idle)
                           s_axi_ctl_arvalid_ipic_bridge  <= #TCQ s_axi_ctl_arvalid;
                         else
                           s_axi_ctl_arvalid_ipic_bridge  <= #TCQ 'b0;
                       end
                       s_axi_ctl_arready             <= #TCQ s_axi_ctl_arready_ipic_bridge;
                       s_axi_ctl_rdata               <= #TCQ s_axi_ctl_rdata_ipic_bridge;
                       if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
                         s_axi_ctl_rresp             <= #TCQ 2'b00;
                         s_axi_ctl_rvalid            <= #TCQ 'b0;
                       end
                       else begin
                         s_axi_ctl_rresp             <= #TCQ s_axi_ctl_rresp_ipic_bridge;
                         s_axi_ctl_rvalid            <= #TCQ s_axi_ctl_rvalid_ipic_bridge;
                       end
                       s_axi_ctl_rready_ipic_bridge  <= #TCQ s_axi_ctl_rready;
                       // Tie to Default values for read request
                       s_axi_ctl_awvalid_ipic_bridge <= #TCQ 'b0;
                       s_axi_ctl_awready             <= #TCQ 'b0;
                       s_axi_ctl_wstrb_ipic_bridge   <= #TCQ 'b0;
                       s_axi_ctl_wvalid_ipic_bridge  <= #TCQ 'b0;
                       s_axi_ctl_wready              <= #TCQ 'b0;
                       s_axi_ctl_bresp               <= #TCQ 'b0;
                       s_axi_ctl_bvalid              <= #TCQ 'b0;
                       s_axi_ctl_bready_ipic_bridge  <= #TCQ 'b0;
                     end
                   end
      RSVD_SPACE : begin
                     // Access to Reserved register space
                     if(request_type) begin // Write Request
                       // Assert *wready for 1 clock cycle if not given already
                       if(!ready_is_given) begin
                         s_axi_ctl_awready           <= #TCQ 'b1;
                         s_axi_ctl_wready            <= #TCQ 'b1;
                         ready_is_given              <= #TCQ 'b1;
                       end
                       if(s_axi_ctl_awready) begin
                         s_axi_ctl_awready           <= #TCQ 'b0;
                         s_axi_ctl_wready            <= #TCQ 'b0;
                       end
                       // Give response OKAY on the same clock cycle without any delay
                       if(s_axi_ctl_awready && s_axi_ctl_awvalid) begin
                         s_axi_ctl_bresp             <= #TCQ 'b0;
                         s_axi_ctl_bvalid            <= #TCQ 'b1;
                       end
                       // De-assert valid once user assertes corresponding ready signal at response channel
                       if(s_axi_ctl_bvalid && s_axi_ctl_bready) begin
                         s_axi_ctl_bvalid            <= #TCQ 'b0;
                       end
                       // Tie to default values in case of write request
                       s_axi_ctl_arready             <= #TCQ 'b0;
                       s_axi_ctl_rresp               <= #TCQ 'b0;
                       s_axi_ctl_rvalid              <= #TCQ 'b0;
                     end
                     else begin // Read Request
                       // Assert s_axi_ctl_arready signal for 1 clock cycle if not given already
                       if(!ready_is_given) begin
                         s_axi_ctl_arready           <= #TCQ 'b1;
                         ready_is_given              <= #TCQ 'b1;
                       end
                       if(s_axi_ctl_arready) begin
                         s_axi_ctl_arready           <= #TCQ 'b0;
                       end
                       // Give response OKAY on the same clock cycle without any delay
                       if(s_axi_ctl_arvalid && s_axi_ctl_arready) begin
                         s_axi_ctl_rresp             <= #TCQ 'b0;
                         s_axi_ctl_rdata             <= #TCQ 'b0;
                         s_axi_ctl_rvalid            <= #TCQ 'b1;
                       end
                       // De-assert valid once user assertes corresponding ready signal at response channel
                       if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
                         s_axi_ctl_rvalid            <= #TCQ 'b0;
                       end
                       // Tie to default values in case of write request
                       s_axi_ctl_awready             <= #TCQ 'b0;
                       s_axi_ctl_wready              <= #TCQ 'b0;
                       s_axi_ctl_bresp               <= #TCQ 'b0;
                       s_axi_ctl_bvalid              <= #TCQ 'b0;
                     end
                   end
      default :    begin
                     // AXI-Lite user interface output pins
                     s_axi_ctl_awready             <= #TCQ 1'b0;
                     s_axi_ctl_wready              <= #TCQ 1'b0;
                     s_axi_ctl_bresp               <= #TCQ 2'b00;
                     s_axi_ctl_bvalid              <= #TCQ 1'b0;
                     s_axi_ctl_arready             <= #TCQ 1'b0;
                     s_axi_ctl_rdata               <= #TCQ 32'b0;
                     s_axi_ctl_rresp               <= #TCQ 2'b00;
                     s_axi_ctl_rvalid              <= #TCQ 1'b0;
                     // AXI-Lite interface going towards Block config Bridge
                     s_axi_ctl_awaddr_blk_bridge   <= #TCQ 32'b0;
                     s_axi_ctl_awvalid_blk_bridge  <= #TCQ 1'b0;
                     s_axi_ctl_wdata_blk_bridge    <= #TCQ 32'b0;
                     s_axi_ctl_wstrb_blk_bridge    <= #TCQ 4'b0;
                     s_axi_ctl_wvalid_blk_bridge   <= #TCQ 1'b0;
                     s_axi_ctl_bready_blk_bridge   <= #TCQ 1'b0;
                     s_axi_ctl_araddr_blk_bridge   <= #TCQ 32'b0;
                     s_axi_ctl_arvalid_blk_bridge  <= #TCQ 1'b0;
                     s_axi_ctl_rready_blk_bridge   <= #TCQ 1'b0;
                     // AXI-Lite interface going towards Event Handler
                     s_axi_ctl_awaddr_ev_hndlr     <= #TCQ 32'b0;
                     s_axi_ctl_awvalid_ev_hndlr    <= #TCQ 1'b0;
                     s_axi_ctl_wdata_ev_hndlr      <= #TCQ 32'b0;
                     s_axi_ctl_wstrb_ev_hndlr      <= #TCQ 4'b0;
                     s_axi_ctl_wvalid_ev_hndlr     <= #TCQ 1'b0;
                     s_axi_ctl_bready_ev_hndlr     <= #TCQ 1'b0;
                     s_axi_ctl_araddr_ev_hndlr     <= #TCQ 32'b0;
                     s_axi_ctl_arvalid_ev_hndlr    <= #TCQ 1'b0;
                     s_axi_ctl_rready_ev_hndlr     <= #TCQ 1'b0;
                     // AXI-Lite interface going towards IPIC Bridge
                     s_axi_ctl_awaddr_ipic_bridge  <= #TCQ 32'b0;
                     s_axi_ctl_awvalid_ipic_bridge <= #TCQ 1'b0;
                     s_axi_ctl_wdata_ipic_bridge   <= #TCQ 32'b0;
                     s_axi_ctl_wstrb_ipic_bridge   <= #TCQ 4'b0;
                     s_axi_ctl_wvalid_ipic_bridge  <= #TCQ 1'b0;
                     s_axi_ctl_bready_ipic_bridge  <= #TCQ 1'b0;
                     s_axi_ctl_araddr_ipic_bridge  <= #TCQ 32'b0;
                     s_axi_ctl_arvalid_ipic_bridge <= #TCQ 1'b0;
                     s_axi_ctl_rready_ipic_bridge  <= #TCQ 1'b0;
                     // control signal
                     ready_is_given                <= #TCQ 'b0;
                     wait_for_idle                 <= #TCQ 'b0;
                   end
      endcase
      // Delayed Version of intr signals
      trn_lnk_up_d            <= #TCQ trn_lnk_up;
      trn_recrc_err_d         <= #TCQ trn_recrc_err;
      pl_received_hot_reset_d <= #TCQ pl_received_hot_reset;
      ctl_user_intr_d         <= #TCQ ctl_user_intr;
      // Capture Link Down status
      if(trn_lnk_up_d && (!trn_lnk_up)) begin
        interrupt_decode[0] <= #TCQ 1'b1;
      end
      // Capture ECRC Error status
      if((!trn_recrc_err_d) && trn_recrc_err) begin
        interrupt_decode[1] <= #TCQ 1'b1;
      end
      // Capture Streaming Error
      // coverage off
      if(trn_tstr && trn_terr_drop) begin
        interrupt_decode[2] <= #TCQ 1'b1;
      end
      // coverage on
      // Capture Hot Reset Received
      if((!pl_received_hot_reset_d) && pl_received_hot_reset) begin
        interrupt_decode[3] <= #TCQ 1'b1;
      end
      // Capture User Interrupt (for axi_pcie_mm_s bridge application only)
      for(i = 0; i < C_NUM_USER_INTR; i = i+1) begin
        if((!ctl_user_intr_d[i]) && ctl_user_intr[i]) begin
          interrupt_decode[20+i] <= #TCQ 1'b1;
        end
      end

      // Clear pl_directed_link_change_d after link speed/witdh change is done
            if(pl_ltssm_state == 6'h20 && pl_directed_link_change_d == 2'b10) begin // Recovery.Idle
        pl_directed_link_change_d <= #TCQ 2'b00;
      end
      else if ((pl_ltssm_state == 6'h15 || pl_ltssm_state == 6'h00 ) 
                && pl_directed_link_change_d != 2'b00) begin
        pl_directed_link_change_d <= #TCQ 2'b00;
      end
    end
  end // always
  
  end // endpoint
  endgenerate

endmodule
