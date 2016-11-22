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
-- Filename:        axi_mm_masterbridge_wr.vhd
--
-- Description:     
--                  
-- This VHDL file is an HDL design file for the AXI MM/S master bridge write function
-- on the AXI memory map.
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_mm_masterbridge_wr.vhd
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_MISC.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity axi_mm_masterbridge_wr is
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
      --AXI master Write Address Channel
      m_axi_awaddr    : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0); --meaningful port name
      m_axi_awlen     : out std_logic_vector(7 downto 0); --meaningful port name
      m_axi_awsize    : out std_logic_vector(2 downto 0); --meaningful port name
      m_axi_awburst   : out std_logic_vector(1 downto 0); --meaningful port name
      m_axi_awprot    : out std_logic_vector(2 downto 0); --meaningful port name
      m_axi_awvalid   : out std_logic; --meaningful port name
      m_axi_awready   : in std_logic; --meaningful port name
      m_axi_awlock    : out std_logic; --meaningful port name
      m_axi_awcache   : out std_logic_vector(3 downto 0); --meaningful port name
      --AXI master Write Data Channel
      m_axi_wdata     : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); --meaningful port name
      m_axi_wstrb     : out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0); --meaningful port name
      m_axi_wlast     : out std_logic; --meaningful port name
      m_axi_wvalid    : out std_logic; --meaningful port name
      m_axi_wready    : in  std_logic; --meaningful port name
      --AXI master Write Response Channel
      m_axi_bresp     : in  std_logic_vector(1 downto 0); --meaningful port name
      m_axi_bvalid    : in  std_logic; --meaningful port name
      m_axi_bready    : out std_logic; --meaningful port name
      --Master Bridge Interrupt Strobes
      master_int      : out std_logic_vector(1 downto 0); --meaningful port name
      --Internal Interface
      wrreqset        : in  std_logic; --meaningful port name
      datacompcheck   : out std_logic; --meaningful port name (used for self testing)
      tlplength       : in  std_logic_vector(9 downto 0); --meaningful port name
      firstdwbe       : in  std_logic_vector(3 downto 0); --meaningful port name
      lastdwbe        : in  std_logic_vector(3 downto 0); --meaningful port name
      tlpaddrl        : in  std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0); --meaningful port name
      tlpaddrh        : in  std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0); --meaningful port name (not used)
      dout            : in  std_logic_vector(C_M_AXI_DATA_WIDTH downto 0); --meaningful port name
      rd_en           : out std_logic; --meaningful port name
      empty           : in  std_logic; --meaningful port name
      tlppipeline     : out std_logic_vector(2 downto 0); --meaningful port name
      barhit          : in  std_logic_vector(C_PCIEBAR_NUM-1 downto 0); --meaningful port name
      --Internal Interface Ordering
      wrreqcomp       : out std_logic_vector(2 downto 0) --meaningful port name
      );
end axi_mm_masterbridge_wr;

architecture behavioral of axi_mm_masterbridge_wr is
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of behavioral : architecture is "yes";

type axi_wr_master_addr_states is (idle,
                                   pcietlpinfo);

signal wraddrsmsig         : axi_wr_master_addr_states;
type axi_wr_master_data_states is (idle,
                                   datatransfer32,
                                   datatransfer64,
                                   datatransfer128);

signal wrdatasmsig         : axi_wr_master_data_states;
type axi_wr_master_resp_states is (idle,
                                   respreport);

signal wrrespsmsig         : axi_wr_master_resp_states;


type vector_array_type4 is array (0 to 3) of std_logic_vector(1 downto 0);
signal m_axi_awaddrsttemp  : vector_array_type4;

type vector_array_type8 is array (0 to 3) of std_logic_vector(7 downto 0);
signal m_axi_awlensttemp     : vector_array_type8;

type vector_array_type7 is array (0 to 3) of std_logic_vector(3 downto 0);
signal firstdwbetemp, lastdwbetemp       : vector_array_type7;

