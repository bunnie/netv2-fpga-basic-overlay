-------------------------------------------------------------------------------
-- (c) Copyright 2010 - 2011 Xilinx, Inc. All rights reserved.
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
-- Filename:        axi_mm_masterbridge_rd.vhd
--
-- Description:     
--                  
-- This VHDL file is an HDL design file for the AXI MM/S master bridge read function
-- on the AXI memory map.
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_mm_masterbridge_rd.vhd
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_MISC.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

library axi_pcie_v2_8_0;
use axi_pcie_v2_8_0.all;
use axi_pcie_v2_8_0.axi_pcie_mm_s_pkg.all;

--library XilinxCoreLib;
--use XilinxCoreLib.all;
--library UNISIM;
--use UNISIM.VComponents.all;

entity axi_mm_masterbridge_rd is
   generic(
      --Family Generics
      C_FAMILY                : string;
      C_M_AXI_ADDR_WIDTH      : integer;
      C_M_AXI_DATA_WIDTH      : integer;
      C_PCIEBAR_NUM           : integer;
      C_PCIEBAR_AS            : integer;
      C_PCIEBAR_LEN_0         : integer;
      C_PCIEBAR2AXIBAR_0      : std_logic_vector;
      C_PCIEBAR2AXIBAR_0_SEC  : integer;
      C_PCIEBAR_LEN_1         : integer;
      C_PCIEBAR2AXIBAR_1      : std_logic_vector;
      C_PCIEBAR2AXIBAR_1_SEC  : integer;
      C_PCIEBAR_LEN_2         : integer;
      C_PCIEBAR2AXIBAR_2      : std_logic_vector;
      C_PCIEBAR2AXIBAR_2_SEC  : integer
      );
   port(
      --AXI Global
      aclk            : in  std_logic; --meaningful port name
      reset           : in  std_logic; --meaningful port name
      -- AXI Master Read Address Channel
      m_axi_araddr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0); --meaningful port name
      m_axi_arlen      : out std_logic_vector(7 downto 0); --meaningful port name
      m_axi_arsize     : out std_logic_vector(2 downto 0); --meaningful port name
      m_axi_arburst    : out std_logic_vector(1 downto 0); --meaningful port name
      m_axi_arprot     : out std_logic_vector(2 downto 0); --meaningful port name
      m_axi_arvalid    : out std_logic; --meaningful port name
      m_axi_arready    : in  std_logic; --meaningful port name
      m_axi_arlock     : out std_logic; --meaningful port name
      m_axi_arcache    : out std_logic_vector(3 downto 0); --meaningful port name
      -- AXI Master Read Data Channel
      m_axi_rdata      : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); --meaningful port name
      m_axi_rresp      : in  std_logic_vector(1 downto 0); --meaningful port name
      m_axi_rlast      : in  std_logic; --meaningful port name
      m_axi_rvalid     : in  std_logic; --meaningful port name
      m_axi_rready     : out std_logic; --meaningful port name
      --Master Bridge Interrupt Strobes
      master_int      : out std_logic_vector(1 downto 0); --meaningful port name
      --Internal Interface
      rdreq           : in std_logic; --meaningful port name
      rresp           : out rresp_array; --meaningful port name
      almost_full     : in  std_logic; --meaningful port name
      dataen          : out std_logic; --meaningful port name
      tlpaddrl        : in  tlpaddrl_array; --meaningful port name
      tlplength       : in  tlplength_array; --meaningful port name
      din             : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); --meaningful port name
      barhit          : in  barhit_array; --meaningful port name
      blk_lnk_up      : in  std_logic; --meaningful port name
      --Internal Interface Ordering
      slwrreqpend     : in  std_logic_vector(1 downto 0); --meaningful port name
      slwrreqpending  : out slwrreqpending_array; --meaningful port name
      compready       : out std_logic_vector(2 downto 0); --meaningful port name
      addrstreampipeline  : out std_logic_vector(2 downto 0); -- meaningful port name
      s_axi_awvalid   : in std_logic;
      rdtargetpipeline    : in  std_logic_vector(2 downto 0); --meaningful port name
      master_wr_idle      : in  std_logic --meaningful port name
      );
end axi_mm_masterbridge_rd;

architecture behavioral of axi_mm_masterbridge_rd is
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of behavioral : architecture is "yes";

