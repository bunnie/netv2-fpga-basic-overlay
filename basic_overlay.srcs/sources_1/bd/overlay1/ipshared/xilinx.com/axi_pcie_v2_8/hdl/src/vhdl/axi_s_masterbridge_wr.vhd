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
-- Filename:        axi_s_masterbridge_wr.vhd
--
-- Description:     
--                  
-- This VHDL file is an HDL design file for the AXI MM/S master bridge write function
-- on the AXI Stream.
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_s_masterbridge_wr.vhd
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_MISC.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

--library XilinxCoreLib;
--use XilinxCoreLib.all;
--library UNISIM;
--use UNISIM.VComponents.all;

entity axi_s_masterbridge_wr is
   generic(
      --Family Generics
      C_FAMILY            : string;
      C_S_AXIS_DATA_WIDTH : integer;
      C_S_AXIS_USER_WIDTH : integer;
      C_PCIEBAR_NUM       : integer
      );
   port(
      --AXI Global
      aclk             : in  std_logic; --meaningful port name
      reset            : in  std_logic; --meaningful port name
      --AXIS Write Target Channel
      s_axis_cw_tdata  : in  std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0); --meaningful port name
      s_axis_cw_tstrb  : in  std_logic_vector(C_S_AXIS_DATA_WIDTH/8-1 downto 0); --meaningful port name (not used)
      s_axis_cw_tlast  : in  std_logic; --meaningful port name
      s_axis_cw_tvalid : in  std_logic; --meaningful port name
      s_axis_cw_tready : out std_logic; --meaningful port name
      s_axis_cw_tuser  : in  std_logic_vector(C_S_AXIS_USER_WIDTH-1 downto 0); --meaningful port name
      --Master Bridge Interrupt Strobes
      master_int       : out std_logic; --meaningful port name
      --AXI Streaming Block Interface
      blk_lnk_up       : in  std_logic; --meaningful port name
      --Internal Interface
      tlplength          : out std_logic_vector(9 downto 0); --meaningful port name
      firstdwbe          : out std_logic_vector(3 downto 0); --meaningful port name
      lastdwbe           : out std_logic_vector(3 downto 0); --meaningful port name
      tlpaddrl           : out std_logic_vector(31 downto 0); --meaningful port name
      tlpaddrh           : out std_logic_vector(31 downto 0); --meaningful port name
      datain             : out std_logic_vector(C_S_AXIS_DATA_WIDTH downto 0); --meaningful port name
      wrreqset           : out std_logic; --meaningful port name
      datacompcheck      : in  std_logic; --meaningful port name (used for testing)
      tlppipeline        : in  std_logic_vector(2 downto 0); --meaningful port name
      dataen             : out std_logic; --meaningful port name
      almost_full        : in  std_logic; --meaningful port name
      wrreqpend          : out std_logic_vector(2 downto 0); --meaningful port name
      treadydataenadjust : out std_logic --meaningful port name
      );
end axi_s_masterbridge_wr;

architecture behavioral of axi_s_masterbridge_wr is
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of behavioral : architecture is "yes";

type wr_master_ingress_states is (idle,
                                  memwrreq,
                                  onedwlength,
                                  zerolenwr,
                                  poisoneddataclkout,
                                  blklinkdown,
                                  throttle,
                                  latchbe,
                                  latchaddrh,
                                  latchaddrl,
                                  datatransfer);

signal wrreqsmsig                            : wr_master_ingress_states;
signal wrreqsetsig                           : std_logic;
signal tlpepsig                              : std_logic;
signal tlpfmtsig                             : std_logic_vector(1 downto 0);
signal tlptypesig                            : std_logic_vector(4 downto 0);
signal tlplengthsig                          : std_logic_vector(9 downto 0);
signal firstdwbesig, lastdwbesig             : std_logic_vector(3 downto 0);
signal delaylast,  s_axis_cw_tlasttemp       : std_logic;
signal tempdatareg                           : std_logic_vector(31 downto 0);
signal s_axis_cw_tdatatemp                   : std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0);
signal dataoffset, addroffset                : std_logic;
signal addroffset1, addroffset2, addroffset3 : std_logic;
signal padzeroes                             : std_logic;
signal blk_lnk_upsig                         : std_logic;
signal s_axis_cw_treadysig                   : std_logic;
signal wrreqpendsig                          : std_logic_vector(2 downto 0);

function little_to_big_endian32(datain : std_logic_vector(31 downto 0))
      return std_logic_vector is
   variable dataout : std_logic_vector(31 downto 0);
begin
   dataout := datain(7 downto 0) & datain(15 downto 8) & datain(23 downto 16) & datain(31 downto 24);
   return(dataout);
end function;

begin

