-------------------------------------------------------------------------------
-- (c) Copyright 2010 - 2010 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------------------
-- Filename:        slave_read_cpl_tlp.vhd
--
-- Description:     
--                  
-- This VHDL file is an HDL design file for the AXI slave read bridge. 
--                   
--                  
-- VHDL-Standard:   VHDL'93
--
-------------------------------------------------------------------------------
-- Structure:   
--              slave_read_cpl_tlp.vhd
--
-------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.conv_integer;
use ieee.std_logic_arith.conv_std_logic_vector;

library axi_pcie_v2_8_0;
use axi_pcie_v2_8_0.all;
use axi_pcie_v2_8_0.axi_pcie_mm_s_pkg.all;

library lib_pkg_v1_0_2;
use lib_pkg_v1_0_2.lib_pkg.log2;
library lib_bmg_v1_0_4;
use lib_bmg_v1_0_4.blk_mem_gen_wrapper;

entity slave_read_cpl_tlp is
   generic(
      --Family Generics
      C_FAMILY                : string := "virtex7";
      C_AXIREAD_NUM           : integer := 8;
      C_RD_BUFFER_ADDR_SIZE   : integer := 10;
      C_M_AXIS_DATA_WIDTH     : integer := 32
   );
   port(
      -- AXI Global
      aclk                    : in  std_logic;
      reset                   : in  std_logic;

      -- internal interface
      maxreadreqsize          : in  std_logic_vector(2 downto 0);
      m_axis_rr_tlast         : in  std_logic;
      m_axis_rr_tready        : in  std_logic;
      read_req_sent           : in  std_logic;
      tag_sent                : in  std_logic_vector(7 downto 0);
      length_sent             : in  std_logic_vector(9 downto 0);
      rreq_active             : in  std_logic;
      req_active_ptr          : in  integer range 0 to C_AXIREAD_NUM-1;
      data_stream_out         : out std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
      read_data_bram_we       : out std_logic_vector(C_M_AXIS_DATA_WIDTH/8-1 downto 0);
      cpl_buffer_addr         : out std_logic_vector(C_RD_BUFFER_ADDR_SIZE-1 downto 0);
      cpl_data_str_done       : out std_logic;
      tag_in_cpl              : out std_logic_vector(7 downto 0);
      tag_cpl_status_clr      : out tag_cpl_status_clr_array;
      req_cpl_pending         : out std_logic;
      cpl_index               : in  integer range 0 to C_AXIREAD_NUM-1;
      rdata_str_done          : in  std_logic;
      rdata_str_start         : in  std_logic;
      first_word_offset       : in  first_word_offset_array;
      unsupported_req         : out std_logic;
      completer_abort         : out std_logic;
      poisoned_req            : out std_logic_vector(C_AXIREAD_NUM-1 downto 0);
      unexpected_cpl          : out std_logic;
      cpl_timer_timeout_strb  : in  std_logic_vector(C_AXIREAD_NUM-1 downto 0);
      rd_req_index_err        : out integer range 0 to C_AXIREAD_NUM-1;
      blk_lnk_up              : in  std_logic;
      header_ep               : in  std_logic;
      reqID                   : in  std_logic_vector(15 downto 0);
      illegal_burst_trns      : in  std_logic;
      total_length_out        : out integer;
      tag_pending_for_cpl     : out std_logic;
      tag_len_active_valid_o  : out std_logic;

      -- AXI Streaming interface
      s_axis_rc_tdata         : in  std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
      s_axis_rc_tstrb         : in  std_logic_vector(C_M_AXIS_DATA_WIDTH/8-1 downto 0);
      s_axis_rc_tlast         : in  std_logic;
      s_axis_rc_tvalid        : in  std_logic;
      s_axis_rc_tready        : out std_logic
   );
end slave_read_cpl_tlp;

   architecture structure of slave_read_cpl_tlp is
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of structure : architecture is "yes";

--TLP Header Structure 

-- Fmt  00      Cpl
--      10      CplD
-- Type 01010   always for completion
-- TC   000     always (default)
-- TD   0       always(no digest field)
-- EP   0       data is not poisoned
--      1       data is poisoned
-- Attr 00      always
-- Length       length is inclusive of partial first/last data DWs
-- CplID        Completer ID
-- CS           Completion Status
-- BCM  0       always
-- Byte Count   Remaining bytes to satisfy request
-- ReqID        get from PCIe core block IF
-- Tag          8-bit 
-- Lower Addr   7 lsbs of address for completion

-- CONSTANTS --
   constant STR_DATA_SIZE            : integer := C_M_AXIS_DATA_WIDTH/32;
   constant NUM_STROBES              : integer := C_M_AXIS_DATA_WIDTH/8;
   constant LENGTH_ACTIVE_BRAM_DEPTH : integer := STR_DATA_SIZE*8*C_AXIREAD_NUM;
   constant LENGTH_ACTIVE_BRAM_SIZE  : integer := log2(LENGTH_ACTIVE_BRAM_DEPTH);
   constant CPL_ADDR_COUNT_WIDTH     : integer := log2(STR_DATA_SIZE*256);

   -----------------------------------------------------------------------------
   -- State Machines
   -----------------------------------------------------------------------------

   type rd_cpl_tlpctlSM_STATES is (IDLE,
                                   HEADER_1,
                                   HEADER_2,
                                   HEADER_3,
                                   FIND_TAG_START,
                                   FIND_TAG_WAIT,
                                   CHECK_STATUS,
                                   ERROR,
                                   GET_ERROR_TLP,
                                   LOAD_ADDR_COUNT_1,
                                   LOAD_ADDR_COUNT_2,
                                   FIRST_DATA,
                                   DATA_STR,
                                   DONE_CHECK);
   signal rd_cpl_tlpctlSM_cs      : rd_cpl_tlpctlSM_STATES;
   signal rd_cpl_tlpctlSM_ns      : rd_cpl_tlpctlSM_STATES;

   type rdreq_cpl_correlateSM_STATES is (IDLE,
                                         REQ_ACTIVE,
                                         STROBE);
   signal rdreq_cpl_correlateSM_cs   : rdreq_cpl_correlateSM_STATES;
   signal rdreq_cpl_correlateSM_ns   : rdreq_cpl_correlateSM_STATES;

   -----------------------------------------------------------------------------

   signal fmt                     : std_logic_vector(1 downto 0);
   signal ep                      : std_logic := '0';
   signal length                  : std_logic_vector(9 downto 0);
   signal completer_id            : std_logic_vector(15 downto 0);
   signal cs                      : std_logic_vector(2 downto 0);
   signal byte_count              : std_logic_vector(11 downto 0);
   signal requester_id            : std_logic_vector(15 downto 0);
   signal tag                     : std_logic_vector(7 downto 0) := x"00";
   signal lower_addr              : std_logic_vector(6 downto 0);
   signal tready_int              : std_logic;
   signal header_dw0              : std_logic_vector(31 downto 0);
   signal header_dw0_nxt          : std_logic_vector(31 downto 0);
   signal header_dw1              : std_logic_vector(31 downto 0);
   signal header_dw1_nxt          : std_logic_vector(31 downto 0);
   signal header_dw2              : std_logic_vector(31 downto 0);
   signal header_dw2_nxt          : std_logic_vector(31 downto 0);
   signal first_payload_dw        : std_logic_vector(31 downto 0);
   signal first_payload_dw_nxt    : std_logic_vector(31 downto 0);
   signal tdata_reg               : std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
   signal tdata_reg_d             : std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
   signal tstrb_reg               : std_logic_vector(C_M_AXIS_DATA_WIDTH/8-1 downto 0);
   signal data_str_valid          : std_logic;
   signal last_data_received      : std_logic;
   signal new_data_received       : std_logic;
   signal cpl_data_str_done_int   : std_logic;
   signal cpl_data_str_done_err   : std_logic;


   signal cpl_addr_count          : integer range 0 to 256*STR_DATA_SIZE;
   signal cpl_addr_count_1        : integer range 0 to 256*STR_DATA_SIZE;
   signal cpl_addr_count_nxt      : integer range 0 to 256*STR_DATA_SIZE;
   signal cpl_addr_count_limit    : integer range 0 to 256*STR_DATA_SIZE;
   signal cpl_addr_count_size     : integer range 0 to 8;

   signal cpl_addr_count_en       : std_logic;
   signal cpl_addr_count_done     : std_logic;

   signal cpl_addr_mask           : std_logic_vector(NUM_STROBES/4-1 downto 0);
   signal cpl_addr_mask_nxt       : std_logic_vector(NUM_STROBES/4-1 downto 0);

   signal ic_data_str_mask        : std_logic_vector(NUM_STROBES/4-1 downto 0);
   signal ic_data_str_mask_nxt    : std_logic_vector(NUM_STROBES/4-1 downto 0);

   signal tag_index               : integer range 0 to 31;
   signal tag_index_nxt           : integer range 0 to 31;
   signal tag_index_to            : integer range 0 to 31;
   signal tag_index_sel           : integer range 0 to 31;
   signal rd_req_index            : integer range 0 to C_AXIREAD_NUM-1;
   signal rd_req_index_nxt        : integer range 0 to C_AXIREAD_NUM-1;
   signal rd_req_index_of_to      : integer range 0 to C_AXIREAD_NUM-1;
   signal rd_req_index_sel        : integer range 0 to C_AXIREAD_NUM-1;

   type tag_cpl_status_array is array (0 to C_AXIREAD_NUM-1) of std_logic_vector(0 to 8*STR_DATA_SIZE-1);
   signal tag_cpl_status_int      : tag_cpl_status_clr_array;
   signal tag_cpl_status_at_to    : std_logic_vector(0 to 8*STR_DATA_SIZE-1);
   signal write_strobes           : std_logic_vector(NUM_STROBES-1 downto 0);
   signal cpl_addr_count_inc      : integer range 0 to 4;
   signal extra_write             : integer range 0 to 6;
   signal extra_write_nxt         : integer range 0 to 6;
   signal data_stream_int         : std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
