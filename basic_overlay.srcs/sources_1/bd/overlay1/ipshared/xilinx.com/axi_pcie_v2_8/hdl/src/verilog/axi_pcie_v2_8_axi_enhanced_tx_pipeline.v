//----------------------------------------------------------------------------//
//  File:  axi_pcie_v2_8_0_axi_enhanced_tx_pipeline.v               //
//  Date : 02/11/11                                                           //
//                                                                            //
//  Description:                                                              //
//  AXI-S to PCIe TRN coverter                                                //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_enhanced_top                                                        //
//      axi_enhanced_tx                                                       //
//        axi_enhanced_tx_pipeline                                            //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

module axi_pcie_v2_8_0_axi_enhanced_tx_pipeline #(
  parameter C_DATA_WIDTH = 32,            // RX/TX interface data width
  parameter TCQ = 1,                      // Clock to Q time

  // Do not override parameters below this line
  parameter REM_WIDTH  = (C_DATA_WIDTH == 128) ? 2 : 1, // trem/rrem width
  parameter STRB_WIDTH = C_DATA_WIDTH / 8               // TSTRB width
  ) (
  //---------------------------------------------//
  // User Design I/O                             //
  //---------------------------------------------//

  // AXI TX
  //-----------
  input      [C_DATA_WIDTH-1:0] s_axis_tx_tdata,     // TX data from user
  input                         s_axis_tx_tvalid,    // TX data is valid
  output                        s_axis_tx_tready,    // TX TREADY signal
  input        [STRB_WIDTH-1:0] s_axis_tx_tstrb,     // TX strobe byte enables
  input                         s_axis_tx_tlast,     // TX data is last
  input                   [3:0] s_axis_tx_tuser,     // TX user signals

  //---------------------------------------------//
  // PCIe Block I/O                              //
  //---------------------------------------------//

  // TRN TX
  //-----------
  output     [C_DATA_WIDTH-1:0] trn_td,              // TX data from block
  output                        trn_tsof,            // TX start of packet
  output                        trn_teof,            // TX end of packet
  output                        trn_tsrc_rdy,        // TX source ready
  input                         trn_tdst_rdy,        // TX destination ready
  output                        trn_tsrc_dsc,        // TX source discontinue
  output        [REM_WIDTH-1:0] trn_trem,            // TX remainder
  output                        trn_terrfwd,         // TX error forward
  output                        trn_tstr,            // TX streaming enable
  output                        trn_tecrc_gen,       // TX ECRC generate
  input                         trn_lnk_up,          // PCIe link up

  input                         flush_axis_tlp,
  // System
  //-----------
  input                         com_iclk,            // user clock from block
  input                         com_sysrst             // user reset from block
  );


// Input register stage
reg  [C_DATA_WIDTH-1:0] reg_tdata;
reg                     reg_tvalid;
reg    [STRB_WIDTH-1:0] reg_tstrb;
reg               [3:0] reg_tuser;
reg                     reg_tlast;
reg                     reg_tready;

reg                     trn_in_packet;
reg                     axi_in_packet;
reg                     flush_axi;
wire                    disable_trn;
reg                     reg_disable_trn;

wire                    axi_beat_live  = ((s_axis_tx_tvalid && s_axis_tx_tready)|| flush_axis_tlp);
wire                    axi_end_packet = axi_beat_live && s_axis_tx_tlast;

//----------------------------------------------------------------------------//
// Convert TRN data format to AXI data format. AXI is DWORD swapped from TRN. //
// 128-bit:                 64-bit:                  32-bit:                  //
// TRN DW0 maps to AXI DW3  TRN DW0 maps to AXI DW1  TNR DW0 maps to AXI DW0  //
// TRN DW1 maps to AXI DW2  TRN DW1 maps to AXI DW0                           //
// TRN DW2 maps to AXI DW1                                                    //
// TRN DW3 maps to AXI DW0                                                    //
//----------------------------------------------------------------------------//
generate
  if(C_DATA_WIDTH == 128) begin : td_DW_swap_128
    assign trn_td = {reg_tdata[31:0],
                     reg_tdata[63:32],
                     reg_tdata[95:64],
                     reg_tdata[127:96]};
  end
  else if(C_DATA_WIDTH == 64) begin : td_DW_swap_64
    assign trn_td = {reg_tdata[31:0], reg_tdata[63:32]};
  end
  else begin : td_DW_swap_32
    assign trn_td = reg_tdata;
  end
