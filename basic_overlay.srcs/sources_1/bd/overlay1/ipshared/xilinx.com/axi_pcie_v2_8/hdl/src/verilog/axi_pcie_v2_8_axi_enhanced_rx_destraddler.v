`timescale 1ps/1ps

module axi_pcie_v2_8_0_axi_enhanced_rx_destraddler #(
  parameter C_DATA_WIDTH = 32,                          // RX/TX interface data width
  parameter C_FAMILY = "X7",                            // Targeted FPGA family
  parameter TCQ = 1,                                    // Clock to Q time

  // Do not override parameters below this line
  parameter REM_WIDTH  = (C_DATA_WIDTH == 128) ? 2 : 1, // trem/rrem width
  parameter RBAR_WIDTH = (C_FAMILY == "X7") ? 8 : 7,    // trn_rbar_hit width
  parameter STRB_WIDTH = C_DATA_WIDTH / 8               // TSTRB width
  ) (

  //---------------------------------------------------------------------------
  // TRN RX
  //---------------------------------------------------------------------------
  input      [C_DATA_WIDTH-1:0] trn_rd,                 // RX data from block
  input                         trn_rsof,               // RX start of packet
  input                         trn_reof,               // RX end of packet
  input                         trn_rsrc_rdy,           // RX source ready
  output                        trn_rdst_rdy_o,         // RX destination ready
  input                         trn_rsrc_dsc,           // RX source discontinue
  input         [REM_WIDTH-1:0] trn_rrem,               // RX remainder
  input                         trn_rerrfwd,            // RX error forward
  input        [RBAR_WIDTH-1:0] trn_rbar_hit,           // RX BAR hit
  input                         trn_recrc_err,          // RX ECRC error

  //--------------------------------------------------------------------------
  //TRN Realigned outputs to the RX data pipeline and Null Generator
  //--------------------------------------------------------------------------

  output  reg [C_DATA_WIDTH-1:0]trn_rd_o,               // Realigned data output
  output  reg                   trn_rsof_o,             // Realigned start of Frame
  output  reg                   trn_reof_o,             // Realigned End of Frame
  output  reg                   trn_rsrc_rdy_o,         // Realigned Source ready
  input                         trn_rdst_rdy,           // Destination ready from user
  output  reg                   trn_rsrc_dsc_o,         // Discontinue realigned
  output  reg   [REM_WIDTH-1:0] trn_rrem_o,             // RREM realigned
  output  reg                   trn_rerrfwd_o,          // rerrfwd realigned
  output  reg  [RBAR_WIDTH-1:0] trn_rbar_hit_o,         // RBAR hit realigned
  output  reg                   trn_recrc_err_o,        // ECRC error realigned

  //---------------------------------------------------------------------------
  // System
  //---------------------------------------------------------------------------

  input                         com_iclk,               // user clock from block
  input                         com_sysrst              // user reset from block

);

generate
// C_DATA_WIDTH == 128
if(C_DATA_WIDTH == 128) begin : data_width_128

  localparam               IDLE             = 2'b00;
  localparam               PROCESS_TLP_BEAT = 2'b01;
  localparam               THROTTLE_TLP     = 2'b10;

  reg [1:0]                state;
  reg                      local_throttle;
  // internal storage
  reg [C_DATA_WIDTH/2-1:0] trn_rd_d;
  reg                      trn_rsof_d;
  reg                      trn_reof_d;
  reg                      trn_rsrc_rdy_d;
  reg                      trn_rsrc_dsc_d;
  reg    [REM_WIDTH-1:0]   trn_rrem_d;
  reg                      trn_rerrfwd_d;
  reg   [RBAR_WIDTH-1:0]   trn_rbar_hit_d;
  reg                      trn_recrc_err_d;

  assign trn_rdst_rdy_o = trn_rdst_rdy && !local_throttle;

  // Internal buffer to store TRN signals
  always@(posedge com_iclk) begin
    if(com_sysrst) begin
      trn_rd_d            <= #TCQ {C_DATA_WIDTH/2{1'b0}};
      trn_rsof_d          <= #TCQ 1'b0;
      trn_reof_d          <= #TCQ 1'b0;
      trn_rsrc_rdy_d      <= #TCQ 1'b0;
      trn_rsrc_dsc_d      <= #TCQ 1'b0;
      trn_rrem_d          <= #TCQ {REM_WIDTH{1'b0}};
      trn_rerrfwd_d       <= #TCQ 1'b0;
      trn_rbar_hit_d      <= #TCQ {RBAR_WIDTH{1'b0}};
      trn_recrc_err_d     <= #TCQ 1'b0;
    end
    else begin
      // Enable signal for registers
      if(trn_rdst_rdy) begin
        trn_rd_d          <= #TCQ trn_rd[63:0];
        trn_rsof_d        <= #TCQ trn_rsof;
        trn_reof_d        <= #TCQ trn_reof;
        trn_rsrc_rdy_d    <= #TCQ trn_rsrc_rdy;
        trn_rsrc_dsc_d    <= #TCQ trn_rsrc_dsc;
        trn_rrem_d        <= #TCQ trn_rrem;
        trn_rerrfwd_d     <= #TCQ trn_rerrfwd;
        trn_rbar_hit_d    <= #TCQ trn_rbar_hit;
        trn_recrc_err_d   <= #TCQ trn_recrc_err;
      end
    end
  end

  // Output driver logic based on StateMachine state values and TRN inputs
  always@(trn_rd,trn_rsof,trn_reof,trn_rrem,trn_rsrc_dsc,trn_rsrc_rdy,trn_rdst_rdy,
          trn_recrc_err,trn_rerrfwd,trn_rbar_hit,state,local_throttle,com_sysrst) begin
    if(com_sysrst) begin
      trn_rd_o            <= {C_DATA_WIDTH{1'b0}};
      trn_rsof_o          <= 1'b0;
      trn_reof_o          <= 1'b0;
      trn_rsrc_rdy_o      <= 1'b0;
      trn_rsrc_dsc_o      <= 1'b0;
      trn_rrem_o          <= {REM_WIDTH{1'b0}};
      trn_rerrfwd_o       <= 1'b0;
      trn_rbar_hit_o      <= {RBAR_WIDTH{1'b0}};
      trn_recrc_err_o     <= 1'b0;
    end
    else begin
      case(state)
      IDLE : begin
               if(trn_rsof && !trn_rrem[1] && !trn_reof && trn_rdst_rdy && trn_rsrc_rdy) begin // Unaligned TLP
                 // Create a void i.e. Pass default '0' values to all outputs
                 trn_rd_o            <= {C_DATA_WIDTH{1'b0}};
                 trn_rsof_o          <= 1'b0;
                 trn_reof_o          <= 1'b0;
                 trn_rsrc_rdy_o      <= 1'b0;
                 trn_rsrc_dsc_o      <= 1'b0;
                 trn_rrem_o          <= {REM_WIDTH{1'b0}};
                 trn_rerrfwd_o       <= 1'b0;
                 trn_rbar_hit_o      <= {RBAR_WIDTH{1'b0}};
                 trn_recrc_err_o     <= 1'b0;
               end
               else if(trn_rsof && trn_reof && !trn_rrem[1] && trn_rdst_rdy && trn_rsrc_rdy) begin // straddled Beat
                 // Pass only EOF
                 trn_rd_o            <= {trn_rd[127:64],64'b0};
                 trn_rsof_o          <= 1'b0;
                 trn_reof_o          <= trn_reof;
                 trn_rsrc_rdy_o      <= trn_rsrc_rdy;
                 trn_rsrc_dsc_o      <= trn_rsrc_dsc;
                 trn_rrem_o          <= {1'b0,trn_rrem[0]};
                 trn_rerrfwd_o       <= trn_rerrfwd_d;   // Old value
                 trn_rbar_hit_o      <= trn_rbar_hit_d;  // Old value
                 trn_recrc_err_o     <= trn_recrc_err;   // New value is used
  
               end
               else begin // Default
                 trn_rd_o            <= trn_rd;
                 trn_rsof_o          <= trn_rsof;
                 trn_reof_o          <= trn_reof;
                 trn_rsrc_rdy_o      <= trn_rsrc_rdy;
                 trn_rsrc_dsc_o      <= trn_rsrc_dsc;
                 trn_rrem_o          <= trn_rrem;
                 trn_rerrfwd_o       <= trn_rerrfwd;
                 trn_rbar_hit_o      <= trn_rbar_hit;
                 trn_recrc_err_o     <= trn_recrc_err;
               end
             end
      PROCESS_TLP_BEAT : begin
               // eof in [127:64] only and no straddled beat
               if (trn_reof && !trn_rsof && !trn_rrem[1] && trn_rdst_rdy && trn_rsrc_rdy) begin
                 // adjust stored values with the live ones
                 trn_rd_o            <= {trn_rd_d,trn_rd[127:64]};
                 trn_rsof_o          <= trn_rsof_d;
                 trn_reof_o          <= trn_reof;
                 trn_rsrc_rdy_o      <= trn_rsrc_rdy;
                 trn_rsrc_dsc_o      <= trn_rsrc_dsc;
                 trn_rrem_o          <= {1'b1,trn_rrem[0]}; // Can be D0 D1 D2 -- or D0 D1 D2 D3 or H0 H1 H2 H3(D0/--)
                 trn_rerrfwd_o       <= trn_rerrfwd_d;
                 trn_rbar_hit_o      <= trn_rbar_hit_d;
                 trn_recrc_err_o     <= trn_recrc_err;
               end
               // Straddled beat
               // adjust stored values with the live ones. previous TLP ends here 
               else if(trn_reof && trn_rsof && trn_rdst_rdy && trn_rsrc_rdy) begin
                 trn_rd_o            <= {trn_rd_d,trn_rd[127:64]};
                 trn_rsof_o          <= trn_rsof_d;  // Old value
                 trn_reof_o          <= trn_reof;
                 trn_rsrc_rdy_o      <= trn_rsrc_rdy;
                 trn_rsrc_dsc_o      <= trn_rsrc_dsc;
                 trn_rrem_o          <= {1'b1,trn_rrem[0]}; // Can be D2 D1 D0 -- or D3 D3 D1 D0
                 trn_rerrfwd_o       <= trn_rerrfwd_d;
                 trn_rbar_hit_o      <= trn_rbar_hit_d;
                 trn_recrc_err_o     <= trn_recrc_err;
               end
               // eof beat having more than 2DW
               else if(trn_reof && trn_rdst_rdy && trn_rsrc_rdy) begin
                 // Pass {stored, live}
                 trn_rd_o            <= {trn_rd_d,trn_rd[127:64]};
                 trn_rsof_o          <= trn_rsof_d;
                 trn_reof_o          <= 1'b0;
                 trn_rsrc_rdy_o      <= trn_rsrc_rdy_d;
                 trn_rsrc_dsc_o      <= trn_rsrc_dsc;
                 trn_rrem_o          <= {REM_WIDTH{1'b1}};
                 trn_rerrfwd_o       <= trn_rerrfwd_d;
                 trn_rbar_hit_o      <= trn_rbar_hit_d;
                 trn_recrc_err_o     <= trn_recrc_err_d;
               end
               // Mid-Packet transfer
               else begin
                 // Pass {stored, live}
                 trn_rd_o            <= {trn_rd_d,trn_rd[127:64]};
                 trn_rsof_o          <= trn_rsof_d;
                 trn_reof_o          <= trn_reof;
                 trn_rsrc_rdy_o      <= trn_rsrc_rdy_d;
                 trn_rsrc_dsc_o      <= trn_rsrc_dsc;
                 trn_rrem_o          <= {REM_WIDTH{1'b1}};
                 trn_rerrfwd_o       <= trn_rerrfwd_d;
                 trn_rbar_hit_o      <= trn_rbar_hit_d;
                 trn_recrc_err_o     <= trn_recrc_err;
               end
             end
      default : begin
               // Throttle PCIe interface (will be for 1 cycle only)
               // Use stored values only in this state
               trn_rd_o              <= {trn_rd_d,64'b0};
               trn_rsof_o            <= trn_rsof_d;
               trn_reof_o            <= trn_reof_d;
               trn_rsrc_rdy_o        <= trn_rsrc_rdy_d;
               trn_rsrc_dsc_o        <= trn_rsrc_dsc_d;
               trn_rrem_o            <= {1'b0,trn_rrem_d[0]}; // Can be D1 D0 -- -- or D0 -- -- --
               trn_rerrfwd_o         <= trn_rerrfwd_d;
               trn_rbar_hit_o        <= trn_rbar_hit_d;
               trn_recrc_err_o       <= trn_recrc_err_d;
             end
      endcase
    end
  end

  // State Machine to re-align TLPs
  always @(posedge com_iclk) begin
    if(com_sysrst || trn_rsrc_dsc) begin
      state <= #TCQ IDLE;
      local_throttle <= #TCQ 1'b0;
    end
    else begin
      case(state)
      IDLE: begin
              // Unaligned TLP start or Straddle Beat
              if(((trn_rsof && !trn_reof) || (trn_rsof && trn_reof )) && !trn_rrem[1] && trn_rdst_rdy && trn_rsrc_rdy) begin
                state <= #TCQ PROCESS_TLP_BEAT;
              end
              local_throttle <= #TCQ 1'b0;
            end
      PROCESS_TLP_BEAT: begin
              // Wait for eof only
              if (trn_reof && !trn_rsof && trn_rdst_rdy && trn_rsrc_rdy) begin
                // eof in [128:64] only
                if(!trn_rrem[1]) begin
                  state <= #TCQ IDLE;
                  local_throttle <= #TCQ 1'b0;
                end
                // eof in [128:0]
                else begin
                  state <= #TCQ THROTTLE_TLP;
                  local_throttle <= #TCQ 1'b1;
                end
              end
            end
      default : begin
              if(trn_rdst_rdy) begin
                state  <= #TCQ IDLE;
                local_throttle <= #TCQ 1'b0;
              end
            end
      endcase
    end
  end

end // data_width_128
// C_DATA_WIDTH == 32 or C_DATA_WIDTH == 64
else begin: data_width_32_64
  // Direct mapping of inputs to outputs
  always@(*) begin
      trn_rd_o            <= trn_rd;
      trn_rsof_o          <= trn_rsof;
      trn_reof_o          <= trn_reof;
      trn_rsrc_rdy_o      <= trn_rsrc_rdy;
      trn_rsrc_dsc_o      <= trn_rsrc_dsc;
      trn_rrem_o          <= trn_rrem;
      trn_rerrfwd_o       <= trn_rerrfwd;
      trn_rbar_hit_o      <= trn_rbar_hit;
      trn_recrc_err_o     <= trn_recrc_err;
  end
  assign trn_rdst_rdy_o = trn_rdst_rdy;
end // data_width_32_64

endgenerate

endmodule