type axi_rd_master_addr_states is (idle,
                                   pcietlpinfo);

signal rdaddrsmsig         : axi_rd_master_addr_states;
type axi_rd_master_data_states is (idle,
                                   datatransfer);

signal rddatasmsig         : axi_rd_master_data_states;


signal m_axi_araddr1, m_axi_araddr2, m_axi_araddr3, m_axi_araddr4 : std_logic_vector(31 downto 0);
signal m_axi_arlen1, m_axi_arlen2, m_axi_arlen3, m_axi_arlen4     : std_logic_vector(7 downto 0);


type vector_array_type6 is array (0 to 3) of std_logic_vector(1 downto 0);
signal datatxpertlp_ram         : vector_array_type6;

type vector_array_type3 is array (0 to 3) of std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
signal m_axi_araddrtemp         : vector_array_type3;
type vector_array_type4 is array (0 to 3) of std_logic_vector(9 downto 0);
signal m_axi_arlentemp          : vector_array_type4;
type vector_array_type5 is array (0 to 3) of std_logic_vector(2 downto 0);
signal m_axi_awsizetemp         : vector_array_type5;

signal datatxpertlp             : std_logic_vector(1 downto 0);
signal rrespsig                 : std_logic_vector(1 downto 0);
signal firstdwen                : std_logic;
signal addrspipeline            : std_logic_vector(2 downto 0);
signal addrmmpipeline           : std_logic_vector(2 downto 0);
signal datammpipeline           : std_logic_vector(2 downto 0);
signal splitcnt, splitcntr      : std_logic_vector(1 downto 0);
signal m_axi_arvalid_sig        : std_logic;
signal m_axi_rdatatemp64        : std_logic_vector(31 downto 0);
signal m_axi_rdatatemp128       : std_logic_vector(95 downto 0);
signal databeat1, single_beat   : std_logic;
signal blk_lnk_up_d             : std_logic;
signal m_axi_arprottemp         : vector_array_type5;

function log2 (x : positive) return natural is 
begin
   if x = 1 then
      return 0;
   else
      return log2 (x / 2) + 1;
   end if;
end function log2;

begin

addrstreampipeline <= addrspipeline;