--******************************************************************************
   signal cpl_buffer_addr_int     : std_logic_vector(C_RD_BUFFER_ADDR_SIZE-1 downto 0);
--******************************************************************************
   signal maxreadreqsize_adj      : integer range 0 to 5;
   signal tag_match               : std_logic;
   signal tag_match_nxt           : std_logic;
   signal unsupported_req_int     : std_logic;
   signal completer_abort_int     : std_logic;
   signal poisoned_req_nxt        : std_logic_vector(C_AXIREAD_NUM-1 downto 0);
   signal poisoned_req_int        : std_logic_vector(C_AXIREAD_NUM-1 downto 0);
   signal reqID_match             : std_logic;
   signal tag_map_done            : std_logic;
   signal tag_map_start           : std_logic;
   signal tag_len_active_valid    : std_logic;
   signal rr_tready_tvalid_d      : std_logic;
   type tag_array is array (0 to C_AXIREAD_NUM-1, 0 to STR_DATA_SIZE*8-1) of std_logic_vector(9 downto 0);
   type tag_len_index_array is array (0 to C_AXIREAD_NUM-1) of integer range 0 to STR_DATA_SIZE*8;
   signal tag_active              : tag_array;
   signal tag_active_nxt          : tag_array;
   signal tag_len_index           : tag_len_index_array;
   signal tag_len_index_nxt       : tag_len_index_array;
   signal length_active           : std_logic_vector(9 downto 0);
   signal length_active_reg       : std_logic_vector(9 downto 0);
   signal length_active_we        : std_logic_vector(0 downto 0);
   signal length_active_wr_addr   : std_logic_vector(LENGTH_ACTIVE_BRAM_SIZE-1 downto 0);
   signal length_active_rd_addr   : std_logic_vector(LENGTH_ACTIVE_BRAM_SIZE-1 downto 0);
   signal length_active_rd_addr_d : std_logic_vector(LENGTH_ACTIVE_BRAM_SIZE-1 downto 0);
   signal length_active_rd_addr_to : std_logic_vector(LENGTH_ACTIVE_BRAM_SIZE-1 downto 0);
   signal length_active_rd_en     : std_logic;
   signal cpl_addr_count_save     : std_logic_vector(CPL_ADDR_COUNT_WIDTH-1 downto 0);
   signal cpl_addr_count_read     : std_logic_vector(CPL_ADDR_COUNT_WIDTH-1 downto 0);
   signal cpl_addr_count_we       : std_logic_vector(0 downto 0);
   signal cpl_addr_count_rd_en    : std_logic;
   signal cpl_addr_count_rd_en_ord : std_logic;
   signal load_cpl_addr_count     : std_logic;
   signal load_cpl_addr_count_init : std_logic;
   signal cpl_data_str_done_d     : std_logic;
   signal total_length_out_int    : integer;
   signal cpl_length              : std_logic_vector(9 downto 0);
   signal cpl_to_length_sub       : std_logic;
   signal cpl_to_length_sub_rd    : std_logic;
   signal cplsm_idle              : std_logic;
   signal memrdreq_sent           : std_logic;
   signal length_sent_reg         : std_logic_vector(10 downto 0);
   signal cpl_done_without_err    : std_logic;
   signal cpl_timeout_occurred    : std_logic;
   signal cpl_error               : std_logic;

-- This function converts a 32-bit little endian format to big endian format
   function little_to_big_endian32(datain : std_logic_vector(31 downto 0))
         return std_logic_vector is
      variable dataout : std_logic_vector(31 downto 0);
   begin
      dataout := datain(7 downto 0) & datain(15 downto 8) & datain(23 downto 16) & datain(31 downto 24);
      return(dataout);
   end function;

