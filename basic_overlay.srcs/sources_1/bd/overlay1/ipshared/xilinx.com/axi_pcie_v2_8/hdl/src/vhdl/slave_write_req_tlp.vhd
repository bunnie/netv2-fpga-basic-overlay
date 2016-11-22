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
-- Filename:        slave_write_req_tlp.vhd
--
-- Description:     
--                  
-- This VHDL file is an HDL design file for the AXI slave write bridge. 
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              slave_write_req_tlp.vhd
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.conv_integer;


--------------------------------------------------------------------------------
--Notes
--------------------------------------------------------------------------------



entity slave_write_req_tlp is
   generic(
      --Family Generics
      C_FAMILY                : string  :="virtex7";

      C_S_AXI_ADDR_WIDTH      : integer := 32;
      C_S_AXI_DATA_WIDTH      : integer := 32;
      C_M_AXIS_DATA_WIDTH     : integer := 32;
      
      C_AXIBAR_NUM            : integer := 6;
      C_AXIBAR_0              : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_0     : std_logic_vector := x"0000_0000";
      C_AXIBAR_1              : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_1     : std_logic_vector := x"0000_0000";
      C_AXIBAR_2              : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_2     : std_logic_vector := x"0000_0000";
      C_AXIBAR_3              : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_3     : std_logic_vector := x"0000_0000";
      C_AXIBAR_4              : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_4     : std_logic_vector := x"0000_0000";
      C_AXIBAR_5              : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_5     : std_logic_vector := x"0000_0000";
      C_AXIBAR_AS_0           : integer := 0;
      C_AXIBAR_AS_1           : integer := 0;
      C_AXIBAR_AS_2           : integer := 0;
      C_AXIBAR_AS_3           : integer := 0;
      C_AXIBAR_AS_4           : integer := 0;
      C_AXIBAR_AS_5           : integer := 0
   );
   port(

      -- AXI Global
      aclk                    : in  std_logic;
      reset                   : in  std_logic;

      -- internal interface
      maxpayloadsize          : in  std_logic_vector(2 downto 0);
      waddr                   : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      length_bytes            : in  std_logic_vector(12 downto 0);
      wbarhit                 : in  std_logic_vector(C_AXIBAR_NUM-1 downto 0);
      wdata                   : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      first_BE                : in  std_logic_vector(3 downto 0);
      first_BE_valid          : in  std_logic;
      last_BE                 : in  std_logic_vector(3 downto 0);
      last_BE_valid           : in  std_logic;
      first_word_offset       : in  integer;
      wdata_fifo_rd_en        : out std_logic;
      wdata_fifo_empty        : in  std_logic;
      reqID                   : in  std_logic_vector(15 downto 0);
      wdata_str_done          : out std_logic;
      wdata_str_start         : out std_logic;
      illegal_burst_trns      : in  std_logic;
      block_trns_lnkdwn       : in  std_logic;
      blk_lnk_up              : in  std_logic;
      pcie_bme                : in  std_logic;
      tlp_str_start           : out std_logic;

      -- AXI2PCIE translation vectors
      axibar2pciebar0         : in  std_logic_vector(63 downto 0);
      axibar2pciebar1         : in  std_logic_vector(63 downto 0);
      axibar2pciebar2         : in  std_logic_vector(63 downto 0);
      axibar2pciebar3         : in  std_logic_vector(63 downto 0);
      axibar2pciebar4         : in  std_logic_vector(63 downto 0);
      axibar2pciebar5         : in  std_logic_vector(63 downto 0);
      
      -- AXI Streaming interface
      m_axis_rw_tvalid        : out std_logic;
      m_axis_rw_tready        : in  std_logic;
      m_axis_rw_tdata         : out std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
      m_axis_rw_tstrb         : out std_logic_vector(C_M_AXIS_DATA_WIDTH/8-1 downto 0);
      m_axis_rw_tlast         : out std_logic
      --M_axis_rw_WUSER         : out std_logic_vector()
      
   );
end slave_write_req_tlp;

   architecture structure of slave_write_req_tlp is
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of structure : architecture is "yes";

--TLP Header Structure

-- Fmt  10      MemWr 3DW (32-bit Address)
--      11      MemWr 4DW (64-bit Address)
-- Type 00000   always for MemWr
-- TC   000     always (default)
-- TD   0       always(no digest field)
-- EP   0       probably won't ever set poison bit
-- Attr 00      always
-- Length       length is inclusive of partial first/last data DWs

-- ReqID        get from PCIe core block IF
-- Tag  x00     not used for MemWr req
-- Last DW BE   generate from ???
-- First DW BE  generate from ???