axi_rd_master_addr: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         rdaddrsmsig       <= idle;
         addrmmpipeline    <= "000";
         m_axi_araddr      <= (others => '0');
         m_axi_arlen       <= (others => '0');
         m_axi_arsize      <= (others => '0');
         m_axi_arprot      <= "000";
         m_axi_arvalid_sig <= '0';
         splitcnt          <= "00";
         splitcntr         <= "00";
      else
         case rdaddrsmsig is
            when idle => 
               m_axi_araddr1 <= (others => '0');
               m_axi_araddr2 <= (others => '0');
               m_axi_araddr3 <= (others => '0');
               m_axi_araddr4 <= (others => '0');
               if addrmmpipeline /= addrspipeline and master_wr_idle = '1' then
                  rdaddrsmsig     <= pcietlpinfo;
                  m_axi_araddr1 <= m_axi_araddrtemp(conv_integer(addrmmpipeline(1 downto 0)));
                  splitcnt <= m_axi_arlentemp(conv_integer(addrmmpipeline(1 downto 0)))(9 downto 8);
                  if m_axi_arlentemp(conv_integer(addrmmpipeline(1 downto 0)))(9) = '0' then
                     if m_axi_arlentemp(conv_integer(addrmmpipeline(1 downto 0)))(8) = '0' then
                        m_axi_arlen1 <= m_axi_arlentemp(conv_integer(addrmmpipeline(1 downto 0)))(7 downto 0);
                     else
                        m_axi_arlen1 <= x"FF";
                        m_axi_arlen2 <= 
                           conv_std_logic_vector(conv_integer(m_axi_arlentemp(conv_integer(addrmmpipeline(1 downto 0)))) - 256, 8);
                        if C_M_AXI_DATA_WIDTH = 32 then
                           m_axi_araddr2(31 downto 2) <= m_axi_araddrtemp(conv_integer(addrmmpipeline(1 downto 0)))(31 downto 2) + 
                             "100000000";
                        elsif C_M_AXI_DATA_WIDTH = 64 then
                           m_axi_araddr2(31 downto 2) <= m_axi_araddrtemp(conv_integer(addrmmpipeline(1 downto 0)))(31 downto 2) + 
                             "1000000000";
                        else
                           m_axi_araddr2(31 downto 2) <= m_axi_araddrtemp(conv_integer(addrmmpipeline(1 downto 0)))(31 downto 2) + 
                             "10000000000";
                        end if;
                     end if;
                  else
                     m_axi_arlen1 <= x"FF";
                     m_axi_arlen2 <= x"FF";
                     if C_M_AXI_DATA_WIDTH = 32 then
                        m_axi_araddr2(31 downto 2) <= m_axi_araddrtemp(conv_integer(addrmmpipeline(1 downto 0)))(31 downto 2) + 
                          "100000000";
                        m_axi_araddr3(31 downto 2) <= m_axi_araddrtemp(conv_integer(addrmmpipeline(1 downto 0)))(31 downto 2) + 
                          "1000000000";
                        -- coverage off
                     elsif C_M_AXI_DATA_WIDTH = 64 then
                        m_axi_araddr2(31 downto 2) <= m_axi_araddrtemp(conv_integer(addrmmpipeline(1 downto 0)))(31 downto 2) + 
                          "1000000000";
                        m_axi_araddr3(31 downto 2) <= m_axi_araddrtemp(conv_integer(addrmmpipeline(1 downto 0)))(31 downto 2) + 
                          "10000000000";
                     else
                        m_axi_araddr2(31 downto 2) <= m_axi_araddrtemp(conv_integer(addrmmpipeline(1 downto 0)))(31 downto 2) + 
                          "10000000000";
                        m_axi_araddr3(31 downto 2) <= m_axi_araddrtemp(conv_integer(addrmmpipeline(1 downto 0)))(31 downto 2) + 
                          "100000000000";
                     end if;
                        -- coverage on
                     if m_axi_arlentemp(conv_integer(addrmmpipeline(1 downto 0)))(8) = '0' then
                        m_axi_arlen3 <= 
                           conv_std_logic_vector(conv_integer(m_axi_arlentemp(conv_integer(addrmmpipeline(1 downto 0)))) - 512, 8);
                     else
                        m_axi_arlen3 <= x"FF";
                        m_axi_arlen4 <= 
                           conv_std_logic_vector(conv_integer(m_axi_arlentemp(conv_integer(addrmmpipeline(1 downto 0)))) - 768, 8);
                        if C_M_AXI_DATA_WIDTH = 32 then
                           m_axi_araddr4(31 downto 2) <= m_axi_araddrtemp(conv_integer(addrmmpipeline(1 downto 0)))(31 downto 2) + 
                             "1100000000";
                        -- coverage off
                        elsif C_M_AXI_DATA_WIDTH = 64 then
                           m_axi_araddr4(31 downto 2) <= m_axi_araddrtemp(conv_integer(addrmmpipeline(1 downto 0)))(31 downto 2) + 
                             "11000000000";
                        else
                           m_axi_araddr4(31 downto 2) <= m_axi_araddrtemp(conv_integer(addrmmpipeline(1 downto 0)))(31 downto 2) + 
                             "110000000000";
                        end if;
                        -- coverage on
                     end if;
                  end if;
               else
                  rdaddrsmsig       <= idle;
                  m_axi_araddr      <= (others => '0');
                  m_axi_arlen       <= (others => '0');
                  m_axi_arsize      <= (others => '0');
                  m_axi_arprot      <= "000";
                  m_axi_arvalid_sig     <= '0';
               end if;

            when pcietlpinfo => 
               m_axi_arvalid_sig <= '1';
               if splitcntr = "00" then
                  m_axi_araddr <= m_axi_araddr1;
                  m_axi_arlen  <= m_axi_arlen1;
               elsif splitcntr = "01" then
                  m_axi_araddr <= m_axi_araddr2;
                  m_axi_arlen  <= m_axi_arlen2;
               elsif splitcntr = "10" then
                  m_axi_araddr <= m_axi_araddr3;
                  m_axi_arlen  <= m_axi_arlen3;
               else
                  m_axi_araddr <= m_axi_araddr4;
                  m_axi_arlen  <= m_axi_arlen4;
               end if;
               m_axi_arsize  <= m_axi_awsizetemp(conv_integer(addrmmpipeline(1 downto 0)));
               m_axi_arprot  <= m_axi_arprottemp(conv_integer(addrmmpipeline(1 downto 0)));
               if m_axi_arready = '1' and m_axi_arvalid_sig = '1' then
                  if splitcntr /= splitcnt then
                     rdaddrsmsig   <= pcietlpinfo;
                     splitcntr <= splitcntr + 1;
                     m_axi_arvalid_sig <= '0';
                  else
                     rdaddrsmsig   <= idle;
                     addrmmpipeline <= addrmmpipeline + 1;
                     m_axi_arvalid_sig <= '0';
                     splitcntr <= "00";
                  end if;
               end if;
               -- CR 655332
               -- Flush the request which is not received by target interface after link down event
               -- 655644
               -- Once ARVALID once asserted, will remain asserted unless until 
               -- it gets ARREADY signal
               if blk_lnk_up = '0' and m_axi_arvalid_sig = '0'  and splitcntr = "00" then
                  m_axi_arvalid_sig <= '0';
                  rdaddrsmsig       <= idle;
                  splitcntr         <= "00";
               end if;
            
            -- coverage off
            when others =>
               rdaddrsmsig <= idle;
            -- coverage on
         end case;
         --if blk_lnk_up = '0' then -- flush next read req
         --   addrmmpipeline <= addrspipeline;
         --end if;
      end if;
   end if;