endgenerate

//----------------------------------------------------------------------------//
// Create trn_tsof. If we're not currently in a packet and TVALID goes high,  //
// assert TSOF.                                                               //
//----------------------------------------------------------------------------//
assign trn_tsof = (reg_tvalid && !trn_in_packet);


//----------------------------------------------------------------------------//
// Create trn_in_packet. This signal tracks if the TRN interface is currently //
// in the middle of a packet, which is needed to generate trn_tsof            //
//----------------------------------------------------------------------------//
always @(posedge com_iclk) begin
  if(com_sysrst) begin
    trn_in_packet <= #TCQ 1'b0;
  end
  else begin
    if(trn_tsof && trn_tsrc_rdy && trn_tdst_rdy && !trn_teof) begin
      trn_in_packet <= #TCQ 1'b1;
    end
    else if((trn_in_packet && trn_teof && trn_tsrc_rdy) || !trn_lnk_up) begin
      trn_in_packet <= #TCQ 1'b0;
    end
  end
end

//----------------------------------------------------------------------------//
// Create axi_in_packet. This signal tracks if the AXI interface is currently //
// in the middle of a packet, which is needed in case the link goes down.     //
//----------------------------------------------------------------------------//
always @(posedge com_iclk) begin
  if(com_sysrst) begin
    axi_in_packet <= #TCQ 1'b0;
  end
  else begin
    if(axi_beat_live && !s_axis_tx_tlast) begin
      axi_in_packet <= #TCQ 1'b1;
    end
    else if(axi_beat_live) begin
      axi_in_packet <= #TCQ 1'b0;
    end
  end
end

//----------------------------------------------------------------------------//
// Create disable_trn. This signal asserts when the link goes down and        //
// triggers the deassertiong of trn_tsrc_rdy. The deassertion of disable_trn  //
// depends is as described below.                              //
//----------------------------------------------------------------------------//
  // We disable the TRN interfacefrom the time
  // the link goes down until the the AXI interface is ready to accept packets
  // again (via assertion of TREADY). By waiting for TREADY, we allow the
  // previous value buffer to fill, so we're ready for any throttling by the
  // user or the block.
    always @(posedge com_iclk) begin
      if(com_sysrst) begin
        reg_disable_trn    <= #TCQ 1'b1;
      end
      else begin
        // When the link goes down, disable the TRN interface.
        if(!trn_lnk_up)
        begin
          reg_disable_trn  <= #TCQ 1'b1;
        end

        // When the link comes back up and the AXI interface is ready, we can
        // release the pipeline and return to normal operation.
        // Manish - flush_axi will be 0 in link up condition
        // coverage off -item c 1 -condrow 1
        else if(!flush_axi && s_axis_tx_tready) begin
          reg_disable_trn <= #TCQ 1'b0;
        end
      end
    end

    assign disable_trn = reg_disable_trn;

//----------------------------------------------------------------------------//
// Convert STRB to RREM. Here, we are converting the encoding method for the  //
// location of the EOF from AXI (TSTRB) to TRN flavor (rrem).                 //
//----------------------------------------------------------------------------//
generate
  if(C_DATA_WIDTH == 128) begin : tstrb_to_trem_128
    //---------------------------------------//
    // Conversion table:                     //
    // trem    | tstrb                       //
    // [1] [0] | [15:12] [11:8] [7:4] [3:0]  //
    // ------------------------------------- //
    //  1   1  |   D3      D2    D1    D0    //
    //  1   0  |   --      D2    D1    D0    //
    //  0   1  |   --      --    D1    D0    //
    //  0   0  |   --      --    --    D0    //
    //---------------------------------------//

    wire   axi_DW_1    = reg_tstrb[7];
    wire   axi_DW_2    = reg_tstrb[11];
    wire   axi_DW_3    = reg_tstrb[15];
    assign trn_trem[1] = axi_DW_2;
    assign trn_trem[0] = axi_DW_3 || (axi_DW_1 && !axi_DW_2);
  end
  else if(C_DATA_WIDTH == 64) begin : tstrb_to_trem_64
    assign trn_trem    = reg_tstrb[7];
  end
  else begin : tstrb_to_trem_32
    assign trn_trem    = 1'b0;
  end
