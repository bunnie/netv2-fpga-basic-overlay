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
-- Filename:        axi_slave_read.vhd
--
-- Description:     
--                  
-- This VHDL file is the HDL design file for the AXI slave write bridge. 
--                   
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_slave_read.vhd
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

entity axi_slave_read is
   generic(
      --Family Generics
      C_FAMILY                      : string  :="virtex7";
      C_S_AXI_ID_WIDTH              : integer := 4;
      C_S_AXI_ADDR_WIDTH            : integer := 32;
      C_S_AXI_DATA_WIDTH            : integer := 32;
      C_COMP_TIMEOUT                : integer := 0; -- 0=50us, 1=50ms
      C_USER_CLK_FREQ               : integer := 1;
      C_USER_CLK2_DIV2              : string  := "FALSE";
      C_S_AXI_SUPPORTS_NARROW_BURST : integer := 1;
      C_AXIREAD_NUM                 : integer := 8;
      C_RD_BUFFER_ADDR_SIZE         : integer := 10;
      C_AXIBAR_NUM                  : integer := 6;
      C_AXIBAR_0                    : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_0           : std_logic_vector := x"0000_0000";
      C_AXIBAR_1                    : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_1           : std_logic_vector := x"0000_0000";
      C_AXIBAR_2                    : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_2           : std_logic_vector := x"0000_0000";
      C_AXIBAR_3                    : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_3           : std_logic_vector := x"0000_0000";
      C_AXIBAR_4                    : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_4           : std_logic_vector := x"0000_0000";
      C_AXIBAR_5                    : std_logic_vector := x"FFFF_FFFF";
      C_AXIBAR_HIGHADDR_5           : std_logic_vector := x"0000_0000"
   );
   port(

      -- AXI Global
      s_axi_aclk              : in  std_logic;
      reset                   : in  std_logic;

      -- AXI Slave Read Address Channel
      s_axi_arid              : in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      s_axi_araddr            : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      s_axi_arregion          : in  std_logic_vector(3 downto 0);
      s_axi_arlen             : in  std_logic_vector(7 downto 0);
      s_axi_arsize            : in  std_logic_vector(2 downto 0);
      s_axi_arburst           : in  std_logic_vector(1 downto 0);
      s_axi_arvalid           : in  std_logic;
      s_axi_arready           : out std_logic;
      pu_axi_arlen            : in  std_logic_vector(7 downto 0);
      pu_axi_arsize           : in  std_logic_vector(2 downto 0);

      -- AXI Slave Read Data Channel
      s_axi_rid               : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      s_axi_rdata             : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      s_axi_rresp             : out std_logic_vector(1 downto 0);
      s_axi_rlast             : out std_logic;
      s_axi_rvalid            : out std_logic;
      s_axi_rready            : in  std_logic;

      -- AXIS Read Requester Channel
      m_axis_rr_tid           : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
      -- Ordering signals
      slave_read_req_p        : out std_logic;
      slave_rd_req_go         : in  std_logic;
      slave_cmpl_rdy_p        : out std_logic;
      slave_cmpl_go           : in  std_logic;
      slv_write_idle          : in  std_logic;
      master_wr_idle          : in  std_logic;
      -- internal interface
      raddr                   : out std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      length_bytes            : out std_logic_vector(12 downto 0);
      rbarhit                 : out std_logic_vector(C_AXIBAR_NUM-1 downto 0);
      araddr_2lsbs            : out std_logic_vector(1 downto 0);
      last_BE                 : out std_logic_vector(3 downto 0);
      req_active              : out std_logic;
      req_active_ptr          : out integer range 0 to C_AXIREAD_NUM-1;
      read_req_sent           : in  std_logic;
      tag_cpl_status_clr      : in  tag_cpl_status_clr_array;
      rdata_bram_rd_en        : out std_logic;
      rdata_bram_addr         : out std_logic_vector(C_RD_BUFFER_ADDR_SIZE-1 downto 0);
      rdata                   : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      cpl_index               : out integer range 0 to C_AXIREAD_NUM-1;
      rdata_str_done          : out std_logic;
      rdata_str_start         : out std_logic;
      first_word_offset       : out first_word_offset_array;
      illegal_burst           : out std_logic;
      cpl_timer_timeout_strb  : out std_logic_vector(C_AXIREAD_NUM-1 downto 0);
      unsupported_req         : in  std_logic;
      completer_abort         : in  std_logic;
      poisoned_req            : in  std_logic_vector(C_AXIREAD_NUM-1 downto 0);
      header_ep               : out std_logic;
      rd_req_index_err        : in  integer range 0 to C_AXIREAD_NUM-1;
      blk_lnk_up              : in  std_logic;
      pcie_bme                : in  std_logic
   );
end axi_slave_read;

