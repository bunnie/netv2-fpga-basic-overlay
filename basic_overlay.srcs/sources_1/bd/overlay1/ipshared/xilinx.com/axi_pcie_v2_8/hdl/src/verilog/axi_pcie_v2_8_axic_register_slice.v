// -- (c) Copyright 2010 - 2011 Xilinx, Inc. All rights reserved.
// --
// -- This file contains confidential and proprietary information
// -- of Xilinx, Inc. and is protected under U.S. and 
// -- international copyright and other intellectual property
// -- laws.
// --
// -- DISCLAIMER
// -- This disclaimer is not a license and does not grant any
// -- rights to the materials distributed herewith. Except as
// -- otherwise provided in a valid license issued to you by
// -- Xilinx, and to the maximum extent permitted by applicable
// -- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// -- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// -- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// -- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// -- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// -- (2) Xilinx shall not be liable (whether in contract or tort,
// -- including negligence, or under any other theory of
// -- liability) for any loss or damage of any kind or nature
// -- related to, arising under or in connection with these
// -- materials, including for any direct, or any indirect,
// -- special, incidental, or consequential loss or damage
// -- (including loss of data, profits, goodwill, or any type of
// -- loss or damage suffered as a result of any action brought
// -- by a third party) even if such damage or loss was
// -- reasonably foreseeable or Xilinx had been advised of the
// -- possibility of the same.
// --
// -- CRITICAL APPLICATIONS
// -- Xilinx products are not designed or intended to be fail-
// -- safe, or for use in any application requiring fail-safe
// -- performance, such as life-support or safety devices or
// -- systems, Class III medical devices, nuclear facilities,
// -- applications related to the deployment of airbags, or any
// -- other applications that could lead to death, personal
// -- injury, or severe property or environmental damage
// -- (individually and collectively, "Critical
// -- Applications"). Customer assumes the sole risk and
// -- liability of any use of Xilinx products in Critical
// -- Applications, subject only to applicable laws and
// -- regulations governing limitations on product liability.
// --
// -- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// -- PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
//
// Register Slice
//   Generic single-channel AXI pipeline register on forward and/or reverse signal path
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axic_register_slice
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps

