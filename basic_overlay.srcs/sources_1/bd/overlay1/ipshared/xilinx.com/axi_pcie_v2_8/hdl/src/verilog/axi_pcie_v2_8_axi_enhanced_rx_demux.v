//----------------------------------------------------------------------------//
//  File: axi_pcie_v2_8_0_axi_enhanced_rx_demux.v                   //
//  Date : 09/13/10                                                           //
//  Author : Naveen Kumar Rajagopal                                           //
//                                                                            //
//  Description:                                                              //
//  Demultiplexing the received AXI packet from the pipeline/ destraddler     //
//  onto the AXI -CR, AXI- CW or the AXI -RC interface                        //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_enhanced_top                                                        //
//      axi_enhanced_rx                                                       //
//        axi_enhanced_rx_demux                                               //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_pcie_v2_8_0_axi_enhanced_rx_demux #(
  parameter C_DATA_WIDTH = 32,             // RX/TX interface data width
  parameter C_FAMILY = "X7",               // Targeted FPGA family
  parameter C_RX_PRESERVE_ORDER = "FALSE", // Preserve Wr/Rd ordering of packets
  parameter C_RX_REALIGN = "TRUE",         // specifies whether Relalignment is enabled or not
  parameter C_ROOT_PORT = "FALSE",         // specifies whether the core work as Root or EP
  parameter TCQ = 1,                       // Clock to Q time

  // Do not override parameters below this line
  parameter REM_WIDTH  = (C_DATA_WIDTH == 128) ? 2 : 1, // trem/rrem width
  parameter RBAR_WIDTH = (C_FAMILY == "X7") ? 8 : 7,    // trn_rbar_hit width
  parameter STRB_WIDTH = C_DATA_WIDTH / 8               // TSTRB width
  ) (

  //-------------------------------------------------
  // AXI-S RX Interface to the data pipeline
  //-------------------------------------------------
  input      [C_DATA_WIDTH-1:0] m_axis_rx_tdata,     // RX data
  input                         m_axis_rx_tvalid,    // RX data is valid
  output                        m_axis_rx_tready,    // RX ready for data
  input        [STRB_WIDTH-1:0] m_axis_rx_tstrb,     // RX strobe byte enables
  input                         m_axis_rx_tlast,     // RX data is last
  input                  [21:0] m_axis_rx_tuser,     // RX user signals

  input                         is_msi_trn,
  output reg                    is_msi,              

  //-------------------------------------------------
  // AXI-S CR interface
  //-------------------------------------------------

  output reg [C_DATA_WIDTH-1:0] m_axis_cr_tdata,     // CR data
  output                        m_axis_cr_tvalid,    // CR data is valid
  input                         m_axis_cr_tready,    // CR ready for data
  output reg   [STRB_WIDTH-1:0] m_axis_cr_tstrb,     // CR strobe byte enables
  output reg                    m_axis_cr_tlast,     // CR data is last
  output reg             [21:0] m_axis_cr_tuser,     // CR user signals

  //-------------------------------------------------
  // AXI-S CW interface
  //-------------------------------------------------

  output reg [C_DATA_WIDTH-1:0] m_axis_cw_tdata,     // CW data
  output                        m_axis_cw_tvalid,    // CW data is valid
  input                         m_axis_cw_tready,    // CW ready for data
  output reg   [STRB_WIDTH-1:0] m_axis_cw_tstrb,     // CW strobe byte enables
  output reg                    m_axis_cw_tlast,     // CW data is last
  output reg             [21:0] m_axis_cw_tuser,     // CW user signals

  //-------------------------------------------------
  // AXI-S RC interface
  //-------------------------------------------------

  output reg [C_DATA_WIDTH-1:0] m_axis_rc_tdata,     // RC data
  output                        m_axis_rc_tvalid,    // RC data is valid
  input                         m_axis_rc_tready,    // RC ready for data
  output reg   [STRB_WIDTH-1:0] m_axis_rc_tstrb,     // RC strobe byte enables
  output reg                    m_axis_rc_tlast,     // RC data is last
  output reg             [21:0] m_axis_rc_tuser,     // RC user signals

  //-------------------------------------------------
  // AXI-S Cfg interface
  //-------------------------------------------------

  output reg [C_DATA_WIDTH-1:0] m_axis_cfg_tdata,     // CFG data
  output                        m_axis_cfg_tvalid,    // CFG data is valid
  input                         m_axis_cfg_tready,    // CFG ready for data
  output reg   [STRB_WIDTH-1:0] m_axis_cfg_tstrb,     // CFG strobe byte enables
  output reg                    m_axis_cfg_tlast,     // CFG data is last
  output reg             [21:0] m_axis_cfg_tuser,     // CFG user signals

  //-------------------------------------------------
  // AXI-S MSI interface
  //-------------------------------------------------

  output reg [C_DATA_WIDTH-1:0] m_axis_msi_tdata,     // MSI data
  output                        m_axis_msi_tvalid,    // MSI data is valid
  input                         m_axis_msi_tready,    // MSI ready for data
  output reg   [STRB_WIDTH-1:0] m_axis_msi_tstrb,     // MSI strobe byte enables
  output reg                    m_axis_msi_tlast,     // MSI data is last
  output reg             [21:0] m_axis_msi_tuser,     // MSI user signals
  
  input                  [63:0] msi_address,          // MSI Base address from the config block

  //-------------------------------------------------
  // System I/Os
  //-------------------------------------------------
  input                         com_iclk,            // user clock from block
  input                         com_sysrst,          // user reset from block
  input                         trn_lnk_up,          // TRN link up signal
  input                         cfg_req              // indicates whether user is waiting for a NP cpl
);

