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
-- Filename:        axi_slave_write.vhd
--
-- Description:     
--                  
-- This VHDL file is the HDL design file for the AXI slave write bridge. 
--                   
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_slave_write.vhd
--
-------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.conv_integer;
use ieee.std_logic_arith.conv_std_logic_vector;

library lib_pkg_v1_0_2;
use lib_pkg_v1_0_2.lib_pkg.log2;


--------------------------------------------------------------------------------
--Notes
--------------------------------------------------------------------------------



entity axi_slave_write is
   generic(
      --Family Generics
      C_FAMILY                : string  :="virtex7";
      C_S_AXI_ID_WIDTH        : integer := 4;
      C_S_AXI_ADDR_WIDTH      : integer := 32;
      C_S_AXI_DATA_WIDTH      : integer := 32;
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
      C_AXIBAR_HIGHADDR_5     : std_logic_vector := x"0000_0000"
   );
   port(

      -- AXI Global
      s_axi_aclk              : in  std_logic;
      reset                   : in  std_logic;

      -- AXI Slave Write Address Channel
      s_axi_awid              : in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      s_axi_awaddr            : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      s_axi_awregion          : in  std_logic_vector(3 downto 0);
      s_axi_awlen             : in  std_logic_vector(7 downto 0);
      s_axi_awsize            : in  std_logic_vector(2 downto 0);
      s_axi_awburst           : in  std_logic_vector(1 downto 0);
      s_axi_awvalid           : in  std_logic;
      s_axi_awready           : out std_logic;

      -- AXI Slave Write Data Channel
      s_axi_wdata             : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      s_axi_wstrb             : in  std_logic_vector(C_S_AXI_DATA_WIDTH/8-1 downto 0);
      s_axi_wlast             : in  std_logic;
      s_axi_wvalid            : in  std_logic;
      s_axi_wready            : out std_logic;

      -- AXI Slave Write Response Channel
      s_axi_bid               : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      s_axi_bresp             : out std_logic_vector(1 downto 0);
      s_axi_bvalid            : out std_logic;
      s_axi_bready            : in  std_logic;

      -- Ordering signals
      pend_slv_wr_cnt         : out std_logic_vector(1 downto 0);
      cmpl_slv_wr_cnt         : out std_logic_vector(1 downto 0);
      slv_write_idle          : out std_logic;
      -- internal interface
      wdata                   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      wdata_valid             : out std_logic;
      first_word_offset       : out integer;
      wdata_fifo_full         : in  std_logic;
      wdata_fifo_allmost_full : in  std_logic;
      waddr                   : out std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      length_bytes            : out std_logic_vector(12 downto 0);
      wbarhit                 : out std_logic_vector(C_AXIBAR_NUM-1 downto 0);
      first_BE                : out std_logic_vector(3 downto 0);
      first_BE_valid          : out std_logic;
      last_BE                 : out std_logic_vector(3 downto 0);
      last_BE_valid           : out std_logic;
      wdata_str_done          : in  std_logic;
      wdata_str_start         : in  std_logic;
      illegal_burst           : out std_logic;
      illegal_burst_trns      : out std_logic;
      block_trns_lnkdwn       : out std_logic;
      blk_lnk_up              : in  std_logic;
      m_axis_rw_tvalid        : in  std_logic;
      pcie_bme                : in  std_logic;
      tlp_str_start           : in  std_logic;  -- Indicates if Write Req TLP started to Enhanced bridge
      wr_ptr                  : out std_logic;
      rd_ptr                  : out std_logic
   );
end axi_slave_write;