module axi_pcie_v2_8_0_axic_register_slice #
  (
   parameter C_FAMILY     = "virtex7",
   parameter C_DATA_WIDTH = 32,
   parameter C_REG_CONFIG = 32'h00000000
   // C_REG_CONFIG:
   //   0 => BYPASS    = The channel is just wired through the module.
   //   1 => FWD_REV   = Both FWD and REV (fully-registered)
   //   2 => FWD       = The master VALID and payload signals are registrated. 
   //   3 => REV       = The slave ready signal is registrated
   //   4 => SLAVE_FWD = All slave side signals and master VALID and payload are registrated.
   //   5 => SLAVE_RDY = All slave side signals and master READY are registrated.
   //   6 => INPUTS    = Slave and Master side inputs are registrated.
   //   7 => LIGHT_WT  = 1-stage pipeline register with bubble cycle, both FWD and REV pipelining
   )
  (
   // System Signals
   input wire ACLK,
   input wire ARESET,

   // Slave side
   input  wire [C_DATA_WIDTH-1:0] S_PAYLOAD_DATA,
   input  wire S_VALID,
   output wire S_READY,

   // Master side
   output  wire [C_DATA_WIDTH-1:0] M_PAYLOAD_DATA,
   output wire M_VALID,
   input  wire M_READY
   );

  (* use_clock_enable = "yes" *)

  generate
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 0
  // Bypass mode
  //
  ////////////////////////////////////////////////////////////////////
    if (C_REG_CONFIG == 32'h00000000)
    begin
      assign M_PAYLOAD_DATA = S_PAYLOAD_DATA;
      assign M_VALID        = S_VALID;
      assign S_READY        = M_READY;      
    end
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 1 (or 8)
  // Both FWD and REV mode
  //
  ////////////////////////////////////////////////////////////////////
    else if ((C_REG_CONFIG == 32'h00000001) || (C_REG_CONFIG == 32'h00000008))
    begin
      reg [1:0] state;
      localparam [1:0] 
        ZERO = 2'b10,
        ONE  = 2'b11,
        TWO  = 2'b01;
      
      reg [C_DATA_WIDTH-1:0] storage_data1;
      reg [C_DATA_WIDTH-1:0] storage_data2;
      reg                    load_s1;
      wire                   load_s2;
      wire                   load_s1_from_s2;
      reg                    s_ready_i; //local signal of output
      wire                   m_valid_i; //local signal of output

      // assign local signal to its output signal
      assign S_READY = s_ready_i;
      assign M_VALID = m_valid_i;

      reg [1:0] areset_d; // Reset delay register
      always @(posedge ACLK) begin
        areset_d <= {areset_d[0], ARESET};
      end
      
      // Load storage1 with either slave side data or from storage2
      always @(posedge ACLK) 
      begin
        if (load_s1)
          if (load_s1_from_s2)
            storage_data1 <= storage_data2;
          else
            storage_data1 <= S_PAYLOAD_DATA;        
      end

      // Load storage2 with slave side data
      always @(posedge ACLK) 
      begin
        if (load_s2)
          storage_data2 <= S_PAYLOAD_DATA;
      end

      assign M_PAYLOAD_DATA = storage_data1;

      // Always load s2 on a valid transaction even if it's unnecessary
      assign load_s2 = S_VALID & s_ready_i;

      // Loading s1
      always @ *
      begin
        if ( ((state == ZERO) && (S_VALID == 1)) || // Load when empty on slave transaction
             // Load when ONE if we both have read and write at the same time
             ((state == ONE) && (S_VALID == 1) && (M_READY == 1)) ||
             // Load when TWO and we have a transaction on Master side
             ((state == TWO) && (M_READY == 1)))
          load_s1 = 1'b1;
        else
          load_s1 = 1'b0;
      end // always @ *

      assign load_s1_from_s2 = (state == TWO);
                       
      // State Machine for handling output signals
      always @(posedge ACLK) begin
        if (ARESET) begin
          s_ready_i <= 1'b0;
          state <= ZERO;
        end else if (areset_d == 2'b10) begin
          s_ready_i <= 1'b1;
        end else if (areset_d == 2'b00) begin
          case (state)
            // No transaction stored locally
            ZERO: if (S_VALID) state <= ONE; // Got one so move to ONE

            // One transaction stored locally
            ONE: begin
              if (M_READY & ~S_VALID) state <= ZERO; // Read out one so move to ZERO
              if (~M_READY & S_VALID) begin
                state <= TWO;  // Got another one so move to TWO
                s_ready_i <= 1'b0;
              end
            end

            // TWO transaction stored locally
            TWO: if (M_READY) begin
              state <= ONE; // Read out one so move to ONE
              s_ready_i <= 1'b1;
            end
          endcase // case (state)
        end
      end // always @ (posedge ACLK)
      
      assign m_valid_i = state[0];

    end // if (C_REG_CONFIG == 1)
    
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 2
  // Only FWD mode
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000002)
    begin
      reg [C_DATA_WIDTH-1:0] storage_data;
      wire                   s_ready_i; //local signal of output
      reg                    m_valid_i; //local signal of output

      // assign local signal to its output signal
      assign S_READY = s_ready_i;
      assign M_VALID = m_valid_i;

      reg [1:0] areset_d; // Reset delay register
      always @(posedge ACLK) begin
        areset_d <= {areset_d[0], ARESET};
      end
      
      // Save payload data whenever we have a transaction on the slave side
      always @(posedge ACLK) 
      begin
        if (S_VALID & s_ready_i)
          storage_data <= S_PAYLOAD_DATA;
      end

      assign M_PAYLOAD_DATA = storage_data;
      
      // M_Valid set to high when we have a completed transfer on slave side
      // Is removed on a M_READY except if we have a new transfer on the slave side
      always @(posedge ACLK) 
      begin
        if (areset_d) 
          m_valid_i <= 1'b0;
        else
          if (S_VALID) // Always set m_valid_i when slave side is valid
            m_valid_i <= 1'b1;
          else
            if (M_READY) // Clear (or keep) when no slave side is valid but master side is ready
              m_valid_i <= 1'b0;
      end // always @ (posedge ACLK)
      
      // Slave Ready is either when Master side drives M_Ready or we have space in our storage data
      assign s_ready_i = (M_READY | ~m_valid_i) & ~|areset_d;

    end // if (C_REG_CONFIG == 2)
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 3
  // Only REV mode
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000003)
    begin
      reg [C_DATA_WIDTH-1:0] storage_data;
      reg                    s_ready_i; //local signal of output
      reg                    has_valid_storage_i;
      reg                    has_valid_storage;

      // Save payload data whenever we have a transaction on the slave side
      always @(posedge ACLK) 
      begin
        if (S_VALID & s_ready_i)
          storage_data <= S_PAYLOAD_DATA;
      end

      assign M_PAYLOAD_DATA = has_valid_storage?storage_data:S_PAYLOAD_DATA;

      // Need to determine when we need to save a payload
      // Need a combinatorial signals since it will also effect S_READY
      always @ *
      begin
        // Set the value if we have a slave transaction but master side is not ready
        if (S_VALID & s_ready_i & ~M_READY)
          has_valid_storage_i = 1'b1;
        
        // Clear the value if it's set and Master side completes the transaction but we don't have a new slave side 
        // transaction 
        else if ( (has_valid_storage == 1) && (M_READY == 1) && ( (S_VALID == 0) || (s_ready_i == 0)))
          has_valid_storage_i = 1'b0;
        else
          has_valid_storage_i = has_valid_storage;
      end // always @ *

      always @(posedge ACLK) 
      begin
        if (ARESET) 
          has_valid_storage <= 1'b0;
        else
          has_valid_storage <= has_valid_storage_i;
      end

      // S_READY is either clocked M_READY or that we have room in local storage
      always @(posedge ACLK) 
      begin
        if (ARESET) 
          s_ready_i <= 1'b0;
        else
          s_ready_i <= M_READY | ~has_valid_storage_i;
      end

      // assign local signal to its output signal
      assign S_READY = s_ready_i;

      // M_READY is either combinatorial S_READY or that we have valid data in local storage
      assign M_VALID = S_VALID | has_valid_storage;
      
    end // if (C_REG_CONFIG == 3)
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 4 or 5
  // SLAVE_FWD and SLAVE_RDY modes
  //
  ////////////////////////////////////////////////////////////////////
    else if ((C_REG_CONFIG == 32'h00000004) || (C_REG_CONFIG == 32'h00000005))
    begin
      reg [C_DATA_WIDTH-1:0]  s_payload;
      wire [C_DATA_WIDTH-1:0] m_payload_data_i;
      reg                     s_ready_i;
      wire                    s_ready_ii;
      wire                    m_valid_i;
      wire                    m_valid_d;
      wire                    m_ready_d;
      wire                    m_payload_mux_sel;
      reg                     s_valid_d;
      reg                     s_ready_d;
      reg                     m_payload;
      
      // Local SRL FIFO signals
      reg [C_DATA_WIDTH-1:0]  fifo_data [15:0];
      reg [3:0]               next_read_addr;
      reg [3:0]               read_addr;
      reg [3:0]               write_addr;
      reg [3:0]               next_fifo_len;
      reg [3:0]               fifo_len;
      wire                    fifo_wr;
      wire                    fifo_rd;
      wire                    fifo_one_n;
      wire                    fifo_empty;
      wire                    fifo_full;
      wire                    fifo_empty_comb;
      wire                    m_valid_ii;
      wire [C_DATA_WIDTH-1:0] fifo_new_data;
      wire [C_DATA_WIDTH-1:0] fifo_output;
    
    

      ////////////////////////////////////////////////////////////////////
      // FIFO begin
      always @(posedge ACLK) 
      begin : fifo_memory
        if (fifo_wr) 
          fifo_data[write_addr] <= fifo_new_data;
      end

      assign fifo_output = fifo_data[next_read_addr];
          
      always  @*
      begin
        if (fifo_wr & ~fifo_rd)
          next_fifo_len = fifo_len + 1;
        else begin
          if (~fifo_wr & fifo_rd)
            next_fifo_len = fifo_len - 1;
          else
            next_fifo_len = fifo_len;
        end
      end // always  @ *

      always  @(posedge ACLK) 
      begin
        if (ARESET)
          fifo_len <= 4'b1111;
        else
          fifo_len <= next_fifo_len;
      end

      always @(posedge ACLK) 
      begin
        if (ARESET)
          read_addr <= 4'b0000;
        else
          read_addr <= next_read_addr;
      end

      always @*
      begin
        if (fifo_rd)
          next_read_addr = read_addr + 1;
        else
          next_read_addr = read_addr;
      end

      always @(posedge ACLK) 
      begin
        if (ARESET)
          write_addr <= 4'b0000;
        else begin
          if (fifo_wr)      
            write_addr <= write_addr + 1;
        end
      end
      
      assign fifo_empty =& fifo_len;

      assign fifo_one_n =| fifo_len;

      assign fifo_empty_comb =& next_fifo_len; 

      // The fifo is considered full when it has more than 11 elements
      // Which will gives us more than enough time to stop writing
      assign fifo_full = fifo_len[3] &  fifo_len[2] & ~fifo_empty;
                        
      // FIFO end
      ////////////////////////////////////////////////////////////////////
    
      // assign local signal to its output signal
      assign S_READY = s_ready_i;
      assign M_VALID = m_valid_i;

      // Registrate all slave side signals
      always @(posedge ACLK) 
      begin
        if (ARESET) begin          
          s_valid_d <= 1'b0;
          s_ready_d <= 1'b0;
        end else begin
          s_valid_d <= S_VALID;
          s_ready_d <= s_ready_i;
        end
        s_payload <= S_PAYLOAD_DATA;
      end // always @ (posedge ACLK)

      assign fifo_new_data = s_payload;
      
      // Registrate slave side READY
      always @(posedge ACLK) 
      begin
        if (ARESET)
          s_ready_i <= 1'b0;
        else
          s_ready_i <= s_ready_ii;
      end

      assign m_payload_mux_sel = fifo_empty | (~fifo_one_n & fifo_rd & fifo_wr);
      
      assign m_payload_data_i = m_payload_mux_sel?s_payload:fifo_output;

      assign m_valid_ii = ~fifo_empty_comb | s_valid_d;

      assign fifo_rd = m_valid_d & m_ready_d;

      assign fifo_wr = s_valid_d & s_ready_d;

      assign s_ready_ii = ~fifo_full;

    
      if (C_REG_CONFIG == 32'h00000004)
      begin

        reg m_valid_d_i;
        reg [C_DATA_WIDTH-1:0] m_payload_data_d;

        // M_READY is not registrated
        assign m_ready_d = M_READY;
        
        // Registrate FWD output signals
        always @(posedge ACLK) 
        begin
          if (ARESET) begin          
            m_valid_d_i      <= 1'b0;
          end else begin
            m_valid_d_i      <= m_valid_ii;
          end
          m_payload_data_d <= m_payload_data_i;
        end

        assign M_PAYLOAD_DATA = m_payload_data_d;
        assign m_valid_i = m_valid_d_i;
        assign m_valid_d = m_valid_d_i;
        
      end // if (C_REG_CONFIG == 4)
      else if (C_REG_CONFIG == 32'h00000005)
      begin
        reg m_valid_d_i;
        reg m_ready_d_i;
        
        // VALID and PAYLOAD is not registrated
        assign M_PAYLOAD_DATA = m_payload_data_i;
        assign m_valid_i = m_valid_ii;
        
        // Registrate M_VALID signal so it's synched with the M_READY signal
        always @(posedge ACLK) 
        begin
          if (ARESET) begin          
            m_valid_d_i      <= 1'b0;
          end else begin
            m_valid_d_i      <= m_valid_ii;
          end
        end

        assign m_valid_i = m_valid_ii;
        assign m_valid_d = m_valid_d_i;

        // Registrate M_READY signal
        always @(posedge ACLK) 
        begin
          if (ARESET) begin          
            m_ready_d_i      <= 1'b0;
          end else begin
            m_ready_d_i      <= M_READY;
          end
        end

        assign m_ready_d = m_ready_d_i;
        
      end // if (C_REG_CONFIG == 5)
    else
      begin
        // Shouldn't get here...added for lint rules
      end
      
    end // if ((C_REG_CONFIG == 4) || (C_REG_CONFIG == 5))
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 6
  // INPUTS mode
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000006)
    begin
      reg [1:0] state;
      reg [1:0] next_state;
      localparam [1:0] 
        ZERO = 2'b00,
        ONE  = 2'b01,
        TWO  = 2'b11;

      reg [C_DATA_WIDTH-1:0] storage_data1;
      reg [C_DATA_WIDTH-1:0] storage_data2;
      reg                    s_valid_d;
      reg                    s_ready_d;
      reg                    m_ready_d;
      reg                    m_valid_d;
      reg                    load_s2;
      reg                    sel_s2;
      wire                   new_access;
      wire                   access_done;
      reg                    s_ready_i; //local signal of output
      reg                    m_valid_i; //local signal of output
      
      // assign local signal to its output signal
      assign S_READY = s_ready_i;
      assign M_VALID = m_valid_i;

      // Registrate input control signals
      always @(posedge ACLK) 
      begin
        if (ARESET) begin          
          s_valid_d <= 1'b0;
          s_ready_d <= 1'b0;
          m_ready_d <= 1'b0;
        end else begin
          s_valid_d <= S_VALID;
          s_ready_d <= s_ready_i;
          m_ready_d <= M_READY;
        end
      end // always @ (posedge ACLK)

      // Load storage1 with slave side payload data when slave side ready is high
      always @(posedge ACLK) 
      begin
        if (s_ready_i)
          storage_data1 <= S_PAYLOAD_DATA;          
      end

      // Load storage2 with storage data 
      always @(posedge ACLK) 
      begin
        if (load_s2)
          storage_data2 <= storage_data1;
      end

      always @(posedge ACLK) 
      begin
        if (ARESET) 
          m_valid_d <= 1'b0;
        else 
          m_valid_d <= m_valid_i;
      end

      // Local help signals
      assign new_access  = s_ready_d & s_valid_d;
      assign access_done = m_ready_d & m_valid_d;


      // State Machine for handling output signals
      always @*
      begin
        next_state = state; // Stay in the same state unless we need to move to another state
        load_s2   = 0;
        sel_s2    = 0;
        m_valid_i = 0;
        s_ready_i = 0;
        case (state)
            // No transaction stored locally
            ZERO: begin
              load_s2   = 0;
              sel_s2    = 0;
              m_valid_i = 0;
              s_ready_i = 1;
              if (new_access) begin
                next_state = ONE; // Got one so move to ONE
                load_s2   = 1;
                m_valid_i = 0;
              end
              else begin
                next_state = next_state;
                load_s2   = load_s2;
                m_valid_i = m_valid_i;
              end

            end // case: ZERO

            // One transaction stored locally
            ONE: begin
              load_s2   = 0;
              sel_s2    = 1;
              m_valid_i = 1;
              s_ready_i = 1;
              if (~new_access & access_done) begin
                next_state = ZERO; // Read out one so move to ZERO
                m_valid_i = 0;                      
              end
              else if (new_access & ~access_done) begin
                next_state = TWO;  // Got another one so move to TWO
                s_ready_i = 0;
              end
              else if (new_access & access_done) begin
                load_s2   = 1;
                sel_s2    = 0;
              end
              else begin
                load_s2   = load_s2;
                sel_s2    = sel_s2;
              end


            end // case: ONE

            // TWO transaction stored locally
            TWO: begin
              load_s2   = 0;
              sel_s2    = 1;
              m_valid_i = 1;
              s_ready_i = 0;
              if (access_done) begin 
                next_state = ONE; // Read out one so move to ONE
                s_ready_i  = 1;
                load_s2    = 1;
                sel_s2     = 0;
              end
              else begin
                next_state = next_state;
                s_ready_i  = s_ready_i;
                load_s2    = load_s2;
                sel_s2     = sel_s2;
              end
            end // case: TWO
        endcase // case (state)
      end // always @ *


      // State Machine for handling output signals
      always @(posedge ACLK) 
      begin
        if (ARESET) 
          state <= ZERO;
        else
          state <= next_state; // Stay in the same state unless we need to move to another state
      end
      
      // Master Payload mux
      assign M_PAYLOAD_DATA = sel_s2?storage_data2:storage_data1;

    end // if (C_REG_CONFIG == 6)
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 7
  // Light-weight mode.
  // 1-stage pipeline register with bubble cycle, both FWD and REV pipelining
  // Operates same as 1-deep FIFO
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000007)
    begin
      reg [C_DATA_WIDTH-1:0] storage_data1;
      reg                    s_ready_i; //local signal of output
      reg                    m_valid_i; //local signal of output

      // assign local signal to its output signal
      assign S_READY = s_ready_i;
      assign M_VALID = m_valid_i;

      reg [1:0] areset_d; // Reset delay register
      always @(posedge ACLK) begin
        areset_d <= {areset_d[0], ARESET};
      end
      
      // Load storage1 with slave side data
      always @(posedge ACLK) 
      begin
        if (ARESET) begin
          s_ready_i <= 1'b0;
          m_valid_i <= 1'b0;
        end else if (areset_d == 2'b10) begin
          s_ready_i <= 1'b1;
        end else if (areset_d == 2'b00) begin
          if (m_valid_i & M_READY) begin
            s_ready_i <= 1'b1;
            m_valid_i <= 1'b0;
          end else if (S_VALID & s_ready_i) begin
            s_ready_i <= 1'b0;
            m_valid_i <= 1'b1;
          end
        end
        if (~m_valid_i) begin
          storage_data1 <= S_PAYLOAD_DATA;        
        end
      end
      assign M_PAYLOAD_DATA = storage_data1;
    end // if (C_REG_CONFIG == 7)
    
    else begin : default_case
      // Passthrough
      assign M_PAYLOAD_DATA = S_PAYLOAD_DATA;
      assign M_VALID        = S_VALID;
      assign S_READY        = M_READY;      
    end

  endgenerate
endmodule // reg_slice