architecture structure of axi_slave_read is
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

   constant DATA_SIZE                  : integer := C_S_AXI_DATA_WIDTH/32;
   constant HISTORY_SIZE               : integer := C_AXIREAD_NUM;

   constant ONES                       : std_logic_vector(0 to DATA_SIZE*8-1) := (others => '1');
   constant ZEROES                     : std_logic_vector(0 to DATA_SIZE*8-1) := (others => '0');
   type arid_array is array (0 to C_AXIREAD_NUM-1) of std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
   signal arid_reg                     : arid_array := (others => (others => '0'));  -- CR # 649227
   signal araddr_reg                   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
   signal arregion_reg                 : std_logic_vector(3 downto 0);
   type arlen_array is array (0 to C_AXIREAD_NUM-1) of std_logic_vector(7 downto 0);
   signal arlen_reg                    : arlen_array;
   --signal arsize_reg                   : std_logic_vector(2 downto 0);
   signal arburst_reg                  : std_logic_vector(1 downto 0);
   signal rd_req_ptr                   : integer range 0 to C_AXIREAD_NUM-1 := 0;
   signal rd_req_ptr_nxt               : integer range 0 to C_AXIREAD_NUM-1 := 0;
   type arid_history_array is array (0 to HISTORY_SIZE-1) of std_logic_vector(C_S_AXI_ID_WIDTH downto 0);
   signal arid_history                 : arid_history_array;
   signal arid_history_nxt             : arid_history_array;
   type rd_req_ptr_array is array (0 to HISTORY_SIZE-1) of integer range 0 to C_AXIREAD_NUM-1;
   signal rd_req_ptr_history           : rd_req_ptr_array;
   signal rd_req_ptr_history_nxt       : rd_req_ptr_array;
   constant ZEROS                      : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
  -- constant ZEROS                      : std_logic_vector(12 downto 0) := "0000000000000";
   signal barhit                       : std_logic_vector(C_AXIBAR_NUM-1 downto 0);
   signal arready_int                  : std_logic;
   signal s_axi_rlast_int              : std_logic := '0';  -- CR # 649227
   signal s_axi_rdata_int              : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');  -- CR # 649227
   signal s_axi_rresp_int              : std_logic_vector(1 downto 0) := (others => '0');  -- CR # 649227
   signal rvalid_int                   : std_logic := '0';
   signal illegal_burst_int            : std_logic;
   signal read_req_error               : std_logic;
   signal en_barhit                    : std_logic;
   signal rlast_int                    : std_logic := '0';
   signal en_rresp                     : std_logic := '0';
   signal size                         : integer range 1 to 16;
   signal length_bytes_int             : std_logic_vector(12 downto 0);
   signal first_word_offset_int        : first_word_offset_array;
   signal first_word_offset_calc       : integer range 0 to 3;
   signal rdata_bram_rd_en_int         : std_logic;
   signal rd_counter                   : integer range 0 to 511;
   signal rdata_str_done_int           : std_logic;
   signal rd_req_index                 : integer range 0 to C_AXIREAD_NUM-1 := 0;
   signal cpl_index_int                : integer range 0 to C_AXIREAD_NUM-1;
   signal cpl_index_nxt                : integer range 0 to C_AXIREAD_NUM-1;
   signal open_slot                    : std_logic;
   signal slot_cleared                 : std_logic;
   signal slot_cleared_d               : std_logic;
   signal slot_request                 : std_logic;
   signal pending_rd_reqs              : std_logic_vector(C_AXIREAD_NUM-1 downto 0);
   signal pending_rd_reqs_nxt          : std_logic_vector(C_AXIREAD_NUM-1 downto 0);
   signal pending_rd_reqs_d            : std_logic_vector(C_AXIREAD_NUM-1 downto 0);
   signal pu_arlen_reg                 : std_logic_vector(7 downto 0);
   signal pu_arsize_reg                : std_logic_vector(2 downto 0);
   signal pu_length_bytes              : std_logic_vector(12 downto 0);
   signal arid_match_index             : integer range 0 to HISTORY_SIZE-1;
   signal arid_match_index_nxt         : integer range 0 to HISTORY_SIZE-1;
   signal dependency_ptr               : integer range 0 to C_AXIREAD_NUM-1;
   type arid_dependency_array is array (0 to C_AXIREAD_NUM-1) of integer range 0 to C_AXIREAD_NUM;
   signal arid_dependency              : arid_dependency_array;
   signal arid_dependency_nxt          : arid_dependency_array;
   type arid_rresp_array is array (0 to C_AXIREAD_NUM-1) of std_logic_vector(1 downto 0);
   signal arid_rresp                   : arid_rresp_array := (others => (others => '0'));  -- CR # 649227
   signal new_dependency_entry         : std_logic;
   signal clr_dependency_entry         : std_logic;
   signal new_dependency_hs            : std_logic;
   signal dependency_cleared           : std_logic;
   signal no_pending_reqs              : std_logic;
   signal clr_pending_rd_reqs_entry    : std_logic;
   signal rdata_mask                   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal cpl_timer_start_count        : integer;
   signal tag_cpl_status_clr_d         : tag_cpl_status_clr_array;
   type cpl_timer_count_array is array (0 to C_AXIREAD_NUM-1,0 to C_S_AXI_DATA_WIDTH/4-1) of integer range 0 to (2**14 + ((2**24)-(2**14))*C_COMP_TIMEOUT) - 1;
   signal cpl_timer_count              : cpl_timer_count_array;
   signal cpl_timer_count_nxt          : cpl_timer_count_array;
   signal cpl_timer_timeout            : std_logic_vector(C_AXIREAD_NUM-1 downto 0);
   signal cpl_timer_timeout_int        : tag_cpl_status_clr_array;
   signal cpl_timer_timeout_d          : std_logic_vector(C_AXIREAD_NUM-1 downto 0);
   signal cpl_timer_timeout_strb_int   : std_logic_vector(C_AXIREAD_NUM-1 downto 0);
   signal blk_lnk_up_d                 : std_logic;
   signal cpl_req_index                : integer range 0 to C_AXIREAD_NUM;
   signal cpl_permit                   : std_logic_vector(C_AXIREAD_NUM-1 downto 0);
   signal req_active_int               : std_logic;
   signal ld_rd_counter                : std_logic;
   signal slv_rd_req_p_sent            : std_logic;
   signal slave_cmpl_go_pend           : std_logic;
   signal cmpl_rdy_pend                : std_logic_vector(C_AXIREAD_NUM-1 downto 0);

   -----------------------------------------------------------------------------
   -- State Machines
   -----------------------------------------------------------------------------

   type read_reqSM_STATES is (IDLE,
                              CHECK,
                              SEND_REQ,
                              WAIT_FOR_OPEN_SLOT);
   signal read_reqSM_cs : read_reqSM_STATES;
   signal read_reqSM_ns : read_reqSM_STATES;

   type read_dataSM_STATES is (IDLE,
                               WAIT_FOR_CPL,
                               LOAD_READ_COUNTER,
                               FIRST_BRAM_READ,
                               STR_DATA,
                               STR_DONE,
                               WAIT_SLOT_CLR);
   signal read_dataSM_cs : read_dataSM_STATES;
   signal read_dataSM_ns : read_dataSM_STATES;
   signal read_dataSM_cs_d : read_dataSM_STATES;
   
   type arid_dependencySM_STATES is (IDLE,
                                     FIND_HISTORY_MATCH,
                                     SET_DEPENDENCY,
                                     CLEAR_DEPENDENCY);
   signal arid_dependencySM_cs : arid_dependencySM_STATES;
   signal arid_dependencySM_ns : arid_dependencySM_STATES;
   