type vector_array_type3 is array (0 to 3) of std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
signal m_axi_awaddrtemp    : vector_array_type3;
type vector_array_type5 is array (0 to 3) of std_logic_vector(7 downto 0);
signal m_axi_awlentemp     : vector_array_type5;
type vector_array_type6 is array (0 to 3) of std_logic_vector(2 downto 0);
signal m_axi_awsizetemp    : vector_array_type6;
signal firstdwen           : std_logic;
signal wrreqsetcnt     : std_logic_vector(2 downto 0);
signal tlplength_reg       : std_logic_vector(7 downto 0);
signal m_axi_awvalidsig    : std_logic;
signal m_axi_wvalidsig     : std_logic;
signal m_axi_breadysig     : std_logic;
signal addrspipeline       : std_logic_vector(2 downto 0);
signal addrmmpipeline      : std_logic_vector(2 downto 0);
signal datammpipeline      : std_logic_vector(2 downto 0);
signal respmmpipeline      : std_logic_vector(2 downto 0);
signal m_axi_awprottemp    : vector_array_type6;

function log2 (x : positive) return natural is 
begin
   if x = 1 then
      return 0;
   else
      return log2 (x / 2) + 1;
   end if;
end function log2;

begin

axi_wr_master_addr: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         m_axi_awaddr      <= (others => '0');
         m_axi_awlen       <= (others => '0');
         m_axi_awsize      <= (others => '0');
         m_axi_awprot      <= "000";
         m_axi_awvalidsig  <= '0';
         wraddrsmsig       <= idle;
         addrmmpipeline    <= "000";
      else
         case wraddrsmsig is
            when idle => 
               m_axi_awvalidsig     <= '0';
               if addrmmpipeline /= addrspipeline then
                  wraddrsmsig     <= pcietlpinfo;
               else
                  m_axi_awaddr      <= (others => '0');
                  m_axi_awlen       <= (others => '0');
                  m_axi_awsize      <= (others => '0');
                  m_axi_awprot      <= "000";
               end if;

            when pcietlpinfo => 
               m_axi_awvalidsig <= '1';
               m_axi_awaddr  <= m_axi_awaddrtemp(conv_integer(addrmmpipeline(1 downto 0)));
               if C_M_AXI_DATA_WIDTH = 32 then
                  m_axi_awlen   <= m_axi_awlentemp(conv_integer(addrmmpipeline(1 downto 0)));
               elsif C_M_AXI_DATA_WIDTH = 64 then
                  if m_axi_awaddrtemp(conv_integer(addrmmpipeline(1 downto 0)))(2) = '1' and 
                     m_axi_awlentemp(conv_integer(addrmmpipeline(1 downto 0)))(0) = '1' then
                     m_axi_awlen   <= 
                        '0' & m_axi_awlentemp(conv_integer(addrmmpipeline(1 downto 0)))(7 downto 1) + 
                           "00000001";
                  else
                     m_axi_awlen   <= 
                        '0' & m_axi_awlentemp(conv_integer(addrmmpipeline(1 downto 0)))(7 downto 1);
                  end if;
               else
                  case (m_axi_awlentemp(conv_integer(addrmmpipeline(1 downto 0)))(1 downto 0)) is
                  when "11" =>
                     if m_axi_awaddrtemp(conv_integer(addrmmpipeline(1 downto 0)))(3 downto 2) = "00" then
                        m_axi_awlen   <= 
                           "00" & m_axi_awlentemp(conv_integer(addrmmpipeline(1 downto 0)))(7 downto 2);
                     else
                        m_axi_awlen   <= 
                           "00" & m_axi_awlentemp(conv_integer(addrmmpipeline(1 downto 0)))(7 downto 2) + 
                              "00000001";
                     end if;
                  when "00" =>
                     m_axi_awlen   <= 
                        "00" & m_axi_awlentemp(conv_integer(addrmmpipeline(1 downto 0)))(7 downto 2);
                  when "01" =>
                     if m_axi_awaddrtemp(conv_integer(addrmmpipeline(1 downto 0)))(3 downto 2) = "11" then
                        m_axi_awlen   <= 
                           "00" & m_axi_awlentemp(conv_integer(addrmmpipeline(1 downto 0)))(7 downto 2) + 
                              "00000001";
                     else
                        m_axi_awlen   <= 
                           "00" & m_axi_awlentemp(conv_integer(addrmmpipeline(1 downto 0)))(7 downto 2);
                     end if;
                  when "10" =>
                     if m_axi_awaddrtemp(conv_integer(addrmmpipeline(1 downto 0)))(3) = '1' then
                        m_axi_awlen   <= 
                           "00" & m_axi_awlentemp(conv_integer(addrmmpipeline(1 downto 0)))(7 downto 2) + 
                              "00000001";
                     else
                        m_axi_awlen   <= 
                           "00" & m_axi_awlentemp(conv_integer(addrmmpipeline(1 downto 0)))(7 downto 2);
                     end if;
                  when others =>
                  end case;
               end if;
               m_axi_awsize  <= m_axi_awsizetemp(conv_integer(addrmmpipeline(1 downto 0)));
               m_axi_awprot  <= m_axi_awprottemp(conv_integer(addrmmpipeline(1 downto 0)));
               if m_axi_awready = '1' and m_axi_awvalidsig = '1' then
                  wraddrsmsig   <= idle;
                  addrmmpipeline <= addrmmpipeline + 1;
                  m_axi_awvalidsig <= '0';
               end if;

            -- coverage off
            when others => 
               wraddrsmsig <= idle;
            -- coverage on
         end case;
      end if;
   end if;