data_width_32: if C_S_AXIS_DATA_WIDTH = 32 generate
wr_master_ingress: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         s_axis_cw_treadysig    <= '0';
         tlplengthsig        <= (others => '0');
         firstdwbesig        <= (others => '0');
         lastdwbesig         <= (others => '0');
         tlpaddrl            <= (others => '0');
         tlpaddrh            <= (others => '0');
         tlpfmtsig           <= (others => '0');
         tlptypesig          <= (others => '0');
         s_axis_cw_tdatatemp <= (others => '0');
         dataen              <= '0';
         wrreqsmsig          <= idle;
         datain              <= (others => '0');
         wrreqsetsig         <= '0';
         master_int          <= '0';
         delaylast           <= '0';
         dataoffset          <= '0';
         addroffset          <= '0';
         addroffset1         <= '0';
         addroffset2         <= '0';
         addroffset3         <= '0';
         padzeroes           <= '0';
         s_axis_cw_tlasttemp <= '0';
         tempdatareg         <= (others => '0');
         blk_lnk_upsig       <= '0';
         wrreqpendsig        <= "000";
      else
         case wrreqsmsig is
            when idle =>
               if tlppipeline /= "100" then
                  s_axis_cw_treadysig <= '1';
                  wrreqsmsig       <= memwrreq;
               end if;
               tlplengthsig     <= (others => '0');
               firstdwbesig     <= (others => '0');
               lastdwbesig      <= (others => '0');
               tlpaddrl         <= (others => '0');
               tlpaddrh         <= (others => '0');
               tlpfmtsig        <= (others => '0');
               tlptypesig       <= (others => '0');
               dataen           <= '0';
               datain           <= (others => '0');
               wrreqsetsig      <= '0';
               master_int       <= '0';
               blk_lnk_upsig    <= '0';

           
            when memwrreq=>
               -- Nam -- extremely hard to hit case for FALSE branch
               -- NAM / JRH fixed typo. Was b 2.
               -- coverage off -item b 1 -allfalse
               if blk_lnk_up = '1' then
                  if s_axis_cw_tvalid = '1' and almost_full = '0' then
                     tlpepsig <= s_axis_cw_tdata(14);
                  -- Nam - double check
                  -- coverage off -item b 1 -allfalse                            
                     if s_axis_cw_tdata(30) = '1' then
                        -- Nam - -- tool issue, work work when the if statement is more than 1 line
                        -- coverage off -item bc 1 -allfalse -condrow 1 2 6
                        if s_axis_cw_tdata(28 downto 24) = "00000" and (s_axis_cw_tuser(2) = '1' or 
                           s_axis_cw_tuser(3) = '1' or s_axis_cw_tuser(4) = '1' or s_axis_cw_tuser(6) = '1') then
                           if s_axis_cw_tdata(14) = '0' then
                              tlpfmtsig    <= s_axis_cw_tdata(30 downto 29);
                              tlptypesig   <= s_axis_cw_tdata(28 downto 24);
                              tlplengthsig <= s_axis_cw_tdata(9 downto 0);
                              wrreqsmsig   <= latchbe;
                           else
                              wrreqsmsig    <= poisoneddataclkout;
                              master_int <= '1';
                           end if;
                        end if;
                     end if;
                  end if;
               end if;

            when poisoneddataclkout =>
               master_int <= '0';
               if blk_lnk_up = '1' then
                  -- Nam - enhance bridge wont throttle
                  -- coverage off -item b 1 -allfalse                      
                  if s_axis_cw_tvalid = '1' then
                     if s_axis_cw_tlast = '1' then
                        wrreqsmsig       <= memwrreq;
                     end if;
                  end if;
               -- Nam -- extremely hard to hit case - poison data while linkdown
               -- coverage off
               else
                  if s_axis_cw_tvalid = '1' and s_axis_cw_tlast = '1' then
                     wrreqsmsig       <= memwrreq;
                  else
                     wrreqsmsig       <= blklinkdown;
                  end if;
               end if;
               -- coverage on
            
            when blklinkdown =>
               -- Nam - enhance bridge wont throttle
               -- coverage off -item b 1 -allfalse                
               if s_axis_cw_tvalid = '1' then
                  -- Nam - enhance bridge wont throttle
                  -- coverage off -item b 1 -allfalse                      
                  if s_axis_cw_tlast = '1' then
                     wrreqsmsig       <= idle;
                  end if;
               else
                  wrreqsmsig     <= idle;
               end if;
            
            when latchbe =>
               if blk_lnk_up = '1' then
                  if s_axis_cw_tvalid = '1' and almost_full = '0' then
                     if s_axis_cw_tdata(3 downto 0) /= "0000" then
                        lastdwbesig  <= s_axis_cw_tdata(7 downto 4);
                        firstdwbesig <= s_axis_cw_tdata(3 downto 0);
                        if tlpfmtsig(0) = '0' then
                           wrreqsmsig  <= latchaddrl;
                        else
                           wrreqsmsig <= latchaddrh;
                        end if;
                     else
                        wrreqsmsig       <= zerolenwr;
                     end if;
                  end if;
               -- Nam -- extremely hard to hit case - we cover this with 2 hits during the weekend run
               -- coverage off                  
               else
                  wrreqsmsig       <= blklinkdown;
               end if;
               -- coverage on

            when zerolenwr =>
               if blk_lnk_up = '1' then
                   -- Nam - enhance bridge wont throttle
                   -- coverage off -item b 1 -allfalse                      
                   if s_axis_cw_tvalid = '1' then
                     if s_axis_cw_tlast = '1' then
                        s_axis_cw_treadysig <= '0';
                        wrreqsmsig       <= idle;
                     end if;
                  end if;
               -- Nam -- extremely hard to hit case - zero length write while linkdown
               -- coverage off                  
               else
                  if s_axis_cw_tvalid = '1' and s_axis_cw_tlast = '1' then
                     s_axis_cw_treadysig <= '0';
                     wrreqsmsig       <= idle;
                  else
                     wrreqsmsig       <= blklinkdown;
                  end if;
               end if;
               -- coverage on
            
            when latchaddrh =>
               if blk_lnk_up = '1' then
                  if s_axis_cw_tvalid = '1' and almost_full = '0' then
                     tlpaddrh    <= s_axis_cw_tdata;
                     wrreqsmsig  <= latchaddrl;
                  end if;
               -- Nam -- extremely hard to hit case - we cover this with 1 hits during the weekend run
               -- coverage off                   
               else
                  wrreqsmsig       <= blklinkdown;
               end if;
               -- coverage on
               
            when latchaddrl =>
               if blk_lnk_up = '1' then
                  if s_axis_cw_tvalid = '1' and almost_full = '0' then
                     if tlppipeline /= "100" then
                        wrreqsetsig <= '1';
                        wrreqpendsig <= wrreqpendsig + 1;
                        tlpaddrl <= s_axis_cw_tdata;
                        dataen <= '1';
                        wrreqsmsig <= datatransfer;
                     else
                        wrreqsmsig <= throttle;
                        s_axis_cw_treadysig <= '0';
                        tlpaddrl <= s_axis_cw_tdata;
                     end if;
                  end if;
               -- Nam -- extremely hard to hit case - we cover this with 2 hits during the weekend run
               -- coverage off                   
               else
                  wrreqsmsig       <= blklinkdown;
               end if;
               -- coverage on
            when throttle =>
               if blk_lnk_up = '1' then
                  if tlppipeline /= "100" then
                     wrreqsetsig <= '1';
                     wrreqpendsig <= wrreqpendsig + 1;
                     dataen      <= '1';
                     wrreqsmsig   <= datatransfer;
                     s_axis_cw_treadysig <= '1';
                  end if;
               else
                  wrreqsmsig    <= blklinkdown;
                  s_axis_cw_treadysig <= '1';
               end if;

            when datatransfer =>
               wrreqsetsig <= '0';
               -- Nam - enhance core does not throttle
               -- coverage off -item b 1 -allfalse
               if s_axis_cw_tvalid = '1' then
                  s_axis_cw_treadysig <= not(almost_full);
                  if almost_full = '0' then
                     if s_axis_cw_treadysig = '1' then
                        dataen <= '1';
                        datain <= s_axis_cw_tlast & little_to_big_endian32(s_axis_cw_tdata);
                        if s_axis_cw_tlast = '1' then
                           wrreqsmsig <= idle;
                           dataen     <= '0';
                           s_axis_cw_treadysig <= '0';
                        end if;                                         
                     end if;
                  end if;
               end if;
               if blk_lnk_up = '0' then
                  blk_lnk_upsig <= '1';
               end if;


            -- coverage off
            when others => wrreqsmsig <= idle;
            -- coverage on
         end case;
      end if;
   end if;