end process;

data_width_32: if C_M_AXI_DATA_WIDTH = 32 generate
axi_wr_master_data: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         m_axi_rready <= '0';
         rddatasmsig     <= idle;
         datammpipeline  <= (others => '0');
         rrespsig <= (others => '0');
         din <= (others => '0');
         dataen <= '0';
         datatxpertlp     <= (others => '0');
         master_int <= "00";
         single_beat <= '0';
      else
         case rddatasmsig is
            when idle =>
               m_axi_rready <= '0';
               dataen <= '0';
               master_int <= "00";
               if datammpipeline /= addrspipeline or datammpipeline(1 downto 0) /= rdtargetpipeline(1 downto 0) then
                  rresp(conv_integer(datammpipeline(1 downto 0))) <= (others => '0');
               end if;
               if datammpipeline /= addrspipeline then
                  rddatasmsig   <= datatransfer;
                  datatxpertlp <= datatxpertlp_ram(conv_integer(datammpipeline(1 downto 0)));
                  rrespsig <= (others => '0');
                  dataen <= '1';
                  single_beat <= '1';
               else
                  rddatasmsig <= idle;
                  dataen <= '0';
               end if;
            
            when datatransfer  =>
               single_beat <= '0';
               m_axi_rready <= not(almost_full);
               if almost_full = '0' then
                  if m_axi_rvalid = '1' then
                     din <= m_axi_rdata;
                     rrespsig(0) <= m_axi_rresp(0) or rrespsig(0);
                     rrespsig(1) <= m_axi_rresp(1) or rrespsig(1);
                     if m_axi_rlast = '1' then
                        if datatxpertlp /= "00" then
                           datatxpertlp <= datatxpertlp - 1;
                           rddatasmsig   <= datatransfer;
                        else
                           rddatasmsig <= idle;
                           m_axi_rready <= single_beat;
                           dataen <= single_beat;
                           datammpipeline <= datammpipeline + 1;
                           rresp(conv_integer(datammpipeline(1 downto 0))) <= 
                              '1' & (m_axi_rresp(1) or rrespsig(1)) & (m_axi_rresp(0) or rrespsig(0));
                           master_int(1) <= (m_axi_rresp(1) or rrespsig(1)) and not(m_axi_rresp(0) or rrespsig(0));
                           master_int(0) <= (m_axi_rresp(1) or rrespsig(1)) and (m_axi_rresp(0) or rrespsig(0));
                           slwrreqpending(conv_integer(datammpipeline(1 downto 0))) <= slwrreqpend + conv_integer(s_axi_awvalid);
                        end if;
                     end if;
                  end if;
               end if;
            
            -- coverage off
            when others =>
               rddatasmsig <= idle;
            -- coverage on
         end case;
         if blk_lnk_up = '0' then
           rresp <= (others => (others => '0'));
         end if;
      end if;
   end if;
end process;
end generate;