-- Addr 1 or 2 DW

   type header_array_type is array (0 to 3) of std_logic_vector(31 downto 0);
   signal header_array        : header_array_type;
   signal header_array_reg    : header_array_type;

   constant ZEROS             : std_logic_vector(127 downto 0) := x"0000_0000_0000_0000_0000_0000_0000_0000";
   constant ONES              : std_logic_vector(15 downto 0) := x"FFFF";
   type integer_array  is array (0 to 5) of integer range 0 to 1;
   constant C_AXIBAR_AS_ARRAY : integer_array:=(
      C_AXIBAR_AS_0,
      C_AXIBAR_AS_1,
      C_AXIBAR_AS_2,
      C_AXIBAR_AS_3,
      C_AXIBAR_AS_4,
      C_AXIBAR_AS_5);

   type vector_array_type is array (0 to 5) of std_logic_vector(63 downto 0);

   constant C_MASK_ARRAY : vector_array_type := (
                             x"0000_0000_0000_0000" + (C_AXIBAR_0 xor C_AXIBAR_HIGHADDR_0), 
                             x"0000_0000_0000_0000" + (C_AXIBAR_1 xor C_AXIBAR_HIGHADDR_1), 
                             x"0000_0000_0000_0000" + (C_AXIBAR_2 xor C_AXIBAR_HIGHADDR_2), 
                             x"0000_0000_0000_0000" + (C_AXIBAR_3 xor C_AXIBAR_HIGHADDR_3), 
                             x"0000_0000_0000_0000" + (C_AXIBAR_4 xor C_AXIBAR_HIGHADDR_4), 
                             x"0000_0000_0000_0000" + (C_AXIBAR_5 xor C_AXIBAR_HIGHADDR_5));

   constant STR_DATA_SIZE : integer := C_M_AXIS_DATA_WIDTH/32;

   -----------------------------------------------------------------------------
   -- State Machines
   -----------------------------------------------------------------------------

   type wr_req_tlpctlSM_STATES is (IDLE,
                                   WAIT_BEs,
                                   WAIT_BME,
                                   SPLIT_REQUEST_1,
                                   SPLIT_REQUEST_2,
                                   SPLIT_REQUEST_3,
                                   LOAD_COUNTER,
                                   BUILD_HEADER,
                                   FIFO_COUNT_ADJ,
                                   STR_HEADER_1,
                                   STR_HEADER_2,
                                   STR_HEADER_3,
                                   STR_HEADER_4,
                                   STR_DATA,
                                   WAIT_BME2);
   signal wr_req_tlpctlSM_cs        : wr_req_tlpctlSM_STATES;
   signal wr_req_tlpctlSM_ns        : wr_req_tlpctlSM_STATES;

   signal axibar2pciebar            : vector_array_type;

   signal first_BE_reg              : std_logic_vector(3 downto 0);
   signal last_BE_reg               : std_logic_vector(3 downto 0);
   signal waddr_reg                 : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
   signal wbarhit_reg               : std_logic_vector(C_AXIBAR_NUM-1 downto 0);
   signal en_header_array           : std_logic;
   signal addr_size                 : std_logic;
   signal ep                        : std_logic := '0';
   signal address_l                 : std_logic_vector(31 downto 0);
   signal address_h                 : std_logic_vector(31 downto 0);
   signal en_data_str               : std_logic;
   signal wdata_fifo_rd_en_int      : std_logic;
   signal wdata_str_done_int        : std_logic;
   signal wdata_str_done_d          : std_logic;
   signal length_bytes_reg          : std_logic_vector(12 downto 0);
   signal fw_offset_reg             : integer;
   signal wr_counter                : integer;
   signal dec_counter               : std_logic;
   signal ld_counter                : std_logic;
   signal wdata_d                   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal wdata_packed              : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal tvalid_int                : std_logic;
   signal tlast_int                 : std_logic;
   signal mps_actual                : std_logic_vector(14 downto 0);
   signal first_BE_tmp              : std_logic_vector(3 downto 0);
   signal first_BE_tmp_nxt          : std_logic_vector(3 downto 0);
   signal last_BE_tmp               : std_logic_vector(3 downto 0);
   signal last_BE_tmp_nxt           : std_logic_vector(3 downto 0);
   signal dwlength_tmp              : std_logic_vector(9 downto 0);
   signal dwlength_tmp_nxt          : std_logic_vector(9 downto 0);
   signal dwlength_sent             : std_logic_vector(9 downto 0);
   signal dwlength_sent_nxt         : std_logic_vector(9 downto 0);
   signal address_l_tmp             : std_logic_vector(31 downto 0);
   signal address_l_tmp_nxt         : std_logic_vector(31 downto 0);
   signal num_cmd_splits_nxt        : integer range 0 to 63;
   signal num_cmd_splits            : integer range 0 to 63;
   signal illegal_burst_latch_int   : std_logic;
   signal block_stream_valid        : std_logic;
   signal odd_bytes                 : integer range 0 to 1;
   signal wdata_str_start_int       : std_logic;
   signal block_trns_lnkdwn_latch   : std_logic;
   signal first_data_blocked        : std_logic;
   signal tlp_str_start_int         : std_logic;