endgenerate


//----------------------------------------------------------------------------//
// Create remaining TRN signals                                               //
//----------------------------------------------------------------------------//
  assign trn_teof      = reg_tlast;
  assign trn_tecrc_gen = reg_tuser[0];
  assign trn_terrfwd   = reg_tuser[1];
  assign trn_tstr      = reg_tuser[2];
  assign trn_tsrc_dsc  = reg_tuser[3];


//----------------------------------------------------------------------------//
// Pipeline stage                                                             //
//----------------------------------------------------------------------------//

  //**************************************************************************//
  // The block could back-pressure at any time, which creates the standard problem
  // of potential data loss due to the handshaking latency. Here we need a
  // previous value buffer, just like the RX data path.
    reg  [C_DATA_WIDTH-1:0] tdata_prev;
    reg                     tvalid_prev;
    reg    [STRB_WIDTH-1:0] tstrb_prev;
    reg                     tlast_prev;
    reg               [3:0] tuser_prev;
    reg                     reg_tdst_rdy;

    wire                    data_hold;
    reg                     data_prev;


    //------------------------------------------------------------------------//
    // Previous value buffer                                                  //
    // ---------------------                                                  //
    // We are inserting a pipeline stage in between AXI and TRN, which causes //
    // some issues with handshaking signals trn_tsrc_rdy/s_axis_tx_tready.    //
    // The added cycle of latency in the path causes the Block to fall behind //
    // the AXI interface whenever it throttles.                               //
    //                                                                        //
    // To avoid loss of data, we must keep the previous value of all          //
    // s_axis_tx_* signals in case the Block throttles.                       //
    //------------------------------------------------------------------------//
    always @(posedge com_iclk) begin
      if(com_sysrst) begin
        tdata_prev   <= #TCQ {C_DATA_WIDTH{1'b0}};
        tvalid_prev  <= #TCQ 1'b0;
        tstrb_prev   <= #TCQ {STRB_WIDTH{1'b0}};
        tlast_prev   <= #TCQ 1'b0;
        tuser_prev   <= #TCQ 4'h 0;
      end
      else begin
        // prev buffer works by checking s_axis_tx_tready. When
        // s_axis_tx_tready is asserted, a new value is present on the
        // interface.
        if(!s_axis_tx_tready) begin
          tdata_prev   <= #TCQ tdata_prev;
          tvalid_prev  <= #TCQ tvalid_prev;
          tstrb_prev   <= #TCQ tstrb_prev;
          tlast_prev   <= #TCQ tlast_prev;
          tuser_prev   <= #TCQ tuser_prev;
        end
        else begin
          tdata_prev   <= #TCQ s_axis_tx_tdata;
          tvalid_prev  <= #TCQ s_axis_tx_tvalid;
          tstrb_prev   <= #TCQ s_axis_tx_tstrb;
          tlast_prev   <= #TCQ s_axis_tx_tlast;
          tuser_prev   <= #TCQ s_axis_tx_tuser;
        end
      end
    end

    // Create special buffer which locks in the proper value of TDATA depending
    // on whether the user is throttling or not. This buffer has three states:
    //
    //       HOLD state: TDATA maintains its current value
    //                   - the Block has throttled the PCIe block
    //   PREVIOUS state: the buffer provides the previous value on TDATA
    //                   - the Block has finished throttling, and is a little
    //                     behind the user
    //    CURRENT state: the buffer passes the current value on TDATA
    //                   - the Block is caught up and ready to receive the
    //                     latest data from the user
    always @(posedge com_iclk) begin
      if(com_sysrst) begin
        reg_tdata  <= #TCQ {C_DATA_WIDTH{1'b0}};
        reg_tvalid <= #TCQ 1'b0;
        reg_tstrb  <= #TCQ {STRB_WIDTH{1'b0}};
        reg_tlast  <= #TCQ 1'b0;
        reg_tuser  <= #TCQ 4'h0;

        reg_tdst_rdy <= #TCQ 1'b0;
      end
      else begin
        reg_tdst_rdy <= #TCQ trn_tdst_rdy;

        if(!data_hold) begin
          // PREVIOUS state
          if(data_prev) begin
            reg_tdata  <= #TCQ tdata_prev;
            reg_tvalid <= #TCQ tvalid_prev;
            reg_tstrb  <= #TCQ tstrb_prev;
            reg_tlast  <= #TCQ tlast_prev;
            reg_tuser  <= #TCQ tuser_prev;
          end

          // CURRENT state
          else begin
            reg_tdata  <= #TCQ s_axis_tx_tdata;
            reg_tvalid <= #TCQ s_axis_tx_tvalid;
            reg_tstrb  <= #TCQ s_axis_tx_tstrb;
            reg_tlast  <= #TCQ s_axis_tx_tlast;
            reg_tuser  <= #TCQ s_axis_tx_tuser;
          end
        end
        // else HOLD state
      end
    end


    // Logic to instruct pipeline to hold its value
    assign data_hold = trn_tsrc_rdy && !trn_tdst_rdy;


    // Logic to instruct pipeline to use previous bus values. Always use
    // previous value after holding a value.
    always @(posedge com_iclk) begin
      if(com_sysrst) begin
        data_prev <= #TCQ 1'b0;
      end
      else begin
        data_prev <= #TCQ data_hold;
      end
    end


    //------------------------------------------------------------------------//
    // Create trn_tsrc_rdy. If we're flushing the TRN hold trn_tsrc_rdy low.  //
    //------------------------------------------------------------------------//
    assign trn_tsrc_rdy = reg_tvalid && !disable_trn;


    //------------------------------------------------------------------------//
    // Create TREADY                                                          //
    //------------------------------------------------------------------------//
    always @(posedge com_iclk) begin
      if(com_sysrst) begin
        reg_tready <= #TCQ 1'b0;
      end
      else begin
        // If the link went down and we need to flush a packet in flight, hold
        // TREADY high
        if(flush_axi && !axi_end_packet) begin
          reg_tready <= #TCQ 1'b1;
        end

        // If the link is up, TREADY is as follows:
        //   TREADY = 1 when trn_tsrc_rdy == 0
        //      - While idle, keep the pipeline primed and ready for the next
        //        packet
        //
        //   TREADY = trn_tdst_rdy when trn_tsrc_rdy == 1
        //      - While in packet, throttle pipeline based on state of TRN
        else if(trn_lnk_up) begin
          reg_tready <= #TCQ trn_tdst_rdy || !trn_tsrc_rdy;
        end

        // If the link is down and we're not flushing a packet, hold TREADY low
        // wait for link to come back up
        else begin
          reg_tready <= #TCQ 1'b0;
        end
      end
    end

    assign s_axis_tx_tready = reg_tready;

  //--------------------------------------------------------------------------//
  // Create flush_axi. This signal detects if the link goes down while the    //
  // AXI interface is in packet. In this situation, we need to flush the      //
  // packet through the AXI interface and discard it.                         //
  //--------------------------------------------------------------------------//
  always @(posedge com_iclk) begin
    if(com_sysrst) begin
      flush_axi    <= #TCQ 1'b0;
    end
    else begin
      // If the AXI interface is in packet and the link goes down, purge it.
      if(axi_in_packet && !trn_lnk_up && !axi_end_packet) begin
        flush_axi <= #TCQ 1'b1;
      end

      // The packet is finished, so we're done flushing.
      else if(axi_end_packet) begin
        flush_axi <= #TCQ 1'b0;
      end
    end
  end

 
endmodule