data_width_64: if C_M_AXI_DATA_WIDTH = 64 generate
axi_wr_master_data: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         m_axi_rready <= '0';
         rddatasmsig     <= idle;
         datammpipeline  <= (others => '0');
         rrespsig <= (others => '0');
         m_axi_rdatatemp64 <= (others => '0');
         databeat1 <= '0';
         din <= (others => '0');
         dataen <= '0';
         datatxpertlp <= (others => '0');
         master_int <= "00";
         single_beat <= '0';
      else
         case rddatasmsig is
            when idle =>
               m_axi_rready <= '0';
               dataen <= '0';
               master_int <= "00";
               if datammpipeline /= addrspipeline or datammpipeline(1 downto 0) /= rdtargetpipeline(1 downto 0) then
                  rresp(conv_integer(datammpipeline(1 downto 0))) <= (others => '0');
               end if;
               if datammpipeline /= addrspipeline then
                  rddatasmsig   <= datatransfer;
                  datatxpertlp <= datatxpertlp_ram(conv_integer(datammpipeline(1 downto 0)));
                  rrespsig <= (others => '0');
                  dataen <= '1';
                  databeat1 <= '1';
                  single_beat <= '1';
               else
                  rddatasmsig <= idle;
                  dataen <= '0';
               end if;
            
            when datatransfer  =>
               single_beat <= '0';
               m_axi_rready <= not(almost_full);
               if almost_full = '0' then
                  if m_axi_rvalid = '1' then
                     din <= m_axi_rdata;
                     rrespsig(0) <= m_axi_rresp(0) or rrespsig(0);
                     rrespsig(1) <= m_axi_rresp(1) or rrespsig(1);
                     if m_axi_rlast = '1' then
                        if datatxpertlp /= "00" then
                           datatxpertlp <= datatxpertlp - 1;
                           rddatasmsig   <= datatransfer;
                        else
                           rddatasmsig <= idle;
                           m_axi_rready <= single_beat;
                           dataen <= single_beat;
                           datammpipeline <= datammpipeline + 1;
                           rresp(conv_integer(datammpipeline(1 downto 0))) <= 
                              '1' & (m_axi_rresp(1) or rrespsig(1)) & (m_axi_rresp(0) or rrespsig(0));
                           master_int(1) <= (m_axi_rresp(1) or rrespsig(1)) and not(m_axi_rresp(0) or rrespsig(0));
                           master_int(0) <= (m_axi_rresp(1) or rrespsig(1)) and (m_axi_rresp(0) or rrespsig(0));
                           slwrreqpending(conv_integer(datammpipeline(1 downto 0))) <= slwrreqpend + conv_integer(s_axi_awvalid);
                        end if;
                     end if;
                  end if;
               end if;
            
            -- coverage off
            when others =>
               rddatasmsig <= idle;
            -- coverage on
         end case;
         if blk_lnk_up = '0' then
           rresp <= (others => (others => '0'));
         end if;
      end if;
   end if;
end process;
end generate;