//*****************************************************************************************************
// Internal registers and wires
//*****************************************************************************************************

   wire             [1:0] pkt_fmt;                    // Indicates the packet format
   wire             [4:0] pkt_type;                   // Indicates the packet type
   wire             [63:0] pkt_addr;                   // Indicates the packet type
   reg              [1:0] pkt_type_p_np_cpl_cfg;      // Register to indicate posted / non posted / cpl / cfg pkts

//****************************************************************************************************
//Internal wires to select between the user ready and global ready(when link goes down)   
//****************************************************************************************************

  wire                    m_axis_cr_tready_i;
  wire                    m_axis_cw_tready_i;
  wire                    m_axis_rc_tready_i;
  wire                    m_axis_cfg_tready_i;
  wire                    m_axis_msi_tready_i;

  wire                    m_axis_rx_tsof;
//****************************************************************************************************
   reg                    cw_enable;
   reg                    cr_enable;
   reg                    rc_enable;
   reg                    cfg_enable;
   reg                    msi_enable;
   wire                   cw_rd;
   wire                   cr_rd;
   wire                   rc_rd;
   wire                   cfg_rd;
   wire                   msi_rd;

   wire                   cw_wr;
   wire                   cr_wr;
   wire                   rc_wr;
   wire                   cfg_wr;
   wire                   msi_wr;

   reg                    cw_full;
   reg                    cr_full;
   reg                    rc_full;
   reg                    cfg_full;
   reg                    msi_full;

   reg                    cw_empty;
   reg                    cr_empty;
   reg                    rc_empty;
   reg                    cfg_empty;
   reg                    msi_empty;

   reg  [5:0]             state;

  // Local Parameters

  localparam NONPOSTED = 2'b00;
  localparam POSTED    = 2'b01;
  localparam CPL       = 2'b10;
  localparam CFG       = 2'b11;

// FMT[1:0]
// 00 3DW header, no data
// 01 4DW header, no data
// 10 3DW header, with data
// 11 4DW header, with data

