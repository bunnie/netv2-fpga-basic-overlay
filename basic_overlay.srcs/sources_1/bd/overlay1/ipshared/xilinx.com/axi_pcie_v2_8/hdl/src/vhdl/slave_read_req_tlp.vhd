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
-- Filename:        slave_read_req_tlp.vhd
--
-- Description:     
--                  
-- This VHDL file is an HDL design file for the AXI slave read bridge. 
--                   
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              slave_read_req_tlp.vhd
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.conv_integer;
use ieee.std_logic_arith.conv_std_logic_vector;

--------------------------------------------------------------------------------
--Notes
--------------------------------------------------------------------------------



entity slave_read_req_tlp is
   generic(
      --Family Generics
      C_FAMILY                : string  :="virtex7";
      C_S_AXI_ID_WIDTH        : integer := 4;
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
      C_AXIBAR_AS_5           : integer := 0;
      C_EP_LINK_PARTNER_RCB   : integer := 0
   );
   port(
      -- AXI Global
      aclk                    : in  std_logic;
      reset                   : in  std_logic;

      -- internal interface
      maxreadreqsize          : in  std_logic_vector(2 downto 0);
      raddr                   : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      length_bytes            : in  std_logic_vector(12 downto 0);
      rbarhit                 : in  std_logic_vector(C_AXIBAR_NUM-1 downto 0);
      araddr_2lsbs            : in  std_logic_vector(1 downto 0);
      last_BE                 : in  std_logic_vector(3 downto 0);
      reqID                   : in  std_logic_vector(15 downto 0);
      req_active              : in  std_logic;
      read_req_sent           : out std_logic;
      tag_sent                : out std_logic_vector(7 downto 0);
      length_sent             : out std_logic_vector(9 downto 0);
      illegal_burst           : in  std_logic;
      illegal_burst_trns      : out std_logic;
      total_length_out        : in  integer;
      pcie_bme                : in  std_logic;
      blk_lnk_up              : in  std_logic;
      tag_pending_for_cpl     : in  std_logic;

      -- AXI2PCIE translation vectors
      axibar2pciebar0         : in  std_logic_vector(63 downto 0);
      axibar2pciebar1         : in  std_logic_vector(63 downto 0);
      axibar2pciebar2         : in  std_logic_vector(63 downto 0);
      axibar2pciebar3         : in  std_logic_vector(63 downto 0);
      axibar2pciebar4         : in  std_logic_vector(63 downto 0);
      axibar2pciebar5         : in  std_logic_vector(63 downto 0);
      
      -- AXI Streaming interface
      m_axis_rr_tvalid        : out std_logic;
      m_axis_rr_tready        : in  std_logic;
      m_axis_rr_tdata         : out std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
      m_axis_rr_tstrb         : out std_logic_vector(C_M_AXIS_DATA_WIDTH/8-1 downto 0);
      m_axis_rr_tlast         : out std_logic;
      config_gen_req          : in  std_logic
   );
end slave_read_req_tlp;

   architecture structure of slave_read_req_tlp is
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of structure : architecture is "yes";

--TLP Header Structure

