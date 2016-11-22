//----------------------------------------------------------------------------//
//  File: axi_pcie_v2_8_0_axi_enhanced_tx.v                         //
//                                                                            //
//  Description:                                                              //
//  RR,RW,CC,CFG Port to TRN TX module. Instantiates AXI Port Mux, Arbiter,   //
//  pipeline and throttle control TX                                          //
//  submodules.                                                               //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_enhanced_top                                                       //
//      axi_enhanced_tx                                                      //
//                                                                            //
//----------------------------------------------------------------------------//
`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_pcie_v2_8_0_axi_enhanced_tx #(
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
  input   [C_DATA_WIDTH-1:0] s_axis_rr_tdata,        // RR Interface- TX data from user
  input                      s_axis_rr_tvalid,       // RR Interface- TX data is valid
  output                     s_axis_rr_tready,       // RR Interface- TX ready for data
  input     [STRB_WIDTH-1:0] s_axis_rr_tstrb,        // RR Interface- TX strobe byte enables
  input                      s_axis_rr_tlast,        // RR Interface- TX data is last
  input                [3:0] s_axis_rr_tuser,        // RR Interface- TX user signals
 //---------------------------------------------//
  // User Design I/O --RW Interface              //
  //---------------------------------------------//
  input   [C_DATA_WIDTH-1:0] s_axis_rw_tdata,        // RW Interface- TX data from user
  input                      s_axis_rw_tvalid,       // RW Interface- TX data is valid
  output                     s_axis_rw_tready,       // RW Interface- TX ready for data
  input     [STRB_WIDTH-1:0] s_axis_rw_tstrb,        // RW Interface- TX strobe byte enables
  input                      s_axis_rw_tlast,        // RW Interface- TX data is last
  input                [3:0] s_axis_rw_tuser,        // RW Interface- TX user signals
 //---------------------------------------------//
  // User Design I/O --CC Interface              //
  //---------------------------------------------//
  input   [C_DATA_WIDTH-1:0] s_axis_cc_tdata,        // CC Interface- TX data from user
  input                      s_axis_cc_tvalid,       // CC Interface- TX data is valid
  output                     s_axis_cc_tready,       // CC Interface- TX ready for data
  input     [STRB_WIDTH-1:0] s_axis_cc_tstrb,        // CC Interface- TX strobe byte enables
  input                      s_axis_cc_tlast,        // CC Interface- TX data is last
  input                [3:0] s_axis_cc_tuser,        // CC Interface- TX user signals
 //---------------------------------------------//
  // User Design I/O --CFG Interface              //
  //---------------------------------------------//
  input   [C_DATA_WIDTH-1:0] s_axis_cfg_tdata,        // CFG Interface- TX data from user
  input                      s_axis_cfg_tvalid,       // CFG Interface- TX data is valid
  output                     s_axis_cfg_tready,       // CFG Interface- TX ready for data
  input     [STRB_WIDTH-1:0] s_axis_cfg_tstrb,        // CFG Interface- TX strobe byte enables
  input                      s_axis_cfg_tlast,        // CFG Interface- TX data is last
  input                [3:0] s_axis_cfg_tuser,        // CFG Interface- TX user signals
  input                      cfg_req,                 // Cfg channel request for the arbiter


  //---------------------------------------------//
  // PCIe Block I/O                              //
  //---------------------------------------------//

  // TRN TX
  //-----------
  output [C_DATA_WIDTH-1:0] trn_td,                  // TX data from block
  output                    trn_tsof,                // TX start of packet
  output                    trn_teof,                // TX end of packet
  output                    trn_tsrc_rdy,            // TX source ready
  input                     trn_tdst_rdy,            // TX destination ready
  output                    trn_tsrc_dsc,            // TX source discontinue
  output    [REM_WIDTH-1:0] trn_trem,                // TX remainder
  output                    trn_terrfwd,             // TX error forward
  output                    trn_tstr,                // TX streaming enable
  output                    trn_tecrc_gen,           // TX ECRC generate
  input                     trn_lnk_up,              // PCIe link up

  // System
  //-----------
  input                     com_iclk,                // user clock from block
  input                     com_sysrst                 // user reset from block
  );


wire  [C_DATA_WIDTH-1:0]    s_axis_tx_tdata;
wire  [STRB_WIDTH-1:0]      s_axis_tx_tstrb;
wire  [3:0]                 s_axis_tx_tuser;
wire  [1:0]                 channel_sel;
wire                        s_axis_tx_tvalid;
wire                        s_axis_tx_tready;
wire                        s_axis_tx_tlast;
wire                        rr_thrtl;
wire                        rw_thrtl;
wire                        cc_thrtl;
wire                        flush_axis_tlp;
wire                        cc_in_packet;

  //---------------------------------------------//
  // AXI Port MUX                                //
  //---------------------------------------------//

axi_pcie_v2_8_0_axi_enhanced_tx_port_mux #(
    .C_DATA_WIDTH( C_DATA_WIDTH ),
    .TCQ( TCQ )
  ) tx_axi_port_mux(

    //-----------------------
    // Input to AXI Port MUX
    //-----------------------
    .s_axis_rr_tdata    ( s_axis_rr_tdata ), // From RR Interface
    .s_axis_rr_tvalid   ( s_axis_rr_tvalid), // From RR Interface
    .s_axis_rr_tstrb    ( s_axis_rr_tstrb ), // From RR Interface
    .s_axis_rr_tlast    ( s_axis_rr_tlast ), // From RR Interface
    .s_axis_rr_tuser    ( s_axis_rr_tuser ), // From RR Interface
    .s_axis_rr_tready   ( s_axis_rr_tready), // From RR Interface

    .s_axis_rw_tdata    ( s_axis_rw_tdata ), // From RW Interface
    .s_axis_rw_tvalid   ( s_axis_rw_tvalid), // From RW Interface
    .s_axis_rw_tstrb    ( s_axis_rw_tstrb ), // From RW Interface
    .s_axis_rw_tlast    ( s_axis_rw_tlast ), // From RW Interface
    .s_axis_rw_tuser    ( s_axis_rw_tuser ), // From RW Interface
    .s_axis_rw_tready   ( s_axis_rw_tready), // From RW Interface

    .s_axis_cc_tdata    ( s_axis_cc_tdata ), // From CC Interface
    .s_axis_cc_tvalid   ( s_axis_cc_tvalid), // From CC Interface
    .s_axis_cc_tstrb    ( s_axis_cc_tstrb ), // From CC Interface
    .s_axis_cc_tlast    ( s_axis_cc_tlast ), // From CC Interface
    .s_axis_cc_tuser    ( s_axis_cc_tuser ), // From CC Interface
    .s_axis_cc_tready   ( s_axis_cc_tready), // From CC Interface

    .s_axis_cfg_tdata   ( s_axis_cfg_tdata ),// From CFG Interface
    .s_axis_cfg_tvalid  ( s_axis_cfg_tvalid),// From CFG Interface
    .s_axis_cfg_tstrb   ( s_axis_cfg_tstrb ),// From CFG Interface
    .s_axis_cfg_tlast   ( s_axis_cfg_tlast ),// From CFG Interface
    .s_axis_cfg_tuser   ( s_axis_cfg_tuser ),// From CFG Interface
    .s_axis_cfg_tready  ( s_axis_cfg_tready),// From CFG Interface

    //-----------------------
    // Output of AXI Port MUX
    //-----------------------
    .s_axis_tx_tdata    ( s_axis_tx_tdata ), // From CFG Interface
    .s_axis_tx_tvalid   ( s_axis_tx_tvalid), // From CFG Interface
    .s_axis_tx_tready   ( s_axis_tx_tready), // From CFG Interface
    .s_axis_tx_tstrb    ( s_axis_tx_tstrb ), // From CFG Interface
    .s_axis_tx_tlast    ( s_axis_tx_tlast ), // From CFG Interface
    .s_axis_tx_tuser    ( s_axis_tx_tuser ), // From CFG Interface
    .flush_axis_tlp     ( flush_axis_tlp  ), // Flush AXIS TLP on link down
    .cc_in_packet       ( cc_in_packet ),    // CC channel is in-packet
    .trn_lnk_up         ( trn_lnk_up   ),    // TRN Link up
    .channel_sel        ( channel_sel  ),    // Channel Select Coming from Arbiter
    .rr_thrtl           ( rr_thrtl     ),    // Throttle control for RR interface
    .rw_thrtl           ( rw_thrtl     ),    // Throttle control for RW interface
    .cc_thrtl           ( cc_thrtl     ),    // Throttle control for CC interface
    .com_iclk           ( com_iclk     ),
    .com_sysrst         ( com_sysrst   )
  );


  //---------------------------------------------//
  // TX Data Pipeline                            //
  //---------------------------------------------//

  axi_pcie_v2_8_0_axi_enhanced_tx_pipeline #(
    .C_DATA_WIDTH( C_DATA_WIDTH ),
    .TCQ( TCQ ),

    .REM_WIDTH( REM_WIDTH ),
    .STRB_WIDTH( STRB_WIDTH )
  ) tx_pipeline_inst (
    // Incoming AXI MUXed TX
    //-----------
    .s_axis_tx_tdata    ( s_axis_tx_tdata ),
    .s_axis_tx_tvalid   ( s_axis_tx_tvalid),
    .s_axis_tx_tready   ( s_axis_tx_tready),
    .s_axis_tx_tstrb    ( s_axis_tx_tstrb ),
    .s_axis_tx_tlast    ( s_axis_tx_tlast ),
    .s_axis_tx_tuser    ( s_axis_tx_tuser ),
    // Outgoing TRN TX
    //-----------
    .trn_td            ( trn_td       ),
    .trn_tsof          ( trn_tsof     ),
    .trn_teof          ( trn_teof     ),
    .trn_tsrc_rdy      ( trn_tsrc_rdy ),
    .trn_tdst_rdy      ( trn_tdst_rdy ),
    .trn_tsrc_dsc      ( trn_tsrc_dsc ),
    .trn_trem          ( trn_trem     ),
    .trn_terrfwd       ( trn_terrfwd  ),
    .trn_tstr          ( trn_tstr     ),
    .trn_tecrc_gen     ( trn_tecrc_gen),
    .trn_lnk_up        ( trn_lnk_up   ),
    .flush_axis_tlp    ( flush_axis_tlp),
    // System
    //-----------
    .com_iclk          ( com_iclk ),
    .com_sysrst        ( com_sysrst )
  );

  //---------------------------------------------//
  // TX Arbiter                                  //
  //---------------------------------------------//
  axi_pcie_v2_8_0_axi_enhanced_tx_arbiter #(
  .C_ROOT_PORT(C_ROOT_PORT ),
  .TCQ (TCQ )
  ) tx_arbiter (

    //-----------------------
    // Input to Aiter from AXI Interface
    //-----------------------
    .s_axis_rr_tvalid    ( s_axis_rr_tvalid),  // From RR Interface
    .s_axis_rw_tvalid    ( s_axis_rw_tvalid),  // From RW Interface
    .s_axis_cc_tvalid    ( s_axis_cc_tvalid),  // From CC Interface
    .s_axis_cfg_tvalid   ( s_axis_cfg_tvalid), // From CFG Interface
    .cfg_req             ( cfg_req),           // From CFG Interface
    .s_axis_rw_tlast     ( s_axis_rw_tlast),
    .s_axis_rr_tlast     ( s_axis_rr_tlast),
    .s_axis_cc_tlast     ( s_axis_cc_tlast),
    .s_axis_cfg_tlast    ( s_axis_cfg_tlast),
    .s_axis_tx_tready    (s_axis_tx_tready),
    .trn_lnk_up          (trn_lnk_up),
    .trn_teof            (trn_teof ),
    .cc_in_packet_i      ( cc_in_packet ),

    // System
    //-----------------------
    .com_iclk            ( com_iclk ),
    .com_sysrst          ( com_sysrst ),

    // Output of Arbiter for channel selection
    //-----------------------
    .channel_sel        ( channel_sel ),
    .rr_thrtl           (rr_thrtl     ),  // Throttle control for RR interface
    .rw_thrtl           (rw_thrtl     ),  // Throttle control for RW interface
    .cc_thrtl           (cc_thrtl     )   // Throttle control for CC interface
  );

endmodule