architecture structure of axi_slave_write is
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of structure : architecture is "yes";

   type addr_array_type is array (natural range <>) of std_logic_vector(31 downto 0);

   constant C_BAR_ADDR_MASK_ARRAY : addr_array_type := (
                             x"0000_0000" + C_AXIBAR_0 xnor C_AXIBAR_HIGHADDR_0, 
                             x"0000_0000" + C_AXIBAR_1 xnor C_AXIBAR_HIGHADDR_1, 
                             x"0000_0000" + C_AXIBAR_2 xnor C_AXIBAR_HIGHADDR_2, 
                             x"0000_0000" + C_AXIBAR_3 xnor C_AXIBAR_HIGHADDR_3, 
                             x"0000_0000" + C_AXIBAR_4 xnor C_AXIBAR_HIGHADDR_4, 
                             x"0000_0000" + C_AXIBAR_5 xnor C_AXIBAR_HIGHADDR_5);

   constant C_BAR_HIGHADDR_ARRAY : addr_array_type := (C_AXIBAR_HIGHADDR_0, 
                                                       C_AXIBAR_HIGHADDR_1, 
                                                       C_AXIBAR_HIGHADDR_2, 
                                                       C_AXIBAR_HIGHADDR_3, 
                                                       C_AXIBAR_HIGHADDR_4, 
                                                       C_AXIBAR_HIGHADDR_5);

   constant C_BAR_ARRAY : addr_array_type := (C_AXIBAR_0, 
                                              C_AXIBAR_1, 
                                              C_AXIBAR_2, 
                                              C_AXIBAR_3, 
                                              C_AXIBAR_4, 
                                              C_AXIBAR_5);

   type wid_array is array (0 to 1) of std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
   type waddr_array is array (0 to 1) of std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
   type wregion_array is array (0 to 1) of std_logic_vector(3 downto 0);
   type wlength_array is array (0 to 1) of std_logic_vector(7 downto 0);
   type wsize_array is array (0 to 1) of std_logic_vector(2 downto 0);
   type wburst_array is array (0 to 1) of std_logic_vector(1 downto 0);
   type barhit_array is array (0 to 1) of std_logic_vector(C_AXIBAR_NUM-1 downto 0);

   signal wid_reg             : wid_array := ((others => '0'),(others => '0'));
   signal waddr_reg           : waddr_array;
   signal wregion_reg         : wregion_array;
   signal wlength_reg         : wlength_array;
   signal wsize_reg           : wsize_array;
   signal wburst_reg          : wburst_array;
   signal barhit_reg          : barhit_array;

   constant ZEROS             : std_logic_vector(5 downto 0) := "000000";
   signal barhit              : std_logic_vector(C_AXIBAR_NUM-1 downto 0);
   signal awready_int         : std_logic := '0';
   signal bvalid_ack          : std_logic := '0';
   signal en_bvalid           : std_logic;
   signal bvalid_int           : std_logic := '0';
   signal illegal_burst_int   : std_logic;
   signal illegal_burst_log   : std_logic_vector(1 downto 0);
   signal bresp_int           : wburst_array := ((others => '0'),(others => '0'));
   signal req_active          : std_logic;
   signal en_barhit           : std_logic;
   signal wr_req_ptr_in       : integer range 0 to 1 := 0;
   signal wr_req_ptr_out      : integer range 0 to 1 := 0;
   signal size                : integer range 1 to 16;
   signal num_beats           : integer range 1 to 16;
   signal beat_count          : integer range 0 to 16;
   signal en_first_wdata      : std_logic;
   signal en_wdata            : std_logic;
   signal write_done          : std_logic;

   constant NUM_STROBES       :integer := C_S_AXI_DATA_WIDTH/8;
   type strobe_array is array (0 to 3) of std_logic_vector(NUM_STROBES-1 downto 0);
   signal strobe_pipe         : strobe_array;
   --signal en_strobes0         : std_logic;
   --signal en_strobes1         : std_logic;
   signal en_strobes2         : std_logic;
   signal en_first_BE_valid   : std_logic;
   signal last_BE_valid_int   : std_logic;
   signal length_bytes_int        : std_logic_vector(12 downto 0);
   signal first_word_offset_int   : integer range 0 to (C_S_AXI_DATA_WIDTH/32-1) := 0; -- CR # 633509
   signal last_word_offset    : integer := 0; -- CR # 633509
   signal wdata_valid_int     : std_logic;
   signal en_wdata_d          : std_logic;
   signal s_axi_wready_int    : std_logic := '0';
   signal wr_req_ptr_in_inv   : integer range 0 to 1 := 0;
   signal wr_req_ptr_out_int  : integer range 0 to 1 := 0;
   signal blk_lnk_up_d        : std_logic;
   signal blk_lnk_down_reqs   : integer range 0 to 2;
   signal pend_slv_wr_cnt_int : std_logic_vector(1 downto 0);
   signal cmpl_slv_wr_cnt_int : std_logic_vector(1 downto 0);
   signal slv_write_idle_int  : std_logic;
   signal two_req_indicator   : std_logic;
   signal null_beat_count     : integer;
   signal address_offset      : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
   signal find_first_word_offset : std_logic;

   signal wr_ptr_incr         : std_logic;
   signal rd_ptr_incr         : std_logic;
   signal normalize_rd_ptr    : std_logic;
   signal wr_ptr_int          : std_logic;
   signal rd_ptr_int          : std_logic;
   signal wdata_str_done_sticky : std_logic;
   signal wdata_str_start_sticky: std_logic;
   signal wdata_str_start_d   : std_logic;
   signal last_bresp_ok       : std_logic;
   signal wdata_str_done_and_bresp_ok : std_logic;

   -----------------------------------------------------------------------------
   -- State Machines
   -----------------------------------------------------------------------------

   type write_reqSM_STATES is (IDLE,
                               CHECK,
                               CHECK2,
                               ONE_REQ_ACTIVE,
                               TWO_REQ_ACTIVE);
   signal write_reqSM_cs : write_reqSM_STATES;
   signal write_reqSM_ns : write_reqSM_STATES;

   type first_BE_SM_STATES is (IDLE,
                               FIRST_BEAT);
   signal first_BE_SM_cs : first_BE_SM_STATES;
   signal first_BE_SM_ns : first_BE_SM_STATES;

   type write_dataSM_STATES is (IDLE,
                                FIRST_DATA_WORD,
                                DATA_STREAM,
                                DONE,
                                WAIT_TLP_START,
                                WAIT_STR_DONE,
                                FIRST_DATA_WORD_2,
                                DATA_STREAM_2,
                                DONE_2);
                                
   signal write_dataSM_cs : write_dataSM_STATES;
   signal write_dataSM_ns : write_dataSM_STATES;

-- This function calculates the number of ls byte enable bits that are zero
   function num_lsb_zeros(strobes : std_logic_vector(NUM_STROBES-1 downto 0))
                          return integer is
      variable count     : integer;
      variable first_one : boolean;
      variable i         : integer;
   begin
      first_one  := FALSE;
      count      := 0;
      for i in 0 to C_S_AXI_DATA_WIDTH/8-1 loop
         if (strobes(i) = '1'and (first_one = FALSE)) then
            first_one  := TRUE;
            count := 0 + i;
         end if;
         -- Nam - never hit condition -  we don't allow non-first data beat with no strobe
         -- NAM / JRH fixed typo. Was b 2.
         -- coverage off -item c 1 -condrow 2
         --if (not(first_one) and strobes(i) = '0') then
         --   count := count + 1;
         --end if;
      end loop;
      return(count);
   end function;

