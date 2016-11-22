//----------------------------------------------------------------------------//
//  File: axi_pcie_v2_8_0_axi_enhanced_tx_arbiter.v                 //
//  Date : 02/11/11                                                           //
//                                                                            //
//  Description:                                                              //
//  Arbiter will decide the channel select out of the requested ports         //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_enhanced_top                                                        //
//      axi_enhanced_tx                                                       //
//        axi_enhanced_arbiter                                                //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

module axi_pcie_v2_8_0_axi_enhanced_tx_arbiter #(
  parameter C_ROOT_PORT = "FALSE",                   // PCIe block is in root port mode
  parameter TCQ = 1                                  // Clock to Q delay
  ) (
  // User Inputs
  input                      s_axis_rr_tvalid,       // RR Interface- TX data is valid
  input                      s_axis_rw_tvalid,       // RW Interface- TX data is valid
  input                      s_axis_cc_tvalid,       // CC Interface- TX data is valid
  input                      s_axis_cfg_tvalid,      // CC Interface- TX data is valid
  input                      cfg_req,                // Config Request from the Config Block
  input                      s_axis_rw_tlast,        // Tlast of RW port
  input                      s_axis_rr_tlast,        // Tlast of Rr port
  input                      s_axis_cc_tlast,        // Tlast of CC port
  input                      s_axis_cfg_tlast,       // Tlast of CFG port

  // TREADY coming from TX pipeline module
  input                      s_axis_tx_tready,       // TREADY from Pipeline module
  // TRN Link Up notification
  input                      trn_lnk_up,             // TRN LinkUp 
  input                      trn_teof,               // TRN EOF
  input                      cc_in_packet_i,         // CC in-packet

  // Clock & Reset
  input                      com_iclk,               // user clock from block
  input                      com_sysrst,             // user reset from block

  // Arbiter Ouput for Channel Selection
  output reg [1:0]           channel_sel,            // Channel Selected
  output                     rr_thrtl,               // Flag to indicate that RR interface must be throttled
  output                     rw_thrtl,               // Flag to indicate that RW interface must be throttled
  output                     cc_thrtl                // Flag to indicate that CC interface must be throttled
  );

  // local parameters used to indicate the arbiter states and packet status
  localparam CFG  = 2'b00;
  localparam CC   = 2'b01;
  localparam RW   = 2'b10;
  localparam RR   = 2'b11;

  reg                    s_axis_rr_tvalid_q;
  reg                    s_axis_rw_tvalid_q;
  reg                    s_axis_cc_tvalid_q;
  reg                    s_axis_cfg_tvalid_q;
  reg                    cfg_req_q;
  reg              [3:0] psr;                        // packet status register used to load the packet
                                                     // requets from the fifo read data or from the packet requests
  reg                    request_completed;          // Indicate that request is completed by TX block
  reg                    schedule_rw_thrtl;          // Throttle RW interface
  wire [2:0]             psr_value;

  // FIFO related signal declaration
  wire                   fifo_empty;
  reg [3:0]              fifo [3:0];                 // FIFO Register. Depth 4 is fine
                                                     // (Max 3 requests can be pushed in worst case scenaio)
  reg pkt_start_rcvd;                                                   // For example: While giving service to one interface,
                                                     // 3 other interfaces can have valid high on different clock cycle
  reg [1:0]              fifo_rd_ptr;                // Read Pointer of the FIFO
  reg [1:0]              fifo_wr_ptr;                // Write Pointer of the FIFO
  wire                   cfg_vld;                    // FLAG to indicate a valid TLP is presented on CFG interface
  wire                   rr_vld;                     // FLAG to indicate a valid TLP is presented on RR interface
  wire                   rw_vld;                     // FLAG to indicate a valid TLP is presented on RW interface
  wire                   cc_vld;                     // FLAG to indicate a valid TLP is presented on CC interface

  reg                    cc_in_packet;
  wire                   cc_qualifier_n;
  reg                    trn_lnk_up_d;               // Delayed version of Link up signal
  wire                   axis_tvalid;

  assign axis_tvalid = s_axis_cc_tvalid || s_axis_rw_tvalid || s_axis_rr_tvalid || s_axis_cfg_tvalid || cc_in_packet_i;

  always@(posedge com_iclk) begin
    if(com_sysrst) begin
      cc_in_packet <= #TCQ 1'b0;
    end
    else begin
      if(trn_lnk_up) begin
        // Remains high throughout the packet
        if(s_axis_cc_tvalid && !s_axis_cc_tlast) begin
          cc_in_packet <= #TCQ 1'b1;
        end
        else if(s_axis_cc_tlast) begin
          cc_in_packet <= #TCQ 1'b0;
        end
      end
      else begin// link_down
        cc_in_packet <= #TCQ 1'b0;
      end
    end
  end

  assign cc_qualifier_n = cc_in_packet;
  // Summation of number of High value locations in PSR register
  assign psr_value = psr[3] + psr[2] + psr[1] + psr[0];

  // Reqest will be considered as completed if:
  // TLAST, TVALID and TREADY are all high of the selected interface at any point
  always@(posedge com_iclk) begin
    if(com_sysrst) begin
      request_completed               <= #TCQ 1'b0;
    end
    else begin
      casex(psr)
      4'b1xxx : begin
                  if(s_axis_rw_tvalid && s_axis_rw_tlast && s_axis_tx_tready) begin
                    request_completed <= #TCQ 1'b1;
                  end
                  else begin
                    request_completed <= #TCQ 1'b0;
                  end
                end
      4'b01xx : begin
                  if(s_axis_cc_tvalid && s_axis_cc_tlast && s_axis_tx_tready) begin
                    request_completed <= #TCQ 1'b1;
                  end
                  else begin
                    request_completed <= #TCQ 1'b0;
                  end
                end
      4'b001x : begin
                  if(s_axis_cfg_tvalid && s_axis_cfg_tlast && s_axis_tx_tready) begin
                    request_completed <= #TCQ 1'b1;
                  end
                  else begin
                    request_completed <= #TCQ 1'b0;
                  end
                end
      4'b0001 : begin
                  if(s_axis_rr_tvalid && s_axis_rr_tlast && s_axis_tx_tready) begin
                    request_completed <= #TCQ 1'b1;
                  end
                  else begin
                    request_completed <= #TCQ 1'b0;
                  end
                end
      default : begin
                  if(s_axis_rw_tvalid && s_axis_rw_tlast && s_axis_tx_tready) begin
                    request_completed   <= #TCQ 1'b1;
                  end
                  else begin
                    request_completed   <= #TCQ 1'b0;
                  end
                end
      endcase
    end
  end // always
   
  //Register User Inputs, will be used to detect the rising edge of the tvalid to indicate a packet request
  always @ (posedge com_iclk) begin
    if(com_sysrst) begin
      s_axis_rr_tvalid_q  <= #TCQ 'b0;
      s_axis_rw_tvalid_q  <= #TCQ 'b0;
      s_axis_cc_tvalid_q  <= #TCQ 'b0;
      s_axis_cfg_tvalid_q <= #TCQ 'b0;
      cfg_req_q           <= #TCQ 'b0;
      trn_lnk_up_d        <= #TCQ 'b0;
    end
    else begin
      s_axis_rr_tvalid_q  <= #TCQ s_axis_rr_tvalid;
      s_axis_rw_tvalid_q  <= #TCQ s_axis_rw_tvalid;
      s_axis_cc_tvalid_q  <= #TCQ s_axis_cc_tvalid;
      s_axis_cfg_tvalid_q <= #TCQ s_axis_cfg_tvalid;
      cfg_req_q           <= #TCQ cfg_req;
      trn_lnk_up_d        <= trn_lnk_up;
    end
  end // always

 always @(posedge com_iclk)
 begin
   if (com_sysrst)
	pkt_start_rcvd <= 1'b0;
   else if(s_axis_rw_tvalid & s_axis_rw_tlast)
	pkt_start_rcvd <= 1'b0;
   else if(!s_axis_rw_tvalid_q & s_axis_rw_tvalid)
	pkt_start_rcvd <= 1'b1;  
 end
  // Request from cfg port is detected by posedge of s_axis_cfg_tvalid signal
  // CR 652736
  // cfg_vld request pulse gets lost if it scheduled but not serviced till link down event happens
  // We must assert cfg_vld pulse in that case again... as soon as link comes back up.
  assign cfg_vld = (!s_axis_cfg_tvalid_q && s_axis_cfg_tvalid) || (trn_lnk_up && !trn_lnk_up_d 
                                                                         && s_axis_cfg_tvalid && psr_value == 3'b000);

  // Request from rr port is either detected by rising edge of the rr tvalid or rr valid after the completion of the
  // current transfer(back to back packet)
  
  generate
  if(C_ROOT_PORT == "FALSE") begin : rr_vld_for_ep
  
  assign rr_vld  = (!s_axis_rr_tvalid_q && s_axis_rr_tvalid) || (request_completed && 
                                                                             (channel_sel == RR) && s_axis_rr_tvalid);
  
  end // rr_vld_for_ep
  else begin : rr_vld_for_rp
  
  // capture rr_vld only when cfg_req is de-asserted
  // This implementation is to hold the RR interface from giving TVALID if cfg_req is high.
  assign rr_vld  = (!cfg_req && ((!s_axis_rr_tvalid_q && s_axis_rr_tvalid) || (request_completed && 
                                        (channel_sel == RR) && s_axis_rr_tvalid) || (cfg_req_q && s_axis_rr_tvalid)));
  
  end // rr_vld_for_rp
  endgenerate

  // Request from rw port is either detected by rising edge of the rw tvalid or rw valid after the completion of the
  // current transfer(back to back packet)
  assign rw_vld  = (!s_axis_rw_tvalid_q && s_axis_rw_tvalid && !pkt_start_rcvd) || (request_completed && 
                                                                             (channel_sel == RW) && s_axis_rw_tvalid);

  // Request from cc port is either detected by rising edge of the cc tvalid or cc valid after the completion of the
  // current transfer(back to back packet)

  assign cc_vld  = ((!cc_qualifier_n) && ((!s_axis_cc_tvalid_q && s_axis_cc_tvalid) || (request_completed && 
                                                                             (channel_sel == CC) && s_axis_cc_tvalid)));
  
  wire [3:0] pkt_req;
  // simultanious packet requests from all the ports are collected in packet request
  assign pkt_req = {rw_vld,cc_vld,cfg_vld,rr_vld};

  // Arbiter state machine logic, will decide the port to be served after the current transfer
  always @ (psr) begin
    casex(psr)
    4'b1xxx : begin // packet request from RW port
                channel_sel  <= RW;
              end
    4'b01xx : begin // packet request from CC port
                channel_sel  <= CC;
              end
    4'b001x : begin // packet request from CFG port
                channel_sel  <= CFG;
              end
    4'b0001 : begin // packet request from RR port
                channel_sel  <= RR;
              end
              // In case of multi-packet request, channel selected will be based on port select logic of
              // the pcie packet ordering
    default : begin
                channel_sel  <= RW;
              end
    endcase
  end // always

  // FIFO Empty indication
  assign fifo_empty           = (fifo_rd_ptr == fifo_wr_ptr) ? 1'b1 : 1'b0;

  generate
  if(C_ROOT_PORT == "FALSE") begin : end_point
  // Load the PSR register with a new value after servicing the current request
  always @ (posedge com_iclk) begin
    if(com_sysrst) begin
      psr                    <= #TCQ 4'b0000;
      fifo[0]                <= #TCQ 4'b0000;
      fifo[1]                <= #TCQ 4'b0000;
      fifo[2]                <= #TCQ 4'b0000;
      fifo[3]                <= #TCQ 4'b0000;
      fifo_rd_ptr            <= #TCQ 2'b00;
      fifo_wr_ptr            <= #TCQ 2'b00;
      schedule_rw_thrtl      <= #TCQ 1'b0;
    end
    else begin
      if(fifo_empty) begin
        if(psr_value == 3'b000 && pkt_req != 4'b0000) begin
          psr                <= #TCQ pkt_req;
        end
        else if(request_completed && psr_value == 3'b001) begin
          // Load the PSR directly as all pending requests are served
          psr                <= #TCQ pkt_req;
        end
        // Clear PSR bit after servicing perticular request (Applicable in case of simultanious multiple requests)
        else if(request_completed) begin
          // PCIe block starts back throttling the user interface (i.e. TRN TX) much before link down 
          // so this condition may never be reached
          // coverage off
          if(!trn_lnk_up) begin
            psr                <= #TCQ 4'b0000; // Reset the PSR as other pending requests will not longer be present
          end
          // coverage on
          else begin
            psr                <= #TCQ psr & ((channel_sel == RW) ? 4'b0111 :
                                            (channel_sel == CC) ? 4'b1011 : 4'b1110);
          end
          if(pkt_req != 4'b0000) begin
            // Push the request in FIFO
            fifo[fifo_wr_ptr]<= #TCQ pkt_req;
            fifo_wr_ptr      <= #TCQ fifo_wr_ptr + 1'b1;
          end
        end
        else if(psr_value != 3'b000 && pkt_req != 4'b0000) begin
          // Other request is in process so load this current request in FIFO
          fifo[fifo_wr_ptr]  <= #TCQ pkt_req;
          fifo_wr_ptr        <= #TCQ fifo_wr_ptr + 1'b1;
        end
        // Reset the PSR if SOF is not accepted till link down event
        else if(psr_value != 3'b000 && (!trn_lnk_up) && !axis_tvalid) begin
          psr                  <= #TCQ 4'b0000;
        end
      end
      else begin
        if(request_completed && psr_value == 3'b001) begin
          // Retrieve data from FIFO
          psr                <= #TCQ fifo[fifo_rd_ptr];
          fifo_rd_ptr        <= #TCQ fifo_rd_ptr + 1'b1;
        end
        else if(request_completed) begin
          psr                <= #TCQ psr & ((channel_sel == RW) ? 4'b0111 : 
                                            (channel_sel == CC) ? 4'b1011 : 4'b1110);
        end
        // Non-zero pkt_req will be pushed to FIFO directly and will be processed in future
        if(pkt_req != 4'b0000) begin
          // Push the request in FIFO
          fifo[fifo_wr_ptr]  <= #TCQ pkt_req;
          fifo_wr_ptr        <= #TCQ fifo_wr_ptr + 1'b1;
        end
      end
      if(!trn_lnk_up) begin
        fifo_rd_ptr          <= #TCQ 2'b00;
        fifo_wr_ptr          <= #TCQ 2'b00;
      end
    end
  end // always
  end // end_point
  else begin : root_port
  // Load the PSR register with a new value after servicing the current request
  always @ (posedge com_iclk) begin
    if(com_sysrst) begin
      psr                    <= #TCQ 4'b0000;
      fifo[0]                <= #TCQ 4'b0000;
      fifo[1]                <= #TCQ 4'b0000;
      fifo[2]                <= #TCQ 4'b0000;
      fifo[3]                <= #TCQ 4'b0000;
      fifo_rd_ptr            <= #TCQ 2'b00;
      fifo_wr_ptr            <= #TCQ 2'b00;
      schedule_rw_thrtl      <= #TCQ 1'b0;
    end
    else begin
      if(fifo_empty) begin
        if(psr_value == 3'b000 && pkt_req != 4'b0000) begin
          psr                <= #TCQ pkt_req;
        end
        else if(request_completed && psr_value == 3'b001) begin
          // Load the PSR directly as all pending requests are served
          psr                <= #TCQ pkt_req;
        end
        // Clear PSR bit after servicing perticular request (Applicable in case of simultanious multiple requests)
        else if(request_completed) begin
          // PCIe block starts back throttling the user interface (i.e. TRN TX) much before link down 
          // so this condition may never be reached
          // coverage off
          if(!trn_lnk_up) begin
            psr                <= #TCQ 4'b0000; // Reset the PSR as other pending requests will not longer be present
          end
          // coverage on
          else begin
            psr                <= #TCQ psr & ((channel_sel == RW) ? 4'b0111 :
                                             (channel_sel == CC) ? 4'b1011 : (channel_sel == CFG) ? 4'b1101 : 4'b1110);
          end
          if(pkt_req != 4'b0000) begin
            // Push the request in FIFO
            fifo[fifo_wr_ptr]<= #TCQ pkt_req;
            fifo_wr_ptr      <= #TCQ fifo_wr_ptr + 1'b1;
          end
        end
        else if(psr_value != 3'b000 && pkt_req != 4'b0000) begin
          // Other request is in process so load this current request in FIFO
          fifo[fifo_wr_ptr]  <= #TCQ pkt_req;
          fifo_wr_ptr        <= #TCQ fifo_wr_ptr + 1'b1;
        end
        // Reset the PSR if SOF is not accepted till link down event
        else if(psr_value != 3'b000 && (!trn_lnk_up) && !axis_tvalid) begin
          psr                  <= #TCQ 4'b0000;
        end
      end
      else begin
        if(cfg_req && request_completed && (psr_value == 3'b001)) begin
          // if cfg_req is asserted then clear the rr_vld bit and load the psr (applicable ony if multiple requests)
          // to service other requests (RW/CC) present in the FIFO which is going to be retrieved
          if((fifo[fifo_rd_ptr][0] + fifo[fifo_rd_ptr][1] + fifo[fifo_rd_ptr][2] + fifo[fifo_rd_ptr][3] > 3'b001) && 
                                            fifo[fifo_rd_ptr][0] == 1'b1) begin
            // Clear RR request from FIFO and load remaining requests in PSR
            psr                <= #TCQ fifo[fifo_rd_ptr] & 4'b1110;
            fifo_rd_ptr        <= #TCQ fifo_rd_ptr + 1'b1;
          end
          // Only RR request is present.
          else if(fifo[fifo_rd_ptr][0] == 1'b1) begin
            //Need to handle one clock here as PSR will go to 0 and channel_sel will point to RW default intf
            // In case if RW has tvalid high already, we may end up taking one false beat
            psr                <= #TCQ 'b0;
            fifo_rd_ptr        <= #TCQ fifo_rd_ptr + 1'b1;
            schedule_rw_thrtl  <= #TCQ 1'b1;
            // Need to schedule RR request because we have deleted it from FIFO
          end
          // Request(s) other than RR request
          else begin
            // Retrieve data from FIFO
            psr                <= #TCQ fifo[fifo_rd_ptr];
            fifo_rd_ptr        <= #TCQ fifo_rd_ptr + 1'b1;
          end
        end
        else if(!cfg_req && request_completed && (psr_value == 3'b001)) begin
          // Retrieve data from FIFO
          psr                <= #TCQ fifo[fifo_rd_ptr];
          fifo_rd_ptr        <= #TCQ fifo_rd_ptr + 1'b1;
        end
        else if(request_completed) begin
          psr                <= #TCQ psr & ((channel_sel == RW) ? 4'b0111 : 
                                             (channel_sel == CC) ? 4'b1011 : (channel_sel == CFG) ? 4'b1101 : 4'b1110);
        end
        // Non-zero pkt_req will be pushed to FIFO directly and will be processed in future
        if(pkt_req != 4'b0000) begin
          // Push the request in FIFO
          fifo[fifo_wr_ptr]  <= #TCQ pkt_req;
          fifo_wr_ptr        <= #TCQ fifo_wr_ptr + 1'b1;
        end
      end
      // schedule_rw_thrtl will be a pulse only
      if(schedule_rw_thrtl) begin
        schedule_rw_thrtl    <= #TCQ 1'b0;
      end
      if(!trn_lnk_up) begin
        fifo_rd_ptr          <= #TCQ 2'b00;
        fifo_wr_ptr          <= #TCQ 2'b00;
      end
    end
  end // always
  
  end // root_port
  endgenerate

  // Don't give TREADY to RW interface if multiple simultanious requests came in past and TX has to service other
  // interface because RW TLP is fully serviced and B2B packet is observed on RW interface in the current cycle
  generate
  if(C_ROOT_PORT == "TRUE") begin : rw_thrtl_rp
    assign rw_thrtl = ((request_completed && (channel_sel == RW) && pkt_req[3] && (!fifo_empty || psr_value > 1))
                                                                                            || schedule_rw_thrtl);
  end // rw_thrtl_rp
  else begin : rw_thrtl_ep
    assign rw_thrtl = (request_completed && (channel_sel == RW) && pkt_req[3] && (!fifo_empty || psr_value > 1));
  end //rw_thrtl_ep
  
  endgenerate
  // Don't give TREADY to RR interface if multiple simultanious requests came in past and TX has to service other
  // interface because RR TLP is fully serviced and B2B packet is observed on RR interface in the current cycle
  assign rr_thrtl = (request_completed && (channel_sel == RR) && pkt_req[0] && (!fifo_empty || psr_value > 1));
  // Don't give TREADY to CC interface if multiple simultanious requests came in past and TX has to service other
  // interface because CC TLP is fully serviced and B2B packet is observed on CC interface in the current cycle
  assign cc_thrtl = (request_completed && (channel_sel == CC) && pkt_req[2] && (!fifo_empty || psr_value > 1));

endmodule
