//----------------------------------------------------------------------------//
//  File:  axi_pcie_v2_8_0_axi_enhanced_tx_port_mux.v               //
//  Date : 02/11/11                                                           //
//                                                                            //
//  Description:                                                              //
//   Selects one of the 4 input AXI-S ports based on channel selected         //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_enhanced_top                                                        //
//      axi_enhanced_tx                                                       //
//        axi_enhanced_tx_port_mux                                            //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

module axi_pcie_v2_8_0_axi_enhanced_tx_port_mux #(
  parameter C_DATA_WIDTH = 32,            // RX/TX interface data width
  parameter C_FAMILY = "X7",              // Targeted FPGA family
  parameter C_ROOT_PORT = "FALSE",        // PCIe block is in root port mode
  parameter TCQ = 1,                      // Clock to Q time

  // Do not override parameters below this line
  parameter REM_WIDTH  = (C_DATA_WIDTH == 128) ? 2 : 1, // trem/rrem width
  parameter STRB_WIDTH = C_DATA_WIDTH / 8               // TSTRB width
  ) (
  //---------------------------------------------//
  // User Design I/O --RR Interface              //
  //---------------------------------------------//
  input [C_DATA_WIDTH-1:0]  s_axis_rr_tdata,     // RR Interface- TX data from user
  input                     s_axis_rr_tvalid,    // RR Interface- TX data is valid
  input [STRB_WIDTH-1:0]    s_axis_rr_tstrb,     // RR Interface- TX strobe byte enables
  input                     s_axis_rr_tlast,     // RR Interface- TX data is last
  input [3:0]               s_axis_rr_tuser,     // RR Interface- TX user signals
  output reg                s_axis_rr_tready,    // RR Interface- TX TREADY
  //---------------------------------------------//
  // User Design I/O --RW Interface              //
  //---------------------------------------------//
  input [C_DATA_WIDTH-1:0]  s_axis_rw_tdata,     // RW Interface- TX data from user
  input                     s_axis_rw_tvalid,    // RW Interface- TX data is valid
  input [STRB_WIDTH-1:0]    s_axis_rw_tstrb,     // RW Interface- TX strobe byte enables
  input                     s_axis_rw_tlast,     // RW Interface- TX data is last
  input [3:0]               s_axis_rw_tuser,     // RW Interface- TX user signals
  output reg                s_axis_rw_tready,    // RW Interface- TX TREADY
  //---------------------------------------------//
  // User Design I/O --CC Interface              //
  //---------------------------------------------//
  input [C_DATA_WIDTH-1:0]  s_axis_cc_tdata,     // CC Interface- TX data from user
  input                     s_axis_cc_tvalid,    // CC Interface- TX data is valid
  input [STRB_WIDTH-1:0]    s_axis_cc_tstrb,     // CC Interface- TX strobe byte enables
  input                     s_axis_cc_tlast,     // CC Interface- TX data is last
  input [3:0]               s_axis_cc_tuser,     // CC Interface- TX user signals
  output reg                s_axis_cc_tready,    // CC Interface- TX TREADY
  //---------------------------------------------//
  // User Design I/O --RR Interface              //
  //---------------------------------------------//
  input [C_DATA_WIDTH-1:0]  s_axis_cfg_tdata,    // CFG Interface- TX data from user
  input                     s_axis_cfg_tvalid,   // CFG Interface- TX data is valid
  input [STRB_WIDTH-1:0]    s_axis_cfg_tstrb,    // CFG Interface- TX strobe byte enables
  input                     s_axis_cfg_tlast,    // CFG Interface- TX data is last
  input [3:0]               s_axis_cfg_tuser,    // CFG Interface- TX user signals
  output reg                s_axis_cfg_tready,   // CFG Interface- TX TREADY


  // AXI MUX TX
  //-----------
  output  [C_DATA_WIDTH-1:0]s_axis_tx_tdata,   // TX data from user
  output                    s_axis_tx_tvalid,  // TX data is valid
  input                     s_axis_tx_tready,  // TREADY coming from the pipeline module
  output  [STRB_WIDTH-1:0]  s_axis_tx_tstrb,   // TX strobe byte enables
  output                    s_axis_tx_tlast,   // TX data is last
  output  [3:0]             s_axis_tx_tuser,   // TX user signals
  output  reg               flush_axis_tlp,    // Flush axis_* TLP on link dowm
  output wire               cc_in_packet,      // CC in-packet
  
  // Block signals
  input                     trn_lnk_up,        // TRN Link up signal
  // Arbiter Input
  input [1:0]               channel_sel,       // Channel Selected
  input                     rr_thrtl,          // Flag to indicate that RR interface must be throttled
  input                     rw_thrtl,          // Flag to indicate that RW interface must be throttled
  input                     cc_thrtl,          // Flag to indicate that CC interface must be throttled

  // Throttle Signal from thrtl_ctl
  input                     com_iclk,          // user clock from block
  input                     com_sysrst         // user reset from block

);

  localparam CFG = 2'b00;
  localparam CC = 2'b01;
  localparam RW = 2'b10;
  localparam RR = 2'b11;

  // internal registers
  reg [C_DATA_WIDTH-1:0]    s_axis_tx_tdata_d;
  reg                       s_axis_tx_tvalid_d;
  reg [STRB_WIDTH-1:0]      s_axis_tx_tstrb_d;
  reg                       s_axis_tx_tlast_d;
  reg [3:0]                 s_axis_tx_tuser_d;
  reg                       trn_lnk_up_d;

  reg                       cc_in_packet_int;

  assign s_axis_tx_tdata   = s_axis_tx_tdata_d;
  assign s_axis_tx_tvalid  = s_axis_tx_tvalid_d;
  assign s_axis_tx_tstrb   = s_axis_tx_tstrb_d;
  assign s_axis_tx_tlast   = s_axis_tx_tlast_d;
  assign s_axis_tx_tuser   = s_axis_tx_tuser_d;

  assign cc_in_packet      = cc_in_packet_int & !s_axis_cc_tlast;

  //Register User Inputs
  always @ ( posedge com_iclk)
  begin
    if (com_sysrst) begin
      s_axis_tx_tdata_d  <= #TCQ 'b0;
      s_axis_tx_tvalid_d <= #TCQ 'b0;
      s_axis_tx_tstrb_d  <= #TCQ 'b0;
      s_axis_tx_tlast_d  <= #TCQ 'b0;
      s_axis_tx_tuser_d  <= #TCQ 'b0;
    end  
    else if (s_axis_tx_tready) begin
    case(channel_sel)
      CFG :begin // CFG Port
             s_axis_tx_tdata_d  <= #TCQ s_axis_cfg_tdata;
             s_axis_tx_tvalid_d <= #TCQ s_axis_cfg_tvalid;
             s_axis_tx_tstrb_d  <= #TCQ s_axis_cfg_tstrb;
             s_axis_tx_tlast_d  <= #TCQ s_axis_cfg_tlast;
             s_axis_tx_tuser_d  <= #TCQ s_axis_cfg_tuser;
           end
      CC : begin // CC Port
             s_axis_tx_tdata_d  <= #TCQ s_axis_cc_tdata;
             s_axis_tx_tvalid_d <= #TCQ s_axis_cc_tvalid;
             s_axis_tx_tstrb_d  <= #TCQ s_axis_cc_tstrb;
             s_axis_tx_tlast_d  <= #TCQ s_axis_cc_tlast;
             s_axis_tx_tuser_d  <= #TCQ s_axis_cc_tuser;
           end
      RW : begin // RW Port      
             s_axis_tx_tdata_d  <= #TCQ s_axis_rw_tdata;
             s_axis_tx_tvalid_d <= #TCQ s_axis_rw_tvalid;
             s_axis_tx_tstrb_d  <= #TCQ s_axis_rw_tstrb;
             s_axis_tx_tlast_d  <= #TCQ s_axis_rw_tlast;
             s_axis_tx_tuser_d  <= #TCQ s_axis_rw_tuser;
           end
      default: begin // RR Port
             s_axis_tx_tdata_d  <= #TCQ s_axis_rr_tdata;
             s_axis_tx_tvalid_d <= #TCQ s_axis_rr_tvalid;
             s_axis_tx_tstrb_d  <= #TCQ s_axis_rr_tstrb;
             s_axis_tx_tlast_d  <= #TCQ s_axis_rr_tlast;
             s_axis_tx_tuser_d  <= #TCQ s_axis_rr_tuser;
           end
      endcase
    end
  end

  // Combinatorial logic to drive TREADY to correct channel
  always @ (channel_sel, s_axis_tx_tready,cc_thrtl,rw_thrtl,rr_thrtl)
  begin : DEMUX
    case(channel_sel ) 
    CFG : begin
            s_axis_cfg_tready = s_axis_tx_tready;
            s_axis_cc_tready = 1'b0;
            s_axis_rw_tready = 1'b0;
            s_axis_rr_tready = 1'b0;
          end
    CC : begin
           s_axis_cc_tready = s_axis_tx_tready && (!cc_thrtl);
           s_axis_cfg_tready = 1'b0;
           s_axis_rw_tready = 1'b0;
           s_axis_rr_tready = 1'b0;
         end
    RW : begin
           s_axis_rw_tready = s_axis_tx_tready && (!rw_thrtl);
           s_axis_cfg_tready = 1'b0;
           s_axis_cc_tready = 1'b0;
           s_axis_rr_tready = 1'b0;
         end
    default: begin
           s_axis_rr_tready = s_axis_tx_tready && (!rr_thrtl);
           s_axis_cfg_tready = 1'b0;
           s_axis_cc_tready = 1'b0;
           s_axis_rw_tready = 1'b0;
         end
    endcase 
  end

  // Flag to Flush AXI-S TLPs on link down

  always@(posedge com_iclk) begin
    if(com_sysrst) begin
      trn_lnk_up_d <= #TCQ 1'b0;
    end
    else begin
      trn_lnk_up_d <= #TCQ trn_lnk_up;
      if(trn_lnk_up_d && (!trn_lnk_up)) begin
        if((s_axis_rw_tready && s_axis_rw_tvalid && (!s_axis_rw_tlast)) || 
           (s_axis_rr_tready && s_axis_rr_tvalid && (!s_axis_rr_tlast)) || 
           (s_axis_cfg_tready && s_axis_cfg_tvalid && (!s_axis_cfg_tlast)) ||
           (s_axis_cc_tready && s_axis_cc_tvalid && (!s_axis_cc_tlast))) begin
          flush_axis_tlp <= #TCQ 1'b1;
        end
        else if(cc_in_packet) begin
          flush_axis_tlp <= #TCQ 1'b1;
        end
      end
      else begin
        flush_axis_tlp <= #TCQ 1'b0;
      end
    end
  end

  always@(posedge com_iclk) begin
    if(com_sysrst) begin
      cc_in_packet_int   <= #TCQ 1'b0;
    end
    else begin
      // Remains high throughout the packet
      if(s_axis_cc_tvalid && s_axis_cc_tready && (!s_axis_cc_tlast)) begin
        cc_in_packet_int <= #TCQ 1'b1;
      end
      else if(s_axis_cc_tlast) begin
        cc_in_packet_int <= #TCQ 1'b0;
      end
    end
  end

endmodule
