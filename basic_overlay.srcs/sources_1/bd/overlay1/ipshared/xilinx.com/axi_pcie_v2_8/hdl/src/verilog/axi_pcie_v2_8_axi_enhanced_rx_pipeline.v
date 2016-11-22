//----------------------------------------------------------------------------//
//  File: axi_pcie_v2_8_0_axi_enhanced_rx_pipeline.v                //
//                                                                            //
//  Description:                                                              //
//  TRN to AXI RX pipeline. Converts received data from TRN protocol to AXI.  //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_enhanced_top                                                        //
//      axi_enhanced_rx                                                       //
//        axi_enhanced_rx_pipeline                                            //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

module axi_pcie_v2_8_0_axi_enhanced_rx_pipeline #(
  parameter C_DATA_WIDTH = 128,           // RX/TX interface data width
  parameter C_FAMILY     = "X7",          // Targeted FPGA family
  parameter C_MSI_DECODE_ENABLE = "TRUE", // Enable or Disable Incoming MSI Packet Decoding
  parameter C_ROOT_PORT = "FALSE",        // Indicates if the core is working as RP or EP
  parameter C_RX_REALIGN = "TRUE",        // Indicates whether Realignment is enabled or not
  parameter TCQ = 1,                      // Clock to Q time

  // Do not override parameters below this line
  parameter REM_WIDTH  = (C_DATA_WIDTH == 128) ? 2 : 1, // trem/rrem width
  parameter RBAR_WIDTH = (C_FAMILY == "X7") ? 8 : 7,    // trn_rbar_hit width
  parameter STRB_WIDTH = C_DATA_WIDTH / 8               // TSTRB width
  ) (

  // AXI RX
  //-----------
  output reg [C_DATA_WIDTH-1:0] m_axis_rx_tdata,     // RX data to user
  output reg                    m_axis_rx_tvalid,    // RX data is valid
  input                         m_axis_rx_tready,    // RX ready for data
  output       [STRB_WIDTH-1:0] m_axis_rx_tstrb,     // RX strobe byte enables
  output                        m_axis_rx_tlast,     // RX data is last
  output reg             [21:0] m_axis_rx_tuser,     // RX user signals
  input                  [63:0] msi_address,         // MSI address
  output                        is_msi_trn,          // Indicates whether the packet is a MSI

  // TRN RX
  //-----------
  input      [C_DATA_WIDTH-1:0] trn_rd,              // RX data from block
  input                         trn_rsof,            // RX start of packet
  input                         trn_reof,            // RX end of packet
  input                         trn_rsrc_rdy,        // RX source ready
  output reg                    trn_rdst_rdy,        // RX destination ready
  input                         trn_rsrc_dsc,        // RX source discontinue
  input         [REM_WIDTH-1:0] trn_rrem,            // RX remainder
  input                         trn_rerrfwd,         // RX error forward
  input       [RBAR_WIDTH -1:0] trn_rbar_hit,        // RX BAR hit
  input                         trn_recrc_err,       // RX ECRC error

  // Null Inputs
  //-----------
  input                         null_rx_tvalid,      // NULL generated tvalid
  input                         null_rx_tlast,       // NULL generated tlast
  input        [STRB_WIDTH-1:0] null_rx_tstrb,       // NULL generated tstrb
  input                         null_rdst_rdy,       // NULL generated rdst_rdy
  input                   [4:0] null_is_eof,         // NULL generated is_eof
  input                  [11:0] pkt_len_counter,     // Number of data beats left in the current TLP

  // System
  //-----------
  input                         com_iclk,            // user clock from block
  input                         com_sysrst             // user reset from block
);


// Wires and regs for creating AXI signals
wire              [4:0] is_sof;
wire              [4:0] is_sof_prev;

wire              [4:0] is_eof;
wire              [4:0] is_eof_prev;

reg    [STRB_WIDTH-1:0] reg_tstrb;
wire   [STRB_WIDTH-1:0] tstrb;
wire   [STRB_WIDTH-1:0] tstrb_prev;

reg                     reg_tlast;
wire                    rsrc_rdy_filtered;