-- This function calculates the number of ms byte enable bits that are zero
   function num_msb_zeros(strobes : std_logic_vector(NUM_STROBES-1 downto 0))
                          return integer is
      variable count     : integer;
      variable first_one : boolean;
      variable i         : integer;
      constant LIMIT : integer := C_S_AXI_DATA_WIDTH/8;
   begin
      first_one  := FALSE;
      count      := LIMIT;
      for i in LIMIT-1 downto 0 loop
         if (strobes(i) = '1' and (first_one = FALSE)) then
            first_one  := TRUE;
            count := LIMIT - 1 - i;
         end if;
         -- Nam - never hit condition -  we don't allow non-first data beat with no strobe
         -- NAM / JRH fixed typo. Was b 2.
         -- coverage off -item c 1 -condrow 2
         --if (not(first_one) and strobes(i) = '0') then
            --count := count + 1;
         --end if;
      end loop;
      return(count);
   end function;


begin


   s_axi_awready          <= awready_int;
   s_axi_bvalid           <= bvalid_int;
   first_word_offset      <= first_word_offset_int;
   s_axi_bid              <= wid_reg(wr_req_ptr_out_int);
   wr_req_ptr_in_inv      <= 1 when wr_req_ptr_in = 0 else 0;
   s_axi_bresp            <= bresp_int(wr_req_ptr_out_int) when bvalid_ack = '1' and blk_lnk_up = '1' else
                             "10" when bvalid_ack = '1' and blk_lnk_up = '0' else -- SLVERR always when link down
                             (others => '0');

   length_bytes_int       <= SHL(("00000" & wlength_reg(wr_req_ptr_out)) + 1 - null_beat_count, conv_std_logic_vector(log2(C_S_AXI_DATA_WIDTH/8), 4))
                             - (first_word_offset_int + last_word_offset)*4;
   length_bytes           <= length_bytes_int;

   waddr                  <= address_offset(C_S_AXI_ADDR_WIDTH-1 downto 2) + waddr_reg(wr_req_ptr_out)(C_S_AXI_ADDR_WIDTH-1 downto 2) & "00"
                                when first_word_offset_int = 0
                             else address_offset(C_S_AXI_ADDR_WIDTH-1 downto 3) + waddr_reg(wr_req_ptr_out)(C_S_AXI_ADDR_WIDTH-1 downto 3) & "100"
                                when first_word_offset_int = 1
                             else address_offset(C_S_AXI_ADDR_WIDTH-1 downto 4) + waddr_reg(wr_req_ptr_out)(C_S_AXI_ADDR_WIDTH-1 downto 4) & "1000"
                                when first_word_offset_int = 2
                             else address_offset(C_S_AXI_ADDR_WIDTH-1 downto 4) + waddr_reg(wr_req_ptr_out)(C_S_AXI_ADDR_WIDTH-1 downto 4) & "1100";

   size                   <= C_S_AXI_DATA_WIDTH/8;
   num_beats              <= 1;
   last_BE_valid          <= last_BE_valid_int;-- when blk_lnk_up = '1' else '0';
   wbarhit                <= barhit_reg(wr_req_ptr_out);
   wdata_valid            <= wdata_valid_int;
   s_axi_wready           <= s_axi_wready_int;
   illegal_burst          <= illegal_burst_int;
   pend_slv_wr_cnt        <= pend_slv_wr_cnt_int;
   cmpl_slv_wr_cnt        <= cmpl_slv_wr_cnt_int;
   slv_write_idle         <= slv_write_idle_int;

   wr_ptr                 <= wr_ptr_int;
   rd_ptr                 <= rd_ptr_int;
   wdata_str_done_and_bresp_ok <= '1' when (wdata_str_done = '1' or wdata_str_done_sticky = '1') and (last_bresp_ok = '1') else '0';

   -- Get write address phase info from AXI for up to 2 "slots" when available
   -- Works with the 'sync' process below 
   write_reqSM_comb :process(write_reqSM_cs, s_axi_awvalid, wr_req_ptr_in, wr_req_ptr_out, s_axi_bready, bvalid_ack,
                             barhit, wburst_reg, blk_lnk_up, pcie_bme)
   begin
      write_reqSM_ns         <= write_reqSM_cs;
      awready_int            <= '0';
      req_active             <= '0';
      illegal_burst_int      <= '0';
      en_barhit              <= '0';
      slv_write_idle_int     <= '0';
      case write_reqSM_cs is

         when IDLE =>
            slv_write_idle_int     <= '1';
            if blk_lnk_up = '1' and pcie_bme = '1' then -- only assert awready if link is up
               awready_int            <= '1';
            end if;
            if s_axi_awvalid = '1' and blk_lnk_up = '1' and pcie_bme = '1' then
               -- aquire write req qualifiers
               write_reqSM_ns         <= CHECK;
               slv_write_idle_int     <= '0';
            end if;

         when CHECK =>
            -- check qualifiers
            en_barhit              <= '1';
            -- coverage off
            -- never hit, remove in 13.3
            if barhit = ZEROS(C_AXIBAR_NUM - 1 downto 0) then
               write_reqSM_ns         <= IDLE;
            else
            -- coverage on
               write_reqSM_ns         <= ONE_REQ_ACTIVE;
            end if;
            if (wburst_reg(wr_req_ptr_in) /= "01") then
               illegal_burst_int      <= '1';
            end if;

         when CHECK2 =>
            -- check qualifiers
            en_barhit              <= '1';
            -- coverage off
            -- never hit, remove in 13.3
            if barhit = ZEROS(C_AXIBAR_NUM - 1 downto 0) then
               write_reqSM_ns <= ONE_REQ_ACTIVE;
            -- coverage on
            elsif bvalid_ack = '1' then
               write_reqSM_ns <= ONE_REQ_ACTIVE;
            else
               write_reqSM_ns <= TWO_REQ_ACTIVE;
            end if;
            
            if (wburst_reg(wr_req_ptr_in) /= "01") then
               illegal_burst_int      <= '1';
            end if;

         when ONE_REQ_ACTIVE =>
            req_active             <= '1';
            if blk_lnk_up = '1' and pcie_bme = '1' then -- only assert awready if link is up
               awready_int            <= '1';
            end if;
            if s_axi_awvalid = '1' and blk_lnk_up = '1' and pcie_bme = '1' then
               -- aquire write req qualifiers
               if bvalid_ack = '0' then
                  write_reqSM_ns <= CHECK2;
               else
                  write_reqSM_ns <= CHECK;
               end if;
            elsif bvalid_ack = '1' then
               write_reqSM_ns <= IDLE;
            end if;

         when TWO_REQ_ACTIVE =>
            req_active <= '1';
            if bvalid_ack = '1' then
               write_reqSM_ns <= ONE_REQ_ACTIVE;
            end if;

      end case;
   end process;

   -- Get write address phase info from AXI for up to 2 "slots" when available
   -- Works with the 'comb' process above 
   write_reqSM_sync :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            write_reqSM_cs        <= IDLE;
            wr_req_ptr_in         <= 0;
            wr_req_ptr_out        <= 0;
            wr_req_ptr_out_int    <= 0;
            wid_reg               <= (others => (others => '0'));
            waddr_reg             <= (others => (others => '0'));
            wregion_reg           <= (others => (others => '0'));
            wlength_reg           <= (others => (others => '0'));
            wsize_reg             <= (others => (others => '0'));
            wburst_reg            <= (others => (others => '0'));
            barhit_reg            <= (others => (others => '0'));
         else
            write_reqSM_cs <= write_reqSM_ns;
            if s_axi_awvalid = '1' and awready_int = '1' then
               wid_reg(wr_req_ptr_in)      <= s_axi_awid;
               waddr_reg(wr_req_ptr_in)    <= s_axi_awaddr;
               wregion_reg(wr_req_ptr_in)  <= s_axi_awregion;
               wlength_reg(wr_req_ptr_in)  <= s_axi_awlen;
               wsize_reg(wr_req_ptr_in)    <= s_axi_awsize;
               wburst_reg(wr_req_ptr_in)   <= s_axi_awburst;
            end if;
            
            if tlp_str_start = '1' then
               if wr_req_ptr_out = 0 then
                  wr_req_ptr_out        <= 1;
               else
                  wr_req_ptr_out        <= 0;
               end if;
            end if;
            if bvalid_ack = '1' then
               if wr_req_ptr_out_int = 0 then
                  wr_req_ptr_out_int   <= 1;
               else
                  wr_req_ptr_out_int   <= 0;
               end if;
            end if;
            if en_barhit = '1' then
               barhit_reg(wr_req_ptr_in)   <= barhit;
               if wr_req_ptr_in = 0 then
                  wr_req_ptr_in         <= 1;
               else
                  wr_req_ptr_in         <= 0;
               end if;
            end if;
         end if;
      end if;
   end process;

   two_req_indicator_proc :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if reset = '0' or ((write_reqSM_cs = CHECK2 or write_reqSM_cs = TWO_REQ_ACTIVE) and bvalid_ack = '1') then
            two_req_indicator      <= '0';
         elsif write_reqSM_cs = ONE_REQ_ACTIVE and s_axi_awvalid = '1' and blk_lnk_up = '1' and pcie_bme = '1' and bvalid_ack = '0' then
            two_req_indicator      <= '1';
         end if;
      end if;
   end process;


   BAR_decoder :process(waddr_reg, wr_req_ptr_in)
