//-----------------------------------------------------------------------------
// Filename:        slave_attachment.v
// Description:     AXI slave attachment supporting single transfers
//-----------------------------------------------------------------------------
// Structure:   This section shows the hierarchical structure of axi_lite_ipif.
//
//              --axi_lite_ipif.v
//                    --slave_attachment.v
//                       --address_decoder.v
//                       --pselect_f.v
//-----------------------------------------------------------------------------
// Naming Conventions:
//      active low signals:                     "*_n"
//      clock signals:                          "clk", "clk_div#", "clk_#x"
//      reset signals:                          "rst", "rst_n"
//      generics:                               "C_*"
//      user defined types:                     "*_TYPE"
//      state machine next state:               "*_ns"
//      state machine current state:            "*_cs"
//      combinatorial signals:                  "*_cmb"
//      pipelined or register delay signals:    "*_d#"
//      counter signals:                        "*cnt*"
//      clock enable signals:                   "*_ce"
//      internal version of output port         "*_i"
//      device pins:                            "*_pin"
//      ports:                                  - Names begin with Uppercase
//      processes:                              "*_PROCESS"
//      component instantiations:               "<ENTITY_>I_<#|FUNC>
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
//                     Definition of Generics
//-----------------------------------------------------------------------------
// C_NUM_ADDRESS_RANGES  -- Total Number of address ranges
// C_TOTAL_NUM_CE        -- Total number of chip enables in all the ranges
// C_IPIF_ABUS_WIDTH     -- IPIF Address bus width
// C_IPIF_DBUS_WIDTH     -- IPIF Data Bus width
// C_S_AXI_MIN_SIZE      -- Minimum address range of the IP
// C_USE_WSTRB           -- Use write strobs or not
// C_DPHASE_TIMEOUT      -- Data phase time out counter 
// C_NUM_ADDRESS_RANGES  -- Number of address ranges in C_ARD_ADDR_RANGE_ARRAY
// C_ARD_ADDR_RANGE_ARRAY-- Base /High Address Pair for each Address Range
// C_ARD_NUM_CE_ARRAY    -- Desired number of chip enables for an address range
// C_FAMILY              -- Target FPGA family
//-----------------------------------------------------------------------------
//                  Definition of Ports
//-----------------------------------------------------------------------------
// S_AXI_ACLK            -- AXI Clock
// S_AXI_ARESET          -- AXI Reset
// S_AXI_AWADDR          -- AXI Write address
// S_AXI_AWVALID         -- Write address valid
// S_AXI_AWREADY         -- Write address ready
// S_AXI_WDATA           -- Write data
// S_AXI_WSTRB           -- Write strobes
// S_AXI_WVALID          -- Write valid
// S_AXI_WREADY          -- Write ready
// S_AXI_BRESP           -- Write response
// S_AXI_BVALID          -- Write response valid
// S_AXI_BREADY          -- Response ready
// S_AXI_ARADDR          -- Read address
// S_AXI_ARVALID         -- Read address valid
// S_AXI_ARREADY         -- Read address ready
// S_AXI_RDATA           -- Read data
// S_AXI_RRESP           -- Read response
// S_AXI_RVALID          -- Read valid
// S_AXI_RREADY          -- Read ready
// Bus2IP_Clk            -- Synchronization clock provided to User IP
// Bus2IP_Reset          -- Active high reset for use by the User IP
// Bus2IP_Addr           -- Desired address of read or write operation
// Bus2IP_RNW            -- Read or write indicator for the transaction
// Bus2IP_BE             -- Byte enables for the data bus
// Bus2IP_CS             -- Chip select for the transcations
// Bus2IP_RdCE           -- Chip enables for the read
// Bus2IP_WrCE           -- Chip enables for the write
// Bus2IP_Data           -- Write data bus to the User IP
// IP2Bus_Data           -- Input Read Data bus from the User IP
// IP2Bus_WrAck          -- Active high Write Data qualifier from the IP
// IP2Bus_RdAck          -- Active high Read Data qualifier from the IP
// IP2Bus_Error          -- Error signal from the IP
//-----------------------------------------------------------------------------