end process;

data_width_32: if C_M_AXI_DATA_WIDTH = 32 generate
axi_wr_master_data: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         m_axi_wvalidsig <= '0';
         datacompcheck   <= '0';
         tlplength_reg   <= (others => '0');
         wrdatasmsig     <= idle;
         firstdwen       <= '0';
         datammpipeline  <= (others => '0');
         m_axi_wstrb     <= (others => '0');
      else
            case wrdatasmsig is
               when idle =>
                  datacompcheck   <= '0';
                  if datammpipeline /= addrspipeline then
                     wrdatasmsig   <= datatransfer32;
                     firstdwen     <= '1';
                     m_axi_wstrb     <= firstdwbetemp(conv_integer(datammpipeline(1 downto 0)));
                     tlplength_reg   <= m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0)));
                  else
                     tlplength_reg   <= (others => '0');
                  end if;
               
               when datatransfer32  =>
                  m_axi_wvalidsig <= not(empty);
                  if empty = '0' then
                     if m_axi_wready = '1' then
                        if  m_axi_wvalidsig = '1' then
                           if firstdwen = '1' then
                              firstdwen   <= '0';
                           end if;
                           if dout(C_M_AXI_DATA_WIDTH) = '1' then
                              wrdatasmsig <= idle;
                              m_axi_wvalidsig <= '0';
                              datacompcheck <= '1';
                              datammpipeline <= datammpipeline + 1;
                           end if;
                           if tlplength_reg = x"01" then
                              m_axi_wstrb <= lastdwbetemp(conv_integer(datammpipeline(1 downto 0)));
                           else
                              m_axi_wstrb     <= (others => '1');
                           end if;
                           tlplength_reg <= tlplength_reg - 1;
                        end if;
                     end if;
                  end if;
               
               -- coverage off
               when others =>
                  wrdatasmsig <= idle;
               -- coverage on
            end case;
      end if;
   end if;
end process;
end generate;
         