-- Fmt  00      MemWr 3DW (32-bit Address)
--      01      MemWr 4DW (64-bit Address)
-- Type 00000   always for MemRd
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
   constant FCLIMIT_CPL_V6             : integer := 154*4;
   constant FCLIMIT_CPL_K7             : integer := 154*4;
   constant FCLIMIT_CPL_S6             : integer := 211*4;

   constant FCLIMIT_CPL_FAILSAFE       : integer := 129*4;
   -----------------------------------------------------------------------------
   -- State Machines
   -----------------------------------------------------------------------------

   type rd_req_tlpctlSM_STATES is (IDLE,
                                   SPLIT_REQUEST_1,
                                   SPLIT_REQUEST_2,
                                   SPLIT_REQUEST_3,
                                   BUILD_HEADER,
                                   STR_HEADER_1,
                                   STR_HEADER_2,
                                   STR_HEADER_3,
                                   STR_HEADER_4,
                                   REQ_COMPLETE);
   signal rd_req_tlpctlSM_cs     : rd_req_tlpctlSM_STATES;
   signal rd_req_tlpctlSM_ns     : rd_req_tlpctlSM_STATES;

   signal axibar2pciebar         : vector_array_type;

   signal first_BE               : std_logic_vector(3 downto 0);
   signal first_BE_reg           : std_logic_vector(3 downto 0);
   signal last_BE_reg            : std_logic_vector(3 downto 0);
   signal araddr_2lsbs_reg       : std_logic_vector(1 downto 0);
   signal raddr_reg              : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
   signal rbarhit_reg            : std_logic_vector(C_AXIBAR_NUM-1 downto 0);
   signal length_bytes_reg       : std_logic_vector(12 downto 0);
   signal en_header_array        : std_logic;
   signal enable_addr            : std_logic;
   signal addr_size              : std_logic;
   signal ep                     : std_logic := '0';
   signal address_l              : std_logic_vector(31 downto 0) := x"9ABCDEF0";
   signal address_h              : std_logic_vector(31 downto 0) := x"12345678";
   signal tvalid_int             : std_logic;
   signal tlast_int              : std_logic;
   signal read_req_sent_int      : std_logic;
   signal mrrs_actual            : std_logic_vector(14 downto 0);
   signal first_BE_tmp           : std_logic_vector(3 downto 0);
   signal first_BE_tmp_nxt       : std_logic_vector(3 downto 0);
   signal last_BE_tmp            : std_logic_vector(3 downto 0);
   signal last_BE_tmp_nxt        : std_logic_vector(3 downto 0);
   signal dwlength_tmp           : std_logic_vector(9 downto 0);
   signal dwlength_tmp_nxt       : std_logic_vector(9 downto 0);
   signal dwlength_sent          : std_logic_vector(9 downto 0);
   signal dwlength_sent_nxt      : std_logic_vector(9 downto 0);
   signal address_l_tmp          : std_logic_vector(31 downto 0);
   signal address_l_tmp_nxt      : std_logic_vector(31 downto 0);
   signal num_cmd_splits_nxt     : integer range 0 to 63;
   signal num_cmd_splits         : integer range 0 to 63;
   signal illegal_burst_trns_int : std_logic;
   signal tag_count              : integer range 0 to 255;
   signal tag_count_nxt          : integer range 0 to 255;
   signal tag                    : std_logic_vector(7 downto 0) := x"00";
   constant MAX_TAG              : integer range 0 to 255 := 255;
   signal odd_bytes              : integer range 0 to 2;
   signal tlast_d                : std_logic;
   signal fclimit                : integer;
   signal fclimit_block          : std_logic;
   signal s6_limit_adjust        : integer := 0; -- CR # 633509
   signal v6_limit_adjust        : integer := 0; -- CR # 633509
   signal link_down_latch        : std_logic;
   signal first_data_blocked     : std_logic;
   signal v6_limit_adjust_failsafe : integer := 0;

