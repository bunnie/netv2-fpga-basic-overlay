//----------------------------------------------------------------------------//
//  File: axi_pcie_v2_8_0_axi_enhanced_cfg_gen_sink.v                        //
//                                                                            //
//  Description:                                                              //
//                                                                            //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_enhanced_cfg                                                        //
//    axi_enhanced_cfg_gen_sink                                               //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

module axi_pcie_v2_8_0_axi_enhanced_cfg_gen_sink #(
  parameter C_DATA_WIDTH = 32,                       // AXI-S Interface Data Width
  parameter C_FAMILY = "X7",                         // Targeted FPGA family
  parameter C_ROOT_PORT = "FALSE",                   // PCIe block is in root port mode
  parameter C_COMP_TIMEOUT = 1'b0,                   // Configuration Completion Timeout Value 'b0 = 50us
                                                     // where 'b1 = 50ms
  parameter TCQ = 1,                                 // Clock-to-Q delay
  // Do not override parameters below this line
  parameter REM_WIDTH  = (C_DATA_WIDTH == 128) ? 2 : 1, // trem/rrem width
  parameter RBAR_WIDTH = (C_FAMILY == "X7") ? 8 : 7,    // trn_rbar_hit width
  parameter STRB_WIDTH = C_DATA_WIDTH / 8               // TSTRB width
  ) (
  
  //--------------------------------------------//
  // AXI-Lite Interface                         //
  //--------------------------------------------//

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

  //--------------------------------------------//
  // AXI-S Interface from RX Module             //
  //--------------------------------------------//
  input [C_DATA_WIDTH-1:0]   m_axis_cfg_tdata,       // AXI-S Data from RX module
  input                      m_axis_cfg_tvalid,      // Data is valid
  output reg                 m_axis_cfg_tready,      // Data Ready
  input [STRB_WIDTH-1:0]     m_axis_cfg_tstrb,       // Strobe byte enables
  input                      m_axis_cfg_tlast,       // Data Last
  input [21:0]               m_axis_cfg_tuser,       // AXI-S User Signals
  
  //--------------------------------------------//
  // AXI-S Interface to TX Module               //
  //--------------------------------------------//
  output reg [C_DATA_WIDTH-1:0] s_axis_cfg_tdata,       // AXI-S Data from RX module
  output reg                    s_axis_cfg_tvalid,      // Data is valid
  input                         s_axis_cfg_tready,      // Data Ready
  output reg [STRB_WIDTH-1:0]   s_axis_cfg_tstrb,       // Strobe byte enables
  output reg                    s_axis_cfg_tlast,       // Data Last
  output reg [3:0]              s_axis_cfg_tuser,       // AXI-S User Signals
 
  //--------------------------------------------//
  // Control Channel side-band signals          //
  //--------------------------------------------//
  input                      cfg_type,               // Configuration Type (0/1)
  input [15:0]               requester_id,           // Requester ID
  input                      is_msi,                 // MSI Interrupt
  input                      msg_req,                  // Message Request
  output reg                 msg_sent,                 // Acknowledgement for MsgD (Slot_Power_Limit Msg TLP)
  input [7:0]                slot_power_limit_value,   // Slot Power Limit Value fatched from Slot Cap Register
  input [1:0]                slot_power_limit_scale,   // Slot Power Limit Scale fatched from Slot Cap Register
  output reg [2:0]           cpl_status,             // Completion Status
  output reg                 cfg_timeout,            // Configuration Transaction Timeout
  //--------------------------------------------//
  // System I/Os                                //
  //--------------------------------------------//
  input                      com_sysrst,             // Reset Signal for the core
  input                      com_iclk,               // Interface Clock
  input                      com_cclk                // AXI Lite Clock
  );

  // wires
  wire [31:0]                rcvd_data_payload;      // Data Payload 1DW
  
  // internal registers
  reg                        request_in_progress;   // Request in progress flag
  reg                        rd_wr_bar_pending;     // Read/Write Bar
  reg [2:0]                  cpl_status_q;          // Completion status internal register
  reg [2:0]                  unique_id;             // Unique ID for Config TLP
  wire [2:0]                 cpl_unique_id;         // Unique ID retrieved from Config TLP
  reg [2:0]                  cpl_unique_id_d;       // Delayed version of Cpl unique ID
  reg                        sof_d;                 // Delayed Verion of sof

  // Configuration completion Timeout Timer
  integer                    timer_value;
  wire [31:0]                cpl_timeout_value;

  generate
  
  if(C_ROOT_PORT == "TRUE") begin : root_port
  
    assign cpl_timeout_value = (C_COMP_TIMEOUT == 1'b0) ? 32'd6250 : 32'd6250000;
  
    // Configuration completion timeout mechanism
    // Starts the timer once Config Rd/Wr TLP is fully received by the TX block for transmission
    // Assertion of cfg_timeout value in case of timeout will be of one cycle duration
    // Timer is for configuration requests _only_ and will not start for Message TLP transmission
    always@(posedge com_cclk)
    begin
      if(com_sysrst) begin
        timer_value                       <= #TCQ 32'b0;
        cfg_timeout                       <= #TCQ 1'b0;
      end
      else begin
        // configuration transaction timeout indication
        if(timer_value == cpl_timeout_value) begin
          cfg_timeout                     <= #TCQ 1'b1;
          timer_value                     <= #TCQ 32'b0; // Roll-over to 0 after timeout
        end
        // start the counter once it gets ready acknowledge from CFG interface for the request
        if(s_axis_cfg_tvalid && s_axis_cfg_tlast && s_axis_cfg_tready && (!msg_req)) begin
          timer_value                     <= #TCQ 32'b1; // Act as a trigger to start the timer
          cfg_timeout                     <= #TCQ 1'b0;
        end
        // Increment counter if request is in progress else reset it
        if(request_in_progress) begin
          if (timer_value != 'b0) begin
            timer_value                   <= #TCQ timer_value + 1'b1;
          end
          // Reset the cfg_timeout once acknowledged
          if((s_axi_ctl_bvalid && s_axi_ctl_bready) || (s_axi_ctl_rvalid && s_axi_ctl_rready)) begin
            cfg_timeout                     <= #TCQ 'b0;
          end
        end
        // IDLE state
        else begin
          timer_value                     <= #TCQ 'b0;
        end
      end
    end

    always@(posedge com_cclk)
    begin
      if(com_sysrst) begin
        s_axi_ctl_awready                 <= #TCQ 1'b0;
        s_axi_ctl_wready                  <= #TCQ 1'b0;
        s_axi_ctl_bvalid                  <= #TCQ 1'b0;
        s_axi_ctl_bresp                   <= #TCQ 2'b0;
        s_axi_ctl_arready                 <= #TCQ 1'b0;
        s_axi_ctl_rdata                   <= #TCQ 32'b0;
        s_axi_ctl_rvalid                  <= #TCQ 1'b0;
        s_axi_ctl_rresp                   <= #TCQ 2'b0;
        request_in_progress               <= #TCQ 1'b0;
        cpl_status                        <= #TCQ 'b0;
        msg_sent                          <= #TCQ 'b0;
      end
      else begin
        if(s_axi_ctl_awvalid && (!request_in_progress)) begin // Write Request
          s_axi_ctl_awready               <= #TCQ 1'b1;
          s_axi_ctl_wready                <= #TCQ 1'b1;
          request_in_progress             <= #TCQ 1'b1;
        end
        else if(s_axi_ctl_arvalid && (!request_in_progress)) begin // Read Request
          s_axi_ctl_arready               <= #TCQ 1'b1;
          request_in_progress             <= #TCQ 1'b1;
        end
        // Assert *ready signals for one clock cycle only
        if(s_axi_ctl_awready || s_axi_ctl_arready) begin
          s_axi_ctl_awready               <= #TCQ 1'b0;
          s_axi_ctl_wready                <= #TCQ 1'b0;
          s_axi_ctl_arready               <= #TCQ 1'b0;
        end
        
        // De-assert valid and request in progress flag once you get ready from user side
        if(s_axi_ctl_bvalid && s_axi_ctl_bready) begin
          s_axi_ctl_bvalid                <= #TCQ 1'b0;
          request_in_progress             <= #TCQ 1'b0;
          cpl_status                      <= #TCQ 'b0;
          msg_sent                        <= #TCQ 'b0;
          s_axi_ctl_bresp                 <= #TCQ 'b0;
        end
        if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
          s_axi_ctl_rvalid                <= #TCQ 1'b0;
          request_in_progress             <= #TCQ 1'b0;
          cpl_status                      <= #TCQ 'b0;
          s_axi_ctl_rresp                 <= #TCQ 'b0;
        end

        // Slot Power Limit TLP Tx request
        if(msg_req) begin 
          if(s_axis_cfg_tvalid && s_axis_cfg_tlast && s_axis_cfg_tready) begin
            s_axi_ctl_bvalid              <= #TCQ 1'b1;
            s_axi_ctl_bresp               <= #TCQ 2'b00;
            msg_sent                      <= #TCQ 'b1;
          end
        end
        // Config request
        else begin
          // Give SLVERR response if Config Timout happens
          if(timer_value == cpl_timeout_value) begin
            if(rd_wr_bar_pending) begin // read pending
              s_axi_ctl_rdata             <= #TCQ 'b0;
              s_axi_ctl_rvalid            <= #TCQ 1'b1;
              s_axi_ctl_rresp             <= #TCQ 2'b10; // SLVERR
            end
            else begin // write pending
              s_axi_ctl_bvalid            <= #TCQ 1'b1;
              s_axi_ctl_bresp             <= #TCQ 2'b10; // SLVERR
            end
          end
          else begin
            if(m_axis_cfg_tlast && m_axis_cfg_tvalid && m_axis_cfg_tready && (!is_msi) && 
                                                         (cpl_unique_id == unique_id - 3'b001)) begin
              // Drive Read response channel
              if(rd_wr_bar_pending) begin // read pending
                if(cpl_status_q == 3'b000) begin // Successful Completion
				  s_axi_ctl_rdata           <= #TCQ {rcvd_data_payload[7:0],rcvd_data_payload[15:8],
                                                     rcvd_data_payload[23:16],rcvd_data_payload[31:24]};
				  s_axi_ctl_rvalid          <= #TCQ 1'b1;
                  s_axi_ctl_rresp         <= #TCQ 2'b00;
                end
                else if(cpl_status_q == 3'b001) begin // UR Completion
					s_axi_ctl_rdata             <= #TCQ 32'hFFFF_FFFF;   // Return all F’s
					s_axi_ctl_rvalid            <= #TCQ 1'b1;
					s_axi_ctl_rresp             <= #TCQ 2'b00; // Respond with OK
				end
                else begin // SLVERR
				  s_axi_ctl_rdata           <= #TCQ {rcvd_data_payload[7:0],rcvd_data_payload[15:8],
                                                     rcvd_data_payload[23:16],rcvd_data_payload[31:24]};
				  s_axi_ctl_rvalid          <= #TCQ 1'b1;				
                  s_axi_ctl_rresp         <= #TCQ 2'b10;
                end
              end
              else begin // write pending
                // Drive Write response channel
                s_axi_ctl_bvalid          <= #TCQ 1'b1;
                if(cpl_status_q == 3'b000) begin // Successfull Completion
                  s_axi_ctl_bresp         <= #TCQ 2'b00;
                end
                else begin // SLVERR
                  s_axi_ctl_bresp         <= #TCQ 2'b10;
                end
              end
              // Drive completion status output pin
              cpl_status                  <= #TCQ cpl_status_q;
            end
          end
          // Purge the stale completions
        end
      end
    end

    if(C_DATA_WIDTH == 128) begin: rp_128_bit_intf
    reg                      unaligned_cpl_rcvd;    // Flag to indicate the unaligned TLP start
    
      // Capture the Data Payload (if any) and unique ID from Cpl[D] TLP
      // TLP can start unaligned and in this case the valid payload will be in location of m_axis_cfg_tdata[63:32]
      assign rcvd_data_payload = (m_axis_cfg_tstrb == 16'hFFFF) ? m_axis_cfg_tdata[127:96] :
                               (m_axis_cfg_tuser[21:17] == 5'b10011) ? m_axis_cfg_tdata[31:0] : m_axis_cfg_tdata[63:32];

      // capture unique ID from received Completion TLP
      assign cpl_unique_id     = (m_axis_cfg_tvalid && (m_axis_cfg_tuser[14:10] == 5'b10000)) ?
                                                                              m_axis_cfg_tdata[74:72] : cpl_unique_id_d;
      // In 128-bit Mode: CfgRd, CfgWr or Msg TLP will be sent on single clock cycle
      //                  Cpl or CplD for Cfg requests will be received on a single clock cycle
      always @(posedge com_iclk) begin
        if(com_sysrst) begin
          // reset AXI-S TX Interface signals
          s_axis_cfg_tdata              <= #TCQ 128'b0;
          s_axis_cfg_tvalid             <= #TCQ 1'b0;
          s_axis_cfg_tlast              <= #TCQ 1'b0;
          s_axis_cfg_tstrb              <= #TCQ 16'h0000;
          s_axis_cfg_tuser              <= #TCQ 4'b0;
          rd_wr_bar_pending             <= #TCQ 1'b0;
          m_axis_cfg_tready             <= #TCQ 1'b0;
          cpl_status_q                  <= #TCQ 3'b000;
          unique_id                     <= #TCQ 'b0;
          cpl_unique_id_d               <= #TCQ 'b0; 
          unaligned_cpl_rcvd            <= #TCQ 1'b0;
          sof_d                         <= #TCQ 'b0;
        end
        else begin
          if(s_axi_ctl_awvalid && s_axi_ctl_awready ) begin // Write Operation
            // Slot Power Limit Message TLP Tx request
            if(msg_req) begin
              s_axis_cfg_tdata  <= #TCQ {32'h0000_0000,// reserved field
                                    32'h0000_0000,     // Reserved field
                                    requester_id,      // Requester ID
                                    8'b0000_0000,      // TAG Field
                                    8'b01010000,       // Message Code
                                    3'b011,            // Packet Format
                                    5'b10100,          // Packet Type
                                    1'b0,              // Reserved
                                    3'b000,            // TC tied to '0'
                                    1'b0,              // Reserved
                                    1'b0,              // IDO bit. Hardwired to '0'
                                    1'b0,              // Reserved
                                    1'b0,              // TH bit. Hardwired to '0'
                                    1'b0,              // TD bit. Hardwired to '0'
                                    1'b0,              // Error Poisoned TLP bit Hardwired to '0'
                                    2'b00,             // RO and No-Snoop attribute is tied to '0'
                                    2'b00,             // AT field Tied to '0'
                                    10'b00_0000_001    // Data Payload Length
                                   };

              s_axis_cfg_tvalid         <= #TCQ 1'b1;
              s_axis_cfg_tlast          <= #TCQ 1'b0;
              s_axis_cfg_tstrb          <= #TCQ 16'hFFFF;
              rd_wr_bar_pending         <= #TCQ 1'b0;
            end
            // CfgWr TLP to AXI-S interface
            else begin
              s_axis_cfg_tdata  <= #TCQ {s_axi_ctl_wdata[7:0],// Data Payload[7:0]
                                    s_axi_ctl_wdata[15:8],   // Data Payload[15:8]
                                    s_axi_ctl_wdata[23:16],  // Data Payload[23:16]
                                    s_axi_ctl_wdata[31:24],  // Data Payload[31:24]
                                    s_axi_ctl_awaddr[27:20], // Bus number
                                    s_axi_ctl_awaddr[19:15], // Device number
                                    s_axi_ctl_awaddr[14:12], // Function number
                                    4'b0000,                 // Reserved field
                                    s_axi_ctl_awaddr[11:0], // Ext. reg number, Reg number, Byte address field
                                    requester_id,      // Requester ID
                                    5'b0000_0,         // TAG Field [8:3]
                                    unique_id,         // TAG Field [2:0] used for correct Cpl indentification
                                    4'b0000,           // Last DW byte enable. Hardwired to '0'
                                    s_axi_ctl_wstrb,   // First DW byte enable
                                    3'b010,            // Packet Format
                                    4'b0010,           // Packet Type [4:1]
                                    cfg_type,          // Packet Type [0]
                                    1'b0,              // Reserved
                                    3'b000,            // TC tied to '0'
                                    1'b0,              // Reserved
                                    1'b0,              // IDO bit. Hardwired to '0'
                                    1'b0,              // Reserved
                                    1'b0,              // TH bit. Hardwired to '0'
                                    1'b0,              // TD bit. Hardwired to '0'
                                    1'b0,              // Error Poisoned TLP bit Hardwired to '0'
                                    2'b00,             // RO and No-Snoop attribute is tied to '0'
                                    2'b00,             // AT field Tied to '0'
                                    10'b00_0000_001    // Data Payload Length
                                   };

              s_axis_cfg_tvalid         <= #TCQ 1'b1;
              s_axis_cfg_tlast          <= #TCQ 1'b1;
              s_axis_cfg_tstrb          <= #TCQ 16'hFFFF;
              rd_wr_bar_pending         <= #TCQ 1'b0;
              unique_id                 <= #TCQ unique_id + 1'b1;
            end
          end
          else if(s_axi_ctl_arvalid && s_axi_ctl_arready) begin // Read Operation
            // CfgRd TLP to AXI-S Interface
            s_axis_cfg_tdata  <= #TCQ {32'h0000_0000,     // Hardwired to '0' for CfgRd Request
                                  s_axi_ctl_araddr[27:20], // Bus number
                                  s_axi_ctl_araddr[19:15], // Device number
                                  s_axi_ctl_araddr[14:12], // Function number
                                  4'b0000,                 // Reserved field
                                  s_axi_ctl_araddr[11:0], // Ext. reg number, Reg number, Byte address field
                                  requester_id,      // Requester ID
                                  5'b0000_0,         // TAG Field [8:3]
                                  unique_id,         // TAG Field [2:0] used for correct Cpl indentification
                                  4'b0000,           // Last DW byte enable. Hardwired to '0'
                                  4'b1111,           // First DW byte enable
                                  3'b000,            // Packet Format
                                  4'b0010,           // Packet Type [4:1]
                                  cfg_type,          // Packet Type [0]
                                  1'b0,              // Reserved
                                  3'b000,            // TC tied to '0'
                                  1'b0,              // Reserved
                                  1'b0,              // IDO bit. Hardwired to '0'
                                  1'b0,              // Reserved
                                  1'b0,              // TH bit. Hardwired to '0'
                                  1'b0,              // TD bit. Hardwired to '0'
                                  1'b0,              // Error Poisoned TLP bit Hardwired to '0'
                                  2'b00,             // RO and No-Snoop attribute is tied to '0'
                                  2'b00,             // AT field Tied to '0'
                                  10'b00_0000_001    // Data Payload Length
                                 };
            s_axis_cfg_tvalid           <= #TCQ 1'b1;
            s_axis_cfg_tlast            <= #TCQ 1'b1;
            s_axis_cfg_tstrb            <= #TCQ 16'h0FFF;
            rd_wr_bar_pending           <= #TCQ 1'b1;
            unique_id                   <= #TCQ unique_id + 1'b1;
          end
          // Transmit second beat of Slot_Power_Limit Msg TLP
          if(s_axis_cfg_tvalid && s_axis_cfg_tready && msg_req) begin
            s_axis_cfg_tdata  <= #TCQ {32'h0000_0000,      // reserved field
                                    32'h0000_0000,         // reserved field
                                    32'h0000_0000,         // reserved field
                                    slot_power_limit_value,// Slot Power Limit Value
                                    6'b0,                  // Reserved field
                                    slot_power_limit_scale,// Slot Power Limit Scale
                                    16'b0                  // reserved field
                                   };

              s_axis_cfg_tvalid         <= #TCQ 1'b1;
              s_axis_cfg_tlast          <= #TCQ 1'b1;
              s_axis_cfg_tstrb          <= #TCQ 16'h000F;
              rd_wr_bar_pending         <= #TCQ 1'b0;
          end
          // De-assert tvalid, tstrobe and tlast signal of AXI-S TX interface after getting tready
          if(s_axis_cfg_tready && s_axis_cfg_tlast) begin
            s_axis_cfg_tvalid           <= #TCQ 1'b0;
            s_axis_cfg_tstrb            <= #TCQ 16'h0000;
            s_axis_cfg_tlast            <= #TCQ 1'b0;
          end
          
          if(m_axis_cfg_tvalid) begin // Received Completion for the request
            m_axis_cfg_tready           <= #TCQ 1'b1;
          end
          // Need to handle unaligned TLP start as well
          // De-assert tready of AXI-S RX interface
          if(m_axis_cfg_tready && m_axis_cfg_tlast) begin
            m_axis_cfg_tready           <= #TCQ 1'b0;
            // Purge the stale completion TLPs
            if(cpl_unique_id == (unique_id - 3'b001)) begin
              rd_wr_bar_pending         <= #TCQ 1'b0;
            end
          end
          
          // H1 contains completion status at its [15:13] location
          // H2 contains TAG field at its [15:8] location
          if(m_axis_cfg_tvalid && (m_axis_cfg_tuser[14:10] == 5'b10000)) begin // Aligned TLP received
            cpl_status_q                <= #TCQ m_axis_cfg_tdata[47:45];  // -- H2 H1 H0
                                                                          // D0 H2 H1 H0
            cpl_unique_id_d             <= #TCQ m_axis_cfg_tdata[74:72];
            unaligned_cpl_rcvd          <= #TCQ 1'b0;
          end
          else if(m_axis_cfg_tvalid && (m_axis_cfg_tuser[14:10] == 5'b11000)) begin // Un-Aligned TLP case
            cpl_status_q                <= #TCQ m_axis_cfg_tdata[111:109]; // H1 H0 XX XX
            unaligned_cpl_rcvd          <= #TCQ 1'b1;
          end
          if(m_axis_cfg_tvalid && unaligned_cpl_rcvd && (m_axis_cfg_tuser[21] == 1'b1)) begin // EOF at DW0/DW1
            cpl_unique_id_d               <= #TCQ m_axis_cfg_tdata[10:8];  // H2 at DW0 location
          end
            // Hold state
        end
        
      end //end always
      
    end // rp_128_bit_intf
    else if( C_DATA_WIDTH == 64) begin : rp_64_bit_intf
    // Register Address and Data to be transmitted on the last beat in 64-bit mode
    reg [31:0]                 s_axi_ctl_awaddr_d;
    reg [31:0]                 s_axi_ctl_wdata_d;
    reg [31:0]                 s_axi_ctl_araddr_d;
    reg [1:0]                  msg_beat_number;
    
      // Capture the Data Payload (if any) and unique ID from Cpl[D] TLP
      assign rcvd_data_payload = (m_axis_cfg_tstrb == 8'hFF) ? m_axis_cfg_tdata[63:32] : m_axis_cfg_tdata[31:0];

      // capture unique ID from received Completion TLP
      assign cpl_unique_id = (m_axis_cfg_tvalid && (!m_axis_cfg_tuser[14] && sof_d) && (!is_msi)) ?
                                                                               m_axis_cfg_tdata[10:8] : cpl_unique_id_d;
      // In 64-bit Mode: CfgRd, CfgWr or Msg TLP will be sent on two clock cycles
      //                 Cpl or CplD for Cfg requests will be received on two clock cycles
      always @(posedge com_iclk) begin
        if(com_sysrst) begin
          // reset AXI-S TX Interface signals
          s_axis_cfg_tdata              <= #TCQ 64'b0;
          s_axis_cfg_tvalid             <= #TCQ 1'b0;
          s_axis_cfg_tlast              <= #TCQ 1'b0;
          s_axis_cfg_tstrb              <= #TCQ 8'h00;
          s_axis_cfg_tuser              <= #TCQ 4'b0;
          rd_wr_bar_pending             <= #TCQ 1'b0;
          m_axis_cfg_tready             <= #TCQ 1'b0;
          cpl_status_q                  <= #TCQ 3'b000;
          unique_id                     <= #TCQ 'b0;
          cpl_unique_id_d               <= #TCQ 'b0;
          sof_d                         <= #TCQ 'b0;
          s_axi_ctl_awaddr_d            <= #TCQ 32'b0;
          s_axi_ctl_wdata_d             <= #TCQ 32'b0;
          s_axi_ctl_araddr_d            <= #TCQ 32'b0;
          msg_beat_number               <= #TCQ 2'b00;
        end
        else begin
          if(s_axi_ctl_awvalid && s_axi_ctl_awready) begin // Write Operation
            // Slot Power Limit Message TLP to AXI-S CFG interface
            if(msg_req) begin
              s_axis_cfg_tdata  <= #TCQ {requester_id, // Requester ID
                                    8'b0000_0000,      // TAG Field
                                    8'b01010000,       // Message Code
                                    3'b011,            // Packet Format
                                    5'b10100,          // Packet Type
                                    1'b0,              // Reserved
                                    3'b000,            // TC tied to '0'
                                    1'b0,              // Reserved
                                    1'b0,              // IDO bit. Hardwired to '0'
                                    1'b0,              // Reserved
                                    1'b0,              // TH bit. Hardwired to '0'
                                    1'b0,              // TD bit. Hardwired to '0'
                                    1'b0,              // Error Poisoned TLP bit Hardwired to '0'
                                    2'b00,             // RO and No-Snoop attribute is tied to '0'
                                    2'b00,             // AT field Tied to '0'
                                    10'b00_0000_001    // Data Payload Length
                                   };

              s_axis_cfg_tvalid         <= #TCQ 1'b1;
              s_axis_cfg_tlast          <= #TCQ 1'b0;
              s_axis_cfg_tstrb          <= #TCQ 8'hFF;
              rd_wr_bar_pending         <= #TCQ 1'b0;
              msg_beat_number           <= #TCQ 2'b01;
            end
            // CfgWr TLP to AXI-S CFG interface
            else begin
              s_axis_cfg_tdata  <= #TCQ {requester_id, // Requester ID
                                    5'b0000_0,         // TAG Field [8:3]
                                    unique_id,         // TAG Field [2:0] used for correct Cpl indentification
                                    4'b0000,           // Last DW byte enable. Hardwired to '0'
                                    s_axi_ctl_wstrb,   // First DW byte enable
                                    3'b010,            // Packet Format
                                    4'b0010,           // Packet Type [4:1]
                                    cfg_type,          // Packet Type [0]
                                    1'b0,              // Reserved
                                    3'b000,            // TC tied to '0'
                                    1'b0,              // Reserved
                                    1'b0,              // IDO bit. Hardwired to '0'
                                    1'b0,              // Reserved
                                    1'b0,              // TH bit. Hardwired to '0'
                                    1'b0,              // TD bit. Hardwired to '0'
                                    1'b0,              // Error Poisoned TLP bit Hardwired to '0'
                                    2'b00,             // RO and No-Snoop attribute is tied to '0'
                                    2'b00,             // AT field Tied to '0'
                                    10'b00_0000_001    // Data Payload Length
                                   };

              s_axis_cfg_tvalid         <= #TCQ 1'b1;
              s_axis_cfg_tlast          <= #TCQ 1'b0;
              s_axis_cfg_tstrb          <= #TCQ 8'hFF;
              rd_wr_bar_pending         <= #TCQ 1'b0;
              s_axi_ctl_wdata_d         <= #TCQ s_axi_ctl_wdata;
              s_axi_ctl_awaddr_d        <= #TCQ s_axi_ctl_awaddr;
              unique_id                 <= #TCQ unique_id + 1'b1;
            end
          end
          else if(s_axi_ctl_arvalid && s_axi_ctl_arready) begin // Read Operation
            // CfgRd TLP to AXI-S Interface
            s_axis_cfg_tdata  <= #TCQ {requester_id, // Requester ID
                                  5'b0000_0,         // TAG Field [8:3]
                                  unique_id,         // TAG Field [2:0] used for correct Cpl indentification
                                  4'b0000,           // Last DW byte enable. Hardwired to '0'
                                  4'b1111,           // First DW byte enable
                                  3'b000,            // Packet Format
                                  4'b0010,           // Packet Type [4:1]
                                  cfg_type,          // Packet Type [0]
                                  1'b0,              // Reserved
                                  3'b000,            // TC tied to '0'
                                  1'b0,              // Reserved
                                  1'b0,              // IDO bit. Hardwired to '0'
                                  1'b0,              // Reserved
                                  1'b0,              // TH bit. Hardwired to '0'
                                  1'b0,              // TD bit. Hardwired to '0'
                                  1'b0,              // Error Poisoned TLP bit Hardwired to '0'
                                  2'b00,             // RO and No-Snoop attribute is tied to '0'
                                  2'b00,             // AT field Tied to '0'
                                  10'b00_0000_001    // Data Payload Length
                                 };
            s_axis_cfg_tvalid           <= #TCQ 1'b1;
            s_axis_cfg_tlast            <= #TCQ 1'b0;
            s_axis_cfg_tstrb            <= #TCQ 8'hFF;
            rd_wr_bar_pending           <= #TCQ 1'b1;
            s_axi_ctl_araddr_d          <= #TCQ s_axi_ctl_araddr;
            unique_id                   <= #TCQ unique_id + 1'b1;
          end
          // Driver logic to transmit another TLP beat (Last Beat)
          if(s_axis_cfg_tready && s_axis_cfg_tvalid) begin // Last TLP Beat transfer
            if(rd_wr_bar_pending) begin // Read Operation
              s_axis_cfg_tdata          <= #TCQ {32'h0000_0000,       // No data for CfgRd TLP
                                                 s_axi_ctl_araddr_d[27:20], // Bus number
                                                 s_axi_ctl_araddr_d[19:15], // Device number
                                                 s_axi_ctl_araddr_d[14:12], // Function number
                                                 4'b0000,                   // Reserved field
                                                 s_axi_ctl_araddr_d[11:0]   // Ext. reg number, Reg number, Byte addr
                                                };
              s_axis_cfg_tlast          <= #TCQ 1'b1;
              s_axis_cfg_tstrb          <= #TCQ 8'h0F;
            end
            else begin // Write Operation
              if(msg_req) begin
                // Transmit second beat of Slot Power Limit Message TLP
                if (msg_beat_number == 2'b01) begin
                  s_axis_cfg_tdata        <= #TCQ {32'h0000_0000,
                                              32'h0000_0000          // Reserved field
                                              };
                  s_axis_cfg_tlast        <= #TCQ 1'b0;
                  s_axis_cfg_tstrb        <= #TCQ 8'hFF;
                  msg_beat_number         <= #TCQ 2'b10;
                end
                // Transmit third beat of Slot Power Limit Message TLP
                else begin
                  s_axis_cfg_tdata        <= #TCQ {32'h0000_0000,
                                              slot_power_limit_value,// Slot Power Limit Value
                                              6'b0,                  // Reserved field
                                              slot_power_limit_scale,// Slot Power Limit Scale
                                              16'b0                  // reserved field
                                              };
                  s_axis_cfg_tlast        <= #TCQ 1'b1;
                  s_axis_cfg_tstrb        <= #TCQ 8'h0F;
                  msg_beat_number         <= #TCQ 2'b00;
                end
              end
              // Transmit second beat of CfgWr TLP
              else begin
                s_axis_cfg_tdata        <= #TCQ {s_axi_ctl_wdata_d[7:0],   // Stored Data Payload[7:0]
                                                 s_axi_ctl_wdata_d[15:8],  // Stored Data Payload[15:8]
                                                 s_axi_ctl_wdata_d[23:16],  // Stored Data Payload[23:16]
                                                 s_axi_ctl_wdata_d[31:24],  // Stored Data Payload[31:24]
                                                 s_axi_ctl_awaddr_d[27:20], // Bus number
                                                 s_axi_ctl_awaddr_d[19:15], // Device number
                                                 s_axi_ctl_awaddr_d[14:12], // Function number
                                                 4'b0000,                   // Reserved field
                                                 s_axi_ctl_awaddr_d[11:0]   // Ext. reg number, Reg number, Byte addr
                                                };
                s_axis_cfg_tlast        <= #TCQ 1'b1;
                s_axis_cfg_tstrb        <= #TCQ 8'hFF;
              end
            end
          end

          // Tie to default values when transfer completes  
          if(s_axis_cfg_tready && s_axis_cfg_tlast) begin
            // De-assert tvalid, tstrobe and tlast signal of AXI-S TX interface
            s_axis_cfg_tvalid           <= #TCQ 1'b0;
            s_axis_cfg_tstrb            <= #TCQ 8'h00;
            s_axis_cfg_tlast            <= #TCQ 1'b0;
          end
          
          if(m_axis_cfg_tvalid) begin // Received Completion for the request
            m_axis_cfg_tready           <= #TCQ 1'b1;
          end
          // De-assert tready of AXI-S RX interface
          if(m_axis_cfg_tready && m_axis_cfg_tlast) begin
            m_axis_cfg_tready           <= #TCQ 1'b0;
            // Compare unique ID of Cpl TLP against the unique ID of the pending request
            if(cpl_unique_id == (unique_id - 3'b001)) begin
              rd_wr_bar_pending         <= #TCQ 1'b0;
            end
          end
          
          // H1 contains completion status at its [15:13] location
          if(m_axis_cfg_tvalid && (m_axis_cfg_tuser[14] == 1'b1)) begin  // SOF of TLP received
            cpl_status_q                <= #TCQ m_axis_cfg_tdata[47:45];   // H1 H0
          end
          else if(m_axis_cfg_tvalid && (!m_axis_cfg_tuser[14] && sof_d) && (!is_msi)) begin
            cpl_unique_id_d             <= #TCQ m_axis_cfg_tdata[10:8];
          end
            // Hold state
        end
        sof_d                           <= #TCQ m_axis_cfg_tuser[14]; // Delayed version of SOF
      end //end always
      
    end // rp_64_bit_intf
  end // root_port
  else begin : end_point
  
    // Tie to default values for EP cores
    assign cpl_timeout_value          = 32'd0;
    assign cpl_unique_id              = 3'b0;
    assign rcvd_data_payload          = 'b0;

    always@(posedge com_cclk)
    begin
      if(com_sysrst) begin
        timer_value                   <= #TCQ 32'b0;
        cfg_timeout                   <= #TCQ 1'b0;
        s_axi_ctl_awready             <= #TCQ 1'b0;
        s_axi_ctl_wready              <= #TCQ 1'b0;
        s_axi_ctl_bvalid              <= #TCQ 1'b0;
        s_axi_ctl_bresp               <= #TCQ 2'b0;
        s_axi_ctl_arready             <= #TCQ 1'b0;
        s_axi_ctl_rdata               <= #TCQ 32'b0;
        s_axi_ctl_rvalid              <= #TCQ 1'b0;
        s_axi_ctl_rresp               <= #TCQ 2'b0;
        request_in_progress           <= #TCQ 1'b0;
        cpl_status                    <= #TCQ 'b0;
        msg_sent                      <= #TCQ 'b0;
        s_axis_cfg_tdata              <= #TCQ {C_DATA_WIDTH{1'b0}};
        s_axis_cfg_tvalid             <= #TCQ 1'b0;
        s_axis_cfg_tlast              <= #TCQ 1'b0;
        s_axis_cfg_tstrb              <= #TCQ {STRB_WIDTH{1'b0}};
        s_axis_cfg_tuser              <= #TCQ 4'b0;
        rd_wr_bar_pending             <= #TCQ 1'b0;
        m_axis_cfg_tready             <= #TCQ 1'b0;
        cpl_status_q                  <= #TCQ 3'b000;
        unique_id                     <= #TCQ 'b0;
        cpl_unique_id_d               <= #TCQ 'b0;
        sof_d                         <= #TCQ 'b0;
      end
    end
  end // end_point
  endgenerate

endmodule