data_width_64: if C_M_AXI_DATA_WIDTH = 64 generate
axi_wr_master_data: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         m_axi_wvalidsig <= '0';
         datacompcheck   <= '0';
         tlplength_reg   <= (others => '0');
         wrdatasmsig     <= idle;
         firstdwen       <= '0';
         datammpipeline  <= (others => '0');
         m_axi_wstrb     <= (others => '0');
      else
            case wrdatasmsig is
               when idle            => 
                  datacompcheck   <= '0';
                  if datammpipeline /= addrspipeline then
                     wrdatasmsig   <= datatransfer64;
                     firstdwen     <= '1';
                     if m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0))) = "00000000" then
                        if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "00" or 
                           m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "10" then
                           m_axi_wstrb <= x"0" & firstdwbetemp(conv_integer(datammpipeline(1 downto 0)));
                        else
                           m_axi_wstrb <= firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"0";
                        end if;
                     elsif m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0))) = "00000001" then
                        if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "00" or 
                           m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "10" then
                           m_axi_wstrb <= lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & 
                              firstdwbetemp(conv_integer(datammpipeline(1 downto 0)));
                        else
                           m_axi_wstrb <= firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"0";
                        end if;
                     else
                        if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "00" or 
                           m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "10" then
                           m_axi_wstrb <= x"F" & firstdwbetemp(conv_integer(datammpipeline(1 downto 0)));
                        else
                           m_axi_wstrb <= firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"0";
                        end if;
                     end if;
                     if (m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "01" or 
                        m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "11") and 
                           m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0)))(0) = '1' then
                        tlplength_reg   <= 
                           '0' & m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0)))(7 downto 1) + 
                              "00000001";
                     else
                        tlplength_reg   <= 
                           '0' & m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0)))(7 downto 1);
                     end if;
                  else
                     tlplength_reg   <= (others => '0');
                  end if;
               
               when datatransfer64  => 
                  m_axi_wvalidsig <= not(empty);
                  if empty = '0' then
                     if m_axi_wready = '1' then
                        if  m_axi_wvalidsig = '1' then
                           if firstdwen = '1' then
                              firstdwen   <= '0';
                           end if;
                           if dout(C_M_AXI_DATA_WIDTH) = '1' then
                              wrdatasmsig <= idle;
                              m_axi_wvalidsig <= '0';
                              datacompcheck <= '1';
                              datammpipeline <= datammpipeline + 1;
                           end if;
                           if tlplength_reg = x"01" then
                              if m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0)))(0) = '1' then
                                 if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "00" or 
                                    m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "10" then
                                    m_axi_wstrb <= lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"F";
                                 else
                                    m_axi_wstrb <= x"0" & lastdwbetemp(conv_integer(datammpipeline(1 downto 0)));
                                 end if;
                              else
                                 if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "00" or 
                                    m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "10" then
                                    m_axi_wstrb <= x"0" & lastdwbetemp(conv_integer(datammpipeline(1 downto 0)));
                                 else
                                    m_axi_wstrb <= lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"F";
                                 end if;
                              end if;
                           else
                              m_axi_wstrb <= (others => '1');
                           end if;
                           tlplength_reg <= tlplength_reg - 1;
                        end if;
                     end if;
                  end if;

               -- coverage off
               when others =>
                  wrdatasmsig <= idle;
               -- coverage on
            end case;
      end if;
   end if;
end process;
end generate;
         
