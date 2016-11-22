//----------------------------------------------------------------------------//
//  File: axi_pcie_v2_8_0_axi_enhanced_rx.v                         //
//                                                                            //
//  Description:                                                              //
//  TRN to AXI RX module. Instantiates either pipeline or destraddler module  //
//  based on C_RX_STRADDLE parameter along with de-multiplexer                //
//  and null generator                                                        //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_enhanced_top                                                        //
//      axi_enhanced_rx                                                       //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_pcie_v2_8_0_axi_enhanced_rx #(
  parameter C_DATA_WIDTH = 32,             // RX/TX interface data width
  parameter C_FAMILY = "X7",               // Targeted FPGA family
  parameter C_RX_REALIGN = "TRUE",         // TLP Re-alignment feature control
  parameter C_RX_PRESERVE_ORDER = "FALSE", // No strict ordering by default
  parameter C_MSI_DECODE_ENABLE = "TRUE",  // Enable or Disable Incoming MSI Packet Decoding
  parameter C_ROOT_PORT = "FALSE",         // ROOT port or End point
  parameter TCQ = 1,                       // Clock to Q time

  // Do not override parameters below this line
  parameter REM_WIDTH  = (C_DATA_WIDTH == 128) ? 2 : 1, // trem/rrem width
  parameter RBAR_WIDTH = (C_FAMILY == "X7") ? 8 : 7,    // trn_rbar_hit width
  parameter STRB_WIDTH = C_DATA_WIDTH / 8               // TSTRB width
  ) (
  //---------------------------------------------//
  // User Design I/O                             //
  //---------------------------------------------//

  // AXI CR Interface
  //-----------------
  output  [C_DATA_WIDTH-1:0] m_axis_cr_tdata,        // CR data to user
  output                     m_axis_cr_tvalid,       // CR data is valid
  input                      m_axis_cr_tready,       // CR ready for data
  output    [STRB_WIDTH-1:0] m_axis_cr_tstrb,        // CR strobe byte enables
  output                     m_axis_cr_tlast,        // CR data is last
  output              [21:0] m_axis_cr_tuser,        // CR user signals

  // AXI CW Interface
  //-----------------
  output  [C_DATA_WIDTH-1:0] m_axis_cw_tdata,        // CW data to user
  output                     m_axis_cw_tvalid,       // CW data is valid
  input                      m_axis_cw_tready,       // CW ready for data
  output    [STRB_WIDTH-1:0] m_axis_cw_tstrb,        // CW strobe byte enables
  output                     m_axis_cw_tlast,        // CW data is last
  output              [21:0] m_axis_cw_tuser,        // CW user signals

  // AXI RC Interface
  //-----------------
  output  [C_DATA_WIDTH-1:0] m_axis_rc_tdata,        // RC data to user
  output                     m_axis_rc_tvalid,       // RC data is valid
  input                      m_axis_rc_tready,       // RC ready for data
  output    [STRB_WIDTH-1:0] m_axis_rc_tstrb,        // RC strobe byte enables
  output                     m_axis_rc_tlast,        // RC data is last
  output              [21:0] m_axis_rc_tuser,        // RC user signals

  //---------------------------------------------//
  // Config Block Interface I/O                  //
  //---------------------------------------------//

  // CFG Interface
  //-----------------
  output  [C_DATA_WIDTH-1:0] m_axis_cfg_tdata,       // CFG data to user
  output                     m_axis_cfg_tvalid,      // CFG data is valid
  input                      m_axis_cfg_tready,      // CFG ready for data
  output    [STRB_WIDTH-1:0] m_axis_cfg_tstrb,       // CFG strobe byte enables
  output                     m_axis_cfg_tlast,       // CFG data is last
  output              [21:0] m_axis_cfg_tuser,       // CFG user signals

  // MSI Interface
  //-----------------
  output  [C_DATA_WIDTH-1:0] m_axis_msi_tdata,       // MSI data to user
  output                     m_axis_msi_tvalid,      // MSI data is valid
  input                      m_axis_msi_tready,      // MSI ready for data
  output    [STRB_WIDTH-1:0] m_axis_msi_tstrb,       // MSI strobe byte enables
  output                     m_axis_msi_tlast,       // MSI data is last
  output              [21:0] m_axis_msi_tuser,       // MSI user signals
  input               [63:0] msi_address,            // MSI address from the config block
  output                     is_msi,                 // Indicates if the packet is an MSI or a CPL

  //User Side-Band Signal
  input                      cfg_req,                // Non Posted Completion pending

  //---------------------------------------------//
  // PCIe Block I/O                              //
  //---------------------------------------------//

  // TRN RX
  //-----------
  input  [C_DATA_WIDTH-1:0] trn_rd,                  // RX data from block
  input                     trn_rsof,                // RX start of packet
  input                     trn_reof,                // RX end of packet
  input                     trn_rsrc_rdy,            // RX source ready
  output                    trn_rdst_rdy,            // RX destination ready
  input                     trn_rsrc_dsc,            // RX source discontinue
  input     [REM_WIDTH-1:0] trn_rrem,                // RX remainder
  input                     trn_rerrfwd,             // RX error forward
  input    [RBAR_WIDTH-1:0] trn_rbar_hit,            // RX BAR hit
  input                     trn_recrc_err,           // RX ECRC error
  input                     trn_lnk_up,              // TRN link up signal
  // System
  //-----------
  input                     com_iclk,                // user clock from block
  input                     com_sysrst               // user reset from block
  );


  // Wires
  wire                    null_rx_tvalid;
  wire                    null_rx_tlast;
  wire [STRB_WIDTH-1:0]   null_rx_tstrb;
  wire                    null_rdst_rdy;
  wire            [4:0]   null_is_eof;

  wire [C_DATA_WIDTH-1:0] m_axis_rx_tdata;
  wire                    m_axis_rx_tvalid;
  wire                    m_axis_rx_tready;
  wire [STRB_WIDTH-1:0]   m_axis_rx_tstrb;
  wire                    m_axis_rx_tlast;
  wire [21:0]             m_axis_rx_tuser;
  wire                    is_msi_trn;

  // Internal wires to connect the realigned signals from the destraddler to the data pipeline

  wire [C_DATA_WIDTH-1:0] trn_rd_o;
  wire                    trn_rsof_o;
  wire                    trn_reof_o;
  wire                    trn_rsrc_rdy_o;
  wire                    trn_rsrc_dsc_o;
  wire [REM_WIDTH-1:0]    trn_rrem_o;
  wire                    trn_rerrfwd_o;
  wire [RBAR_WIDTH-1:0]   trn_rbar_hit_o;
  wire                    trn_recrc_err_o;
  wire                    trn_rdst_rdy_i;
  wire             [11:0] pkt_len_counter;

  //---------------------------------------------//
  // RX Data Pipeline                            //
  //---------------------------------------------//

  axi_pcie_v2_8_0_axi_enhanced_rx_pipeline #(
    .C_DATA_WIDTH( C_DATA_WIDTH ),
    .C_FAMILY( C_FAMILY ),
    .C_MSI_DECODE_ENABLE(C_MSI_DECODE_ENABLE),
    .C_ROOT_PORT(C_ROOT_PORT),
    .C_RX_REALIGN(C_RX_REALIGN),
    .TCQ( TCQ )

  ) rx_pipeline_inst (

    // To/From AXI RX
    //-----------
    .m_axis_rx_tdata( m_axis_rx_tdata ),
    .m_axis_rx_tvalid( m_axis_rx_tvalid ),
    .m_axis_rx_tready( m_axis_rx_tready ),
    .m_axis_rx_tstrb( m_axis_rx_tstrb ),
    .m_axis_rx_tlast( m_axis_rx_tlast ),
    .m_axis_rx_tuser( m_axis_rx_tuser ),
    .is_msi_trn(is_msi_trn),

    // To/From TRN RX
    //-----------
    .trn_rd( trn_rd_o ),
    .trn_rsof( trn_rsof_o ),
    .trn_reof( trn_reof_o ),
    .trn_rsrc_rdy( trn_rsrc_rdy_o ),
    .trn_rdst_rdy( trn_rdst_rdy_i ),
    .trn_rsrc_dsc( trn_rsrc_dsc_o ),
    .trn_rrem( trn_rrem_o ),
    .trn_rerrfwd( trn_rerrfwd_o ),
    .trn_rbar_hit( trn_rbar_hit_o ),
    .trn_recrc_err( trn_recrc_err_o ),

    // To/From Null Generator
    //-----------
    .null_rx_tvalid( null_rx_tvalid ),
    .null_rx_tlast( null_rx_tlast ),
    .null_rx_tstrb( null_rx_tstrb ),
    .null_rdst_rdy( null_rdst_rdy ),
    .null_is_eof( null_is_eof ),
    .pkt_len_counter( pkt_len_counter ),

    // from config block

    .msi_address(msi_address),

    // System IOs
    //-----------
    .com_iclk( com_iclk ),
    .com_sysrst( com_sysrst )
  );

  //---------------------------------------------//
  // RX Data De-straddler                        //
  //---------------------------------------------//

  axi_pcie_v2_8_0_axi_enhanced_rx_destraddler #(
    .C_DATA_WIDTH( C_DATA_WIDTH ),
    .C_FAMILY( C_FAMILY ),
    .TCQ( TCQ )

  ) rx_destraddler_inst (

    // To - From PCIe TRN-RX interface

    .trn_rd( trn_rd ),
    .trn_rsof( trn_rsof ),
    .trn_reof( trn_reof ),
    .trn_rsrc_rdy( trn_rsrc_rdy ),
    .trn_rdst_rdy_o( trn_rdst_rdy ),
    .trn_rsrc_dsc( trn_rsrc_dsc ),
    .trn_rrem( trn_rrem ),
    .trn_rerrfwd( trn_rerrfwd ),
    .trn_rbar_hit( trn_rbar_hit ),
    .trn_recrc_err( trn_recrc_err ),

  //--------------------------------------------------------------------------
  // TRN Realigned signals
  //--------------------------------------------------------------------------

    .trn_rd_o( trn_rd_o ),
    .trn_rsof_o( trn_rsof_o ),
    .trn_reof_o( trn_reof_o ),
    .trn_rsrc_rdy_o( trn_rsrc_rdy_o ),
    .trn_rdst_rdy( trn_rdst_rdy_i ),
    .trn_rsrc_dsc_o( trn_rsrc_dsc_o ),
    .trn_rrem_o( trn_rrem_o ),
    .trn_rerrfwd_o( trn_rerrfwd_o ),
    .trn_rbar_hit_o( trn_rbar_hit_o ),
    .trn_recrc_err_o( trn_recrc_err_o ),

  //---------------------------------------------------------------------------
  // System
  //---------------------------------------------------------------------------

    .com_iclk( com_iclk ),
    .com_sysrst( com_sysrst )
  );

   //---------------------------------------------//
   // RX Null Packet Generator                    //
   //---------------------------------------------//


   axi_pcie_v2_8_0_axi_enhanced_rx_null_gen #(
    .C_DATA_WIDTH( C_DATA_WIDTH ),
    .TCQ( TCQ )

   ) rx_null_gen_inst (

    // Inputs
    //-----------
    .m_axis_rx_tdata(m_axis_rx_tdata ),
    .m_axis_rx_tvalid(m_axis_rx_tvalid ),
    .m_axis_rx_tready( m_axis_rx_tready ),
    .m_axis_rx_tlast(m_axis_rx_tlast ),
    .m_axis_rx_tuser(m_axis_rx_tuser ),

    // Null Outputs
    //-----------
    .null_rx_tvalid( null_rx_tvalid ),
    .null_rx_tlast( null_rx_tlast ),
    .null_rx_tstrb( null_rx_tstrb ),
    .null_rdst_rdy( null_rdst_rdy ),
    .null_is_eof( null_is_eof ),
    .pkt_len_counter( pkt_len_counter ),

    // System
    //-----------
    .com_iclk( com_iclk ),
    .com_sysrst( com_sysrst )
   );

  //---------------------------------------------//
  // RX Data Demultiplexer                       //
  //---------------------------------------------//

   axi_pcie_v2_8_0_axi_enhanced_rx_demux #(
    .C_DATA_WIDTH( C_DATA_WIDTH ),
    .C_FAMILY( C_FAMILY ),
    .C_RX_PRESERVE_ORDER( C_RX_PRESERVE_ORDER ),
    .C_RX_REALIGN("TRUE"),
    .C_ROOT_PORT(C_ROOT_PORT),
    .TCQ( TCQ )
   )rx_demux_inst (

    // To/From AXI RX Data pipeline
    //------------------------------------------------

    .m_axis_rx_tdata( m_axis_rx_tdata ),
    .m_axis_rx_tvalid( m_axis_rx_tvalid ),
    .m_axis_rx_tready( m_axis_rx_tready ),
    .m_axis_rx_tstrb( m_axis_rx_tstrb ),
    .m_axis_rx_tlast( m_axis_rx_tlast ),
    .m_axis_rx_tuser( m_axis_rx_tuser ),
    .is_msi_trn( is_msi_trn ),

    // To/From AXI CR interface
    //------------------------------------------------

    .m_axis_cr_tdata( m_axis_cr_tdata ),
    .m_axis_cr_tvalid( m_axis_cr_tvalid ),
    .m_axis_cr_tready( m_axis_cr_tready ),
    .m_axis_cr_tstrb( m_axis_cr_tstrb ),
    .m_axis_cr_tlast( m_axis_cr_tlast ),
    .m_axis_cr_tuser( m_axis_cr_tuser ),

    // To/From AXI CW interface
    //------------------------------------------------

    .m_axis_cw_tdata( m_axis_cw_tdata ),
    .m_axis_cw_tvalid( m_axis_cw_tvalid ),
    .m_axis_cw_tready( m_axis_cw_tready ),
    .m_axis_cw_tstrb( m_axis_cw_tstrb ),
    .m_axis_cw_tlast( m_axis_cw_tlast ),
    .m_axis_cw_tuser( m_axis_cw_tuser ),

    // To/From AXI RC interface
    //------------------------------------------------

    .m_axis_rc_tdata( m_axis_rc_tdata ),
    .m_axis_rc_tvalid( m_axis_rc_tvalid ),
    .m_axis_rc_tready( m_axis_rc_tready ),
    .m_axis_rc_tstrb( m_axis_rc_tstrb ),
    .m_axis_rc_tlast( m_axis_rc_tlast ),
    .m_axis_rc_tuser( m_axis_rc_tuser ),

    // To/From AXI CFG interface
    //------------------------------------------------

    .m_axis_cfg_tdata( m_axis_cfg_tdata ),
    .m_axis_cfg_tvalid( m_axis_cfg_tvalid ),
    .m_axis_cfg_tready( m_axis_cfg_tready ),
    .m_axis_cfg_tstrb( m_axis_cfg_tstrb ),
    .m_axis_cfg_tlast( m_axis_cfg_tlast ),
    .m_axis_cfg_tuser( m_axis_cfg_tuser ),
    
    // To/From AXI CFG interface
    //------------------------------------------------

    .m_axis_msi_tdata( m_axis_msi_tdata ),
    .m_axis_msi_tvalid( m_axis_msi_tvalid ),
    .m_axis_msi_tready( m_axis_msi_tready ),
    .m_axis_msi_tstrb( m_axis_msi_tstrb ),
    .m_axis_msi_tlast( m_axis_msi_tlast ),
    .m_axis_msi_tuser( m_axis_msi_tuser ),
    .is_msi(is_msi),
    .msi_address(msi_address),

    // System
    //-----------
    .com_iclk( com_iclk ),
    .com_sysrst( com_sysrst ),
    .trn_lnk_up( trn_lnk_up ),
    .cfg_req(cfg_req )
   );


endmodule