-- This function converts a 32-bit little endian format to big endian format
   function little_to_big_endian32(datain : std_logic_vector(31 downto 0))
         return std_logic_vector is
      variable dataout : std_logic_vector(31 downto 0);
   begin
      dataout := datain(7 downto 0) & datain(15 downto 8) & datain(23 downto 16) & datain(31 downto 24);
      return(dataout);
   end function;

begin

   wdata_fifo_rd_en  <= wdata_fifo_rd_en_int;
   m_axis_rw_tvalid  <= tvalid_int;
   m_axis_rw_tlast   <= tlast_int;
   wdata_str_start   <= wdata_str_start_int;
   wdata_str_done    <= wdata_str_done_d;
   tlp_str_start     <= tlp_str_start_int;

   axibar2pciebar(0) <= axibar2pciebar0;
   axibar2pciebar(1) <= axibar2pciebar1;
   axibar2pciebar(2) <= axibar2pciebar2;
   axibar2pciebar(3) <= axibar2pciebar3;
   axibar2pciebar(4) <= axibar2pciebar4;
   axibar2pciebar(5) <= axibar2pciebar5;

   mps_actual <= SHL("000000010000000", maxpayloadsize);

   -- Perform upper bit substitution
   address_translation_proccess : process(wbarhit_reg, waddr_reg, axibar2pciebar)
   variable var_addr : std_logic_vector(63 downto 0);
   begin
      var_addr := (others => '0');
      for i in C_AXIBAR_NUM-1 downto 0 loop
         if wbarhit_reg(i) = '1' then
            var_addr := axibar2pciebar(i);
            for j in C_S_AXI_ADDR_WIDTH-1 downto 0 loop
               if(C_MASK_ARRAY(i)(j) = '1') then
                  var_addr(j) := waddr_reg(j);
               end if;
            end loop;
         end if;
         address_l   <= var_addr(31 downto 0);
         address_h   <= var_addr(63 downto 32);
      end loop;
   end process;


   addr_size_proccess : process(wbarhit_reg,axibar2pciebar)
   begin
      addr_size         <= '0';
      for i in C_AXIBAR_NUM-1 downto 0 loop
         if wbarhit_reg(i) = '1' then
            if C_AXIBAR_AS_ARRAY(i) = 1 and axibar2pciebar(i)(63 downto 32) /= x"0000_0000" then
               addr_size         <= '1';
            end if;
         end if;
      end loop;
   end process;

   illegal_burst_latch_process : process(aclk)
   begin
      if(rising_edge(aclk)) then
         if(reset = '0') then
            illegal_burst_latch_int    <= '0';
         elsif(last_BE_valid = '1') then
            illegal_burst_latch_int    <= illegal_burst_trns;
         end if;
      end if;
   end process;

   block_trns_lnkdwn_latch_process : process(aclk)
   begin
      if(rising_edge(aclk)) then
         if(reset = '0') then
            block_trns_lnkdwn_latch    <= '0';
         elsif(tlast_int = '1' and m_axis_rw_tready = '1' and block_trns_lnkdwn = '1') -- let current TLP finish, then block
         or (block_trns_lnkdwn = '1' and tvalid_int = '0') -- no TLP, block next
         or (block_trns_lnkdwn = '0' and wdata_str_done_int = '1') -- last TLP blocked, don't block next
         or (block_trns_lnkdwn = '0' and wr_req_tlpctlSM_cs = WAIT_BEs) -- last TLP blocked, don't block next
         then
            block_trns_lnkdwn_latch    <= block_trns_lnkdwn;
         elsif(first_data_blocked = '1') then
            block_trns_lnkdwn_latch    <= '1';
         end if;
      end if;
   end process;

   block_stream_valid <= block_trns_lnkdwn_latch or illegal_burst_latch_int;

   odd_bytes_process : process(length_bytes_reg)
   begin
      if length_bytes_reg(1 downto 0) /= "00" then
         odd_bytes             <= 1;
      else
         odd_bytes             <= 0;
      end if;
   end process;

   -- This process generates the MemWr TLP(s) that result from one AXI write request, the header is created and streamed
   -- out followed by data from the Write FIFO
   -- Works with the 'sync' and write counter processes below 
   wr_req_tlpctlSM_comb : process(wr_req_tlpctlSM_cs, wbarhit, last_BE_valid, addr_size, ep, length_bytes_reg, reqID,
                                  last_BE_reg, first_BE_reg, address_l, address_h, wdata_fifo_empty, m_axis_rw_tready,
                                  wdata, fw_offset_reg, wr_counter, wdata_packed, mps_actual, first_BE_tmp, last_BE_tmp,
                                  dwlength_tmp, address_l_tmp, num_cmd_splits, dwlength_sent,blk_lnk_up,
                                  header_array_reg, block_stream_valid, odd_bytes, pcie_bme)
   begin
      wr_req_tlpctlSM_ns    <= wr_req_tlpctlSM_cs;
      en_header_array       <= '0';
      header_array          <= (others => (others => '0'));
      wdata_fifo_rd_en_int  <= '0';
      wdata_str_done_int    <= '0';
      wdata_str_start_int   <= '0';
      tlast_int             <= '0';
      en_data_str           <= '0';
      ld_counter            <= '0';
      dec_counter           <= '0';
      m_axis_rw_tdata       <= (others => '0');
      tvalid_int            <= '0';
      m_axis_rw_tstrb       <= (others => '0');
      first_BE_tmp_nxt      <= first_BE_tmp;
      last_BE_tmp_nxt       <= last_BE_tmp;
      dwlength_tmp_nxt      <= dwlength_tmp;
      dwlength_sent_nxt     <= dwlength_sent;
      address_l_tmp_nxt     <= address_l_tmp;
      num_cmd_splits_nxt    <= num_cmd_splits;
      first_data_blocked    <= '0';
      tlp_str_start_int     <= '0';
      case wr_req_tlpctlSM_cs is

         when IDLE =>
            if wbarhit /= ZEROS(C_AXIBAR_NUM-1 downto 0) then-- and (pcie_bme = '1' or block_stream_valid = '1') then
               wr_req_tlpctlSM_ns <= WAIT_BEs;
            end if;

         when WAIT_BEs =>
            if last_BE_valid = '1' then
               wr_req_tlpctlSM_ns    <= WAIT_BME;
            end if;

         when WAIT_BME =>
            -- NAM / JRH fixed typo. Was b 2.
            -- coverage off -item b 1 -allfalse
            if pcie_bme = '1' or block_stream_valid = '1' then
               wr_req_tlpctlSM_ns    <= SPLIT_REQUEST_1;
            end if;

         when SPLIT_REQUEST_1 =>
            if length_bytes_reg <= mps_actual(12 downto 0) then-- less than MPS - no split
               first_BE_tmp_nxt      <= first_BE_reg;
               last_BE_tmp_nxt       <= last_BE_reg;
               dwlength_tmp_nxt      <= length_bytes_reg(11 downto 2) + odd_bytes;
               address_l_tmp_nxt     <= address_l;
            elsif num_cmd_splits = 0 then-- first split
               num_cmd_splits_nxt    <= 1;
               first_BE_tmp_nxt      <= first_BE_reg;
               last_BE_tmp_nxt       <= x"F";
               dwlength_tmp_nxt      <= mps_actual(11 downto 2);
               dwlength_sent_nxt     <= mps_actual(11 downto 2);
               address_l_tmp_nxt     <= address_l;
            end if;
            wr_req_tlpctlSM_ns       <= LOAD_COUNTER;
            tlp_str_start_int        <= '1';

         when SPLIT_REQUEST_2 =>
            if ((conv_integer(length_bytes_reg(11 downto 2)) + odd_bytes) - dwlength_sent) <= mps_actual(11 downto 2)
               then-- last TLP 
               num_cmd_splits_nxt    <= 0;
               dwlength_tmp_nxt      <= (length_bytes_reg(11 downto 2) - dwlength_sent) + odd_bytes;
               wr_req_tlpctlSM_ns    <= SPLIT_REQUEST_3;
            else-- middle TLP
               num_cmd_splits_nxt    <= num_cmd_splits + 1;
               first_BE_tmp_nxt      <= x"F";
               last_BE_tmp_nxt       <= x"F";
               dwlength_tmp_nxt      <= mps_actual(11 downto 2);
               dwlength_sent_nxt     <= dwlength_sent + mps_actual(11 downto 2);
               wr_req_tlpctlSM_ns    <= LOAD_COUNTER;
            end if;
            address_l_tmp_nxt     <= address_l_tmp + (dwlength_tmp & "00");

         when SPLIT_REQUEST_3 =>
            if dwlength_tmp = "0000000001" then
               first_BE_tmp_nxt      <= last_BE_reg;
               last_BE_tmp_nxt       <= x"0";
            else
               first_BE_tmp_nxt      <= x"F";
               last_BE_tmp_nxt       <= last_BE_reg;
            end if;
            wr_req_tlpctlSM_ns    <= LOAD_COUNTER;

         when LOAD_COUNTER =>
            ld_counter            <= '1';
            wr_req_tlpctlSM_ns    <= BUILD_HEADER;

         when BUILD_HEADER =>
            if length_bytes_reg = 0 then
               header_array(0)       <= "01" & addr_size & "00" & x"000" & ep & x"0" & "0000000001";
            else
               header_array(0)       <= "01" & addr_size & "00" & x"000" & ep & x"0" & dwlength_tmp(9 downto 0);
            end if;
            header_array(1)       <= reqID & x"00" & last_BE_tmp & first_BE_tmp;
            if addr_size = '0' then
               header_array(2)       <= address_l_tmp;
               if length_bytes_reg = 0 then -- zero length write TLP
                  header_array(3)    <= (others => '0');
               else
                  header_array(3)    <= little_to_big_endian32(wdata(fw_offset_reg*32+31 downto fw_offset_reg*32));--first_word_offset
                  dec_counter        <= '1';
               end if;
            else
               header_array(2)       <= address_h;
               header_array(3)       <= address_l_tmp;
            end if;
            if (addr_size = '0' or (STR_DATA_SIZE > 1 and fw_offset_reg /= 0)) and length_bytes_reg /= 0 then
               wr_req_tlpctlSM_ns    <= FIFO_COUNT_ADJ;
            else
               wr_req_tlpctlSM_ns    <= STR_HEADER_1;
            end if;
            en_header_array       <= '1';

         when FIFO_COUNT_ADJ =>
            wdata_fifo_rd_en_int  <= '1';
            wr_req_tlpctlSM_ns    <= STR_HEADER_1;

         when STR_HEADER_1 =>
            if num_cmd_splits = 0 then
               wdata_str_start_int   <= '1';
            end if;
            if STR_DATA_SIZE = 1 then    -- 32-bit
               m_axis_rw_tdata       <= header_array_reg(0);
            elsif STR_DATA_SIZE = 2 then -- 64-bit
               m_axis_rw_tdata       <= header_array_reg(1) & header_array_reg(0);
            elsif STR_DATA_SIZE = 4 then -- 128-bit
               m_axis_rw_tdata       <= header_array_reg(3) & header_array_reg(2) & header_array_reg(1)
                                     & header_array_reg(0);
            end if;
            if block_stream_valid = '0' and blk_lnk_up = '1' then
               tvalid_int         <= '1';
            end if;
            m_axis_rw_tstrb    <= (others => '1');
            if STR_DATA_SIZE = 4 then -- 128-bit
               if addr_size = '0' and wr_counter = 0 then
                  tlast_int          <= '1';
                  if m_axis_rw_tready = '1' or block_stream_valid = '1' then
                     if num_cmd_splits = 0 then
                        wr_req_tlpctlSM_ns    <= IDLE;
                        wdata_str_done_int    <= '1';
                        if wdata_fifo_empty = '0' then
                           wdata_fifo_rd_en_int  <= '1';
                        end if;
                     else
                        wr_req_tlpctlSM_ns    <= WAIT_BME2;
                        if(addr_size = '1' and fw_offset_reg = 0 and wdata_fifo_empty = '0') then
                           wdata_fifo_rd_en_int  <= '1';
                        end if;
                     end if;
                  end if;
               elsif m_axis_rw_tready = '1' or block_stream_valid = '1' then
                  wr_req_tlpctlSM_ns    <= STR_DATA;
               end if;
            elsif m_axis_rw_tready = '1' or block_stream_valid = '1' then
               if blk_lnk_up = '0' then
                  first_data_blocked    <= '1';
               end if;
               wr_req_tlpctlSM_ns    <= STR_HEADER_2;
            end if;

         when STR_HEADER_2 =>
            if STR_DATA_SIZE = 1 then    -- 32-bit
               m_axis_rw_tdata    <= header_array_reg(1);
            elsif STR_DATA_SIZE = 2 then -- 64-bit
               m_axis_rw_tdata    <= header_array_reg(3) & header_array_reg(2);
            end if;
            if block_stream_valid = '0' then
               tvalid_int         <= '1';
            end if;
            m_axis_rw_tstrb    <= (others => '1');
            if STR_DATA_SIZE = 2 then
               if addr_size = '0' and wr_counter = 0 then
                  tlast_int          <= '1';
                  if m_axis_rw_tready = '1' or block_stream_valid = '1' then
                     if num_cmd_splits = 0 then
                        wr_req_tlpctlSM_ns    <= IDLE;
                        wdata_str_done_int    <= '1';
                        if wdata_fifo_empty = '0' then
                           wdata_fifo_rd_en_int  <= '1';
                        end if;
                     else
                        wr_req_tlpctlSM_ns    <= WAIT_BME2;
                        if(addr_size = '1' and fw_offset_reg = 0 and wdata_fifo_empty = '0') then
                           wdata_fifo_rd_en_int  <= '1';
                        end if;
                     end if;
                  end if;
               elsif m_axis_rw_tready = '1' or block_stream_valid = '1' then
                  wr_req_tlpctlSM_ns    <= STR_DATA;
               end if;
            elsif m_axis_rw_tready = '1' or block_stream_valid = '1' then
               wr_req_tlpctlSM_ns    <= STR_HEADER_3;
            end if;

         when STR_HEADER_3 =>
            m_axis_rw_tdata(31 downto 0)    <= header_array_reg(2);
            if block_stream_valid = '0' then
               tvalid_int         <= '1';
            end if;
            m_axis_rw_tstrb    <= (others => '1');
            if m_axis_rw_tready = '1' or block_stream_valid = '1' then
               wr_req_tlpctlSM_ns    <= STR_HEADER_4;
            end if;

         when STR_HEADER_4 =>
            m_axis_rw_tdata(31 downto 0)    <= header_array_reg(3);
            if block_stream_valid = '0' then
               tvalid_int         <= '1';
            end if;
            m_axis_rw_tstrb    <= (others => '1');
            if addr_size = '0' and wr_counter = 0 then
               tlast_int          <= '1';
               if m_axis_rw_tready = '1' or block_stream_valid = '1' then
                  if num_cmd_splits = 0 then
                     wr_req_tlpctlSM_ns    <= IDLE;
                     wdata_str_done_int    <= '1';
                     if wdata_fifo_empty = '0' then
                        wdata_fifo_rd_en_int  <= '1';
                     end if;
                  else
                     wr_req_tlpctlSM_ns    <= WAIT_BME2;
                     if(addr_size = '1' and fw_offset_reg = 0 and wdata_fifo_empty = '0') then
                        wdata_fifo_rd_en_int  <= '1';
                     end if;
                  end if;
               end if;
            elsif m_axis_rw_tready = '1' or block_stream_valid = '1' then
               wr_req_tlpctlSM_ns    <= STR_DATA;
            end if;

         when STR_DATA =>
            if block_stream_valid = '0' then
               tvalid_int         <= '1';
            end if;
            if wr_counter < STR_DATA_SIZE and wr_counter /= 0 then
               --m_axis_rw_tdata    <= ZEROS(STR_DATA_SIZE*32-1 downto wr_counter*32)
               --                & wdata_packed(wr_counter*32-1 downto 0);
               --m_axis_rw_tstrb    <= ZEROS(STR_DATA_SIZE*4-1 downto wr_counter*4) & ONES(wr_counter*4-1 downto 0);
               if STR_DATA_SIZE = 2 then -- 64-bit
                  m_axis_rw_tdata    <= ZEROS(63 downto 32)
                                  & wdata_packed(31 downto 0);
                  m_axis_rw_tstrb    <= ZEROS(7 downto 4) & ONES(3 downto 0);
               elsif STR_DATA_SIZE = 4 then -- 128-bit
                  if wr_counter = 3 then
                     m_axis_rw_tdata    <= ZEROS(127 downto 3*32)
                                     & wdata_packed(3*32-1 downto 0);
                     m_axis_rw_tstrb    <= ZEROS(15 downto 3*4) & ONES(3*4-1 downto 0);
                  elsif wr_counter = 2 then
                     m_axis_rw_tdata    <= ZEROS(127 downto 2*32)
                                     & wdata_packed(2*32-1 downto 0);
                     m_axis_rw_tstrb    <= ZEROS(15 downto 2*4) & ONES(2*4-1 downto 0);
                  else
                     m_axis_rw_tdata    <= ZEROS(127 downto 32)
                                     & wdata_packed(31 downto 0);
                     m_axis_rw_tstrb    <= ZEROS(15 downto 4) & ONES(3 downto 0);
                  end if;
               end if;
            else
               if length_bytes_reg = 0 then -- zero length write
                  m_axis_rw_tdata    <= (others => '0');
                  if STR_DATA_SIZE = 1 then -- 32-bit
                     m_axis_rw_tstrb    <= (others => '1');
                  elsif STR_DATA_SIZE = 2 then -- 64-bit
                     m_axis_rw_tstrb    <= ZEROS(7 downto 4) & ONES(3 downto 0);
                  else -- 128-bit
                     m_axis_rw_tstrb    <= ZEROS(15 downto 4) & ONES(3 downto 0);
                  end if;
               else
                  m_axis_rw_tdata    <= wdata_packed;
                  m_axis_rw_tstrb    <= (others => '1');
               end if;
            end if;               
            if wr_counter <= STR_DATA_SIZE then
               tlast_int          <= '1';
               if m_axis_rw_tready = '1' or block_stream_valid = '1' then
                  if num_cmd_splits = 0 then
                     wr_req_tlpctlSM_ns    <= IDLE;
                     wdata_str_done_int    <= '1';
                     if wdata_fifo_empty = '0' then
                        wdata_fifo_rd_en_int  <= '1';
                     end if;
                  else
                     wr_req_tlpctlSM_ns    <= WAIT_BME2;
                     if (STR_DATA_SIZE = 1 or
                     (STR_DATA_SIZE /= 1 and addr_size = '1' and fw_offset_reg = 0))
                     and wdata_fifo_empty = '0' then
                        wdata_fifo_rd_en_int  <= '1';
                     end if;
                  end if;
               end if;
            elsif wdata_fifo_empty = '0' and (m_axis_rw_tready = '1' or block_stream_valid = '1') then
               wdata_fifo_rd_en_int  <= '1';
               en_data_str           <= '1';
            end if;

         when WAIT_BME2 =>
            if pcie_bme = '1' or block_stream_valid = '1' then
               wr_req_tlpctlSM_ns    <= SPLIT_REQUEST_2;
            end if;

      end case;
   end process;

   -- This process generates the MemWr TLP(s) that result from one AXI write request, the header is created and streamed
   -- out followed by data from the Write FIFO
   -- Works with the 'comb' process above and the write counter process below 
   wr_req_tlpctlSM_sync : process(aclk)
   begin
      if(rising_edge(aclk)) then
         if(reset = '0') then
            wr_req_tlpctlSM_cs    <= IDLE;
            first_BE_tmp          <= (others => '0');
            last_BE_tmp           <= (others => '0');
            dwlength_tmp          <= (others => '0');
            dwlength_sent         <= (others => '0');
            address_l_tmp         <= (others => '0');
            num_cmd_splits        <= 0;
            wdata_str_done_d      <= '0';
            first_BE_reg          <= (others => '0');
            waddr_reg             <= (others => '0');
            wbarhit_reg           <= (others => '0');
            last_BE_reg           <= (others => '0');
            length_bytes_reg      <= (others => '0');
            fw_offset_reg         <= 0;
            header_array_reg      <= (others => (others => '0'));
         else
            wr_req_tlpctlSM_cs    <= wr_req_tlpctlSM_ns;
            first_BE_tmp          <= first_BE_tmp_nxt;
            last_BE_tmp           <= last_BE_tmp_nxt;
            dwlength_tmp          <= dwlength_tmp_nxt;
            dwlength_sent         <= dwlength_sent_nxt;
            address_l_tmp         <= address_l_tmp_nxt;
            num_cmd_splits        <= num_cmd_splits_nxt;
            wdata_str_done_d      <= wdata_str_done_int;
            if first_BE_valid = '1' then
               first_BE_reg          <= first_BE;
               waddr_reg             <= waddr;
            end if;
            if last_BE_valid = '1' then
               last_BE_reg           <= last_BE;
               length_bytes_reg      <= length_bytes;
               fw_offset_reg         <= first_word_offset;
               wbarhit_reg           <= wbarhit;
            end if;
            if en_header_array = '1' then
               header_array_reg      <= header_array;
            end if;
         end if;
      end if;
   end process;

   wr_counter_proc : process(aclk)
   begin
      if(rising_edge(aclk)) then
         if(reset = '0') then
            wr_counter       <= 0;
         else
            if ld_counter = '1' then
               wr_counter       <= conv_integer(dwlength_tmp);
            elsif dec_counter = '1' then
               wr_counter       <= wr_counter-1;
            elsif en_data_str = '1' then
               wr_counter       <= wr_counter-STR_DATA_SIZE;
            end if;
         end if;
      end if;
   end process;

   wdata_delay : process(aclk)
   begin
      if(rising_edge(aclk)) then
         if(reset = '0') then
            wdata_d            <= (others => '0');
         else
            if wdata_fifo_rd_en_int = '1' then
               wdata_d            <= wdata;
            end if;
         end if;
      end if;
   end process;