end process;
end generate;

data_width_64: if C_S_AXIS_DATA_WIDTH = 64 generate
wr_master_ingress: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         s_axis_cw_treadysig    <= '0';
         tlplengthsig        <= (others => '0');
         firstdwbesig        <= (others => '0');
         lastdwbesig         <= (others => '0');
         tlpaddrl            <= (others => '0');
         tlpaddrh            <= (others => '0');
         tlpfmtsig           <= (others => '0');
         tlptypesig          <= (others => '0');
         s_axis_cw_tdatatemp <= (others => '0');
         dataen              <= '0';
         wrreqsmsig          <= idle;
         datain              <= (others => '0');
         wrreqsetsig         <= '0';
         master_int          <= '0';
         delaylast           <= '0';
         dataoffset          <= '0';
         addroffset          <= '0';
         addroffset1         <= '0';
         addroffset2         <= '0';
         addroffset3         <= '0';
         padzeroes           <= '0';
         s_axis_cw_tlasttemp <= '0';
         tempdatareg         <= (others => '0');
         blk_lnk_upsig       <= '0';
         wrreqpendsig        <= "000";
      else
         case wrreqsmsig is
            when idle =>
               if tlppipeline /= "100" then
                  s_axis_cw_treadysig <= '1';
                  wrreqsmsig       <= memwrreq;
               end if;
               delaylast           <= '0';
               tlplengthsig        <= (others => '0');
               firstdwbesig        <= (others => '0');
               lastdwbesig         <= (others => '0');
               tlpaddrl            <= (others => '0');
               tlpaddrh            <= (others => '0');
               tlpfmtsig           <= (others => '0');
               tlptypesig          <= (others => '0');
               dataen              <= '0';
               datain              <= (others => '0');
               wrreqsetsig         <= '0';
               master_int          <= '0';
               blk_lnk_upsig       <= '0';
               dataoffset          <= '0';
               addroffset          <= '0';
               padzeroes           <= '0';
               s_axis_cw_tlasttemp <= '0';
               tempdatareg         <= (others => '0');

            
            when memwrreq =>
               wrreqsetsig <= '0';
               addroffset  <= '0';
               -- Nam -- extremely hard to hit case for FALSE branch
               -- NAM / JRH fixed typo. Was b 2.
               -- coverage off -item b 1 -allfalse
               if blk_lnk_up = '1' then
                  if s_axis_cw_tvalid = '1' and almost_full = '0' then
                     tlpepsig <= s_axis_cw_tdata(14);
                     -- Nam - double check
                     -- coverage off -item b 1 -allfalse
                     if s_axis_cw_tdata(30) = '1' then
                        -- Nam - -- tool issue, work work when the if statement is more than 1 line
                        -- coverage off -item bc 1 -allfalse -condrow 1 2 6
                        if s_axis_cw_tdata(28 downto 24) = "00000" and ((s_axis_cw_tuser(2) = '1' and C_PCIEBAR_NUM = 1)
                          or (C_PCIEBAR_NUM > 1 and (s_axis_cw_tuser(2) = '1' or s_axis_cw_tuser(3) = '1' or 
                          s_axis_cw_tuser(4) = '1' or s_axis_cw_tuser(6) = '1'))) then
                           if s_axis_cw_tdata(14) = '0' then
                              tlpfmtsig     <= s_axis_cw_tdata(30 downto 29);
                              tlptypesig    <= s_axis_cw_tdata(28 downto 24);
                              tlplengthsig  <= s_axis_cw_tdata(9 downto 0);
                              lastdwbesig   <= s_axis_cw_tdata(39 downto 36);
                              firstdwbesig  <= s_axis_cw_tdata(35 downto 32);
                              if s_axis_cw_tdata(35 downto 32) /= "0000" then
                                 if wrreqsetsig = '0' and tlppipeline /= "100" then
                                    if s_axis_cw_tdata(29) = '0' then
                                       wrreqsmsig <= latchaddrl;
                                       if s_axis_cw_tdata(9 downto 0) = 1 then
                                          dataen  <= '1';
                                       end if;
                                    else
                                       wrreqsmsig <= latchaddrh;
                                    end if;
                                 else
                                    wrreqsmsig    <= throttle;
                                    s_axis_cw_treadysig <= '0';
                                 end if;
                              else
                                 wrreqsmsig       <= zerolenwr;
                              end if;
                           else
                              wrreqsmsig    <= poisoneddataclkout;
                              master_int <= '1';
                           end if;
                        end if;
                     end if;
                  end if;
                  blk_lnk_upsig  <= '0';
               end if;
            
            when poisoneddataclkout =>
               s_axis_cw_treadysig <= s_axis_cw_treadysig;
	       master_int <= '0';
               if blk_lnk_up = '1' then
                  -- Nam - enhance bridge wont throttle
                  -- coverage off -item b 1 -allfalse
                  if s_axis_cw_tvalid = '1' then
                     if s_axis_cw_tlast = '1' then
                        wrreqsmsig       <= memwrreq;
                     end if;
                  end if;
               -- Nam -- extremely hard to hit case - poison data while linkdown
               -- coverage off                  
               else
                  if s_axis_cw_tvalid = '1' and s_axis_cw_tlast = '1' then
                     wrreqsmsig       <= memwrreq;
                  else
                     wrreqsmsig       <= blklinkdown;
                  end if;
               end if;
               -- coverage on
            
            when blklinkdown =>
	       s_axis_cw_treadysig <= s_axis_cw_treadysig;
               -- Nam - enhance bridge wont throttle
               -- coverage off -item b 1 -allfalse            
               if s_axis_cw_tvalid = '1' then
                  if s_axis_cw_tlast = '1' then
                     wrreqsmsig     <= idle;
                  end if;
               else
                  wrreqsmsig     <= idle;
               end if;
            
            when zerolenwr =>
               if blk_lnk_up = '1' then
                  -- Nam - enhance core does not throttle
                  -- coverage off -item b 1 -allfalse
                  if s_axis_cw_tvalid = '1' then
                     if s_axis_cw_tlast = '1' then
                        s_axis_cw_treadysig <= '0';
                        wrreqsmsig       <= idle;
                     end if;
                  end if;
               -- Nam -- extremely hard to hit case - zero length write while link_down
               -- coverage off
               else
                   if s_axis_cw_tvalid = '1' and s_axis_cw_tlast = '1' then
                      s_axis_cw_treadysig <= '0';
                      wrreqsmsig       <= idle;
                   else
                      wrreqsmsig       <= blklinkdown;
                   end if;
               end if;
               -- coverage on

            when throttle =>
               if blk_lnk_up = '1' then
                  if tlppipeline /= "100" then
                     s_axis_cw_treadysig <= '1';
                     if tlpfmtsig(0) = '0' then
                        wrreqsmsig    <= latchaddrl;
                        if s_axis_cw_tlast = '1' then
                           dataen     <= '1';
                        end if;
                     else
                        wrreqsmsig   <= latchaddrh;
                     end if;
                  end if;
               -- Nam -- extremely hard to hit case. We covered this with the weekend run - 10 hits
               -- coverage off
               else
                  wrreqsmsig    <= blklinkdown;
                  s_axis_cw_treadysig <= '1';
               end if;
               -- coverage on
               
            when latchaddrh =>
               s_axis_cw_treadysig <= s_axis_cw_treadysig;
	       if blk_lnk_up = '1' then
                  if s_axis_cw_tvalid = '1' and almost_full = '0' then
                     wrreqsetsig <= '1';
                     wrreqpendsig <= wrreqpendsig + 1;
                     tlpaddrh    <= s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2-1 downto 0);
                     tlpaddrl    <= s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH-1 downto C_S_AXIS_DATA_WIDTH/2);
                     if s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+2) = '1' then
                        addroffset   <= '1';
                        padzeroes    <= '1';
                        if tlplengthsig(0) = '0' then
                           delaylast <= '1';
                        end if;
                     end if;
                     dataen     <= '1';
                     wrreqsmsig <= datatransfer;
                  end if;
               -- Nam -- extremely hard to hit case. We covered this with the weekend run - 2 hits
               -- coverage off                  
               else
                  wrreqsmsig    <= blklinkdown;
               end if;
               -- coverage on

            when latchaddrl =>
               s_axis_cw_treadysig <= s_axis_cw_treadysig;
	       if blk_lnk_up = '1' then
                  if s_axis_cw_tvalid = '1' and almost_full = '0' then
                     wrreqsetsig <= '1';
                     wrreqpendsig <= wrreqpendsig + 1;
                     tlpaddrl    <= s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2-1 downto 0);
                     if s_axis_cw_tdata(2) = '1' then
                        addroffset   <= '1';
                        if s_axis_cw_tlast = '0' then
                           padzeroes <= '1';
                        end if;
                     end if;
                     tempdatareg <= little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH-1 downto C_S_AXIS_DATA_WIDTH/2));
                     if s_axis_cw_tlast = '1' then
                        if s_axis_cw_tdata(2) = '1' then
                           datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= 
                              little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH-1 downto C_S_AXIS_DATA_WIDTH/2)) & 
                                x"0000_0000";
                        else
                           datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= x"0000_0000" & 
                              little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH-1 downto C_S_AXIS_DATA_WIDTH/2));
                        end if;
                        datain(C_S_AXIS_DATA_WIDTH)  <= '1';
                        wrreqsmsig <= memwrreq;
                        dataen     <= '0';
                     else
                        dataoffset   <= '1';
                        dataen       <= '1';
                        wrreqsmsig   <= datatransfer;
                        if tlplengthsig(0) = '1' or s_axis_cw_tdata(2) = '1' then
                           delaylast <= '1';
                        end if;
                     end if;
                  end if;
               -- Nam -- extremely hard to hit case.  
               -- coverage off                  
               else
                  if s_axis_cw_tvalid = '1' and s_axis_cw_tlast = '1' then
                     wrreqsmsig       <= idle;
                  else
                     wrreqsmsig       <= blklinkdown;
                  end if;
               end if;
               -- coverage on

            when datatransfer =>
               wrreqsetsig <= '0';
               -- Nam - enhance bridge wont throttle -  -- tool issue, work work when the if statement is more than 1 line
               -- coverage off -item bc 1 -allfalse -condrow 3
               if s_axis_cw_tvalid = '1' or s_axis_cw_tlasttemp = '1' then
                  s_axis_cw_treadysig <= not(almost_full);
                  if almost_full = '0' then
                  if s_axis_cw_treadysig = '1' or s_axis_cw_tlasttemp = '1' then
                  if dataoffset  = '1' then
                     if addroffset = '0' then
                        datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= 
                          little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2-1 downto 0)) & 
                           tempdatareg;
                        tempdatareg <= little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH-1 downto C_S_AXIS_DATA_WIDTH/2));
                     else
                        if padzeroes = '0' then
                           datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= s_axis_cw_tdatatemp;
                        else
                           datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= tempdatareg & x"00000000";
                           padzeroes <= '0';
                        end if;
                        s_axis_cw_tdatatemp <= little_to_big_endian32(s_axis_cw_tdata(63 downto 32)) & 
                          little_to_big_endian32(s_axis_cw_tdata(31 downto 0));
                     end if;
                  else
                     if addroffset = '0' then
                        datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= little_to_big_endian32(s_axis_cw_tdata(63 downto 32)) & 
                          little_to_big_endian32(s_axis_cw_tdata(31 downto 0));
                     else
                        if padzeroes = '0' then
                           datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= 
                             little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2-1 downto 0)) 
                              & s_axis_cw_tdatatemp(C_S_AXIS_DATA_WIDTH/2-1 downto 0);
                        else
                           datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= 
                             little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2-1 downto 0)) 
                              & x"00000000";
                           padzeroes <= '0';
                        end if;
                        s_axis_cw_tdatatemp(C_S_AXIS_DATA_WIDTH/2-1 downto 0) <= 
                           little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH-1 downto C_S_AXIS_DATA_WIDTH/2));
                     end if;
                  end if;
                  if delaylast = '0' then
                     datain(C_S_AXIS_DATA_WIDTH) <= s_axis_cw_tlast;
                     if s_axis_cw_tlast = '1' then
                        s_axis_cw_treadysig <= '0';
                        wrreqsmsig <= idle;
                        dataen     <= '0';
                        dataoffset <= '0';
                        addroffset <= '0';
                     end if;
                  else
                     s_axis_cw_tlasttemp <= s_axis_cw_tlast;
                     datain(C_S_AXIS_DATA_WIDTH) <= s_axis_cw_tlasttemp;
                     if s_axis_cw_tlast = '1' then
                        s_axis_cw_treadysig <= '0';
                     end if;
                     if s_axis_cw_tlasttemp = '1' then
                        s_axis_cw_treadysig <= '0';
                        wrreqsmsig <= idle;
                        dataen     <= '0';
                        dataoffset <= '0';
                        delaylast  <= '0';
                        addroffset <= '0';
                        s_axis_cw_tlasttemp <= '0';
                     end if;
                  end if;
                  end if;
                  end if;
               end if;
               if blk_lnk_up = '0' then
                  blk_lnk_upsig <= '1';
               end if;

            -- coverage off
            when others =>
               s_axis_cw_treadysig <= s_axis_cw_treadysig;
	       wrreqsmsig <= idle;
            -- coverage on
         end case;
      end if;
   end if;