data_width_128: if C_M_AXI_DATA_WIDTH = 128 generate
axi_wr_master_data: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         m_axi_rready <= '0';
         rddatasmsig     <= idle;
         datammpipeline  <= (others => '0');
         rrespsig <= (others => '0');
         m_axi_rdatatemp128 <= (others => '0');
         databeat1 <= '0';
         din <= (others => '0');
         dataen <= '0';
         datatxpertlp <= (others => '0');
         master_int <= "00";
         single_beat <= '0';
      else
         case rddatasmsig is
            when idle =>
               m_axi_rready <= '0';
               dataen <= '0';
               master_int <= "00";
               if datammpipeline /= addrspipeline or datammpipeline(1 downto 0) /= rdtargetpipeline(1 downto 0) then
                  rresp(conv_integer(datammpipeline(1 downto 0))) <= (others => '0');
               end if;
               if datammpipeline /= addrspipeline then
                  rddatasmsig   <= datatransfer;
                  datatxpertlp <= datatxpertlp_ram(conv_integer(datammpipeline(1 downto 0)));
                  rrespsig <= (others => '0');
                  dataen <= '1';
                  databeat1 <= '1';
                  single_beat <= '1';
               else
                  rddatasmsig <= idle;
                  dataen <= '0';
               end if;
            
            when datatransfer  =>
               single_beat <= '0';
               m_axi_rready <= not(almost_full);
               if almost_full = '0' then
                  if m_axi_rvalid = '1' then
                     din <= m_axi_rdata;
                     rrespsig(0) <= m_axi_rresp(0) or rrespsig(0);
                     rrespsig(1) <= m_axi_rresp(1) or rrespsig(1);
                     if m_axi_rlast = '1' then
                        if datatxpertlp /= "00" then
                           datatxpertlp <= datatxpertlp - 1;
                           rddatasmsig   <= datatransfer;
                        else
                           rddatasmsig <= idle;
                           m_axi_rready <= single_beat;
                           dataen <= single_beat;
                           datammpipeline <= datammpipeline + 1;
                           rresp(conv_integer(datammpipeline(1 downto 0))) <= 
                              '1' & (m_axi_rresp(1) or rrespsig(1)) & (m_axi_rresp(0) or rrespsig(0));
                           master_int(1) <= (m_axi_rresp(1) or rrespsig(1)) and not(m_axi_rresp(0) or rrespsig(0));
                           master_int(0) <= (m_axi_rresp(1) or rrespsig(1)) and (m_axi_rresp(0) or rrespsig(0));
                           slwrreqpending(conv_integer(datammpipeline(1 downto 0))) <= slwrreqpend + conv_integer(s_axi_awvalid);
                        end if;
                     end if;
                  end if;
               end if;
            
            -- coverage off
            when others =>
               rddatasmsig <= idle;
            -- coverage on
         end case;
         if blk_lnk_up = '0' then
           rresp <= (others => (others => '0'));
         end if;
      end if;
   end if;
end process;
end generate;

AddrTranslation: process(aclk)
   variable AddrVar : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
   variable ARProtVar : std_logic_vector(2 downto 0);