// TYPE[4:0]
// 0_0000 Memory Read Request (MRd)
// 0_0001 Memory Read Lock Request (MRdLk)
// 0_0000 Memory Write Request (MWr)
// 0_0010 IO Read Request (IORd)
// 0_0010 IO Write Request (IOWr)
// 0_0100 Config Type 0 Read Request (CfgRd0)
// 0_0100 Config Type 0 Write Request (CfgWr0)
// 0_0101 Config Type 1 Read Request (CfgRd1)
// 0_0101 Config Type 1 Write Request (CfgWr1)
// 1_0rrr Message Request (Msg)
// 1_0rrr Message Request W/Data (MsgD)
// 0_1010 Completion (Cpl)
// 0_1010 Completion W/Data (CplD)
// 0_1011 Completion-Locked (CplLk)
// 0_1011 Completion-Locked W/Data (CplDLk)
assign m_axis_rx_tsof = m_axis_rx_tuser[14];
assign pkt_fmt        = m_axis_rx_tdata[30:29]; // get the packet format of a new packet
assign pkt_type       = m_axis_rx_tdata[28:24]; // get the packet type of a new packet
assign pkt_addr       = (C_DATA_WIDTH == 128) ? ((m_axis_rx_tdata[29]) ? {m_axis_rx_tdata[95:64], m_axis_rx_tdata[127:96]} : {32'b0, m_axis_rx_tdata[95:64]})
                        : 64'h0; // Only used in 128 bit mode
  //-------------------------------------------------------------------------------------------------
  // Check for the packet type using the pkt_fmt and pkt_type for Posted or Non Posted or Completions
  // Configutation completions / MSI packets
  //-------------------------------------------------------------------------------------------------
  //       Signal         |   Value  |  Indicates
  //-------------------------------------------------------------------------------------------------
  //pkt_type_p_np_cpl_cfg |   2'b00  |  Non posted
  //                      |   2'b01  |  Posted
  //                      |   2'b10  |  Completion
  //                      |   2`b11  |  Config Completion / MSI
  //-------------------------------------------------------------------------------------------------

  localparam IDLE        = 6'b00_0000;
  localparam ACTIVE_CW   = 6'b00_0001;
  localparam ACTIVE_CR   = 6'b00_0010;
  localparam ACTIVE_RC   = 6'b00_0100;
  localparam ACTIVE_CFG  = 6'b00_1000;
  localparam ACTIVE_MSI  = 6'b01_0000;
  localparam ACTIVE1_CW  = 6'b10_0001;
  localparam ACTIVE1_CR  = 6'b10_0010;
  localparam ACTIVE1_RC  = 6'b10_0100;
  localparam ACTIVE1_CFG = 6'b10_1000;
  localparam ACTIVE1_MSI = 6'b11_0000;

  
  always @(posedge com_iclk)
  begin
    if(com_sysrst) begin
      
      state                 <= #TCQ IDLE;
      pkt_type_p_np_cpl_cfg <= #TCQ NONPOSTED;
      cw_enable             <= #TCQ 1'b0;
      cr_enable             <= #TCQ 1'b0;
      rc_enable             <= #TCQ 1'b0;
      cfg_enable            <= #TCQ 1'b0;
      msi_enable            <= #TCQ 1'b0;
      
    end else begin

      case(state)
      IDLE:   if(m_axis_rx_tsof && m_axis_rx_tvalid) begin
                if((pkt_type[4:2] == 3'b000 && ({pkt_fmt[1],pkt_type[1]} != 2'b10)) || (pkt_type[4:2] == 3'b011)) begin
                  pkt_type_p_np_cpl_cfg = #TCQ NONPOSTED;
                  cw_enable             = #TCQ 1'b0;
                  cr_enable             = #TCQ 1'b1;
                  rc_enable             = #TCQ 1'b0;
                  cfg_enable            = #TCQ 1'b0;
                  msi_enable            = #TCQ 1'b0;
                  state                 = #TCQ ACTIVE_CR;
                end
                else if((pkt_type[4:2] == 3'b000) || (pkt_type[4:3] == 2'b10)) begin
                  pkt_type_p_np_cpl_cfg = #TCQ POSTED;
                  if(C_DATA_WIDTH == 64) begin
                    if (!is_msi_trn) begin
                      pkt_type_p_np_cpl_cfg = #TCQ POSTED; // route tp CW interface
                      if(C_RX_PRESERVE_ORDER == "FALSE") begin
                        cw_enable             = #TCQ 1'b1;
                        cr_enable             = #TCQ 1'b0;
                        rc_enable             = #TCQ 1'b0;
                        cfg_enable            = #TCQ 1'b0;
                        msi_enable            = #TCQ 1'b0;
                        state                 = #TCQ ACTIVE_CW;
                      end
                      else begin
                        cw_enable             = #TCQ 1'b0;
                         cr_enable             = #TCQ 1'b1;
                        rc_enable             = #TCQ 1'b0;
                        cfg_enable            = #TCQ 1'b0;
                        msi_enable            = #TCQ 1'b0;
                        state                 = #TCQ ACTIVE_CR;
                      end
                    end
                    else begin // MSI packet
                      pkt_type_p_np_cpl_cfg = #TCQ CFG;
                      cw_enable             = #TCQ 1'b0;
                      cr_enable             = #TCQ 1'b0;
                      rc_enable             = #TCQ 1'b0;
                      cfg_enable            = #TCQ 1'b0;
                      msi_enable            = #TCQ 1'b1;
                      state                 = #TCQ ACTIVE_MSI;
                    end
                  end //end of 64-bit
                  else if (C_DATA_WIDTH == 128) begin
                    if(pkt_addr == msi_address && pkt_type[4] == 1'b0 && C_ROOT_PORT == "TRUE") begin // MSI_pkt_128
                      pkt_type_p_np_cpl_cfg = #TCQ CFG;
                      cw_enable             = #TCQ 1'b0;
                      cr_enable             = #TCQ 1'b0;
                      rc_enable             = #TCQ 1'b0;
                      cfg_enable            = #TCQ 1'b0;
                      msi_enable            = #TCQ 1'b1;
                      state                 = #TCQ ACTIVE_MSI;
                    end
                    else begin
                      pkt_type_p_np_cpl_cfg = #TCQ POSTED; // route tp CW interface
                      if(C_RX_PRESERVE_ORDER == "FALSE") begin
                        cw_enable             = #TCQ 1'b1;
                        cr_enable             = #TCQ 1'b0;
                        rc_enable             = #TCQ 1'b0;
                        cfg_enable            = #TCQ 1'b0;
                        msi_enable            = #TCQ 1'b0;
                        state                 = #TCQ ACTIVE_CW;
                      end
                      else begin
                        cw_enable             = #TCQ 1'b0;
                        cr_enable             = #TCQ 1'b1;
                        rc_enable             = #TCQ 1'b0;
                        cfg_enable            = #TCQ 1'b0;
                        msi_enable            = #TCQ 1'b0;
                        state                 = #TCQ ACTIVE_CR;
                      end
                    end
                  end //end of 128-bit 
                end // end of posted type decoding block

                //**********************************************************
                // Completion or Config Completion packet decode
                // Holds same for 32 bit, 64 bit and 128 bit aligned datas
                //**********************************************************

                else if(pkt_type[4:2] == 3'b010) begin
                  if(!cfg_req) begin
                    pkt_type_p_np_cpl_cfg = #TCQ CPL; // route it to AXI -S RC interface
                    cw_enable             = #TCQ 1'b0;
                    cr_enable             = #TCQ 1'b0;
                    rc_enable             = #TCQ 1'b1;
                    cfg_enable            = #TCQ 1'b0;
                    msi_enable            = #TCQ 1'b0;
                    state                 = #TCQ ACTIVE_RC;

                  end // end of !cfg_req loop
                  else begin
                    pkt_type_p_np_cpl_cfg = #TCQ CFG;
                    cw_enable             = #TCQ 1'b0;
                    cr_enable             = #TCQ 1'b0;
                    rc_enable             = #TCQ 1'b0;
                    cfg_enable            = #TCQ 1'b1;
                    msi_enable            = #TCQ 1'b0;
                    state                 = #TCQ ACTIVE_CFG;
                  end
                end
              end
              else begin
                pkt_type_p_np_cpl_cfg = #TCQ NONPOSTED;
                cw_enable             = #TCQ 1'b0;
                cr_enable             = #TCQ 1'b0;
                rc_enable             = #TCQ 1'b0;
                cfg_enable            = #TCQ 1'b0;
                msi_enable            = #TCQ 1'b0;
                state                 = #TCQ IDLE;
              end

      ACTIVE_CW: 
                begin
                  if (m_axis_rx_tlast && m_axis_rx_tvalid && m_axis_rx_tready) begin
                    state               = #TCQ ACTIVE1_CW;
                  pkt_type_p_np_cpl_cfg = #TCQ pkt_type_p_np_cpl_cfg;
                  cw_enable             = #TCQ 1'b0;
                  cr_enable             = #TCQ 1'b0;
                  rc_enable             = #TCQ 1'b0;
                  cfg_enable            = #TCQ 1'b0;
                  msi_enable            = #TCQ 1'b0;
                  end
                  else begin
                    state                 = #TCQ ACTIVE_CW;
                    pkt_type_p_np_cpl_cfg = #TCQ pkt_type_p_np_cpl_cfg;
                    cw_enable             = #TCQ cw_enable;
                    cr_enable             = #TCQ cr_enable;
                    rc_enable             = #TCQ rc_enable;
                    cfg_enable            = #TCQ cfg_enable;
                    msi_enable            = #TCQ msi_enable;
                  end
                end

      ACTIVE1_CW: 
                begin
                  if (m_axis_cw_tlast && m_axis_cw_tvalid && m_axis_cw_tready) begin
                    state                 = #TCQ IDLE;
                    pkt_type_p_np_cpl_cfg = #TCQ POSTED;
                    cw_enable             = #TCQ 1'b0;
                    cr_enable             = #TCQ 1'b0;
                    rc_enable             = #TCQ 1'b0;
                    cfg_enable            = #TCQ 1'b0;
                    msi_enable            = #TCQ 1'b0;
                  end
                  else begin
                    state                 = #TCQ ACTIVE1_CW;
                    pkt_type_p_np_cpl_cfg = #TCQ pkt_type_p_np_cpl_cfg;
                    cw_enable             = #TCQ cw_enable;
                    cr_enable             = #TCQ cr_enable;
                    rc_enable             = #TCQ rc_enable;
                    cfg_enable            = #TCQ cfg_enable;
                    msi_enable            = #TCQ msi_enable;
                  end
                end

      ACTIVE_CR: 
                begin
                  if (m_axis_rx_tlast && m_axis_rx_tvalid && m_axis_rx_tready) begin
                    state               = #TCQ ACTIVE1_CR;
                    pkt_type_p_np_cpl_cfg = #TCQ pkt_type_p_np_cpl_cfg;
                    cw_enable             = #TCQ 1'b0;
                    cr_enable             = #TCQ 1'b0;
                    rc_enable             = #TCQ 1'b0;
                    cfg_enable            = #TCQ 1'b0;
                    msi_enable            = #TCQ 1'b0;
                  end
                  else begin
                    state               = #TCQ ACTIVE_CR;
                    pkt_type_p_np_cpl_cfg = #TCQ pkt_type_p_np_cpl_cfg;
                    cw_enable             = #TCQ cw_enable;
                    cr_enable             = #TCQ cr_enable;
                    rc_enable             = #TCQ rc_enable;
                    cfg_enable            = #TCQ cfg_enable;
                    msi_enable            = #TCQ msi_enable;
                  end
//                  pkt_type_p_np_cpl_cfg = #TCQ pkt_type_p_np_cpl_cfg;
//                  cw_enable             = #TCQ cw_enable;
//                  cr_enable             = #TCQ cr_enable;
//                  rc_enable             = #TCQ rc_enable;
//                  cfg_enable            = #TCQ cfg_enable;
//                  msi_enable            = #TCQ msi_enable;
                end

      ACTIVE1_CR: 
                begin
                  if (m_axis_cr_tlast && m_axis_cr_tvalid && m_axis_cr_tready) begin
                    state                 = #TCQ IDLE;
                    pkt_type_p_np_cpl_cfg = #TCQ NONPOSTED;
                    cw_enable             = #TCQ 1'b0;
                    cr_enable             = #TCQ 1'b0;
                    rc_enable             = #TCQ 1'b0;
                    cfg_enable            = #TCQ 1'b0;
                    msi_enable            = #TCQ 1'b0;
                  end
                  else begin
                    state                 = #TCQ ACTIVE1_CR;
                    pkt_type_p_np_cpl_cfg = #TCQ pkt_type_p_np_cpl_cfg;
                    cw_enable             = #TCQ cw_enable;
                    cr_enable             = #TCQ cr_enable;
                    rc_enable             = #TCQ rc_enable;
                    cfg_enable            = #TCQ cfg_enable;
                    msi_enable            = #TCQ msi_enable;
                  end
                end

      ACTIVE_RC: 
                begin
                  if (m_axis_rx_tlast && m_axis_rx_tvalid && m_axis_rx_tready) begin
                    state               = #TCQ ACTIVE1_RC;
                  pkt_type_p_np_cpl_cfg = #TCQ pkt_type_p_np_cpl_cfg;
                  cw_enable             = #TCQ 1'b0;
                  cr_enable             = #TCQ 1'b0;
                  rc_enable             = #TCQ 1'b0;
                  cfg_enable            = #TCQ 1'b0;
                  msi_enable            = #TCQ 1'b0;
                  end
                  else begin
                    state               = #TCQ ACTIVE_RC;
                    pkt_type_p_np_cpl_cfg = #TCQ pkt_type_p_np_cpl_cfg;
                      cw_enable             = #TCQ cw_enable;
                    cr_enable             = #TCQ cr_enable;
                    rc_enable             = #TCQ rc_enable;
                    cfg_enable            = #TCQ cfg_enable;
                    msi_enable            = #TCQ msi_enable;
                  end
                end

      ACTIVE1_RC: 
                begin
                  if (m_axis_rc_tlast && m_axis_rc_tvalid && m_axis_rc_tready) begin
                    state                 = #TCQ IDLE;
                    pkt_type_p_np_cpl_cfg = #TCQ CPL;
                    cw_enable             = #TCQ 1'b0;
                    cr_enable             = #TCQ 1'b0;
                    rc_enable             = #TCQ 1'b0;
                    cfg_enable            = #TCQ 1'b0;
                    msi_enable            = #TCQ 1'b0;
                  end
                  else begin
                    state                 = #TCQ ACTIVE1_RC;
                    pkt_type_p_np_cpl_cfg = #TCQ pkt_type_p_np_cpl_cfg;
                    cw_enable             = #TCQ cw_enable;
                    cr_enable             = #TCQ cr_enable;
                    rc_enable             = #TCQ rc_enable;
                    cfg_enable            = #TCQ cfg_enable;
                    msi_enable            = #TCQ msi_enable;
                  end
                end

      ACTIVE_CFG : 
              begin
                if (m_axis_rx_tlast && m_axis_rx_tvalid && m_axis_rx_tready) begin
                  state               = #TCQ ACTIVE1_CFG;
                  pkt_type_p_np_cpl_cfg = #TCQ pkt_type_p_np_cpl_cfg;
                  cw_enable             = #TCQ 1'b0;
                  cr_enable             = #TCQ 1'b0;
                  rc_enable             = #TCQ 1'b0;
                  cfg_enable            = #TCQ 1'b0;
                  msi_enable            = #TCQ 1'b0;
                end
                else begin
                  state               = #TCQ ACTIVE_CFG;
                  pkt_type_p_np_cpl_cfg = #TCQ pkt_type_p_np_cpl_cfg;
                  cw_enable             = #TCQ cw_enable;
                  cr_enable             = #TCQ cr_enable;
                  rc_enable             = #TCQ rc_enable;
                  cfg_enable            = #TCQ cfg_enable;
                  msi_enable            = #TCQ msi_enable;
                end
              end

      ACTIVE1_CFG : 
                begin
                  if (m_axis_cfg_tlast && m_axis_cfg_tvalid && m_axis_cfg_tready) begin
                    state                 = #TCQ IDLE;
                    pkt_type_p_np_cpl_cfg = #TCQ CFG;
                    cw_enable             = #TCQ 1'b0;
                    cr_enable             = #TCQ 1'b0;
                    rc_enable             = #TCQ 1'b0;
                    cfg_enable            = #TCQ 1'b0;
                    msi_enable            = #TCQ 1'b0;
                  end
                  else begin
                    state                 = #TCQ ACTIVE1_CFG;
                    pkt_type_p_np_cpl_cfg = #TCQ pkt_type_p_np_cpl_cfg;
                    cw_enable             = #TCQ cw_enable;
                    cr_enable             = #TCQ cr_enable;
                    rc_enable             = #TCQ rc_enable;
                    cfg_enable            = #TCQ cfg_enable;
                    msi_enable            = #TCQ msi_enable;
                  end
                end

      ACTIVE_MSI : 
                begin
                  if (m_axis_rx_tlast && m_axis_rx_tvalid && m_axis_rx_tready) begin
                    state               = #TCQ ACTIVE1_MSI;
                    pkt_type_p_np_cpl_cfg = #TCQ pkt_type_p_np_cpl_cfg;
                  cw_enable             = #TCQ 1'b0;
                  cr_enable             = #TCQ 1'b0;
                  rc_enable             = #TCQ 1'b0;
                  cfg_enable            = #TCQ 1'b0;
                  msi_enable            = #TCQ 1'b0;
                  end
                  else begin
                    state               = #TCQ ACTIVE_MSI;
                    pkt_type_p_np_cpl_cfg = #TCQ pkt_type_p_np_cpl_cfg;
                    cw_enable             = #TCQ cw_enable;
                    cr_enable             = #TCQ cr_enable;
                    rc_enable             = #TCQ rc_enable;
                    cfg_enable            = #TCQ cfg_enable;
                    msi_enable            = #TCQ msi_enable;
                   end
                end

      ACTIVE1_MSI : 
                begin
                  if (m_axis_msi_tlast && m_axis_msi_tvalid && m_axis_msi_tready) begin
                    state                 = #TCQ IDLE;
                    pkt_type_p_np_cpl_cfg = #TCQ CFG;
                    cw_enable             = #TCQ 1'b0;
                    cr_enable             = #TCQ 1'b0;
                    rc_enable             = #TCQ 1'b0;
                    cfg_enable            = #TCQ 1'b0;
                    msi_enable            = #TCQ 1'b0;
                  end
                  else begin
                    state                 = #TCQ ACTIVE1_MSI;
                    pkt_type_p_np_cpl_cfg = #TCQ pkt_type_p_np_cpl_cfg;
                    cw_enable             = #TCQ cw_enable;
                    cr_enable             = #TCQ cr_enable;
                    rc_enable             = #TCQ rc_enable;
                    cfg_enable            = #TCQ cfg_enable;
                    msi_enable            = #TCQ msi_enable;
                  end
                end

      default: begin
                 state                 = #TCQ IDLE;
                 pkt_type_p_np_cpl_cfg = #TCQ NONPOSTED;
                 cw_enable             = #TCQ 1'b0;
                 cr_enable             = #TCQ 1'b0;
                 rc_enable             = #TCQ 1'b0;
                 cfg_enable            = #TCQ 1'b0;
                 msi_enable            = #TCQ 1'b0;
               end
      endcase
    end
  end

// CW Bus Fifo
  always @(posedge com_iclk)
  begin
    if(com_sysrst) begin
      cw_full               <= #TCQ 1'b0;
      cw_empty              <= #TCQ 1'b1;
      m_axis_cw_tdata       <= #TCQ {C_DATA_WIDTH{1'b0}};
      m_axis_cw_tlast       <= #TCQ 1'b0;
      m_axis_cw_tstrb       <= #TCQ {STRB_WIDTH{1'b0}};
      m_axis_cw_tuser       <= #TCQ 22'b0;
    end
    else begin
      if (cw_wr && !cw_rd) begin //write fifo
        cw_full               <= #TCQ 1'b1;
        cw_empty              <= #TCQ 1'b0;
        m_axis_cw_tdata       <= #TCQ m_axis_rx_tdata;
        m_axis_cw_tlast       <= #TCQ m_axis_rx_tlast;
        m_axis_cw_tstrb       <= #TCQ m_axis_rx_tstrb;
        m_axis_cw_tuser       <= #TCQ m_axis_rx_tuser;
      end
      else if (!cw_wr && cw_rd) begin //read fifo
        cw_full               <= #TCQ 1'b0;
        cw_empty              <= #TCQ 1'b1;
        m_axis_cw_tdata       <= #TCQ {C_DATA_WIDTH{1'b0}};
        m_axis_cw_tlast       <= #TCQ 1'b0;
        m_axis_cw_tstrb       <= #TCQ {STRB_WIDTH{1'b0}};
        m_axis_cw_tuser       <= #TCQ 22'b0;
      end
      else if (!cw_wr && !cw_rd) begin //do nothing
        cw_full               <= #TCQ cw_full;
        cw_empty              <= #TCQ cw_empty;
        m_axis_cw_tdata       <= #TCQ m_axis_cw_tdata;
        m_axis_cw_tlast       <= #TCQ m_axis_cw_tlast;
        m_axis_cw_tstrb       <= #TCQ m_axis_cw_tstrb;
        m_axis_cw_tuser       <= #TCQ m_axis_cw_tuser;
      end
      else begin //read and write to the same time
        cw_full               <= #TCQ 1'b1;
        cw_empty              <= #TCQ 1'b0;
        m_axis_cw_tdata       <= #TCQ m_axis_rx_tdata;
        m_axis_cw_tlast       <= #TCQ m_axis_rx_tlast;
        m_axis_cw_tstrb       <= #TCQ m_axis_rx_tstrb;
        m_axis_cw_tuser       <= #TCQ m_axis_rx_tuser;
      end
    end
  end

// CR Bus Fifo
  always @(posedge com_iclk)
  begin
    if(com_sysrst) begin
      cr_full               <= #TCQ 1'b0;
      cr_empty              <= #TCQ 1'b1;
      m_axis_cr_tdata       <= #TCQ {C_DATA_WIDTH{1'b0}};
      m_axis_cr_tlast       <= #TCQ 1'b0;
      m_axis_cr_tstrb       <= #TCQ {STRB_WIDTH{1'b0}};
      m_axis_cr_tuser       <= #TCQ 22'b0;
    end
    else begin
      if (cr_wr && !cr_rd) begin //write fifo
        cr_full               <= #TCQ 1'b1;
        cr_empty              <= #TCQ 1'b0;
        m_axis_cr_tdata       <= #TCQ m_axis_rx_tdata;
        m_axis_cr_tlast       <= #TCQ m_axis_rx_tlast;
        m_axis_cr_tstrb       <= #TCQ m_axis_rx_tstrb;
        m_axis_cr_tuser       <= #TCQ m_axis_rx_tuser;
      end
      else if (!cr_wr && cr_rd) begin //read fifo
        cr_full               <= #TCQ 1'b0;
        cr_empty              <= #TCQ 1'b1;
        m_axis_cr_tdata       <= #TCQ {C_DATA_WIDTH{1'b0}};
        m_axis_cr_tlast       <= #TCQ 1'b0;
        m_axis_cr_tstrb       <= #TCQ {STRB_WIDTH{1'b0}};
        m_axis_cr_tuser       <= #TCQ 22'b0;
      end
      else if (!cr_wr && !cr_rd) begin //do nothing
        cr_full               <= #TCQ cr_full;
        cr_empty              <= #TCQ cr_empty;
        m_axis_cr_tdata       <= #TCQ m_axis_cr_tdata;
        m_axis_cr_tlast       <= #TCQ m_axis_cr_tlast;
        m_axis_cr_tstrb       <= #TCQ m_axis_cr_tstrb;
        m_axis_cr_tuser       <= #TCQ m_axis_cr_tuser;
      end
      else begin //read and write to the same time
        cr_full               <= #TCQ 1'b1;
        cr_empty              <= #TCQ 1'b0;
        m_axis_cr_tdata       <= #TCQ m_axis_rx_tdata;
        m_axis_cr_tlast       <= #TCQ m_axis_rx_tlast;
        m_axis_cr_tstrb       <= #TCQ m_axis_rx_tstrb;
        m_axis_cr_tuser       <= #TCQ m_axis_rx_tuser;
      end
    end
  end

// RC Bus Fifo
  always @(posedge com_iclk)
  begin
    if(com_sysrst) begin
      rc_full               <= #TCQ 1'b0;
      rc_empty              <= #TCQ 1'b1;
      m_axis_rc_tdata       <= #TCQ {C_DATA_WIDTH{1'b0}};
      m_axis_rc_tlast       <= #TCQ 1'b0;
      m_axis_rc_tstrb       <= #TCQ {STRB_WIDTH{1'b0}};
      m_axis_rc_tuser       <= #TCQ 22'b0;
    end
    else begin
      if (rc_wr && !rc_rd) begin //write fifo
        rc_full               <= #TCQ 1'b1;
        rc_empty              <= #TCQ 1'b0;
        m_axis_rc_tdata       <= #TCQ m_axis_rx_tdata;
        m_axis_rc_tlast       <= #TCQ m_axis_rx_tlast;
        m_axis_rc_tstrb       <= #TCQ m_axis_rx_tstrb;
        m_axis_rc_tuser       <= #TCQ m_axis_rx_tuser;
      end
      else if (!rc_wr && rc_rd) begin //read fifo
        rc_full               <= #TCQ 1'b0;
        rc_empty              <= #TCQ 1'b1;
        m_axis_rc_tdata       <= #TCQ {C_DATA_WIDTH{1'b0}};
        m_axis_rc_tlast       <= #TCQ 1'b0;
        m_axis_rc_tstrb       <= #TCQ {STRB_WIDTH{1'b0}};
        m_axis_rc_tuser       <= #TCQ 22'b0;
      end
      else if (!rc_wr && !rc_rd) begin //do nothing
        rc_full               <= #TCQ rc_full;
        rc_empty              <= #TCQ rc_empty;
        m_axis_rc_tdata       <= #TCQ m_axis_rc_tdata;
        m_axis_rc_tlast       <= #TCQ m_axis_rc_tlast;
        m_axis_rc_tstrb       <= #TCQ m_axis_rc_tstrb;
        m_axis_rc_tuser       <= #TCQ m_axis_rc_tuser;
      end
      else begin //read and write to the same time
        rc_full               <= #TCQ 1'b1;
        rc_empty              <= #TCQ 1'b0;
        m_axis_rc_tdata       <= #TCQ m_axis_rx_tdata;
        m_axis_rc_tlast       <= #TCQ m_axis_rx_tlast;
        m_axis_rc_tstrb       <= #TCQ m_axis_rx_tstrb;
        m_axis_rc_tuser       <= #TCQ m_axis_rx_tuser;
      end
    end
  end

// CFG Bus Fifo
  always @(posedge com_iclk)
  begin
    if(com_sysrst) begin
      cfg_full               <= #TCQ 1'b0;
      cfg_empty              <= #TCQ 1'b1;
      m_axis_cfg_tdata       <= #TCQ {C_DATA_WIDTH{1'b0}};
      m_axis_cfg_tlast       <= #TCQ 1'b0;
      m_axis_cfg_tstrb       <= #TCQ {STRB_WIDTH{1'b0}};
      m_axis_cfg_tuser       <= #TCQ 22'b0;
    end
    else begin
      if (cfg_wr && !cfg_rd) begin //write fifo
        cfg_full             <= #TCQ 1'b1;
        cfg_empty            <= #TCQ 1'b0;
        m_axis_cfg_tdata     <= #TCQ m_axis_rx_tdata;
        m_axis_cfg_tlast     <= #TCQ m_axis_rx_tlast;
        m_axis_cfg_tstrb     <= #TCQ m_axis_rx_tstrb;
        m_axis_cfg_tuser     <= #TCQ m_axis_rx_tuser;
      end
      else if (!cfg_wr && cfg_rd) begin //read fifo
        cfg_full             <= #TCQ 1'b0;
        cfg_empty            <= #TCQ 1'b1;
        m_axis_cfg_tdata     <= #TCQ {C_DATA_WIDTH{1'b0}};
        m_axis_cfg_tlast     <= #TCQ 1'b0;
        m_axis_cfg_tstrb     <= #TCQ {STRB_WIDTH{1'b0}};
        m_axis_cfg_tuser     <= #TCQ 22'b0;
      end
      else if (!cfg_wr && !cfg_rd) begin //do nothing
        cfg_full             <= #TCQ cfg_full;
        cfg_empty            <= #TCQ cfg_empty;
        m_axis_cfg_tdata     <= #TCQ m_axis_cfg_tdata;
        m_axis_cfg_tlast     <= #TCQ m_axis_cfg_tlast;
        m_axis_cfg_tstrb     <= #TCQ m_axis_cfg_tstrb;
        m_axis_cfg_tuser     <= #TCQ m_axis_cfg_tuser;
      end
      else begin //read and write to the same time
        cfg_full             <= #TCQ 1'b1;
        cfg_empty            <= #TCQ 1'b0;
        m_axis_cfg_tdata     <= #TCQ m_axis_rx_tdata;
        m_axis_cfg_tlast     <= #TCQ m_axis_rx_tlast;
        m_axis_cfg_tstrb     <= #TCQ m_axis_rx_tstrb;
        m_axis_cfg_tuser     <= #TCQ m_axis_rx_tuser;
      end
    end
  end

// MSI Bus Fifo
  always @(posedge com_iclk)
  begin
    if(com_sysrst) begin
      msi_full               <= #TCQ 1'b0;
      msi_empty              <= #TCQ 1'b1;
      m_axis_msi_tdata       <= #TCQ {C_DATA_WIDTH{1'b0}};
      m_axis_msi_tlast       <= #TCQ 1'b0;
      m_axis_msi_tstrb       <= #TCQ {STRB_WIDTH{1'b0}};
      m_axis_msi_tuser       <= #TCQ 22'b0;
      is_msi                 <= #TCQ 1'b0;
    end
    else begin
      if (msi_wr && !msi_rd) begin //write fifo
        msi_full             <= #TCQ 1'b1;
        msi_empty            <= #TCQ 1'b0;
        m_axis_msi_tdata     <= #TCQ m_axis_rx_tdata;
        m_axis_msi_tlast     <= #TCQ m_axis_rx_tlast;
        m_axis_msi_tstrb     <= #TCQ m_axis_rx_tstrb;
        m_axis_msi_tuser     <= #TCQ m_axis_rx_tuser;
        is_msi               <= #TCQ 1'b1;
      end
      else if (!msi_wr && msi_rd) begin //read fifo
        msi_full             <= #TCQ 1'b0;
        msi_empty            <= #TCQ 1'b1;
        m_axis_msi_tdata     <= #TCQ {C_DATA_WIDTH{1'b0}};
        m_axis_msi_tlast     <= #TCQ 1'b0;
        m_axis_msi_tstrb     <= #TCQ {STRB_WIDTH{1'b0}};
        m_axis_msi_tuser     <= #TCQ 22'b0;
        is_msi               <= #TCQ 1'b0;
      end
      else if (!msi_wr && !msi_rd) begin //do nothing
        msi_full             <= #TCQ msi_full;
        msi_empty            <= #TCQ msi_empty;
        m_axis_msi_tdata     <= #TCQ m_axis_msi_tdata;
        m_axis_msi_tlast     <= #TCQ m_axis_msi_tlast;
        m_axis_msi_tstrb     <= #TCQ m_axis_msi_tstrb;
        m_axis_msi_tuser     <= #TCQ m_axis_msi_tuser;
        is_msi               <= #TCQ is_msi;
      end
      else begin //read and write to the same time
        msi_full             <= #TCQ 1'b1;
        msi_empty            <= #TCQ 1'b0;
        m_axis_msi_tdata     <= #TCQ m_axis_rx_tdata;
        m_axis_msi_tlast     <= #TCQ m_axis_rx_tlast;
        m_axis_msi_tstrb     <= #TCQ m_axis_rx_tstrb;
        m_axis_msi_tuser     <= #TCQ m_axis_rx_tuser;
        is_msi               <= #TCQ 1'b1;
      end
    end
  end

  assign cw_wr  = (m_axis_rx_tvalid && cw_enable  && (!cw_full  || (cw_full  && cw_rd)))  ? 1'b1 : 1'b0;
  assign cr_wr  = (m_axis_rx_tvalid && cr_enable  && (!cr_full  || (cr_full  && cr_rd)))  ? 1'b1 : 1'b0;
  assign rc_wr  = (m_axis_rx_tvalid && rc_enable  && (!rc_full  || (rc_full  && rc_rd)))  ? 1'b1 : 1'b0;
  assign cfg_wr = (m_axis_rx_tvalid && cfg_enable && (!cfg_full || (cfg_full && cfg_rd))) ? 1'b1 : 1'b0;
  assign msi_wr = (m_axis_rx_tvalid && msi_enable && (!msi_full || (msi_full && msi_rd))) ? 1'b1 : 1'b0;

  assign m_axis_rx_tready = cw_wr || cr_wr || rc_wr || cfg_wr || msi_wr;

  assign m_axis_cw_tready_i  = trn_lnk_up ? m_axis_cw_tready  : 1'b1;
  assign m_axis_cr_tready_i  = trn_lnk_up ? m_axis_cr_tready  : 1'b1;
  assign m_axis_rc_tready_i  = trn_lnk_up ? m_axis_rc_tready  : 1'b1;
  assign m_axis_cfg_tready_i = trn_lnk_up ? m_axis_cfg_tready : 1'b1;
  assign m_axis_msi_tready_i = trn_lnk_up ? m_axis_msi_tready : 1'b1;

  assign cw_rd  = (!cw_empty ) ? m_axis_cw_tready_i  : 1'b0;
  assign cr_rd  = (!cr_empty ) ? m_axis_cr_tready_i  : 1'b0;
  assign rc_rd  = (!rc_empty ) ? m_axis_rc_tready_i  : 1'b0;
  assign cfg_rd = (!cfg_empty) ? m_axis_cfg_tready_i : 1'b0;
  assign msi_rd = (!msi_empty) ? m_axis_msi_tready_i : 1'b0;

  assign m_axis_cw_tvalid    = (!trn_lnk_up) ? 1'b0 : cw_full;
  assign m_axis_cr_tvalid    = (!trn_lnk_up) ? 1'b0 : cr_full;
  assign m_axis_rc_tvalid    = (!trn_lnk_up) ? 1'b0 : rc_full;
  assign m_axis_cfg_tvalid   = (!trn_lnk_up) ? 1'b0 : cfg_full;
  assign m_axis_msi_tvalid   = (!trn_lnk_up) ? 1'b0 : msi_full;

  endmodule