wdatapacked32: if STR_DATA_SIZE = 1 generate
   data_packer : process(fw_offset_reg, addr_size, wdata, wdata_d)
   begin
         wdata_packed <= little_to_big_endian32(wdata); -- no packing for 32-bit DW
   end process;
end generate wdatapacked32;
wdatapacked64: if STR_DATA_SIZE = 2 generate -- 64-bit
   data_packer : process(fw_offset_reg, addr_size, wdata, wdata_d)
   begin
         if fw_offset_reg = 0 then
            if addr_size = '0' then
               wdata_packed <= little_to_big_endian32(wdata(31 downto 0)) & little_to_big_endian32(wdata_d(63 downto 32)); -- packing for 64-bit DW
            else
               wdata_packed <= little_to_big_endian32(wdata(63 downto 32)) & little_to_big_endian32(wdata(31 downto 0)); -- no packing for 64-bit DW
            end if;
         else -- if fw_offset_reg = 1 then
            if addr_size = '0' then
               wdata_packed <= little_to_big_endian32(wdata(63 downto 32)) & little_to_big_endian32(wdata(31 downto 0)); -- no packing for 64-bit DW
            else
               wdata_packed <= little_to_big_endian32(wdata(31 downto 0)) & little_to_big_endian32(wdata_d(63 downto 32)); -- packing for 64-bit DW
            end if;
         end if;
    end process;