begin

   s_axis_rc_tready      <= tready_int;

   unsupported_req       <= unsupported_req_int;
   completer_abort       <= completer_abort_int;

   cpl_buffer_addr       <= cpl_buffer_addr_int;

   tag_in_cpl            <= tag;
   rd_req_index_err      <= rd_req_index;
   poisoned_req          <= poisoned_req_int;

   tag_len_active_valid_o <= tag_len_active_valid or rr_tready_tvalid_d;

   cpl_data_str_done     <= cpl_data_str_done_int;

   gen_tag_cpl_status_clr_num_rd : for j in 0 to C_AXIREAD_NUM-1 generate
   begin
     gen_tag_cpl_status_clr_str_size_0to32: for k in 0 to STR_DATA_SIZE*8-1 generate
	tag_cpl_status_clr(j)(k) <= '1' when tag_cpl_status_int(j)(k) = '0' else '0';
     end generate;
     gen_str_data_size_2_1: if STR_DATA_SIZE = 2 or STR_DATA_SIZE =1 generate -- added to clear MSB bits in gen1 configuration
     begin
         gen_tag_cpl_status_clr_str_size_msbs0:for k in STR_DATA_SIZE*8 to 31 generate
           tag_cpl_status_clr(j)(k) <= '0';
      	end generate;
     end generate;
   end generate;
  
   clr_in_g2config: if C_AXIREAD_NUM = 4 generate -- added to clear top array in gen2 configuration
     for_j_upperarray: for j in 4 to 7 generate
     for_k_allbits_in_upperarray: for  k in 0 to 31 generate
           tag_cpl_status_clr(j)(k) <= '0';
      end generate;
    end generate;
   end generate;


   maxreadreqsize_adj    <= 3 when STR_DATA_SIZE = 1 and conv_integer(maxreadreqsize) > 3 else
                            4 when STR_DATA_SIZE /= 1 and conv_integer(maxreadreqsize) > 4 else
                            conv_integer(maxreadreqsize);

   cpl_addr_count_size   <= maxreadreqsize_adj + 5 when STR_DATA_SIZE = 1 else
                            maxreadreqsize_adj + 4 when STR_DATA_SIZE = 2 else
                            maxreadreqsize_adj + 3;

   -- Generate the read buffer address for putting completion data into the buffer
   cpl_buffer_addr_int   <= conv_std_logic_vector(rd_req_index, log2(C_AXIREAD_NUM)) &   
                            (SHL(conv_std_logic_vector(tag_index, 8), conv_std_logic_vector(cpl_addr_count_size,4)) +
                            conv_std_logic_vector((cpl_addr_count +
                            first_word_offset(rd_req_index))/STR_DATA_SIZE, 8));

   fmt                   <= header_dw0(30 downto 29);
   cpl_length            <= header_dw0(9 downto 0);
   cs                    <= header_dw1(15 downto 13);
   requester_id          <= header_dw2(31 downto 16);
   tag                   <= header_dw2(15 downto 8);
   lower_addr            <= header_dw2(6 downto 0);
   
   reqID_match           <= '1' when reqID = requester_id else '0';
   
   total_length_out      <= total_length_out_int;

   -- Tally the total length (in DW) of all MemRd TLP requests outstanding and subtract for completions recieved so far
   -- This value is used in the slave_read_req_tlp module fclimit_block logic
   total_length_out_proccess : process(aclk)
   variable no_hit : BOOLEAN;
   begin
      if(rising_edge(aclk)) then
         if(reset = '0' or blk_lnk_up = '0') then
            total_length_out_int        <= 0;
            tag_index_to                <= 0;
            cpl_to_length_sub_rd        <= '0'; 
            cpl_to_length_sub           <= '0'; 
            memrdreq_sent               <= '0';
            cpl_done_without_err        <= '0';
            length_sent_reg             <= (others => '0');
         else
            cpl_to_length_sub           <= cpl_to_length_sub_rd; 
            if cplsm_idle = '1' then
               if conv_integer(tag_cpl_status_at_to) /= 0 and cpl_to_length_sub = '0' then
                  no_hit                      := TRUE;
                  for j in 0 to STR_DATA_SIZE*8-1 loop
                     if tag_cpl_status_at_to(j) = '1' and no_hit then
                        no_hit                      := FALSE;
                        tag_index_to                <= j;
                     end if;
                  end loop;
                  cpl_to_length_sub_rd        <= '1'; 
               end if;
            end if;
            if cpl_to_length_sub_rd = '1' then
               cpl_to_length_sub_rd           <= '0';
            end if;
            if cpl_to_length_sub = '1' then
               if tag_active(rd_req_index_of_to, tag_index_to)(9) = '1' or conv_integer(cpl_addr_count_read) = 0 then
                  if length_active = 0 then
                     total_length_out_int        <= total_length_out_int - 1024;
                  else
                     total_length_out_int        <= total_length_out_int - conv_integer(length_active);
                  end if;
               else
                  total_length_out_int        <= total_length_out_int - conv_integer(cpl_addr_count_read);
               end if;
            elsif memrdreq_sent = '1' then
               total_length_out_int        <= total_length_out_int + conv_integer(length_sent_reg);
               memrdreq_sent               <= '0';
            elsif cpl_done_without_err = '1' then
               total_length_out_int        <= total_length_out_int - conv_integer(cpl_length);
               cpl_done_without_err        <= '0';
            end if;
            if tag_len_active_valid = '1' then
               memrdreq_sent               <= '1';
               if length_sent = 0 then
                  length_sent_reg             <= "10000000000";
               else
                  length_sent_reg             <= '0' & length_sent;
               end if;
            end if;
            if cpl_data_str_done_int = '1' and cpl_data_str_done_err = '0' then
               cpl_done_without_err        <= '1';
            end if;
         end if;
      end if;
   end process;

   -- Process the completion TLPs as they are received, detect any error indication and find out if they are expected
   -- and, if so, put the data payload in the correct section of the read data buffer.
   -- Works with the 'sync' process below
   rd_cpl_tlpctlSM_comb : process(rd_cpl_tlpctlSM_cs, header_dw0, header_dw1, header_dw2, first_payload_dw, fmt, cs,
                                  s_axis_rc_tvalid, s_axis_rc_tlast, tdata_reg, tdata_reg_d, last_data_received,
                                  new_data_received, length, tag_index, rd_req_index, cpl_addr_mask, ic_data_str_mask,
                                  tstrb_reg, extra_write, lower_addr, cpl_addr_count, tag_cpl_status_int,tag_active,
                                  tag_match, poisoned_req_int, reqID_match, tag_map_done, cpl_addr_count_read,
                                  length_active_rd_en, tag_cpl_status_at_to)
   begin
      rd_cpl_tlpctlSM_ns          <= rd_cpl_tlpctlSM_cs;
      header_dw0_nxt              <= header_dw0;
      header_dw1_nxt              <= header_dw1;
      header_dw2_nxt              <= header_dw2;
      first_payload_dw_nxt        <= first_payload_dw;
      tready_int                  <= '0';
      data_str_valid              <= '0';
      cpl_data_str_done_int       <= '0';
      cpl_data_str_done_err       <= '0';
      data_stream_int             <= (others => '0');
      write_strobes               <= (others => '1');
      cpl_addr_mask_nxt           <= cpl_addr_mask;
      ic_data_str_mask_nxt        <= ic_data_str_mask;
      cpl_addr_count_en           <= '0';
      cpl_addr_count_inc          <= 1;
      extra_write_nxt             <= 0;
      unsupported_req_int         <= '0';
      completer_abort_int         <= '0';
      unexpected_cpl              <= '0';
      poisoned_req_nxt            <= poisoned_req_int;
      tag_map_start               <= '0';
      load_cpl_addr_count         <= '0';
      load_cpl_addr_count_init    <= '0';
      cpl_addr_count_rd_en        <= '0';
      cplsm_idle                  <= '0';
      cpl_error                   <= '0';
      case rd_cpl_tlpctlSM_cs is
         when IDLE =>
            cplsm_idle            <= '1';
            if conv_integer(tag_cpl_status_at_to) = 0 then
               tready_int            <= '1';
            end if;
            if s_axis_rc_tvalid = '1' and conv_integer(tag_cpl_status_at_to) = 0 then
               if C_M_AXIS_DATA_WIDTH /= 128 then
                  if s_axis_rc_tlast = '0' then
                     rd_cpl_tlpctlSM_ns    <= HEADER_1;
                  end if;
               else
                  rd_cpl_tlpctlSM_ns    <= HEADER_1;
               end if;
            end if;

         when HEADER_1 =>
            if C_M_AXIS_DATA_WIDTH = 32 then
               header_dw0_nxt        <= tdata_reg;
               tready_int            <= '1';
               if s_axis_rc_tvalid = '1' then
                  if s_axis_rc_tlast = '0' then
                     rd_cpl_tlpctlSM_ns    <= HEADER_2;
                  -- coverage off
                  else
                     rd_cpl_tlpctlSM_ns    <= IDLE;
                  end if;
                  -- coverage on
               end if;
            elsif C_M_AXIS_DATA_WIDTH = 64 then
               header_dw0_nxt        <= tdata_reg(31 downto 0);
               header_dw1_nxt        <= tdata_reg(63 downto 32);
               tready_int            <= '1';
               if s_axis_rc_tvalid = '1' then
                  rd_cpl_tlpctlSM_ns    <= HEADER_2;
               end if;
            else
               header_dw0_nxt        <= tdata_reg(31 downto 0);
               header_dw1_nxt        <= tdata_reg(63 downto 32);
               header_dw2_nxt        <= tdata_reg(95 downto 64);
               first_payload_dw_nxt  <= little_to_big_endian32(tdata_reg(127 downto 96));
               rd_cpl_tlpctlSM_ns    <= FIND_TAG_START;
            end if;

         when HEADER_2 =>
            if C_M_AXIS_DATA_WIDTH = 32 then
               header_dw1_nxt        <= tdata_reg;
               tready_int            <= '1';
               if s_axis_rc_tvalid = '1' then
                  rd_cpl_tlpctlSM_ns    <= HEADER_3;
               end if;
            else
               header_dw2_nxt        <= tdata_reg(31 downto 0);
               first_payload_dw_nxt  <= little_to_big_endian32(tdata_reg(63 downto 32));
               rd_cpl_tlpctlSM_ns    <= FIND_TAG_START;
            end if;

         when HEADER_3 =>
            header_dw2_nxt        <= tdata_reg(31 downto 0);
            rd_cpl_tlpctlSM_ns    <= FIND_TAG_START;

         when FIND_TAG_START =>
            tag_map_start         <= '1';
            if tag_map_done = '1' then
               rd_cpl_tlpctlSM_ns    <= CHECK_STATUS;
            else
               rd_cpl_tlpctlSM_ns    <= FIND_TAG_WAIT;
            end if;

         when FIND_TAG_WAIT =>
            if tag_map_done = '1' then
               rd_cpl_tlpctlSM_ns    <= CHECK_STATUS;
            end if;

         when CHECK_STATUS =>
            if tag_match = '1' and reqID_match = '1' then
               if length_active_rd_en = '1' then 
                  if fmt = "10" and cs = "000" then
                     rd_cpl_tlpctlSM_ns    <= LOAD_ADDR_COUNT_1;
                  else
                     rd_cpl_tlpctlSM_ns    <= ERROR;
                  end if;
               end if;
            else
               unexpected_cpl              <= '1';
               rd_cpl_tlpctlSM_ns          <= GET_ERROR_TLP;
            end if;

         when ERROR =>
            cpl_error                   <= '1';
            if cs = "100" then -- CA status
               completer_abort_int         <= '1';
            elsif cs /= "000" then -- UR status covers reserved as well
               unsupported_req_int         <= '1';
            end if;
            if last_data_received = '0' then
               tready_int                  <= '1';
               rd_cpl_tlpctlSM_ns          <= GET_ERROR_TLP;
            else
               cpl_data_str_done_int       <= '1';
               cpl_data_str_done_err       <= '1';
               rd_cpl_tlpctlSM_ns          <= DONE_CHECK;
            end if;

         when GET_ERROR_TLP => -- clock out remainder of TLP
            cpl_error                   <= '1';
            if last_data_received = '0' then
               tready_int                  <= '1';
            else
               cpl_data_str_done_int       <= '1';
               cpl_data_str_done_err       <= '1';
               rd_cpl_tlpctlSM_ns          <= DONE_CHECK;
            end if;

         when LOAD_ADDR_COUNT_1 =>
            cpl_addr_count_rd_en  <= '1';
            rd_cpl_tlpctlSM_ns    <= LOAD_ADDR_COUNT_2;
         when LOAD_ADDR_COUNT_2 =>
            if C_M_AXIS_DATA_WIDTH = 32 then -- no payload yet for 32-bit
               tready_int            <= '1';
            end if;
            if tag_active(rd_req_index,tag_index)(9) = '1' then
               load_cpl_addr_count_init <= '1';
            else
               load_cpl_addr_count      <= '1';
            end if;
            rd_cpl_tlpctlSM_ns    <= FIRST_DATA;
            if header_dw0(14) = '1' then -- mark request poisoned if ep set
               poisoned_req_nxt(rd_req_index) <= '1';
            end if;
         when FIRST_DATA =>
            data_str_valid        <= '1';
            if C_M_AXIS_DATA_WIDTH = 32 then
               cpl_addr_count_en   <= '1';
               data_stream_int                <= little_to_big_endian32(tdata_reg);
               if last_data_received = '1' then
                  cpl_data_str_done_int <= '1';
                  rd_cpl_tlpctlSM_ns    <= IDLE;
               else
                  tready_int            <= '1';
                  rd_cpl_tlpctlSM_ns    <= DATA_STR;
               end if;
            elsif C_M_AXIS_DATA_WIDTH = 64 then
               cpl_addr_count_en   <= '1';
               ic_data_str_mask_nxt           <= "11";
               if lower_addr(2) = '1' then -- lower address is upper dw
                  write_strobes                  <= x"F0";
                  cpl_addr_mask_nxt   <= "11";
                  data_stream_int                <= first_payload_dw & x"0000_0000";
               else -- new BRAM address 
                  write_strobes                  <= x"0F";
                  cpl_addr_mask_nxt   <= "10"; -- only wrote to lower dw
                  data_stream_int(31 downto 0)   <= first_payload_dw;
               end if;
               if last_data_received = '1' then
                  cpl_data_str_done_int          <= '1';
                  rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
               else
                  tready_int                     <= '1';
                  rd_cpl_tlpctlSM_ns             <= DATA_STR;
               end if;
            else--if C_M_AXIS_DATA_WIDTH = 128 then
               cpl_addr_count_en   <= '1';
               ic_data_str_mask_nxt           <= "1111";
               if lower_addr(3 downto 2) = "01" then -- lower address is dw1
                  write_strobes                  <= x"00F0";
                  cpl_addr_mask_nxt   <= "1100";
                  data_stream_int                <= x"0000_0000_0000_0000" & first_payload_dw & x"0000_0000";
               elsif lower_addr(3 downto 2) = "10" then -- lower address is dw2
                  write_strobes                  <= x"0F00";
                  cpl_addr_mask_nxt   <= "1000";
                  data_stream_int                <= x"0000_0000" & first_payload_dw & x"0000_0000_0000_0000";
               elsif lower_addr(3 downto 2) = "11" then -- lower address is dw3
                  write_strobes                  <= x"F000";
                  cpl_addr_mask_nxt   <= "1111";
                  data_stream_int                <= first_payload_dw & x"0000_0000_0000_0000_0000_0000";
               else -- new BRAM address 
                  write_strobes                  <= x"000F";
                  cpl_addr_mask_nxt   <= "1110"; -- only wrote to lower dw
                  data_stream_int                <= x"0000_0000_0000_0000_0000_0000" & first_payload_dw;
               end if;
               if last_data_received = '1' then
                  cpl_data_str_done_int          <= '1';
                  rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
               else
                  tready_int                     <= '1';
                  rd_cpl_tlpctlSM_ns             <= DATA_STR;
               end if;
            end if;

         when DATA_STR =>
            if last_data_received = '0' then
               tready_int                     <= '1';
            end if;
            if C_M_AXIS_DATA_WIDTH = 32 then
               if new_data_received = '1' then
                  data_stream_int                <= little_to_big_endian32(tdata_reg);
                  data_str_valid                 <= '1';
                  cpl_addr_count_en   <= '1';
                  if last_data_received = '1' then
                     cpl_data_str_done_int          <= '1';
                     rd_cpl_tlpctlSM_ns             <= IDLE;
                  end if;
               end if;
            elsif C_M_AXIS_DATA_WIDTH = 64 then
               if new_data_received = '1' then
                  data_str_valid                 <= '1';
                  cpl_addr_count_en              <= '1';
                  if cpl_addr_mask = "10" then --lower dw at BRAM addr was previously written
                     if ic_data_str_mask = "10" then
                        data_stream_int                <= little_to_big_endian32(tdata_reg(63 downto 32)) & x"0000_0000";
                        ic_data_str_mask_nxt           <= "11";
                     else
                        data_stream_int                <= little_to_big_endian32(tdata_reg(31 downto 0)) & x"0000_0000";
                        ic_data_str_mask_nxt           <= "10";
                     end if;
                     write_strobes                  <= x"F0";
                     cpl_addr_mask_nxt   <= "11";
                  else -- new BRAM address 
                     if ic_data_str_mask = "10" then
                        data_stream_int                <= little_to_big_endian32(tdata_reg(31 downto 0)) &
                                                          little_to_big_endian32(tdata_reg_d(63 downto 32));
                     else
                        data_stream_int                <= little_to_big_endian32(tdata_reg(63 downto 32)) &
                                                          little_to_big_endian32(tdata_reg(31 downto 0));
                     end if;
                     cpl_addr_count_inc             <= 2;
                  end if;
                  if last_data_received = '1' then
                     if tstrb_reg = x"0F" then -- one dw
                        if ic_data_str_mask = "11" then -- no residual from prior data beat
                           cpl_addr_count_inc             <= 1;
                           if cpl_addr_mask = "10" then
                              write_strobes                  <= x"F0";
                           else
                              write_strobes                  <= x"0F";
                              cpl_addr_mask_nxt   <= "10";
                           end if;
                        else
                           cpl_addr_count_inc             <= 2;
                        end if;
                        cpl_data_str_done_int          <= '1';
                        rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                     else -- two dw received
                        if ic_data_str_mask = "11" and cpl_addr_mask = "11" then
                        -- no residual from prior data beat
                           cpl_data_str_done_int          <= '1';
                           rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                        else
                           extra_write_nxt                <= 1;
                        end if;
                     end if;
                  end if;
               elsif extra_write /= 0 then
                  data_str_valid                 <= '1';
                  data_stream_int                <= x"0000_0000" & little_to_big_endian32(tdata_reg(63 downto 32));
                  write_strobes                  <= x"0F";
                  cpl_addr_count_en   <= '1';
                  ic_data_str_mask_nxt           <= "11";
                  cpl_addr_mask_nxt   <= "10";
                  extra_write_nxt                <= 0;
                  cpl_data_str_done_int          <= '1';
                  rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
               end if;
            else--if C_M_AXIS_DATA_WIDTH = 128 then
               if new_data_received = '1' then
                  data_str_valid                 <= '1';
                  cpl_addr_count_en   <= '1';
                  if cpl_addr_mask = "1110" then --dw0 at BRAM address was previously written
                     if ic_data_str_mask = "1110" then
                        data_stream_int                <= little_to_big_endian32(tdata_reg_d(127 downto 96)) &
                                                          little_to_big_endian32(tdata_reg_d(95 downto 64)) &
                                                          little_to_big_endian32(tdata_reg_d(63 downto 32)) & x"0000_0000";
                        ic_data_str_mask_nxt           <= "1111";
                     elsif ic_data_str_mask = "1100" then
                        data_stream_int                <= little_to_big_endian32(tdata_reg(31 downto 0)) &
                                                          little_to_big_endian32(tdata_reg_d(127 downto 96)) &
                                                          little_to_big_endian32(tdata_reg_d(95 downto 64)) & x"0000_0000";
                        ic_data_str_mask_nxt           <= "1110";
                     elsif ic_data_str_mask = "1000" then
                        data_stream_int                <= little_to_big_endian32(tdata_reg(63 downto 32)) &
                                                          little_to_big_endian32(tdata_reg(31 downto 0)) &
                                                          little_to_big_endian32(tdata_reg_d(127 downto 96)) & x"0000_0000";
                        ic_data_str_mask_nxt           <= "1100";
                     else
                        data_stream_int                <= little_to_big_endian32(tdata_reg(95 downto 64)) &
                                                          little_to_big_endian32(tdata_reg(63 downto 32)) &
                                                          little_to_big_endian32(tdata_reg(31 downto 0)) & x"0000_0000";
                        ic_data_str_mask_nxt           <= "1000";
                     end if;
                     cpl_addr_count_inc             <= 3;
                     write_strobes                  <= x"FFF0";
                     cpl_addr_mask_nxt   <= "1111";
                  elsif cpl_addr_mask = "1100" then --dw0, dw1 at BRAM addr were previously written
                     if ic_data_str_mask = "1110" then
                        data_stream_int                <= little_to_big_endian32(tdata_reg_d(95 downto 64)) &
                                                          little_to_big_endian32(tdata_reg_d(63 downto 32)) & x"0000_0000_0000_0000";
                        ic_data_str_mask_nxt           <= "1000";
                     elsif ic_data_str_mask = "1100" then
                        data_stream_int                <= little_to_big_endian32(tdata_reg_d(127 downto 96)) &
                                                          little_to_big_endian32(tdata_reg_d(95 downto 64)) & x"0000_0000_0000_0000";
                        ic_data_str_mask_nxt           <= "1111";
                     elsif ic_data_str_mask = "1000" then
                        data_stream_int                <= little_to_big_endian32(tdata_reg(31 downto 0)) &
                                                          little_to_big_endian32(tdata_reg_d(127 downto 96)) & x"0000_0000_0000_0000";
                        ic_data_str_mask_nxt           <= "1110";
                     else
                        data_stream_int                <= little_to_big_endian32(tdata_reg(63 downto 32)) &
                                                          little_to_big_endian32(tdata_reg(31 downto 0)) & x"0000_0000_0000_0000";
                        ic_data_str_mask_nxt           <= "1100";
                     end if;
                     cpl_addr_count_inc             <= 2;
                     write_strobes                  <= x"FF00";
                     cpl_addr_mask_nxt   <= "1111";
                  elsif cpl_addr_mask = "1000" then --dw0, dw1, dw2 at BRAM addr were previously written
                     if ic_data_str_mask = "1110" then
                        data_stream_int                <= little_to_big_endian32(tdata_reg_d(63 downto 32)) & x"0000_0000_0000_0000_0000_0000";
                        ic_data_str_mask_nxt           <= "1100";
                     elsif ic_data_str_mask = "1100" then
                        data_stream_int                <= little_to_big_endian32(tdata_reg_d(95 downto 64)) & x"0000_0000_0000_0000_0000_0000";
                        ic_data_str_mask_nxt           <= "1100";
                     elsif ic_data_str_mask = "1000" then
                        data_stream_int                <= little_to_big_endian32(tdata_reg_d(127 downto 96)) & x"0000_0000_0000_0000_0000_0000";
                        ic_data_str_mask_nxt           <= "1111";
                     else
                        data_stream_int                <= little_to_big_endian32(tdata_reg(31 downto 0)) & x"0000_0000_0000_0000_0000_0000";
                        ic_data_str_mask_nxt           <= "1110";
                     end if;
                     write_strobes                  <= x"F000";
                     cpl_addr_mask_nxt   <= "1111";
                  else -- new BRAM addr
                     if ic_data_str_mask = "1110" then
                        data_stream_int                <= little_to_big_endian32(tdata_reg(31 downto 0)) &
                                                          little_to_big_endian32(tdata_reg_d(127 downto 96)) &
                                                          little_to_big_endian32(tdata_reg_d(95 downto 64)) &
                                                          little_to_big_endian32(tdata_reg_d(63 downto 32));
                        ic_data_str_mask_nxt           <= "1110";
                     elsif ic_data_str_mask = "1100" then
                        data_stream_int                <= little_to_big_endian32(tdata_reg(63 downto 32)) &
                                                          little_to_big_endian32(tdata_reg(31 downto 0)) &
                                                          little_to_big_endian32(tdata_reg_d(127 downto 96)) &
                                                          little_to_big_endian32(tdata_reg_d(95 downto 64));
                        ic_data_str_mask_nxt           <= "1100";
                     elsif ic_data_str_mask = "1000" then
                        data_stream_int                <= little_to_big_endian32(tdata_reg(95 downto 64)) &
                                                          little_to_big_endian32(tdata_reg(63 downto 32)) &
                                                          little_to_big_endian32(tdata_reg(31 downto 0)) &
                                                          little_to_big_endian32(tdata_reg_d(127 downto 96));
                        ic_data_str_mask_nxt           <= "1000";
                     else
                        data_stream_int                <= little_to_big_endian32(tdata_reg(127 downto 96)) &
                                                          little_to_big_endian32(tdata_reg(95 downto 64)) &
                                                          little_to_big_endian32(tdata_reg(63 downto 32)) &
                                                          little_to_big_endian32(tdata_reg(31 downto 0));
                        ic_data_str_mask_nxt           <= "1111";
                     end if;
                     cpl_addr_mask_nxt   <= "1111";
                     cpl_addr_count_inc             <= 4;
                  end if;
                  if last_data_received = '1' then
                     if tstrb_reg = x"000F" then
                        if ic_data_str_mask = "1111" then -- no residual from prior data beat
                           cpl_addr_count_inc             <= 1;
                           if cpl_addr_mask = "1111" then
                              write_strobes                  <= x"000F";
                              cpl_addr_mask_nxt   <= "1110";
                           elsif cpl_addr_mask = "1110" then
                              write_strobes                  <= x"00F0";
                              cpl_addr_mask_nxt   <= "1100";
                           elsif cpl_addr_mask = "1100" then
                              write_strobes                  <= x"0F00";
                              cpl_addr_mask_nxt   <= "1000";
                           else
                              write_strobes                  <= x"F000";
                              cpl_addr_mask_nxt   <= "1111";
                           end if;
                           cpl_data_str_done_int          <= '1';
                           rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                        elsif ic_data_str_mask = "1000" then -- 1 dw of residual data from prior data beat
                           cpl_addr_count_inc             <= 2;
                           if cpl_addr_mask = "1111" then
                              write_strobes                  <= x"00FF";
                              cpl_addr_mask_nxt   <= "1100";
                              cpl_data_str_done_int          <= '1';
                              rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                           elsif cpl_addr_mask = "1110" then
                              write_strobes                  <= x"0FF0";
                              cpl_addr_mask_nxt   <= "1000";
                              cpl_data_str_done_int          <= '1';
                              rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                           elsif cpl_addr_mask = "1100" then
                              write_strobes                  <= x"FF00";
                              cpl_addr_mask_nxt   <= "1111";
                              cpl_data_str_done_int          <= '1';
                              rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                           else
                              cpl_addr_count_inc             <= 1;
                              write_strobes                  <= x"F000";
                              cpl_addr_mask_nxt   <= "1111";
                              extra_write_nxt                <= 1;
                           end if;
                        elsif ic_data_str_mask = "1100" then -- 2 dw of residual data from prior data beat
                           cpl_addr_count_inc             <= 3;
                           if cpl_addr_mask = "1111" then
                              write_strobes                  <= x"0FFF";
                              cpl_addr_mask_nxt   <= "1000";
                              cpl_data_str_done_int          <= '1';
                              rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                           elsif cpl_addr_mask = "1110" then
                              write_strobes                  <= x"FFF0";
                              cpl_addr_mask_nxt   <= "1111";
                              cpl_data_str_done_int          <= '1';
                              rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                           elsif cpl_addr_mask = "1100" then
                              cpl_addr_count_inc             <= 2;
                              write_strobes                  <= x"FF00";
                              cpl_addr_mask_nxt   <= "1111";
                              extra_write_nxt                <= 1;
                           else
                              cpl_addr_count_inc             <= 1;
                              write_strobes                  <= x"F000";
                              cpl_addr_mask_nxt   <= "1111";
                              extra_write_nxt                <= 2;
                           end if;
                        else -- 3 dw of residual data from prior data beat
                           cpl_addr_count_inc             <= 4;
                           cpl_addr_mask_nxt   <= "1111";
                           if cpl_addr_mask = "1111" then
                              write_strobes                  <= x"FFFF";
                              cpl_data_str_done_int          <= '1';
                              rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                           elsif cpl_addr_mask = "1110" then
                              cpl_addr_count_inc             <= 3;
                              write_strobes                  <= x"FFF0";
                              extra_write_nxt                <= 1;
                           elsif cpl_addr_mask = "1100" then
                              cpl_addr_count_inc             <= 2;
                              write_strobes                  <= x"FF00";
                              extra_write_nxt                <= 2;
                           else
                              cpl_addr_count_inc             <= 1;
                              write_strobes                  <= x"F000";
                              extra_write_nxt                <= 3;
                           end if;
                        end if;
                     elsif tstrb_reg = x"00FF" then
                        if ic_data_str_mask = "1111" then -- no residual from prior data beat
                           cpl_addr_count_inc             <= 2;
                           if cpl_addr_mask = "1111" then
                              write_strobes                  <= x"00FF";
                              cpl_addr_mask_nxt   <= "1100";
                              cpl_data_str_done_int          <= '1';
                              rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                           elsif cpl_addr_mask = "1110" then
                              write_strobes                  <= x"0FF0";
                              cpl_addr_mask_nxt   <= "1000";
                              cpl_data_str_done_int          <= '1';
                              rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                           elsif cpl_addr_mask = "1100" then
                              write_strobes                  <= x"FF00";
                              cpl_addr_mask_nxt   <= "1111";
                              cpl_data_str_done_int          <= '1';
                              rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                           else
                              cpl_addr_count_inc             <= 1;
                              write_strobes                  <= x"F000";
                              cpl_addr_mask_nxt   <= "1111";
                              extra_write_nxt                <= 1;
                           end if;
                        elsif ic_data_str_mask = "1000" then -- 1 dw of residual data from prior data beat
                           cpl_addr_count_inc             <= 3;
                           if cpl_addr_mask = "1111" then
                              write_strobes                  <= x"0FFF";
                              cpl_addr_mask_nxt   <= "1000";
                              cpl_data_str_done_int          <= '1';
                              rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                           elsif cpl_addr_mask = "1110" then
                              write_strobes                  <= x"FFF0";
                              cpl_addr_mask_nxt   <= "1111";
                              cpl_data_str_done_int          <= '1';
                              rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                           elsif cpl_addr_mask = "1100" then
                              cpl_addr_count_inc             <= 2;
                              write_strobes                  <= x"FF00";
                              cpl_addr_mask_nxt   <= "1111";
                              extra_write_nxt                <= 1;
                           else
                              cpl_addr_count_inc             <= 1;
                              write_strobes                  <= x"F000";
                              cpl_addr_mask_nxt   <= "1111";
                              extra_write_nxt                <= 2;
                           end if;
                        elsif ic_data_str_mask = "1100" then -- 2 dw of residual data from prior data beat
                           cpl_addr_count_inc             <= 4;
                           if cpl_addr_mask = "1111" then
                              write_strobes                  <= x"FFFF";
                              cpl_addr_mask_nxt   <= "1111";
                              cpl_data_str_done_int          <= '1';
                              rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                           elsif cpl_addr_mask = "1110" then
                              cpl_addr_count_inc             <= 3;
                              write_strobes                  <= x"FFF0";
                              cpl_addr_mask_nxt   <= "1111";
                              extra_write_nxt                <= 1;
                           elsif cpl_addr_mask = "1100" then
                              cpl_addr_count_inc             <= 2;
                              write_strobes                  <= x"FF00";
                              cpl_addr_mask_nxt   <= "1111";
                              extra_write_nxt                <= 2;
                           else
                              cpl_addr_count_inc             <= 1;
                              write_strobes                  <= x"F000";
                              cpl_addr_mask_nxt   <= "1111";
                              extra_write_nxt                <= 3;
                           end if;
                        else -- 3 dw of residual data from prior data beat
                           if cpl_addr_mask = "1111" then
                              cpl_addr_count_inc             <= 4;
                              write_strobes                  <= x"FFFF";
                              extra_write_nxt                <= 1;
                           elsif cpl_addr_mask = "1110" then
                              cpl_addr_count_inc             <= 3;
                              write_strobes                  <= x"FFF0";
                              extra_write_nxt                <= 2;
                           elsif cpl_addr_mask = "1100" then
                              cpl_addr_count_inc             <= 2;
                              write_strobes                  <= x"FF00";
                              extra_write_nxt                <= 3;
                           else
                              cpl_addr_count_inc             <= 1;
                              write_strobes                  <= x"F000";
                              extra_write_nxt                <= 4;
                           end if;
                           cpl_addr_mask_nxt   <= "1111";
                        end if;
                     elsif tstrb_reg = x"0FFF" then
                        if ic_data_str_mask = "1111" then -- no residual from prior data beat
                           if cpl_addr_mask = "1111" then
                              cpl_addr_count_inc             <= 3;
                              write_strobes                  <= x"0FFF";
                              cpl_addr_mask_nxt   <= "1000";
                              cpl_data_str_done_int          <= '1';
                              rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                           elsif cpl_addr_mask = "1110" then
                              cpl_addr_count_inc             <= 3;
                              write_strobes                  <= x"FFF0";
                              cpl_addr_mask_nxt   <= "1111";
                              cpl_data_str_done_int          <= '1';
                              rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                           elsif cpl_addr_mask = "1100" then
                              cpl_addr_count_inc             <= 2;
                              write_strobes                  <= x"FF00";
                              cpl_addr_mask_nxt   <= "1111";
                              extra_write_nxt                <= 1;
                           else
                              cpl_addr_count_inc             <= 1;
                              write_strobes                  <= x"F000";
                              cpl_addr_mask_nxt   <= "1111";
                              extra_write_nxt                <= 2;
                           end if;
                        elsif ic_data_str_mask = "1000" then -- 1 dw of residual data from prior data beat
                           if cpl_addr_mask = "1111" then
                              cpl_addr_count_inc             <= 4;
                              write_strobes                  <= x"FFFF";
                              cpl_data_str_done_int          <= '1';
                              rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                           elsif cpl_addr_mask = "1110" then
                              cpl_addr_count_inc             <= 3;
                              write_strobes                  <= x"FFF0";
                              extra_write_nxt                <= 1;
                           elsif cpl_addr_mask = "1100" then
                              cpl_addr_count_inc             <= 2;
                              write_strobes                  <= x"FF00";
                              extra_write_nxt                <= 2;
                           else
                              cpl_addr_count_inc             <= 1;
                              write_strobes                  <= x"F000";
                              extra_write_nxt                <= 3;
                           end if;
                           cpl_addr_mask_nxt   <= "1111";
                        elsif ic_data_str_mask = "1100" then -- 2 dw of residual data from prior data beat
                           if cpl_addr_mask = "1111" then
                              cpl_addr_count_inc             <= 4;
                              write_strobes                  <= x"FFFF";
                              extra_write_nxt                <= 1;
                           elsif cpl_addr_mask = "1110" then
                              cpl_addr_count_inc             <= 3;
                              write_strobes                  <= x"FFF0";
                              extra_write_nxt                <= 2;
                           elsif cpl_addr_mask = "1100" then
                              cpl_addr_count_inc             <= 2;
                              write_strobes                  <= x"FF00";
                              extra_write_nxt                <= 3;
                           else
                              cpl_addr_count_inc             <= 1;
                              write_strobes                  <= x"F000";
                              extra_write_nxt                <= 4;
                           end if;
                           cpl_addr_mask_nxt   <= "1111";
                        else -- 3 dw of residual data from prior data beat
                           if cpl_addr_mask = "1111" then
                              cpl_addr_count_inc             <= 4;
                              write_strobes                  <= x"FFFF";
                              extra_write_nxt                <= 2;
                           elsif cpl_addr_mask = "1110" then
                              cpl_addr_count_inc             <= 3;
                              write_strobes                  <= x"FFF0";
                              extra_write_nxt                <= 3;
                           elsif cpl_addr_mask = "1100" then
                              cpl_addr_count_inc             <= 2;
                              write_strobes                  <= x"FF00";
                              extra_write_nxt                <= 4;
                           else
                              cpl_addr_count_inc             <= 1;
                              write_strobes                  <= x"F000";
                              extra_write_nxt                <= 5;
                           end if;
                           cpl_addr_mask_nxt   <= "1111";
                        end if;
                     elsif tstrb_reg = x"FFFF" then
                        if ic_data_str_mask = "1111" then -- no residual from prior data beat
                           if cpl_addr_mask = "1111" then
                              cpl_addr_count_inc             <= 4;
                              write_strobes                  <= x"FFFF";
                              cpl_data_str_done_int          <= '1';
                              rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
                           elsif cpl_addr_mask = "1110" then
                              cpl_addr_count_inc             <= 3;
                              write_strobes                  <= x"FFF0";
                              extra_write_nxt                <= 1;
                           elsif cpl_addr_mask = "1100" then
                              cpl_addr_count_inc             <= 2;
                              write_strobes                  <= x"FF00";
                              extra_write_nxt                <= 2;
                           else
                              cpl_addr_count_inc             <= 1;
                              write_strobes                  <= x"F000";
                              extra_write_nxt                <= 3;
                           end if;
                           cpl_addr_mask_nxt   <= "1111";
                        elsif ic_data_str_mask = "1000" then -- 1 dw of residual data from prior data beat
                           if cpl_addr_mask = "1111" then
                              cpl_addr_count_inc             <= 4;
                              write_strobes                  <= x"FFFF";
                              extra_write_nxt                <= 1;
                           elsif cpl_addr_mask = "1110" then
                              cpl_addr_count_inc             <= 3;
                              write_strobes                  <= x"FFF0";
                              extra_write_nxt                <= 2;
                           elsif cpl_addr_mask = "1100" then
                              cpl_addr_count_inc             <= 2;
                              write_strobes                  <= x"FF00";
                              extra_write_nxt                <= 3;
                           else
                              cpl_addr_count_inc             <= 1;
                              write_strobes                  <= x"F000";
                              extra_write_nxt                <= 4;
                           end if;
                           cpl_addr_mask_nxt   <= "1111";
                        elsif ic_data_str_mask = "1100" then -- 2 dw of residual data from prior data beat
                           if cpl_addr_mask = "1111" then
                              cpl_addr_count_inc             <= 4;
                              write_strobes                  <= x"FFFF";
                              extra_write_nxt                <= 2;
                           elsif cpl_addr_mask = "1110" then
                              cpl_addr_count_inc             <= 3;
                              write_strobes                  <= x"FFF0";
                              extra_write_nxt                <= 3;
                           elsif cpl_addr_mask = "1100" then
                              cpl_addr_count_inc             <= 2;
                              write_strobes                  <= x"FF00";
                              extra_write_nxt                <= 4;
                           else
                              cpl_addr_count_inc             <= 1;
                              write_strobes                  <= x"F000";
                              extra_write_nxt                <= 5;
                           end if;
                           cpl_addr_mask_nxt   <= "1111";
                        else -- 3 dw of residual data from prior data beat
                           if cpl_addr_mask = "1111" then
                              cpl_addr_count_inc             <= 4;
                              write_strobes                  <= x"FFFF";
                              extra_write_nxt                <= 3;
                           elsif cpl_addr_mask = "1110" then
                              cpl_addr_count_inc             <= 3;
                              write_strobes                  <= x"FFF0";
                              extra_write_nxt                <= 4;
                           elsif cpl_addr_mask = "1100" then
                              cpl_addr_count_inc             <= 2;
                              write_strobes                  <= x"FF00";
                              extra_write_nxt                <= 5;
                           else
                              cpl_addr_count_inc             <= 1;
                              write_strobes                  <= x"F000";
                              extra_write_nxt                <= 6;
                           end if;
                           cpl_addr_mask_nxt   <= "1111";
                        end if;
                     end if;
                  end if;
               elsif extra_write /= 0 then
                  data_str_valid                 <= '1';
                  cpl_addr_count_en   <= '1';
                  case extra_write is 
                     when 1 =>
                        if ic_data_str_mask = "1000" then
                           data_stream_int                <= x"0000_0000_0000_0000_0000_0000" &
                                                             little_to_big_endian32(tdata_reg(127 downto 96));
                        elsif ic_data_str_mask = "1100" then
                           data_stream_int                <= x"0000_0000_0000_0000_0000_0000" &
                                                             little_to_big_endian32(tdata_reg(95 downto 64));
                        elsif ic_data_str_mask = "1110" then
                           data_stream_int                <= x"0000_0000_0000_0000_0000_0000" &
                                                             little_to_big_endian32(tdata_reg(63 downto 32));
                        end if;
                        cpl_addr_mask_nxt   <= "1110";
                        write_strobes                  <= x"000F";
                        cpl_addr_count_inc             <= 1;
                     when 2 =>
                        if ic_data_str_mask = "1100" then
                           data_stream_int                <= x"0000_0000_0000_0000" &
                                                             little_to_big_endian32(tdata_reg(127 downto 96)) &
                                                             little_to_big_endian32(tdata_reg(95 downto 64));
                        elsif ic_data_str_mask = "1110" then
                           data_stream_int                <= x"0000_0000_0000_0000" &
                                                             little_to_big_endian32(tdata_reg(95 downto 64)) &
                                                             little_to_big_endian32(tdata_reg(63 downto 32));
                        end if;
                        cpl_addr_mask_nxt   <= "1100";
                        write_strobes                  <= x"00FF";
                        cpl_addr_count_inc             <= 2;
                     when 3 =>
                        data_stream_int                <= x"0000_0000" & little_to_big_endian32(tdata_reg(127 downto 96))
                                                          & little_to_big_endian32(tdata_reg(95 downto 64)) &
                                                          little_to_big_endian32(tdata_reg(63 downto 32));
                        cpl_addr_mask_nxt   <= "1100";
                        write_strobes                  <= x"0FFF";
                        cpl_addr_count_inc             <= 3;
                     -- coverage off
                     when others =>
                        null;
                     -- coverage on

                  end case;
                  extra_write_nxt                <= 0;
                  cpl_data_str_done_int          <= '1';
                  rd_cpl_tlpctlSM_ns             <= DONE_CHECK;
               end if;
            end if;

         when DONE_CHECK =>
            rd_cpl_tlpctlSM_ns             <= IDLE;

      end case;
   end process;
      
   -- Process the completion TLPs as they are received, detect any error indication and find out if they are expected
   -- and, if so, put the data payload in the correct section of the read data buffer.
   -- Works with the 'comb' process above
   rd_cpl_tlpctlSM_sync : process(aclk)
   begin
      if(rising_edge(aclk)) then
         if(reset = '0') then
            rd_cpl_tlpctlSM_cs    <= IDLE;
            header_dw0            <= (others => '1');
            header_dw1            <= (others => '1');
            header_dw2            <= (others => '1');
            first_payload_dw      <= (others => '0');
            tdata_reg             <= (others => '0');
            tdata_reg_d           <= (others => '0');
            tstrb_reg             <= (others => '0');
            last_data_received    <= '0';
            new_data_received     <= '0';
            cpl_addr_mask         <= (others =>'1');
            ic_data_str_mask      <= (others =>'1');
            extra_write           <= 0;
            poisoned_req_int      <= (others => '0');
         else
            rd_cpl_tlpctlSM_cs    <= rd_cpl_tlpctlSM_ns;
            header_dw0            <= header_dw0_nxt;
            header_dw1            <= header_dw1_nxt;
            header_dw2            <= header_dw2_nxt;
            first_payload_dw      <= first_payload_dw_nxt;
            cpl_addr_mask         <= cpl_addr_mask_nxt;
            ic_data_str_mask      <= ic_data_str_mask_nxt;
            extra_write           <= extra_write_nxt;
            poisoned_req_int      <= poisoned_req_nxt;
            if s_axis_rc_tvalid = '1' and tready_int = '1' then
               for i in 0 to NUM_STROBES-1 loop
                  if s_axis_rc_tstrb(i) = '1' then
                     tdata_reg(i*8+7 downto i*8) <= s_axis_rc_tdata(i*8+7 downto i*8);
                  else
                     tdata_reg(i*8+7 downto i*8) <= (others => '0');
                  end if;
               end loop;
               tdata_reg_d           <= tdata_reg;
               tstrb_reg             <= s_axis_rc_tstrb;
               if s_axis_rc_tlast = '1' then -- and rd_cpl_tlpctlSM_cs /= IDLE then
                  last_data_received    <= '1';
               end if;
               new_data_received     <= '1';
            else
               new_data_received     <= '0';
            end if;
            if cpl_data_str_done_int = '1' then
               last_data_received    <= '0';
            end if;
            if header_ep = '1' then
               poisoned_req_int(cpl_index) <= '0';
            end if;
         end if;
      end if;
   end process;


   data_stream_proc : process(aclk)
   begin
      if(rising_edge(aclk)) then
         if(reset = '0') then
            data_stream_out       <= (others => '0');
         else
            data_stream_out       <= data_stream_int;
            if data_str_valid = '1' then
               read_data_bram_we     <= write_strobes;
            else
               read_data_bram_we     <= (others => '0');
            end if;
         end if;
      end if;
   end process;

   -- As MemRd TLPs are generated and sent out, keep track of the tag and length values so that they can be used to
   -- to correlate completion TLPs and tally the amount of data payload needed for each
   rdreq_cpl_correlateSM : process(aclk)
   begin
      if(rising_edge(aclk)) then
         if(reset = '0') then
            rdreq_cpl_correlateSM_cs                       <= IDLE;
            tag_active                                     <= (others => (others => (others => '0')));
            tag_len_index                                  <= (others => 0);
            rr_tready_tvalid_d                             <= '0';
         else
            tag_len_active_valid                           <= '0';
            rr_tready_tvalid_d                             <= '0';
            length_active_we                               <= (others => '0');
            case rdreq_cpl_correlateSM_cs is
               when IDLE =>      
                  if rreq_active = '1' and illegal_burst_trns = '0' then
                     rdreq_cpl_correlateSM_cs                       <= REQ_ACTIVE;
                  end if;

               when REQ_ACTIVE =>      
                  if m_axis_rr_tlast = '1' and m_axis_rr_tready = '1' then
                     if tag_len_index(req_active_ptr) < STR_DATA_SIZE*8 then
                        tag_active(req_active_ptr, tag_len_index(req_active_ptr))       <= "11" & tag_sent;
                        length_active_we                               <= (others => '1');
                     end if;
                     rdreq_cpl_correlateSM_cs                       <= STROBE;
                     rr_tready_tvalid_d                             <= '1';
                  end if;

               when STROBE =>      
                  -- pass tag_len_active array entry to completion proccessing
                  tag_len_index(req_active_ptr)                  <= tag_len_index(req_active_ptr) + 1;
                  tag_len_active_valid                           <= '1';
                  if read_req_sent = '1' then
                     rdreq_cpl_correlateSM_cs                       <= IDLE;
                  else
                     rdreq_cpl_correlateSM_cs                       <= REQ_ACTIVE;
                  end if;

            end case;
            if rdata_str_start = '1' then
               if cpl_error = '0' then
                  for i in 0 to STR_DATA_SIZE*8-1 loop
                     tag_active(cpl_index, i)                       <= (others => '0');
                  end loop;
               end if;
               tag_len_index(cpl_index)                       <= 0;
            end if;
            if load_cpl_addr_count_init = '1' then
               tag_active(rd_req_index,tag_index)(9)          <= '0';
            end if;
            -- If full completion count clear active tag entry
            if cpl_addr_count_done = '1' then
               tag_active(rd_req_index, tag_index)        <= (others => '0');
            end if;
            -- If Errors clear active tag entry
            if cpl_to_length_sub = '1' then
               tag_active(rd_req_index_of_to, tag_index_to)  <= (others => '0');
            end if;
         end if;
      end if;
   end process;

   validate_tag : process(aclk)
   begin
      if(rising_edge(aclk)) then
         if(reset = '0') then
            tag_pending_for_cpl <= '0';
         else
            tag_pending_for_cpl <= '0';
            for i in 0 to C_AXIREAD_NUM-1 loop
               for j in 0 to STR_DATA_SIZE*8-1 loop
                  if(tag_active(i,j)(9 downto 8) /= "00" and tag_active(i,j)(7 downto 0) = tag_sent) then
                     tag_pending_for_cpl <= '1';
                  end if;
               end loop;
            end loop;
         end if;
      end if;
   end process;

   -- Used to find a tag within the tag_active structure and return rd_req_index and tag_index
   -- Works with 'sync' process below
   cpl_tag_mapping_process : process(tag_map_start, tag_active, tag, rd_req_index, tag_index, tag_match)
   variable match : boolean;
   begin
      rd_req_index_nxt      <= rd_req_index;
      tag_index_nxt         <= tag_index;
      tag_match_nxt         <= tag_match;
      tag_map_done          <= '0';
      if C_AXIREAD_NUM = 8 then
         case rd_req_index is
            when 0 =>
               if tag_map_start = '1' then
                  match                 := FALSE;
                  for i in 0 to STR_DATA_SIZE*8-1 loop
                     if ('1' & tag) = tag_active(0,i)(8 downto 0) then
                        tag_index_nxt         <= i;
                        match                 := TRUE;
                     end if;
                  end loop;
                  if match then
                     tag_map_done          <= '1';
                     tag_match_nxt         <= '1';
                  else
                     rd_req_index_nxt      <= 1;
                  end if;
               end if;
            when 1 to 6 =>
               match                 := FALSE;
               for i in 0 to STR_DATA_SIZE*8-1 loop
                  if ('1' & tag) = tag_active(rd_req_index,i)(8 downto 0) then
                     tag_index_nxt         <= i;
                     match                 := TRUE;
                  end if;
               end loop;
               if match then
                  tag_map_done          <= '1';
                  tag_match_nxt         <= '1';
               else
                  rd_req_index_nxt      <= rd_req_index + 1;
               end if;

            when 7 =>
               match                 := FALSE;
               for i in 0 to STR_DATA_SIZE*8-1 loop
                  if ('1' & tag) = tag_active(rd_req_index,i)(8 downto 0) then
                     tag_index_nxt         <= i;
                     match                 := TRUE;
                  end if;
               end loop;
               if match then
                  tag_match_nxt         <= '1';
               else
                  rd_req_index_nxt      <= 0;
               end if;
               tag_map_done          <= '1';

            -- coverage off
            when others =>
               null;
            -- coverage on

         end case;
      else
         case rd_req_index is
            when 0 =>
               if tag_map_start = '1' then
                  match                 := FALSE;
                  for i in 0 to STR_DATA_SIZE*8-1 loop
                     if ('1' & tag) = tag_active(0,i)(8 downto 0) then
                        tag_index_nxt         <= i;
                        match                 := TRUE;
                     end if;
                  end loop;
                  if match then
                     tag_map_done          <= '1';
                     tag_match_nxt         <= '1';
                  else
                     rd_req_index_nxt      <= 1;
                  end if;
               end if;
            when 1 to 2 =>
               match                 := FALSE;
               for i in 0 to STR_DATA_SIZE*8-1 loop
                  if ('1' & tag) = tag_active(rd_req_index,i)(8 downto 0) then
                     tag_index_nxt         <= i;
                     match                 := TRUE;
                  end if;
               end loop;
               if match then
                  tag_map_done          <= '1';
                  tag_match_nxt         <= '1';
               else
                  rd_req_index_nxt      <= rd_req_index + 1;
               end if;

            when 3 =>
               match                 := FALSE;
               for i in 0 to STR_DATA_SIZE*8-1 loop
                  if ('1' & tag) = tag_active(rd_req_index,i)(8 downto 0) then
                     tag_index_nxt         <= i;
                     match                 := TRUE;
                  end if;
               end loop;
               if match then
                  tag_match_nxt         <= '1';
               else
                  rd_req_index_nxt      <= 0;
               end if;
               tag_map_done          <= '1';

            -- coverage off
            when others =>
               null;
            -- coverage on

         end case;
      end if;
   end process;

   -- Used to find a tag within the tag_active structure and return rd_req_index and tag_index
   -- Works with 'comb' process above
   cpl_tag_mapping_process_sync : process(aclk)
   begin
      if(rising_edge(aclk)) then
         if(reset = '0' or cpl_data_str_done_d = '1') then
            rd_req_index          <= 0;
            tag_index             <= 0;
            tag_match             <= '0';
         else
            rd_req_index          <= rd_req_index_nxt;
            tag_index             <= tag_index_nxt;
            tag_match             <= tag_match_nxt;
         end if;
      end if;
   end process;


   -- Maintain the tag_cpl_status structure to know which MemRd TLPs/tags are pending
   tally_tag_cpl_process : process(aclk)
   begin
      if(rising_edge(aclk)) then
         if(reset = '0' or blk_lnk_up = '0') then
            tag_cpl_status_int          <= (others => (others => '0'));
            tag_cpl_status_at_to        <= (others => '0');
            cpl_timeout_occurred        <= '0';
         elsif tag_len_active_valid = '1' then
            for i in 0 to STR_DATA_SIZE*8-1 loop
               if i = tag_len_index(req_active_ptr) - 1  then
                  tag_cpl_status_int(req_active_ptr)(i) <= '1';
               end if;
            end loop;
         end if;
         if cpl_addr_count_done = '1' then
            tag_cpl_status_int(rd_req_index)(tag_index)   <= '0';
         end if;
         -- Errors that must return arbitrary data to AXI MM have status and counters cleared
         if unsupported_req_int = '1' or completer_abort_int = '1' then
            tag_cpl_status_int(rd_req_index)(tag_index)   <= '0';
            -- capture info for fc count adjust
            if STR_DATA_SIZE = 1 then  -- 32-bit
               tag_cpl_status_at_to        <= SHR(x"80", conv_std_logic_vector(tag_index, 5));
            elsif STR_DATA_SIZE = 2 then -- 64-bit
               tag_cpl_status_at_to        <= SHR(x"8000", conv_std_logic_vector(tag_index, 5));
            else -- 128-bit
               tag_cpl_status_at_to        <= SHR(x"80000000",conv_std_logic_vector(tag_index, 5));
            end if;
            rd_req_index_of_to          <= rd_req_index;
         end if;
         -- Check for completion timer timeouts and clear status and counters
         for j in 0 to C_AXIREAD_NUM-1 loop
            if cpl_timer_timeout_strb(j) = '1' then
               cpl_timeout_occurred        <= '1';
               -- capture info for fc count adjust
               tag_cpl_status_at_to        <= tag_cpl_status_int(j)(0 to 8*STR_DATA_SIZE-1);
               rd_req_index_of_to          <= j;
            end if;
         end loop;
         if cpl_to_length_sub = '1' then
            tag_cpl_status_at_to(tag_index_to) <= '0';
         end if;
         if cpl_timeout_occurred = '1' and conv_integer(tag_cpl_status_at_to) = 0 then
            tag_cpl_status_int(rd_req_index_of_to) <= (others => '0');
            cpl_timeout_occurred        <= '0';
         end if;
      end if;
   end process;


   -- Completion address counter. The count value for each tag is saved away to and retrieved from the
   -- cpl_addr_count_bram, as needed, to count down the total length of the MemRd TLP/tag
   cpl_addr_count_limit              <= conv_integer(length_active_reg)
                                        when length_active_reg /= "0000000000"
                                        else 256*STR_DATA_SIZE;
   
   cpl_addr_counter_comb1 : process(cpl_addr_count_1, cpl_addr_count_en, cpl_addr_count_limit, rd_req_index,
                                    tag_index, cpl_addr_count_inc, unsupported_req_int, completer_abort_int,
                                    cpl_timer_timeout_strb, load_cpl_addr_count, load_cpl_addr_count_init,
                                    cpl_addr_count_read)
   begin
      cpl_addr_count_nxt          <= cpl_addr_count_1;
      cpl_addr_count_done         <= '0';
      if load_cpl_addr_count_init = '1' then
         cpl_addr_count_nxt          <= cpl_addr_count_limit;
      elsif load_cpl_addr_count = '1' then
         cpl_addr_count_nxt          <= conv_integer(cpl_addr_count_read);
      end if;
      if cpl_addr_count_en = '1' then
         if cpl_addr_count_1 >= cpl_addr_count_inc then
            if (cpl_addr_count_1 = cpl_addr_count_inc) then
               cpl_addr_count_done         <= '1';
            end if;
            cpl_addr_count_nxt          <= cpl_addr_count_1 - cpl_addr_count_inc;
         end if;
      end if;
      if unsupported_req_int = '1' or completer_abort_int = '1' then
         cpl_addr_count_nxt          <= 0;
      end if;
   end process;

   cpl_addr_counter_sync : process(aclk)
   begin
      if(rising_edge(aclk)) then
         if(reset = '0') then
            cpl_addr_count_1         <= 0;
            cpl_addr_count           <= 0;
            cpl_data_str_done_d      <= '0';
            length_active_rd_addr_d  <= (others => '0');
            length_active_reg        <= (others => '0');
         else
            cpl_addr_count_1         <= cpl_addr_count_nxt;
            if cpl_addr_count_1 <= cpl_addr_count_limit then
               cpl_addr_count           <= cpl_addr_count_limit - cpl_addr_count_1;
            end if;
            cpl_data_str_done_d      <= cpl_data_str_done_int;
            length_active_rd_addr_d  <= length_active_rd_addr;
            length_active_reg        <= length_active;
         end if;
      end if;
   end process;


   length_active_wr_addr <= conv_std_logic_vector(req_active_ptr, 3) & conv_std_logic_vector(tag_len_index(req_active_ptr), log2(STR_DATA_SIZE*8))
                               when C_AXIREAD_NUM = 8 else
                               conv_std_logic_vector(req_active_ptr, 2) & conv_std_logic_vector(tag_len_index(req_active_ptr), log2(STR_DATA_SIZE*8));

   rd_req_index_sel <= rd_req_index_of_to when conv_integer(tag_cpl_status_at_to) /= 0 and cplsm_idle = '1' else rd_req_index;

   tag_index_sel <= tag_index_to when conv_integer(tag_cpl_status_at_to) /= 0 and cplsm_idle = '1' else tag_index;

   length_active_rd_addr <= conv_std_logic_vector(rd_req_index_sel, 3) & conv_std_logic_vector(tag_index_sel, log2(STR_DATA_SIZE*8))
                               when C_AXIREAD_NUM = 8 else
                               conv_std_logic_vector(rd_req_index_sel, 2) & conv_std_logic_vector(tag_index_sel, log2(STR_DATA_SIZE*8));

   length_active_rd_en   <= '0' when length_active_we = "1" else '1';


   comp_length_active_bram : entity lib_bmg_v1_0_4.blk_mem_gen_wrapper
   generic map(
      C_FAMILY             => C_FAMILY,
      C_WRITE_WIDTH_A      => 10, --: integer := 32;  -- 1 to 1152
      C_READ_WIDTH_A       => 10, --: integer := 32;  -- 1 to 1152
      C_WRITE_DEPTH_A      => LENGTH_ACTIVE_BRAM_DEPTH, --: integer := 64;  -- 2 to 9011200
      C_READ_DEPTH_A       => LENGTH_ACTIVE_BRAM_DEPTH, --: integer := 64;  -- 2 to 9011200
      C_ADDRA_WIDTH        => LENGTH_ACTIVE_BRAM_SIZE, --: integer := 6;   -- 1 to 24
      C_WRITE_WIDTH_B      => 10, --: integer := 32;  -- 1 to 1152
      C_READ_WIDTH_B       => 10, --: integer := 32;  -- 1 to 1152
      C_WRITE_DEPTH_B      => LENGTH_ACTIVE_BRAM_DEPTH, --: integer := 64;  -- 2 to 9011200
      C_READ_DEPTH_B       => LENGTH_ACTIVE_BRAM_DEPTH, --: integer := 64;  -- 2 to 9011200
      C_ADDRB_WIDTH        => LENGTH_ACTIVE_BRAM_SIZE   --: integer := 6;   -- 1 to 24
      )
   port map(
      clka                 => aclk, --: in  std_logic;
      dina                 => length_sent, --: in  std_logic_vector(c_write_width_a-1 downto 0) := (OTHERS => '0');
      addra                => length_active_wr_addr, --: in  std_logic_vector(c_addra_width-1   downto 0);
      ena                  => length_active_we(0), --'1', --: in  std_logic := '1';
      wea                  => length_active_we, --: in  std_logic_vector(c_wea_width-1     downto 0) := (OTHERS => '0');
      clkb                 => aclk, --: in  std_logic := '0';
      dinb                 => (OTHERS => '0'), --: in  std_logic_vector(c_write_width_b-1 downto 0) := (OTHERS => '0');
      addrb                => length_active_rd_addr, --: in  std_logic_vector(c_addrb_width-1   downto 0) := (OTHERS => '0');
      enb                  => length_active_rd_en, --: in  std_logic := '1';
      web                  => (OTHERS => '0'), --: in  std_logic_vector(c_web_width-1     downto 0) := (OTHERS => '0');
      doutb                => length_active --: out std_logic_vector(c_read_width_b-1  downto 0);
      );

   cpl_addr_count_save         <= conv_std_logic_vector(cpl_addr_count_1, CPL_ADDR_COUNT_WIDTH);
   cpl_addr_count_we           <= (others => '1') when cpl_done_without_err = '1' and tag_match = '1' else (others => '0');
   cpl_addr_count_rd_en_ord    <= '1' when conv_integer(tag_cpl_status_at_to) /= 0 else cpl_addr_count_rd_en; 

   comp_cpl_addr_count_bram : entity lib_bmg_v1_0_4.blk_mem_gen_wrapper
   generic map(
      C_FAMILY             => C_FAMILY,
      C_WRITE_WIDTH_A      => CPL_ADDR_COUNT_WIDTH, --: integer := 32;  -- 1 to 1152
      C_READ_WIDTH_A       => CPL_ADDR_COUNT_WIDTH, --: integer := 32;  -- 1 to 1152
      C_WRITE_DEPTH_A      => LENGTH_ACTIVE_BRAM_DEPTH, --: integer := 64;  -- 2 to 9011200
      C_READ_DEPTH_A       => LENGTH_ACTIVE_BRAM_DEPTH, --: integer := 64;  -- 2 to 9011200
      C_ADDRA_WIDTH        => LENGTH_ACTIVE_BRAM_SIZE, --: integer := 6;   -- 1 to 24
      C_WRITE_WIDTH_B      => CPL_ADDR_COUNT_WIDTH, --: integer := 32;  -- 1 to 1152
      C_READ_WIDTH_B       => CPL_ADDR_COUNT_WIDTH, --: integer := 32;  -- 1 to 1152
      C_WRITE_DEPTH_B      => LENGTH_ACTIVE_BRAM_DEPTH, --: integer := 64;  -- 2 to 9011200
      C_READ_DEPTH_B       => LENGTH_ACTIVE_BRAM_DEPTH, --: integer := 64;  -- 2 to 9011200
      C_ADDRB_WIDTH        => LENGTH_ACTIVE_BRAM_SIZE   --: integer := 6;   -- 1 to 24
      )
   port map(
      clka                 => aclk, --: in  std_logic;
      dina                 => cpl_addr_count_save, --: in  std_logic_vector(c_write_width_a-1 downto 0) := (OTHERS => '0');
      addra                => length_active_rd_addr_d, --: in  std_logic_vector(c_addra_width-1   downto 0);
      ena                  => '1', --: in  std_logic := '1';
      wea                  => cpl_addr_count_we, --: in  std_logic_vector(c_wea_width-1     downto 0) := (OTHERS => '0');
      clkb                 => aclk, --: in  std_logic := '0';
      dinb                 => (OTHERS => '0'), --: in  std_logic_vector(c_write_width_b-1 downto 0) := (OTHERS => '0');
      addrb                => length_active_rd_addr, --: in  std_logic_vector(c_addrb_width-1   downto 0) := (OTHERS => '0');
      enb                  => cpl_addr_count_rd_en_ord, --: in  std_logic := '1';
      web                  => (OTHERS => '0'), --: in  std_logic_vector(c_web_width-1     downto 0) := (OTHERS => '0');
      doutb                => cpl_addr_count_read --: out std_logic_vector(c_read_width_b-1  downto 0);
      );

end architecture;