`timescale 1ps/1ps

module axi_pcie_v2_8_0_slave_attachment #(
  parameter                                C_NUM_ADDRESS_RANGES    = 2,
  parameter                                C_TOTAL_NUM_CE          = 16,
  parameter [0:32*2*C_NUM_ADDRESS_RANGES-1]C_ARD_ADDR_RANGE_ARRAY  = 
                                               {2*C_NUM_ADDRESS_RANGES
                                               {32'h00000000}},
  parameter [0:8*C_NUM_ADDRESS_RANGES-1]   C_ARD_NUM_CE_ARRAY  = 
                                               {C_NUM_ADDRESS_RANGES{8'd4}},
  parameter                                C_IPIF_ABUS_WIDTH       = 32,
  parameter                                C_IPIF_DBUS_WIDTH       = 32,
  parameter [31:0]                         C_S_AXI_MIN_SIZE        = 32'h000001FF,
  parameter                                C_USE_WSTRB             = 0,
  parameter                                C_DPHASE_TIMEOUT        = 16,
  parameter                                C_FAMILY                = "virtex7",
  parameter                                TCQ                     = 1
  )
  (
  input                                  S_AXI_ACLK, 
  input                                  S_AXI_ARESETN, 
  input [C_IPIF_ABUS_WIDTH-1:0]          S_AXI_AWADDR, 
  input                                  S_AXI_AWVALID, 
  output                                 S_AXI_AWREADY, 
  input [C_IPIF_DBUS_WIDTH-1:0]          S_AXI_WDATA,
  input [(C_IPIF_DBUS_WIDTH/8)-1:0]      S_AXI_WSTRB, 
  input                                  S_AXI_WVALID, 
  output                                 S_AXI_WREADY, 
  output [1:0]                           S_AXI_BRESP,
  output                                 S_AXI_BVALID,    
  input                                  S_AXI_BREADY, 
  input [C_IPIF_ABUS_WIDTH - 1:0]        S_AXI_ARADDR, 
  input                                  S_AXI_ARVALID, 
  output                                 S_AXI_ARREADY,    
  output [C_IPIF_DBUS_WIDTH - 1:0]       S_AXI_RDATA,   
  output [1:0]                           S_AXI_RRESP, 
  output                                 S_AXI_RVALID,
  input                                  S_AXI_RREADY, 
  output                                 Bus2IP_Clk, 
  output                                 Bus2IP_Resetn,    
  output [C_IPIF_ABUS_WIDTH-1:0]         Bus2IP_Addr,    
  output                                 Bus2IP_RNW,
  output [((C_IPIF_DBUS_WIDTH/8) - 1):0] Bus2IP_BE,
  output [(C_NUM_ADDRESS_RANGES -1):0]   Bus2IP_CS,  
  output [C_TOTAL_NUM_CE-1:0]            Bus2IP_RdCE,   
  output [C_TOTAL_NUM_CE-1:0]            Bus2IP_WrCE, 
  output [(C_IPIF_DBUS_WIDTH - 1):0]     Bus2IP_Data,    
  input [(C_IPIF_DBUS_WIDTH - 1):0]      IP2Bus_Data, 
  input                                  IP2Bus_WrAck,
  input                                  IP2Bus_RdAck, 
  input                                  IP2Bus_Error 
);
//-----------------------------------------------------------------------------
// Function Declarations
//-----------------------------------------------------------------------------
//---------------------------------------------------------------------------
// Function Get_Addr_Bits
//
// This function is used to get the number of address bits required
//---------------------------------------------------------------------------
  function integer Get_Addr_Bits;
  input[31:0] y; // Address value to be given
  begin : GET_NUM_DECODE_BITS
    integer i;
    i = 31;
    while(y[i] == 1'b0) begin
      i = i - 1;
    end
      Get_Addr_Bits = i; 
  end
  endfunction
//------------------------------------------------------------------------------
// Function clog2
// This funxction returns the integer ceiling of the base 2 logarithm of x,
// i.e., the least integer greater than or equal to log2(x).
//------------------------------------------------------------------------------
  function integer clog2;
    input [31:0] value; // Input value
    begin
    for (clog2 = 0; value > 0; clog2 = clog2 + 1)
      value = value >> 1;
    end
  endfunction
//------------------------------------------------------------------------------
// Constant Declarations
//------------------------------------------------------------------------------
  localparam C_ADDR_DECODE_BITS = Get_Addr_Bits(C_S_AXI_MIN_SIZE);
  localparam C_NUM_DECODE_BITS = C_ADDR_DECODE_BITS + 1;
  localparam ZEROS = {((C_IPIF_ABUS_WIDTH-1)-(C_ADDR_DECODE_BITS)+1){1'b0}};

//------------------------------------------------------------------------------
// Internal signals
//------------------------------------------------------------------------------
  reg                            s_axi_bvalid_i; 
  reg                            s_axi_rvalid_i; 
  wire                           start;
// Intermediate IPIC Signals
//--------------------------
  wire [(C_IPIF_DBUS_WIDTH - 1):0] bus2ip_addr_i;
  wire                             timeout;
  wire                             rd_done;
  wire                             wr_done;
  //reg                              rst;
  (* buffer_type = "none" *)
  wire                             rst;
  wire                             temp_i;
// State machine parameters
//--------------------------
  localparam                     SM_IDLE  = 2'b00;
  localparam                     SM_READ  = 2'b01;
  localparam                     SM_WRITE = 2'b10;
  localparam                     SM_RESP  = 2'b11;

  reg [1:0]                      state;

  wire                           bus2ip_rnw_i;
  reg [1:0]                      s_axi_bresp_i;
  reg [1:0]                      s_axi_rresp_i;
  reg [C_IPIF_DBUS_WIDTH-1:0]    s_axi_rdata_i;

  assign Bus2IP_Clk    = S_AXI_ACLK ;
  assign Bus2IP_Resetn = S_AXI_ARESETN ;
  assign bus2ip_rnw_i  = (S_AXI_ARVALID)? 1'b1:1'b0;
  assign Bus2IP_RNW    = bus2ip_rnw_i ;
  assign Bus2IP_BE     = (C_USE_WSTRB && (!bus2ip_rnw_i)) ? S_AXI_WSTRB : 4'b1111;
  assign Bus2IP_Data   = S_AXI_WDATA ;
  assign Bus2IP_Addr   = bus2ip_addr_i ;
//-----------------------------------------------------------------------------
// For AXI Lite interface, interconnect will duplicate the addresses on both the
// read and write channel. so onlyone address is used for decoding as well as
// passing it to IP.
//-----------------------------------------------------------------------------
  assign bus2ip_addr_i = (S_AXI_ARVALID)?{ZEROS,S_AXI_ARADDR[C_ADDR_DECODE_BITS-1:0]}:
                                         {ZEROS,S_AXI_AWADDR[C_ADDR_DECODE_BITS-1:0]};
  assign start         = state == (SM_IDLE)?(S_AXI_ARVALID || (S_AXI_AWVALID && S_AXI_WVALID)): 1'b0;
// x_done signals are used to release the hold from AXI, it will generate "ready"
// signal on the read and write address channels.
  assign rd_done       = IP2Bus_RdAck || timeout;
  assign wr_done       = IP2Bus_WrAck || timeout;

  assign temp_i        = rd_done || wr_done;

//-------------------------------------------------------------------------------
//-- Address Decoder Component Instance
//--
//-- This component decodes the specified base address pairs and outputs the
//-- specified number of chip enables and the target bus size.
//-------------------------------------------------------------------------------
  axi_pcie_v2_8_0_address_decoder #(
    .C_NUM_ADDRESS_RANGES(C_NUM_ADDRESS_RANGES ),
    .C_TOTAL_NUM_CE(C_TOTAL_NUM_CE ),
    .C_BUS_AWIDTH(C_ADDR_DECODE_BITS ),
    .C_ARD_ADDR_RANGE_ARRAY (C_ARD_ADDR_RANGE_ARRAY ), 
    .C_ARD_NUM_CE_ARRAY(C_ARD_NUM_CE_ARRAY ),
    .C_FAMILY(C_FAMILY ),
    .TCQ(TCQ )
  )
  I_DECODER
  (
    .Bus_clk(S_AXI_ACLK ),
    .Bus_rst(S_AXI_ARESETN ),
    .Address_In_Erly(bus2ip_addr_i[C_ADDR_DECODE_BITS-1:0] ),
    .Address_Valid_Erly(start ),
    .Bus_RNW(S_AXI_ARVALID ), 
    .Bus_RNW_Erly(S_AXI_ARVALID ),
    .CS_CE_ld_enable(start ), 
    .Clear_CS_CE_Reg(temp_i ),
    .RW_CE_ld_enable(start ), 
    // Decode output signals
    .CS_Out(Bus2IP_CS ),
    .RdCE_Out(Bus2IP_RdCE ),
    .WrCE_Out(Bus2IP_WrCE )
  );
// Invert the reset coming from AXI
// -----------------------
  //always @ (posedge S_AXI_ACLK)
  //begin
  //  rst <= #TCQ ~S_AXI_ARESETN;
  //end

  assign rst = ~S_AXI_ARESETN;

//------------------------------------------------------------------------------
// AXI Transaction Controller
// Access_Control: As per suggestion to optimize the core, the below state 
// machine is re-coded. Latches are removed from original suggestions
//------------------------------------------------------------------------------

  always@(posedge S_AXI_ACLK)
  begin
    if(rst) begin
      state <= #TCQ SM_IDLE;
    end
    else begin
      case (state)
        SM_IDLE : begin
                    if(S_AXI_ARVALID) begin
                      state <= #TCQ SM_READ;
                    end
                    else if (S_AXI_AWVALID && S_AXI_WVALID) begin
                      state <= #TCQ SM_WRITE;
                    end
                  end
       SM_READ : begin
                   if(rd_done) begin
                     state  <= #TCQ SM_RESP;
                   end
                 end
       SM_WRITE: begin
                   if(wr_done) begin
                     state  <= #TCQ SM_RESP;
                   end
                 end
       default : begin
                   if((s_axi_bvalid_i && S_AXI_BREADY) || (s_axi_rvalid_i && S_AXI_RREADY)) begin
                     state  <= #TCQ SM_IDLE;
                   end
                 end
      endcase
    end
  end
//------------------------------------------------------------------------------
// AXI Transaction Controller signals registered
//------------------------------------------------------------------------------
  always@(posedge S_AXI_ACLK)
  begin
    if(rst) begin
      s_axi_rresp_i   <= #TCQ 'b0;
      s_axi_rdata_i   <= #TCQ 'b0;
    end
    else begin
      if(state == SM_READ) begin
        s_axi_rresp_i <= #TCQ {IP2Bus_Error,1'b0};
        s_axi_rdata_i <= #TCQ IP2Bus_Data;
      end
    end
  end
  
  assign S_AXI_RRESP  = s_axi_rresp_i;
  assign S_AXI_RDATA  = s_axi_rdata_i;
//------------------------------------------------------------------------------
// below always block generates the RVALID response on read channel
//------------------------------------------------------------------------------

  always@(posedge S_AXI_ACLK)
  begin
    if(rst) begin
      s_axi_rvalid_i   <= #TCQ 'b0;
    end
    else begin
      if((state == SM_READ) && rd_done) begin
        s_axi_rvalid_i <= #TCQ 'b1;
      end
      if(S_AXI_RREADY && s_axi_rvalid_i) begin
        s_axi_rvalid_i <= #TCQ 'b0;
      end
    end
  end

//------------------------------------------------------------------------------
// Below always block provides logic for write response
//------------------------------------------------------------------------------

  always@(posedge S_AXI_ACLK)
  begin
    if(rst) begin
      s_axi_bresp_i   <= #TCQ 'b0;
    end
    else begin
      if(state == SM_WRITE) begin
        s_axi_bresp_i <= #TCQ {IP2Bus_Error, 1'b0};
      end
    end
  end

  assign S_AXI_BRESP = s_axi_bresp_i;

//------------------------------------------------------------------------------
// Below always block provides logic for valid write response channel
//------------------------------------------------------------------------------

  always@(posedge S_AXI_ACLK)
  begin
    if(rst) begin
      s_axi_bvalid_i   <= #TCQ 'b0;
    end
    else begin
      if((state == SM_WRITE) && wr_done) begin
        s_axi_bvalid_i <= #TCQ 'b1;
      end
      if(S_AXI_BREADY && s_axi_bvalid_i) begin
        s_axi_bvalid_i <= #TCQ 'b0;
      end
    end
  end


//------------------------------------------------------------------------------
// This implements the dataphase watchdog timeout function. The counter is
// allowed to count down when an active IPIF operation is ongoing. A data 
// acknowledge from the target address space forces the counter to reload.
//------------------------------------------------------------------------------
  generate
  if ( C_DPHASE_TIMEOUT != 0) begin : DATA_PHASE_WDT
    localparam integer COUNTER_WIDTH = clog2(C_DPHASE_TIMEOUT);
    reg [COUNTER_WIDTH:0]     dpto_cnt;
    
    always @ (posedge S_AXI_ACLK)
    begin
      if((state == SM_IDLE) || (state == SM_RESP)) begin
        dpto_cnt   <= #TCQ 'b0;
      end
      else begin
        dpto_cnt   <= #TCQ dpto_cnt + 1'b1;
      end
    end
    
    assign timeout = dpto_cnt[COUNTER_WIDTH];
  end
  else begin // C_DPHASE_TIMEOUT == 0
    assign timeout = 'b0;
  end  // C_DPHASE_TIMEOUT
  endgenerate

  assign S_AXI_BVALID  = s_axi_bvalid_i;
  assign S_AXI_RVALID  = s_axi_rvalid_i;

  assign S_AXI_ARREADY = rd_done;
  assign S_AXI_AWREADY = wr_done;
  assign S_AXI_WREADY  = wr_done;

endmodule