data_width_128: if C_M_AXI_DATA_WIDTH = 128 generate
axi_wr_master_data: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         m_axi_wvalidsig <= '0';
         datacompcheck   <= '0';
         tlplength_reg   <= (others => '0');
         wrdatasmsig     <= idle;
         firstdwen       <= '0';
         datammpipeline  <= (others => '0');
         m_axi_wstrb     <= (others => '0');
      else
            case wrdatasmsig is
               when idle            => 
                  datacompcheck   <= '0';
                  if datammpipeline /= addrspipeline then
                     wrdatasmsig   <= datatransfer128;
                     firstdwen     <= '1';
                     case (conv_integer(m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0))))) is
                     when 0 =>
                        if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "00" then
                           m_axi_wstrb <= x"000" & firstdwbetemp(conv_integer(datammpipeline(1 downto 0)));
                        elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "01" then
                           m_axi_wstrb <= x"00" & firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"0";
                        elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "10" then
                           m_axi_wstrb <= x"0" & firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"00";
                        else
                           m_axi_wstrb <= firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"000";
                        end if;
                     when 1 =>
                        if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "00" then
                           m_axi_wstrb <= x"00" & lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & 
                              firstdwbetemp(conv_integer(datammpipeline(1 downto 0)));
                        elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "01" then
                           m_axi_wstrb <= x"0" & lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & 
                              firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"0";
                        elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "10" then
                           m_axi_wstrb <= lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & 
                              firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"00";
                        else
                           m_axi_wstrb <= firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"000";
                        end if;
                     when 2 =>
                        if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "00" then
                           m_axi_wstrb <= x"0"& lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"F" & 
                              firstdwbetemp(conv_integer(datammpipeline(1 downto 0)));
                        elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "01" then
                           m_axi_wstrb <= lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"F" & 
                              firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"0";
                        elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "10" then
                           m_axi_wstrb <= x"F" & firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"00";
                        else
                           m_axi_wstrb <= firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"000";
                        end if;
                     when 3 =>
                        if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "00" then
                           m_axi_wstrb <= lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"FF" & 
                              firstdwbetemp(conv_integer(datammpipeline(1 downto 0)));
                        elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "01" then
                           m_axi_wstrb <= x"FF" & firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"0";
                        elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "10" then
                           m_axi_wstrb <= x"F" & firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"00";
                        else
                           m_axi_wstrb <= firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"000";
                        end if;
                     when others =>
                        if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "00" then
                           m_axi_wstrb <= x"FFF" & firstdwbetemp(conv_integer(datammpipeline(1 downto 0)));
                        elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "01" then
                           m_axi_wstrb <= x"FF" & firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"0";
                        elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "10" then
                           m_axi_wstrb <= x"F" & firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"00";
                        else
                           m_axi_wstrb <= firstdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"000";
                        end if;
                     end case;
                     case (m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0)))(1 downto 0)) is
                     when "11" =>
                        if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "00" then
                           tlplength_reg   <= 
                              "00" & m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0)))(7 downto 2);
                        else
                           tlplength_reg   <= 
                              "00" & m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0)))(7 downto 2)
                                 + "00000001";
                        end if;
                     when "00" =>
                        tlplength_reg   <= 
                           "00" & m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0)))(7 downto 2);
                     when "01" =>
                        if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "11" then
                           tlplength_reg   <= 
                              "00" & m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0)))(7 downto 2)
                                 + "00000001";
                        else
                           tlplength_reg   <= 
                              conv_std_logic_vector(conv_integer(m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0))))/4, 8);
                        end if;
                     when "10" =>
                        if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "10" or 
                           m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "11" then
                           tlplength_reg   <= 
                              "00" & m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0)))(7 downto 2)
                                 + "00000001";
                        else
                           tlplength_reg <= 
                              "00" & m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0)))(7 downto 2);
                        end if;
                     -- coverage off
                     when others =>
                     -- coverage on
                     end case;
                  else
                     tlplength_reg   <= (others => '0');
                  end if;
               
               when datatransfer128 => 
                  m_axi_wvalidsig <= not(empty);
                  if empty = '0' then
                     if m_axi_wready = '1' then
                        if  m_axi_wvalidsig = '1' then
                           if firstdwen = '1' then
                              firstdwen   <= '0';
                           end if;
                           if dout(C_M_AXI_DATA_WIDTH) = '1' then
                              wrdatasmsig <= idle;
                              m_axi_wvalidsig <= '0';
                              datacompcheck <= '1';
                              datammpipeline <= datammpipeline + 1;
                           end if;
                           if tlplength_reg = x"01" then
                              case (m_axi_awlensttemp(conv_integer(datammpipeline(1 downto 0)))(1 downto 0)) is
                              when "11" =>
                                 if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "00" then
                                    m_axi_wstrb <= lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"FFF";
                                 elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "01" then
                                    m_axi_wstrb <= x"000" & lastdwbetemp(conv_integer(datammpipeline(1 downto 0)));
                                 elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "10" then
                                    m_axi_wstrb <= x"00" & lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"F";
                                 else
                                    m_axi_wstrb <= x"0" & lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"FF";
                                 end if;
                              when "00" =>
                                 if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "00" then
                                    m_axi_wstrb <= x"000" & lastdwbetemp(conv_integer(datammpipeline(1 downto 0)));
                                 elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "01" then
                                    m_axi_wstrb <= x"00" & lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"F";
                                 elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "10" then
                                    m_axi_wstrb <= x"0" & lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"FF";
                                 else
                                    m_axi_wstrb <= lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"FFF";
                                 end if;
                              when "01" =>
                                 if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "00" then
                                    m_axi_wstrb <= x"00" & lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"F";
                                 elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "01" then
                                    m_axi_wstrb <= x"0" & lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"FF";
                                 elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "10" then
                                    m_axi_wstrb <= lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"FFF";
                                 else
                                    m_axi_wstrb <= x"000" & lastdwbetemp(conv_integer(datammpipeline(1 downto 0)));
                                 end if;
                              when "10" =>
                                 if m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "00" then
                                    m_axi_wstrb <= x"0" & lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"FF";
                                 elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "01" then
                                    m_axi_wstrb <= lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"FFF";
                                 elsif m_axi_awaddrsttemp(conv_integer(datammpipeline(1 downto 0))) = "10" then
                                    m_axi_wstrb <= x"000" & lastdwbetemp(conv_integer(datammpipeline(1 downto 0)));
                                 else
                                    m_axi_wstrb <= x"00" & lastdwbetemp(conv_integer(datammpipeline(1 downto 0))) & x"F";
                                 end if;
                              -- coverage off
                              when others =>
                              -- coverage on
                              end case;
                           else
                              m_axi_wstrb <= (others => '1');
                           end if;
                           tlplength_reg <= tlplength_reg - 1;
                        end if;
                     end if;
                  end if;

               -- coverage off
               when others=>
                  wrdatasmsig <= idle;
               -- coverage on
            end case;
      end if;
   end if;
