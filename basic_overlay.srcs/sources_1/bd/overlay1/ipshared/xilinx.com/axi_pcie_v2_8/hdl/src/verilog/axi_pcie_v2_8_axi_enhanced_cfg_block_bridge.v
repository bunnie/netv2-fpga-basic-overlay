//----------------------------------------------------------------------------//
//  File: axi_pcie_v2_8_0_axi_enhanced_cfg_block_bridge.v           //
//                                                                            //
//  Description:                                                              //
//  AXI-Lite to Management interface Bridge                                   //
//  Contains a logic which converts AXI-Lite protocol based interface to      //
//  Management Interface of PCIe Hard Block                                   //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_enhanced_cfg                                                        //
//    axi_enhanced_cfg_block_bridge                                           //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

module axi_pcie_v2_8_0_axi_enhanced_cfg_block_bridge #(
  parameter C_FAMILY = "X7",                         // Targeted FPGA family
  parameter C_ROOT_PORT = "FALSE",                   // PCIe block is in root port mode
  parameter C_ADDR_WIDTH = 12,                       // Address Width
  parameter [31:0] C_BASEADDR = 32'hFFFF_FFFF,       // AXI-Lite Base Address
  parameter [31:0] C_HIGHADDR = 32'h0000_0000,       // AXI-Lite High Address
  parameter C_RP_BAR_HIDE = "FALSE",                 // Hide RP PCIe BAR (prevent CPU from assigning address to RP BAR)
  parameter TCQ = 1                                  // Clock-to-Q delay
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
  // Special Access Control Signals             //
  //--------------------------------------------//
  input                      cfg_mgmt_wr_rw1c_as_rw_i, // Write to RW1C bit
  input                      cfg_mgmt_wr_readonly_i,   // Write to RO bit
  
  //--------------------------------------------//
  // PCIe Configurtion Management Interface     //
  //--------------------------------------------//
  input                      cfg_mgmt_rd_wr_done,    // Read Write Done
  input [31:0]               cfg_mgmt_do,            // Data out
  output reg                 cfg_mgmt_rd_en,         // Read Enable
  output reg                 cfg_mgmt_wr_en,         // Write Enable
  output                     cfg_mgmt_wr_readonly,   // Write to Read only location
  output                     cfg_mgmt_wr_rw1c_as_rw, // Write to Read/Write 1 to clear location
  output reg [31:0]          cfg_mgmt_di,            // Data Input
  output reg [3:0]           cfg_mgmt_byte_en,       // Byte Enable
  output reg [9:0]           cfg_mgmt_dwaddr,        // Address
  
  //--------------------------------------------//
  // System I/Os                                //
  //--------------------------------------------//
  input                      com_sysrst,             // Reset Signal for the core
  input                      com_iclk,               // Interface Clock
  input                      com_cclk                // AXI Lite Clock

  );

  // internal registers
  reg                        request_in_progress;    // To make sure we don't capture the AXI-Lite
                                                     // read/write request again upon receiving the
                                                     // corresponding valid bit HIGH if any request
                                                     // is waiting for response

  reg                        rd_wr_bar_pending;      // Read/Write bar
  wire [31:0]                cfg_mgmt_do_i;          // AXI Lite Read Data
  wire [31:0]                s_axi_ctl_wdata_i;      // Data Input

  localparam                 IDLE           = 2'b00;
  localparam                 CLEAR_DW       = 2'b01;
  localparam                 CLEAR_BYTE_EN  = 2'b10;
  localparam                 CLEAR_BCR_BITS = 2'b11;
  reg [1:0]                  state;

  generate

  if(C_ROOT_PORT == "TRUE") begin : root_port_1
  
    //--------------------------------------------------------------------------//
    // AXI-Lite interface works on the com_cclk
    //
    // Read and write operations will be mutually exclusive
    //
    // Write Request:
    // Ready will be given to the AXI-Lite Write Address and Data channels once
    // it gets valid data and address. It will remain high for one clock cycle.
    // AXI-Lite Write Response channel will have valid high once it gets valid 
    // response from management interface and will be held till the time it gets 
    // s_axi_ctl_bready high from user side
    //
    // Read Request:
    // s_axi_ctl_arready will be asserted once it gets s_axi_ctl_arvalid high and
    // remains high for once clock cycle. This block will put valid data on
    // s_axi_ctl_rdata bus along with s_axi_ctl_rvalid high once it gets valid 
    // response from management interface through cfg_mgmt_rd_wr_done(HIGH)
    // Data along with valid signal will be held till the time it gets 
    // s_axi_ctl_rready high from the user side
    //--------------------------------------------------------------------------//

    if (C_RP_BAR_HIDE == "TRUE") begin
      assign cfg_mgmt_do_i = ( (cfg_mgmt_dwaddr == 10'h4 || cfg_mgmt_dwaddr == 10'h5) ? 32'h0000_0000 : cfg_mgmt_do );
    end else begin
      assign cfg_mgmt_do_i = cfg_mgmt_do;
    end

    always@(posedge com_cclk)
    begin
      if(com_sysrst) begin
        s_axi_ctl_awready      <= #TCQ 1'b0;
        s_axi_ctl_wready       <= #TCQ 1'b0;
        s_axi_ctl_bvalid       <= #TCQ 1'b0;
        s_axi_ctl_arready      <= #TCQ 1'b0;
        s_axi_ctl_rdata        <= #TCQ 32'b0;
        s_axi_ctl_rvalid       <= #TCQ 1'b0;
        s_axi_ctl_rresp        <= #TCQ 2'b00;
        s_axi_ctl_bresp        <= #TCQ 2'b00;
        request_in_progress    <= #TCQ 1'b0;
      end
      else begin
        if(s_axi_ctl_awvalid && (!request_in_progress)) begin // Write Request
          s_axi_ctl_awready    <= #TCQ 1'b1;
          s_axi_ctl_wready     <= #TCQ 1'b1;
          request_in_progress  <= #TCQ 1'b1;
        end
        else if(s_axi_ctl_arvalid && (!request_in_progress)) begin // Read Request
          s_axi_ctl_arready    <= #TCQ 1'b1;
          request_in_progress  <= #TCQ 1'b1;
        end
        
        // Drive the response as soon as we get the acknowlege with/without data (depends on the request type)
        if(cfg_mgmt_rd_wr_done && request_in_progress) begin
          if(rd_wr_bar_pending) begin // Drive Read data channel
            s_axi_ctl_rvalid   <= #TCQ 1'b1;
            s_axi_ctl_rdata    <= #TCQ cfg_mgmt_do_i;
          end
          else begin // Drive write response channel
            s_axi_ctl_bvalid   <= #TCQ 1'b1;
          end
        end
        
        // Ready output signals must be asserted for single clock cycle
        if(s_axi_ctl_awready || s_axi_ctl_arready) begin
          s_axi_ctl_awready    <= #TCQ 1'b0;
          s_axi_ctl_wready     <= #TCQ 1'b0;
          s_axi_ctl_arready    <= #TCQ 1'b0;
        end

        // De-assert response valid signal along with request in progress once
        // the transaction is received by the AXI-Lite slave sub-module
        if(s_axi_ctl_bvalid && s_axi_ctl_bready) begin
          s_axi_ctl_bvalid     <= #TCQ 1'b0;
          request_in_progress  <= #TCQ 1'b0;
        end
        if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
          s_axi_ctl_rvalid     <= #TCQ 1'b0;
          request_in_progress  <= #TCQ 1'b0;
        end

      end
    end

  // State Machine to Police AXI-Lite writes in case of Root Port mode
  // IO limit/Base, Memory Limit/Base, IP limit Upper-16/lower-16 bit 2,3,4 of Bridge Control register
  // are not allowed to be written by AXI-Lite (Although they all are RW in HardCore)
  // AXI-PCIE doesn't support these features
  always@(posedge com_cclk)
  begin
    if(com_sysrst) begin
      state <= #TCQ 2'b00;
    end
    else if(s_axi_ctl_awvalid && (!request_in_progress)) begin // Valid Write request
      case(s_axi_ctl_awaddr[11:0])
      12'h020, 12'h030 : state <= #TCQ CLEAR_DW;
      12'h01C          : state <= #TCQ CLEAR_BYTE_EN;
      12'h03C          : state <= #TCQ CLEAR_BCR_BITS;
      default          : state <= #TCQ IDLE;
      endcase
    end
  end

  end // root_port_1
  else begin : end_point_1
    //--------------------------------------------------------------------------//
    // AXI-Lite interface works on the com_cclk
    //
    // Read and write operations will be mutually exclusive
    //
    // Write Request:
    // SLVERR response will be returned in response to AXI-Lite write request on 
    // Core Configuration space
    //
    // Read Request:
    // s_axi_ctl_arready will be asserted once it gets s_axi_ctl_arvalid high and
    // remains high for once clock cycle. This block will put valid data on
    // s_axi_ctl_rdata bus along with s_axi_ctl_rvalid high once it gets valid 
    // response from management interface through cfg_mgmt_rd_wr_done(HIGH)
    // Data along with valid signal will be held till the time it gets 
    // s_axi_ctl_rready high from the user side
    //--------------------------------------------------------------------------//
    always@(posedge com_cclk)
    begin
      if(com_sysrst) begin
        s_axi_ctl_awready      <= #TCQ 1'b0;
        s_axi_ctl_wready       <= #TCQ 1'b0;
        s_axi_ctl_bvalid       <= #TCQ 1'b0;
        s_axi_ctl_arready      <= #TCQ 1'b0;
        s_axi_ctl_rdata        <= #TCQ 32'b0;
        s_axi_ctl_rvalid       <= #TCQ 1'b0;
        s_axi_ctl_rresp        <= #TCQ 2'b00;
        s_axi_ctl_bresp        <= #TCQ 2'b00;
        request_in_progress    <= #TCQ 1'b0;
        state                  <= #TCQ 2'b00;
      end
      else begin
        if(s_axi_ctl_awvalid && (!request_in_progress)) begin // Write Request
          s_axi_ctl_awready    <= #TCQ 1'b1;
          s_axi_ctl_wready     <= #TCQ 1'b1;
          request_in_progress  <= #TCQ 1'b1;
        end
        else if(s_axi_ctl_arvalid && (!request_in_progress)) begin // Read Request
          s_axi_ctl_arready    <= #TCQ 1'b1;
          request_in_progress  <= #TCQ 1'b1;
        end
        
        // Drive the response as soon as we get the acknowlege with/without data (depends on the request type)
        if(cfg_mgmt_rd_wr_done && request_in_progress) begin
          // Nam - added according to Manish's input        
          // coverage off -item b 1 -allfalse
          if(rd_wr_bar_pending) begin // Drive Read data channe
            s_axi_ctl_rvalid   <= #TCQ 1'b1;
            s_axi_ctl_rdata    <= #TCQ cfg_mgmt_do;
          end
        end
        
        // Ready output signals must be asserted for single clock cycle
        if(s_axi_ctl_awready || s_axi_ctl_arready) begin
          s_axi_ctl_awready    <= #TCQ 1'b0;
          s_axi_ctl_wready     <= #TCQ 1'b0;
          s_axi_ctl_arready    <= #TCQ 1'b0;
        end
        // Drive SLVERR in response for AXI-Lite write request
        if(s_axi_ctl_awvalid && s_axi_ctl_awready) begin
          s_axi_ctl_bvalid     <= #TCQ 1'b1;
          s_axi_ctl_bresp      <= #TCQ 2'b00; // OKAY
        end
        // De-assert response valid signal along with request in progress once
        // the transaction is received by the AXI-Lite slave sub-module
        if(s_axi_ctl_bvalid && s_axi_ctl_bready) begin
          s_axi_ctl_bvalid     <= #TCQ 1'b0;
          s_axi_ctl_bresp      <= #TCQ 2'b00;
          request_in_progress  <= #TCQ 1'b0;
        end
        if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
          s_axi_ctl_rvalid     <= #TCQ 1'b0;
          request_in_progress  <= #TCQ 1'b0;
        end

      end
    end
  end // end_point_1
  endgenerate

  //--------------------------------------------------------------------------//
  // Management interface works on the com_iclk
  // There can be at the max one Root Port instantiated in the core as of now.
  // Multiple RC are not supported
  //
  // Write Operation:
  // Write request will be driven on management interface once it gets
  // s_axi_ctl_awvalid, s_axi_ctl_wvalid, s_axi_ctl_awready and s_axi_ctl_wready
  // all asserted. cfg_mgmt_dwaddr, cfg_mgmt_di and cfg_mgmt_wr_en will retain 
  // their values until it gets cfg_mgmt_rd_wr_done signal high.
  //
  // Read Operation:
  // Read request will be driven on management interaface once it gets
  // s_axi_ctl_arvalid and s_axi_ctl_arready high. cfg_mgmt_dwaddr and
  // cfg_mgmt_rd_en will retain their values until it gets cfg_mgmt_rd_wr_done 
  // signal high.
  //--------------------------------------------------------------------------//
  
  // Generate Block is used for future in case multiple RP can be instantiated 
  // which is not supported as of now. In that case C_ADDR_WIDTH will be greater
  // than 12 and this block will have to perform ECAM Slicing 
  // (i.e. multiplexing/demultiplexing must be provided in order to route the 
  // AXI-Lite read/write request correctly so that each core gets addresses that 
  // correspond to its slice of ECAM window.
  generate
  
  assign cfg_mgmt_wr_rw1c_as_rw = cfg_mgmt_wr_rw1c_as_rw_i;
  assign cfg_mgmt_wr_readonly   = cfg_mgmt_wr_readonly_i;


  if (C_ROOT_PORT == "TRUE" && C_ADDR_WIDTH == 12) begin : root_port_12

    if (C_RP_BAR_HIDE == "TRUE") begin
      assign s_axi_ctl_wdata_i = ( (s_axi_ctl_awaddr[11:2] == 10'h4 || s_axi_ctl_awaddr[11:2] == 10'h5) ? 32'h0000_0000 : s_axi_ctl_wdata );
    end else begin
      assign s_axi_ctl_wdata_i = s_axi_ctl_wdata;
    end

    always@(posedge com_iclk)
    begin
      if (com_sysrst) begin
        cfg_mgmt_rd_en       <= #TCQ 1'b0;
        cfg_mgmt_wr_en       <= #TCQ 1'b0;
        cfg_mgmt_di          <= #TCQ 32'b0;
        cfg_mgmt_byte_en     <= #TCQ 4'b0;
        cfg_mgmt_dwaddr      <= #TCQ 10'b0;
        rd_wr_bar_pending    <= #TCQ 10'b0;
      end
      else begin
        if(s_axi_ctl_awvalid && s_axi_ctl_awready) begin // Write Operation
          cfg_mgmt_dwaddr    <= #TCQ s_axi_ctl_awaddr[11:2];
          cfg_mgmt_di        <= #TCQ (state == CLEAR_DW) ? 32'b0 : (state == CLEAR_BCR_BITS) ? 
                                        {s_axi_ctl_wdata_i[31:21],3'b000,s_axi_ctl_wdata_i[17:0]}: s_axi_ctl_wdata_i;
          cfg_mgmt_byte_en   <= #TCQ (state == CLEAR_BYTE_EN) ? {s_axi_ctl_wstrb[3:2],2'b00} : s_axi_ctl_wstrb;
          cfg_mgmt_wr_en     <= #TCQ 1'b1;
          rd_wr_bar_pending  <= #TCQ 1'b0;
        end
        else if (s_axi_ctl_arvalid && s_axi_ctl_arready) begin // Read Operation
          cfg_mgmt_dwaddr    <= #TCQ s_axi_ctl_araddr[11:2];
          cfg_mgmt_byte_en   <= #TCQ 4'b1111;
          cfg_mgmt_rd_en     <= #TCQ 1'b1;
          rd_wr_bar_pending  <= #TCQ 1'b1;
        end
        else if (cfg_mgmt_rd_wr_done) begin // Release read or write control pins
          cfg_mgmt_wr_en     <= #TCQ 1'b0;
          cfg_mgmt_rd_en     <= #TCQ 1'b0;
          rd_wr_bar_pending  <= #TCQ 1'b0;
        end
      end
    end
  end // root_port_12
  
  else if(C_ROOT_PORT == "FALSE") begin : end_point
    always@(posedge com_iclk)
    begin
      if (com_sysrst) begin
        cfg_mgmt_rd_en       <= #TCQ 1'b0;
        cfg_mgmt_wr_en       <= #TCQ 1'b0;
        cfg_mgmt_di          <= #TCQ 32'b0;
        cfg_mgmt_byte_en     <= #TCQ 4'b0;
        cfg_mgmt_dwaddr      <= #TCQ 10'b0;
        rd_wr_bar_pending    <= #TCQ 10'b0;
      end
      else begin
        if (s_axi_ctl_arvalid && s_axi_ctl_arready) begin // Read Operation
          cfg_mgmt_dwaddr    <= #TCQ s_axi_ctl_araddr[11:2];
          cfg_mgmt_byte_en   <= #TCQ 4'b1111;
          cfg_mgmt_rd_en     <= #TCQ 1'b1;
          rd_wr_bar_pending  <= #TCQ 1'b1;
        end
        else if (cfg_mgmt_rd_wr_done) begin // Release read or write control pins
          cfg_mgmt_rd_en     <= #TCQ 1'b0;
          rd_wr_bar_pending  <= #TCQ 1'b0;
        end
      end
    end
  end // end_point
  // coverage off
  else begin
    // Provision for the future support (Multiple RP instantiation)
  end
  // coverage on

  endgenerate

endmodule
