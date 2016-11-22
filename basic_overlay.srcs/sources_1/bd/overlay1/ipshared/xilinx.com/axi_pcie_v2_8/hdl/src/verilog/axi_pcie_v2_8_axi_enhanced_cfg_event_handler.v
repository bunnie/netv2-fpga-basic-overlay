//----------------------------------------------------------------------------//
//  File: axi_pcie_v2_8_0_axi_enhanced_cfg_event_handler.v          //
//                                                                            //
//  Description:                                                              //
//                                                                            //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_enhanced_cfg                                                        //
//    axi_enhanced_cfg_event_handler                                          //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

module axi_pcie_v2_8_0_axi_enhanced_cfg_event_handler #(
  parameter C_DATA_WIDTH = 32,                       // AXI-S Interface Data Width
  parameter C_FAMILY = "X7",                         // Targeted FPGA family
  parameter C_ROOT_PORT = "FALSE",                   // PCIe block is in root port mode
  parameter C_VSEC_CAP_ADDR = 12'h000,               // DWORD address of start of VSEC Header
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
  // Status Interface from PCIe Block           //
  //--------------------------------------------//
  input [15:0]               cfg_msg_data,                   // Message Requester ID
  input                      cfg_msg_received,               // Indication of Message received
  input                      cfg_msg_received_err_cor,       // Correctable Error received
  input                      cfg_msg_received_err_non_fatal, // Non-Fatal Error received
  input                      cfg_msg_received_err_fatal,     // Fatal Error received
  input                      cfg_msg_received_assert_inta,   // INTA Assert
  input                      cfg_msg_received_assert_intb,   // INTB Assert
  input                      cfg_msg_received_assert_intc,   // INTC Assert
  input                      cfg_msg_received_assert_intd,   // INTD Assert
  input                      cfg_msg_received_deassert_inta, // INTA Dessert
  input                      cfg_msg_received_deassert_intb, // INTB Dessert
  input                      cfg_msg_received_deassert_intc, // INTC Dessert
  input                      cfg_msg_received_deassert_intd, // INTD Dessert

  // Control pins
  input                      trn_lnk_up,             // TRN Link Up
  output                     RP_bridge_en,           // RP Bridge Enable bit
  input [5:0]                pl_ltssm_state,         // LTSSM State

  //--------------------------------------------//
  // Control Channel side-band signals          //
  //--------------------------------------------//
  input                      is_msi,                 // MSI is present on the AXI-S Interface
  output reg [63:0]          msi_base_addr,          // MSI Base Address
  output reg                 corr_err_rcvd,          // Received Correctable Error
  output reg                 non_fatal_err_rcvd,     // Received Non-Fatal Error
  output reg                 fatal_err_rcvd,         // Received Fatal Error
  output reg                 intx_msg_rcvd,          // Received INTx Message
  output reg                 msi_msg_rcvd,           // Received MSI Message
  output wire                intr_fifo_not_empty_o,  // Interrupt FIFO not empty flag
  output wire                corr_err_in_fifo,       // Correctable error is present inside Error FIFO
  output wire                non_fatal_err_in_fifo,  // Non-Fatal error is present inside Error FIFO
  output wire                fatal_err_in_fifo,      // Fatal error is present inside Error FIFO
  
  //--------------------------------------------//
  // IRQ                                        //
  //--------------------------------------------//
  
  input                      p_ctl_intr,
  output                     MSI_IRQ_O,
  output reg                 MSI_IRQ_SEL_O,

  //--------------------------------------------//
  // System I/Os                                //
  //--------------------------------------------//
  input                      com_sysrst,             // Reset Signal for the core
  input                      com_iclk,               // Interface Clock
  input                      com_cclk                // AXI Lite Clock
  );

  reg                        request_in_progress;    // To make sure we don't capture the AXI-Lite
                                                     // read/write request again upon receiving the
                                                     // corresponding valid bit HIGH if any request
                                                     // is waiting for response
  reg                        rd_wr_bar_pending;      // Read/Write bar flag
  
  // generate block to differentiate the module's role in case of EndPoint and Root Port
  generate

  if(C_ROOT_PORT == "FALSE") begin: block_is_ep
  
    // Register space in this module is specific to RP configuration
    // Write to these registers in case of EP will have no effect
    // Read to these registers in case of EP will give always 'b0 on data bus along with OKAY response

    // initialize the wires    
    assign RP_bridge_en = 'b0;

    assign intr_fifo_not_empty_o = 1'b0;
    assign corr_err_in_fifo = 1'b0;
    assign non_fatal_err_in_fifo = 1'b0;
    assign fatal_err_in_fifo = 1'b0;

    always@(posedge com_cclk)
    begin
      if(com_sysrst) begin
        s_axi_ctl_awready         <= #TCQ 'b0;
        s_axi_ctl_wready          <= #TCQ 'b0;
        s_axi_ctl_bresp           <= #TCQ 'b0;
        s_axi_ctl_bvalid          <= #TCQ 'b0;
        s_axi_ctl_arready         <= #TCQ 'b0;
        s_axi_ctl_rdata           <= #TCQ 32'b0;
        s_axi_ctl_rresp           <= #TCQ 'b0;
        s_axi_ctl_rvalid          <= #TCQ 'b0;
        m_axis_cfg_tready         <= #TCQ 'b0;
        request_in_progress       <= #TCQ 'b0;
        rd_wr_bar_pending         <= #TCQ 'b0;
        // Side-band signals will be tied to 0 for EndPoint configuration
        msi_base_addr             <= #TCQ 64'b0;
        corr_err_rcvd             <= #TCQ 'b0;
        non_fatal_err_rcvd        <= #TCQ 'b0;
        fatal_err_rcvd            <= #TCQ 'b0;
        intx_msg_rcvd             <= #TCQ 'b0;
        msi_msg_rcvd              <= #TCQ 'b0;
      end
      else begin
        if(!request_in_progress) begin
          if(s_axi_ctl_awvalid) begin  // Write request
            s_axi_ctl_awready     <= #TCQ 'b1;
            s_axi_ctl_wready      <= #TCQ 'b1;
            request_in_progress   <= #TCQ 'b1;
            rd_wr_bar_pending     <= #TCQ 'b0;
          end
          else if(s_axi_ctl_arvalid) begin // Read Request
            s_axi_ctl_arready     <= #TCQ 'b1;
            request_in_progress   <= #TCQ 'b1;
            rd_wr_bar_pending     <= #TCQ 'b1;
          end
        end
        else begin
          if(rd_wr_bar_pending) begin // Read Request is pending
            s_axi_ctl_rdata       <= #TCQ 'b0;
            s_axi_ctl_rvalid      <= #TCQ 'b1;
          end
          else begin // Write request is pending
            s_axi_ctl_bvalid      <= #TCQ 'b1;
          end
        end  

        // Ready output signals must be asserted for single clock cycle
        if(s_axi_ctl_awready || s_axi_ctl_arready) begin
          s_axi_ctl_awready      <= #TCQ 1'b0;
          s_axi_ctl_wready        <= #TCQ 1'b0;
          s_axi_ctl_arready       <= #TCQ 1'b0;
        end
        // De-assert response valid signal along with request in progress once
        // the transaction is received by the AXI-Lite slave sub-module
        if(s_axi_ctl_bvalid && s_axi_ctl_bready) begin
          s_axi_ctl_bvalid        <= #TCQ 1'b0;
          request_in_progress     <= #TCQ 1'b0;
          rd_wr_bar_pending       <= #TCQ 1'b0;
        end
        if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
          s_axi_ctl_rvalid        <= #TCQ 1'b0;
          request_in_progress     <= #TCQ 1'b0;
          rd_wr_bar_pending       <= #TCQ 1'b0;
        end

      end
    end
  end  // block_is_ep
  else begin: block_is_rp
    // All registers present inside this sub-module are RP specific
    localparam               PTR_WIDTH = 4;
    localparam               FIFO_DEPTH = (1 << PTR_WIDTH);
    reg [31:0]               root_port_status_control;
    reg                      RP_bridge_en_tmp;
    reg [31:0]               root_port_error_fifo_read [FIFO_DEPTH-1:0];
    reg [31:0]               root_port_interrupt_fifo_read1 [FIFO_DEPTH-1:0];
    reg [31:0]               root_port_interrupt_fifo_read2 [FIFO_DEPTH-1:0];
        
    reg [31:0]               root_port_irq_fifo_read1;
    reg [31:0]               root_port_irq_fifo_read2;
    reg                      root_port_irq_fifo_read2_err;
    reg [15:0]               root_port_irq_fifo_read2_smpled;
    reg [15:0]               r_msi_irq_num;
    reg                      first_irq_fifo_read2_err;
    reg                      trig_wr_root_port_irq_fifo_read2;
    reg [PTR_WIDTH-1:0]      irq_fifo_read_ptr;
    reg [PTR_WIDTH-1:0]      irq_fifo_read_ptr_dlyd;
    reg [PTR_WIDTH-1:0]      irq_fifo_write_ptr;
    reg [PTR_WIDTH-1:0]      irq_fifo_write_ptr_dlyd;
    wire [31:0]              irq_status_reg;
    reg [31:0]               irq_mask_reg;
    reg [31:0]               irq_clr_reg;
    wire [31:0]              msi_irq_overflow_reg;
    wire [31:0]              msi_irq_underrun_reg;
    reg                      irq_clr;

    // Rd/Wr Pointers to FIFOs
    reg [PTR_WIDTH-1:0]      err_fifo_rd_ptr;
    reg [PTR_WIDTH-1:0]      err_fifo_wr_ptr;
    reg [PTR_WIDTH  :0]      err_fifo_ptr_diff;
    reg [PTR_WIDTH-1:0]      intr_fifo_rd_ptr;
    reg [PTR_WIDTH-1:0]      intr_fifo_wr_ptr;
    reg [PTR_WIDTH  :0]      intr_fifo_ptr_diff;
    // Flags
    wire                     err_fifo_not_empty;
    wire                     intr_fifo_not_empty;
    wire                     err_fifo_full;
    wire                     intr_fifo_full;
    // Local signals to capture MSI related info....
    reg [15:0]               msi_req_id;
    reg [10:0]               msi_addr;
    reg                      is_4dw_header;
    reg                      tlp_rcv_in_progress;
    reg                      trn_lnk_up_d;
    reg                      rd_wr_done;

    // Corr/Non-Fatal/Fatal Error counters
    reg [3:0]                corr_err_cntr;
    reg [3:0]                non_fatal_err_cntr;
    reg [3:0]                fatal_err_cntr;

    reg                      corr_err_incr;
    reg                      corr_err_decr;
    reg                      non_fatal_err_incr;
    reg                      non_fatal_err_decr;
    reg                      fatal_err_incr;
    reg                      fatal_err_decr;
    wire [5:0]               pl_ltssm_state_int;

    // Transmit Hot Reset to the DS device
    assign RP_bridge_en = root_port_status_control[0];

    assign intr_fifo_not_empty_o = intr_fifo_not_empty;
    assign corr_err_in_fifo = (corr_err_cntr == 4'b0000) ? 1'b0 : 1'b1;
    assign non_fatal_err_in_fifo = (non_fatal_err_cntr == 4'b0000) ? 1'b0 : 1'b1;
    assign fatal_err_in_fifo = (fatal_err_cntr == 4'b0000) ? 1'b0 : 1'b1;
    assign pl_ltssm_state_int = pl_ltssm_state;
    
    assign MSI_IRQ_O = (|(~irq_mask_reg & irq_status_reg));

    // Logic to read/write the register bank through AXI-Lite interface
    always@(posedge com_cclk) begin
      if(com_sysrst) begin
        // Reset the registers
          s_axi_ctl_awready         <= #TCQ 'b0;
          s_axi_ctl_wready          <= #TCQ 'b0;
          s_axi_ctl_arready         <= #TCQ 'b0;
          s_axi_ctl_bvalid          <= #TCQ 'b0;
          s_axi_ctl_rvalid          <= #TCQ 'b0;
          request_in_progress       <= #TCQ 'b0;
          rd_wr_bar_pending         <= #TCQ 'b0;
          root_port_status_control  <= #TCQ 'b0;
          RP_bridge_en_tmp          <= #TCQ 'b0;
          msi_base_addr             <= #TCQ 64'b0;
          err_fifo_rd_ptr           <= #TCQ 'b0;
          intr_fifo_rd_ptr          <= #TCQ 'b0;
          s_axi_ctl_rdata           <= #TCQ 'b0;
          s_axi_ctl_rresp           <= #TCQ 'b0;
          s_axi_ctl_bresp           <= #TCQ 'b0;
          trn_lnk_up_d              <= #TCQ 1'b0;
          rd_wr_done                <= #TCQ 1'b0;
          corr_err_decr             <= #TCQ 1'b0;
          non_fatal_err_decr        <= #TCQ 1'b0;
          fatal_err_decr            <= #TCQ 1'b0;
          irq_clr                   <= #TCQ 1'b0;
          irq_clr_reg               <= #TCQ 'b0;
          irq_mask_reg              <= #TCQ 'b1;
      end
      else begin
        irq_clr <= #TCQ 1'b0;
        if(!request_in_progress) begin
          if(s_axi_ctl_awvalid) begin // Write request
            s_axi_ctl_awready         <= #TCQ 1'b1;
            s_axi_ctl_wready          <= #TCQ 1'b1;
            request_in_progress       <= #TCQ 1'b1;
            rd_wr_bar_pending         <= #TCQ 'b0;
          end
          else if(s_axi_ctl_arvalid) begin // Read Request
            s_axi_ctl_arready         <= #TCQ 1'b1;
            request_in_progress       <= #TCQ 1'b1;
            rd_wr_bar_pending         <= #TCQ 'b1;
          end
        end
        else if(!rd_wr_done) begin // Request is in progress
          rd_wr_done                  <= #TCQ 1'b1;
          if(rd_wr_bar_pending) begin // Read request is pending
            s_axi_ctl_rvalid          <= #TCQ 1'b1;
            case(s_axi_ctl_araddr[11:0])
            // Root Port Status/Control
            (C_VSEC_CAP_ADDR + 12'h20) : begin
                                         s_axi_ctl_rdata          <= #TCQ root_port_status_control;
                                         end
            // Root Port MSI Base 1
            (C_VSEC_CAP_ADDR + 12'h24) : begin
                                           s_axi_ctl_rdata        <= #TCQ msi_base_addr[63:32];
                                         end
            // Root Port MSI Base 2
            (C_VSEC_CAP_ADDR + 12'h28) : begin
                                           s_axi_ctl_rdata        <= #TCQ msi_base_addr[31:0];
                                         end
            // Root Port Error FIFO Read
            (C_VSEC_CAP_ADDR + 12'h2C) : begin
                                           if(err_fifo_not_empty) begin
                                             s_axi_ctl_rdata        <= #TCQ root_port_error_fifo_read[err_fifo_rd_ptr];
                                           end
                                           else begin
                                             s_axi_ctl_rdata[17:0]  <= #TCQ 
                                                                        root_port_error_fifo_read[err_fifo_rd_ptr][17:0];
                                             s_axi_ctl_rdata[18]    <= #TCQ 1'b0; // Error Valid = 1'b0 i.e. Failure
                                             s_axi_ctl_rdata[31:19] <= #TCQ 
                                                                        root_port_error_fifo_read[err_fifo_rd_ptr][31:19];
                                           end
                                         end
              // Root Port Interrupt FIFO Read 1 [0x0] / Root Port Interrupt Status [0x1] / Root Port Interrupt Overflow [0x2]
              (C_VSEC_CAP_ADDR + 12'h30): begin
                                            if ((root_port_status_control[1] == 1) && (root_port_status_control[2] == 0)) // [0x1]
                                            begin
                                              s_axi_ctl_rdata <= #TCQ irq_status_reg[31:0];
                                            end
                                            else if ((root_port_status_control[1] == 0) && (root_port_status_control[2] == 0)) // [0x0]
                                            begin
                                            if (intr_fifo_not_empty) 
                                            begin
                                              s_axi_ctl_rdata <= #TCQ root_port_interrupt_fifo_read1[intr_fifo_rd_ptr];
                                            end
                                            else
                                            begin
                                              s_axi_ctl_rdata[30:0] <= #TCQ root_port_interrupt_fifo_read1[intr_fifo_rd_ptr][30:0];
                                              s_axi_ctl_rdata[31]   <= #TCQ 1'b0; // Interrupt Valid = 1'b0 i.e. Failure
                                            end
                                          end
                                            else if ((root_port_status_control[1] == 0) && (root_port_status_control[2] == 1)) // [0x2]
                                            begin
                                              s_axi_ctl_rdata <= #TCQ msi_irq_overflow_reg[31:0];
                                            end
                                            else if ((root_port_status_control[1] == 1) && (root_port_status_control[2] == 1)) // [0x3]
                                            begin
                                              s_axi_ctl_rdata <= #TCQ 32'hAAAAAAAA;
                                            end
                                          end
                  
              // Root Port Interrupt FIFO Read 2 [0x0] / Root Port Interrupt Mask [0x1] / Root Port Interrupt Underrun [0x2]
              (C_VSEC_CAP_ADDR + 12'h34): begin
                                            if ((root_port_status_control[1] == 1) && (root_port_status_control[2] == 0)) // [0x1]
                                            begin
                                              s_axi_ctl_rdata <= #TCQ irq_mask_reg[31:0];
                                            end
                                            else if ((root_port_status_control[1] == 0) && (root_port_status_control[2] == 0)) // [0x0]
                                            begin
                                            s_axi_ctl_rdata <= #TCQ root_port_interrupt_fifo_read2[intr_fifo_rd_ptr];
                                          end
                                            else if ((root_port_status_control[1] == 0) && (root_port_status_control[2] == 1)) // [0x2]
                                            begin
                                              s_axi_ctl_rdata <= #TCQ msi_irq_underrun_reg[31:0];
                                            end
                                            else if ((root_port_status_control[1] == 1) && (root_port_status_control[2] == 1)) // [0x3]
                                            begin
                                              s_axi_ctl_rdata <= #TCQ 32'hAAAAAAAA;
                                            end
                                          end
                                          
              /* // Root Port Interrupt Status
              (C_VSEC_CAP_ADDR + 12'h38): begin
                                            s_axi_ctl_rdata <= #TCQ irq_status_reg[31:0];
                                          end
                                          
              // Root Port Interrupt Mask
              (C_VSEC_CAP_ADDR + 12'h3C): begin
                                            s_axi_ctl_rdata <= #TCQ irq_mask_reg[31:0];
                                          end
                                          
              // Root Port Interrupt Overflow
              (C_VSEC_CAP_ADDR + 12'h40): begin
                                            s_axi_ctl_rdata <= #TCQ msi_irq_overflow_reg[31:0];
                                          end
                                          
              // Root Port Interrupt Underrun
              (C_VSEC_CAP_ADDR + 12'h44): begin
                                            s_axi_ctl_rdata <= #TCQ msi_irq_underrun_reg[31:0];
                                          end */
                    
              default                   : begin
                                            s_axi_ctl_rdata <= #TCQ 32'h0; //Reserved registers
                                          end
					 
                       endcase
          end
          else 
	  begin // Write Request is pending
          
	      s_axi_ctl_bvalid            <= #TCQ 1'b1;
            case(s_axi_ctl_awaddr[11:0])
            // Root Port Status/Control
            (C_VSEC_CAP_ADDR + 12'h20) : begin
                                         // Transmit Hot reset
                                         root_port_status_control[0]     <= #TCQ s_axi_ctl_wdata[0];
					 RP_bridge_en_tmp                <= #TCQ s_axi_ctl_wdata[0];
                                         // Error FIFO Overflow RW1C Bit
                                        root_port_status_control[17]    <= #TCQ (~s_axi_ctl_wdata[17] & root_port_status_control[17]);
                                         // Interrupt FIFO Overflow RW1C Bit
                                         root_port_status_control[19]    <= #TCQ (~s_axi_ctl_wdata[19] & root_port_status_control[19]);
                                         // Reserved Options
//                                         root_port_status_control[2:1] <= #TCQ s_axi_ctl_wdata[2:1];
                                         root_port_status_control[2:1] <= #TCQ 2'b0;
                                         end
            // Root Port MSI Base 1
            (C_VSEC_CAP_ADDR + 12'h24) : begin
                                           msi_base_addr[63:32]          <= #TCQ s_axi_ctl_wdata;
                                         end
            // Root Port MSI Base 2
            (C_VSEC_CAP_ADDR + 12'h28) : begin
                                           msi_base_addr[31:12]          <= #TCQ s_axi_ctl_wdata[31:12];
                                         end
            // Root Port Error FIFO Read
            (C_VSEC_CAP_ADDR + 12'h2C) : begin
                                           // Write to this FIFO will clear the FIFO location
                                           if(err_fifo_not_empty) begin
                                             err_fifo_rd_ptr               <= #TCQ err_fifo_rd_ptr + 1'b1;

                                             // Correctable Error
                                             if (root_port_error_fifo_read[err_fifo_rd_ptr][17:16] == 2'b00) begin
                                               corr_err_decr               <= #TCQ 1'b1;
                                             end
                                             
                                             // Non-Fatal Error
                                             else if(root_port_error_fifo_read[err_fifo_rd_ptr][17:16] == 2'b01) begin
                                               non_fatal_err_decr          <= #TCQ 1'b1;
                                             end
                                             
                                             // Fatal Error
                                             else begin
                                               fatal_err_decr              <= #TCQ 1'b1;
                                             end
                                           end
                                         end
              // Root Port Interrupt FIFO Read 1 [0x0] / Root Port Interrupt Clear [0x1] / Root Port Interrupt Underrun [0x2] 
              (C_VSEC_CAP_ADDR + 12'h30): begin
                                            if ((root_port_status_control[1] == 1) && (root_port_status_control[2] == 0)) // [0x1]
                                            begin
                                              irq_clr_reg <= #TCQ s_axi_ctl_wdata[31:0];
                                              irq_clr     <= #TCQ 1'b1;
                                            end
                                            else if ((root_port_status_control[1] == 0) && (root_port_status_control[2] == 0)) // [0x0]
                                              begin
                                            // Write to this FIFO will clear the Interrupt FIFO1 and 2 location
                                            if (intr_fifo_not_empty)
                                            begin
                                              intr_fifo_rd_ptr <= #TCQ intr_fifo_rd_ptr + 1'b1;
                                            end
                                          end
                                            else if ((root_port_status_control[1] == 0) && (root_port_status_control[2] == 1)) // [0x2]
                                            begin
                                              irq_clr_reg <= #TCQ irq_clr_reg;
                                              irq_clr     <= #TCQ irq_clr;
                                            end
                                            else if ((root_port_status_control[1] == 1) && (root_port_status_control[2] == 1)) // [0x3]
                                            begin
                                              irq_clr_reg <= #TCQ irq_clr_reg;
                                              irq_clr     <= #TCQ irq_clr;
                                            end
                                          end

              // Root Port Interrupt FIFO Read 2 [0x0] / Root Port Interrupt Mask [0x1] / Root Port Interrupt Underrun [0x2]
              (C_VSEC_CAP_ADDR + 12'h34): begin
                                            if ((root_port_status_control[1] == 1) && (root_port_status_control[2] == 0)) // [0x1]
                                            begin
                                              irq_mask_reg <= #TCQ s_axi_ctl_wdata[31:0];
                                            end
                                            else if ((root_port_status_control[1] == 0) && (root_port_status_control[2] == 0)) // [0x0]
                                            begin
                                            // Write to this FIFO will clear the Interrupt FIFO1 and 2 location
                                            if (intr_fifo_not_empty)
                                            begin
                                              intr_fifo_rd_ptr <= #TCQ intr_fifo_rd_ptr + 1'b1;
                                            end
                                          end
                                            else if ((root_port_status_control[1] == 0) && (root_port_status_control[2] == 1)) // [0x2]
                                            begin
                                              irq_mask_reg <= #TCQ irq_mask_reg;
                                            end
                                            else if ((root_port_status_control[1] == 1) && (root_port_status_control[2] == 1)) // [0x3]
                                            begin
                                              irq_mask_reg <= #TCQ irq_mask_reg;
                                            end
                                          end
                                          
              /* // Root Port Interrupt Clear
              (C_VSEC_CAP_ADDR + 12'h38): begin
                                            irq_clr_reg <= #TCQ s_axi_ctl_wdata[31:0];
                                            irq_clr     <= #TCQ 1'b1;
                                          end

              // Root Port Interrupt Mask
              (C_VSEC_CAP_ADDR + 12'h3C): begin
                                            irq_mask_reg <= #TCQ s_axi_ctl_wdata[31:0];
                                          end */

              default                   : begin
                                          // Reserved registers
                                          end
            endcase
          end
        end
		
        MSI_IRQ_SEL_O <= #TCQ (~root_port_status_control[1]);
		
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
          rd_wr_done           <= #TCQ 1'b0;
        end
        if(s_axi_ctl_rvalid && s_axi_ctl_rready) begin
          s_axi_ctl_rvalid     <= #TCQ 1'b0;
          request_in_progress  <= #TCQ 1'b0;
          rd_wr_done           <= #TCQ 1'b0;
        end

        // Corr/Non-Fatal/Fatal error decrement notification must be a single cycle pulse
        if(corr_err_decr) begin
          corr_err_decr        <= #TCQ 1'b0;
        end
        if(non_fatal_err_decr) begin
          non_fatal_err_decr   <= #TCQ 1'b0;
        end
        if(fatal_err_decr) begin
          fatal_err_decr       <= #TCQ 1'b0;
        end

        // Root Port Status Control
        root_port_status_control[16] <= #TCQ err_fifo_not_empty;
        root_port_status_control[18] <= #TCQ intr_fifo_not_empty;

        // Drop the error Msg because of FIFO overflow
        if(cfg_msg_received && err_fifo_full && 
                      (cfg_msg_received_err_cor || cfg_msg_received_err_non_fatal || cfg_msg_received_err_fatal)) begin
          root_port_status_control[17]  <= #TCQ 1'b1; // OverFlow Flag will be set
        end
        // Drop the Interrupt Msg because of FIFO overflow
        if(intr_fifo_full && is_msi && m_axis_cfg_tvalid && m_axis_cfg_tready && (m_axis_cfg_tuser[21] == 1'b1)) begin
          root_port_status_control[19]  <= #TCQ 1'b1;
        end
        // Drop the Interrupt INTx because of FIFO overflow
        if(intr_fifo_full && cfg_msg_received && (cfg_msg_received_assert_inta || cfg_msg_received_assert_intb || 
             cfg_msg_received_assert_intc || cfg_msg_received_assert_intd || cfg_msg_received_deassert_inta ||
             cfg_msg_received_deassert_intb || cfg_msg_received_deassert_intc || cfg_msg_received_deassert_intd)) begin
          root_port_status_control[19]  <= #TCQ 1'b1;
        end
        // Clear the root_port_status_control[0] location whenever link goes down fron link up
        trn_lnk_up_d                  <= trn_lnk_up;
        if(trn_lnk_up_d && (!trn_lnk_up)) begin
          root_port_status_control[0] <= 1'b0; // Clear RP_bridge_en
        end
        if(trn_lnk_up && (!trn_lnk_up_d) && (pl_ltssm_state_int == 6'h16) && (RP_bridge_en_tmp ^ root_port_status_control[0])) begin
          root_port_status_control[0] <= 1'b1; // Assert RP_bridge_en
        end
      end
    end // always

    always@(posedge com_cclk)
    begin
      if (com_sysrst)
      begin
        // Reset the registers
        irq_fifo_read_ptr      <= #TCQ 'b0;
        irq_fifo_read_ptr_dlyd <= #TCQ 'b0;
      end
      else
      begin
        irq_fifo_read_ptr_dlyd <= #TCQ irq_fifo_read_ptr;
        irq_fifo_read_ptr      <= #TCQ irq_fifo_read_ptr + 1'b1;
      end
    end
  
    always@(posedge com_iclk)
    begin
      if (com_sysrst)
      begin
        // Reset the registers
        irq_fifo_write_ptr      <= #TCQ 'b0;
        irq_fifo_write_ptr_dlyd <= #TCQ 'b0;
      end
      else
      begin
        irq_fifo_write_ptr_dlyd <= #TCQ irq_fifo_write_ptr;
        irq_fifo_write_ptr      <= #TCQ irq_fifo_write_ptr + 1'b1;
      end
    end
  
    always@(posedge com_cclk)
    begin
      if (com_sysrst)
      begin
        // Reset the registers
        //for ( i = 0; i < FIFO_DEPTH; i = i + 1)
        //begin
        //  root_port_irq_fifo_read1[i] <= #TCQ 'b0;
        //  root_port_irq_fifo_read2[i] <= #TCQ 'b0;
        //end
        root_port_irq_fifo_read1 <= #TCQ 'b0;
        root_port_irq_fifo_read2 <= #TCQ 'b0;
      end
      else
      begin
        //root_port_irq_fifo_read1[irq_fifo_read_ptr] <= #TCQ root_port_interrupt_fifo_read1[irq_fifo_read_ptr];
        //root_port_irq_fifo_read2[irq_fifo_read_ptr] <= #TCQ root_port_interrupt_fifo_read2[irq_fifo_read_ptr];
        root_port_irq_fifo_read1 <= #TCQ root_port_interrupt_fifo_read1[irq_fifo_read_ptr];
        root_port_irq_fifo_read2 <= #TCQ root_port_interrupt_fifo_read2[irq_fifo_read_ptr];
      end
    end
    
    always@(posedge com_cclk)
    begin
      if (com_sysrst)
      begin
        // Reset the registers
        root_port_irq_fifo_read2_err <= #TCQ 1'b0;
        first_irq_fifo_read2_err     <= #TCQ 1'b0;
      end
      else if (root_port_irq_fifo_read2 > 32'b00000000000000000000000000000001)
      begin
        first_irq_fifo_read2_err     <= #TCQ 1'b1;
        root_port_irq_fifo_read2_err <= #TCQ 1'b1;
      end
    end
    
    always@(posedge com_iclk)
    begin
      if (com_sysrst)
      begin
        // Reset the registers
        trig_wr_root_port_irq_fifo_read2 <= #TCQ 1'b0;
      end
      else if ((((m_axis_cfg_tstrb == 8'hFF) && (m_axis_cfg_tdata[63:56] != 8'b01)) && (is_msi == 1)) ||
               (((m_axis_cfg_tstrb != 8'hFF) && (m_axis_cfg_tdata[31:24] != 8'b01)) && (is_msi == 1))
              )
      begin
        trig_wr_root_port_irq_fifo_read2 <= #TCQ 1'b1;
      end
      else
      begin
        trig_wr_root_port_irq_fifo_read2 <= #TCQ 1'b0;
      end
    end
    
    
    integer i;

    // Error FIFO
    always@(posedge com_iclk) begin
      if(com_sysrst) begin
        // reset the registers
        for( i = 0; i < FIFO_DEPTH; i = i + 1) begin
          root_port_error_fifo_read[i] <= #TCQ 'b0;
        end
        err_fifo_wr_ptr        <= #TCQ 'b0;
        corr_err_rcvd          <= #TCQ 'b0;
        non_fatal_err_rcvd     <= #TCQ 'b0;
        fatal_err_rcvd         <= #TCQ 'b0;
        corr_err_incr          <= #TCQ 'b0;
        non_fatal_err_incr     <= #TCQ 'b0;
        fatal_err_incr         <= #TCQ 'b0;
      end
      else begin
        if(cfg_msg_received && (!err_fifo_full)) begin
          if(cfg_msg_received_err_cor) begin
            root_port_error_fifo_read[err_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data; // Requester ID
            root_port_error_fifo_read[err_fifo_wr_ptr][17:16] <= #TCQ 2'b00;
            root_port_error_fifo_read[err_fifo_wr_ptr][18]    <= #TCQ 1'b1;
            err_fifo_wr_ptr                                   <= #TCQ err_fifo_wr_ptr + 1'b1;
            corr_err_rcvd                                     <= #TCQ 1'b1;
            corr_err_incr                                     <= #TCQ 1'b1;
          end
          if(cfg_msg_received_err_non_fatal) begin
            root_port_error_fifo_read[err_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data; // Requester ID
            root_port_error_fifo_read[err_fifo_wr_ptr][17:16] <= #TCQ 2'b01;
            root_port_error_fifo_read[err_fifo_wr_ptr][18]    <= #TCQ 1'b1;
            err_fifo_wr_ptr                                   <= #TCQ err_fifo_wr_ptr + 1'b1;
            non_fatal_err_rcvd                                <= #TCQ 1'b1;
            non_fatal_err_incr                                <= #TCQ 1'b1;
          end
          if(cfg_msg_received_err_fatal) begin
            root_port_error_fifo_read[err_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data; // Requester ID
            root_port_error_fifo_read[err_fifo_wr_ptr][17:16] <= #TCQ 2'b10;
            root_port_error_fifo_read[err_fifo_wr_ptr][18]    <= #TCQ 1'b1;
            err_fifo_wr_ptr                                   <= #TCQ err_fifo_wr_ptr + 1'b1;
            fatal_err_rcvd                                    <= #TCQ 1'b1;
            fatal_err_incr                                    <= #TCQ 1'b1;
          end
        end
        // Assert ERROR Falgs for once clock cycle only
        if(corr_err_rcvd) begin
          corr_err_rcvd                                       <= #TCQ 1'b0;
          corr_err_incr                                       <= #TCQ 1'b0;
        end
        if(non_fatal_err_rcvd) begin
          non_fatal_err_rcvd                                  <= #TCQ 1'b0;
          non_fatal_err_incr                                  <= #TCQ 1'b0;
        end
        if(fatal_err_rcvd) begin
          fatal_err_rcvd                                      <= #TCQ 1'b0;
          fatal_err_incr                                      <= #TCQ 1'b0;
        end
      end
    end // always

    always @(*)
    begin
      if (err_fifo_wr_ptr > err_fifo_rd_ptr)
      begin
        err_fifo_ptr_diff <= err_fifo_wr_ptr - err_fifo_rd_ptr;
      end
      else if (err_fifo_wr_ptr < err_fifo_rd_ptr)
      begin
        err_fifo_ptr_diff <=((FIFO_DEPTH - err_fifo_rd_ptr) + err_fifo_wr_ptr);
      end
      else 
      begin
        err_fifo_ptr_diff <= 0;
      end
    end

    always @(*)
    begin
      if (intr_fifo_wr_ptr > intr_fifo_rd_ptr)
      begin
        intr_fifo_ptr_diff <= intr_fifo_wr_ptr - intr_fifo_rd_ptr;
      end
      else if (intr_fifo_wr_ptr < intr_fifo_rd_ptr)
      begin
        intr_fifo_ptr_diff <=((FIFO_DEPTH - intr_fifo_rd_ptr) + intr_fifo_wr_ptr);
      end
      else 
      begin
        intr_fifo_ptr_diff <= 0;
      end
    end

    // FIFO empty and full notification
    assign err_fifo_full        = (err_fifo_ptr_diff == (FIFO_DEPTH - 1)) ? 1'b1 : 1'b0;
    assign err_fifo_not_empty   = (err_fifo_rd_ptr == err_fifo_wr_ptr) ? 1'b0 : 1'b1;
    assign intr_fifo_full        = ((root_port_status_control[1] == 0) && (root_port_status_control[2] == 0)) ? ((intr_fifo_ptr_diff == (FIFO_DEPTH - 1)) ? 1'b1 : 1'b0) : 1'b0;
    assign intr_fifo_not_empty   = (intr_fifo_rd_ptr == intr_fifo_wr_ptr) ? 1'b0 : 1'b1;

    // Logic to count number of outstanding CORR/NON-FATAL/FATAL Errors in Root Port Error FIFO
    always@(posedge com_iclk) begin
      if(com_sysrst) begin
        corr_err_cntr      <= #TCQ 4'b0;
        non_fatal_err_cntr <= #TCQ 4'b0;
        fatal_err_cntr     <= #TCQ 4'b0;
      end
      else begin
        
        // Correctable error
        if(corr_err_incr) begin
          corr_err_cntr      <= #TCQ corr_err_cntr + 1'b1;
        end
        else if (corr_err_decr) begin
          corr_err_cntr      <= #TCQ corr_err_cntr - 1'b1;
        end
        
        // Non-Fatal error
        if(non_fatal_err_incr) begin
          non_fatal_err_cntr <= #TCQ non_fatal_err_cntr + 1'b1;
        end
        else if (non_fatal_err_decr) begin
          non_fatal_err_cntr <= #TCQ non_fatal_err_cntr - 1'b1;
        end
        
        // Fatal error
        if(fatal_err_incr) begin
          fatal_err_cntr <= #TCQ fatal_err_cntr + 1'b1;
        end
        else if (fatal_err_decr) begin
          fatal_err_cntr <= #TCQ fatal_err_cntr - 1'b1;
        end
      end
    end

    if(C_DATA_WIDTH == 128) begin
      // Flag to show Un-Aligned TLP start
      reg                    unaligned_tlp_started;
      // Logic to collect MSI Interrupt Message TLP from AXI-S RX CFG Interface
      // Interrupt FIFO1 and 2
      always@(posedge com_iclk) begin
        if(com_sysrst) begin
          // Reset the FIFOs
          for( i = 0; i < FIFO_DEPTH; i = i + 1) begin
            root_port_interrupt_fifo_read1[i] <= #TCQ 'b0;
            root_port_interrupt_fifo_read2[i] <= #TCQ 'b0;
          end
          intr_fifo_wr_ptr                    <= #TCQ 'b0;
          intx_msg_rcvd                       <= #TCQ 'b0;
          msi_msg_rcvd                        <= #TCQ 'b0;
          root_port_irq_fifo_read2_smpled[15:0] <= #TCQ 'b0;
        end
        else begin
          if((!intr_fifo_full) && is_msi && m_axis_cfg_tvalid && m_axis_cfg_tready && 
                                                                            (m_axis_cfg_tuser[21] == 1'b1)) begin
            // Requester ID of MSI
            root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]    <= #TCQ msi_req_id;
            if(unaligned_tlp_started) begin
              if(is_4dw_header) begin
              // 64-bit MSI Address
              root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ m_axis_cfg_tdata[44:34]; // DW3[12:2]
              end
              else begin
              // 32-bit MSI Address
              root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ m_axis_cfg_tdata[12:2]; // DW2[12:2]
              end
            end
            else begin
              // MSI Address
              root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ msi_addr;
            end
            // Interrupt Line INTx tied to '0'
            root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27]   <= #TCQ 2'b00;
            // Interrupt Assert tied to '0'
            root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]      <= #TCQ 1'b0;
            // MSI Interrupt
            root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]      <= #TCQ 1'b1;
            // Interrupt Valid
            root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]      <= #TCQ 1'b1;
            case(m_axis_cfg_tstrb)
            16'hFFFF : 
              begin
              root_port_interrupt_fifo_read2[intr_fifo_wr_ptr][15:0] <= #TCQ {m_axis_cfg_tdata[119:112],m_axis_cfg_tdata[127:120]};
              root_port_irq_fifo_read2_smpled[15:0]                  <= #TCQ {m_axis_cfg_tdata[119:112],m_axis_cfg_tdata[127:120]};
              r_msi_irq_num[15:0]                                    <= #TCQ {m_axis_cfg_tdata[119:112],m_axis_cfg_tdata[127:120]};
              end
            16'h0FFF : 
              begin
              root_port_interrupt_fifo_read2[intr_fifo_wr_ptr][15:0] <= #TCQ {m_axis_cfg_tdata[87:80],m_axis_cfg_tdata[95:88]};
              root_port_irq_fifo_read2_smpled[15:0]                  <= #TCQ {m_axis_cfg_tdata[87:80],m_axis_cfg_tdata[95:88]};
              r_msi_irq_num[15:0]                                    <= #TCQ {m_axis_cfg_tdata[87:80],m_axis_cfg_tdata[95:88]};
              end
            16'h00FF : 
              begin
              root_port_interrupt_fifo_read2[intr_fifo_wr_ptr][15:0] <= #TCQ {m_axis_cfg_tdata[55:48],m_axis_cfg_tdata[63:56]};
              root_port_irq_fifo_read2_smpled[15:0]                  <= #TCQ {m_axis_cfg_tdata[55:48],m_axis_cfg_tdata[63:56]};
              r_msi_irq_num[15:0]                                    <= #TCQ {m_axis_cfg_tdata[55:48],m_axis_cfg_tdata[63:56]};
              end
            default :  
              begin
              root_port_interrupt_fifo_read2[intr_fifo_wr_ptr][15:0] <= #TCQ {m_axis_cfg_tdata[23:16],m_axis_cfg_tdata[31:24]};
              root_port_irq_fifo_read2_smpled[15:0]                  <= #TCQ {m_axis_cfg_tdata[23:16],m_axis_cfg_tdata[31:24]};
              r_msi_irq_num[15:0]                                    <= #TCQ {m_axis_cfg_tdata[23:16],m_axis_cfg_tdata[31:24]};
              end
            endcase
            intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
            msi_msg_rcvd                    <= #TCQ 1'b1;
          end
          else begin
            if((!intr_fifo_full) && cfg_msg_received) begin
              if(cfg_msg_received_assert_inta) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ 'b0;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27] <= #TCQ 2'b00;// INTA
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]    <= #TCQ 1'b1; // Assert
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]    <= #TCQ 1'b0; // INTx
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]    <= #TCQ 1'b1; // Valid
                intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
                intx_msg_rcvd                   <= #TCQ 1'b1;
              end
              else if(cfg_msg_received_assert_intb) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ 'b0;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27] <= #TCQ 2'b01;// INTB
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]    <= #TCQ 1'b1; // Assert
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]    <= #TCQ 1'b0; // INTx
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]    <= #TCQ 1'b1; // Valid
                intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
                intx_msg_rcvd                   <= #TCQ 1'b1;
              end
              else if(cfg_msg_received_assert_intc) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ 'b0;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27] <= #TCQ 2'b10;// INTC
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]    <= #TCQ 1'b1; // Assert
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]    <= #TCQ 1'b0; // INTx
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]    <= #TCQ 1'b1; // Valid
                intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
                intx_msg_rcvd                   <= #TCQ 1'b1;
              end
              else if(cfg_msg_received_assert_intd) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ 'b0;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27] <= #TCQ 2'b11;// INTD
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]    <= #TCQ 1'b1; // Assert
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]    <= #TCQ 1'b0; // INTx
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]    <= #TCQ 1'b1; // Valid
                intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
                intx_msg_rcvd                   <= #TCQ 1'b1;
              end
              else if(cfg_msg_received_deassert_inta) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ 'b0;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27] <= #TCQ 2'b00;// INTA
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]    <= #TCQ 1'b0; // De-Assert
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]    <= #TCQ 1'b0; // INTx
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]    <= #TCQ 1'b1; // Valid
                intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
                intx_msg_rcvd                   <= #TCQ 1'b1;
              end
              else if(cfg_msg_received_deassert_intb) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ 'b0;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27] <= #TCQ 2'b01;// INTB
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]    <= #TCQ 1'b0; // De-Assert
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]    <= #TCQ 1'b0; // INTx
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]    <= #TCQ 1'b1; // Valid
                intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
                intx_msg_rcvd                   <= #TCQ 1'b1;
              end
              else if(cfg_msg_received_deassert_intc) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ 'b0;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27] <= #TCQ 2'b10;// INTC
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]    <= #TCQ 1'b0; // De-Assert
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]    <= #TCQ 1'b0; // INTx
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]    <= #TCQ 1'b1; // Valid
                intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
                intx_msg_rcvd                   <= #TCQ 1'b1;
              end
              else if(cfg_msg_received_deassert_intd) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ 'b0;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27] <= #TCQ 2'b11;// INTD
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]    <= #TCQ 1'b0; // De-Assert
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]    <= #TCQ 1'b0; // INTx
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]    <= #TCQ 1'b1; // Valid
                intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
                intx_msg_rcvd                   <= #TCQ 1'b1;
              end
            end
	    else begin
	     if(!intr_fifo_not_empty) begin
               for( i = 0; i < FIFO_DEPTH; i = i + 1) begin
                   root_port_interrupt_fifo_read1[i] <= #TCQ 'b0;
						 root_port_interrupt_fifo_read2[i] <= #TCQ 'b0;
               end
             end
	    end 
	    
          end
          // Assert Interrupt Flags for once clock cycle only
          if(msi_msg_rcvd) begin
            msi_msg_rcvd            <= #TCQ 1'b0;
          end
          if(intx_msg_rcvd && (!(cfg_msg_received && (cfg_msg_received_assert_inta || cfg_msg_received_assert_intb ||
                    cfg_msg_received_assert_intc || cfg_msg_received_assert_intd || cfg_msg_received_deassert_inta ||
                    cfg_msg_received_deassert_intb || cfg_msg_received_deassert_intc ||
                    cfg_msg_received_deassert_intd)))) begin
            intx_msg_rcvd           <= #TCQ 1'b0;
          end
        end
      end // always

      always@(posedge com_iclk) begin
        if(com_sysrst) begin
          m_axis_cfg_tready         <= #TCQ 'b0;
          tlp_rcv_in_progress       <= #TCQ 'b0;
          msi_addr                  <= #TCQ 'b0;
          msi_req_id                <= #TCQ 'b0;
          is_4dw_header             <= #TCQ 'b0;
          unaligned_tlp_started     <= #TCQ 'b0;
        end
        else begin
          // Assert TREADY in response to TVALID
          if(m_axis_cfg_tvalid) begin
            m_axis_cfg_tready       <= #TCQ 1'b1;
          end
          // De-assert TREADY after receiving full TLP
          if(m_axis_cfg_tready && m_axis_cfg_tlast) begin
            m_axis_cfg_tready       <= #TCQ 1'b0;
            unaligned_tlp_started   <= #TCQ 1'b0;
          end
          // MSI request
          if(is_msi) begin
            // Aligned 4DW Header + 1DW Data
            if(m_axis_cfg_tvalid && (m_axis_cfg_tuser[14:10] == 5'b10000) && (!tlp_rcv_in_progress)
                                            && (m_axis_cfg_tdata[30:29] == 2'b11)) begin // Aligned TLP received
              msi_req_id            <= #TCQ m_axis_cfg_tdata[63:48]; // Requester ID at DW1[31:16] locaton
              msi_addr              <= #TCQ m_axis_cfg_tdata[108:98]; // MSI Address[12:2] at DW3[12:2] location
              tlp_rcv_in_progress   <= #TCQ 1'b1;
              unaligned_tlp_started <= #TCQ 1'b0;
              is_4dw_header         <= #TCQ 1'b1;
            end
            // Aligned 3DW Header + 1DW Data
            else if(m_axis_cfg_tvalid && (m_axis_cfg_tuser[14:10] == 5'b10000) && (!tlp_rcv_in_progress)
                                                                    && (m_axis_cfg_tdata[30:29] == 2'b10)) begin
              msi_req_id            <= #TCQ m_axis_cfg_tdata[63:48]; // Requester ID at DW1[31:16] locaton
              msi_addr              <= #TCQ m_axis_cfg_tdata[76:66]; // MSI Address[12:2] at DW2[12:2] location
              tlp_rcv_in_progress   <= #TCQ 1'b1;
              unaligned_tlp_started <= #TCQ 1'b0;
              is_4dw_header         <= #TCQ 1'b0;
            end
            else if(m_axis_cfg_tvalid && (m_axis_cfg_tuser[14:10] == 5'b11000) && 
                                                           (!tlp_rcv_in_progress)) begin // Un-Aligned TLP case
              tlp_rcv_in_progress   <= #TCQ 1'b1;
              unaligned_tlp_started <= #TCQ 1'b1;
              msi_req_id            <= #TCQ m_axis_cfg_tdata[127:112]; // Requester ID at DW1[31:16] location
              // 4DW Header
              if(m_axis_cfg_tdata[94:93] == 2'b11) begin
                is_4dw_header       <= #TCQ 1'b1;
              end
              // 3DW Header
              else begin
                is_4dw_header       <= #TCQ 1'b0;
              end
            end
            if(m_axis_cfg_tvalid && (m_axis_cfg_tuser[21] == 1'b1) && m_axis_cfg_tready) begin
              unaligned_tlp_started <= #TCQ 1'b0;
              tlp_rcv_in_progress   <= #TCQ 1'b0;
              is_4dw_header         <= #TCQ 1'b0;
            end
          end
        end
      end // always
    end // 128-bit mode RP

    if(C_DATA_WIDTH == 64) begin
      // Logic to collect MSI Interrupt Message TLP from AXI-S RX CFG Interface
      // Interrupt FIFO1 and 2
      always@(posedge com_iclk) begin
        if(com_sysrst) begin
          // Reset the FIFOs
          for( i = 0; i < FIFO_DEPTH; i = i + 1) begin
            root_port_interrupt_fifo_read1[i] <= #TCQ 'b0;
            root_port_interrupt_fifo_read2[i] <= #TCQ 'b0;
          end
          intr_fifo_wr_ptr                    <= #TCQ 'b0;
          intx_msg_rcvd                       <= #TCQ 'b0;
          msi_msg_rcvd                        <= #TCQ 'b0;
          root_port_irq_fifo_read2_smpled[15:0] <= #TCQ 'b0;
        end
        else begin
          if((!intr_fifo_full) && is_msi && m_axis_cfg_tvalid && m_axis_cfg_tready && m_axis_cfg_tuser[21]) begin
            // Requester ID of MSI
            root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]      <= #TCQ msi_req_id;
            // 64-bit MSI Address
            if(is_4dw_header) begin
              root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16]   <= #TCQ msi_addr;
            end
            // 32-bit MSI Address
            else begin
              if(m_axis_cfg_tstrb == 8'hFF) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ m_axis_cfg_tdata[12:2];
              end
              // Re-aligned Data
              // coverage off
              else begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ msi_addr;
              end
              // coverage on
            end
            // Interrupt Line INTx tied to '0'
            root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27]     <= #TCQ 2'b00;
            // Interrupt Assert tied to '0'
            root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]        <= #TCQ 1'b0;
            // MSI Interrupt
            root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]        <= #TCQ 1'b1;
            // Interrupt Valid
            root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]        <= #TCQ 1'b1;
            if(m_axis_cfg_tstrb == 8'hFF) begin
              root_port_interrupt_fifo_read2[intr_fifo_wr_ptr][15:0]    <= #TCQ 
                                                                    {m_axis_cfg_tdata[55:48],m_axis_cfg_tdata[63:56]};
              root_port_irq_fifo_read2_smpled[15:0]                  <= #TCQ {m_axis_cfg_tdata[55:48],m_axis_cfg_tdata[63:56]};
              r_msi_irq_num[15:0]                                    <= #TCQ {m_axis_cfg_tdata[55:48],m_axis_cfg_tdata[63:56]};
            end
            else begin
              root_port_interrupt_fifo_read2[intr_fifo_wr_ptr][15:0]    <= #TCQ 
                                                                    {m_axis_cfg_tdata[23:16],m_axis_cfg_tdata[31:24]};
              root_port_irq_fifo_read2_smpled[15:0]                  <= #TCQ {m_axis_cfg_tdata[23:16],m_axis_cfg_tdata[31:24]};
              r_msi_irq_num[15:0]                                    <= #TCQ {m_axis_cfg_tdata[23:16],m_axis_cfg_tdata[31:24]};
            end
            intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
            msi_msg_rcvd                    <= #TCQ 'b1;
          end
          else begin
            if((!intr_fifo_full) && cfg_msg_received) begin
              if(cfg_msg_received_assert_inta) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ 'b0;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27] <= #TCQ 2'b00;// INTA
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]    <= #TCQ 1'b1; // Assert
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]    <= #TCQ 1'b0; // INTx
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]    <= #TCQ 1'b1; // Valid
                intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
                intx_msg_rcvd                   <= #TCQ 'b1;
              end
              else if(cfg_msg_received_assert_intb) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ 'b0;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27] <= #TCQ 2'b01;// INTB
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]    <= #TCQ 1'b1; // Assert
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]    <= #TCQ 1'b0; // INTx
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]    <= #TCQ 1'b1; // Valid
                intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
                intx_msg_rcvd                   <= #TCQ 'b1;
              end
              else if(cfg_msg_received_assert_intc) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ 'b0;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27] <= #TCQ 2'b10;// INTC
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]    <= #TCQ 1'b1; // Assert
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]    <= #TCQ 1'b0; // INTx
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]    <= #TCQ 1'b1; // Valid
                intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
                intx_msg_rcvd                   <= #TCQ 'b1;
              end
              else if(cfg_msg_received_assert_intd) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ 'b0;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27] <= #TCQ 2'b11;// INTD
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]    <= #TCQ 1'b1; // Assert
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]    <= #TCQ 1'b0; // INTx
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]    <= #TCQ 1'b1; // Valid
                intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
                intx_msg_rcvd                   <= #TCQ 'b1;
              end
              else if(cfg_msg_received_deassert_inta) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ 'b0;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27] <= #TCQ 2'b00;// INTA
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]    <= #TCQ 1'b0; // De-Assert
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]    <= #TCQ 1'b0; // INTx
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]    <= #TCQ 1'b1; // Valid
                intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
                intx_msg_rcvd                   <= #TCQ 'b1;
              end
              else if(cfg_msg_received_deassert_intb) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ 'b0;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27] <= #TCQ 2'b01;// INTB
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]    <= #TCQ 1'b0; // De-Assert
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]    <= #TCQ 1'b0; // INTx
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]    <= #TCQ 1'b1; // Valid
                intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
                intx_msg_rcvd                   <= #TCQ 'b1;
              end
              else if(cfg_msg_received_deassert_intc) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ 'b0;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27] <= #TCQ 2'b10;// INTC
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]    <= #TCQ 1'b0; // De-Assert
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]    <= #TCQ 1'b0; // INTx
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]    <= #TCQ 1'b1; // Valid
                intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
                intx_msg_rcvd                   <= #TCQ 'b1;
              end
              else if(cfg_msg_received_deassert_intd) begin
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][15:0]  <= #TCQ cfg_msg_data;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][26:16] <= #TCQ 'b0;
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][28:27] <= #TCQ 2'b11;// INTD
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][29]    <= #TCQ 1'b0; // De-Assert
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][30]    <= #TCQ 1'b0; // INTx
                root_port_interrupt_fifo_read1[intr_fifo_wr_ptr][31]    <= #TCQ 1'b1; // Valid
                intr_fifo_wr_ptr                <= #TCQ intr_fifo_wr_ptr + 1'b1;
                intx_msg_rcvd                   <= #TCQ 'b1;
              end
            end
          end
          // Assert Interrupt Flags for once clock cycle only
          if(msi_msg_rcvd) begin
            msi_msg_rcvd          <= #TCQ 1'b0;
          end
          if(intx_msg_rcvd) begin
            intx_msg_rcvd         <= #TCQ 1'b0;
          end
        end
      end // always
      // Logic to capture MSI Interrupt from AXI-S RX Interface
      always@(posedge com_iclk) begin
        if(com_sysrst) begin
          m_axis_cfg_tready       <= #TCQ 'b0;
          tlp_rcv_in_progress     <= #TCQ 'b0;
          msi_addr                <= #TCQ 'b0;
          msi_req_id              <= #TCQ 'b0;
          is_4dw_header           <= #TCQ 'b0;
        end
        else begin
          // Assert TREADY in response to TVALID
          if(m_axis_cfg_tvalid) begin
            m_axis_cfg_tready     <= #TCQ 1'b1;
          end
          // De-assert TREADY after receiving full TLP
          if(m_axis_cfg_tready && m_axis_cfg_tlast) begin
            m_axis_cfg_tready     <= #TCQ 1'b0;
          end
          // MSI request
          if(is_msi) begin
            if(m_axis_cfg_tvalid && m_axis_cfg_tuser[14] && (!tlp_rcv_in_progress)) begin
              // 4DW Header
              if(m_axis_cfg_tdata[30:29] == 2'b11) begin
                is_4dw_header     <= #TCQ 1'b1;
              end
              // 3DW Header
              else begin
                is_4dw_header     <= #TCQ 1'b0;
              end
              msi_req_id          <= #TCQ m_axis_cfg_tdata[63:48]; // Requester ID at DW1[31:16] locaton
              tlp_rcv_in_progress <= #TCQ 1'b1;
            end
            if(tlp_rcv_in_progress && (!m_axis_cfg_tuser[21])) begin
              // 4DW Header
              if(is_4dw_header) begin
                msi_addr          <= #TCQ m_axis_cfg_tdata[44:34];
              end
              // 3DW Header
              // coverage off
              else begin
                msi_addr          <= #TCQ m_axis_cfg_tdata[12:2];
              end
            end
              // coverage on
            if(m_axis_cfg_tvalid && m_axis_cfg_tuser[21] && m_axis_cfg_tready) begin
              tlp_rcv_in_progress <= #TCQ 1'b0;
              is_4dw_header       <= #TCQ 1'b0;
            end
          end
        end
      end // always
    end // 64-bit mode RP
    
    axi_pcie_msi_irq #(
      .g_data_width (32)
      ) 
    u_msi_irq(
    
      .COM_ICLK_I             (com_iclk),
      .COM_CCLK_I             (com_cclk),
      .COM_SYSRST_I           (com_sysrst),
    
      .MSI_MSG_RCVD_I         (msi_msg_rcvd),
      .MSI_IRQ_NUM_I          (r_msi_irq_num),
      
      .MSI_IRQ_OVERFLOW_REG_O (msi_irq_overflow_reg),
      .MSI_IRQ_UNDERRUN_REG_O (msi_irq_underrun_reg),
      
      .IRQ_CLR_I              (irq_clr),
      .IRQ_CLR_REG_I          (irq_clr_reg),
      
      .IRQ_STATUS_REG_O       (irq_status_reg)
      );
    
  end // block_is_rp
  endgenerate


endmodule