end process;
end generate;

axi_wr_master_resp: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         m_axi_breadysig    <= '0';
         master_int      <= "00";
         wrrespsmsig     <= idle;
         respmmpipeline  <= "000";
      else
         case wrrespsmsig is
            when idle       => 
               master_int <= "00";
               if respmmpipeline /= addrspipeline then
                  m_axi_breadysig <= '1';
                  wrrespsmsig <= respreport;
               else
                  m_axi_breadysig <= '0';
               end if;
            
            when respreport => 
               if m_axi_bvalid = '1' then
                  wrrespsmsig <= idle;
                  m_axi_breadysig <= '0';
                  if m_axi_bresp = "11" then            --DECERR
                     master_int(0) <= '1';              --Master DECERR Interrupt Strobe
                  elsif m_axi_bresp = "10" then         --SLVERR
                     master_int(1) <= '1';              --Master SLVERR Interrupt Strobe
                  end if;
                  respmmpipeline <= respmmpipeline + 1;
               end if;
            
            -- coverage off
            when others => 
               wrrespsmsig <= idle;
            -- coverage on
         end case;
      end if;
   end if;
end process;

AddrTranslation: process(aclk)
   variable AddrVar : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
   variable AWProtVar : std_logic_vector(2 downto 0);
begin
   if rising_edge(aclk) then
      if reset = '0' then
         AddrVar           := (others => '0');
         addrspipeline     <= "000";
         AWProtVar         := (others => '0');
      else
         if wrreqset = '1' then
            for i in 0 to C_PCIEBAR_NUM-1 loop
               if barhit(i) = '1' then 
                  if i < C_PCIEBAR_NUM then
                     if i = 0 then
                        AddrVar := C_PCIEBAR2AXIBAR_0(0 to C_M_AXI_ADDR_WIDTH-C_PCIEBAR_LEN_0-1) & 
                           tlpaddrl(C_PCIEBAR_LEN_0-1 downto 0);
                        if C_PCIEBAR2AXIBAR_0_SEC = 1 then
                           AWProtVar := "000"; -- "normal secure data" accesses only
                        else
                           AWProtVar := "010"; -- "normal non-secure data" accesses only
                        end if;
                     end if;
                     if i = 1 then
                        AddrVar := C_PCIEBAR2AXIBAR_1(0 to C_M_AXI_ADDR_WIDTH-C_PCIEBAR_LEN_1-1) & 
                           tlpaddrl(C_PCIEBAR_LEN_1-1 downto 0);
                        if C_PCIEBAR2AXIBAR_1_SEC = 1 then
                           AWProtVar := "000"; -- "normal secure data" accesses only
                        else
                           AWProtVar := "010"; -- "normal non-secure data" accesses only
                        end if;
                     end if;
                     if i = 2 then
                        AddrVar := C_PCIEBAR2AXIBAR_2(0 to C_M_AXI_ADDR_WIDTH-C_PCIEBAR_LEN_2-1) & 
                           tlpaddrl(C_PCIEBAR_LEN_2-1 downto 0);
                        if C_PCIEBAR2AXIBAR_2_SEC = 1 then
                           AWProtVar := "000"; -- "normal secure data" accesses only
                        else
                           AWProtVar := "010"; -- "normal non-secure data" accesses only
                        end if;
                     end if;
                  end if;
               end if;
            end loop;
               m_axi_awaddrtemp(conv_integer(addrspipeline(1 downto 0)))               <= AddrVar;
               m_axi_awaddrsttemp(conv_integer(addrspipeline(1 downto 0))) <= AddrVar(3 downto 2);
               --if tlplength(8) = '0' then --Xilinx core would only support max payload of 256bytes for v6/s6
                  m_axi_awlentemp(conv_integer(addrspipeline(1 downto 0)))   <= tlplength(7 downto 0) - 1;
                  m_axi_awlensttemp(conv_integer(addrspipeline(1 downto 0)))   <= tlplength(7 downto 0) - 1;
               --else
               --   m_axi_awlentemp(conv_integer(addrspipeline(1 downto 0)))   <= (others => '1');
               --   m_axi_awlensttemp(conv_integer(addrspipeline(1 downto 0)))   <= (others => '1');
               --end if;
               if tlplength /= "0000000001" then --workaround for 1DW requests when bus width set to 64
                  m_axi_awsizetemp(conv_integer(addrspipeline(1 downto 0)))  <= conv_std_logic_vector(Log2(C_M_AXI_DATA_WIDTH/8),3);
               else
                  m_axi_awsizetemp(conv_integer(addrspipeline(1 downto 0))) <= "010";
               end if;
               firstdwbetemp(conv_integer(addrspipeline(1 downto 0)))     <= firstdwbe;
               lastdwbetemp(conv_integer(addrspipeline(1 downto 0)))      <= lastdwbe;
               m_axi_awprottemp(conv_integer(addrspipeline(1 downto 0)))  <= AWProtVar;
               addrspipeline <= addrspipeline + 1;
         end if;
      end if;
   end if;