// Wires and regs for previous value buffer
wire [C_DATA_WIDTH-1:0] trn_rd_DW_swapped;
reg  [C_DATA_WIDTH-1:0] trn_rd_prev;

wire                    data_hold;
reg                     data_prev;

reg                     trn_reof_prev;
reg     [REM_WIDTH-1:0] trn_rrem_prev;
reg                     trn_rsrc_rdy_prev;
reg                     trn_rsrc_dsc_prev;
reg                     trn_rsof_prev;
reg    [7:0]            trn_rbar_hit_prev;
reg                     trn_rerrfwd_prev;
reg                     trn_recrc_err_prev;

// Null packet handling signals
reg                     null_mux_sel;
reg                     trn_in_packet;
wire                    dsc_flag;
wire                    dsc_detect;
reg                     reg_dsc_detect;
reg                     trn_rsrc_dsc_d;
reg [1:0]               pkt_fmt;
reg [4:0]               pkt_type;

// Create constant-width rbar_hit wire regardless of target architecture
wire              [7:0] trn_rbar_hit_full;
generate
  if(RBAR_WIDTH == 7) begin : rbar_width_7
    assign trn_rbar_hit_full = {1'b0, trn_rbar_hit};
  end
  else begin : rbar_width_8
    assign trn_rbar_hit_full = trn_rbar_hit;
  end
endgenerate

// Parameter used to calculate no of dwords in single beat

localparam INTF_WIDTH_DWORDS = (C_DATA_WIDTH == 128) ? 11'd4 :
                                           (C_DATA_WIDTH == 64) ? 11'd2 : 11'd1;

// used for the case where in the Link goes down for the last data beat of the TLP
wire null_mux_sel_q = (dsc_detect && (pkt_len_counter <= INTF_WIDTH_DWORDS));

reg null_transmit_done;

always @(posedge com_iclk)
begin
  if(com_sysrst)
    null_transmit_done <= #TCQ 1'b0;
  else
    null_transmit_done <= #TCQ null_mux_sel_q;  
end

// Create "filtered" version of rsrc_rdy, where discontinued SOFs are removed.
assign rsrc_rdy_filtered = trn_rsrc_rdy &&
                                 (trn_in_packet || (trn_rsof && !trn_rsrc_dsc));

//----------------------------------------------------------------------------//
// Previous value buffer                                                      //
// ---------------------                                                      //
// We are inserting a pipeline stage in between TRN and AXI, which causes     //
// some issues with handshaking signals m_axis_rx_tready/trn_rdst_rdy. The    //
// added cycle of latency in the path causes the user design to fall behind   //
// the TRN interface whenever it throttles.                                   //
//                                                                            //
// To avoid loss of data, we must keep the previous value of all trn_r*       //
// signals in case the user throttles.                                        //
//----------------------------------------------------------------------------//
always @(posedge com_iclk) begin
  if(com_sysrst) begin
    trn_rd_prev        <= #TCQ {C_DATA_WIDTH{1'b0}};
    trn_rsof_prev      <= #TCQ 1'b0;
    trn_rrem_prev      <= #TCQ {REM_WIDTH{1'b0}};
    trn_rsrc_rdy_prev  <= #TCQ 1'b0;
    trn_rbar_hit_prev  <= #TCQ 8'h00;
    trn_rerrfwd_prev   <= #TCQ 1'b0;
    trn_recrc_err_prev <= #TCQ 1'b0;
    trn_reof_prev      <= #TCQ 1'b0;
    trn_rsrc_dsc_prev  <= #TCQ 1'b0;
  end
  else begin
    // prev buffer works by checking trn_rdst_rdy. When trn_rdst_rdy is
    // asserted, a new value is present on the interface.
    if(trn_rdst_rdy) begin
      trn_rd_prev        <= #TCQ trn_rd_DW_swapped;
      trn_rsof_prev      <= #TCQ trn_rsof;
      trn_rrem_prev      <= #TCQ trn_rrem;
      trn_rbar_hit_prev  <= #TCQ trn_rbar_hit_full;
      trn_rerrfwd_prev   <= #TCQ trn_rerrfwd;
      trn_recrc_err_prev <= #TCQ trn_recrc_err;
      trn_rsrc_rdy_prev  <= #TCQ rsrc_rdy_filtered;
      trn_reof_prev      <= #TCQ trn_reof;
      trn_rsrc_dsc_prev  <= #TCQ trn_rsrc_dsc || dsc_flag;
    end
  end
end


//----------------------------------------------------------------------------//
// Create TDATA                                                               //
//----------------------------------------------------------------------------//

// Convert TRN data format to AXI data format. AXI is DWORD swapped from TRN
// 128-bit:                 64-bit:                  32-bit:
// TRN DW0 maps to AXI DW3  TRN DW0 maps to AXI DW1  TNR DW0 maps to AXI DW0
// TRN DW1 maps to AXI DW2  TRN DW1 maps to AXI DW0
// TRN DW2 maps to AXI DW1
// TRN DW3 maps to AXI DW0
generate
  if(C_DATA_WIDTH == 128) begin : rd_DW_swap_128
    assign trn_rd_DW_swapped = {trn_rd[31:0],
                                trn_rd[63:32],
                                trn_rd[95:64],
                                trn_rd[127:96]};
  end
  else if(C_DATA_WIDTH == 64) begin : rd_DW_swap_64
    assign trn_rd_DW_swapped = {trn_rd[31:0], trn_rd[63:32]};
  end
  else begin : rd_DW_swap_32
    assign trn_rd_DW_swapped = trn_rd;
  end
endgenerate

// to get the packet address and decide on the packet which targets MSI address
// This information is used by the AXI Enhanced Demux where it decodes the pkt type
// genererate this info only in case of 64 bit data and 128 bit data (unaligned TLP start)


generate
  if((C_ROOT_PORT == "TRUE") && (C_MSI_DECODE_ENABLE == "TRUE") && (C_DATA_WIDTH == 64)) begin : root_port_msi_64
  // internal reg
  reg       is_msi_trn_q;
  reg       is_msi_trn_d;
  reg [1:0] state;

  // local param
  localparam IDLE = 2'b00;
  localparam TRANSLATE_ADDR_32 = 2'b01;
  localparam TRANSLATE_ADDR_64 = 2'b10;

  always@(posedge com_iclk) begin
    if(com_sysrst) begin
      state <= #TCQ IDLE;
    end
    else begin
      case(state)
      IDLE : begin
               if(trn_rsof && trn_rsrc_rdy && trn_rdst_rdy) begin
                 // 3DW MWr
                 if ((trn_rd[62:61] == 2'b10) && (trn_rd[60:56] == 5'b0)) begin
                    state <= #TCQ TRANSLATE_ADDR_32;
                 end
                 // 4DW
                 else if((trn_rd[62:61] == 2'b11) && (trn_rd[60:56] == 5'b0)) begin
                    state <= #TCQ TRANSLATE_ADDR_64;
                 end
               end
             end
      default : begin
               if (trn_rsrc_rdy && trn_rdst_rdy) begin
                  state <= #TCQ IDLE;
               end
             end
      endcase
    end
  end

  always@(*) begin
  case(state)
  IDLE : begin
           is_msi_trn_q = 1'b0;
         end
  TRANSLATE_ADDR_32 : begin
           if((msi_address == {32'h0,trn_rd[63:32]}) && trn_rsrc_rdy && trn_rdst_rdy) begin
             is_msi_trn_q = 1'b1;
           end
           else begin
             is_msi_trn_q = 1'b0;
           end
         end
  default : begin
           if((msi_address == trn_rd[63:0]) && trn_rsrc_rdy && trn_rdst_rdy) begin
             is_msi_trn_q = 1'b1;
           end
           else begin
             is_msi_trn_q = 1'b0;
           end
         end
  endcase
  end

  always@(posedge com_iclk) begin
    if(com_sysrst) begin
      is_msi_trn_d <= #TCQ 1'b0;
    end
    else begin
      if(is_msi_trn_q) begin
        is_msi_trn_d <= #TCQ 1'b1;
      end
      else if(m_axis_rx_tlast && m_axis_rx_tready && m_axis_rx_tvalid) begin
        is_msi_trn_d <= #TCQ 1'b0;
      end
    end
  end

    assign is_msi_trn = is_msi_trn_q || is_msi_trn_d;

  end // root_port_msi_64

  //coverage off
  else if ((C_ROOT_PORT == "TRUE") && (C_MSI_DECODE_ENABLE == "TRUE") && (C_DATA_WIDTH == 128)) begin : root_port_msi_128
  // internal reg
  reg is_msi_trn_q;

   // get packet format and packet type

    always@(*) begin
      pkt_fmt  = ( trn_rsrc_rdy && trn_rdst_rdy && trn_rsof ) ? trn_rd[126:125] : 2'b00;
      pkt_type = ( trn_rsrc_rdy && trn_rdst_rdy && trn_rsof ) ? trn_rd[124:120] : 5'h1F;
    end

    always @(posedge com_iclk)
    begin
      if(com_sysrst) begin
        is_msi_trn_q     <= #TCQ 1'b0;
      end
      else begin
        if((pkt_fmt == 2'b10) && (pkt_type == 5'h00)) begin // 3DW Header
          if(msi_address == {32'h0,trn_rd[63:32]}) begin // Packet is MSI
            is_msi_trn_q <= #TCQ 1'b1;
          end
          else begin// Posted TLP
            is_msi_trn_q <= #TCQ 1'b0;
          end
        end
        else if ((pkt_fmt == 2'b11) && (pkt_type == 5'h00)) begin // 4DW Header
          if(msi_address == trn_rd[63:0]) begin // Packet is MSI
            is_msi_trn_q <= #TCQ 1'b1;
          end
          else begin// Posted TLP
            is_msi_trn_q <= #TCQ 1'b0;
          end
        end
        else if(m_axis_rx_tlast && m_axis_rx_tready && m_axis_rx_tvalid) begin
          is_msi_trn_q   <= #TCQ 1'b0;
        end
      end
    end

    assign is_msi_trn = is_msi_trn_q;

  end // root_port_msi_128
  //coverage on
  else if((C_ROOT_PORT == "FALSE") || (C_MSI_DECODE_ENABLE == "FALSE"))
  begin
    assign is_msi_trn = 1'b0;
  end    

endgenerate

// Create special buffer which locks in the proper value of TDATA depending
// on whether the user is throttling or not. This buffer has three states:
//
//       HOLD state: TDATA maintains its current value
//                   - the user has throttled the PCIe block
//   PREVIOUS state: the buffer provides the previous value on trn_rd
//                   - the user has finished throttling, and is a little behind
//                     the PCIe block
//    CURRENT state: the buffer passes the current value on trn_rd
//                   - the user is caught up and ready to receive the latest
//                     data from the PCIe block
always @(posedge com_iclk) begin
  if(com_sysrst) begin
    m_axis_rx_tdata <= #TCQ {C_DATA_WIDTH{1'b0}};
  end
  else begin
    if(!data_hold) begin
      // PREVIOUS state
      if(data_prev) begin
        m_axis_rx_tdata <= #TCQ trn_rd_prev;
      end

      // CURRENT state
      else begin
        m_axis_rx_tdata <= #TCQ trn_rd_DW_swapped;
      end
    end
    // else HOLD state
  end
end

// Logic to instruct pipeline to hold its value
assign data_hold = (!m_axis_rx_tready && m_axis_rx_tvalid);

// Logic to instruct pipeline to use previous bus values. Always use previous
// value after holding a value.
always @(posedge com_iclk) begin
  if(com_sysrst) begin
    data_prev <= #TCQ 1'b0;
  end
  else begin
    data_prev <= #TCQ data_hold;
  end
end


//----------------------------------------------------------------------------//
// Create TVALID, TLAST, TSTRB, TUSER                                         //
// -----------------------------------                                        //
// Use the same strategy for these signals as for TDATA, except here we need  //
// an extra provision for null packets.                                       //
//----------------------------------------------------------------------------//
always @(posedge com_iclk) begin
  if(com_sysrst) begin
    m_axis_rx_tvalid <= #TCQ 1'b0;
    reg_tlast        <= #TCQ 1'b0;
    reg_tstrb        <= #TCQ {STRB_WIDTH{1'b1}};
    m_axis_rx_tuser  <= #TCQ 22'h0;
  end
  else begin
    if(!data_hold) begin
      // If in a null packet, use null generated value
      if(null_mux_sel || null_mux_sel_q) begin
        // coverage off -item e 1 -exprrow 1
        m_axis_rx_tvalid <= #TCQ (null_rx_tvalid && !null_transmit_done);
        reg_tlast        <= #TCQ (null_rx_tlast && !null_transmit_done);
        reg_tstrb        <= #TCQ null_rx_tstrb;
        m_axis_rx_tuser  <= #TCQ {null_is_eof, 17'h0000};
      end

      // PREVIOUS state
      else if(data_prev) begin
        m_axis_rx_tvalid <= #TCQ (trn_rsrc_rdy_prev || dsc_flag);
        reg_tlast        <= #TCQ trn_reof_prev;
        reg_tstrb        <= #TCQ tstrb_prev;
        m_axis_rx_tuser  <= #TCQ {is_eof_prev,          // TUSER bits [21:17]
                                  2'b00,                // TUSER bits [16:15]
                                  is_sof_prev,          // TUSER bits [14:10]
                                  trn_rbar_hit_prev,    // TUSER bits [8:2]
                                  trn_rerrfwd_prev,     // TUSER bit  [1]
                                  trn_recrc_err_prev};  // TUSER bit  [0]
      end

      // CURRENT state
      else begin
        m_axis_rx_tvalid <= #TCQ (rsrc_rdy_filtered || dsc_flag);
        reg_tlast        <= #TCQ trn_reof;
        reg_tstrb        <= #TCQ tstrb;
        m_axis_rx_tuser  <= #TCQ {is_eof,               // TUSER bits [21:17]
                                  2'b00,                // TUSER bits [16:15]
                                  is_sof,               // TUSER bits [14:10]
                                  trn_rbar_hit_full,    // TUSER bits [8:2]
                                  trn_rerrfwd,          // TUSER bit  [1]
                                  trn_recrc_err};       // TUSER bit  [0]
      end
    end
    // else HOLD state
  end
end

// Hook up TLAST and TSTRB depending on interface width
// generate
  // For 128-bit interface, don't pass TLAST and TSTRB to user (is_eof and
  // is_data passed to user instead). reg_tlast is still used internally.
  // if(C_DATA_WIDTH == 128) begin : tlast_tstrb_hookup_128
  //   assign m_axis_rx_tlast = 1'b0;
  //   assign m_axis_rx_tstrb = {STRB_WIDTH{1'b1}};
  // end

  // For 64/32-bit interface, pass TLAST to user.
  // else begin : tlast_tstrb_hookup_64_32
    assign m_axis_rx_tlast = reg_tlast;
    assign m_axis_rx_tstrb = reg_tstrb;
  // end
// endgenerate


//----------------------------------------------------------------------------//
// Create TSTRB                                                               //
// ------------                                                               //
// Convert RREM to STRB. Here, we are converting the encoding method for the  //
// location of the EOF from TRN flavor (rrem) to AXI (TSTRB).                 //
//                                                                            //
// NOTE: for each configuration, we need two values of TSTRB, the current and //
//       previous values. The need for these two values is described below.   //
//----------------------------------------------------------------------------//
generate
  if(C_DATA_WIDTH == 128) begin : rrem_to_tstrb_128
    // TLAST and TSTRB not used in 128-bit interface. is_sof and is_eof used
    // instead.
    assign tstrb      = (trn_rrem == 2'b00) ? 16'h000F : (trn_rrem == 2'b01) ? 16'h00FF
                                                       : (trn_rrem == 2'b10) ? 16'h0FFF : 16'hFFFF ;
    assign tstrb_prev = (trn_rrem_prev == 2'b00) ? 16'h000F : (trn_rrem_prev == 2'b01) ? 16'h00FF
                                                       : (trn_rrem_prev == 2'b10) ? 16'h0FFF : 16'hFFFF ;
  end
  else if(C_DATA_WIDTH == 64) begin : rrem_to_tstrb_64
    // 64-bit interface: contains 2 DWORDs per cycle, for a total of 8 bytes
    //  - TSTRB has only two possible values here, 0xFF or 0x0F
    assign tstrb      = trn_rrem      ? 8'hFF : 8'h0F;
    assign tstrb_prev = trn_rrem_prev ? 8'hFF : 8'h0F;
  end
  else begin : rrem_to_tstrb_32
    // 32-bit interface: contains 1 DWORD per cycle, for a total of 4 bytes
    //  - TSTRB is always 0xF in this case, due to the nature of the PCIe block
    assign tstrb      = 4'hF;
    assign tstrb_prev = 4'hF;
  end
endgenerate


//----------------------------------------------------------------------------//
// Create is_sof                                                              //
// -------------                                                              //
// is_sof is a signal to the user indicating the location of SOF in TDATA   . //
// Due to inherent 64-bit alignment of packets from the block, the only       //
// possible values are:                                                       //
//                      Value                      Valid data widths          //
//                      5'b11000 (sof @ byte 8)    128                        //
//                      5'b10000 (sof @ byte 0)    128, 64, 32                //
//                      5'b00000 (sof not present) 128, 64, 32                //
//----------------------------------------------------------------------------//
generate
  if(C_DATA_WIDTH == 128) begin : is_sof_128
    assign is_sof      = {(trn_rsof && !trn_rsrc_dsc), // bit 4:   enable
                          (trn_rsof && !trn_rrem[1]),  // bit 3:   sof @ byte 8?
                          3'b000};                     // bit 2-0: hardwired 0

    assign is_sof_prev = {(trn_rsof_prev && !trn_rsrc_dsc_prev), // bit 4
                          (trn_rsof_prev && !trn_rrem_prev[1]),  // bit 3
                          3'b000};                               // bit 2-0
  end
  else begin : is_sof_64_32
    assign is_sof      = {(trn_rsof && !trn_rsrc_dsc), // bit 4:   enable
                          4'b0000};                    // bit 3-0: hardwired 0

    assign is_sof_prev = {(trn_rsof_prev && !trn_rsrc_dsc_prev), // bit 4
                          4'b0000};                              // bit 3-0
  end
endgenerate


//----------------------------------------------------------------------------//
// Create is_eof                                                              //
// -------------                                                              //
// is_eof is a signal to the user indicating the location of EOF in TDATA   . //
// Due to DWORD granularity of packets from the block, the only               //
// possible values are:                                                       //
//                      Value                      Valid data widths          //
//                      5'b11111 (eof @ byte 15)   128                        //
//                      5'b11011 (eof @ byte 11)   128                        //
//                      5'b10111 (eof @ byte 7)    128, 64                    //
//                      5'b10011 (eof @ byte 3)`   128, 64, 32                //
//                      5'b00011 (eof not present) 128, 64, 32                //
//----------------------------------------------------------------------------//
generate
  if(C_DATA_WIDTH == 128) begin : is_eof_128
    assign is_eof      = {trn_reof,      // bit 4:   enable
                          trn_rrem,      // bit 3-2: encoded eof loc rom block
                          2'b11};        // bit 1-0: hardwired 1

    assign is_eof_prev = {trn_reof_prev, // bit 4:   enable
                          trn_rrem_prev, // bit 3-2: encoded eof loc from block
                          2'b11};        // bit 1-0: hardwired 1
  end
  else if(C_DATA_WIDTH == 64) begin : is_eof_64
    assign is_eof      = {trn_reof,      // bit 4:   enable
                          1'b0,          // bit 3:   hardwired 0
                          trn_rrem,      // bit 2:   encoded eof loc from block
                          2'b11};        // bit 1-0: hardwired 1

    assign is_eof_prev = {trn_reof_prev, // bit 4:   enable
                          1'b0,          // bit 3:   hardwired 0
                          trn_rrem_prev, // bit 2:   encoded eof loc from block
                          2'b11};        // bit 1-0: hardwired 1
  end
  else begin : is_eof_32
    assign is_eof      = {trn_reof,      // bit 4:   enable
                          4'b0011};      // bit 3-0: hardwired to byte 3

    assign is_eof_prev = {trn_reof_prev, // bit 4:   enable
                          4'b0011};      // bit 3-0: hardwired to byte 3
  end
endgenerate



//----------------------------------------------------------------------------//
// Create trn_rdst_rdy                                                        //
//----------------------------------------------------------------------------//
always @(posedge com_iclk) begin
  if(com_sysrst) begin
    trn_rdst_rdy <= #TCQ 1'b0;
  end
  else begin
    // If in a null packet, use null generated value
    // Nam - added according to Manish's input
    // coverage off -item c 1 -condrow 2
    if(null_mux_sel && m_axis_rx_tready) begin
      trn_rdst_rdy <= #TCQ null_rdst_rdy;
    end

    // If a discontinue needs to be serviced, throttle the block until we are
    // ready to pad out the packet.
    else if(dsc_flag) begin
      trn_rdst_rdy <= #TCQ 1'b0;
    end

    // If in a packet, pass user back-pressure directly to block
    else if(m_axis_rx_tvalid) begin
      trn_rdst_rdy <= #TCQ m_axis_rx_tready;
    end

    // If idle, default to no back-pressure. We need to default to the
    // "ready to accept data" state to make sure we catch the first
    // clock of data of a new packet.
    else begin
      trn_rdst_rdy <= #TCQ 1'b1;
    end
  end
end

//----------------------------------------------------------------------------//
// Create null_mux_sel                                                        //
// null_mux_sel is the signal used to detect a discontinue situation and      //
// mux in the null packet generated in rx_null_gen. Only mux in null data     //
// when not at the beginningof a packet. SOF discontinues do not require      //
// padding, as the whole packet is simply squashed instead.                   //
//----------------------------------------------------------------------------//
always @(posedge com_iclk) begin
  if(com_sysrst) begin
    null_mux_sel <= #TCQ 1'b0;
  end
  else begin
    // NULL packet done
    // Nam - added according to Manish's input
    // coverage off -item c 1 -condrow 3
    if(null_mux_sel && null_rx_tlast && m_axis_rx_tready)
    begin
      null_mux_sel <= #TCQ 1'b0;
    end

    // Discontinue detected and we're in packet, so switch to NULL packet
    else if(dsc_flag && !data_hold) begin
      null_mux_sel <= #TCQ 1'b1;
    end
  end
end


//----------------------------------------------------------------------------//
// Create discontinue tracking signals                                        //
//----------------------------------------------------------------------------//
// Create signal trn_in_packet, which is needed to validate trn_rsrc_dsc. We
// should ignore trn_rsrc_dsc when it's asserted out-of-packet.
always @(posedge com_iclk) begin
  if(com_sysrst) begin
    trn_in_packet <= #TCQ 1'b0;
  end
  else begin
    if(trn_rsof && !trn_reof && rsrc_rdy_filtered && trn_rdst_rdy)
    begin
      trn_in_packet <= #TCQ 1'b1;
    end
    else if(trn_rsrc_dsc) begin
      trn_in_packet <= #TCQ 1'b0;
    end
    else if(trn_reof && !trn_rsof && trn_rsrc_rdy && trn_rdst_rdy) begin
      trn_in_packet <= #TCQ 1'b0;
    end
  end
end


// Create dsc_flag, which identifies and stores mid-packet discontinues that
// require null packet padding. This signal is edge sensitive to trn_rsrc_dsc,
// to make sure we don't service the same dsc twice in the event that
// trn_rsrc_dsc stays asserted for longer than it takes to pad out the packet.
assign dsc_detect = trn_rsrc_dsc && !trn_rsrc_dsc_d && trn_in_packet &&
                         (!trn_rsof || trn_reof) && !(trn_rdst_rdy && trn_reof);

always @(posedge com_iclk) begin
  if(com_sysrst) begin
    reg_dsc_detect <= #TCQ 1'b0;
    trn_rsrc_dsc_d <= #TCQ 1'b0;
  end
  else begin
    if(dsc_detect) begin
      reg_dsc_detect <= #TCQ 1'b1;
    end
    else if(null_mux_sel) begin
      reg_dsc_detect <= #TCQ 1'b0;
    end

    trn_rsrc_dsc_d <= #TCQ trn_rsrc_dsc;
  end
end

assign dsc_flag = dsc_detect || reg_dsc_detect;



endmodule