end process;
end generate;

data_width_128: if C_S_AXIS_DATA_WIDTH = 128 generate
wr_master_ingress: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         s_axis_cw_treadysig    <= '0';
         tlplengthsig        <= (others => '0');
         firstdwbesig        <= (others => '0');
         lastdwbesig         <= (others => '0');
         tlpaddrl            <= (others => '0');
         tlpaddrh            <= (others => '0');
         tlpfmtsig           <= (others => '0');
         tlptypesig          <= (others => '0');
         s_axis_cw_tdatatemp <= (others => '0');
         dataen              <= '0';
         wrreqsmsig          <= idle;
         datain              <= (others => '0');
         wrreqsetsig         <= '0';
         master_int          <= '0';
         delaylast           <= '0';
         dataoffset          <= '0';
         addroffset          <= '0';
         addroffset1         <= '0';
         addroffset2         <= '0';
         addroffset3         <= '0';
         padzeroes           <= '0';
         s_axis_cw_tlasttemp <= '0';
         tempdatareg         <= (others => '0');
         blk_lnk_upsig       <= '0';
         wrreqpendsig        <= "000";
      else
         case wrreqsmsig is
            when idle =>
               s_axis_cw_treadysig <= '1';
               delaylast <= '0';
               tlplengthsig     <= (others => '0');
               firstdwbesig     <= (others => '0');
               lastdwbesig      <= (others => '0');
               tlpaddrl         <= (others => '0');
               tlpaddrh         <= (others => '0');
               tlpfmtsig        <= (others => '0');
               tlptypesig       <= (others => '0');
               dataen           <= '0';
               wrreqsmsig       <= memwrreq;
               datain           <= (others => '0');
               wrreqsetsig      <= '0';
               master_int       <= '0';
               blk_lnk_upsig    <= '0';
               dataoffset       <= '0';
               addroffset1      <= '0';
               addroffset2      <= '0';
               addroffset3      <= '0';
               padzeroes        <= '0';
               s_axis_cw_tlasttemp <= '0';
               tempdatareg      <= (others => '0');

            
            when memwrreq =>
               -- Nam -- extremely hard to hit case for FALSE branch
               -- NAM / JRH fixed typo. Was b 2.
               -- coverage off -item b 1 -allfalse
               if blk_lnk_up = '1' then
                  if s_axis_cw_tvalid = '1' and almost_full = '0' then
                     tlpepsig <= s_axis_cw_tdata(14);
                     -- Nam - double check
                     -- coverage off -item b 1 -allfalse
                     if s_axis_cw_tdata(30) = '1' then
                        -- Nam - -- tool issue, work work when the if statement is more than 1 line
                        -- coverage off -item bc 1 -allfalse -condrow 1 2 6
                        if s_axis_cw_tdata(28 downto 24) = "00000" and ((s_axis_cw_tuser(2) = '1' and C_PCIEBAR_NUM = 1)
                          or (C_PCIEBAR_NUM > 1 and (s_axis_cw_tuser(2) = '1' or s_axis_cw_tuser(3) = '1' or 
                          s_axis_cw_tuser(4) = '1' or s_axis_cw_tuser(6) = '1'))) then
                           if s_axis_cw_tdata(14) = '0' then
                              tlpfmtsig     <= s_axis_cw_tdata(30 downto 29);
                              tlptypesig    <= s_axis_cw_tdata(28 downto 24);
                              tlplengthsig  <= s_axis_cw_tdata(9 downto 0);
                              lastdwbesig   <= s_axis_cw_tdata(39 downto 36);
                              firstdwbesig  <= s_axis_cw_tdata(35 downto 32);
                              if s_axis_cw_tdata(35 downto 32) /= "0000" then
                                 s_axis_cw_tlasttemp <= s_axis_cw_tlast;
                                 if s_axis_cw_tdata(29) = '0' then
                                    tlpaddrl    <= s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4-1 downto
                                       C_S_AXIS_DATA_WIDTH/2);
                                    tempdatareg <= little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH-1 downto 
                                       C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4));
                                 else
                                    tlpaddrh    <= s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4-1 downto
                                       C_S_AXIS_DATA_WIDTH/2);
                                    tlpaddrl    <= s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH-1 downto 
                                       C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4);
                                 end if;
                                 if s_axis_cw_tdata(29) = '1' then
                                    if s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4+2) = '1' or 
                                       s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4+3) = '1' then
                                       addroffset1  <= s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4+2) 
                                          and not(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4+3));
                                       addroffset2  <= 
                                          not(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4+2)) and 
                                             s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4+3);
                                       addroffset3  <= s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4+2) 
                                          and s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4+3);
                                       padzeroes    <= '1';
                                    end if;
                                    if s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4+2) = '1' and 
                                       s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4+3) = '0' and 
                                          s_axis_cw_tdata(1 downto 0) = "00" then
                                       delaylast         <= '1';
                                    elsif s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4+2) = '0' and 
                                       s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4+3) = '1' and 
                                          (s_axis_cw_tdata(1 downto 0) = "00" or 
                                             s_axis_cw_tdata(1 downto 0) = "11") then
                                       delaylast         <= '1';
                                    elsif s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4+2) = '1' and 
                                       s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4+3) = '1' and 
                                          s_axis_cw_tdata(1 downto 0) /= "01" then
                                       delaylast         <= '1';
                                    end if;
                                 else
                                    if s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+2) = '1' or 
                                       s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+3) = '1' then
                                       addroffset1  <= s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+2) and 
                                          not(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+3));
                                       addroffset2  <= not(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+2)) and 
                                          s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+3);
                                       addroffset3  <= s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+2) and 
                                          s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+3);
                                       padzeroes    <= '1';
                                    end if;
                                    if s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+2) = '0' and 
                                       s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+3) = '0' and 
                                          s_axis_cw_tdata(1 downto 0) = "01" then
                                       delaylast         <= '1';
                                    elsif s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+2) = '1' and 
                                       s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+3) = '0' and 
                                          (s_axis_cw_tdata(1 downto 0) = "00" or 
                                             s_axis_cw_tdata(1 downto 0) = "01") then
                                       delaylast         <= '1';
                                    elsif s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+2) = '0' and 
                                       s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+3) = '1' and 
                                          s_axis_cw_tdata(1 downto 0) /= "10" then
                                       delaylast         <= '1';
                                    elsif s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+2) = '1' and 
                                       s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+3) = '1' then
                                       delaylast         <= '1';
                                    end if;
                                 end if;
                                 if tlppipeline /= "100" then
                                    wrreqsetsig   <= '1';
                                    wrreqpendsig <= wrreqpendsig + 1;
                                    if s_axis_cw_tdata(29) = '0' then
                                       if s_axis_cw_tlast = '1' then
                                          wrreqsmsig       <= onedwlength;
                                          s_axis_cw_treadysig <= '0';
                                       else
                                          wrreqsmsig  <= datatransfer;
                                          dataoffset  <= '1';
                                       end if;
                                    else
                                       wrreqsmsig  <= datatransfer;
                                    end if;
                                    dataen         <= '1';
                                 else
                                    wrreqsmsig       <= throttle;
                                    s_axis_cw_treadysig <= '0';
                                 end if;
                              else
                                 if s_axis_cw_tlast = '0' then
                                    wrreqsmsig       <= zerolenwr;
                                 else
                                    wrreqsmsig    <= memwrreq;
                                 end if;
                              end if;
                           else
                              if s_axis_cw_tlast = '0' then
                                 wrreqsmsig       <= poisoneddataclkout;
                              else
                                 wrreqsmsig    <= memwrreq;
                              end if;
                              master_int    <= '1';
                           end if;
                        --else
                        --   wrreqsmsig       <= memwrreq;
                        end if;
                     --else
                     --   wrreqsmsig          <= memwrreq;
                     end if;
                  end if;
                  blk_lnk_upsig  <= '0';
               end if;

            when zerolenwr =>
               if blk_lnk_up = '1' then
                  -- Nam - enhance core does not throttle
                  -- coverage off -item b 1 -allfalse
                  if s_axis_cw_tvalid = '1' then
                     if s_axis_cw_tlast = '1' then
                        wrreqsmsig       <= memwrreq;
                     end if;
                  end if;
               -- Nam -- extremely hard to hit case - zero length write while link_down
               -- coverage off
               else
                  if s_axis_cw_tvalid = '1' and s_axis_cw_tlast = '1' then
                     wrreqsmsig       <= memwrreq;
                  else
                     wrreqsmsig       <= blklinkdown;
                  end if;
               end if;
               -- coverage on

            when onedwlength =>
               wrreqsetsig <= '0';
               if almost_full = '0' then
               if addroffset3 = '0' and addroffset2 = '0' and addroffset1 = '0' then
                  datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= x"0000_0000_0000_0000_0000_0000" & tempdatareg;
               elsif addroffset3 = '0' and addroffset2 = '0' and addroffset1 = '1' then
                  datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= x"0000_0000_0000_0000" & tempdatareg & x"0000_0000";
               elsif addroffset3 = '0' and addroffset2 = '1' and addroffset1 = '0' then
                  datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= x"0000_0000" & tempdatareg & x"0000_0000_0000_0000";
               elsif addroffset3 = '1' and addroffset2 = '0' and addroffset1 = '0' then
                  datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= tempdatareg & x"0000_0000_0000_0000_0000_0000";
               end if;
               datain(C_S_AXIS_DATA_WIDTH)   <= '1';
               wrreqsmsig  <= memwrreq;
               delaylast    <= '0';
               s_axis_cw_treadysig <= '1';
               dataen      <= '0';
               dataoffset  <= '0';
               addroffset1 <= '0';
               addroffset2 <= '0';
               addroffset3 <= '0';
               s_axis_cw_tlasttemp <= s_axis_cw_tlast;
               end if;
            
            when poisoneddataclkout =>
               master_int <= '0';
               if blk_lnk_up = '1' then
                  -- Nam - enhance bridge wont throttle
                  -- coverage off -item b 1 -allfalse
                  if s_axis_cw_tvalid = '1' then
                     if s_axis_cw_tlast = '1' then
                        wrreqsmsig <= memwrreq;
                     end if;
                  end if;
               -- Nam -- extremely hard to hit case - poison data while linkdown
               -- coverage off                  
               else
                  if s_axis_cw_tvalid = '1' and s_axis_cw_tlast = '1' then
                     wrreqsmsig       <= memwrreq;
                  else
                     wrreqsmsig       <= blklinkdown;
                  end if;
               end if;
               -- coverage on
            
            when blklinkdown =>
               -- Nam - enhance bridge wont throttle
               -- coverage off -item b 1 -allfalse            
               if s_axis_cw_tvalid = '1' then
                  if s_axis_cw_tlast = '1' then
                     wrreqsmsig     <= idle;
                  end if;
               -- CR 655336
               -- MWr TLP may finish in single beat so there won't be further valids/last beat
               else
                  wrreqsmsig     <= idle;
               end if;

            when throttle =>
               if blk_lnk_up = '1' then
                  if tlppipeline /= "100" then
                     wrreqsetsig      <= '1';
                     wrreqpendsig <= wrreqpendsig + 1;
                     s_axis_cw_treadysig <= '1';
                     if tlpfmtsig(0) = '0' then
                        if s_axis_cw_tlasttemp = '1' then
                           wrreqsmsig       <= onedwlength;
                           s_axis_cw_treadysig <= '0';
                        else
                           wrreqsmsig       <= datatransfer;
                           dataoffset       <= '1';
                        end if;
                     else
                        wrreqsmsig <= datatransfer;
                     end if;
                     dataen        <= '1';
                  end if;
               -- Nam -- extremely hard to hit case. We covered this with the weekend run - 10 hits
               -- coverage off
               else
                  wrreqsmsig    <= blklinkdown;
                  s_axis_cw_treadysig <= '1';
               end if;
               -- coverage on

            when datatransfer =>
               wrreqsetsig <= '0';
               -- Nam - enhance bridge wont throttle -  -- tool issue, work work when the if statement is more than 1 line
               -- coverage off -item bc 1 -allfalse -condrow 3
               if s_axis_cw_tvalid = '1' or s_axis_cw_tlasttemp = '1' then
                  s_axis_cw_treadysig <= not(almost_full);
                  if almost_full = '0' then
                  if s_axis_cw_treadysig = '1' or s_axis_cw_tlasttemp = '1' then
                  if dataoffset  = '1' then
                     if addroffset1 = '0' and addroffset2 = '0' and addroffset3 = '0' then
                        datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= 
                           little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4-1 downto 
                             C_S_AXIS_DATA_WIDTH/2)) & little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2-1 downto 
                               C_S_AXIS_DATA_WIDTH/4)) & little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/4-1 downto 0)) 
                                    & tempdatareg;
                        tempdatareg <= 
                           little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH-1 downto 
                             C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4));
                     else
                        if addroffset1 = '1' then
                           if padzeroes = '0' then
                              datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= 
                                 little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2-1 downto C_S_AXIS_DATA_WIDTH/4)) & 
                                    little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/4-1 downto 0)) & 
                                    s_axis_cw_tdatatemp(C_S_AXIS_DATA_WIDTH/2-1 downto 0);
                           else
                              datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= 
                                 little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2-1 downto C_S_AXIS_DATA_WIDTH/4)) & 
                                    little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/4-1 downto 0)) & 
                                    tempdatareg & x"00000000";
                              padzeroes <= '0';
                           end if;
                           s_axis_cw_tdatatemp(C_S_AXIS_DATA_WIDTH/2-1 downto 0) <= 
                              little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH-1 downto 
                                C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4)) & 
                                  little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4-1 downto 
                                    C_S_AXIS_DATA_WIDTH/2));
                           end if;
                           if addroffset2 = '1' then
                           if padzeroes = '0' then
                              datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= 
                                 little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/4-1 downto 0)) & 
                                    s_axis_cw_tdatatemp(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4-1 downto 0);
                           else
                              datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= 
                                 little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/4-1 downto 0)) & tempdatareg & 
                                   x"0000000000000000";
                              padzeroes <= '0';
                           end if;
                           s_axis_cw_tdatatemp(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4-1 downto 0) <= 
                              little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH-1 downto 
                                C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4)) & 
                                 little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4-1 downto 
                                   C_S_AXIS_DATA_WIDTH/2)) & little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2-1 downto 
                                     C_S_AXIS_DATA_WIDTH/4));
                           end if;
                           if addroffset3 = '1' then
                           if padzeroes = '0' then
                              datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= s_axis_cw_tdatatemp;
                           else
                              datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= tempdatareg & x"000000000000000000000000";
                              padzeroes <= '0';
                           end if;
                           s_axis_cw_tdatatemp <= little_to_big_endian32(s_axis_cw_tdata(127 downto 96)) & 
                              little_to_big_endian32(s_axis_cw_tdata(95 downto 64)) & 
                                 little_to_big_endian32(s_axis_cw_tdata(63 downto 32)) & 
                                    little_to_big_endian32(s_axis_cw_tdata(31 downto 0));
                        end if;
                     end if;
                  else
                     if addroffset1 = '0' and addroffset2 = '0' and addroffset3 = '0' then
                        datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= little_to_big_endian32(s_axis_cw_tdata(127 downto 96)) & 
                           little_to_big_endian32(s_axis_cw_tdata(95 downto 64)) & 
                              little_to_big_endian32(s_axis_cw_tdata(63 downto 32)) & 
                                 little_to_big_endian32(s_axis_cw_tdata(31 downto 0));
                     else
                        if addroffset1 = '1' then
                           if padzeroes = '0' then
                              datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= 
                                 little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4-1 downto 
                                   C_S_AXIS_DATA_WIDTH/2)) & little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2-1 downto 
                                     C_S_AXIS_DATA_WIDTH/4)) & little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/4-1 
                                       downto 0)) & s_axis_cw_tdatatemp(C_S_AXIS_DATA_WIDTH/4-1 downto 0);
                           else
                              datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= 
                                 little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4-1 downto 
                                   C_S_AXIS_DATA_WIDTH/2)) & little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2-1 downto 
                                     C_S_AXIS_DATA_WIDTH/4)) & little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/4-1 
                                       downto 0)) & x"00000000";
                              padzeroes <= '0';
                           end if;
                           s_axis_cw_tdatatemp(C_S_AXIS_DATA_WIDTH/4-1 downto 0) <= 
                              little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH-1 downto 
                                C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4));
                        end if;
                        if addroffset2 = '1' then
                           if padzeroes = '0' then
                              datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= 
                                 little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2-1 downto C_S_AXIS_DATA_WIDTH/4)) & 
                                    little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/4-1 downto 0)) & 
                                    s_axis_cw_tdatatemp(C_S_AXIS_DATA_WIDTH/2-1 downto 0);
                           else
                              datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= 
                                 little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2-1 downto C_S_AXIS_DATA_WIDTH/4)) & 
                                    little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/4-1 downto 0)) & x"0000000000000000";
                              padzeroes <= '0';
                           end if;
                           s_axis_cw_tdatatemp(C_S_AXIS_DATA_WIDTH/2-1 downto 0) <= 
                              little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH-1 downto 
                                C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4)) & 
                                 little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4-1 downto 
                                   C_S_AXIS_DATA_WIDTH/2));
                        end if;
                        if addroffset3 = '1' then
                           if padzeroes = '0' then
                              datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= 
                                 little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/4-1 downto 0)) & 
                                    s_axis_cw_tdatatemp(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4-1 downto 0);
                           else
                              datain(C_S_AXIS_DATA_WIDTH-1 downto 0) <= 
                                 little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/4-1 downto 0)) & 
                                   x"000000000000000000000000";
                              padzeroes <= '0';
                           end if;
                           s_axis_cw_tdatatemp(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4-1 downto 0) <= 
                              little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH-1 downto 
                                C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4)) & 
                                 little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2+C_S_AXIS_DATA_WIDTH/4-1 downto 
                                   C_S_AXIS_DATA_WIDTH/2)) & 
                                    little_to_big_endian32(s_axis_cw_tdata(C_S_AXIS_DATA_WIDTH/2-1 downto C_S_AXIS_DATA_WIDTH/4));
                        end if;
                     end if;
                  end if;
                  if delaylast = '0' then
                     datain(C_S_AXIS_DATA_WIDTH) <= s_axis_cw_tlast;
                     if s_axis_cw_tlast = '1' then
                        wrreqsmsig  <= memwrreq;
                        dataen      <= '0';
                        dataoffset  <= '0';
                        addroffset1 <= '0';
                        addroffset2 <= '0';
                        addroffset3 <= '0';
                     end if;
                  else
                     s_axis_cw_tlasttemp <= s_axis_cw_tlast;
                     datain(C_S_AXIS_DATA_WIDTH) <= s_axis_cw_tlasttemp;
                     if s_axis_cw_tlast = '1' then
                        s_axis_cw_treadysig <= '0';
                     end if;
                     if s_axis_cw_tlasttemp = '1' then
                        s_axis_cw_treadysig <= '1';
                        wrreqsmsig <= memwrreq;
                        s_axis_cw_tlasttemp <= '0';
                        dataen      <= '0';
                        dataoffset  <= '0';
                        addroffset1 <= '0';
                        addroffset2 <= '0';
                        addroffset3 <= '0';
                        delaylast   <= '0';
                     end if;
                  end if;
                  end if;
                  end if;
               end if;
               if blk_lnk_up = '0' then
                  blk_lnk_upsig <= '1';
               end if;

            -- coverage off
            when others =>
               wrreqsmsig <= idle;
            -- coverage on
         end case;
      end if;
   end if;
end process;
end generate;

tlplength          <= tlplengthsig;
firstdwbe          <= firstdwbesig;
lastdwbe           <= lastdwbesig;
wrreqset           <= wrreqsetsig;
treadydataenadjust <= s_axis_cw_tlasttemp;
s_axis_cw_tready   <=
   s_axis_cw_treadysig when almost_full = '0' else
   '0';

wrreqpend <= wrreqpendsig;

end behavioral;