begin

   axibar2pciebar(0)    <= axibar2pciebar0;
   axibar2pciebar(1)    <= axibar2pciebar1;
   axibar2pciebar(2)    <= axibar2pciebar2;
   axibar2pciebar(3)    <= axibar2pciebar3;
   axibar2pciebar(4)    <= axibar2pciebar4;
   axibar2pciebar(5)    <= axibar2pciebar5;
   
   m_axis_rr_tvalid     <= tvalid_int;
   m_axis_rr_tlast      <= tlast_int;
   illegal_burst_trns   <= illegal_burst_trns_int;

   read_req_sent        <= read_req_sent_int;
   tag_sent             <= tag;

   length_sent          <= dwlength_tmp;
   
   mrrs_actual          <= SHL("000000010000000", maxreadreqsize);
   tag                  <= conv_std_logic_vector(tag_count, 8);

   first_BE               <= x"F" when araddr_2lsbs = "00" and length_bytes > 3 else
                             x"7" when araddr_2lsbs = "00" and length_bytes = 3 else
                             x"3" when araddr_2lsbs = "00" and length_bytes = 2 else
                             x"1" when araddr_2lsbs = "00" and length_bytes = 1 else
                             x"E" when araddr_2lsbs = "01" and length_bytes > 2 else
                             x"6" when araddr_2lsbs = "01" and length_bytes = 2 else
                             x"2" when araddr_2lsbs = "01" and length_bytes = 1 else
                             x"C" when araddr_2lsbs = "10" and length_bytes > 1 else
                             x"4" when araddr_2lsbs = "10" and length_bytes = 1 else
                             x"8";

   address_translation_proccess : process(rbarhit_reg, raddr_reg, axibar2pciebar)
   variable var_addr : std_logic_vector(63 downto 0);
   begin
      var_addr := (others => '0');
      for i in C_AXIBAR_NUM-1 downto 0 loop
         if rbarhit_reg(i) = '1' then
            var_addr := axibar2pciebar(i);
            for j in C_S_AXI_ADDR_WIDTH-1 downto 0 loop
               if(C_MASK_ARRAY(i)(j) = '1') then
                  var_addr(j) := raddr_reg(j);
               end if;
            end loop;
         end if;
         address_l   <= var_addr(31 downto 0);
         address_h   <= var_addr(63 downto 32);
      end loop;
   end process;


   addr_size_proccess : process(rbarhit_reg,axibar2pciebar)
   begin
      addr_size         <= '0';
      for i in C_AXIBAR_NUM-1 downto 0 loop
         if rbarhit_reg(i) = '1' then
            if C_AXIBAR_AS_ARRAY(i) = 1 and axibar2pciebar(i)(63 downto 32) /= x"0000_0000" then
               addr_size         <= '1';
            end if;
         end if;
      end loop;
   end process;


   illegal_burst_trns_proccess : process(aclk)
   begin
      if(rising_edge(aclk)) then
         if(reset = '0' or read_req_sent_int = '1') then
            illegal_burst_trns_int <= '0';
         elsif(illegal_burst = '1') then
            illegal_burst_trns_int <= '1';
         end if;
      end if;
   end process;
   
   odd_bytes_process : process(length_bytes_reg, araddr_2lsbs_reg)
   variable sum : integer;
   begin
      sum := conv_integer(length_bytes_reg(1 downto 0)) + conv_integer(araddr_2lsbs_reg);
      if sum = 0 then
         odd_bytes             <= 0;
      elsif sum < 5 then
         odd_bytes             <= 1;
      else
         odd_bytes             <= 2;
      end if;
   end process;

   s6_limit_adjust <= conv_integer(mrrs_actual(14 downto 2)) when maxreadreqsize(2) = '0' else 256;
   v6_limit_adjust <= conv_integer(mrrs_actual(14 downto 2)) when maxreadreqsize /= "101" else 512;
   
   v6_limit_adjust_failsafe <= 216 when maxreadreqsize = "000" else
                               164 when maxreadreqsize = "001" else
                               conv_integer(mrrs_actual(14 downto 2)) when maxreadreqsize /= "101" else
                               512;
   
   fclimit <= FCLIMIT_CPL_FAILSAFE - v6_limit_adjust_failsafe when C_FAMILY /= "spartan6" and C_EP_LINK_PARTNER_RCB = 0 else
              FCLIMIT_CPL_S6 - s6_limit_adjust when C_FAMILY = "spartan6" else
              FCLIMIT_CPL_V6 - v6_limit_adjust when C_FAMILY = "virtex6" and C_EP_LINK_PARTNER_RCB = 1 else
              FCLIMIT_CPL_K7 - v6_limit_adjust;

   fclimit_block <= '0' when total_length_out < fclimit else '1'; --block requests when fclimit is reached

   link_down_latch_proccess : process(aclk)
   begin
      if(rising_edge(aclk)) then
         if(reset = '0') then
            link_down_latch    <= '0';
         elsif link_down_latch = '0' and blk_lnk_up = '0' and
         (tvalid_int = '0' or (tlast_int = '1' and m_axis_rr_tready = '1')) then
            link_down_latch    <= '1';
         elsif(link_down_latch = '1' and blk_lnk_up = '1') then
            link_down_latch    <= '0';
         elsif(first_data_blocked = '1') then
            link_down_latch    <= '1';
         end if;
      end if;
   end process;

   -- This process generates the MemRd TLP(s) that result from one AXI read request
   -- Works with the 'sync' process below 
   rd_req_tlpctlSM_comb : process(rd_req_tlpctlSM_cs, req_active, addr_size, ep, length_bytes_reg, reqID, first_BE_reg,
                                  address_l, address_h, m_axis_rr_tready, mrrs_actual, first_BE_tmp, last_BE_tmp, tag,
                                  dwlength_tmp, address_l_tmp, num_cmd_splits, dwlength_tmp_nxt, last_BE_reg, link_down_latch,
                                  odd_bytes, dwlength_sent, header_array_reg, illegal_burst_trns_int, fclimit_block,
                                  pcie_bme, blk_lnk_up, tag_pending_for_cpl, config_gen_req)
   begin
      rd_req_tlpctlSM_ns    <= rd_req_tlpctlSM_cs;
      en_header_array       <= '0';
      header_array          <= (others => (others => '0'));
      tlast_int             <= '0';
      m_axis_rr_tdata       <= (others => '0');
      tvalid_int            <= '0';
      m_axis_rr_tstrb       <= (others => '0');
      first_BE_tmp_nxt      <= first_BE_tmp;
      last_BE_tmp_nxt       <= last_BE_tmp;
      dwlength_tmp_nxt      <= dwlength_tmp;
      dwlength_sent_nxt     <= dwlength_sent;
      address_l_tmp_nxt     <= address_l_tmp;
      num_cmd_splits_nxt    <= num_cmd_splits;
      read_req_sent_int     <= '0';
      enable_addr           <= '0';
      first_data_blocked    <= '0';
      case rd_req_tlpctlSM_cs is

         when IDLE =>
            if req_active = '1'  and (pcie_bme = '1' or link_down_latch = '1') then
               enable_addr           <= '1';
               if config_gen_req = '0' then
               rd_req_tlpctlSM_ns    <= SPLIT_REQUEST_1;
	       else
	          rd_req_tlpctlSM_ns    <= IDLE;
	       end if;
            end if;

         when SPLIT_REQUEST_1 =>
            if (length_bytes_reg(12 downto 2) + odd_bytes) <= mrrs_actual(12 downto 2) then
               first_BE_tmp_nxt      <= first_BE_reg;
               dwlength_tmp_nxt      <= length_bytes_reg(11 downto 2) + odd_bytes;
               if dwlength_tmp_nxt = "0000000001" then
                  last_BE_tmp_nxt       <= x"0";
               else
                  last_BE_tmp_nxt       <= last_BE_reg;
               end if;
               address_l_tmp_nxt     <= address_l;
            else--if num_cmd_splits = 0 then
               num_cmd_splits_nxt    <= 1;
               first_BE_tmp_nxt      <= first_BE_reg;
               last_BE_tmp_nxt       <= x"F";
               dwlength_tmp_nxt      <= mrrs_actual(11 downto 2);
               dwlength_sent_nxt     <= mrrs_actual(11 downto 2);
               address_l_tmp_nxt     <= address_l;
            end if;
            rd_req_tlpctlSM_ns    <= BUILD_HEADER;
         when SPLIT_REQUEST_2 =>
            if ((conv_integer(length_bytes_reg(12 downto 2)) + odd_bytes) - dwlength_sent) <= mrrs_actual(12 downto 2)
               then 
               num_cmd_splits_nxt    <= 0;
               dwlength_tmp_nxt      <= (length_bytes_reg(11 downto 2) - dwlength_sent) + odd_bytes;
               rd_req_tlpctlSM_ns    <= SPLIT_REQUEST_3;
            else
               num_cmd_splits_nxt    <= num_cmd_splits + 1;
               first_BE_tmp_nxt      <= x"F";
               last_BE_tmp_nxt       <= x"F";
               dwlength_tmp_nxt      <= mrrs_actual(11 downto 2);
               dwlength_sent_nxt     <= dwlength_sent + mrrs_actual(11 downto 2);
               rd_req_tlpctlSM_ns    <= BUILD_HEADER;
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
            rd_req_tlpctlSM_ns    <= BUILD_HEADER;

         when BUILD_HEADER =>
            header_array(0)       <= "00" & addr_size & "00" & x"000" & ep & x"0" & dwlength_tmp(9 downto 0);
            header_array(1)       <= reqID & tag & last_BE_tmp & first_BE_tmp;
            if addr_size = '0' then
               header_array(2)       <= address_l_tmp;
               header_array(3)       <= (others => '0');
            else
               header_array(2)       <= address_h;
               header_array(3)       <= address_l_tmp;
            end if;
            if tag_pending_for_cpl = '1' then
              rd_req_tlpctlSM_ns  <= BUILD_HEADER;
            else
              rd_req_tlpctlSM_ns    <= STR_HEADER_1;
            end if;
            en_header_array       <= '1';

         when STR_HEADER_1 =>
            if STR_DATA_SIZE = 1 then    -- 32-bit
               m_axis_rr_tdata    <= header_array_reg(0);
            elsif STR_DATA_SIZE = 2 then -- 64-bit
               m_axis_rr_tdata    <= header_array_reg(1) & header_array_reg(0);
            else--if STR_DATA_SIZE = 4 then -- 128-bit
               tlast_int          <= '1';
               m_axis_rr_tdata    <= header_array_reg(3) & header_array_reg(2) & header_array_reg(1)
                                     & header_array_reg(0);
            end if;
            if illegal_burst_trns_int = '0' and fclimit_block = '0' and link_down_latch = '0' and blk_lnk_up = '1' then
               tvalid_int         <= '1';
            end if;
            if STR_DATA_SIZE = 4 then -- 128-bit
               if addr_size = '0' then
                  m_axis_rr_tstrb    <= x"0FFF";
               else
                  m_axis_rr_tstrb    <= (others => '1');
               end if;
            else
               m_axis_rr_tstrb    <= (others => '1');
            end if;
            if (m_axis_rr_tready = '1' and fclimit_block = '0') or illegal_burst_trns_int = '1' or link_down_latch = '1' then
               if blk_lnk_up = '0' then
                  first_data_blocked    <= '1';
               end if;
               if STR_DATA_SIZE = 4 then-- 128-bit
                  rd_req_tlpctlSM_ns    <= REQ_COMPLETE;
               else
                  rd_req_tlpctlSM_ns    <= STR_HEADER_2;
               end if;
            end if;

         when STR_HEADER_2 =>
            if STR_DATA_SIZE = 1 then    -- 32-bit
               m_axis_rr_tdata    <= header_array_reg(1);
               -- CR # 646004
            elsif STR_DATA_SIZE = 2 then -- 64-bit
               tlast_int          <= '1';
               m_axis_rr_tdata    <= header_array_reg(3) & header_array_reg(2);
            end if;
            if illegal_burst_trns_int = '0' and fclimit_block = '0' and link_down_latch = '0' then
               tvalid_int         <= '1';
            end if;
            if STR_DATA_SIZE = 2 then -- 64-bit
               if addr_size = '0' then 
                  m_axis_rr_tstrb    <= x"0F";
               else
                  m_axis_rr_tstrb    <= (others => '1');
               end if;
            else
               m_axis_rr_tstrb    <= (others => '1');
            end if;
            if (m_axis_rr_tready = '1' and fclimit_block = '0') or illegal_burst_trns_int = '1' or link_down_latch = '1' then
               if STR_DATA_SIZE < 2 then
                  rd_req_tlpctlSM_ns    <= STR_HEADER_3;
               else
                  rd_req_tlpctlSM_ns    <= REQ_COMPLETE;
               end if;
            end if;

         when STR_HEADER_3 =>
            m_axis_rr_tdata(31 downto 0)    <= header_array_reg(2);
            if illegal_burst_trns_int = '0' and fclimit_block = '0' and link_down_latch = '0' then
               tvalid_int         <= '1';
            end if;
            m_axis_rr_tstrb    <= (others => '1');
            if addr_size = '0' then
               tlast_int          <= '1';
               if (m_axis_rr_tready = '1' and fclimit_block = '0') or illegal_burst_trns_int = '1' or link_down_latch = '1' then
                  rd_req_tlpctlSM_ns <= REQ_COMPLETE;
               end if;
            elsif (m_axis_rr_tready = '1' and fclimit_block = '0') or illegal_burst_trns_int = '1' or link_down_latch = '1' then
               rd_req_tlpctlSM_ns <= STR_HEADER_4;
            end if;

         when STR_HEADER_4 =>
            m_axis_rr_tdata(31 downto 0)    <= header_array_reg(3);
            if illegal_burst_trns_int = '0' and fclimit_block = '0' and link_down_latch = '0' then
               tvalid_int         <= '1';
            end if;
            m_axis_rr_tstrb    <= (others => '1');
            tlast_int          <= '1';
            if (m_axis_rr_tready = '1' and fclimit_block = '0') or illegal_burst_trns_int = '1' or link_down_latch = '1' then
               rd_req_tlpctlSM_ns    <= REQ_COMPLETE;
            end if;

         when REQ_COMPLETE =>
            if num_cmd_splits = 0 then
               read_req_sent_int     <= '1';
               rd_req_tlpctlSM_ns    <= IDLE;
            else
               rd_req_tlpctlSM_ns    <= SPLIT_REQUEST_2;
            end if;

      end case;
   end process;

   -- This process generates the MemRd TLP(s) that result from one AXI read request
   -- Works with the 'comb' process above 
   rd_req_tlpctlSM_sync : process(aclk)
   begin
      if(rising_edge(aclk)) then
         if(reset = '0') then
            rd_req_tlpctlSM_cs <= IDLE;
            first_BE_tmp       <= (others => '0');
            last_BE_tmp        <= (others => '0');
            dwlength_tmp       <= (others => '0');
            dwlength_sent      <= (others => '0');
            address_l_tmp      <= (others => '0');
            num_cmd_splits     <= 0;
            first_BE_reg       <= (others => '0');
            last_BE_reg        <= (others => '0');
            raddr_reg          <= (others => '0');
            rbarhit_reg        <= (others => '0');
            length_bytes_reg   <= (others => '0');
            header_array_reg   <= (others => (others => '0'));
         else
            rd_req_tlpctlSM_cs <= rd_req_tlpctlSM_ns;
            first_BE_tmp       <= first_BE_tmp_nxt;
            last_BE_tmp        <= last_BE_tmp_nxt;
            dwlength_tmp       <= dwlength_tmp_nxt;
            dwlength_sent      <= dwlength_sent_nxt;
            address_l_tmp      <= address_l_tmp_nxt;
            num_cmd_splits     <= num_cmd_splits_nxt;
            if enable_addr = '1' then
               first_BE_reg       <= first_BE;
               last_BE_reg        <= last_BE;
               raddr_reg          <= raddr;
               rbarhit_reg        <= rbarhit;
               length_bytes_reg   <= length_bytes;
               araddr_2lsbs_reg   <= araddr_2lsbs;
            end if;
            if en_header_array = '1' then
               header_array_reg   <= header_array;
            end if;
         end if;
      end if;
   end process;

-- TAG counter
   tag_counter_comb : process(tag_count, tlast_int, tlast_d)
   begin
      tag_count_nxt         <= tag_count;
      if tlast_int = '0' and tlast_d = '1' then -- neg edge
         if tag_count = MAX_TAG then
            tag_count_nxt         <= 0;
         else
            tag_count_nxt         <= tag_count + 1;
         end if;
      end if;
   end process;

   tag_counter_sync : process(aclk)
   begin
      if(rising_edge(aclk)) then
         if(reset = '0') then
            tag_count             <= 0;
            tlast_d               <= '0';
         else
            tag_count             <= tag_count_nxt;
            tlast_d               <= tlast_int;
         end if;
      end if;
   end process;


end architecture;