begin

   s_axi_rlast            <= s_axi_rlast_int;  -- CR # 649227
   s_axi_rdata            <= s_axi_rdata_int;   -- CR # 649227
   s_axi_rresp            <= s_axi_rresp_int;  -- CR # 649227
   s_axi_arready          <= arready_int;
   s_axi_rvalid           <= rvalid_int;
   illegal_burst          <= illegal_burst_int;
   s_axi_rid              <= arid_reg(cpl_index_int);
   m_axis_rr_tid          <= arid_reg(rd_req_ptr);
   cpl_timer_timeout_strb <= cpl_timer_timeout_strb_int;

   -- CR # 649227
   s_axi_rresp_int        <= arid_rresp(cpl_index_int) when en_rresp = '1' and (blk_lnk_up = '1' or
                                                           (blk_lnk_up = '0'and read_dataSM_cs_d = STR_DATA))
                             else
                             "10"  when en_rresp = '1' and blk_lnk_up = '0' and read_dataSM_cs_d = FIRST_BRAM_READ -- SLVERR
                             else (others => '0');

   req_active_ptr         <= rd_req_ptr;
   req_active             <= req_active_int;
   rdata_str_done         <= rdata_str_done_int;
   cpl_index              <= cpl_index_int;
   araddr_2lsbs           <= araddr_reg(1 downto 0);
   first_word_offset      <= first_word_offset_int;

   -- Generate the read buffer address for getting read return data to the AXI4
   rdata_bram_addr        <= conv_std_logic_vector(cpl_index_int, log2(C_AXIREAD_NUM))
                             & conv_std_logic_vector(conv_integer(arlen_reg(cpl_index_int)) - rd_counter + 1, 8);
   rdata_bram_rd_en       <= rdata_bram_rd_en_int;


   length_bytes           <= pu_length_bytes;

   pu_length_bytes        <= ("00000" & pu_arlen_reg) + 1 when pu_arsize_reg = "000"
                             else
                             --SHL(("00000" & pu_arlen_reg) + 1, pu_arsize_reg) - (ZEROS(12 downto conv_integer(pu_arsize_reg)) & araddr_reg(conv_integer(pu_arsize_reg)
                             -- - 1 downto 0));
                             SHL(("00000" & pu_arlen_reg) + 1, pu_arsize_reg) - (ZEROS(12 downto 1) & araddr_reg(0 downto 0)) when pu_arsize_reg = "001" else
                             SHL(("00000" & pu_arlen_reg) + 1, pu_arsize_reg) - (ZEROS(12 downto 2) & araddr_reg(1 downto 0)) when pu_arsize_reg = "010" else
                             SHL(("00000" & pu_arlen_reg) + 1, pu_arsize_reg) - (ZEROS(12 downto 3) & araddr_reg(2 downto 0)) when pu_arsize_reg = "011" else
                             SHL(("00000" & pu_arlen_reg) + 1, pu_arsize_reg) - (ZEROS(12 downto 4) & araddr_reg(3 downto 0)) when pu_arsize_reg = "100" else
                             SHL(("00000" & pu_arlen_reg) + 1, pu_arsize_reg) - (ZEROS(12 downto 5) & araddr_reg(4 downto 0)) when pu_arsize_reg = "101" else
                             SHL(("00000" & pu_arlen_reg) + 1, pu_arsize_reg) - (ZEROS(12 downto 6) & araddr_reg(5 downto 0)) when pu_arsize_reg = "110" else
                             SHL(("00000" & pu_arlen_reg) + 1, pu_arsize_reg) - (ZEROS(12 downto 7) & araddr_reg(6 downto 0));

   last_BE                <= x"1" when (conv_integer(araddr_reg(1 downto 0)) + conv_integer(pu_length_bytes(1 downto 0)))
                                       mod 4 = 1 else
                             x"3" when (conv_integer(araddr_reg(1 downto 0)) + conv_integer(pu_length_bytes(1 downto 0)))
                                       mod 4 = 2 else
                             x"7" when (conv_integer(araddr_reg(1 downto 0)) + conv_integer(pu_length_bytes(1 downto 0)))
                                       mod 4 = 3 else
                             x"F";

   first_word_offset_calc <= 0 when DATA_SIZE = 1 or (DATA_SIZE = 2 and s_axi_araddr(2) = '0') or
                                    (DATA_SIZE = 4 and s_axi_araddr(3 downto 2) = "00") else
                             1 when (DATA_SIZE = 2 and s_axi_araddr(2) = '1') or
                                    (DATA_SIZE = 4 and s_axi_araddr(3 downto 2) = "01") else
                             2 when (DATA_SIZE = 4 and s_axi_araddr(3 downto 2) = "10") else
                             3;

   raddr                  <= araddr_reg(C_S_AXI_ADDR_WIDTH-1 downto 2) & "00"
                                when first_word_offset_int(rd_req_ptr) = 0
                             else araddr_reg(C_S_AXI_ADDR_WIDTH-1 downto 3) & "100"
                                when first_word_offset_int(rd_req_ptr) = 1
                             else araddr_reg(C_S_AXI_ADDR_WIDTH-1 downto 4) & "1000"
                                when first_word_offset_int(rd_req_ptr) = 2
                             else araddr_reg(C_S_AXI_ADDR_WIDTH-1 downto 4) & "1100";

   gen_rdata_mask_32 : if C_S_AXI_DATA_WIDTH = 32 generate
      rdata_mask             <= (others => '1') after 100 ps;
   end generate;

   gen_rdata_mask_64 : if C_S_AXI_DATA_WIDTH = 64 generate
      rdata_mask             <= x"FFFF_FFFF_0000_0000"  after 100 ps when rd_counter = conv_integer(arlen_reg(cpl_index_int)) and
                                first_word_offset_int(cpl_index_int) = 1
                             else
                             (others => '1') after 100 ps;
   end generate;

   gen_rdata_mask_128 : if C_S_AXI_DATA_WIDTH = 128 generate
      rdata_mask             <= x"FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_0000_0000"  after 100 ps when rd_counter = conv_integer(arlen_reg(cpl_index_int))
                                and first_word_offset_int(cpl_index_int) = 1
                             else
                             x"FFFF_FFFF_FFFF_FFFF_0000_0000_0000_0000"  after 100 ps when rd_counter = conv_integer(arlen_reg(cpl_index_int))
                                and first_word_offset_int(cpl_index_int) = 2
                             else
                             x"FFFF_FFFF_0000_0000_0000_0000_0000_0000"  after 100 ps when rd_counter = conv_integer(arlen_reg(cpl_index_int))
                                and first_word_offset_int(cpl_index_int) = 3
                             else
                             (others => '1') after 100 ps;
   end generate;

   slv_rd_req_p_sent_proccess :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0' or req_active_int = '1') then
            slv_rd_req_p_sent            <= '0';
         elsif s_axi_arvalid = '1' and arready_int = '1' and slv_write_idle = '0' then
            slv_rd_req_p_sent            <= '1';
         end if;
      end if;
   end process;

   gen_cpl_timer_timeout : for j in 0 to C_AXIREAD_NUM-1 generate
      cpl_timer_timeout(j) <= '0' when cpl_timer_timeout_int(j)(0 to DATA_SIZE*8-1) = ZEROES else '1';
   end generate gen_cpl_timer_timeout;

   -- Get read address phase info from AXI for up to 8 "slots" when available
   -- Works with the 'sync' process below 
   read_reqSM_comb :process(read_reqSM_cs, s_axi_arvalid, barhit, read_req_sent, open_slot, rd_req_ptr, blk_lnk_up,
                            arburst_reg, arid_rresp, slave_rd_req_go, slv_rd_req_p_sent, pcie_bme)
   begin
      read_reqSM_ns          <= read_reqSM_cs;
      arready_int            <= '0';
      req_active_int         <= '0';
      illegal_burst_int      <= '0';
      en_barhit              <= '0';
      read_req_error         <= '0';
      slot_request           <= '0';
      case read_reqSM_cs is

         when IDLE =>
            if blk_lnk_up = '1' and pcie_bme = '1' then -- only assert awready if link is up
               arready_int         <= '1';
            end if;
            if s_axi_arvalid = '1' and blk_lnk_up = '1' and pcie_bme = '1' then
               -- aquire read req qualifiers
               read_reqSM_ns       <= CHECK;
            end if;

         when CHECK =>
            -- check qualifiers
            en_barhit           <= '1';
            -- coverage off
            -- never hit, remove in 13.3
            if barhit = ZEROS(C_AXIBAR_NUM - 1 downto 0) then
               read_reqSM_ns       <= IDLE;
            -- coverage on
            elsif slave_rd_req_go = '1' or slv_rd_req_p_sent = '0' or blk_lnk_up = '0' then
               read_reqSM_ns       <= SEND_REQ;
            end if;
            if (arburst_reg /= "01") then
               illegal_burst_int   <= '1';
               read_reqSM_ns       <= SEND_REQ;
            end if;

         when SEND_REQ =>
            req_active_int      <= '1';
            if read_req_sent = '1' then
               read_reqSM_ns       <= WAIT_FOR_OPEN_SLOT;
            end if;

         when WAIT_FOR_OPEN_SLOT =>
            slot_request        <= '1';
            if open_slot = '1' then
               read_reqSM_ns       <= IDLE;
            end if;

      end case;
   end process;

   -- Get read address phase info from AXI for up to 8 "slots" when available
   -- Works with the 'comb' process above 
   read_reqSM_sync :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            read_reqSM_cs                <= IDLE;
            arid_reg                     <= (others => (others => '0'));
            araddr_reg                   <= (others => '0');
            arregion_reg                 <= (others => '0');
            arlen_reg                    <= (others => (others => '0'));
            arburst_reg                  <= (others => '0');
            pu_arlen_reg                 <= (others => '0');
            pu_arsize_reg                <= (others => '0');
            rbarhit                      <= (others => '0');
            first_word_offset_int        <= (others => 0);
            slave_read_req_p             <= '0';
         else
            read_reqSM_cs <= read_reqSM_ns;
            slave_read_req_p             <= '0';
            if s_axi_arvalid = '1' and arready_int = '1' then
               arid_reg(rd_req_ptr)         <= s_axi_arid;
               araddr_reg                   <= s_axi_araddr;
               arregion_reg                 <= s_axi_arregion;
               arlen_reg(rd_req_ptr)        <= s_axi_arlen;
               arburst_reg                  <= s_axi_arburst;
               pu_arlen_reg                 <= pu_axi_arlen; --pu means pre-upsizer
               pu_arsize_reg                <= pu_axi_arsize;
               first_word_offset_int(rd_req_ptr)   <= first_word_offset_calc;
               slave_read_req_p             <= not(slv_write_idle);
            end if;
            if en_barhit = '1' then
               rbarhit             <= barhit;
            end if;
         end if;
      end if;
   end process;

   BAR_decoder :process(araddr_reg)