end generate wdatapacked64;
wdatapacked128: if STR_DATA_SIZE = 4 generate -- 128-bit
   data_packer : process(fw_offset_reg, addr_size, wdata, wdata_d)
   begin
         if fw_offset_reg = 0 then
            if addr_size = '0' then
               wdata_packed <=  little_to_big_endian32(wdata(31 downto 0)) & little_to_big_endian32(wdata_d(127 downto 96))
                                & little_to_big_endian32(wdata_d(95 downto 64)) & little_to_big_endian32(wdata_d(63 downto 32)); -- packing for 128-bit DW
            else
               wdata_packed <= little_to_big_endian32(wdata(127 downto 96)) & little_to_big_endian32(wdata(95 downto 64))
                               & little_to_big_endian32(wdata(63 downto 32)) & little_to_big_endian32(wdata(31 downto 0)); -- no packing for 128-bit DW
            end if;
         elsif fw_offset_reg = 1 then
            if addr_size = '0' then
               wdata_packed <= little_to_big_endian32(wdata(63 downto 32)) & little_to_big_endian32(wdata(31 downto 0))
               & little_to_big_endian32(wdata_d(127 downto 96)) & little_to_big_endian32(wdata_d(95 downto 64)); -- packing for 128-bit DW
            else
               wdata_packed <= little_to_big_endian32(wdata(31 downto 0)) & little_to_big_endian32(wdata_d(127 downto 96))
               & little_to_big_endian32(wdata_d(95 downto 64)) & little_to_big_endian32(wdata_d(63 downto 32)); -- packing for 128-bit DW
            end if;
         elsif fw_offset_reg = 2 then
            if addr_size = '0' then
               wdata_packed <= little_to_big_endian32(wdata(95 downto 64)) & little_to_big_endian32(wdata(63 downto 32))
               & little_to_big_endian32(wdata(31 downto 0)) & little_to_big_endian32(wdata_d(127 downto 96)); -- packing for 128-bit DW
            else
               wdata_packed <= little_to_big_endian32(wdata(63 downto 32)) & little_to_big_endian32(wdata(31 downto 0))
               & little_to_big_endian32(wdata_d(127 downto 96)) & little_to_big_endian32(wdata_d(95 downto 64)); -- packing for 128-bit DW
            end if;
         else -- if fw_offset_reg = 3 then
            if addr_size = '0' then
               wdata_packed <= little_to_big_endian32(wdata(127 downto 96)) & little_to_big_endian32(wdata(95 downto 64))
               & little_to_big_endian32(wdata(63 downto 32)) & little_to_big_endian32(wdata(31 downto 0)); -- no packing for 128-bit DW
            else
               wdata_packed <= little_to_big_endian32(wdata(95 downto 64)) & little_to_big_endian32(wdata(63 downto 32))
               & little_to_big_endian32(wdata(31 downto 0)) & little_to_big_endian32(wdata_d(127 downto 96)); -- packing for 128-bit DW
            end if;
         end if;
   end process;
end generate wdatapacked128;
end architecture;