--   Remove the use of AwRegion
--   BAR_decoder :process(wregion_reg, wr_req_ptr_in)
--   variable region    : integer;
--   begin
--      region                 := conv_integer(wregion_reg(wr_req_ptr_in));
--      barhit                 <= (others => '0');
--      -- Nam - always true if statement below
--      -- NAM / JRH fixed typo. Was b 2.
--      -- coverage off -item b 1 -allfalse
--      if region < C_AXIBAR_NUM then
--         barhit(region)         <= '1';
--      end if;
   variable address : integer;
   begin
--     address := conv_integer(waddr_reg(wr_req_ptr_in));
     barhit <= (others => '0');

     -- Nam - always true if statement below
     -- NAM /JRH fixed typo. Was b 2.
     -- coverage off -item b 1 -allfalse
     for i in 0 to (C_AXIBAR_NUM-1) loop
       if((waddr_reg(wr_req_ptr_in) <= C_BAR_HIGHADDR_ARRAY(i)) and (waddr_reg(wr_req_ptr_in) >= C_BAR_ARRAY(i))) then
         barhit(i) <= '1';
       end if;
     end loop;       
      
   end process;

   -- Make sure that write with an illegal burst does not generate MemWr TLP(s)
   -- Also do not generate MemWr TLP(s)for writes in process when link goes down
   illegal_burst_proccess : process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            illegal_burst_log                    <= (others => '0');
            blk_lnk_up_d                         <= '0';
            blk_lnk_down_reqs                    <= 0;
         else
            blk_lnk_up_d                         <= blk_lnk_up;
            if(illegal_burst_int = '1') then
               illegal_burst_log(wr_req_ptr_in)     <= '1';
               
            elsif bvalid_ack = '1' then
               illegal_burst_log(wr_req_ptr_out_int)<= '0';
            end if;
            if blk_lnk_up_d = '1' and blk_lnk_up = '0' then
               if slv_write_idle_int = '0' then
                  if two_req_indicator = '1' and bvalid_ack = '0' then
                     blk_lnk_down_reqs                    <= 2;
                  elsif two_req_indicator = '1' then
                     blk_lnk_down_reqs                    <= 1;
                  elsif bvalid_ack = '0' then
                     blk_lnk_down_reqs                    <= 1;
                  else
                     blk_lnk_down_reqs                    <= 0;
                  end if;
               else
                  blk_lnk_down_reqs                    <= 0;
               end if;
            end if;
            if bvalid_ack = '1' and blk_lnk_down_reqs /= 0 then
               blk_lnk_down_reqs                    <= blk_lnk_down_reqs-1;
            end if;
         end if;
      end if;
   end process;

   block_trns_lnkdwn <= '1' when blk_lnk_down_reqs /=0 else '0';

   illegal_burst_trns     <= illegal_burst_log(wr_req_ptr_out);

   bresp_gen :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            bresp_int          <= (others => (others => '0')); -- OKAY is default
         else
            if bvalid_ack = '1' then -- clear bresp after assertion
               bresp_int(wr_req_ptr_out_int)  <= "00"; -- OKAY
            end if;
            if illegal_burst_int = '1' then
               bresp_int(wr_req_ptr_in)       <= "10"; -- SLVERR
            end if;
            if blk_lnk_up_d = '1' and blk_lnk_up = '0' and slv_write_idle_int = '0' then
               if two_req_indicator = '1' and bvalid_ack = '0' then
                  bresp_int                      <= (others => "10"); -- SLVERR on both
               elsif two_req_indicator = '1' then
                  if wr_req_ptr_out_int = 0 then
                     bresp_int(1)          <= "10"; -- SLVERR on one active
                  else
                     bresp_int(0)          <= "10"; -- SLVERR on one active
                  end if;
               elsif bvalid_ack = '0' then
                  bresp_int(wr_req_ptr_out_int) <= "10"; -- SLVERR on one active
               end if;
            end if;
         end if;
      end if;
   end process;

   -- This process gets the write data from the AXI write data channel and enables writing into the Write FIFO
   -- Works with the 'sync' process below 
   write_dataSM_comb :process(  write_dataSM_cs, req_active, s_axi_wvalid, 
                   s_axi_wlast, s_axi_bready,
                                wdata_fifo_full, wdata_str_start, 
                                tlp_str_start, two_req_indicator, 
                                bvalid_ack, en_bvalid, 
                                wdata_str_done_and_bresp_ok, wdata_str_start_sticky,
                                last_bresp_ok)
   begin
      write_dataSM_ns       <= write_dataSM_cs;
      s_axi_wready_int      <= '0';
      en_first_wdata        <= '0';
      en_wdata              <= '0';
      write_done            <= '0';
      en_bvalid             <= '0';
      rd_ptr_incr           <= '0';
      wr_ptr_incr           <= '0';
      normalize_rd_ptr      <= '0';

      -- Assert BVALID once 1st Beat of Last splitted write TLP or 
      -- write TLP( in case of no split) is presented on AXI-S RW interface
      if (wdata_str_start = '1' or wdata_str_start_sticky = '1') and 
         (bvalid_ack = '0' and last_bresp_ok = '0') then
        en_bvalid <= '1';
      end if;

      case write_dataSM_cs is

         when IDLE =>
         
            -- Only check req_active in IDLE state
            if req_active = '1' then
               write_dataSM_ns    <= FIRST_DATA_WORD;
            end if;

         when FIRST_DATA_WORD =>

            s_axi_wready_int          <= '1';
            if s_axi_wvalid = '1' then
               en_first_wdata         <= '1';
               if s_axi_wlast = '1' then
                  write_dataSM_ns     <= DONE;
               else
                  write_dataSM_ns     <= DATA_STREAM;
               end if;
            end if;

         when DATA_STREAM =>

               s_axi_wready_int       <= '1';
               if s_axi_wvalid = '1' then
                  en_wdata            <= '1';
                  
                  -- If last beat then go to DONE,
                  -- otherwise stay in this state to capture data.
                  if s_axi_wlast = '1' then
                     write_dataSM_ns  <= DONE;
                  end if;
               end if;

         -- Done capturing data from AXI
         when DONE =>

            write_done <= '1';
            write_dataSM_ns <= WAIT_TLP_START;

         -- Wait for Enhanced TLP logic to start processing data stream.
         when WAIT_TLP_START =>
         
            -- Wait for indicator that TLP SM has recognized the TLP
            -- packet to start sending it to the Enhanced Bridge.
            if tlp_str_start = '1' then

               -- If more than 1 write request,
               -- start the process of capturing write data of 2nd request
               -- in another buffer else go to WAIT_STR_DONE state
               if two_req_indicator = '1' then
                  write_dataSM_ns <= FIRST_DATA_WORD_2;
               else
                  write_dataSM_ns <= WAIT_STR_DONE;
               end if;
            end if;

         -- In this state waiting for Enhanced Bridge to complete stream.
         -- However, if we see a new request, buffer in the data.
         when WAIT_STR_DONE =>
            
            -- Change priority here.
            -- If TLP data phase completes, go back to IDLE/FIRST_DATA_WORD
            -- based on req_active
            if wdata_str_done_and_bresp_ok = '1' then

               normalize_rd_ptr <= '1';

               -- Either no pending transfers
               -- or req_active is HIGH which might go LOW or remain HIGH on next cycle
               -- Go to IDLE in any case
               write_dataSM_ns <= IDLE;
            
            -- if we see a new request, buffer in the data of new request in another buffer
            elsif two_req_indicator = '1' then
                write_dataSM_ns <= FIRST_DATA_WORD_2;
            end if;
            
         -- See next address write to send to Enhanced Bridge
         -- Only get to this state if subsequent write to process.
         when FIRST_DATA_WORD_2 =>
           
            -- See if prior write request completes then go back to FIRST_DATA_WORD
            if wdata_str_done_and_bresp_ok = '1' then
               
               write_dataSM_ns <= FIRST_DATA_WORD;
               normalize_rd_ptr <= '1';
               
            else
               s_axi_wready_int <= '1';
               if s_axi_wvalid = '1' then
                  en_first_wdata   <= '1';
                  wr_ptr_incr      <= '1';
                  if s_axi_wlast = '1' then
                     write_dataSM_ns  <= DONE_2;
                  else
                     write_dataSM_ns  <= DATA_STREAM_2;
                  end if;
               end if;
            end if;

         -- Capturing 2nd data stream from AXI
         when DATA_STREAM_2 =>

               s_axi_wready_int <= '1';
               if s_axi_wvalid = '1' then
                  en_wdata <= '1';
                  
                  -- If we see the WLAST on the 2nd AXI write stream.
                  if s_axi_wlast = '1' then
                     write_dataSM_ns  <= DONE_2;
                  end if;
               end if;

         -- Done accepting 2nd AXI write data stream.
         when DONE_2 =>

            -- write_done flag must be high when we are done with streaming out MWr TLP(s) in full
            -- along with the response back for the earlier TLP.
            if wdata_str_done_and_bresp_ok = '1' then
               write_done  <= '1';
               write_dataSM_ns <= WAIT_TLP_START;
               rd_ptr_incr <= '1';
            end if;

         -- Default state
         when others =>

            write_dataSM_ns <= IDLE;

      end case;
   end process;

   -- This process gets the write data from the AXI write data channel and enables writing into the Write FIFO
   -- Works with the 'comb' process above 
   write_dataSM_sync :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            write_dataSM_cs          <= IDLE;
            wdata_str_start_sticky   <= '0';
            wdata_str_start_d        <= '0';
            wdata_str_done_sticky    <= '0';
            last_bresp_ok            <= '0';
            rd_ptr_int               <= '0';
            wr_ptr_int               <= '0';
            bvalid_ack               <= '0';
            bvalid_int               <= '0';
         else
            write_dataSM_cs          <= write_dataSM_ns;
            wdata_str_start_d        <= wdata_str_start;
            
            -- Detect the posedge of wdata_str_start and maintain wdata_str_start_sticky HIGH
            -- till we get bvalid_ack back.
            if bvalid_ack = '1' then
               wdata_str_start_sticky <= '0';
            elsif wdata_str_start = '1' and wdata_str_start_d = '0' then
               wdata_str_start_sticky <= '1';
            end if;

            -- wdata_str_done is a single cycle pulse,
            -- register this signal and make it sticky in the sense that it will
            -- de-assert only when response is given back to AXI side 
            if wdata_str_done = '1' then
               wdata_str_done_sticky <= '1';
            end if;
           
            -- Assert last_bresp_ok when response is given back for any write request
            if bvalid_int = '1' and s_axi_bready = '1' then
               last_bresp_ok         <= '1';
            end if;
            
            if write_dataSM_cs = WAIT_TLP_START or write_dataSM_cs = IDLE then
               wdata_str_done_sticky <= '0';
               last_bresp_ok         <= '0';
            end if;
            
            -- Toggle rd_ptr_int if rd_ptr_incr is HIGH
            if rd_ptr_incr = '1' then
               if rd_ptr_int = '1' then
                  rd_ptr_int         <= '0';
               else
                  rd_ptr_int         <= '1';
               end if;
            end if;

            -- Toggle wr_ptr_int if wr_ptr_incr is HIGH
            if wr_ptr_incr = '1' then
               if wr_ptr_int = '1' then
                  wr_ptr_int         <= '0';
               else
                  wr_ptr_int         <= '1';
               end if;
            end if;

            -- Normalize rd_ptr_int
            if normalize_rd_ptr = '1' then
               rd_ptr_int            <= wr_ptr_int;
            end if;
            
            -- BVALID signal is acknowledged
            if en_bvalid = '1' and s_axi_bready = '1' then
               bvalid_ack            <= '1';
            else
               bvalid_ack            <= '0';
            end if;
           
            -- bvalid_int is an internal signal which is connected to s_axi_bvalid output
            if s_axi_bready = '1' and en_bvalid = '1' and bvalid_int = '1' then
               bvalid_int            <= '0';
            else
               bvalid_int            <= en_bvalid;
            end if;

         end if;
      end if;
   end process;


   -- Determine the value of first BE to be used in MemWr TLP generation
   -- Works with 'sync' process below
   first_BE_SM_comb :process(first_BE_SM_cs, en_first_wdata, en_wdata, size, beat_count, write_done, strobe_pipe(0))
   begin
      first_BE_SM_ns   <= first_BE_SM_cs;
      en_strobes2           <= '0';
      en_first_BE_valid     <= '0';
      case first_BE_SM_cs is
            when IDLE =>
               if en_first_wdata = '1' then
                  first_BE_SM_ns        <= FIRST_BEAT;
               end if;

            when FIRST_BEAT =>
               -- Wait until there's at least one valid data or it has reached end of data stream / zero length write
               if ( ( num_msb_zeros(strobe_pipe(0)) /= NUM_STROBES ) or ( write_done = '1' ) ) then
                  en_strobes2           <= '1';
                  first_BE_SM_ns        <= IDLE;
                  en_first_BE_valid     <= '1';
               end if;

      end case;
   end process;

   -- Determine the value of first BE to be used in MemWr TLP generation
   -- Works with 'comb' process above
   first_BE_SM_sync :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            first_BE_SM_cs        <= IDLE;
            first_BE              <= (others => '0');
            first_BE_valid        <= '0';
         else
            first_BE_SM_cs        <= first_BE_SM_ns;
            if en_first_wdata = '1' then
               first_BE              <= (others => '0');
            elsif en_strobes2 = '1' then
               if size = 4 then -- dword 32
                  first_BE <= strobe_pipe(0)(beat_count*4-1 downto beat_count*4-4);
               else -- 64/128
                  if num_lsb_zeros(strobe_pipe(0)) < 4 then
                     first_BE <= strobe_pipe(0)(3 downto 0);
                  elsif num_lsb_zeros(strobe_pipe(0)) < 8 and C_S_AXI_DATA_WIDTH >= 64 then
                     first_BE <= strobe_pipe(0)(7 downto 4);
                  elsif num_lsb_zeros(strobe_pipe(0)) < 12 and C_S_AXI_DATA_WIDTH = 128 then
                     first_BE <= strobe_pipe(0)(11 downto 8);
                  elsif C_S_AXI_DATA_WIDTH = 128 then
                     first_BE <= strobe_pipe(0)(15 downto 12);
                  end if;
               end if;
            end if;
            if en_first_BE_valid = '1' then
               first_BE_valid        <= '1';
            else
               first_BE_valid        <= '0';
            end if;
         end if;
      end if;
   end process;


   strobe_pipe_proc :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0' or last_BE_valid_int = '1') then
            for i in 0 to 3 loop
               strobe_pipe(i)        <= (others => '0');
            end loop;
         elsif (en_first_wdata = '1' or en_wdata = '1') and num_msb_zeros(s_axi_wstrb) /= NUM_STROBES then
            strobe_pipe(0)        <= s_axi_wstrb;
            for i in 1 to 3 loop
               strobe_pipe(i)        <= strobe_pipe(i-1);
            end loop;
         end if;
      end if;
   end process;


   first_word_offset_proc :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0' or last_BE_valid_int = '1') then
            first_word_offset_int     <= 0;
            find_first_word_offset    <= '0';
         elsif en_first_wdata = '1' or find_first_word_offset = '1' then
            if num_msb_zeros(s_axi_wstrb) = NUM_STROBES then -- null data beat case
               find_first_word_offset <= '1';
            else
               first_word_offset_int <= num_lsb_zeros(s_axi_wstrb)/4;
               find_first_word_offset <= '0';
            end if;
         end if;
      end if;
   end process;


   last_word_offset_proc :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0' or last_BE_valid_int = '1') then
            last_word_offset     <= 0;
         elsif num_msb_zeros(s_axi_wstrb) = NUM_STROBES then -- null data beat case
            if num_msb_zeros(strobe_pipe(0)) = NUM_STROBES then
               last_word_offset  <= 0;
            else
               last_word_offset  <= num_msb_zeros(strobe_pipe(0))/4;
            end if;
         elsif s_axi_wlast = '1' and s_axi_wready_int = '1' then
            last_word_offset <= num_msb_zeros(s_axi_wstrb)/4;
         end if;
      end if;
   end process;

   -- Determine the value of last BE to be used in MemWr TLP generation, needs to have strobes from last write data beat
   last_BE_proc :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            last_BE               <= (others => '0');
            last_BE_valid_int     <= '0';
         elsif write_done = '1' then
            if (en_first_BE_valid = '0') or (size > 4) then
               if size = 4 then -- dword 32
                  if length_bytes_int < 5 then -- 1 DW payload
                     last_BE            <= (others => '0');
                  else
                     last_BE            <= strobe_pipe(0)(beat_count*4-1 downto beat_count*4-4);
                  end if;
               elsif C_S_AXI_DATA_WIDTH >= 64 then -- 64/128
                  if num_msb_zeros(strobe_pipe(0)) < 4 then -- data in DW3
                     if num_lsb_zeros(strobe_pipe(0)) > NUM_STROBES-5 and length_bytes_int < 5 then
                        last_BE         <= (others => '0');
                     else
                        last_BE         <= strobe_pipe(0)(NUM_STROBES-1 downto NUM_STROBES-4);
                     end if;
                  elsif num_msb_zeros(strobe_pipe(0)) < 8 then -- data in DW2
                     if num_lsb_zeros(strobe_pipe(0)) > NUM_STROBES-9 and length_bytes_int < 5 then
                        last_BE         <= (others => '0');
                     else
                        last_BE         <= strobe_pipe(0)(NUM_STROBES-5 downto NUM_STROBES-8);
                     end if;
                  elsif C_S_AXI_DATA_WIDTH = 128 and num_msb_zeros(strobe_pipe(0)) < 12 then -- data in DW1
                     if num_lsb_zeros(strobe_pipe(0)) > NUM_STROBES-13 and length_bytes_int < 5 then
                        last_BE         <= (others => '0');
                     else
                        last_BE         <= strobe_pipe(0)(NUM_STROBES-9 downto NUM_STROBES-12);
                     end if;
                  elsif C_S_AXI_DATA_WIDTH = 128 then -- data in DW0
                     if length_bytes_int < 5 then
                        last_BE         <= (others => '0');
                     else
                        last_BE         <= strobe_pipe(0)(NUM_STROBES-13 downto NUM_STROBES-16);
                     end if;
                  end if;
               end if;
            else
               last_BE               <= (others => '0');
            end if;
            last_BE_valid_int     <= '1';
         else
            last_BE_valid_int     <= '0';
            last_BE               <= (others => '0');
         end if;
      end if;
   end process;


   write_databeat_counter :process(s_axi_aclk)
      variable temp_zeros : integer;
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            beat_count         <= 0;
            null_beat_count    <= 0;
         else
            temp_zeros            := num_lsb_zeros(s_axi_wstrb);
            if en_first_wdata = '1' then
               beat_count         <= 1;
               if num_msb_zeros(s_axi_wstrb) = NUM_STROBES then -- null data beat case
                  null_beat_count    <= 1;
               else
                  null_beat_count    <= 0;
               end if;
            elsif en_wdata = '1' then
               beat_count         <= 1;
               if num_msb_zeros(s_axi_wstrb) = NUM_STROBES then -- null data beat case
                  null_beat_count    <= null_beat_count + 1;
               end if;
            end if;
            if write_done = '1' then
               beat_count         <= 0;
            end if;
         end if;
      end if;
   end process;

   write_address_offset :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            address_offset     <= (others => '0');
         else
            if en_first_wdata = '1' then
               if num_msb_zeros(s_axi_wstrb) = NUM_STROBES then -- null data beat case
                  address_offset     <= conv_std_logic_vector(NUM_STROBES,C_S_AXI_ADDR_WIDTH);
               else
                  address_offset     <= (others => '0');
               end if;
            elsif en_wdata = '1' then
               if find_first_word_offset = '1' and num_msb_zeros(s_axi_wstrb) = NUM_STROBES then -- null data beat case
                  address_offset     <= address_offset + conv_std_logic_vector(NUM_STROBES,C_S_AXI_ADDR_WIDTH);
               end if;
            end if;
         end if;
      end if;
   end process;

   write_data_pipe :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            wdata           <= (others => '0');
         else
            if wdata_valid_int = '1' then
               wdata           <= (others => '0');
            end if;
            if en_wdata = '1' or en_first_wdata = '1' then
               for i in 0 to NUM_STROBES-1 loop
                  if s_axi_wstrb(i) = '1' then
                     wdata(i*8+7 downto i*8) <= s_axi_wdata(i*8+7 downto i*8);
                  end if;
               end loop;
            end if;
         end if;
      end if;
   end process;

   en_wdata_d_proc :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            en_wdata_d      <= '0';
         elsif num_msb_zeros(s_axi_wstrb) /= NUM_STROBES then
            en_wdata_d      <= (en_wdata or en_first_wdata);
         else
            en_wdata_d      <= '0';
         end if;
      end if;
   end process;

   wdata_valid_int     <= en_wdata_d;

   -- Two 2-bit counters are maintained to indicate slave writes in process for the ordering logic
   -- When counts match, there are no writes in process
   ordering_proc :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            pend_slv_wr_cnt_int      <= (others => '0');
            cmpl_slv_wr_cnt_int      <= (others => '0');
         else
            if s_axi_awvalid = '1' and awready_int = '1' then
               if pend_slv_wr_cnt_int = "11" then
                  pend_slv_wr_cnt_int      <= (others => '0');
               else
                  pend_slv_wr_cnt_int      <= pend_slv_wr_cnt_int + 1;
               end if;
            end if;
            if bvalid_ack = '1' then
               if cmpl_slv_wr_cnt_int = "11" then
                  cmpl_slv_wr_cnt_int      <= (others => '0');
               else
                  cmpl_slv_wr_cnt_int      <= cmpl_slv_wr_cnt_int + 1;
               end if;
            end if;
         end if;
      end if;
   end process;
end architecture;