--   Remove the use of ARRegion
--   BAR_decoder :process(arregion_reg)
--   variable region    : integer;
--
--   begin
--      region                 := conv_integer(arregion_reg);
--      barhit                 <= (others => '0');
--      -- Nam - always true if statement below
--      -- NAM / JRH fixed typo. Was b 2.
--      -- coverage off -item b 1 -allfalse
--      if region < C_AXIBAR_NUM then
--         barhit(region)         <= '1';
--      end if;
   variable address : integer;
   begin
--     address := conv_integer(araddr_reg);
     barhit <= (others => '0');

     -- Nam - always true if statement below
     -- NAM /JRH fixed typo. Was b 2.
     -- coverage off -item b 1 -allfalse
     for i in 0 to (C_AXIBAR_NUM-1) loop
       if((araddr_reg <= C_BAR_HIGHADDR_ARRAY(i)) and (araddr_reg >= C_BAR_ARRAY(i))) then
         barhit(i) <= '1';
       end if;
     end loop;       
   end process;

   -- This process maintains the pending read status vector of 8 'slots' for AXI read requests
   -- Works with the 'sync' process below 
   pend_rdreq_status_comb :process(read_req_sent, illegal_burst_int, slot_request, clr_pending_rd_reqs_entry, arid_reg,
                                   pending_rd_reqs, cpl_index_int, rd_req_ptr, arid_history, rd_req_ptr_history)
   variable first_zero  : boolean;
   variable first_match : boolean;
   variable index_save  : integer range 0 to HISTORY_SIZE;
   variable clear_mask8 : unsigned(0 to HISTORY_SIZE-1);-- := x"FE";
   variable clear_mask4 : unsigned(0 to 3) := x"E";
   begin
      if HISTORY_SIZE = 8 then
         clear_mask8 := x"FE";
      else
         clear_mask8 := x"E";
      end if;
      rd_req_ptr_nxt         <= rd_req_ptr;
      pending_rd_reqs_nxt    <= pending_rd_reqs;
      open_slot              <= '0';
      slot_cleared           <= '0';
      arid_history_nxt       <= arid_history;
      rd_req_ptr_history_nxt <= rd_req_ptr_history;
      if read_req_sent = '1' then
         if HISTORY_SIZE = 8 then
            pending_rd_reqs_nxt    <= pending_rd_reqs or SHL(x"01", conv_std_logic_vector(rd_req_ptr, 3));
         else
            pending_rd_reqs_nxt    <= pending_rd_reqs or SHL(x"1", conv_std_logic_vector(rd_req_ptr, 2));
         end if;
         arid_history_nxt       <= ('1' & arid_reg(rd_req_ptr)) & arid_history(0 to HISTORY_SIZE-2);
         rd_req_ptr_history_nxt <= rd_req_ptr & rd_req_ptr_history(0 to HISTORY_SIZE-2);
      elsif clr_pending_rd_reqs_entry = '1' then -- clear pending read request
         pending_rd_reqs_nxt    <= pending_rd_reqs and STD_LOGIC_VECTOR(rotate_left(clear_mask8, cpl_index_int));
         slot_cleared           <= '1';
         first_match            := FALSE;
         for i in 0 to HISTORY_SIZE-1 loop -- find the most recent pending read request of current arid
            if rd_req_ptr_history(i) = cpl_index_int and--arid_history(i)(C_S_AXI_ID_WIDTH) = '1' and
            first_match = FALSE then
               first_match            := TRUE;
               arid_history_nxt(i to HISTORY_SIZE-1) <= arid_history(i+1 to HISTORY_SIZE-1)
                                                        & ZEROS(C_S_AXI_ID_WIDTH downto 0);
               rd_req_ptr_history_nxt(i to HISTORY_SIZE-2) <= rd_req_ptr_history(i+1 to HISTORY_SIZE-1);
            end if;
         end loop;
      elsif slot_request = '1' then
         first_zero             := FALSE;
         index_save             := HISTORY_SIZE;
         for i in 0 to C_AXIREAD_NUM-1 loop -- find lowest open read request slot
            if pending_rd_reqs(i) = '0' and first_zero = FALSE then
               first_zero             := TRUE;
               index_save             := i;
            end if;
         end loop;
         if index_save /= HISTORY_SIZE then -- set pending read request
            open_slot              <= '1';
            rd_req_ptr_nxt         <= index_save;
         end if;
      end if;
   end process;

   -- This process maintains the pending read status vector of 8 'slots' for AXI read requests
   -- Works with the 'comb' process above 
   pend_rdreq_status_sync :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            pending_rd_reqs        <= (others => '0');
            pending_rd_reqs_d      <= (others => '0');
            rd_req_ptr             <= 0;
            arid_history           <= (others => (others => '0'));
            rd_req_ptr_history     <= (others => 0);
            clr_pending_rd_reqs_entry          <= '0';
            slot_cleared_d         <= '0';
         else
            pending_rd_reqs        <= pending_rd_reqs_nxt;
            pending_rd_reqs_d      <= pending_rd_reqs;
            rd_req_ptr             <= rd_req_ptr_nxt;
            arid_history           <= arid_history_nxt;
            rd_req_ptr_history     <= rd_req_ptr_history_nxt;
            slot_cleared_d         <= slot_cleared;
            if rdata_str_done_int = '1' then
               clr_pending_rd_reqs_entry          <= '1';
            elsif slot_cleared_d = '1' then
               clr_pending_rd_reqs_entry          <= '0';
            end if;
         end if;
      end if;
   end process;


   -- This process maintains the 'slot' buffer data dependencies that are an array of integer values that are assigned
   -- values N as follows:
   -- N = 8 for no dependency, N = 0 - 7 indicates dependency on 'slot' buffer N
   -- Works with the 'sync' process below 
   arid_dependencySM_comb :process(arid_dependencySM_cs, new_dependency_entry, arid_history, rd_req_ptr_history, arid_reg,
                                   arid_match_index, arid_dependency, dependency_ptr, pending_rd_reqs, no_pending_reqs,
                                   clr_dependency_entry, cpl_index_int, clr_pending_rd_reqs_entry)
   variable first_match  : boolean;
   begin
      arid_dependencySM_ns                  <= arid_dependencySM_cs;
      arid_match_index_nxt                  <= arid_match_index;
      arid_dependency_nxt                   <= arid_dependency;  
      new_dependency_hs                     <= '0';
      dependency_cleared                    <= '0';
      case arid_dependencySM_cs is
         when IDLE =>
            if clr_dependency_entry = '1' then
               arid_dependencySM_ns   <= CLEAR_DEPENDENCY;
            elsif new_dependency_entry = '1' and clr_pending_rd_reqs_entry = '0' then
               arid_dependencySM_ns   <= FIND_HISTORY_MATCH;
            end if;

         when FIND_HISTORY_MATCH =>
            if clr_pending_rd_reqs_entry = '0' then
               if C_S_AXI_SUPPORTS_NARROW_BURST = 0 then -- use arid matching for multi thread
                  first_match            := FALSE;
                  for i in 1 to HISTORY_SIZE-1 loop -- find the most recent pending read request of current arid
                     if arid_history(i) = ('1' & arid_reg(dependency_ptr)) and pending_rd_reqs(rd_req_ptr_history(i)) = '1'
                     and first_match = FALSE then
                        first_match            := TRUE;
                        arid_match_index_nxt   <= i;
                     end if;
                  end loop;
               elsif no_pending_reqs = '0' then -- don't use arid matching for multi thread
                  if arid_history(1)(C_S_AXI_ID_WIDTH) = '1' then
                     first_match            := TRUE;
                     arid_match_index_nxt   <= 1;
                  else
                     first_match            := FALSE;
                  end if;
               else
                  first_match            := FALSE;
               end if;
               if first_match = TRUE then
                  arid_dependencySM_ns                  <= SET_DEPENDENCY;
               else
                  arid_dependencySM_ns                  <= IDLE;
                  new_dependency_hs                     <= '1';
               end if;
            end if;

         when SET_DEPENDENCY =>
            if pending_rd_reqs(rd_req_ptr_history(arid_match_index)) = '1' then -- match is still pending
               arid_dependency_nxt(dependency_ptr)   <= rd_req_ptr_history(arid_match_index);
            else
               arid_dependency_nxt(dependency_ptr)   <= HISTORY_SIZE;
            end if;
            arid_dependencySM_ns                  <= IDLE;
            new_dependency_hs                     <= '1';

         when CLEAR_DEPENDENCY =>
            first_match                           := FALSE;
            for i in 0 to C_AXIREAD_NUM-1 loop --find and clear dependency on this completion
               if arid_dependency(i) = cpl_index_int and first_match = FALSE then
                  first_match                           := TRUE;
                  arid_dependency_nxt(i)                <= HISTORY_SIZE;
               end if;
            end loop;
            dependency_cleared                    <= '1';
            arid_dependencySM_ns                  <= IDLE;

      end case;
   end process;

   -- This process maintains the 'slot' buffer data dependencies that are an array of integer values that are assigned
   -- values N as follows:
   -- N = 8 for no dependency, N = 0 - 7 indicates dependency on 'slot' buffer N
   -- Works with the 'comb' process above 
   arid_dependencySM_sync :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            arid_dependencySM_cs               <= IDLE;
            arid_dependency                    <= (others => HISTORY_SIZE);
            arid_match_index                   <= 0;
            dependency_ptr                     <= 0;
            new_dependency_entry               <= '0';
            clr_dependency_entry               <= '0';
            no_pending_reqs                    <= '0';
         else
            arid_dependencySM_cs               <= arid_dependencySM_ns;
            arid_dependency                    <= arid_dependency_nxt;
            arid_match_index                   <= arid_match_index_nxt;
            if read_req_sent = '1' then
               dependency_ptr                     <= rd_req_ptr;
               new_dependency_entry               <= '1';
               if HISTORY_SIZE = 8 then
                  if pending_rd_reqs = x"00" then
                     no_pending_reqs                    <= '1';
                  end if;
               else
                  if pending_rd_reqs = x"0" then
                     no_pending_reqs                    <= '1';
                  end if;
               end if;
            elsif new_dependency_hs = '1' then
               new_dependency_entry               <= '0';
               no_pending_reqs                    <= '0';
            end if;
            if rdata_str_done_int = '1' then
               clr_dependency_entry               <= '1';
            elsif dependency_cleared = '1' then
               clr_dependency_entry               <= '0';
            end if;
         end if;
      end if;
   end process;

   -- This process maintains rresp for each 'slot' read request
   -- After each 'slot' buffer is read and data returned to the AXI read channel, the 'slot' rresp value is cleared
   -- Different error conditions will set the 'slot' rresp value to SLVERR
   rresp_gen :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            arid_rresp         <= (others => (others => '0')); -- OKAY is default
            blk_lnk_up_d       <= '0';
         else
            blk_lnk_up_d       <= blk_lnk_up; -- create delay of blk_lnk_up for edge detect
            if rdata_str_done_int = '1' then
               arid_rresp(cpl_index_int)      <= (others => '0');
            end if;
            if illegal_burst_int = '1' then
               arid_rresp(rd_req_ptr)         <= "10"; -- SLVERR
            end if;
            if unsupported_req = '1' or completer_abort = '1' then
               arid_rresp(rd_req_index_err)   <= "10"; -- SLVERR
            end if;
            for i in 0 to C_AXIREAD_NUM-1 loop
               if cpl_timer_timeout_strb_int(i) = '1' or poisoned_req(i) = '1' or
                  (blk_lnk_up = '0' and blk_lnk_up_d = '1' and
                  not(i = cpl_index_int and en_rresp = '1' and read_dataSM_cs_d = STR_DATA)
                  and ((pending_rd_reqs(i) = '1' and not(i = cpl_index_int and (rdata_str_done_int = '1' or clr_pending_rd_reqs_entry = '1')))
                       or (i = rd_req_ptr and en_barhit = '1')))
                  then --falling edge of blk_lnk_up, set if not current rresp
                  arid_rresp(i)                  <= "10"; -- SLVERR
               end if;
               if pending_rd_reqs(i) = '1' and pending_rd_reqs_d(i) = '0' and blk_lnk_up = '0' then --pending read req set during link down
                  arid_rresp(i)                  <= "10"; -- SLVERR
               end if;
            end loop;
         end if;
      end if;
   end process;

   -- This process maintains completion permission status for each 'slot' read request
   -- As completion staus is cleared of any pending completions, the state of the master bridge write is checked and
   -- permission is granted if it is IDLE. If not, a request is made to the ordering logic. When a go comes back
   -- permission is then granted.
   completion_permission_proc :process(s_axi_aclk)
   variable index_save : integer range 0 to 8;
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            slave_cmpl_rdy_p            <= '0';
            cpl_req_index               <= 0;
            cpl_permit                  <= (others => '0');
            cmpl_rdy_pend               <= (others => '0');
            slave_cmpl_go_pend          <= '0';
         else
            slave_cmpl_rdy_p      <= '0';
            index_save := HISTORY_SIZE;
            for i in 0 to C_AXIREAD_NUM-1 loop
               if pending_rd_reqs_d(i) = '1' and ((tag_cpl_status_clr(i)(0 to DATA_SIZE*8-1) = ONES and tag_cpl_status_clr_d(i)(0 to DATA_SIZE*8-1) /= ONES)
               or blk_lnk_up = '0') and cpl_permit(i) = '0' then
                  index_save            := i;
               end if;
            end loop;
            if index_save /= HISTORY_SIZE then
               if master_wr_idle = '0' then
                  if slave_cmpl_go_pend = '0' and cmpl_rdy_pend = 0 then
                     slave_cmpl_rdy_p            <= '1';
                     slave_cmpl_go_pend          <= '1';
                     cpl_req_index               <= index_save;
                  else
                     cmpl_rdy_pend(index_save)   <= '1';
                  end if;
               else
                  cpl_permit(index_save)   <= '1';
               end if;
            end if; 
            index_save := HISTORY_SIZE;
            for i in 0 to C_AXIREAD_NUM-1 loop
               if cmpl_rdy_pend(i) = '1' then
                  index_save            := i;
               end if;
            end loop;
            if index_save /= HISTORY_SIZE then
               if master_wr_idle = '0' then
                  if slave_cmpl_go_pend = '0' then
                     slave_cmpl_rdy_p            <= '1';
                     slave_cmpl_go_pend          <= '1';
                     cpl_req_index               <= index_save;
                  end if;
               else
                  cpl_permit(index_save)      <= '1';
                  cmpl_rdy_pend(index_save)   <= '0';
               end if;
            end if;
            if slave_cmpl_go = '1' and slave_cmpl_go_pend = '1' then
               cpl_permit(cpl_req_index)   <= '1';
               cmpl_rdy_pend(cpl_req_index) <= '0';
               slave_cmpl_go_pend          <= '0';
            end if;
            if clr_pending_rd_reqs_entry = '1' then
               cpl_permit(cpl_index_int)   <= '0';
            end if;
            if illegal_burst_int = '1' then
               cpl_permit(rd_req_ptr)      <= '1';--set so read return happens
            end if;
         end if;
      end if;
   end process;

   -- This process returns the read data requested to the AXI read data channel
   -- Works with both the 'sync' and 'rd_counter' processes below 
   read_dataSM_comb :process(read_dataSM_cs, rdata, s_axi_rready, rd_counter, arlen_reg, cpl_index_int, slot_cleared,
                             pending_rd_reqs_d, tag_cpl_status_clr, arid_dependency, rdata_mask, poisoned_req,
                             clr_dependency_entry, new_dependency_entry, cpl_permit, master_wr_idle)
   variable first_zero : boolean;
   variable index_save : integer range 0 to HISTORY_SIZE;
   begin
      read_dataSM_ns        <= read_dataSM_cs;
      s_axi_rdata_int       <= (others => '0');
      s_axi_rlast_int       <= '0';
      en_rresp              <= '0';
      rvalid_int            <= '0';
      rdata_bram_rd_en_int  <= '0';
      rdata_str_done_int    <= '0';
      cpl_index_nxt         <= cpl_index_int;
      header_ep             <= '0';
      rdata_str_start       <= '0';
      ld_rd_counter         <= '0';
      case read_dataSM_cs is
         when IDLE =>
            if HISTORY_SIZE = 8 then
               if pending_rd_reqs_d /= x"00" then
                  read_dataSM_ns        <= WAIT_FOR_CPL;
               end if;
            else
               if pending_rd_reqs_d /= x"0" then
                  read_dataSM_ns        <= WAIT_FOR_CPL;
               end if;
            end if;

         when WAIT_FOR_CPL =>
            if clr_dependency_entry ='0' and new_dependency_entry = '0' then
               index_save := HISTORY_SIZE;
               first_zero := FALSE;
               for i in 0 to C_AXIREAD_NUM-1 loop
                  if pending_rd_reqs_d(i) = '1' and cpl_permit(i) = '1' and first_zero = FALSE and
                  arid_dependency(i) = HISTORY_SIZE then
                     index_save            := i;
                     first_zero            := TRUE;
                  end if;
               end loop;
               if index_save /= HISTORY_SIZE and master_wr_idle = '1' then
                  cpl_index_nxt         <= index_save;
                  read_dataSM_ns        <= LOAD_READ_COUNTER;
               end if;
            end if;
         when LOAD_READ_COUNTER =>
            ld_rd_counter         <= '1';
            read_dataSM_ns        <= FIRST_BRAM_READ;

         when FIRST_BRAM_READ =>
            rdata_str_start       <= '1';
            rdata_bram_rd_en_int  <= '1';
            read_dataSM_ns        <= STR_DATA;

         when STR_DATA =>
            rvalid_int            <= '1';
            en_rresp              <= '1';
            s_axi_rdata_int       <= rdata and rdata_mask;
            if rd_counter = 0 then
               s_axi_rlast_int       <= '1';
               if s_axi_rready = '1' then
                  read_dataSM_ns        <= STR_DONE;
                  if poisoned_req(cpl_index_int) = '1' then
                     header_ep             <= '1';
                  end if;
               end if;
            elsif s_axi_rready = '1' then
               rdata_bram_rd_en_int  <= '1';
            end if;

         when STR_DONE =>
            rdata_str_done_int    <= '1';
            read_dataSM_ns        <= WAIT_SLOT_CLR;

         when WAIT_SLOT_CLR =>
            if slot_cleared = '1' then
               read_dataSM_ns        <= IDLE;
            end if;

      end case;
   end process;

   -- This process returns the read data requested to the AXI read data channel
   -- Works with the 'comb' process above 
   read_dataSM_sync :process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            read_dataSM_cs        <= IDLE;
            read_dataSM_cs_d      <= IDLE;
            cpl_index_int         <= 0;
         else
            read_dataSM_cs        <= read_dataSM_ns;
            read_dataSM_cs_d      <= read_dataSM_cs;
            cpl_index_int         <= cpl_index_nxt;
         end if;
      end if;
   end process;

   rd_counter_proc : process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            rd_counter       <= 0;
         else
            if ld_rd_counter = '1' then
               rd_counter       <= conv_integer(arlen_reg(cpl_index_int)) + 1;
            elsif rdata_bram_rd_en_int = '1' then
               rd_counter       <= rd_counter - 1;
            end if;
         end if;
      end if;
   end process;