end process;


Pipeline: process(aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         wrreqsetcnt <= "000";
      elsif wrreqset = '1' and m_axi_bvalid = '1' and m_axi_breadysig = '1' then
         wrreqsetcnt <= wrreqsetcnt;
      elsif wrreqset = '1' then
         wrreqsetcnt<= wrreqsetcnt + 1;
      elsif m_axi_bvalid = '1' and m_axi_breadysig = '1' then
         wrreqsetcnt<= wrreqsetcnt - 1;
      end if;
   end if;
end process;

m_axi_awvalid    <= m_axi_awvalidsig;
m_axi_bready     <= m_axi_breadysig;
m_axi_wvalid     <= 
   m_axi_wvalidsig when empty = '0' else
   '0';
tlppipeline  <= wrreqsetcnt;
rd_en            <= m_axi_wready and m_axi_wvalidsig and not(empty);
m_axi_wdata      <= 
   dout(C_M_AXI_DATA_WIDTH-1 downto 0) when datammpipeline /= addrspipeline else
   (others => '0');
m_axi_wlast      <= 
   dout(C_M_AXI_DATA_WIDTH) when datammpipeline /= addrspipeline else
   '0';

m_axi_awburst <= "01"; --INCR only
m_axi_awcache <= "0011"; --cacheable & bufferable, but do not allocate
m_axi_awlock  <= '0';

wrreqcomp <= respmmpipeline;

end behavioral;