begin
   if rising_edge(aclk) then
      if reset = '0' then
         AddrVar           := (others => '0');
         addrspipeline     <= "000";
         blk_lnk_up_d      <= '0';
      else
         if rdreq = '1' then
            for i in 0 to C_PCIEBAR_NUM-1 loop
               if barhit(conv_integer(addrspipeline(1 downto 0)))(i) = '1' then 
                  --if i < C_PCIEBAR_NUM then
                     if i = 0 then
                        AddrVar := C_PCIEBAR2AXIBAR_0(0 to C_M_AXI_ADDR_WIDTH-C_PCIEBAR_LEN_0-1) & 
                           tlpaddrl(conv_integer(addrspipeline(1 downto 0)))(C_PCIEBAR_LEN_0-1 downto 0);
                        if C_PCIEBAR2AXIBAR_0_SEC = 1 then
                           ARProtVar := "000"; -- "normal secure data" accesses only
                        else
                           ARProtVar := "010"; -- "normal non-secure data" accesses only
                        end if;
                     end if;
                     if i = 1 then
                        AddrVar := C_PCIEBAR2AXIBAR_1(0 to C_M_AXI_ADDR_WIDTH-C_PCIEBAR_LEN_1-1) & 
                           tlpaddrl(conv_integer(addrspipeline(1 downto 0)))(C_PCIEBAR_LEN_1-1 downto 0);
                        if C_PCIEBAR2AXIBAR_1_SEC = 1 then
                           ARProtVar := "000"; -- "normal secure data" accesses only
                        else
                           ARProtVar := "010"; -- "normal non-secure data" accesses only
                        end if;
                     end if;
                     if i = 2 then
                        AddrVar := C_PCIEBAR2AXIBAR_2(0 to C_M_AXI_ADDR_WIDTH-C_PCIEBAR_LEN_2-1) & 
                           tlpaddrl(conv_integer(addrspipeline(1 downto 0)))(C_PCIEBAR_LEN_2-1 downto 0);
                        if C_PCIEBAR2AXIBAR_2_SEC = 1 then
                           ARProtVar := "000"; -- "normal secure data" accesses only
                        else
                           ARProtVar := "010"; -- "normal non-secure data" accesses only
                        end if;
                     end if;
                  --end if;
               end if;
            end loop;
               m_axi_araddrtemp(conv_integer(addrspipeline(1 downto 0))) <= AddrVar;
               m_axi_arprottemp(conv_integer(addrspipeline(1 downto 0)))  <= ARProtVar;
               if tlplength(conv_integer(addrspipeline(1 downto 0))) /= "0000000001" then 
                 --workaround for 1DW requests when bus width set to 64
                  m_axi_awsizetemp(conv_integer(addrspipeline(1 downto 0))) <= conv_std_logic_vector(Log2(C_M_AXI_DATA_WIDTH/8),3);
               else
                  m_axi_awsizetemp(conv_integer(addrspipeline(1 downto 0))) <= "010";
               end if;
               if C_M_AXI_DATA_WIDTH = 32 then
                  m_axi_arlentemp(conv_integer(addrspipeline(1 downto 0))) <=  tlplength(conv_integer(addrspipeline(1 downto 0)))-1;
                  datatxpertlp_ram(conv_integer(addrspipeline(1 downto 0))) <= 
                     conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1), 10)(9 downto 8);
               else
                  if C_M_AXI_DATA_WIDTH = 64 then
                     if conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1) mod 2 = 1 and AddrVar(2) = '1' then
                        m_axi_arlentemp(conv_integer(addrspipeline(1 downto 0))) <= 
                           conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/2 + 1, 10);
                        datatxpertlp_ram(conv_integer(addrspipeline(1 downto 0))) <= 
                          conv_std_logic_vector(conv_integer(tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/2 + 
                            1, 10)(9 downto 8);
                     else
                        m_axi_arlentemp(conv_integer(addrspipeline(1 downto 0))) <= 
                           conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/2, 10);
                        datatxpertlp_ram(conv_integer(addrspipeline(1 downto 0))) <= 
                           conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/2, 
                             10)(9 downto 8);
                     end if;
                  else
                     case (conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1) mod 4) is
                     when 3 =>
                        if AddrVar(3 downto 2) = "00" then
                           m_axi_arlentemp(conv_integer(addrspipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/4, 10);
                           datatxpertlp_ram(conv_integer(addrspipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/4, 
                                10)(9 downto 8);
                        else
                           m_axi_arlentemp(conv_integer(addrspipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/4 + 
                                1, 10);
                           datatxpertlp_ram(conv_integer(addrspipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/4 + 
                                1, 10)(9 downto 8);
                        end if;
                     when 0 =>
                           m_axi_arlentemp(conv_integer(addrspipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/4, 10);
                           datatxpertlp_ram(conv_integer(addrspipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/4, 
                                10)(9 downto 8);
                     when 1 =>
                        if AddrVar(3 downto 2) = "11" then
                           m_axi_arlentemp(conv_integer(addrspipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/4 + 1, 10);
                           datatxpertlp_ram(conv_integer(addrspipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/4 + 
                                1, 10)(9 downto 8);
                        else
                           m_axi_arlentemp(conv_integer(addrspipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/4, 10);
                           datatxpertlp_ram(conv_integer(addrspipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/4, 
                                10)(9 downto 8);
                        end if;
                     when 2 =>
                        if AddrVar(3) = '1' then
                           m_axi_arlentemp(conv_integer(addrspipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/4 + 1, 10);
                           datatxpertlp_ram(conv_integer(addrspipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/4 + 
                                1, 10)(9 downto 8);
                        else
                           m_axi_arlentemp(conv_integer(addrspipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/4, 10);
                           datatxpertlp_ram(conv_integer(addrspipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer( tlplength(conv_integer(addrspipeline(1 downto 0)))-1)/4, 
                                10)(9 downto 8);
                        end if;
                     -- coverage off
                     when others =>
                     -- coverage on
                     end case;
                  end if;
               end if;
               addrspipeline <= addrspipeline + 1;

         end if;
         blk_lnk_up_d <= blk_lnk_up;
         if blk_lnk_up_d = '1' and blk_lnk_up = '0' then -- flush next read req
           -- CR 655332
           -- Just before link down transition, if any pending read request is accepted by target interface
           -- then we should expect data for the same to flush out
            if m_axi_arvalid_sig = '1' or (m_axi_arvalid_sig = '0' and splitcntr /= "00") then
               addrspipeline <= addrmmpipeline + 1;
            else
               addrspipeline <= addrmmpipeline;
            end if;
         end if;
      end if;
   end if;
end process;


m_axi_arburst <= "01"; --INCR only
m_axi_arcache <= "0011"; --cacheable & bufferable, but do not allocate
m_axi_arlock  <= '0';

m_axi_arvalid <= m_axi_arvalid_sig;
compready <= datammpipeline;

end behavioral;