-- completion timer logic

-- change from v1_00_a, removes C_FAMILY test after spartan6 test
-- AXI ACLK @62.5Mhz case
cpl_timer_start_count <= 3125 when C_COMP_TIMEOUT = 0 and ((C_USER_CLK_FREQ = 1 and C_USER_CLK2_DIV2 = "FALSE") or (C_USER_CLK_FREQ = 2 and C_USER_CLK2_DIV2 = "TRUE")) else
                         3125000 when C_COMP_TIMEOUT = 1 and ((C_USER_CLK_FREQ = 1 and C_USER_CLK2_DIV2 = "FALSE") or (C_USER_CLK_FREQ = 2 and C_USER_CLK2_DIV2 = "TRUE")) else
-- AXI ACLK @125MHz case
--                         6250 when C_COMP_TIMEOUT = 0 else
-- Add in 2 us buffer (total of 250 clock cycles) 
-- (to account for GT latency on outgoing and incoming PCIe TLPs)
                         6500 when C_COMP_TIMEOUT = 0 else
                         6250000 when C_COMP_TIMEOUT = 1 else
                         0;

-- completion timers -- one for each AXI read request
   cpl_timers_rd_req : for j in 0 to C_AXIREAD_NUM-1 generate
      cpl_timers_str_size : for k in 0 to DATA_SIZE*8-1 generate


      cpl_timers_comb : process(cpl_timer_count(j,k), tag_cpl_status_clr(j)(k), tag_cpl_status_clr_d(j)(k), cpl_timer_start_count)
      begin
         cpl_timer_count_nxt(j,k)    <= cpl_timer_count(j,k);
         cpl_timer_timeout_int(j)(k)      <= '0';
         if tag_cpl_status_clr(j)(k) = '0' and tag_cpl_status_clr_d(j)(k) = '1' then
            cpl_timer_count_nxt(j,k)    <= cpl_timer_start_count;
         elsif cpl_timer_count(j,k) /= 0 and tag_cpl_status_clr(j)(k) = '0' then
            cpl_timer_count_nxt(j,k)    <= cpl_timer_count(j,k) - 1;
         elsif cpl_timer_count(j,k) = 0 and tag_cpl_status_clr(j)(k) = '0' then
            cpl_timer_timeout_int(j)(k)  <= '1';
         end if;
      end process;

      cpl_timers_sync : process(s_axi_aclk)
      begin
         if(rising_edge(s_axi_aclk)) then
            if(reset = '0') then
               cpl_timer_count(j,k)        <= 0;
               tag_cpl_status_clr_d(j)(k)   <= '0';
            else
               cpl_timer_count(j,k)        <= cpl_timer_count_nxt(j,k);
               tag_cpl_status_clr_d(j)(k)   <= tag_cpl_status_clr(j)(k);
            end if;
         end if;
      end process;

   end generate cpl_timers_str_size;
   end generate cpl_timers_rd_req;

   cpl_timer_timeout_delay : process(s_axi_aclk)
   begin
      if(rising_edge(s_axi_aclk)) then
         if(reset = '0') then
            cpl_timer_timeout_d       <= (others => '0');
         else
            cpl_timer_timeout_d       <= cpl_timer_timeout;
         end if;
      end if;
   end process;

   cpl_timer_timeout_strb_process : process(cpl_timer_timeout, cpl_timer_timeout_d)
   begin
      cpl_timer_timeout_strb_int    <= (others => '0');
      for j in 0 to C_AXIREAD_NUM-1 loop
         if cpl_timer_timeout(j) = '1' and cpl_timer_timeout_d(j) = '0' then
            cpl_timer_timeout_strb_int(j) <= '1';
         end if;
      end loop;
   end process;



end architecture;
