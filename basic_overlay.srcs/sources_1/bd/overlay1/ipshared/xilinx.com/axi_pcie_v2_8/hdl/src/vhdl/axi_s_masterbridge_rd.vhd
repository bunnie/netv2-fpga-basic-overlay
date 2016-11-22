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
-- Filename:        axi_s_masterbridge_rd.vhd
--
-- Description:     
--                  
-- This VHDL file is an HDL design file for the AXI MM/S master bridge read function
-- on the AXI Stream.
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_s_masterbridge_rd.vhd
--
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.conv_integer;
use ieee.std_logic_arith.conv_std_logic_vector;

entity array_arith is
      port(
      din0 : in integer range 0 to 1023;
      din1 : in integer range 0 to 1023;
      dout : out std_logic_vector(9 downto 0)
      );
end array_arith;

architecture rtl of array_arith is
      attribute DONT_TOUCH : string;
      attribute DONT_TOUCH of rtl : architecture is "true";
      signal din2 : integer range 0 to 2047;
      signal din3 : integer range 0 to 511;
      signal dout_tmp : integer range 0 to 1;
begin
      din2 <= din0 + din1;
      dout_tmp <= 0 when (din2 mod 4) = 0 else 1;
      din3 <= (din0 + din1)/4;                      
      dout <= conv_std_logic_vector(din3 + dout_tmp, 10);
end rtl;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_MISC.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

library axi_pcie_v2_8_0;
use axi_pcie_v2_8_0.all;
use axi_pcie_v2_8_0.axi_pcie_mm_s_pkg.all;

entity axi_s_masterbridge_rd is
   generic(
      --Family Generics
      C_FAMILY            : string := "artix7";
      C_S_AXIS_DATA_WIDTH : integer := 128;
      C_S_AXIS_USER_WIDTH : integer := 22;
      C_PCIEBAR_NUM       : integer := 1;
      C_PCIEBAR_AS        : integer := 0;
      C_TRN_NP_FC         : string  := "FALSE"
      );
   port(
      --AXI Global
      aclk             : in  std_logic; --meaningful port name
      reset            : in  std_logic; --meaningful port name
      -- AXIS Read Target Channel
      s_axis_cr_tdata  : in  std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0); --meaningful port name
      s_axis_cr_tstrb  : in  std_logic_vector(C_S_AXIS_DATA_WIDTH/8-1 downto 0); --meaningful port name
      s_axis_cr_tlast  : in  std_logic; --meaningful port name
      s_axis_cr_tvalid : in  std_logic; --meaningful port name
      s_axis_cr_tready : out std_logic; --meaningful port name
      s_axis_cr_tuser  : in  std_logic_vector(C_S_AXIS_USER_WIDTH-1 downto 0); --meaningful port name
      -- AXIS Completion Target Channel
      m_axis_cc_tdata  : out std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0); --meaningful port name
      m_axis_cc_tstrb  : out std_logic_vector(C_S_AXIS_DATA_WIDTH/8-1 downto 0); --meaningful port name
      m_axis_cc_tlast  : out std_logic; --meaningful port name
      m_axis_cc_tvalid : out std_logic; --meaningful port name
      m_axis_cc_tready : in  std_logic; --meaningful port name
      m_axis_cc_tuser  : out std_logic_vector(C_S_AXIS_USER_WIDTH-1 downto 0); --meaningful port name
      --AXI Streaming Block Interface
      blk_lnk_up          : in  std_logic; --meaningful port name
      blk_dcontrol        : in  std_logic_vector(15 downto 0); --meaningful port name
      blk_bus_number      : in  std_logic_vector(7 downto 0); --meaningful port name
      blk_device_number   : in  std_logic_vector(4 downto 0); --meaningful port name
      blk_function_number : in  std_logic_vector(2 downto 0); --meaningful port name
      --Internal Interface
      rresp           : in  rresp_array; --meaningful port name
      rdreq           : out std_logic; --meaningful port name
      empty           : in  std_logic; --meaningful port name
      dout            : in  std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0); --meaningful port name
      tlpaddrl_out    : out tlpaddrl_array; --meaningful port name
      tlplength_out   : out tlplength_array; --meaningful port name
      rd_en           : out std_logic; --meaningful port name
      --Internal Interface Ordering
      rdtargetpipeline_out : out std_logic_vector(2 downto 0); --meaningful port name
      orrdreqpipeline : in std_logic_vector(2 downto 0); --meaningful port name
      cplpendcpl      : in  cplpendcpl_array; --meaningful port name
      wrpending       : out wrpend_array; --meaningful port name
      wrreqpend       : in  std_logic_vector(2 downto 0); --meaningful port name
      slv_write_idle  : in  std_logic; --meaningful port name
      master_wr_idle  : in  std_logic; --meaningful port name
      wrreqcomp       : in  std_logic_vector(2 downto 0); --meaningful port name
      addrstreampipeline : in std_logic_vector(2 downto 0); -- meaningful port name
      blk_lnk_up_latch_o : out std_logic; --meaningful port name
      rdndreqpipeline_o  : out std_logic_vector(2 downto 0); -- Used in NP OK mode
      rdreqpipeline_o    : out std_logic_vector(2 downto 0); -- Used in NP OK mode
      np_pkt_complete_o  : out std_logic_vector(1 downto 0); -- Used in NP Req mode. bit[1] = rdndreqpipeline; bit[0] = rdreqpipeline
      s_axis_cr_tusersig : out barhit_array --meaningful port name
      );
end axi_s_masterbridge_rd;

architecture behavioral of axi_s_masterbridge_rd is
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of behavioral : architecture is "yes";

signal tlplength_array_val : integer range 0 to 1023;
signal rdtlpaddrl_array_val : integer range 0 to 1023;
signal rdtlpaddrltemp_array_val : integer range 0 to 1023;
signal tlplengthcntr_var_tmp : std_logic_vector(9 downto 0);
signal tlplengthcntr_tmp : std_logic_vector(9 downto 0);

type rd_master_ingress_states is (init,
                                  memrdreq,
                                  blklinkdown,
                                  throttle,
                                  throttle_nd,
                                  latch_reqid_tag_be,
                                  latchaddrh,
                                  latchaddrl);

signal rdreqsmsig                            : rd_master_ingress_states;

type cpl_master_egress_states is (idle,
                                  memcplpipeline,
                                  memcplcrtdatabeat1,
                                  blklinkdown_corruptdata,
                                  memcplcrtdatabeat2,
                                  memcpltxonedw,
                                  memcpltxdata);

signal cpltlpsmsig                           : cpl_master_egress_states;

type cplnd_master_egress_states is (idle,
                                  memcplcrtdatabeat1,
                                  memcplcrtdatabeat2,
                                  transfer_complete,
                                  memcplcrtdatabeat3);

signal cplndtlpsmsig                           : cplnd_master_egress_states;

type cpl_split_states is (idle,
                          cpldsplitcalc,
                          cpldsplitparam);

signal cpldsplitsm                           : cpl_split_states;


--byte count array (0 to 1 -> book keeping per read req, 0 to 3 -> pipeline book keeping)
type ctlpbytecount_array is array (0 to 1, 0 to 3) of std_logic_vector(11 downto 0);
signal ctlpbytecount                         : ctlpbytecount_array;

--length array (0 to 2 -> book keeping per read req, 0 to 3 -> pipeline book keeping)
-- array(0 -> ragged, 1 -> maxpayload, 3 -> residue)
type ctlplength_array is array (0 to 2, 0 to 3) of std_logic_vector(9 downto 0);
signal ctlplength                            : ctlplength_array;

type vector_array_type1 is array (0 to 3) of std_logic_vector(11 downto 0);
signal tlpbytecount, tlpndbytecount          : vector_array_type1;
signal ctlpbytecount0,ctlpbytecount1         : vector_array_type1;

type vector_array_type2 is array (0 to 3) of std_logic_vector(15 downto 0);
signal tlprequesterid, tlpcompleterid      : vector_array_type2;

type vector_array_type3 is array (0 to 3) of std_logic_vector(7 downto 0);
signal tlptag                                : vector_array_type3;

type vector_array_type4 is array (0 to 3) of std_logic_vector(6 downto 0);
signal rdtlpaddrl                            : vector_array_type4;

type vector_array_type6 is array (0 to 3) of std_logic_vector(4 downto 0);
signal cpldsplitcount                        : vector_array_type6;

type vector_array_type7 is array (0 to 3) of std_logic_vector(2 downto 0);
signal tlptc                          : vector_array_type7;

type vector_array_type9 is array (0 to 3) of std_logic_vector(1 downto 0);
signal tlpattr                       : vector_array_type9;

type vector_array_type10 is array (0 to 3) of std_logic_vector(9 downto 0);
signal tlplength                             : vector_array_type10;
signal ctlplength0, ctlplength1, ctlplength2 : vector_array_type10;

type vector_array_type11 is array (0 to 3) of std_logic_vector(31 downto 0);
signal tlpaddrl                              : vector_array_type11;

type vector_array_type12 is array (0 to 3) of std_logic_vector(15 downto 0);
signal tlpndrequesterid, tlpndcompleterid  : vector_array_type12;
type vector_array_type13 is array (0 to 3) of std_logic_vector(7 downto 0);
signal tlpndtag                              : vector_array_type13;
signal rdtlpaddrltemp                        : std_logic_vector(6 downto 0);
type vector_array_type14 is array (0 to 3) of std_logic_vector(6 downto 0);
signal rdndtlpaddrl                          : vector_array_type14;
type vector_array_type15 is array (0 to 3) of std_logic_vector(2 downto 0);
signal tlpndtc, cplndstatuscode              : vector_array_type15;
type vector_array_type16 is array (0 to 3) of std_logic_vector(1 downto 0);
signal tlpndattr                             : vector_array_type16;

signal tlpaddrlow                            : std_logic_vector(31 downto 0);
signal ctlpbytecounttemp                     : std_logic_vector(11 downto 0);
signal ctlplengthtemp                        : std_logic_vector(9 downto 0);
signal tlpbytecounttemp                      : std_logic_vector(11 downto 0);
signal tlpaddrltemp                          : std_logic_vector(31 downto 0);
signal tlpaddrhigh                           : std_logic_vector(31 downto 0);
signal requesteridsig                        : std_logic_vector(15 downto 0);
signal tagsig                                : std_logic_vector(7 downto 0);
signal cplcounter, cpldsplitcounttemp        : std_logic_vector(4 downto 0);
signal np_pkt_complete                       : std_logic_vector(1 downto 0);
signal rdreqpipeline                         : std_logic_vector(2 downto 0);
signal rdndreqpipeline                       : std_logic_vector(2 downto 0);
signal rdtargetpipeline                      : std_logic_vector(2 downto 0);
signal rdndtargetpipeline                    : std_logic_vector(2 downto 0);
signal cpltargetpipeline                     : std_logic_vector(2 downto 0);
signal cplndtargetpipeline, orcplndpipeline  : std_logic_vector(2 downto 0);
signal ctargetpipeline                       : std_logic_vector(2 downto 0);
signal rdreqpipelineincr, rdreqpipelinedecr  : std_logic;
signal rdndreqpipelineincr, rdndreqpipelinedecr  : std_logic;
signal tlptcsig                              : std_logic_vector(2 downto 0);
signal tlpepsig, tlptdsig                    : std_logic;
signal bcm, cplpacket1, firstdwen            : std_logic;
signal tlpfmtsig, tlpattrsig                 : std_logic_vector(1 downto 0);
signal tlptypesig                            : std_logic_vector(4 downto 0);
signal tlplengthsig, tlplengthcntr           : std_logic_vector(9 downto 0);
signal firstdwbesig, lastdwbesig             : std_logic_vector(3 downto 0);
signal badreadreq, zerolenreadreq            : std_logic;
signal rdndtlpaddrlow                        : std_logic_vector(6 downto 0);
signal m_axis_cc_tdatatemp64                 : std_logic_vector(31 downto 0);
signal m_axis_cc_tdatatemp128                : std_logic_vector(95 downto 0);
signal lnkdowndataflush, corruptdataflush      : std_logic;
signal blk_lnk_up_latch                        : std_logic;
signal blk_lnk_up_d                            : std_logic;
-- 2 sets of signals to send cpl's for no barhit & zero len read reqs
signal m_axis_cc_tdata_d, m_axis_cc_tdata_nd   : std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0);
signal m_axis_cc_tstrb_d, m_axis_cc_tstrb_nd   : std_logic_vector(C_S_AXIS_DATA_WIDTH/8-1 downto 0);
signal m_axis_cc_tlast_d, m_axis_cc_tlast_nd   : std_logic;
signal m_axis_cc_tvalid_d, m_axis_cc_tvalid_nd : std_logic;
signal length_offset                           : std_logic_vector(11 downto 0);
signal m_axis_cc_tdata_h                       : std_logic_vector(C_S_AXIS_DATA_WIDTH-1 downto 0);
signal dis_valid_d, dis_valid_nd               : std_logic;
signal data_phase, rd_en_sig, dis_rden         : std_logic;
signal wait_till_not_empty                     : std_logic;
signal s_axis_cr_tready_sig                    : std_logic;
signal totallength, linkdownflushdepth         : std_logic_vector(9 downto 0);
signal totalbytecount                          : std_logic_vector(11 downto 0);
signal s_axis_cr_tusersigtemp                  : std_logic_vector(2 downto 0);
--ordering control signals
signal rrespdelayed                            : std_logic;
signal wrpendingsig, wrpendflush               : wrpend_array;
signal cplndpendcpl                            : cplpendcpl_array;

component array_arith is
      port(
      din0 : in integer range 0 to 1023;
      din1 : in integer range 0 to 1023;
      dout : out std_logic_vector(9 downto 0)
      );
end component;


function little_to_big_endian32(datain : std_logic_vector(31 downto 0))
      return std_logic_vector is
   variable dataout : std_logic_vector(31 downto 0);
begin
   dataout := datain(7 downto 0) & datain(15 downto 8) & datain(23 downto 16) & datain(31 downto 24);
   return(dataout);
end function;

begin

ctlplength0(0)      <= ctlplength(0,0);
ctlplength0(1)      <= ctlplength(0,1);
ctlplength0(2)      <= ctlplength(0,2);
ctlplength0(3)      <= ctlplength(0,3);
ctlplength1(0)      <= ctlplength(1,0);
ctlplength1(1)      <= ctlplength(1,1);
ctlplength1(2)      <= ctlplength(1,2);
ctlplength1(3)      <= ctlplength(1,3);
ctlplength2(0)      <= ctlplength(2,0);
ctlplength2(1)      <= ctlplength(2,1);
ctlplength2(2)      <= ctlplength(2,2);
ctlplength2(3)      <= ctlplength(2,3);
ctlpbytecount0(0)   <= ctlpbytecount(0,0);
ctlpbytecount0(1)   <= ctlpbytecount(0,1);
ctlpbytecount0(2)   <= ctlpbytecount(0,2);
ctlpbytecount0(3)   <= ctlpbytecount(0,3);
ctlpbytecount1(0)   <= ctlpbytecount(1,0);
ctlpbytecount1(1)   <= ctlpbytecount(1,1);
ctlpbytecount1(2)   <= ctlpbytecount(1,2);
ctlpbytecount1(3)   <= ctlpbytecount(1,3);


blk_lnk_up_latch_proc: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         blk_lnk_up_latch <= '1';
         blk_lnk_up_d     <= '0';
      else
         blk_lnk_up_d     <= blk_lnk_up;
         if blk_lnk_up = '0' then
            blk_lnk_up_latch <= '0';
         elsif cpltargetpipeline = ctargetpipeline and blk_lnk_up_latch = '0' then
            blk_lnk_up_latch <= '1';
         end if;
      end if;
   end if;
end process;

blk_lnk_up_latch_o <= blk_lnk_up_latch;

np_req_mode: if C_TRN_NP_FC = "TRUE" generate begin
np_pkt_complete_proc : process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         np_pkt_complete <= (others => '0');
      else
 np_pkt_complete <= rdndreqpipelinedecr & rdreqpipelinedecr;
      end if;
   end if;
end process;

np_pkt_complete_o  <= np_pkt_complete;
end generate;

np_ok_mode: if C_TRN_NP_FC = "FALSE" generate begin
rdndreqpipeline_o  <= rdndreqpipeline;
rdreqpipeline_o    <= rdreqpipeline;
end generate;

data_width_32: if C_S_AXIS_DATA_WIDTH = 32 generate
rd_master_ingress: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         s_axis_cr_tready_sig    <= '0';
         rdreqpipelineincr   <= '0';
         rdtargetpipeline    <= (others => '0');
         tlplengthsig        <= (others => '0');
         firstdwbesig        <= (others => '0');
         lastdwbesig         <= (others => '0');
         tlpaddrhigh         <= (others => '0');
         tlpaddrlow          <= (others => '0');
         tlpfmtsig           <= (others => '0');
         rdreqsmsig          <= init;
         rdreq               <= '0';
         badreadreq          <= '0';
         zerolenreadreq      <= '0';
         rdndreqpipelineincr <= '0';
         rdndtargetpipeline  <= "000";
         s_axis_cr_tusersig <= (others => (others => '0'));
         s_axis_cr_tusersigtemp <= (others => '0');
      else
         case rdreqsmsig is
            when init =>
               rdreqpipelineincr <= '0';
               rdndreqpipelineincr <= '0';
               rdreq <= '0';
               if lnkdowndataflush = '0' and blk_lnk_up_latch = '1' then
                  s_axis_cr_tready_sig <= '1';
                  rdreqsmsig       <= memrdreq;
               end if;
            
            when memrdreq =>
               rdreq <= '0';
               rdreqpipelineincr <= '0';
               rdndreqpipelineincr <= '0';
               if blk_lnk_up_latch = '1' then
                  if s_axis_cr_tvalid = '1' then
                     -- Nam - double check
                     -- coverage off -item b 1 -allfalse
                     if s_axis_cr_tdata(30) = '0' then
                        -- Nam - double check
                        -- coverage off -item b 1 -allfalse                     
                        if s_axis_cr_tdata(28 downto 24) = "00000" then
                           -- Nam -- enhance bridge does not foward bad request -- tool issue, work work when the if statement is more than 1 line
                           -- coverage off -item bc 1 -allfalse -condrow 4 5
                           if (s_axis_cr_tuser(2) = '1' or s_axis_cr_tuser(3) = '1' or s_axis_cr_tuser(4) = '1' or 
                              s_axis_cr_tuser(6) = '1') then
                              badreadreq <= '0';
                           else
                              badreadreq <= '1';
                           end if;
                           tlpattrsig <= s_axis_cr_tdata(13 downto 12);
                           tlpfmtsig    <= s_axis_cr_tdata(30 downto 29);
                           tlplengthsig <= s_axis_cr_tdata(9 downto 0);
                           tlptcsig     <= s_axis_cr_tdata(22 downto 20);
                           rdreqsmsig   <= latch_reqid_tag_be;
                        --else
                        --   rdreqsmsig       <= memrdreq;
                        end if;
                     --else
                     --   rdreqsmsig          <= memrdreq;
                     end if;
                  end if;
                  rdreq <= '0';
               -- Nam - extremely hard to hit case - we covered this in the weekend run with 2 hits
               -- coverage off   
               else
                  --rdtargetpipeline    <= cpltargetpipeline;
                  if s_axis_cr_tvalid = '1' then
                     rdreqsmsig       <= blklinkdown;
                  end if;
               end if;
               -- coverage on
            -- Nam - extremely hard to hit, we covered this in the weekend run - 2 hits
            -- coverage off
            when blklinkdown =>
               -- Nam - enhanced bridge doesnot throttle
               -- coverage off -item b 1 -allfalse                       
               if s_axis_cr_tvalid = '1' then
                  if s_axis_cr_tlast = '1' then
                     rdreqsmsig       <= init;
                     s_axis_cr_tready_sig <= '0';
                  end if;
               end if;
            -- coverage on
            when latch_reqid_tag_be =>
               if blk_lnk_up_latch = '1' then
                  -- Nam - enhanced bridge doesnot throttle
                  -- coverage off -item b 1 -allfalse              
                  if s_axis_cr_tvalid = '1' then
                     lastdwbesig  <= s_axis_cr_tdata(7 downto 4);
                     firstdwbesig <= s_axis_cr_tdata(3 downto 0);
                     requesteridsig  <= s_axis_cr_tdata(31 downto 16);
                     tagsig          <= s_axis_cr_tdata(15 downto 8);
                     if tlpfmtsig(0) = '0' then
                        rdreqsmsig  <= latchaddrl;
                     else
                        rdreqsmsig <= latchaddrh;
                     end if;
                     if s_axis_cr_tdata(3 downto 0) = "0000" then
                        zerolenreadreq   <= '1';
                     end if;
                  end if;
               -- Nam - extremely hard to hit case   - we covered this in the weekend run with 2 hits
               -- coverage off                    
               else
                  rdreqsmsig       <= blklinkdown;
               end if;
               -- coverage on
            
            when latchaddrh =>
               if blk_lnk_up_latch = '1' then
                  -- Nam - enhanced bridge doesnot throttle
                  -- coverage off -item b 1 -allfalse   
                  if s_axis_cr_tvalid = '1' then
                     tlpaddrhigh <= s_axis_cr_tdata;
                     rdreqsmsig  <= latchaddrl;
                  end if;
               -- Nam - extremely hard to hit case   
               -- coverage off                    
               else
                  rdreqsmsig       <= blklinkdown;
               end if;
               -- coverage on
            when latchaddrl =>
               if blk_lnk_up_latch = '1' then
                  -- Nam - enhanced bridge doesnot throttle
                  -- coverage off -item bc 1 -allfalse -condrow 1 2               
                  if s_axis_cr_tvalid = '1' and s_axis_cr_tlast = '1' then
                     --badreadreq asserted for no bar hit on readreq(root port only)
                     if badreadreq = '0' and zerolenreadreq = '0' then
                        if rdreqpipeline /= "100" then
                           tlpaddrlow <= s_axis_cr_tdata(31 downto 2) & conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + 
                              conv_integer(not(firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or 
                                 firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or 
                                    firstdwbesig(1) or firstdwbesig(0)))), 2);
                           tlpaddrl(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(31 downto 2) & 
                              conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + conv_integer(not(firstdwbesig(1) or 
                                 firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0))) + 
                                   conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)))), 2);
                           tlpaddrl_out(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(31 downto 2) & 
                              conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + conv_integer(not(firstdwbesig(1) or 
                                 firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0))) + 
                                   conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)))), 2);
                           rdtlpaddrl(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(6 downto 2) & 
                              conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + conv_integer(not(firstdwbesig(1) or 
                                 firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0))) + 
                                   conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)))), 2);
                           if conv_integer(tlplengthsig) /= 0 then
                           --when len/=1024DW
                              if conv_integer(tlplengthsig) /= 1 then
                                 tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(tlplengthsig-2)*4 + (conv_integer(firstdwbesig(3) or 
                                       firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                          conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                             conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                             firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3)) + 
                                                conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or lastdwbesig(1) or 
                                                   lastdwbesig(2) or lastdwbesig(3))), 12);
                              else
                                 tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(firstdwbesig(3)) + conv_integer(firstdwbesig(2)) + 
                                       conv_integer(firstdwbesig(1)) + conv_integer(firstdwbesig(0)) + 
                                          conv_integer(not((firstdwbesig(3) xor firstdwbesig(1)) or (firstdwbesig(2) xor 
                                             firstdwbesig(0)))) + conv_integer((firstdwbesig(3) and firstdwbesig(0)) and 
                                                (firstdwbesig(2) nor firstdwbesig(1))) + conv_integer((firstdwbesig(3) and 
                                                   firstdwbesig(0)) and (firstdwbesig(2) nand firstdwbesig(1))) - 
                                                      conv_integer(firstdwbesig(3) and firstdwbesig(2) and firstdwbesig(1) and 
                                                         firstdwbesig(0)), 12);
                              end if;
                           else
                           --when len=1024DW
                              if firstdwbesig(0) /= '1' or lastdwbesig(3) /= '1' then
                                 tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(1022)*4 + (conv_integer(firstdwbesig(3) or firstdwbesig(2) 
                                       or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                          conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                          conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                             firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3)) + 
                                                conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or lastdwbesig(1) or 
                                                   lastdwbesig(2) or lastdwbesig(3))), 12);
                              -- Nam - extremely hard to hit case   - we covered this in the weekend run with 2 hits
                              -- coverage off                             
                              else
                                 tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= (others => '0');
                              end if;
                              -- coverage on
                           end if;
                           tlprequesterid(conv_integer(rdtargetpipeline(1 downto 0))) <= requesteridsig;
                           tlptag(conv_integer(rdtargetpipeline(1 downto 0))) <= tagsig;
                           tlptc(conv_integer(rdtargetpipeline(1 downto 0))) <= tlptcsig;
                           tlpcompleterid(conv_integer(rdtargetpipeline(1 downto 0))) <= blk_bus_number & blk_device_number & 
                              blk_function_number;
                           tlpattr(conv_integer(rdtargetpipeline(1 downto 0))) <= tlpattrsig;
                           tlplength(conv_integer(rdtargetpipeline(1 downto 0))) <= tlplengthsig;
                           tlplength_out(conv_integer(rdtargetpipeline(1 downto 0))) <= tlplengthsig;
                           rdreq <= '1';
                           rdreqsmsig  <= memrdreq;
                           rdreqpipelineincr <= '1';
                           rdtargetpipeline <= rdtargetpipeline + 1;
                           if (orrdreqpipeline /= rdtargetpipeline) and
                           (wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0) - "01"))(2 downto 0) = wrreqpend) then
                              wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0))) <= '1' & wrreqpend;
                           else
                              wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0))) <= '0' & wrreqpend;
                           end if;
                           if C_PCIEBAR_AS = 0 then
                              s_axis_cr_tusersig(conv_integer(rdtargetpipeline(1 downto 0)))(C_PCIEBAR_NUM-1 downto 0) <= 
                                 s_axis_cr_tuser(C_PCIEBAR_NUM+1 downto 2);
                           else
                              for i in 0 to C_PCIEBAR_NUM-1 loop
                                 s_axis_cr_tusersig(conv_integer(rdtargetpipeline(1 downto 0)))(i) <= s_axis_cr_tuser(2*(i+1));
                              end loop;
                           end if;
                        else
                           s_axis_cr_tready_sig <= '0';
                           rdreqsmsig   <= throttle;
                           tlpaddrlow <= s_axis_cr_tdata(31 downto 2) & conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + 
                              conv_integer(not(firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or 
                                 firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or 
                                    firstdwbesig(1) or firstdwbesig(0)))), 2);
                           if C_PCIEBAR_AS = 0 then
                              s_axis_cr_tusersigtemp(C_PCIEBAR_NUM-1 downto 0) <= s_axis_cr_tuser(C_PCIEBAR_NUM+1 downto 2);
                           else
                              for i in 0 to C_PCIEBAR_NUM-1 loop
                                 s_axis_cr_tusersigtemp(i) <= s_axis_cr_tuser(2*(i+1));
                              end loop;
                           end if;
                        end if;
                     else --zero length read for EP/RC also nobarhit for RC
                        if rdndreqpipeline /= "100" then
                           rdreqsmsig  <= memrdreq;
                           if wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0) - "01"))(2 downto 0) = wrreqpend or 
                             badreadreq = '1' then
                              wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0))) <= '1' & wrreqpend;
                           else
                              wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0))) <= '0' & wrreqpend;
                           end if;
                           tlpndtc(conv_integer(rdndtargetpipeline(1 downto 0))) <= tlptcsig;
                           tlpndattr(conv_integer(rdndtargetpipeline(1 downto 0))) <= tlpattrsig;
                           tlpndrequesterid(conv_integer(rdndtargetpipeline(1 downto 0))) <= requesteridsig;
                           tlpndcompleterid(conv_integer(rdndtargetpipeline(1 downto 0))) <= blk_bus_number & blk_device_number & 
                              blk_function_number;
                           tlpndtag(conv_integer(rdndtargetpipeline(1 downto 0))) <= tagsig;
                           rdndtlpaddrl(conv_integer(rdndtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(6 downto 2) & 
                              conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + conv_integer(not(firstdwbesig(1) or 
                                 firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0))) + 
                                 conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)))), 2);
                           if badreadreq = '1' then
                              cplndstatuscode(conv_integer(rdndtargetpipeline(1 downto 0))) <= "001";
                           elsif zerolenreadreq = '1' then
                              cplndstatuscode(conv_integer(rdndtargetpipeline(1 downto 0))) <= "000";
                           end if;
                           rdndtargetpipeline <= rdndtargetpipeline +1;
                           rdndreqpipelineincr <= '1';
                           badreadreq <= '0';
                           zerolenreadreq <= '0';
                           -- NAM / JRH Tool bug doesn't exclude the second condition. removed cov off item b 2. Moved cov off.
                           if conv_integer(tlplengthsig) /= 0 then
                           --when len/=1024DW
                              -- coverage off -item b 1
                              if conv_integer(tlplengthsig) /= 1 then
                                 tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(tlplengthsig-2)*4 + (conv_integer(firstdwbesig(3) or 
                                       firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                          conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                             conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                                firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3))
                                                   + conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or lastdwbesig(1) 
                                                      or lastdwbesig(2) or lastdwbesig(3))), 12);
                              else
                                 tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(firstdwbesig(3)) + conv_integer(firstdwbesig(2)) + 
                                       conv_integer(firstdwbesig(1)) + conv_integer(firstdwbesig(0)) + 
                                          conv_integer(not((firstdwbesig(3) xor firstdwbesig(1)) or (firstdwbesig(2) xor 
                                             firstdwbesig(0)))) + conv_integer((firstdwbesig(3) and firstdwbesig(0)) and 
                                                (firstdwbesig(2) nor firstdwbesig(1))) + conv_integer((firstdwbesig(3) and 
                                                   firstdwbesig(0)) and (firstdwbesig(2) nand firstdwbesig(1))) - 
                                                      conv_integer(firstdwbesig(3) and firstdwbesig(2) and firstdwbesig(1) 
                                                         and firstdwbesig(0)), 12);
                              end if;
                           -- NAM / JRH Tool bug doesn't exclude the second condition. Moved cov off.
                           else
                           --when len=1024DW
                              if firstdwbesig(0) /= '1' or lastdwbesig(3) /= '1' then
                                 tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(1022)*4 + (conv_integer(firstdwbesig(3) or firstdwbesig(2) 
                                       or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                          conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                          conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                             firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3)) 
                                                + conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or lastdwbesig(1) or 
                                                   lastdwbesig(2) or lastdwbesig(3))), 12);
                              else
                                 tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= (others => '0');
                              end if;
                           end if;
                        else
                           s_axis_cr_tready_sig <= '0';
                           rdreqsmsig   <= throttle_nd;
                           rdndtlpaddrlow <= 
                              s_axis_cr_tdata(6 downto 2) & conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + 
                              conv_integer(not(firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or 
                                 firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or 
                                    firstdwbesig(1) or firstdwbesig(0)))), 2);
                        end if; 
                     end if;
                  end if;
               -- Nam - extremely hard to hit case - we covered this in the weekend run with 2 hits
               -- coverage off                    
               else
                  if s_axis_cr_tvalid = '1' and s_axis_cr_tlast = '1' then
                     rdreqsmsig       <= init;
                     s_axis_cr_tready_sig <= '0';
                  else
                     rdreqsmsig       <= blklinkdown;
                  end if;
               end if;
               -- coverage on
            
            when throttle =>
               if blk_lnk_up_latch = '1' then
                  if rdreqpipeline /= "100" then
                    --pipeline full for CplD (i.e., compl with data)
                     tlpaddrl(conv_integer(rdtargetpipeline(1 downto 0)))    <= tlpaddrlow;
                     tlpaddrl_out(conv_integer(rdtargetpipeline(1 downto 0)))    <= tlpaddrlow;
                     rdtlpaddrl(conv_integer(rdtargetpipeline(1 downto 0))) <= tlpaddrlow(6 downto 0);
                     if conv_integer(tlplengthsig) /= 0 then
                     --when len/=1024DW
                        if conv_integer(tlplengthsig) /= 1 then
                           tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(tlplengthsig-2)*4 + (conv_integer(firstdwbesig(3) or 
                                 firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                    conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                       conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                          firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3)) + 
                                             conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or lastdwbesig(1) or 
                                                lastdwbesig(2) or lastdwbesig(3))), 12);
                        else
                           tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(firstdwbesig(3)) + conv_integer(firstdwbesig(2)) + 
                                 conv_integer(firstdwbesig(1)) + conv_integer(firstdwbesig(0)) + conv_integer(not((firstdwbesig(3) 
                                    xor firstdwbesig(1)) or (firstdwbesig(2) xor firstdwbesig(0)))) + conv_integer((firstdwbesig(3)
                                       and firstdwbesig(0)) and (firstdwbesig(2) nor firstdwbesig(1))) + 
                                          conv_integer((firstdwbesig(3) and firstdwbesig(0)) and (firstdwbesig(2) nand 
                                             firstdwbesig(1))) - conv_integer(firstdwbesig(3) and firstdwbesig(2) and 
                                                firstdwbesig(1) and firstdwbesig(0)), 12);
                        end if;
                     else
                     --when len=1024DW
                        if firstdwbesig(0) /= '1' or lastdwbesig(3) /= '1' then
                           tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(1022)*4 + (conv_integer(firstdwbesig(3) or firstdwbesig(2) or 
                                 firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + conv_integer(firstdwbesig(2) 
                                    or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(2) or lastdwbesig(3)) + 
                                       conv_integer(firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(1) or 
                                          lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(0)) + 
                                             conv_integer(lastdwbesig(0) or lastdwbesig(1) or lastdwbesig(2) or 
                                                lastdwbesig(3))), 12);
                        -- Nam - extremely hard to hit case - we covered this in the weekend run with 6 hits
                        -- coverage off                                                    
                        else
                           tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= (others => '0');
                        end if;
                        -- coverage on
                     end if;
                     tlprequesterid(conv_integer(rdtargetpipeline(1 downto 0))) <= requesteridsig;
                     tlptag(conv_integer(rdtargetpipeline(1 downto 0))) <= tagsig;
                     tlptc(conv_integer(rdtargetpipeline(1 downto 0))) <= tlptcsig;
                     tlpcompleterid(conv_integer(rdtargetpipeline(1 downto 0))) <= blk_bus_number & blk_device_number & 
                        blk_function_number;
                     tlpattr(conv_integer(rdtargetpipeline(1 downto 0))) <= tlpattrsig;
                     tlplength(conv_integer(rdtargetpipeline(1 downto 0))) <= tlplengthsig;
                     tlplength_out(conv_integer(rdtargetpipeline(1 downto 0))) <= tlplengthsig;
                     rdreq <= '1';
                     --if blk_lnk_up = '0' then
                     --   s_axis_cr_tready_sig <= '0';
                     --   rdreqsmsig  <= init;
                     --else
                     rdreqsmsig  <= memrdreq;
                     s_axis_cr_tready_sig <= '1';
                     --end if;
                     rdreqpipelineincr <= '1';
                     rdtargetpipeline <= rdtargetpipeline + 1;
                     if (orrdreqpipeline /= rdtargetpipeline) and
                     (wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0) - "01"))(2 downto 0) = wrreqpend) then
                        wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0))) <= '1' & wrreqpend;
                     else
                        wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0))) <= '0' & wrreqpend;
                     end if;
                     s_axis_cr_tusersig(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tusersigtemp;
                  end if;
               else
                  rdreqsmsig       <= init;
                  s_axis_cr_tready_sig <= '0';
               end if;
            
            when throttle_nd =>
               if blk_lnk_up_latch = '1' then
                  if rdndreqpipeline /= "100" then
                    --pipeline full for Cpl (i.e., compl without data - no barhit or zero len)
                     --if blk_lnk_up = '0' then
                     --   s_axis_cr_tready_sig <= '0';
                     --   rdreqsmsig  <= init;
                     --else
                     rdreqsmsig  <= memrdreq;
                     s_axis_cr_tready_sig <= '1';
                     --end if;
                     if wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0) - "01"))(2 downto 0) = wrreqpend or 
                       badreadreq = '1' then
                        wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0))) <= '1' & wrreqpend;
                     else
                        wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0))) <= '0' & wrreqpend;
                     end if;
                     tlpndtc(conv_integer(rdndtargetpipeline(1 downto 0))) <= tlptcsig;
                     tlpndattr(conv_integer(rdndtargetpipeline(1 downto 0))) <= tlpattrsig;
                     tlpndrequesterid(conv_integer(rdndtargetpipeline(1 downto 0))) <= requesteridsig;
                     tlpndcompleterid(conv_integer(rdndtargetpipeline(1 downto 0))) <= blk_bus_number & blk_device_number & 
                        blk_function_number;
                     tlpndtag(conv_integer(rdndtargetpipeline(1 downto 0))) <= tagsig;
                     rdndtlpaddrl(conv_integer(rdndtargetpipeline(1 downto 0))) <= rdndtlpaddrlow;
                     if badreadreq = '1' then
                        cplndstatuscode(conv_integer(rdndtargetpipeline(1 downto 0))) <= "001";
                     elsif zerolenreadreq = '1' then
                        cplndstatuscode(conv_integer(rdndtargetpipeline(1 downto 0))) <= "000";
                     end if;
                     rdndtargetpipeline <= rdndtargetpipeline +1;
                     rdndreqpipelineincr <= '1';
                     badreadreq <= '0';
                     zerolenreadreq <= '0';
                     -- NAM / JRH Tool bug doesn't exclude the second condition. removed cov off item b 2. Moved cov off.
                     if conv_integer(tlplengthsig) /= 0 then
                     --when len/=1024DW
                        -- coverage off -item b 1
                        if conv_integer(tlplengthsig) /= 1 then
                           -- Not hit for EP, include for RC
                           tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(tlplengthsig-2)*4 + (conv_integer(firstdwbesig(3) or 
                                 firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                    conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                       conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                          firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3)) + 
                                             conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or lastdwbesig(1) or 
                                                lastdwbesig(2) or lastdwbesig(3))), 12);
                        else
                           tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(firstdwbesig(3)) + conv_integer(firstdwbesig(2)) + 
                                 conv_integer(firstdwbesig(1)) + conv_integer(firstdwbesig(0)) + conv_integer(not((firstdwbesig(3) 
                                    xor firstdwbesig(1)) or (firstdwbesig(2) xor firstdwbesig(0)))) + conv_integer((firstdwbesig(3)
                                       and firstdwbesig(0)) and (firstdwbesig(2) nor firstdwbesig(1))) + 
                                          conv_integer((firstdwbesig(3) and firstdwbesig(0)) and (firstdwbesig(2) nand 
                                             firstdwbesig(1))) - conv_integer(firstdwbesig(3) and firstdwbesig(2) and 
                                                firstdwbesig(1) and firstdwbesig(0)), 12);
                        end if;
                     -- NAM / JRH Tool bug doesn't exclude the second condition. Moved cov off.
                     -- coverage off
                     else
                     --when len=1024DW
                           -- Not hit for EP, include for RC
                        if firstdwbesig(0) /= '1' or lastdwbesig(3) /= '1' then
                           tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(1022)*4 + (conv_integer(firstdwbesig(3) or firstdwbesig(2) or 
                                 firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + conv_integer(firstdwbesig(2) 
                                    or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(2) or lastdwbesig(3)) + 
                                       conv_integer(firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(1) or 
                                          lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(0)) + 
                                             conv_integer(lastdwbesig(0) or lastdwbesig(1) or lastdwbesig(2) or 
                                                lastdwbesig(3))), 12);
                        else
                           tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= (others => '0');
                        end if;
                           -- coverage on
                     end if;
                  end if;
               -- Nam - extremely hard to hit cases - requires zero length request right at link_down
               -- coverage off                    
               else
                  rdreqsmsig       <= init;
                  s_axis_cr_tready_sig <= '0';
               end if;
               -- coverage on
            
            -- coverage off
            when others => 
               rdreqsmsig <= init;
            -- coverage on
         end case;
         if blk_lnk_up_latch = '0' and cpltargetpipeline /= ctargetpipeline then
            rdtargetpipeline <= addrstreampipeline;
         end if;
      end if;
   end if;
end process;

cplnd_master_egress: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         cplndtlpsmsig <= memcplcrtdatabeat1;
         cplndtargetpipeline <= "000";
         rdndreqpipelinedecr <= '0';
         m_axis_cc_tvalid_nd <= '0';
         m_axis_cc_tdata_nd <= (others => '0');
         m_axis_cc_tstrb_nd <= (others => '0');
         m_axis_cc_tlast_nd <= '0';
         dis_valid_nd <= '0';
         orcplndpipeline <= (others => '0');
         cplndpendcpl <= (others => '0');
      else
         if orcplndpipeline /= rdndtargetpipeline then
            cplndpendcpl(conv_integer(orcplndpipeline(1 downto 0))) <= '0';
            if master_wr_idle = '1' or wrpendflush(conv_integer(orcplndpipeline(1 downto 0)))(2 downto 0) = wrreqcomp
                       or wrpendflush(conv_integer(orcplndpipeline(1 downto 0)))(3) = '1' then
               cplndpendcpl(conv_integer(orcplndpipeline(1 downto 0))) <= '1';
               orcplndpipeline <= orcplndpipeline + 1;
            end if;
         end if;
        
         -- cplndpendcpl needs to be reset on link down event
         if blk_lnk_up_latch = '0' then
            cplndpendcpl <= (others => '0');
         end if;
         case cplndtlpsmsig is
            when memcplcrtdatabeat1 =>
               rdndreqpipelinedecr <= '0';
               m_axis_cc_tvalid_nd <= '0';
               m_axis_cc_tlast_nd <= '0';
               m_axis_cc_tstrb_nd <= x"0";
               if cplndtargetpipeline /= rdndtargetpipeline and cpltlpsmsig = memcplpipeline then
                  if blk_lnk_up_latch = '1' then
                     if cplndpendcpl(conv_integer(cplndtargetpipeline(1 downto 0))) = '1' then
                        if cplndstatuscode(conv_integer(cplndtargetpipeline(1 downto 0))) = "000" then
                          m_axis_cc_tdata_nd <= '0' & "10" & "01010" & '0' & tlpndtc(conv_integer(cplndtargetpipeline(1 downto 0)))
                            & "0000" & '0' & '0' & tlpndattr(conv_integer(cplndtargetpipeline(1 downto 0))) & "00" & "0000000001";
                        -- coverage off
                        else
                          m_axis_cc_tdata_nd <= '0' & "00" & "01010" & '0' & tlpndtc(conv_integer(cplndtargetpipeline(1 downto 0)))
                             & "0000" & '0' & '0' & tlpndattr(conv_integer(cplndtargetpipeline(1 downto 0))) & "00" & "0000000000";
                        -- coverage on
                        end if;
                        m_axis_cc_tstrb_nd <= (others => '1');
                        m_axis_cc_tvalid_nd <= '1';
                        if m_axis_cc_tready = '1' and m_axis_cc_tvalid_nd = '1' then
                           cplndtlpsmsig <= memcplcrtdatabeat2;
                           if cplndstatuscode(conv_integer(cplndtargetpipeline(1 downto 0))) = "000" then
                              m_axis_cc_tdata_nd <= tlpndcompleterid(conv_integer(cplndtargetpipeline(1 downto 0))) & 
                                 cplndstatuscode(conv_integer(cplndtargetpipeline(1 downto 0))) & '0' & x"001";
                           -- coverage off
                           else
                              m_axis_cc_tdata_nd <= tlpndcompleterid(conv_integer(cplndtargetpipeline(1 downto 0))) & 
                                 cplndstatuscode(conv_integer(cplndtargetpipeline(1 downto 0))) & '0' & 
                                    tlpndbytecount(conv_integer(cplndtargetpipeline(1 downto 0)));
                           -- coverage on
                           end if;
                        --else
                        --   cplndtlpsmsig <= memcplcrtdatabeat1;
                        end if;
                     end if;
                  -- Nam - extremely hard to hit cases   
                  -- coverage off                       
                  else
                     cplndtlpsmsig       <= memcplcrtdatabeat1;
                     rdndreqpipelinedecr <= '1';
                     cplndtargetpipeline <= cplndtargetpipeline + 1;
                  end if;
                  -- coverage on
               end if;
            
            when memcplcrtdatabeat2 =>
               m_axis_cc_tstrb_nd <= (others => '1');
               m_axis_cc_tvalid_nd <= '1';
               -- Nam - enhanced bridge doesnot throttle
               -- coverage off -item bc 1 -allfalse -condrow 2 3               
               if m_axis_cc_tready = '1' then
                  m_axis_cc_tdata_nd <= tlpndrequesterid(conv_integer(cplndtargetpipeline(1 downto 0))) & 
                     tlpndtag(conv_integer(cplndtargetpipeline(1 downto 0))) & '0' & 
                        rdndtlpaddrl(conv_integer(cplndtargetpipeline(1 downto 0)));
                  if cplndstatuscode(conv_integer(cplndtargetpipeline(1 downto 0))) = "000" then
                     cplndtlpsmsig <= memcplcrtdatabeat3;
                  -- coverage off
                  else
                     cplndtlpsmsig <= transfer_complete;
                     m_axis_cc_tlast_nd <= '1';
                  -- coverage on
                  end if;
               --else
               --   cplndtlpsmsig <= memcplcrtdatabeat2;
               end if;
            
            when memcplcrtdatabeat3 =>
               m_axis_cc_tstrb_nd <= (others => '1');
               m_axis_cc_tvalid_nd <= '1';
               -- Nam - enhanced bridge doesnot throttle
               -- coverage off -item b 1 -allfalse
               if m_axis_cc_tready = '1' then
                  m_axis_cc_tdata_nd <= x"00000000";
                  m_axis_cc_tlast_nd <= '1';
                  cplndtlpsmsig <= transfer_complete;
               --else
               --   cplndtlpsmsig <= memcplcrtdatabeat3;
               end if;
            
            when transfer_complete =>
                  if m_axis_cc_tready = '1' then
                  cplndtlpsmsig <= memcplcrtdatabeat1;
                  m_axis_cc_tvalid_nd <= '0';
                  m_axis_cc_tlast_nd <= '0';
                  m_axis_cc_tstrb_nd <= x"0";
                  rdndreqpipelinedecr <= '1';
                  cplndtargetpipeline <= cplndtargetpipeline + 1;
                  end if;

         -- coverage off
         when others =>
            cplndtlpsmsig <= memcplcrtdatabeat1;
         -- coverage on
      end case;
      end if;
   end if;
end process;

cpl_master_egress: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         cpltlpsmsig <= memcplpipeline;
         cpltargetpipeline <= (others => '0');
         rdreqpipelinedecr <= '0';
         cplpacket1 <= '0';
         firstdwen   <= '0';
         lnkdowndataflush <= '0';
         m_axis_cc_tvalid_d <= '0';
         m_axis_cc_tstrb_d <= (others => '0');
         m_axis_cc_tlast_d <= '0';
         rd_en_sig <= '0';
         cplcounter <= (others => '0');
         cpldsplitcounttemp <= (others => '0');
         rdtlpaddrltemp <= (others => '0');
         ctlpbytecounttemp <= (others => '0');
         ctlplengthtemp <= (others => '0');
         tlplengthcntr <= (others => '0');
         dis_valid_d <= '0';
         m_axis_cc_tdata_h <= (others => '0');
         data_phase <= '0';
         dis_rden <= '0';
         corruptdataflush <= '0';
         wait_till_not_empty <= '0';
         totallength <= (others => '0');
         totalbytecount <= (others => '0');
         linkdownflushdepth <= (others => '0');
         rrespdelayed <= '0';
      else
         case cpltlpsmsig is
            when memcplpipeline =>
               rdreqpipelinedecr <= '0';
               m_axis_cc_tlast_d <= '0';
               m_axis_cc_tvalid_d <= '0';
               m_axis_cc_tstrb_d <= x"0";
               if blk_lnk_up_latch = '1' then
                  if cplndtargetpipeline = rdndtargetpipeline then
                     if cpltargetpipeline /= ctargetpipeline then
                     --pending completions exist
                        cplcounter <= "00000";
                        cpldsplitcounttemp <= cpldsplitcount(conv_integer(cpltargetpipeline(1 downto 0)));
                        rdtlpaddrltemp <= rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)));
                        ctlpbytecounttemp <= ctlpbytecount0(conv_integer(cpltargetpipeline(1 downto 0)));
                        ctlplengthtemp <= ctlplength0(conv_integer(cpltargetpipeline(1 downto 0)));
                        totallength <= tlplength(conv_integer(cpltargetpipeline(1 downto 0)));
                        linkdownflushdepth <= tlplength(conv_integer(cpltargetpipeline(1 downto 0)));
                        totalbytecount <= tlpbytecount(conv_integer(cpltargetpipeline(1 downto 0)));
                        cplpacket1 <= '1';
                        cpltlpsmsig <= memcplcrtdatabeat1;
                        rrespdelayed <= '0';
                     else
                        cpltlpsmsig <= memcplpipeline;
                     end if;
                  end if;
               elsif cpltargetpipeline /= ctargetpipeline and empty = '0' then
                  cpltlpsmsig <= blklinkdown_corruptdata;
                  lnkdowndataflush <= '1';
                  tlplengthcntr <= tlplength(conv_integer(cpltargetpipeline(1 downto 0)));
                  rd_en_sig <= '1';
               end if;
            
            
            when memcplcrtdatabeat1 =>
               m_axis_cc_tlast_d <= '0';
               rrespdelayed <= rresp(conv_integer(cpltargetpipeline(1 downto 0)))(2);
                  if (((cplpendcpl(conv_integer(cpltargetpipeline(1 downto 0))) = '1' and rrespdelayed = '1') or 
                     slv_write_idle = '1') and rresp(conv_integer(cpltargetpipeline(1 downto 0)))(2) = '1')
                     or blk_lnk_up_latch = '0' then
                  --ordering & rresp check
                     if rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1 downto 0) = "00" then
                     --OKAY response
                        if blk_lnk_up_latch = '1' then
                        --link up
                           m_axis_cc_tdata_h <= '0' & "10" & "01010" & '0' & tlptc(conv_integer(cpltargetpipeline(1 downto 0))) & 
                              "0000" & '0' & '0' & tlpattr(conv_integer(cpltargetpipeline(1 downto 0))) & "00" & 
                                              ctlplengthtemp;
                           tlplengthcntr <= ctlplengthtemp;
                           m_axis_cc_tstrb_d <= (others => '1');
                           m_axis_cc_tvalid_d <= '1';
                           if m_axis_cc_tready = '1' and m_axis_cc_tvalid_d = '1' then
                              linkdownflushdepth <= linkdownflushdepth - ctlplengthtemp;
                              cpltlpsmsig <= memcplcrtdatabeat2;
                              m_axis_cc_tdata_h <= tlpcompleterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                              (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) xor 
                                 rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & 
                                    '0' & (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) and 
                                    rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & '0' & ctlpbytecounttemp;
                           --else
                           --   cpltlpsmsig <= memcplcrtdatabeat1;
                           end if;
                        else
                        --link is down
                           if empty = '0' then
                              cpltlpsmsig       <= blklinkdown_corruptdata;
                              m_axis_cc_tvalid_d <= '0';
                              tlplengthcntr <= linkdownflushdepth;
                              rd_en_sig            <= '1';
                              lnkdowndataflush <= '1';
                           else
                              cpltlpsmsig       <= memcplpipeline;
                           end if;
                        end if;
                     else
                     --DECERR or SLVERR response
                        if blk_lnk_up_latch = '1' then
                           m_axis_cc_tdata_h <= '0' & "00" & "01010" & '0' & tlptc(conv_integer(cpltargetpipeline(1 downto 0))) & 
                              "0000" & '0' & '0' & tlpattr(conv_integer(cpltargetpipeline(1 downto 0))) & "00" & totallength;
                           tlplengthcntr <= tlplength(conv_integer(cpltargetpipeline(1 downto 0)));
                           m_axis_cc_tstrb_d <= (others => '1');
                           m_axis_cc_tvalid_d <= '1';
                           -- Nam - enhanced bridge doesnot throttle
                           -- coverage off -item c 1 -condrow 2
                           if m_axis_cc_tready = '1' and m_axis_cc_tvalid_d = '1' then
                              cpltlpsmsig <= memcplcrtdatabeat2;
                              m_axis_cc_tdata_h <= tlpcompleterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                              (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) xor 
                                 rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) &
                                 '0' & (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) and 
                                    rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & '0' & totalbytecount;
                           --else
                           --   cpltlpsmsig <= memcplcrtdatabeat1;
                           end if;
                        -- Nam - extremely hard to hit cases - DECERR or SLVERR with link_down
                        -- coverage off                             
                        else
                           if empty = '0' then
                              cpltlpsmsig       <= blklinkdown_corruptdata;
                              m_axis_cc_tvalid_d <= '0';
                              tlplengthcntr <= tlplength(conv_integer(cpltargetpipeline(1 downto 0)));
                              rd_en_sig            <= '1';
                              lnkdowndataflush <= '1';
                           else
                              cpltlpsmsig       <= memcplpipeline;
                           end if;
                        end if;
                        -- coverage on
                     end if;
                  end if;
            
            when blklinkdown_corruptdata =>
               if m_axis_cc_tready = '1' then
                  m_axis_cc_tvalid_d <= '0';
               end if;
               rdreqpipelinedecr <= '0';
               if empty = '0' then
                  wait_till_not_empty <= '1';
                  if tlplengthcntr /= "0000000001" then
                     tlplengthcntr <= tlplengthcntr - 1;
                     rd_en_sig <= '1';
                  else
                     if lnkdowndataflush = '1' then
                        if cpltargetpipeline + 1 /= ctargetpipeline then
                           tlplengthcntr <= tlplength(conv_integer(cpltargetpipeline(1 downto 0) + 1));
                           --rdreqpipelinedecr <= '1';
                           cpltargetpipeline <= cpltargetpipeline + 1;
                        else
                           -- Nam - enhanced bridge doesnot throttle
                           -- coverage off -item bc 1 -allfalse -condrow 2 3
                           if m_axis_cc_tvalid_d = '0' or m_axis_cc_tready = '1' then
                              cpltlpsmsig <= memcplpipeline;
                              --rdreqpipelinedecr <= '1';
                              cpltargetpipeline <= cpltargetpipeline + 1;
                              wait_till_not_empty <= '0';
                           end if;
                           rd_en_sig <= '0';
                           lnkdowndataflush <= '0';
                        end if;
                     else
                        -- Nam - enhanced bridge doesnot throttle
                        -- coverage off -item bc 1 -allfalse -condrow 2 3                  
                        if m_axis_cc_tvalid_d = '0' or m_axis_cc_tready = '1' then
                           cpltlpsmsig <= memcplpipeline;
                           rdreqpipelinedecr <= '1';
                           cpltargetpipeline <= cpltargetpipeline + 1;
                           wait_till_not_empty <= '0';
                        end if;
                        rd_en_sig <= '0';
                        corruptdataflush <= '0';
                     end if;
                  end if;
               end if;

            when memcplcrtdatabeat2 =>
               if rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1 downto 0) = "00" then
                  m_axis_cc_tstrb_d <= (others => '1');
                  m_axis_cc_tvalid_d <= '1';
                  -- Nam - enhanced bridge doesnot throttle
                  -- coverage off -item b 1 -allfalse
                  if m_axis_cc_tready = '1' then
                     if cplpacket1 <= '0' then
                        m_axis_cc_tdata_h <= tlprequesterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                           tlptag(conv_integer(cpltargetpipeline(1 downto 0))) & x"00";
                     else
                        m_axis_cc_tdata_h <= tlprequesterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                           tlptag(conv_integer(cpltargetpipeline(1 downto 0))) & '0' & rdtlpaddrltemp;
                     end if;
                     cpltlpsmsig <= memcpltxdata;
                     firstdwen   <= '1';
                  --else
                  --   cpltlpsmsig <= memcplcrtdatabeat2;
                  end if;
               else
                  m_axis_cc_tstrb_d <= (others => '1');
                  m_axis_cc_tvalid_d <= '1';
                  -- Nam - enhanced bridge doesnot throttle
                  -- coverage off -item b 1 -allfalse
                  if m_axis_cc_tready = '1' then
                     m_axis_cc_tdata_h <= tlprequesterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                        tlptag(conv_integer(cpltargetpipeline(1 downto 0))) & '0' & rdtlpaddrltemp;
                     m_axis_cc_tlast_d <= '1';
                     cpltlpsmsig <= blklinkdown_corruptdata;
                     tlplengthcntr <= tlplength(conv_integer(cpltargetpipeline(1 downto 0)));
                     rd_en_sig <= '1';
                     corruptdataflush <= '1';
                  --else
                  --   cpltlpsmsig <= memcplcrtdatabeat2;
                  end if;
               end if;
            
            when memcpltxdata =>
               if empty = '0' or tlplengthcntr = "0000000000" then
                  -- Nam - enhanced bridge doesnot throttle
                  -- coverage off -item b 1 -allfalse
                  if m_axis_cc_tready = '1' then
                     m_axis_cc_tvalid_d <= not(empty);
                     data_phase <= '1';
                     if tlplengthcntr = "0000000001" then
                        m_axis_cc_tlast_d <= '1';
                     end if;
                     if firstdwen = '1' then
                        m_axis_cc_tstrb_d <= x"F";
                        firstdwen <= '0';
                        tlplengthcntr <= tlplengthcntr - 1;
                     elsif tlplengthcntr = "0000000000" then
                        m_axis_cc_tlast_d <= '0';
                        data_phase <= '0';
                        m_axis_cc_tvalid_d <= '0';
                        if cplcounter /= cpldsplitcounttemp then
                           cpltlpsmsig <= memcplcrtdatabeat1;
                           cplcounter <= cplcounter + 1;
                           if cplcounter /= "00000" then
                              ctlpbytecounttemp <= ctlpbytecounttemp - 
                                 (ctlplength1(conv_integer(cpltargetpipeline(1 downto 0))) & "00");
                           else
                              ctlpbytecounttemp <= ctlpbytecounttemp - 
                                 ctlpbytecount1(conv_integer(cpltargetpipeline(1 downto 0)));
                           end if;
                           if cplcounter+1 /= cpldsplitcounttemp then
                              ctlplengthtemp <= ctlplength1(conv_integer(cpltargetpipeline(1 downto 0)));
                           else
                              ctlplengthtemp <= ctlplength2(conv_integer(cpltargetpipeline(1 downto 0)));
                           end if;
                           cplpacket1 <= '0';
                        else
                           m_axis_cc_tstrb_d <= x"F";
                           cpltlpsmsig <= memcplpipeline;
                           rdreqpipelinedecr <= '1';
                           cpltargetpipeline <= cpltargetpipeline + 1;
                        end if;
                     else
                        m_axis_cc_tstrb_d <= (others => '1');
                        tlplengthcntr <= tlplengthcntr - 1;
                     end if;
                  end if;
               end if;
         
         -- coverage off
            when others =>
            cpltlpsmsig <= memcplpipeline;
         -- coverage on
         end case;
         --if blk_lnk_up = '0' and blk_lnk_up_d = '1' then
            --cpltargetpipeline <= cpltargetpipeline - rdreqpipeline;
         --end if;
      end if;
   end if;
end process;
end generate;

data_width_64: if C_S_AXIS_DATA_WIDTH = 64 generate
rd_master_ingress: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         s_axis_cr_tready_sig    <= '0';
         rdreqpipelineincr   <= '0';
         rdtargetpipeline    <= (others => '0');
         tlplengthsig        <= (others => '0');
         firstdwbesig        <= (others => '0');
         lastdwbesig         <= (others => '0');
         tlpaddrhigh         <= (others => '0');
         tlpaddrlow          <= (others => '0');
         tlpfmtsig           <= (others => '0');
         rdreqsmsig          <= init;
         rdreq               <= '0';
         badreadreq          <= '0';
         zerolenreadreq      <= '0';
         rdndreqpipelineincr <= '0';
         rdndtargetpipeline  <= "000";
         s_axis_cr_tusersig <= (others => (others => '0'));
         s_axis_cr_tusersigtemp <= (others => '0');
      else
         case rdreqsmsig is
            when init =>
               rdreqpipelineincr <= '0';
               rdndreqpipelineincr <= '0';
               rdreq <= '0';
               if lnkdowndataflush = '0' and blk_lnk_up_latch = '1' then
                  s_axis_cr_tready_sig <= '1';
                  rdreqsmsig       <= memrdreq;
               end if;
            
            when memrdreq =>
               rdreq <= '0';
               if blk_lnk_up_latch = '1' then
                  if s_axis_cr_tvalid = '1' then
                     -- Nam - double check, bit 30 always = 0
                     -- coverage off -item b 1 -allfalse                  
                     if s_axis_cr_tdata(30) = '0' then
                        -- Nam - core does not support mem read locked
                        -- coverage off -item b 1 -allfalse
                        if s_axis_cr_tdata(28 downto 24) = "00000" then
                           -- Nam - enhance bridge does not forward bad request -- tool issue, work work when the if statement is more than 1 line
                           -- coverage off -item bc 1 -allfalse -condrow 5
                           if ((s_axis_cr_tuser(2) = '1' and C_PCIEBAR_NUM = 1) or (C_PCIEBAR_NUM > 1 and (s_axis_cr_tuser(2) = '1' or 
                             s_axis_cr_tuser(3) = '1' or s_axis_cr_tuser(4) = '1' or s_axis_cr_tuser(6) = '1'))) then
                              badreadreq <= '0';
                           else
                              badreadreq <= '1';
                           end if;
                              tlpattrsig <= s_axis_cr_tdata(13 downto 12);
                              tlpfmtsig    <= s_axis_cr_tdata(30 downto 29);
                              tlplengthsig <= s_axis_cr_tdata(9 downto 0);
                              tlptcsig     <= s_axis_cr_tdata(22 downto 20);
                              lastdwbesig  <= s_axis_cr_tdata(39 downto 36);
                              firstdwbesig <= s_axis_cr_tdata(35 downto 32);
                              requesteridsig  <= s_axis_cr_tdata(63 downto 48);
                              tagsig          <= s_axis_cr_tdata(47 downto 40);
                                 if s_axis_cr_tdata(29) = '0' then
                                    rdreqsmsig  <= latchaddrl;
                                 else
                                    rdreqsmsig <= latchaddrh;
                                 end if;
                              if s_axis_cr_tdata(35 downto 32) = "0000" then
                                 zerolenreadreq   <= '1';
                              end if;
                        --else
                        --   rdreqsmsig       <= memrdreq;
                        end if;
                     --else
                     --   rdreqsmsig          <= memrdreq;
                     end if;
                  end if;
                  rdreq <= '0';
               -- Nam - extremely hard to hit case
               -- coverage off                      
               else
                  --rdtargetpipeline    <= cpltargetpipeline;
                  if s_axis_cr_tvalid = '1' then
                     rdreqsmsig       <= blklinkdown;
                  end if;
               end if;
               -- coverage on
               rdreqpipelineincr <= '0';
               rdndreqpipelineincr <= '0';
            
            -- Nam - extremely hard to hit case
            -- coverage off    
            when blklinkdown =>
               if s_axis_cr_tvalid = '1' then
                  if s_axis_cr_tlast = '1' then
                     rdreqsmsig       <= init;
                     s_axis_cr_tready_sig <= '0';
                  end if;
               end if;
            -- coverage on
            
            when latchaddrh =>
               if blk_lnk_up_latch = '1' then
                  -- Nam - enhanced bridge doesn't throttle
                  -- coverage off -item bc 1 -condrow 1
                  if s_axis_cr_tvalid = '1' and s_axis_cr_tlast = '1' then
                     -- Nam - never hit condition
                     -- coverage off -item c 1 -condrow 1 2
                     if badreadreq = '0' and zerolenreadreq = '0' then
                        if rdreqpipeline /= "100" then
                           tlpaddrlow <= s_axis_cr_tdata(63 downto 34) & conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) +
                              conv_integer(not(firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or 
                                 firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or 
                                    firstdwbesig(1) or firstdwbesig(0)))), 2);
                           tlpaddrl(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(63 downto 34) & 
                              conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + conv_integer(not(firstdwbesig(1) or 
                                 firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0))) + 
                                   conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)))), 2);
                           tlpaddrl_out(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(63 downto 34) & 
                              conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + conv_integer(not(firstdwbesig(1) or 
                                 firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0))) + 
                                   conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)))), 2);
                           rdtlpaddrl(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(38 downto 34) & 
                              conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + conv_integer(not(firstdwbesig(1) or 
                                 firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0))) + 
                                   conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)))), 2);
                           if conv_integer(tlplengthsig) /= 0 then
                           --when len/=1024DW
                              if conv_integer(tlplengthsig) /= 1 then
                                 tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(tlplengthsig-2)*4 + (conv_integer(firstdwbesig(3) or 
                                       firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                          conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                             conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                                firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3))
                                                   + conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or lastdwbesig(1) 
                                                      or lastdwbesig(2) or lastdwbesig(3))), 12);
                              else
                                 tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(firstdwbesig(3)) + conv_integer(firstdwbesig(2)) + 
                                       conv_integer(firstdwbesig(1)) + conv_integer(firstdwbesig(0)) + 
                                          conv_integer(not((firstdwbesig(3) xor firstdwbesig(1)) or (firstdwbesig(2) xor 
                                             firstdwbesig(0)))) + conv_integer((firstdwbesig(3) and firstdwbesig(0)) and 
                                                (firstdwbesig(2) nor firstdwbesig(1))) + conv_integer((firstdwbesig(3) and 
                                                   firstdwbesig(0)) and (firstdwbesig(2) nand firstdwbesig(1))) - 
                                                      conv_integer(firstdwbesig(3) and firstdwbesig(2) and firstdwbesig(1) and 
                                                         firstdwbesig(0)), 12);
                              end if;
                           else
                           --when len=1024DW
                              if firstdwbesig(0) /= '1' or lastdwbesig(3) /= '1' then
                                 tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(1022)*4 + (conv_integer(firstdwbesig(3) or firstdwbesig(2) 
                                       or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                          conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                             conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                                firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3))
                                                   + conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or lastdwbesig(1) 
                                                      or lastdwbesig(2) or lastdwbesig(3))), 12);
                                                      
                              -- Nam - extremely hard to hit case - we covered this in the weekend run with 1 hits
                              -- coverage off                                  
                              else
                                 tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= (others => '0');
                              end if;
                              -- coverage on
                           end if;
                           tlprequesterid(conv_integer(rdtargetpipeline(1 downto 0))) <= requesteridsig;
                           tlptag(conv_integer(rdtargetpipeline(1 downto 0))) <= tagsig;
                           tlptc(conv_integer(rdtargetpipeline(1 downto 0))) <= tlptcsig;
                           tlpcompleterid(conv_integer(rdtargetpipeline(1 downto 0))) <= blk_bus_number & blk_device_number & 
                              blk_function_number;
                           tlpattr(conv_integer(rdtargetpipeline(1 downto 0))) <= tlpattrsig;
                           tlplength(conv_integer(rdtargetpipeline(1 downto 0))) <= tlplengthsig;
                           tlplength_out(conv_integer(rdtargetpipeline(1 downto 0))) <= tlplengthsig;
                           rdreq <= '1';
                           rdreqsmsig  <= memrdreq;
                           rdreqpipelineincr <= '1';
                           rdtargetpipeline <= rdtargetpipeline + 1;
                           if (orrdreqpipeline /= rdtargetpipeline) and
                           (wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0) - "01"))(2 downto 0) = wrreqpend) then
                              wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0))) <= '1' & wrreqpend;
                           else
                              wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0))) <= '0' & wrreqpend;
                           end if;
                           for i in 0 to C_PCIEBAR_NUM-1 loop
                              s_axis_cr_tusersig(conv_integer(rdtargetpipeline(1 downto 0)))(i) <= s_axis_cr_tuser(2*(i+1));
                           end loop;
                        else
                           s_axis_cr_tready_sig <= '0';
                           rdreqsmsig   <= throttle;
                           tlpaddrlow <= s_axis_cr_tdata(63 downto 34) & conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) +
                              conv_integer(not(firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or 
                                 firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or 
                                    firstdwbesig(1) or firstdwbesig(0)))), 2);
                           for i in 0 to C_PCIEBAR_NUM-1 loop
                              s_axis_cr_tusersigtemp(i) <= s_axis_cr_tuser(2*(i+1));
                           end loop;
                        end if;
                     else
                        if rdndreqpipeline /= "100" then
                           rdreqsmsig  <= memrdreq;
                           if wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0) - "01"))(2 downto 0) = wrreqpend or 
                             badreadreq = '1' then
                              wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0))) <= '1' & wrreqpend;
                           else
                              wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0))) <= '0' & wrreqpend;
                           end if;
                           tlpndtc(conv_integer(rdndtargetpipeline(1 downto 0))) <= tlptcsig;
                           tlpndattr(conv_integer(rdndtargetpipeline(1 downto 0))) <= tlpattrsig;
                           tlpndrequesterid(conv_integer(rdndtargetpipeline(1 downto 0))) <= requesteridsig;
                           tlpndcompleterid(conv_integer(rdndtargetpipeline(1 downto 0))) <= blk_bus_number & blk_device_number & 
                              blk_function_number;
                           tlpndtag(conv_integer(rdndtargetpipeline(1 downto 0))) <= tagsig;
                           rdndtlpaddrl(conv_integer(rdndtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(38 downto 34) & 
                              conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + conv_integer(not(firstdwbesig(1) or 
                                 firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0))) + 
                                   conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)))), 2);
                           if badreadreq = '1' then
                              cplndstatuscode(conv_integer(rdndtargetpipeline(1 downto 0))) <= "001";
                           elsif zerolenreadreq = '1' then
                              cplndstatuscode(conv_integer(rdndtargetpipeline(1 downto 0))) <= "000";
                           end if;
                           rdndtargetpipeline <= rdndtargetpipeline +1;
                           rdndreqpipelineincr <= '1';
                           badreadreq <= '0';
                           zerolenreadreq <= '0';
                           -- NAM / JRH Tool bug doesn't exclude the second condition. removed cov off item b 2. Moved cov off.
                           if conv_integer(tlplengthsig) /= 0 then
                           --when len/=1024DW
                              -- coverage off -item b 1
                              if conv_integer(tlplengthsig) /= 1 then
                           -- Not hit for EP, include for RC
                                 tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(tlplengthsig-2)*4 + (conv_integer(firstdwbesig(3) or 
                                       firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                          conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                             conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                                firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3))
                                                   + conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or lastdwbesig(1) 
                                                      or lastdwbesig(2) or lastdwbesig(3))), 12);
                              else
                                 tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(firstdwbesig(3)) + conv_integer(firstdwbesig(2)) + 
                                       conv_integer(firstdwbesig(1)) + conv_integer(firstdwbesig(0)) + 
                                          conv_integer(not((firstdwbesig(3) xor firstdwbesig(1)) or (firstdwbesig(2) xor 
                                             firstdwbesig(0)))) + conv_integer((firstdwbesig(3) and firstdwbesig(0)) and 
                                                (firstdwbesig(2) nor firstdwbesig(1))) + conv_integer((firstdwbesig(3) and 
                                                   firstdwbesig(0)) and (firstdwbesig(2) nand firstdwbesig(1))) - 
                                                      conv_integer(firstdwbesig(3) and firstdwbesig(2) and firstdwbesig(1) and 
                                                         firstdwbesig(0)), 12);
                              end if;
                           -- NAM / JRH Tool bug doesn't exclude the second condition. Moved cov off.
                           -- coverage off
                           else
                           --when len=1024DW
                           -- Not hit for EP, include for RC
                              if firstdwbesig(0) /= '1' or lastdwbesig(3) /= '1' then
                                 tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(1022)*4 + (conv_integer(firstdwbesig(3) or firstdwbesig(2) 
                                       or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                       conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                          conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                             firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3)) + 
                                                conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or lastdwbesig(1) or 
                                                   lastdwbesig(2) or lastdwbesig(3))), 12);
                              else
                                 tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= (others => '0');
                              end if;
                           -- coverage on
                           end if;
                        else
                           s_axis_cr_tready_sig <= '0';
                           rdreqsmsig   <= throttle_nd;
                           rdndtlpaddrlow <= 
                              s_axis_cr_tdata(38 downto 34) & conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + 
                              conv_integer(not(firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or 
                                 firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or 
                                    firstdwbesig(1) or firstdwbesig(0)))), 2);
                        end if;
                     end if;
                  end if;
               
               -- Nam - extremely hard to hit case - we covered this in the weekend run with 2 hits
               -- coverage off                      
               else
                  if s_axis_cr_tvalid = '1' and s_axis_cr_tlast = '1' then
                     rdreqsmsig       <= init;
                     s_axis_cr_tready_sig <= '0';
                  else
                     rdreqsmsig       <= blklinkdown;
                  end if;
               end if;
               -- coverage on
               
            when latchaddrl =>
               if blk_lnk_up_latch = '1' then
                  -- Nam - enhance bridge doesn't throttle
                  -- coverage off -item bc 1 -allfalse -condrow 1 2
                  if s_axis_cr_tvalid = '1' and s_axis_cr_tlast = '1' then
                     -- Nam - never hit condition
                     -- coverage off -item c 1 -condrow 1
                     if badreadreq = '0' and zerolenreadreq = '0' then
                        if rdreqpipeline /= "100" then
                           tlpaddrlow <= s_axis_cr_tdata(31 downto 2) & conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + 
                              conv_integer(not(firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or 
                                 firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or 
                                    firstdwbesig(1) or firstdwbesig(0)))), 2);
                           tlpaddrl(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(31 downto 2) & 
                              conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + conv_integer(not(firstdwbesig(1) or 
                                 firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0))) + 
                                   conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)))), 2);
                           tlpaddrl_out(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(31 downto 2) & 
                              conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + conv_integer(not(firstdwbesig(1) or 
                                 firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0))) + 
                                   conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)))), 2);
                           rdtlpaddrl(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(6 downto 2) & 
                              conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + conv_integer(not(firstdwbesig(1) or 
                                 firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0))) + 
                                   conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)))), 2);
                           if conv_integer(tlplengthsig) /= 0 then
                           --when len/=1024DW
                              if conv_integer(tlplengthsig) /= 1 then
                                 tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(tlplengthsig-2)*4 + (conv_integer(firstdwbesig(3) or 
                                       firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                          conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                             conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                                firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3))
                                                  + conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or lastdwbesig(1) 
                                                     or lastdwbesig(2) or lastdwbesig(3))), 12);
                              else
                                 tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(firstdwbesig(3)) + conv_integer(firstdwbesig(2)) + 
                                       conv_integer(firstdwbesig(1)) + conv_integer(firstdwbesig(0)) + 
                                          conv_integer(not((firstdwbesig(3) xor firstdwbesig(1)) or (firstdwbesig(2) xor 
                                             firstdwbesig(0)))) + conv_integer((firstdwbesig(3) and firstdwbesig(0)) and 
                                                (firstdwbesig(2) nor firstdwbesig(1))) + conv_integer((firstdwbesig(3) and 
                                                   firstdwbesig(0)) and (firstdwbesig(2) nand firstdwbesig(1))) - 
                                                      conv_integer(firstdwbesig(3) and firstdwbesig(2) and firstdwbesig(1) and 
                                                         firstdwbesig(0)), 12);
                              end if;
                           else
                           --when len=1024DW
                              if firstdwbesig(0) /= '1' or lastdwbesig(3) /= '1' then
                                 tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(1022)*4 + (conv_integer(firstdwbesig(3) or firstdwbesig(2) 
                                       or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                          conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                             conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                                firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3))
                                                   + conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or lastdwbesig(1) 
                                                      or lastdwbesig(2) or lastdwbesig(3))), 12);
                                                      
                              -- Nam - extremely hard to hit case - we covered this in the weekend run with 4 hits
                              -- coverage off                                                          
                              else
                                 tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= (others => '0');
                              end if;
                              -- coverage on
                           end if;
                           tlprequesterid(conv_integer(rdtargetpipeline(1 downto 0))) <= requesteridsig;
                           tlptag(conv_integer(rdtargetpipeline(1 downto 0))) <= tagsig;
                           tlptc(conv_integer(rdtargetpipeline(1 downto 0))) <= tlptcsig;
                           tlpcompleterid(conv_integer(rdtargetpipeline(1 downto 0))) <= blk_bus_number & blk_device_number & 
                              blk_function_number;
                           tlpattr(conv_integer(rdtargetpipeline(1 downto 0))) <= tlpattrsig;
                           tlplength(conv_integer(rdtargetpipeline(1 downto 0))) <= tlplengthsig;
                           tlplength_out(conv_integer(rdtargetpipeline(1 downto 0))) <= tlplengthsig;
                           rdreq <= '1';
                           rdreqsmsig  <= memrdreq;
                           rdreqpipelineincr <= '1';
                           rdtargetpipeline <= rdtargetpipeline + 1;
                           if (orrdreqpipeline /= rdtargetpipeline) and
                           (wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0) - "01"))(2 downto 0) = wrreqpend) then
                              wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0))) <= '1' & wrreqpend;
                           else
                              wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0))) <= '0' & wrreqpend;
                           end if;
                           if C_PCIEBAR_AS = 0 then
                              s_axis_cr_tusersig(conv_integer(rdtargetpipeline(1 downto 0)))(C_PCIEBAR_NUM-1 downto 0) <= 
                                 s_axis_cr_tuser(C_PCIEBAR_NUM+1 downto 2);
                           else
                              for i in 0 to C_PCIEBAR_NUM-1 loop
                                 s_axis_cr_tusersig(conv_integer(rdtargetpipeline(1 downto 0)))(i) <= s_axis_cr_tuser(2*(i+1));
                              end loop;
                           end if;
                        else
                           s_axis_cr_tready_sig <= '0';
                           rdreqsmsig   <= throttle;
                           tlpaddrlow <= s_axis_cr_tdata(31 downto 2) & conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + 
                              conv_integer(not(firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or 
                                 firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or 
                                    firstdwbesig(1) or firstdwbesig(0)))), 2);
                           if C_PCIEBAR_AS = 0 then
                              s_axis_cr_tusersigtemp(C_PCIEBAR_NUM-1 downto 0) <= s_axis_cr_tuser(C_PCIEBAR_NUM+1 downto 2);
                           else
                              for i in 0 to C_PCIEBAR_NUM-1 loop
                                 s_axis_cr_tusersigtemp(i) <= s_axis_cr_tuser(2*(i+1));
                              end loop;
                           end if;
                        end if;
                     else
                        if rdndreqpipeline /= "100" then
                           rdreqsmsig  <= memrdreq;
                           if wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0) - "01"))(2 downto 0) = wrreqpend or 
                             badreadreq = '1' then
                              wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0))) <= '1' & wrreqpend;
                           else
                              wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0))) <= '0' & wrreqpend;
                           end if;
                           tlpndtc(conv_integer(rdndtargetpipeline(1 downto 0))) <= tlptcsig;
                           tlpndattr(conv_integer(rdndtargetpipeline(1 downto 0))) <= tlpattrsig;
                           tlpndrequesterid(conv_integer(rdndtargetpipeline(1 downto 0))) <= requesteridsig;
                           tlpndcompleterid(conv_integer(rdndtargetpipeline(1 downto 0))) <= blk_bus_number & blk_device_number & 
                              blk_function_number;
                           tlpndtag(conv_integer(rdndtargetpipeline(1 downto 0))) <= tagsig;
                           rdndtlpaddrl(conv_integer(rdndtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(6 downto 2) & 
                              conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + conv_integer(not(firstdwbesig(1) or 
                                 firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0))) + 
                                   conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)))), 2);
                           if badreadreq = '1' then
                              cplndstatuscode(conv_integer(rdndtargetpipeline(1 downto 0))) <= "001";
                           elsif zerolenreadreq = '1' then
                              cplndstatuscode(conv_integer(rdndtargetpipeline(1 downto 0))) <= "000";
                           end if;
                           rdndtargetpipeline <= rdndtargetpipeline +1;
                           rdndreqpipelineincr <= '1';
                           badreadreq <= '0';
                           zerolenreadreq <= '0';
                           -- coverage off
                           if conv_integer(tlplengthsig) /= 0 then
                           --when len/=1024DW
                              if conv_integer(tlplengthsig) /= 1 then
                                 tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(tlplengthsig-2)*4 + (conv_integer(firstdwbesig(3) or 
                                       firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                          conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                             conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                                firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3)) 
                                                   + conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or lastdwbesig(1) 
                                                      or lastdwbesig(2) or lastdwbesig(3))), 12);
                              else
                           -- coverage on
                                 tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(firstdwbesig(3)) + conv_integer(firstdwbesig(2)) + 
                                       conv_integer(firstdwbesig(1)) + conv_integer(firstdwbesig(0)) + 
                                          conv_integer(not((firstdwbesig(3) xor firstdwbesig(1)) or (firstdwbesig(2) xor 
                                             firstdwbesig(0)))) + conv_integer((firstdwbesig(3) and firstdwbesig(0)) and 
                                                (firstdwbesig(2) nor firstdwbesig(1))) + conv_integer((firstdwbesig(3) and 
                                                   firstdwbesig(0)) and (firstdwbesig(2) nand firstdwbesig(1))) - 
                                                      conv_integer(firstdwbesig(3) and firstdwbesig(2) and firstdwbesig(1) and 
                                                         firstdwbesig(0)), 12);
                           -- coverage off
                              end if;
                           else
                           --when len=1024DW
                              if firstdwbesig(0) /= '1' or lastdwbesig(3) /= '1' then
                                 tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                    conv_std_logic_vector(conv_integer(1022)*4 + (conv_integer(firstdwbesig(3) or firstdwbesig(2) or
                                       firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                          conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                             conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                                firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3)) 
                                                   + conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or lastdwbesig(1) 
                                                      or lastdwbesig(2) or lastdwbesig(3))), 12);
                              else
                                 tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= (others => '0');
                              end if;
                           end if;
                           -- coverage on
                        else
                           s_axis_cr_tready_sig <= '0';
                           rdreqsmsig   <= throttle_nd;
                           rdndtlpaddrlow <= 
                              s_axis_cr_tdata(6 downto 2) & conv_std_logic_vector((conv_integer(not(firstdwbesig(0))) + 
                                 conv_integer(not(firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(2) or 
                                    firstdwbesig(1) or firstdwbesig(0))) + conv_integer(not(firstdwbesig(3) or firstdwbesig(2) or 
                                       firstdwbesig(1) or firstdwbesig(0)))), 2);
                        end if;
                     end if;
                  end if;

               -- Nam - extremely hard to hit case
               -- coverage off                      
               else
                  if s_axis_cr_tvalid = '1' and s_axis_cr_tlast = '1' then
                     rdreqsmsig       <= init;
                     s_axis_cr_tready_sig <= '0';
                  else
                     rdreqsmsig       <= blklinkdown;
                  end if;
               end if;
               -- coverage on
            
            when throttle =>
               if blk_lnk_up_latch = '1' then
                  if rdreqpipeline /= "100" then
                    --pipeline full for CplD (i.e., compl with data)
                     tlpaddrl(conv_integer(rdtargetpipeline(1 downto 0)))    <= tlpaddrlow;
                     tlpaddrl_out(conv_integer(rdtargetpipeline(1 downto 0)))    <= tlpaddrlow;
                     rdtlpaddrl(conv_integer(rdtargetpipeline(1 downto 0))) <= tlpaddrlow(6 downto 0);
                     if conv_integer(tlplengthsig) /= 0 then
                     --when len/=1024DW
                        if conv_integer(tlplengthsig) /= 1 then
                           tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(tlplengthsig-2)*4 + (conv_integer(firstdwbesig(3) or 
                                 firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                    conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                       conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                          firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3)) + 
                                             conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or lastdwbesig(1) or 
                                                lastdwbesig(2) or lastdwbesig(3))), 12);
                        else
                           tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(firstdwbesig(3)) + conv_integer(firstdwbesig(2)) + 
                                 conv_integer(firstdwbesig(1)) + conv_integer(firstdwbesig(0)) + conv_integer(not((firstdwbesig(3) 
                                    xor firstdwbesig(1)) or (firstdwbesig(2) xor firstdwbesig(0)))) + 
                                       conv_integer((firstdwbesig(3) and firstdwbesig(0)) and (firstdwbesig(2) nor 
                                          firstdwbesig(1))) + conv_integer((firstdwbesig(3) and firstdwbesig(0)) and 
                                             (firstdwbesig(2) nand firstdwbesig(1))) - conv_integer(firstdwbesig(3) and 
                                                firstdwbesig(2) and firstdwbesig(1) and firstdwbesig(0)), 12);
                        end if;
                     else
                     --when len=1024DW
                        if firstdwbesig(0) /= '1' or lastdwbesig(3) /= '1' then
                           tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(1022)*4 + (conv_integer(firstdwbesig(3) or firstdwbesig(2) or 
                                 firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + conv_integer(firstdwbesig(2) 
                                    or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(2) or lastdwbesig(3)) + 
                                       conv_integer(firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(1) or 
                                          lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(0)) + 
                                             conv_integer(lastdwbesig(0) or lastdwbesig(1) or lastdwbesig(2) or 
                                                lastdwbesig(3))), 12);
                        else
                           tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= (others => '0');
                        end if;
                     end if;
                     tlprequesterid(conv_integer(rdtargetpipeline(1 downto 0))) <= requesteridsig;
                     tlptag(conv_integer(rdtargetpipeline(1 downto 0))) <= tagsig;
                     tlptc(conv_integer(rdtargetpipeline(1 downto 0))) <= tlptcsig;
                     tlpcompleterid(conv_integer(rdtargetpipeline(1 downto 0))) <= blk_bus_number & blk_device_number & 
                        blk_function_number;
                     tlpattr(conv_integer(rdtargetpipeline(1 downto 0))) <= tlpattrsig;
                     tlplength(conv_integer(rdtargetpipeline(1 downto 0))) <= tlplengthsig;
                     tlplength_out(conv_integer(rdtargetpipeline(1 downto 0))) <= tlplengthsig;
                     rdreq <= '1';
                     --if blk_lnk_up = '0' then
                     --   s_axis_cr_tready_sig <= '0';
                     --   rdreqsmsig  <= init;
                     --else
                     rdreqsmsig  <= memrdreq;
                     s_axis_cr_tready_sig <= '1';
                     --end if;
                     rdreqpipelineincr <= '1';
                     rdtargetpipeline <= rdtargetpipeline + 1;
                     if (orrdreqpipeline /= rdtargetpipeline) and
                     (wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0) - "01"))(2 downto 0) = wrreqpend) then
                        wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0))) <= '1' & wrreqpend;
                     else
                        wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0))) <= '0' & wrreqpend;
                     end if;
                     s_axis_cr_tusersig(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tusersigtemp;
                  end if;
               else
                  rdreqsmsig       <= init;
                  s_axis_cr_tready_sig <= '0';
               end if;
            
            when throttle_nd =>
               -- Nam - extremely hard to hit case
               -- coverage off -item b 1 -allfalse
               if blk_lnk_up_latch = '1' then
                  if rdndreqpipeline /= "100" then
                    --pipeline full for Cpl (i.e., compl without data - no barhit or zero len)
                     --if blk_lnk_up = '0' then
                     --   s_axis_cr_tready_sig <= '0';
                     --   rdreqsmsig  <= init;
                     --else
                     rdreqsmsig  <= memrdreq;
                     s_axis_cr_tready_sig <= '1';
                     --end if;
                     if wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0) - "01"))(2 downto 0) = wrreqpend or 
                       badreadreq = '1' then
                        wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0))) <= '1' & wrreqpend;
                     else
                        wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0))) <= '0' & wrreqpend;
                     end if;
                     tlpndtc(conv_integer(rdndtargetpipeline(1 downto 0))) <= tlptcsig;
                     tlpndattr(conv_integer(rdndtargetpipeline(1 downto 0))) <= tlpattrsig;
                     tlpndrequesterid(conv_integer(rdndtargetpipeline(1 downto 0))) <= requesteridsig;
                     tlpndcompleterid(conv_integer(rdndtargetpipeline(1 downto 0))) <= blk_bus_number & blk_device_number & 
                        blk_function_number;
                     tlpndtag(conv_integer(rdndtargetpipeline(1 downto 0))) <= tagsig;
                     rdndtlpaddrl(conv_integer(rdndtargetpipeline(1 downto 0))) <= rdndtlpaddrlow;
                     if badreadreq = '1' then
                        cplndstatuscode(conv_integer(rdndtargetpipeline(1 downto 0))) <= "001";
                     elsif zerolenreadreq = '1' then
                        cplndstatuscode(conv_integer(rdndtargetpipeline(1 downto 0))) <= "000";
                     end if;
                     rdndtargetpipeline <= rdndtargetpipeline +1;
                     rdndreqpipelineincr <= '1';
                     badreadreq <= '0';
                     zerolenreadreq <= '0';
                     -- NAM / JRH Tool bug doesn't exclude the second condition. removed cov off item b 2. Moved cov off.
                     if conv_integer(tlplengthsig) /= 0 then
                     --when len/=1024DW
                        -- coverage off -item b 1
                        if conv_integer(tlplengthsig) /= 1 then
                           -- Not hit for EP, include for RC
                           tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(tlplengthsig-2)*4 + (conv_integer(firstdwbesig(3) or 
                                 firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                    conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                       conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                          firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3)) + 
                                             conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or lastdwbesig(1) or 
                                                lastdwbesig(2) or lastdwbesig(3))), 12);
                        else
                           tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(firstdwbesig(3)) + conv_integer(firstdwbesig(2)) + 
                                 conv_integer(firstdwbesig(1)) + conv_integer(firstdwbesig(0)) + conv_integer(not((firstdwbesig(3) 
                                    xor firstdwbesig(1)) or (firstdwbesig(2) xor firstdwbesig(0)))) + conv_integer((firstdwbesig(3) 
                                       and firstdwbesig(0)) and (firstdwbesig(2) nor firstdwbesig(1))) + 
                                          conv_integer((firstdwbesig(3) and firstdwbesig(0)) and (firstdwbesig(2) nand 
                                             firstdwbesig(1))) - conv_integer(firstdwbesig(3) and firstdwbesig(2) and 
                                                firstdwbesig(1) and firstdwbesig(0)), 12);
                        end if;
                     -- NAM / JRH Tool bug doesn't exclude the second condition. Moved cov off.
                     -- coverage off
                     else
                     --when len=1024DW
                           -- Not hit for EP, include for RC
                        if firstdwbesig(0) /= '1' or lastdwbesig(3) /= '1' then
                           tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(1022)*4 + (conv_integer(firstdwbesig(3) or firstdwbesig(2) or 
                                 firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + conv_integer(firstdwbesig(2) 
                                    or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(2) or lastdwbesig(3)) + 
                                       conv_integer(firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(1) or 
                                          lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(0)) + 
                                             conv_integer(lastdwbesig(0) or lastdwbesig(1) or lastdwbesig(2) or 
                                                lastdwbesig(3))), 12);
                        else
                           tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= (others => '0');
                        end if;
                        -- coverage on
                     end if;
                  end if;
               -- Nam - extremely hard to hit case
               -- coverage off
               else
                  rdreqsmsig       <= init;
                  s_axis_cr_tready_sig <= '0';
               end if;
               -- coverage on
               
            -- coverage off
            when others => 
               rdreqsmsig <= init;
            -- coverage on
         end case;
         if blk_lnk_up_latch = '0' and cpltargetpipeline /= ctargetpipeline then
            rdtargetpipeline <= addrstreampipeline;
         end if;
      end if;
   end if;
end process;

cplnd_master_egress: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         cplndtlpsmsig <= memcplcrtdatabeat1;
         cplndtargetpipeline <= "000";
         rdndreqpipelinedecr <= '0';
         m_axis_cc_tvalid_nd <= '0';
         m_axis_cc_tdata_nd <= (others => '0');
         m_axis_cc_tstrb_nd <= (others => '0');
         m_axis_cc_tlast_nd <= '0';
         dis_valid_nd <= '0';
         orcplndpipeline <= (others => '0');
         cplndpendcpl <= (others => '0');
      else
         if orcplndpipeline /= rdndtargetpipeline then
            cplndpendcpl(conv_integer(orcplndpipeline(1 downto 0))) <= '0';
            if master_wr_idle = '1' or wrpendflush(conv_integer(orcplndpipeline(1 downto 0)))(2 downto 0) = wrreqcomp
                       or wrpendflush(conv_integer(orcplndpipeline(1 downto 0)))(3) = '1' then
               cplndpendcpl(conv_integer(orcplndpipeline(1 downto 0))) <= '1';
               orcplndpipeline <= orcplndpipeline + 1;
            end if;
         end if;
        
         -- cplndpendcpl needs to be reset on link down event
         if blk_lnk_up_latch = '0' then
            cplndpendcpl <= (others => '0');
         end if;
         case cplndtlpsmsig is
            when memcplcrtdatabeat1 =>
               rdndreqpipelinedecr <= '0';
               m_axis_cc_tvalid_nd <= '0';
               m_axis_cc_tlast_nd <= '0';
               m_axis_cc_tstrb_nd <= x"00";
               if cplndtargetpipeline /= rdndtargetpipeline and cpltlpsmsig = memcplpipeline then
                  if blk_lnk_up_latch = '1' then
                     if cplndpendcpl(conv_integer(cplndtargetpipeline(1 downto 0))) = '1' then
                        if cplndstatuscode(conv_integer(cplndtargetpipeline(1 downto 0))) = "000" then
                           m_axis_cc_tdata_nd <= tlpndcompleterid(conv_integer(cplndtargetpipeline(1 downto 0))) & 
                              cplndstatuscode(conv_integer(cplndtargetpipeline(1 downto 0))) & '0' & x"001" & '0' & "10" & "01010"
                                & '0' & tlpndtc(conv_integer(cplndtargetpipeline(1 downto 0))) & "0000" & '0' & '0' & 
                                  tlpndattr(conv_integer(cplndtargetpipeline(1 downto 0))) & "00" & "0000000001";
                        -- coverage off
                        else
                           m_axis_cc_tdata_nd <= tlpndcompleterid(conv_integer(cplndtargetpipeline(1 downto 0))) & 
                              cplndstatuscode(conv_integer(cplndtargetpipeline(1 downto 0))) & '0' & 
                                 tlpndbytecount(conv_integer(cplndtargetpipeline(1 downto 0))) & '0' & "00" & "01010" & '0' 
                                    & tlpndtc(conv_integer(cplndtargetpipeline(1 downto 0))) & "0000" & '0' & '0' & 
                                       tlpndattr(conv_integer(cplndtargetpipeline(1 downto 0))) & "00" & "0000000000";
                        -- coverage on
                        end if;
                        m_axis_cc_tstrb_nd <= (others => '1');
                        m_axis_cc_tvalid_nd <= '1';
                        if m_axis_cc_tready = '1' and m_axis_cc_tvalid_nd = '1' then
                             cplndtlpsmsig <= transfer_complete;
                             m_axis_cc_tlast_nd <= '1';
                             m_axis_cc_tdata_nd <= x"00000000" & tlpndrequesterid(conv_integer(cplndtargetpipeline(1 downto 0))) & 
                                tlpndtag(conv_integer(cplndtargetpipeline(1 downto 0))) & '0' & 
                                   rdndtlpaddrl(conv_integer(cplndtargetpipeline(1 downto 0)));
                             if cplndstatuscode(conv_integer(cplndtargetpipeline(1 downto 0))) = "000" then
                                m_axis_cc_tstrb_nd <= x"FF";
                             -- coverage off
                             else
                                m_axis_cc_tstrb_nd <= x"0F";
                             -- coverage on
                             end if;
                        --else
                        --   cplndtlpsmsig <= memcplcrtdatabeat1;
                        end if;
                     end if;

                  -- Nam - extremely hard to hit case
                  -- coverage off                         
                  else
                     cplndtlpsmsig       <= memcplcrtdatabeat1;
                     rdndreqpipelinedecr <= '1';
                     cplndtargetpipeline <= cplndtargetpipeline + 1;
                  end if;
                  --coverage on
               end if;
            
            when transfer_complete =>
               if m_axis_cc_tready = '1' then
                  m_axis_cc_tvalid_nd <= '0';
                  m_axis_cc_tlast_nd <= '0';
                  m_axis_cc_tstrb_nd <= x"00";
                  cplndtlpsmsig <= memcplcrtdatabeat1;
                  rdndreqpipelinedecr <= '1';
                  cplndtargetpipeline <= cplndtargetpipeline + 1;
               end if;
            
         -- coverage off
         when others =>
            cplndtlpsmsig <= memcplcrtdatabeat1;
         -- coverage on
      end case;
      end if;
   end if;
end process;

cpl_master_egress: process (aclk)
variable tlplengthcntr_var : std_logic_vector(9 downto 0);
begin
   if rising_edge(aclk) then
      if reset = '0' then
         cpltlpsmsig <= memcplpipeline;
         cpltargetpipeline <= (others => '0');
         rdreqpipelinedecr <= '0';
         cplpacket1 <= '0';
         m_axis_cc_tdatatemp64 <= (others=>'0');
         firstdwen   <= '0';
         lnkdowndataflush <= '0';
         m_axis_cc_tvalid_d <= '0';
         m_axis_cc_tstrb_d <= (others => '0');
         m_axis_cc_tlast_d <= '0';
         rd_en_sig <= '0';
         cplcounter <= (others => '0');
         cpldsplitcounttemp <= (others => '0');
         rdtlpaddrltemp <= (others => '0');
         ctlpbytecounttemp <= (others => '0');
         ctlplengthtemp <= (others => '0');
         tlplengthcntr <= (others => '0');
         tlplengthcntr_var := (others => '0');
         dis_valid_d <= '0';
         m_axis_cc_tdata_h <= (others => '0');
         data_phase <= '0';
         dis_rden <= '0';
         corruptdataflush <= '0';
         wait_till_not_empty <= '0';
         totallength <= (others => '0');
         totalbytecount <= (others => '0');
         linkdownflushdepth <= (others => '0');
         rrespdelayed <= '0';
      else
         case cpltlpsmsig is
            when memcplpipeline =>
               rdreqpipelinedecr <= '0';
               m_axis_cc_tlast_d <= '0';
               rd_en_sig <= '0';
               m_axis_cc_tstrb_d <= x"00";
               m_axis_cc_tvalid_d <= '0';
               if blk_lnk_up_latch = '1' then
                  if cplndtargetpipeline = rdndtargetpipeline then
                     if cpltargetpipeline /= ctargetpipeline then
                        cplcounter <= "00000";
                        cpldsplitcounttemp <= cpldsplitcount(conv_integer(cpltargetpipeline(1 downto 0)));
                        ctlpbytecounttemp <= ctlpbytecount0(conv_integer(cpltargetpipeline(1 downto 0)));
                        ctlplengthtemp <= ctlplength0(conv_integer(cpltargetpipeline(1 downto 0)));
                        totallength <= tlplength(conv_integer(cpltargetpipeline(1 downto 0)));
                        tlplengthcntr_var := 
                          conv_std_logic_vector((conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                            conv_integer(rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)))(2)))/2 + 
                              (conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                                conv_integer(rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)))(2))) mod 2, 10);
                        if tlplengthcntr_var = "0000000000" then
                           linkdownflushdepth <= "1000000000";
                        else
                           linkdownflushdepth <= tlplengthcntr_var;
                        end if;
                        totalbytecount <= tlpbytecount(conv_integer(cpltargetpipeline(1 downto 0)));
                        cplpacket1 <= '1';
                        rdtlpaddrltemp <= rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)));
                        cpltlpsmsig <= memcplcrtdatabeat1;
                        rrespdelayed <= '0';
                     else
                        cpltlpsmsig <= memcplpipeline;
                     end if;
                  end if;
               -- Nam - extremely hard to hit case - we covered this in the weekend run with 10 hits
               -- coverage off                      
               elsif cpltargetpipeline /= ctargetpipeline and empty = '0' then
                  cpltlpsmsig <= blklinkdown_corruptdata;
                  lnkdowndataflush <= '1';
                  tlplengthcntr <= 
                     conv_std_logic_vector((conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                        conv_integer(rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)))(2)))/2 + 
                           (conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                              conv_integer(rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)))(2))) mod 2, 10);
                  rd_en_sig <= '1';
               end if;
               -- coverage on
            when memcplcrtdatabeat1 =>
               m_axis_cc_tlast_d <= '0';
               rd_en_sig <= '0';
               rrespdelayed <= rresp(conv_integer(cpltargetpipeline(1 downto 0)))(2);
                  if (((cplpendcpl(conv_integer(cpltargetpipeline(1 downto 0))) = '1' and rrespdelayed = '1') or 
                     slv_write_idle = '1') and rresp(conv_integer(cpltargetpipeline(1 downto 0)))(2) = '1')
                     or blk_lnk_up_latch = '0' then
                  --ordering & rresp check
                     if rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1 downto 0) = "00" then
                        if blk_lnk_up_latch = '1' then
                           m_axis_cc_tdata_h <= tlpcompleterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                              (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) xor 
                                 rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0))
                                 & '0' & (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) and 
                                    rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & '0' & ctlpbytecounttemp & '0' & "10" &
                                       "01010" & '0' & tlptc(conv_integer(cpltargetpipeline(1 downto 0))) & "0000" & '0' & '0' & 
                                          tlpattr(conv_integer(cpltargetpipeline(1 downto 0))) & "00" & ctlplengthtemp;
                           tlplengthcntr <= conv_std_logic_vector((conv_integer(ctlplengthtemp))/2, 10);
                           m_axis_cc_tstrb_d <= (others => '1');
                           m_axis_cc_tvalid_d <= not(empty);
                           if (m_axis_cc_tready = '1' and m_axis_cc_tvalid_d = '1') then
                              if cplpacket1 = '0' then
                                 m_axis_cc_tdata_h <= little_to_big_endian32(dout(31 downto 0)) & 
                                    tlprequesterid(conv_integer(cpltargetpipeline(1 downto 0)))
                                       & tlptag(conv_integer(cpltargetpipeline(1 downto 0))) & x"00";
                              else
                                 if rdtlpaddrltemp(2) /= '1' then
                                    m_axis_cc_tdata_h <= little_to_big_endian32(dout(31 downto 0)) & 
                                       tlprequesterid(conv_integer(cpltargetpipeline(1 downto 0)))
                                          & tlptag(conv_integer(cpltargetpipeline(1 downto 0))) & '0' & rdtlpaddrltemp;
                                 else
                                    m_axis_cc_tdata_h <= little_to_big_endian32(dout(63 downto 32)) & 
                                       tlprequesterid(conv_integer(cpltargetpipeline(1 downto 0)))
                                          & tlptag(conv_integer(cpltargetpipeline(1 downto 0))) & '0' & rdtlpaddrltemp;
                                 end if;
                              end if;
                              m_axis_cc_tdatatemp64 <= dout(63 downto 32);
                              rd_en_sig <= '1';
                              if ctlplengthtemp = "0000000001" then
                                 m_axis_cc_tlast_d <= '1';
                                 if cplcounter = cpldsplitcounttemp then
                                 cpltlpsmsig <= memcpltxonedw;
                                 else
                                 cpltlpsmsig <= memcpltxdata;
                                 end if;
                              else
                                 cpltlpsmsig <= memcpltxdata;
                              end if;
                              linkdownflushdepth <= linkdownflushdepth - conv_std_logic_vector((conv_integer(ctlplengthtemp))/2 + 
                                conv_integer(ctlplengthtemp(0)), 10);
                           --else
                           --   cpltlpsmsig <= memcplcrtdatabeat1;
                           end if;
                        else
                           if empty = '0' then
                              cpltlpsmsig       <= blklinkdown_corruptdata;
                              m_axis_cc_tvalid_d <= '0';
                              tlplengthcntr <= linkdownflushdepth;
                              rd_en_sig            <= '1';
                              lnkdowndataflush <= '1';
                           else
                              cpltlpsmsig       <= memcplpipeline;
                           end if;
                        end if;
                     else
                        if blk_lnk_up_latch = '1' then
                           m_axis_cc_tdata_h <= tlpcompleterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                              (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) xor 
                                 rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0))
                                    & '0' & (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) and 
                                       rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & '0' & totalbytecount & '0' & 
                                          "00" & "01010" & '0' & tlptc(conv_integer(cpltargetpipeline(1 downto 0))) & "0000" & 
                                             '0' & '0' & tlpattr(conv_integer(cpltargetpipeline(1 downto 0))) & "00" & totallength;
                           m_axis_cc_tstrb_d <= (others => '1');
                           m_axis_cc_tvalid_d <= '1';
                           if m_axis_cc_tready = '1' and m_axis_cc_tvalid_d = '1' then
                                m_axis_cc_tdata_h <= x"00000000" & tlprequesterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                                   tlptag(conv_integer(cpltargetpipeline(1 downto 0))) & '0' & rdtlpaddrltemp;
                                cpltlpsmsig <= blklinkdown_corruptdata;
                                corruptdataflush <= '1';
                                tlplengthcntr <= 
                                   conv_std_logic_vector((conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                                      conv_integer(rdtlpaddrltemp(2)))/2 + 
                                         (conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                                            conv_integer(rdtlpaddrltemp(2))) mod 2, 10);
                                rd_en_sig <= '1';
                                m_axis_cc_tlast_d <= '1';
                                m_axis_cc_tstrb_d <= x"0F";
                           --else
                           --   cpltlpsmsig <= memcplcrtdatabeat1;
                           end if;
                           
                        -- Nam - extremely hard to hit case
                        -- coverage off                               
                        else
                           if empty = '0' then
                              cpltlpsmsig       <= blklinkdown_corruptdata;
                              m_axis_cc_tvalid_d <= '0';
                              tlplengthcntr <= 
                                 conv_std_logic_vector((conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                                    conv_integer(rdtlpaddrltemp(2)))/2 + 
                                       (conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                                          conv_integer(rdtlpaddrltemp(2))) mod 2, 10);
                              rd_en_sig            <= '1';
                              lnkdowndataflush <= '1';
                           else
                              cpltlpsmsig       <= memcplpipeline;
                           end if;
                        end if;
                        -- coverage on
                     end if;
                  end if;
            
            when blklinkdown_corruptdata =>
               if m_axis_cc_tready = '1' then
                  m_axis_cc_tvalid_d <= '0';
               end if;
               rdreqpipelinedecr <= '0';
               if empty = '0' then
               wait_till_not_empty <= '1';
               if tlplengthcntr /= "0000000001" then
                  -- CR 653816:
                  -- 1024DW data for read request requires 200 beats to flush out data from FIFO
                  -- One beat contains two DWs so tlplengthcntr has to be adjusted to "1FF"
                  if tlplengthcntr = "0000000000" then
                     tlplengthcntr <= "0111111111";
                  else
                     tlplengthcntr <= tlplengthcntr - 1;
                  end if;
                  rd_en_sig <= '1';
               else
                  if lnkdowndataflush = '1' then
                     if cpltargetpipeline + 1 /= ctargetpipeline then
                           tlplengthcntr <= 
                           conv_std_logic_vector((conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)+1))) + 
                              conv_integer(rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)+1))(2)))/2 + 
                                 (conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)+1))) + 
                                    conv_integer(rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)+1))(2))) mod 2, 10);
                        --rdreqpipelinedecr <= '1';
                        cpltargetpipeline <= cpltargetpipeline + 1;
                     else
                        -- Nam - enhance bridge doesn't throttle
                        -- coverage off -item bc 1 -allfalse -condrow 3
                        if m_axis_cc_tvalid_d = '0' or m_axis_cc_tready = '1' then
                           cpltlpsmsig <= memcplpipeline;
                           --rdreqpipelinedecr <= '1';
                           cpltargetpipeline <= cpltargetpipeline + 1;
                           wait_till_not_empty <= '0';
                        end if;
                        rd_en_sig <= '0';
                        lnkdowndataflush <= '0';
                     end if;
                  else
                     -- Nam - enhance bridge doesn't throttle
                     -- coverage off -item bc 1 -allfalse -condrow 3
                     if m_axis_cc_tvalid_d = '0' or m_axis_cc_tready = '1' then
                        cpltlpsmsig <= memcplpipeline;
                        rdreqpipelinedecr <= '1';
                        cpltargetpipeline <= cpltargetpipeline + 1;
                        wait_till_not_empty <= '0';
                     end if;
                     rd_en_sig <= '0';
                     corruptdataflush <= '0';
                  end if;
               end if;
               end if;
            
            when memcpltxonedw =>
               -- Nam - enhance bridge doesn't throttle
               -- coverage off -item b 1 -allfalse            
               if m_axis_cc_tready = '1' then
                  m_axis_cc_tvalid_d <= '0';
                  rd_en_sig <= '0';
                  m_axis_cc_tlast_d <= '0';
                  cpltlpsmsig <= memcplpipeline;
                  rdreqpipelinedecr <= '1';
                  cpltargetpipeline <= cpltargetpipeline + 1;
               end if;
            
            when memcpltxdata =>
               if empty = '0' or tlplengthcntr = "0000000000" then
                  -- Nam - enhance bridge doesn't throttle
                  -- coverage off -item b 1 -allfalse
                  if m_axis_cc_tready = '1' then
                     rd_en_sig <= '0';
                     m_axis_cc_tvalid_d <= not(empty);
                     data_phase <= '1';
                     m_axis_cc_tdatatemp64 <= dout(63 downto 32);
                     if tlplengthcntr = "0000000001" then
                        m_axis_cc_tlast_d <= '1';
                        if (conv_integer(ctlplengthtemp) + 1) mod 2 = 0 then
                           m_axis_cc_tstrb_d <= x"FF";
                        else
                           m_axis_cc_tstrb_d <= x"0F";
                           if rdtlpaddrltemp(2) = '0' or cplpacket1 = '0' then
                              dis_rden <= '1';
                           end if;
                        end if;
                     end if;
                     if tlplengthcntr = "0000000000" then
                        data_phase <= '0';
                        dis_rden <= '0';
                        m_axis_cc_tvalid_d <= '0';
                        m_axis_cc_tlast_d <= '0';
                        m_axis_cc_tstrb_d <= x"00";
                        if cplcounter /= cpldsplitcounttemp then
                           cpltlpsmsig <= memcplcrtdatabeat1;
                           cplcounter <= cplcounter + 1;
                           if cplcounter /= "00000" then
                              ctlpbytecounttemp <= ctlpbytecounttemp - 
                                 (ctlplength1(conv_integer(cpltargetpipeline(1 downto 0))) & "00");
                           else
                              ctlpbytecounttemp <= ctlpbytecounttemp - 
                                 ctlpbytecount1(conv_integer(cpltargetpipeline(1 downto 0)));
                           end if;
                           if cplcounter+1 /= cpldsplitcounttemp then
                              ctlplengthtemp <= ctlplength1(conv_integer(cpltargetpipeline(1 downto 0)));
                           else
                              ctlplengthtemp <= ctlplength2(conv_integer(cpltargetpipeline(1 downto 0)));
                           end if;
                           cplpacket1 <= '0';
                        else
                           cpltlpsmsig <= memcplpipeline;
                           rdreqpipelinedecr <= '1';
                           cpltargetpipeline <= cpltargetpipeline + 1;
                        end if;
                     else
                        tlplengthcntr <= tlplengthcntr - 1;
                     end if;
                  end if;
               end if;
         
            -- coverage off
            when others =>
               cpltlpsmsig <= memcplpipeline;
            -- coverage on
         end case;
         --if blk_lnk_up = '0' and blk_lnk_up_d = '1' then
         --   cpltargetpipeline <= cpltargetpipeline - rdreqpipeline;
         --end if;
      end if;
   end if;
end process;
end generate;

data_width_128: if C_S_AXIS_DATA_WIDTH = 128 generate
rd_master_ingress: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         s_axis_cr_tready_sig    <= '0';
         rdreqpipelineincr   <= '0';
         rdtargetpipeline    <= (others => '0');
         tlplengthsig        <= (others => '0');
         firstdwbesig        <= (others => '0');
         lastdwbesig         <= (others => '0');
         tlpaddrhigh         <= (others => '0');
         tlpaddrlow          <= (others => '0');
         tlpfmtsig           <= (others => '0');
         rdreqsmsig          <= init;
         rdreq               <= '0';
         badreadreq          <= '0';
         zerolenreadreq      <= '0';
         rdndreqpipelineincr <= '0';
         rdndtargetpipeline  <= "000";
         s_axis_cr_tusersig <= (others => (others => '0'));
         s_axis_cr_tusersigtemp <= (others => '0');
      else
         case rdreqsmsig is
            when init =>
               if lnkdowndataflush = '0' and blk_lnk_up_latch = '1' then
                  s_axis_cr_tready_sig <= '1';
                  rdreqsmsig       <= memrdreq;
               end if;
            
            when memrdreq =>
               rdreqpipelineincr <= '0';
               rdndreqpipelineincr <= '0';
               rdreq <= '0';
               if blk_lnk_up_latch = '1' then
                  if s_axis_cr_tvalid = '1' and s_axis_cr_tlast = '1' then
                     if s_axis_cr_tdata(30) = '0' then
                        if s_axis_cr_tdata(28 downto 24) = "00000" then
                           tlpattrsig <= s_axis_cr_tdata(13 downto 12);
                           tlplengthsig <= s_axis_cr_tdata(9 downto 0);
                           tlptcsig     <= s_axis_cr_tdata(22 downto 20);
                           lastdwbesig  <= s_axis_cr_tdata(39 downto 36);
                           firstdwbesig <= s_axis_cr_tdata(35 downto 32);
                           requesteridsig  <= s_axis_cr_tdata(63 downto 48);
                           tagsig          <= s_axis_cr_tdata(47 downto 40);
                           if s_axis_cr_tdata(29) = '0' then
                              if s_axis_cr_tvalid = '1' and s_axis_cr_tlast = '1' then
                                 if ((C_PCIEBAR_NUM = 1 and s_axis_cr_tuser(2) = '1') or (C_PCIEBAR_NUM > 1 and (s_axis_cr_tuser(2) = 
                                    '1' or s_axis_cr_tuser(3) = '1' or s_axis_cr_tuser(4) = '1' or s_axis_cr_tuser(6) = '1'))) 
                                    and s_axis_cr_tdata(35 downto 32) /= "0000" then
                                    if rdreqpipeline /= "100" then
                                       tlpaddrlow <= s_axis_cr_tdata(95 downto 66) & 
                                         conv_std_logic_vector((conv_integer(not(s_axis_cr_tdata(32))) + 
                                           conv_integer(not(s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                             conv_integer(not(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or 
                                               s_axis_cr_tdata(32))) + conv_integer(not(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) 
                                                 or s_axis_cr_tdata(33) or s_axis_cr_tdata(32)))), 2);
                                       tlpaddrl(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(95 downto 66) & 
                                         conv_std_logic_vector((conv_integer(not(s_axis_cr_tdata(32))) + 
                                           conv_integer(not(s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                             conv_integer(not(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                               conv_integer(not(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) or s_axis_cr_tdata(33) 
                                                 or s_axis_cr_tdata(32)))), 2);
                                       tlpaddrl_out(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(95 downto 66) & 
                                         conv_std_logic_vector((conv_integer(not(s_axis_cr_tdata(32))) + 
                                           conv_integer(not(s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                             conv_integer(not(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                               conv_integer(not(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) or s_axis_cr_tdata(33) 
                                                 or s_axis_cr_tdata(32)))), 2);
                                       rdtlpaddrl(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(70 downto 66) & 
                                         conv_std_logic_vector((conv_integer(not(s_axis_cr_tdata(32))) + 
                                           conv_integer(not(s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                             conv_integer(not(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                               conv_integer(not(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) or s_axis_cr_tdata(33) 
                                                 or s_axis_cr_tdata(32)))), 2);
                                       if conv_integer(s_axis_cr_tdata(9 downto 0)) /= 0 then
                                          if conv_integer(s_axis_cr_tdata(9 downto 0)) /= 1 then
                                             tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                                                conv_std_logic_vector(conv_integer(s_axis_cr_tdata(9 downto 0)-2)*4 + 
                                                  (conv_integer(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or
                                                    s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(39)) + 
                                                      conv_integer(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or 
                                                        s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(38) or 
                                                          s_axis_cr_tdata(39)) + conv_integer(s_axis_cr_tdata(33) or 
                                                            s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(37) or 
                                                              s_axis_cr_tdata(38) or s_axis_cr_tdata(39)) + 
                                                                conv_integer(s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(36)
                                                                  or s_axis_cr_tdata(37) or s_axis_cr_tdata(38) or 
                                                                    s_axis_cr_tdata(39))), 12);
                                          else
                                             tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                                                conv_std_logic_vector(conv_integer(s_axis_cr_tdata(35)) + 
                                                  conv_integer(s_axis_cr_tdata(34)) + conv_integer(s_axis_cr_tdata(33)) + 
                                                    conv_integer(s_axis_cr_tdata(32)) + conv_integer(not((s_axis_cr_tdata(35) xor 
                                                      s_axis_cr_tdata(33)) or (s_axis_cr_tdata(34) xor s_axis_cr_tdata(32)))) + 
                                                        conv_integer((s_axis_cr_tdata(35) and s_axis_cr_tdata(32)) and 
                                                          (s_axis_cr_tdata(34) nor s_axis_cr_tdata(33))) + 
                                                            conv_integer((s_axis_cr_tdata(35) and s_axis_cr_tdata(32)) and 
                                                              (s_axis_cr_tdata(34) nand s_axis_cr_tdata(33))) - 
                                                                conv_integer(s_axis_cr_tdata(35) and s_axis_cr_tdata(34) and 
                                                                  s_axis_cr_tdata(33) and s_axis_cr_tdata(32)), 12);
                                          end if;
                                       else
                                          if s_axis_cr_tdata(32) /= '1' or s_axis_cr_tdata(39) /= '1' then
                                             tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                                                conv_std_logic_vector(conv_integer(1022)*4 + (conv_integer(s_axis_cr_tdata(35) or 
                                                  s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or s_axis_cr_tdata(32)) + 
                                                    conv_integer(s_axis_cr_tdata(39)) + conv_integer(s_axis_cr_tdata(34) or 
                                                      s_axis_cr_tdata(33) or s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(38)
                                                        or s_axis_cr_tdata(39)) + conv_integer(s_axis_cr_tdata(33) or 
                                                          s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(37) or 
                                                            s_axis_cr_tdata(38) or s_axis_cr_tdata(39)) + 
                                                              conv_integer(s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(36) 
                                                                or s_axis_cr_tdata(37) or s_axis_cr_tdata(38) or 
                                                                  s_axis_cr_tdata(39))), 12);
                                          else
                                             tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= (others => '0');
                                          end if;
                                       end if;
                                       tlprequesterid(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(63 downto 48);
                                       tlptag(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(47 downto 40);
                                       tlptc(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(22 downto 20);
                                       tlpcompleterid(conv_integer(rdtargetpipeline(1 downto 0))) <= blk_bus_number & 
                                          blk_device_number & blk_function_number;
                                       tlpattr(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(13 downto 12);
                                       tlplength(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(9 downto 0);
                                       tlplength_out(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(9 downto 0);
                                       rdreq <= '1';
                                       rdreqsmsig  <= memrdreq;
                                       rdreqpipelineincr <= '1';
                                       rdtargetpipeline <= rdtargetpipeline + 1;
                                       if (orrdreqpipeline /= rdtargetpipeline) and
                                       (wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0) - "01"))(2 downto 0) = wrreqpend) then
                                          wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0))) <= '1' & wrreqpend;
                                       else
                                          wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0))) <= '0' & wrreqpend;
                                       end if;
                                       if C_PCIEBAR_AS = 0 then
                                          s_axis_cr_tusersig(conv_integer(rdtargetpipeline(1 downto 0)))(C_PCIEBAR_NUM-1 downto 0) 
                                             <= s_axis_cr_tuser(C_PCIEBAR_NUM+1 downto 2);
                                       else
                                          for i in 0 to C_PCIEBAR_NUM-1 loop
                                             s_axis_cr_tusersig(conv_integer(rdtargetpipeline(1 downto 0)))(i) <= 
                                                s_axis_cr_tuser(2*(i+1));
                                          end loop;
                                       end if;
                                    else
                                       rdreqsmsig   <= throttle;
                                       s_axis_cr_tready_sig <= '0';
                                       rdreq <= '0';
                                       tlpaddrlow <= s_axis_cr_tdata(95 downto 66) & 
                                          conv_std_logic_vector((conv_integer(not(s_axis_cr_tdata(32))) + 
                                            conv_integer(not(s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                              conv_integer(not(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or s_axis_cr_tdata(32)))
                                                + conv_integer(not(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) or s_axis_cr_tdata(33)
                                                  or s_axis_cr_tdata(32)))), 2);
                                       if C_PCIEBAR_AS = 0 then
                                          s_axis_cr_tusersigtemp(C_PCIEBAR_NUM-1 downto 0) <= 
                                             s_axis_cr_tuser(C_PCIEBAR_NUM+1 downto 2);
                                       else
                                          for i in 0 to C_PCIEBAR_NUM-1 loop
                                             s_axis_cr_tusersigtemp(i) <= s_axis_cr_tuser(2*(i+1));
                                          end loop;
                                       end if;
                                    end if;
                                 else
                                    if rdndreqpipeline /= "100" then
                                       if wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0) - "01"))(2 downto 0) = wrreqpend
                                         or badreadreq = '1' then
                                          wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0))) <= '1' & wrreqpend;
                                       else
                                          wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0))) <= '0' & wrreqpend;
                                       end if;
                                       tlpndtc(conv_integer(rdndtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(22 downto 20);
                                       tlpndattr(conv_integer(rdndtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(13 downto 12);
                                       tlpndrequesterid(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                          s_axis_cr_tdata(63 downto 48);
                                       tlpndcompleterid(conv_integer(rdndtargetpipeline(1 downto 0))) <= blk_bus_number & 
                                          blk_device_number & blk_function_number;
                                       tlpndtag(conv_integer(rdndtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(47 downto 40);
                                       rdndtlpaddrl(conv_integer(rdndtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(70 downto 66) 
                                         & conv_std_logic_vector((conv_integer(not(s_axis_cr_tdata(32))) + 
                                           conv_integer(not(s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                             conv_integer(not(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or 
                                               s_axis_cr_tdata(32))) + conv_integer(not(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) 
                                                 or s_axis_cr_tdata(33) or s_axis_cr_tdata(32)))), 2);
                                       if ((s_axis_cr_tuser(2) = '0' and C_PCIEBAR_NUM = 1) or (C_PCIEBAR_NUM > 1 and s_axis_cr_tuser(2) = '0' 
                                          and s_axis_cr_tuser(3) = '0' and s_axis_cr_tuser(4) = '0' and s_axis_cr_tuser(6) = '0')) then
                                          cplndstatuscode(conv_integer(rdndtargetpipeline(1 downto 0))) <= "001";
                                       elsif s_axis_cr_tdata(35 downto 32) = "0000" then
                                          cplndstatuscode(conv_integer(rdndtargetpipeline(1 downto 0))) <= "000";
                                       end if;
                                       rdndtargetpipeline <= rdndtargetpipeline +1;
                                       rdndreqpipelineincr <= '1';
                                       if conv_integer(s_axis_cr_tdata(9 downto 0)) /= 0 then
                                          if conv_integer(s_axis_cr_tdata(9 downto 0)) /= 1 then
                                             tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                                conv_std_logic_vector(conv_integer(s_axis_cr_tdata(9 downto 0)-2)*4 + 
                                                  (conv_integer(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) or s_axis_cr_tdata(33) 
                                                    or s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(39)) + 
                                                      conv_integer(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or 
                                                        s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(38) or 
                                                          s_axis_cr_tdata(39)) + conv_integer(s_axis_cr_tdata(33) or 
                                                            s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(37) or 
                                                              s_axis_cr_tdata(38) or s_axis_cr_tdata(39)) + 
                                                                conv_integer(s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(36)
                                                                  or s_axis_cr_tdata(37) or s_axis_cr_tdata(38) or 
                                                                    s_axis_cr_tdata(39))), 12);
                                          else
                                             tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                               conv_std_logic_vector(conv_integer(s_axis_cr_tdata(35)) + 
                                                 conv_integer(s_axis_cr_tdata(34)) + conv_integer(s_axis_cr_tdata(33)) + 
                                                   conv_integer(s_axis_cr_tdata(32)) + conv_integer(not((s_axis_cr_tdata(35) xor 
                                                     s_axis_cr_tdata(33)) or (s_axis_cr_tdata(34) xor s_axis_cr_tdata(32)))) + 
                                                       conv_integer((s_axis_cr_tdata(35) and s_axis_cr_tdata(32)) and 
                                                         (s_axis_cr_tdata(34) nor s_axis_cr_tdata(33))) + 
                                                           conv_integer((s_axis_cr_tdata(35) and s_axis_cr_tdata(32)) and 
                                                             (s_axis_cr_tdata(34) nand s_axis_cr_tdata(33))) - 
                                                               conv_integer(s_axis_cr_tdata(35) and s_axis_cr_tdata(34) and 
                                                                 s_axis_cr_tdata(33) and s_axis_cr_tdata(32)), 12);
                                          end if;
                                       else
                                          if s_axis_cr_tdata(32) /= '1' and s_axis_cr_tdata(39) /= '1' then
                                             tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                                conv_std_logic_vector(conv_integer(1022)*4 + (conv_integer(s_axis_cr_tdata(35) or 
                                                  s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or s_axis_cr_tdata(32)) + 
                                                    conv_integer(s_axis_cr_tdata(39)) + conv_integer(s_axis_cr_tdata(34) or 
                                                      s_axis_cr_tdata(33) or s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(38)
                                                        or s_axis_cr_tdata(39)) + conv_integer(s_axis_cr_tdata(33) or 
                                                          s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(37) or 
                                                            s_axis_cr_tdata(38) or s_axis_cr_tdata(39)) + 
                                                              conv_integer(s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(36) 
                                                                or s_axis_cr_tdata(37) or s_axis_cr_tdata(38) or 
                                                                  s_axis_cr_tdata(39))), 12);
                                          else
                                             tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= (others => '0');
                                          end if;
                                       end if;
                                    else
                                       s_axis_cr_tready_sig <= '0';
                                       rdreqsmsig   <= throttle_nd;
                                       if ((C_PCIEBAR_NUM = 1 and s_axis_cr_tuser(2) = '0') or (C_PCIEBAR_NUM > 1 and s_axis_cr_tuser(2) = '0' 
                                          and s_axis_cr_tuser(3) = '0' and s_axis_cr_tuser(4) = '0' and s_axis_cr_tuser(6) = '0')) then
                                          badreadreq <= '1';
                                       elsif s_axis_cr_tdata(35 downto 32) = "0000" then
                                          zerolenreadreq <= '1';
                                       end if;
                                       rdndtlpaddrlow <= s_axis_cr_tdata(70 downto 66) & 
                                         conv_std_logic_vector((conv_integer(not(s_axis_cr_tdata(32))) + 
                                           conv_integer(not(s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                             conv_integer(not(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                               conv_integer(not(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) or s_axis_cr_tdata(33) 
                                                 or s_axis_cr_tdata(32)))), 2);
                                    end if;
                                    rdreq <= '0';
                                 end if;
                              else
                                 rdreq <= '0';
                              end if;
                           else
                              if s_axis_cr_tvalid = '1' and s_axis_cr_tlast = '1' then
                                 if ((C_PCIEBAR_NUM = 1 and s_axis_cr_tuser(2) = '1' ) or (C_PCIEBAR_NUM > 1 and (s_axis_cr_tuser(2) = '1' or
                                    s_axis_cr_tuser(3) = '1' or s_axis_cr_tuser(4) = '1' or s_axis_cr_tuser(6) = '1'))) and 
                                    s_axis_cr_tdata(35 downto 32) /= "0000" then
                                    if rdreqpipeline /= "100" then
                                       tlpaddrlow <= s_axis_cr_tdata(127 downto 98) & 
                                         conv_std_logic_vector((conv_integer(not(s_axis_cr_tdata(32))) + 
                                           conv_integer(not(s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                             conv_integer(not(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                               conv_integer(not(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) or s_axis_cr_tdata(33) 
                                                 or s_axis_cr_tdata(32)))), 2);
                                       tlpaddrl(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(127 downto 98) & 
                                         conv_std_logic_vector((conv_integer(not(s_axis_cr_tdata(32))) + 
                                           conv_integer(not(s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                             conv_integer(not(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                               conv_integer(not(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) or s_axis_cr_tdata(33) 
                                                 or s_axis_cr_tdata(32)))), 2);
                                       tlpaddrl_out(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(127 downto 98) & 
                                         conv_std_logic_vector((conv_integer(not(s_axis_cr_tdata(32))) + 
                                           conv_integer(not(s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                             conv_integer(not(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                               conv_integer(not(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) or s_axis_cr_tdata(33) 
                                                 or s_axis_cr_tdata(32)))), 2);
                                       rdtlpaddrl(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(102 downto 98) & 
                                         conv_std_logic_vector((conv_integer(not(s_axis_cr_tdata(32))) + 
                                          conv_integer(not(s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                            conv_integer(not(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                              conv_integer(not(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) or s_axis_cr_tdata(33) 
                                                or s_axis_cr_tdata(32)))), 2);
                                       if conv_integer(s_axis_cr_tdata(9 downto 0)) /= 0 then
                                          if conv_integer(s_axis_cr_tdata(9 downto 0)) /= 1 then
                                             tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                                                conv_std_logic_vector(conv_integer(s_axis_cr_tdata(9 downto 0)-2)*4 + 
                                                  (conv_integer(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) or s_axis_cr_tdata(33) 
                                                    or s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(39)) + 
                                                      conv_integer(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or 
                                                        s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(38) or 
                                                          s_axis_cr_tdata(39)) + conv_integer(s_axis_cr_tdata(33) or 
                                                            s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(37) or 
                                                              s_axis_cr_tdata(38) or s_axis_cr_tdata(39)) + 
                                                                conv_integer(s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(36)
                                                                  or s_axis_cr_tdata(37) or s_axis_cr_tdata(38) or 
                                                                    s_axis_cr_tdata(39))), 12);
                                          else
                                             tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                                                conv_std_logic_vector(conv_integer(s_axis_cr_tdata(35)) + 
                                                  conv_integer(s_axis_cr_tdata(34)) + conv_integer(s_axis_cr_tdata(33)) + 
                                                    conv_integer(s_axis_cr_tdata(32)) + conv_integer(not((s_axis_cr_tdata(35) xor 
                                                      s_axis_cr_tdata(33)) or (s_axis_cr_tdata(34) xor s_axis_cr_tdata(32)))) + 
                                                        conv_integer((s_axis_cr_tdata(35) and s_axis_cr_tdata(32)) and 
                                                          (s_axis_cr_tdata(34) nor s_axis_cr_tdata(33))) + 
                                                            conv_integer((s_axis_cr_tdata(35) and s_axis_cr_tdata(32)) and 
                                                              (s_axis_cr_tdata(34) nand s_axis_cr_tdata(33))) - 
                                                                conv_integer(s_axis_cr_tdata(35) and s_axis_cr_tdata(34) and 
                                                                  s_axis_cr_tdata(33) and s_axis_cr_tdata(32)), 12);
                                          end if;
                                       else
                                          if s_axis_cr_tdata(32) /= '1' or s_axis_cr_tdata(39) /= '1' then
                                             tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                                                conv_std_logic_vector(conv_integer(1022)*4 + (conv_integer(s_axis_cr_tdata(35) or 
                                                  s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or s_axis_cr_tdata(32))
                                                    + conv_integer(s_axis_cr_tdata(39)) + conv_integer(s_axis_cr_tdata(34) or 
                                                      s_axis_cr_tdata(33) or s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(38)
                                                        or s_axis_cr_tdata(39)) + conv_integer(s_axis_cr_tdata(33) or 
                                                          s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(37) or 
                                                            s_axis_cr_tdata(38) or s_axis_cr_tdata(39)) + 
                                                              conv_integer(s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(36) 
                                                                or s_axis_cr_tdata(37) or s_axis_cr_tdata(38) or 
                                                                  s_axis_cr_tdata(39))), 12);
                                          else
                                             tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= (others => '0');
                                          end if;
                                       end if;
                                       tlprequesterid(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(63 downto 48);
                                       tlptag(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(47 downto 40);
                                       tlptc(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(22 downto 20);
                                       tlpcompleterid(conv_integer(rdtargetpipeline(1 downto 0))) <= blk_bus_number & 
                                          blk_device_number & blk_function_number;
                                       tlpattr(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(13 downto 12);
                                       tlplength(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(9 downto 0);
                                       tlplength_out(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(9 downto 0);
                                       rdreq <= '1';
                                       rdreqsmsig  <= memrdreq;
                                       rdreqpipelineincr <= '1';
                                       rdtargetpipeline <= rdtargetpipeline + 1;
                                       if (orrdreqpipeline /= rdtargetpipeline) and
                                       (wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0) - "01"))(2 downto 0) = wrreqpend) then
                                          wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0))) <= '1' & wrreqpend;
                                       else
                                          wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0))) <= '0' & wrreqpend;
                                       end if;
                                       for i in 0 to C_PCIEBAR_NUM-1 loop
                                          s_axis_cr_tusersig(conv_integer(rdtargetpipeline(1 downto 0)))(i) <= 
                                             s_axis_cr_tuser(2*(i+1));
                                       end loop;
                                    else
                                       rdreqsmsig   <= throttle;
                                       s_axis_cr_tready_sig <= '0';
                                       rdreq <= '0';
                                       tlpaddrlow <= s_axis_cr_tdata(127 downto 98) & 
                                         conv_std_logic_vector((conv_integer(not(s_axis_cr_tdata(32))) + 
                                           conv_integer(not(s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                             conv_integer(not(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                               conv_integer(not(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) or s_axis_cr_tdata(33) 
                                               or s_axis_cr_tdata(32)))), 2);
                                       for i in 0 to C_PCIEBAR_NUM-1 loop
                                          s_axis_cr_tusersigtemp(i) <= s_axis_cr_tuser(2*(i+1));
                                       end loop;
                                    end if;
                                 else
                                    if rdndreqpipeline /= "100" then
                                       rdreqsmsig  <= memrdreq;
                                       if wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0) - "01"))(2 downto 0) = wrreqpend
                                         or badreadreq = '1' then
                                          wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0))) <= '1' & wrreqpend;
                                       else
                                          wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0))) <= '0' & wrreqpend;
                                       end if;
                                       tlpndtc(conv_integer(rdndtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(22 downto 20);
                                       tlpndattr(conv_integer(rdndtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(13 downto 12);
                                       tlpndrequesterid(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                          s_axis_cr_tdata(63 downto 48);
                                       tlpndcompleterid(conv_integer(rdndtargetpipeline(1 downto 0))) <= blk_bus_number & 
                                          blk_device_number & blk_function_number;
                                       tlpndtag(conv_integer(rdndtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(47 downto 40);
                                       rdndtlpaddrl(conv_integer(rdndtargetpipeline(1 downto 0))) <= s_axis_cr_tdata(102 downto 98) 
                                         & conv_std_logic_vector((conv_integer(not(s_axis_cr_tdata(32))) + 
                                           conv_integer(not(s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                             conv_integer(not(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                               conv_integer(not(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) or s_axis_cr_tdata(33) 
                                                 or s_axis_cr_tdata(32)))), 2);
                                       if ((s_axis_cr_tuser(2) = '0' and C_PCIEBAR_NUM = 1) or (C_PCIEBAR_NUM > 1 and s_axis_cr_tuser(2) = '0'
                                          and s_axis_cr_tuser(3) = '0' and s_axis_cr_tuser(4) = '0' and s_axis_cr_tuser(6) = '0')) then
                                          cplndstatuscode(conv_integer(rdndtargetpipeline(1 downto 0))) <= "001";
                                       elsif s_axis_cr_tdata(35 downto 32) = "0000" then
                                          cplndstatuscode(conv_integer(rdndtargetpipeline(1 downto 0))) <= "000";
                                       end if;
                                       rdndtargetpipeline <= rdndtargetpipeline +1;
                                       rdndreqpipelineincr <= '1';
                                       if conv_integer(s_axis_cr_tdata(9 downto 0)) /= 0 then
                                          if conv_integer(s_axis_cr_tdata(9 downto 0)) /= 1 then
                                             tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                                conv_std_logic_vector(conv_integer(s_axis_cr_tdata(9 downto 0)-2)*4 + 
                                                  (conv_integer(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) or s_axis_cr_tdata(33) 
                                                    or s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(39)) + 
                                                      conv_integer(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or 
                                                        s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(38) or 
                                                          s_axis_cr_tdata(39)) + conv_integer(s_axis_cr_tdata(33) or 
                                                            s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(37) or 
                                                              s_axis_cr_tdata(38) or s_axis_cr_tdata(39)) + 
                                                                conv_integer(s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(36)
                                                                  or s_axis_cr_tdata(37) or s_axis_cr_tdata(38) or 
                                                                    s_axis_cr_tdata(39))), 12);
                                          else
                                             tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                                conv_std_logic_vector(conv_integer(s_axis_cr_tdata(35)) + 
                                                  conv_integer(s_axis_cr_tdata(34)) + conv_integer(s_axis_cr_tdata(33)) + 
                                                    conv_integer(s_axis_cr_tdata(32)) + conv_integer(not((s_axis_cr_tdata(35) 
                                                      xor s_axis_cr_tdata(33)) or (s_axis_cr_tdata(34) xor s_axis_cr_tdata(32)))) + 
                                                        conv_integer((s_axis_cr_tdata(35) and s_axis_cr_tdata(32)) and 
                                                          (s_axis_cr_tdata(34) nor s_axis_cr_tdata(33))) + 
                                                            conv_integer((s_axis_cr_tdata(35) and s_axis_cr_tdata(32)) and 
                                                              (s_axis_cr_tdata(34) nand s_axis_cr_tdata(33))) - 
                                                                conv_integer(s_axis_cr_tdata(35) and s_axis_cr_tdata(34) and 
                                                                  s_axis_cr_tdata(33) and s_axis_cr_tdata(32)), 12);
                                          end if;
                                       else
                                          if s_axis_cr_tdata(32) /= '1' and s_axis_cr_tdata(39) /= '1' then
                                             tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                                                conv_std_logic_vector(conv_integer(1022)*4 + (conv_integer(s_axis_cr_tdata(35) or 
                                                  s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or s_axis_cr_tdata(32))
                                                    + conv_integer(s_axis_cr_tdata(39)) + conv_integer(s_axis_cr_tdata(34) or 
                                                      s_axis_cr_tdata(33) or s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(38)
                                                        or s_axis_cr_tdata(39)) + conv_integer(s_axis_cr_tdata(33) or 
                                                          s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(37) or 
                                                            s_axis_cr_tdata(38) or s_axis_cr_tdata(39)) + 
                                                              conv_integer(s_axis_cr_tdata(32)) + conv_integer(s_axis_cr_tdata(36) 
                                                                or s_axis_cr_tdata(37) or s_axis_cr_tdata(38) or 
                                                                  s_axis_cr_tdata(39))), 12);
                                          else
                                             tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= (others => '0');
                                          end if;
                                       end if;
                                    else
                                       s_axis_cr_tready_sig <= '0';
                                       rdreqsmsig   <= throttle_nd;
                                       if ((C_PCIEBAR_NUM = 1 and s_axis_cr_tuser(2) = '0') or (C_PCIEBAR_NUM > 1 and s_axis_cr_tuser(2) = '0'
                                          and s_axis_cr_tuser(3) = '0' and s_axis_cr_tuser(4) = '0' and s_axis_cr_tuser(6) = '0')) then
                                          badreadreq <= '1';
                                       elsif s_axis_cr_tdata(35 downto 32) = "0000" then
                                          zerolenreadreq <= '1';
                                       end if;
                                       rdndtlpaddrlow <= s_axis_cr_tdata(102 downto 98) & 
                                         conv_std_logic_vector((conv_integer(not(s_axis_cr_tdata(32))) + 
                                           conv_integer(not(s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                             conv_integer(not(s_axis_cr_tdata(34) or s_axis_cr_tdata(33) or s_axis_cr_tdata(32))) + 
                                               conv_integer(not(s_axis_cr_tdata(35) or s_axis_cr_tdata(34) or s_axis_cr_tdata(33) 
                                                 or s_axis_cr_tdata(32)))), 2);
                                    end if;
                                    rdreq <= '0';
                                 end if;
                              else
                                 rdreq <= '0';
                              end if;
                           end if;
                        --else
                        --   rdreq <= '0';
                        end if;
                     --else
                     --   rdreq <= '0';
                     end if;
                  else
                     rdreq <= '0';
                  end if;
               elsif s_axis_cr_tvalid = '1' and s_axis_cr_tlast = '1' then
                  rdreqsmsig       <= init;
                  s_axis_cr_tready_sig <= '0';
                  rdreq <= '0';
               end if;

            when throttle =>
               if blk_lnk_up_latch = '1' then
                  if rdreqpipeline /= "101" then
                    --pipeline full for CplD (i.e., compl with data)
                     tlpaddrl(conv_integer(rdtargetpipeline(1 downto 0)))    <= tlpaddrlow;
                     tlpaddrl_out(conv_integer(rdtargetpipeline(1 downto 0)))    <= tlpaddrlow;
                     rdtlpaddrl(conv_integer(rdtargetpipeline(1 downto 0))) <= tlpaddrlow(6 downto 0);
                     if conv_integer(tlplengthsig) /= 0 then
                     --when len/=1024DW
                        if conv_integer(tlplengthsig) /= 1 then
                           tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(tlplengthsig-2)*4 + (conv_integer(firstdwbesig(3) or 
                                firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                  conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                    conv_integer(lastdwbesig(2) or lastdwbesig(3)) + 
                                      conv_integer(firstdwbesig(1) or firstdwbesig(0)) + 
                                        conv_integer(lastdwbesig(1) or lastdwbesig(2) 
                                          or lastdwbesig(3)) + conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or 
                                        lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3))), 12);
                        else
                           tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(firstdwbesig(3)) + conv_integer(firstdwbesig(2)) + 
                                conv_integer(firstdwbesig(1)) + conv_integer(firstdwbesig(0)) + 
                                  conv_integer(not((firstdwbesig(3) xor firstdwbesig(1)) or (firstdwbesig(2) xor 
                                    firstdwbesig(0)))) + conv_integer((firstdwbesig(3) and firstdwbesig(0)) and 
                                      (firstdwbesig(2) nor firstdwbesig(1))) + conv_integer((firstdwbesig(3) and firstdwbesig(0)) 
                                        and (firstdwbesig(2) nand firstdwbesig(1))) - conv_integer(firstdwbesig(3) and 
                                        firstdwbesig(2) and firstdwbesig(1) and firstdwbesig(0)), 12);
                        end if;
                     else
                     --when len=1024DW
                        if firstdwbesig(0) /= '1' or lastdwbesig(3) /= '1' then
                           tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(1022)*4 + (conv_integer(firstdwbesig(3) or firstdwbesig(2) or 
                                firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + conv_integer(firstdwbesig(2) 
                                  or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(2) or lastdwbesig(3)) + 
                                    conv_integer(firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(1) or 
                                      lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(0)) + 
                                        conv_integer(lastdwbesig(0) or lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3))), 12);
                        else
                           tlpbytecount(conv_integer(rdtargetpipeline(1 downto 0))) <= (others => '0');
                        end if;
                     end if;
                     tlprequesterid(conv_integer(rdtargetpipeline(1 downto 0))) <= requesteridsig;
                     tlptag(conv_integer(rdtargetpipeline(1 downto 0))) <= tagsig;
                     tlptc(conv_integer(rdtargetpipeline(1 downto 0))) <= tlptcsig;
                     tlpcompleterid(conv_integer(rdtargetpipeline(1 downto 0))) <= blk_bus_number & blk_device_number & 
                        blk_function_number;
                     tlpattr(conv_integer(rdtargetpipeline(1 downto 0))) <= tlpattrsig;
                     tlplength(conv_integer(rdtargetpipeline(1 downto 0))) <= tlplengthsig;
                     tlplength_out(conv_integer(rdtargetpipeline(1 downto 0))) <= tlplengthsig;
                     --if blk_lnk_up = '0' then
                     --   s_axis_cr_tready_sig <= '0';
                     --else
                     s_axis_cr_tready_sig <= '1';
                     --end if;
                     rdreq <= '1';
                     rdreqsmsig  <= memrdreq;
                     rdreqpipelineincr <= '1';
                     rdtargetpipeline <= rdtargetpipeline + 1;
                     if (orrdreqpipeline /= rdtargetpipeline) and
                     (wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0) - "01"))(2 downto 0) = wrreqpend) then
                        wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0))) <= '1' & wrreqpend;
                     else
                        wrpendingsig(conv_integer(rdtargetpipeline(1 downto 0))) <= '0' & wrreqpend;
                     end if;
                     s_axis_cr_tusersig(conv_integer(rdtargetpipeline(1 downto 0))) <= s_axis_cr_tusersigtemp;
                  end if;
               else
                  rdreqsmsig       <= init;
                  s_axis_cr_tready_sig <= '0';
               end if;
            
            when throttle_nd =>
               if blk_lnk_up_latch = '1' then
                  if rdndreqpipeline /= "101" then
                    --pipeline full for Cpl (i.e., compl without data - no barhit or zero len)
                     rdreqsmsig  <= memrdreq;
                     if wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0) - "01"))(2 downto 0) = wrreqpend
                       or badreadreq = '1' then
                        wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0))) <= '1' & wrreqpend;
                     else
                        wrpendflush(conv_integer(rdndtargetpipeline(1 downto 0))) <= '0' & wrreqpend;
                     end if;
                     tlpndtc(conv_integer(rdndtargetpipeline(1 downto 0))) <= tlptcsig;
                     tlpndattr(conv_integer(rdndtargetpipeline(1 downto 0))) <= tlpattrsig;
                     tlpndrequesterid(conv_integer(rdndtargetpipeline(1 downto 0))) <= requesteridsig;
                     tlpndcompleterid(conv_integer(rdndtargetpipeline(1 downto 0))) <= blk_bus_number & blk_device_number & 
                        blk_function_number;
                     tlpndtag(conv_integer(rdndtargetpipeline(1 downto 0))) <= tagsig;
                     rdndtlpaddrl(conv_integer(rdndtargetpipeline(1 downto 0))) <= rdndtlpaddrlow;
                     if badreadreq = '1' then
                        cplndstatuscode(conv_integer(rdndtargetpipeline(1 downto 0))) <= "001";
                     elsif zerolenreadreq = '1' then
                        cplndstatuscode(conv_integer(rdndtargetpipeline(1 downto 0))) <= "000";
                     end if;
                     rdndtargetpipeline <= rdndtargetpipeline +1;
                     rdndreqpipelineincr <= '1';
                     badreadreq <= '0';
                     zerolenreadreq <= '0';
                     --if blk_lnk_up = '0' then
                     --   s_axis_cr_tready_sig <= '0';
                     --else
                     s_axis_cr_tready_sig <= '1';
                     --end if;
                     if conv_integer(tlplengthsig) /= 0 then
                     --when len/=1024DW
                        if conv_integer(tlplengthsig) /= 1 then
                           tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(tlplengthsig-2)*4 + (conv_integer(firstdwbesig(3) or 
                                firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                  conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                    conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                      firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) 
                                        or lastdwbesig(3)) + conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or 
                                          lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3))), 12);
                        else
                           tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(firstdwbesig(3)) + conv_integer(firstdwbesig(2)) + 
                                conv_integer(firstdwbesig(1)) + conv_integer(firstdwbesig(0)) + 
                                  conv_integer(not((firstdwbesig(3) xor firstdwbesig(1)) or (firstdwbesig(2) xor 
                                    firstdwbesig(0)))) + conv_integer((firstdwbesig(3) and firstdwbesig(0)) and 
                                      (firstdwbesig(2) nor firstdwbesig(1))) + conv_integer((firstdwbesig(3) and 
                                        firstdwbesig(0)) and (firstdwbesig(2) nand firstdwbesig(1))) - 
                                          conv_integer(firstdwbesig(3) and firstdwbesig(2) and firstdwbesig(1) and 
                                            firstdwbesig(0)), 12);
                        end if;
                     else
                     --when len=1024DW
                        if firstdwbesig(0) /= '1' or lastdwbesig(3) /= '1' then
                           tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= 
                              conv_std_logic_vector(conv_integer(1022)*4 + (conv_integer(firstdwbesig(3) or firstdwbesig(2) or 
                                firstdwbesig(1) or firstdwbesig(0)) + conv_integer(lastdwbesig(3)) + 
                                  conv_integer(firstdwbesig(2) or firstdwbesig(1) or firstdwbesig(0)) + 
                                    conv_integer(lastdwbesig(2) or lastdwbesig(3)) + conv_integer(firstdwbesig(1) or 
                                      firstdwbesig(0)) + conv_integer(lastdwbesig(1) or lastdwbesig(2) 
                                        or lastdwbesig(3)) + conv_integer(firstdwbesig(0)) + conv_integer(lastdwbesig(0) or 
                                          lastdwbesig(1) or lastdwbesig(2) or lastdwbesig(3))), 12);
                        else
                           tlpndbytecount(conv_integer(rdndtargetpipeline(1 downto 0))) <= (others => '0');
                        end if;
                     end if;
                  end if;
               else
                  rdreqsmsig       <= init;
                  s_axis_cr_tready_sig <= '0';
               end if;

            -- coverage off
            when others => 
               rdreqsmsig <= init;
            -- coverage on
         end case;
         if blk_lnk_up_latch = '0' and cpltargetpipeline /= ctargetpipeline then
            rdtargetpipeline <= addrstreampipeline;
         end if;
      end if;
   end if;
end process;

cplnd_master_egress: process (aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         cplndtlpsmsig <= memcplcrtdatabeat1;
         cplndtargetpipeline <= "000";
         rdndreqpipelinedecr <= '0';
         m_axis_cc_tvalid_nd <= '0';
         m_axis_cc_tdata_nd <= (others => '0');
         m_axis_cc_tstrb_nd <= (others => '0');
         m_axis_cc_tlast_nd <= '0';
         dis_valid_nd <= '0';
         orcplndpipeline <= (others => '0');
         cplndpendcpl <= (others => '0');
      else
         if orcplndpipeline /= rdndtargetpipeline then
            cplndpendcpl(conv_integer(orcplndpipeline(1 downto 0))) <= '0';
            if master_wr_idle = '1' or wrpendflush(conv_integer(orcplndpipeline(1 downto 0)))(2 downto 0) = wrreqcomp
                       or wrpendflush(conv_integer(orcplndpipeline(1 downto 0)))(3) = '1' then
               cplndpendcpl(conv_integer(orcplndpipeline(1 downto 0))) <= '1';
               orcplndpipeline <= orcplndpipeline + 1;
            end if;
         end if;
        
         -- cplndpendcpl needs to be reset on link down event
         if blk_lnk_up_latch = '0' then
            cplndpendcpl <= (others => '0');
         end if;
         case cplndtlpsmsig is
            when memcplcrtdatabeat1 =>
               rdndreqpipelinedecr <= '0';
               m_axis_cc_tvalid_nd <= '0';
               m_axis_cc_tlast_nd <= '0';
               m_axis_cc_tstrb_nd <= x"0000";
               if cplndtargetpipeline /= rdndtargetpipeline and cpltlpsmsig = memcplpipeline then
                  if blk_lnk_up_latch = '1' then
                     if cplndpendcpl(conv_integer(cplndtargetpipeline(1 downto 0))) = '1' then
                        if cplndstatuscode(conv_integer(cplndtargetpipeline(1 downto 0))) = "000" then
                           m_axis_cc_tdata_nd <= x"00000000" & tlpndrequesterid(conv_integer(cplndtargetpipeline(1 downto 0))) & 
                              tlpndtag(conv_integer(cplndtargetpipeline(1 downto 0))) & '0' & 
                                 rdndtlpaddrl(conv_integer(cplndtargetpipeline(1 downto 0))) & 
                                    tlpndcompleterid(conv_integer(cplndtargetpipeline(1 downto 0))) & 
                                       cplndstatuscode(conv_integer(cplndtargetpipeline(1 downto 0))) & '0' & x"001" & '0' & "10" & 
                                          "01010" & '0' & tlpndtc(conv_integer(cplndtargetpipeline(1 downto 0))) & "0000" & '0' & 
                                            '0' & tlpndattr(conv_integer(cplndtargetpipeline(1 downto 0))) & "00" & "0000000001";
                           m_axis_cc_tstrb_nd <= x"FFFF";
                        -- coverage off
                        else
                           m_axis_cc_tdata_nd <= x"00000000" & tlpndrequesterid(conv_integer(cplndtargetpipeline(1 downto 0))) & 
                              tlpndtag(conv_integer(cplndtargetpipeline(1 downto 0))) & '0' & 
                                rdndtlpaddrl(conv_integer(cplndtargetpipeline(1 downto 0))) & 
                                  tlpndcompleterid(conv_integer(cplndtargetpipeline(1 downto 0))) & 
                                    cplndstatuscode(conv_integer(cplndtargetpipeline(1 downto 0))) & '0' & 
                                      tlpndbytecount(conv_integer(cplndtargetpipeline(1 downto 0))) & '0' & "00" & 
                                        "01010" & '0' & tlpndtc(conv_integer(cplndtargetpipeline(1 downto 0))) & "0000" & '0' & 
                                          '0' & tlpndattr(conv_integer(cplndtargetpipeline(1 downto 0))) & "00" & "0000000000";
                           m_axis_cc_tstrb_nd <= x"0FFF";
                        -- coverage on
                        end if;
                        m_axis_cc_tvalid_nd <= '1';
                        m_axis_cc_tlast_nd <= '1';
                        if m_axis_cc_tready = '1' and m_axis_cc_tvalid_nd = '1' then
                           rdndreqpipelinedecr <= '1';
                           cplndtargetpipeline <= cplndtargetpipeline + 1;
                           
                           m_axis_cc_tvalid_nd <= '0';
                           m_axis_cc_tlast_nd <= '0';
                           m_axis_cc_tstrb_nd <= x"0000";
                        end if;
                     end if;
                  else
                     rdndreqpipelinedecr <= '1';
                     cplndtargetpipeline <= cplndtargetpipeline + 1;
                  end if;
               end if;
            
         -- coverage off
         when others =>
            cplndtlpsmsig <= memcplcrtdatabeat1;
         -- coverage on
      end case;
      end if;
   end if;
end process;

tlplength_array_val <= conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0))));
rdtlpaddrl_array_val <= conv_integer(rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)))(3 downto 2));
rdtlpaddrltemp_array_val <= conv_integer(rdtlpaddrltemp(3 downto 2));

tlplengthcntr_var_inst : array_arith
            port map 
            (
            din0 => tlplength_array_val,
            din1 => rdtlpaddrl_array_val,
            dout => tlplengthcntr_var_tmp
            );

tlplengthcntr_inst : array_arith
            port map 
            (
            din0 => tlplength_array_val,
            din1 => rdtlpaddrltemp_array_val,
            dout => tlplengthcntr_tmp
            );


cpl_master_egress: process (aclk)
   variable tlplengthcntr_var : std_logic_vector(9 downto 0);
begin
   if rising_edge(aclk) then
      if reset = '0' then
         cpltlpsmsig <= memcplpipeline;
         cpltargetpipeline <= (others => '0');
         rdreqpipelinedecr <= '0';
         cplpacket1 <= '0';
         m_axis_cc_tdatatemp128 <= (others=>'0');
         firstdwen   <= '0';
         lnkdowndataflush <= '0';
         m_axis_cc_tvalid_d <= '0';
         m_axis_cc_tstrb_d <= (others => '0');
         m_axis_cc_tlast_d <= '0';
         rd_en_sig <= '0';
         cplcounter <= (others => '0');
         cpldsplitcounttemp <= (others => '0');
         rdtlpaddrltemp <= (others => '0');
         ctlpbytecounttemp <= (others => '0');
         ctlplengthtemp <= (others => '0');
         tlplengthcntr <= (others => '0');
         tlplengthcntr_var := (others => '0');
         dis_valid_d <= '0';
         m_axis_cc_tdata_h <= (others => '0');
         data_phase <= '0';
         dis_rden <= '0';
         corruptdataflush <= '0';
         wait_till_not_empty <= '0';
         totallength <= (others => '0');
         totalbytecount <= (others => '0');
         linkdownflushdepth <= (others => '0');
         rrespdelayed <= '0';
      else
         case cpltlpsmsig is
            when memcplpipeline =>
               rdreqpipelinedecr <= '0';
               m_axis_cc_tlast_d <= '0';
               m_axis_cc_tstrb_d <= x"0000";
               m_axis_cc_tvalid_d <= '0';
               if blk_lnk_up_latch = '1' then
                  if cplndtargetpipeline = rdndtargetpipeline then
                     if cpltargetpipeline /= ctargetpipeline then
                        rd_en_sig <= '0';
                        cplcounter <= "00000";
                        cpldsplitcounttemp <= cpldsplitcount(conv_integer(cpltargetpipeline(1 downto 0)));
                        totallength <= tlplength(conv_integer(cpltargetpipeline(1 downto 0)));
			-- Chaitanya - Updated to help meet timing
                        --if ((conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                        --  conv_integer(rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)))(3 downto 2))) mod 4 = 0) then
                        --   tlplengthcntr_var := 
                        --   conv_std_logic_vector((conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                        --     conv_integer(rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)))(3 downto 2)))/4, 10);
                        --else
                        --   tlplengthcntr_var := 
                        --      conv_std_logic_vector((conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                        --        conv_integer(rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)))(3 downto 2)))/4 
                        --         + 1, 10);
                        --end if;
                        
                        --tlplengthcntr_var := conv_std_logic_vector(chaitanya3 + chaitanya2_sel, 10);
                        tlplengthcntr_var := tlplengthcntr_var_tmp;
                        if tlplengthcntr_var = "0000000000" then
                           linkdownflushdepth <= "0100000000";
                        else
                           linkdownflushdepth <= tlplengthcntr_var;
                        end if;
                        totalbytecount <= tlpbytecount(conv_integer(cpltargetpipeline(1 downto 0)));
                        cplpacket1 <= '1';
                        rdtlpaddrltemp <= rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)));
                        ctlpbytecounttemp <= ctlpbytecount0(conv_integer(cpltargetpipeline(1 downto 0)));
                        ctlplengthtemp <= ctlplength0(conv_integer(cpltargetpipeline(1 downto 0)));
                        cpltlpsmsig <= memcplcrtdatabeat1;
                        rrespdelayed <= '0';
                     else
                        cpltlpsmsig <= memcplpipeline;
                     end if;
                  end if;
               elsif cpltargetpipeline /= ctargetpipeline and empty = '0' then
                  cpltlpsmsig <= blklinkdown_corruptdata;
                  lnkdowndataflush <= '1';
		  -- Chaitanya - Updated to help meet timing
                  --if (conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                  --  conv_integer(rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)))(3 downto 2))) mod 4 = 0 then
                  --   tlplengthcntr <= conv_std_logic_vector((conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                  --     conv_integer(rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)))(3 downto 2)))/4, 10);
                  --else
                  --   tlplengthcntr <= conv_std_logic_vector((conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                  --     conv_integer(rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)))(3 downto 2)))/4 + 1, 10);
                  --end if;
                  tlplengthcntr <= tlplengthcntr_var_tmp; 
                  rd_en_sig <= '1';
               end if;
            
            when memcplcrtdatabeat1 =>
               m_axis_cc_tlast_d <= '0';
               rrespdelayed <= rresp(conv_integer(cpltargetpipeline(1 downto 0)))(2);
                  if (((cplpendcpl(conv_integer(cpltargetpipeline(1 downto 0))) = '1' and rrespdelayed = '1') or 
                    slv_write_idle = '1') and rresp(conv_integer(cpltargetpipeline(1 downto 0)))(2) = '1')
                    or blk_lnk_up_latch = '0' then
                  --ordering & rresp check
                     if rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1 downto 0) = "00" then
                        if blk_lnk_up_latch = '1' then
                           if empty = '0' then
                              if cplpacket1 <= '0' then
                                 m_axis_cc_tdata_h <= 
                                    little_to_big_endian32(dout(31 downto 0)) & 
                                      tlprequesterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                                       tlptag(conv_integer(cpltargetpipeline(1 downto 0))) & x"00" & 
                                          tlpcompleterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                                             (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) xor 
                                                rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & '0' & 
                                                   (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) and 
                                                      rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & '0' & 
                                                         ctlpbytecounttemp & '0' & "10" & "01010" & '0' & 
                                                            tlptc(conv_integer(cpltargetpipeline(1 downto 0))) & "0000" & '0' & '0'
                                                               & tlpattr(conv_integer(cpltargetpipeline(1 downto 0))) & "00" & 
                                                       ctlplengthtemp;
                              else
                                 if rdtlpaddrltemp(3 downto 2) = "11" then
                                    m_axis_cc_tdata_h <= 
                                    little_to_big_endian32(dout(127 downto 96)) & 
                                      tlprequesterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                                       tlptag(conv_integer(cpltargetpipeline(1 downto 0))) & '0' & rdtlpaddrltemp & 
                                          tlpcompleterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                                             (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) xor 
                                                rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & '0' & 
                                                   (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) and 
                                                      rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & '0' & 
                                                       ctlpbytecounttemp & '0' & "10" & "01010" & '0' & 
                                                          tlptc(conv_integer(cpltargetpipeline(1 downto 0))) & "0000" & '0' & '0' 
                                                             & tlpattr(conv_integer(cpltargetpipeline(1 downto 0))) & "00" & 
                                                                ctlplengthtemp;
                                 elsif rdtlpaddrltemp(3) = '1' then
                                    m_axis_cc_tdata_h <= 
                                    little_to_big_endian32(dout(95 downto 64)) & 
                                      tlprequesterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                                       tlptag(conv_integer(cpltargetpipeline(1 downto 0))) & '0' & rdtlpaddrltemp & 
                                          tlpcompleterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                                             (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) xor 
                                                rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & '0' & 
                                                   (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) and 
                                                      rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & '0' & 
                                                       ctlpbytecounttemp & '0' & "10" & "01010" & '0' & 
                                                          tlptc(conv_integer(cpltargetpipeline(1 downto 0))) & "0000" & '0' & '0' 
                                                             & tlpattr(conv_integer(cpltargetpipeline(1 downto 0))) & "00" & 
                                                                ctlplengthtemp;
                                 elsif rdtlpaddrltemp(2) = '1' then
                                    m_axis_cc_tdata_h <= 
                                    little_to_big_endian32(dout(63 downto 32)) & 
                                      tlprequesterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                                       tlptag(conv_integer(cpltargetpipeline(1 downto 0))) & '0' & rdtlpaddrltemp & 
                                          tlpcompleterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                                             (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) xor 
                                                rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & '0' & 
                                                   (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) and 
                                                      rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & '0' & 
                                                       ctlpbytecounttemp & '0' & "10" & "01010" & '0' & 
                                                          tlptc(conv_integer(cpltargetpipeline(1 downto 0))) & "0000" & '0' & '0' 
                                                             & tlpattr(conv_integer(cpltargetpipeline(1 downto 0))) & "00" & 
                                                                ctlplengthtemp;
                                 else
                                    m_axis_cc_tdata_h <= 
                                    little_to_big_endian32(dout(31 downto 0)) & 
                                      tlprequesterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                                       tlptag(conv_integer(cpltargetpipeline(1 downto 0))) & '0' & rdtlpaddrltemp & 
                                          tlpcompleterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                                             (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) xor 
                                                rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & '0' & 
                                                   (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) and 
                                                      rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & '0' & 
                                                       ctlpbytecounttemp & '0' & "10" & "01010" & '0' & 
                                                          tlptc(conv_integer(cpltargetpipeline(1 downto 0))) & "0000" & '0' & '0' 
                                                             & tlpattr(conv_integer(cpltargetpipeline(1 downto 0))) & "00" & 
                                                                ctlplengthtemp;
                                 end if;
                              end if;
                              m_axis_cc_tstrb_d <= x"FFFF";
                              m_axis_cc_tdatatemp128 <= dout(127 downto 32);
                              m_axis_cc_tvalid_d <= '1';
                              if ctlplengthtemp = "0000000001" then
                                 m_axis_cc_tlast_d <= '1';
                              end if;
                              if m_axis_cc_tready = '1' and m_axis_cc_tvalid_d = '1' then
                                 if (conv_integer(ctlplengthtemp) + 3) mod 4 = 0 then
                                    tlplengthcntr <= conv_std_logic_vector(((conv_integer(ctlplengthtemp) + 3)/4)-1, 10);
                                    linkdownflushdepth <= linkdownflushdepth - 
                                      conv_std_logic_vector(((conv_integer(ctlplengthtemp) + 3)/4), 10);
                                 else
                                    tlplengthcntr <= conv_std_logic_vector((conv_integer(ctlplengthtemp) + 3)/4, 10);
                                    linkdownflushdepth <= linkdownflushdepth - 
                                      conv_std_logic_vector(((conv_integer(ctlplengthtemp) + 3)/4), 10);
                                 end if;
                                 rd_en_sig <= '1';
                                 m_axis_cc_tvalid_d <= '0';
                                 if ctlplengthtemp = "0000000001" then
                                    if cplcounter = cpldsplitcounttemp then
                                    cpltlpsmsig <= memcpltxonedw;
                                    else
                                    cpltlpsmsig <= memcpltxdata;
                                    end if;
                                    m_axis_cc_tlast_d <= '0';
                                 else
                                    cpltlpsmsig <= memcpltxdata;
                                 end if;
                              end if;
                           end if;
                        else
                           cpltlpsmsig       <= blklinkdown_corruptdata;
                           m_axis_cc_tvalid_d <= '0';
                           tlplengthcntr <= linkdownflushdepth;
                           rd_en_sig        <= '1';
                           lnkdowndataflush <= '1';
                        end if;
                     else
                        if blk_lnk_up_latch = '1' then
                           m_axis_cc_tdata_h <= x"00000000" & tlprequesterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                              tlptag(conv_integer(cpltargetpipeline(1 downto 0))) & '0' & rdtlpaddrltemp & 
                                 tlpcompleterid(conv_integer(cpltargetpipeline(1 downto 0))) & 
                                    (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) xor 
                                       rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & '0' & 
                                          (rresp(conv_integer(cpltargetpipeline(1 downto 0)))(1) and 
                                             rresp(conv_integer(cpltargetpipeline(1 downto 0)))(0)) & '0' & totalbytecount & '0' 
                                               & "00" & "01010" & '0' & tlptc(conv_integer(cpltargetpipeline(1 downto 0))) & 
                                                 "0000" & '0' & '0' & tlpattr(conv_integer(cpltargetpipeline(1 downto 0))) & "00"
                                                   & totallength;
                           m_axis_cc_tstrb_d <= x"0FFF";
                           m_axis_cc_tvalid_d <= '1';
                           m_axis_cc_tlast_d <= '1';
                           if m_axis_cc_tready = '1' and m_axis_cc_tvalid_d = '1' then
                              cpltlpsmsig <= blklinkdown_corruptdata;
                              corruptdataflush <= '1';
                              m_axis_cc_tvalid_d <= '0';
			      -- Chaitanya - Updated to help meet timing
                              --if (conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                              --  conv_integer(rdtlpaddrltemp(3 downto 2))) mod 4 = 0 then
                              --   tlplengthcntr <= 
                              --   conv_std_logic_vector((conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                              --     conv_integer(rdtlpaddrltemp(3 downto 2)))/4, 10);
                              --else
                              --   tlplengthcntr <= 
                              --      conv_std_logic_vector((conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                              --        conv_integer(rdtlpaddrltemp(3 downto 2)))/4 
                              --         + 1, 10);
                              --end if;
                              tlplengthcntr <= tlplengthcntr_tmp; 
                              rd_en_sig <= '1';
                           --else
                           --   cpltlpsmsig <= memcplcrtdatabeat1;
                           end if;
                        else
                           cpltlpsmsig       <= blklinkdown_corruptdata;
                           m_axis_cc_tvalid_d <= '0';
			   -- Chaitanya - Updated to help meet timing
                           --if (conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                           --  conv_integer(rdtlpaddrltemp(3 downto 2))) mod 4 = 0 then
                           --   tlplengthcntr <= 
                           --   conv_std_logic_vector((conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                           --      conv_integer(rdtlpaddrltemp(3 downto 2)))/4, 10);
                           --else
                           --   tlplengthcntr <= 
                           --      conv_std_logic_vector((conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)))) + 
                           --        conv_integer(rdtlpaddrltemp(3 downto 2)))/4 
                           --         + 1, 10);
                           --end if;
                           tlplengthcntr <= tlplengthcntr_tmp; 
                           rd_en_sig <= '1';
                           lnkdowndataflush <= '1';
                        end if;
                     end if;
                  end if;

            when blklinkdown_corruptdata =>
               if m_axis_cc_tready = '1' then
                  m_axis_cc_tvalid_d <= '0';
               end if;
               rdreqpipelinedecr <= '0';
               if empty = '0' then
                  wait_till_not_empty <= '1';
                  if tlplengthcntr /= "0000000001" then
                    -- CR 653816:
                    -- 1024DW data for read request requires 100 beats to flush out data from FIFO
                    -- One beat contains two DWs so tlplengthcntr has to be adjusted to "FF"
                     if tlplengthcntr = "0000000000" then
                        tlplengthcntr <= "0011111111";
                     else
                        tlplengthcntr <= tlplengthcntr - 1;
                     end if;
                     rd_en_sig <= '1';
                  else
                     if lnkdowndataflush = '1' then
                        if cpltargetpipeline + 1 /= ctargetpipeline then
			   -- Chaitanya - Updated to help meet timing
                           --if (conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)+1))) + 
                           --  conv_integer(rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)+1))(3 downto 2))) mod 4 = 0 then
                           --   tlplengthcntr <= 
                           --   conv_std_logic_vector((conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)+1))) + 
                           --     conv_integer(rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)+1))(3 downto 2)))/4, 10);
                           --else
                           --   tlplengthcntr <= 
                           --      conv_std_logic_vector((conv_integer(tlplength(conv_integer(cpltargetpipeline(1 downto 0)+1))) + 
                           --        conv_integer(rdtlpaddrl(conv_integer(cpltargetpipeline(1 downto 0)+1))(3 downto 2)))/4 
                           --         + 1, 10);
                           --end if;
                           tlplengthcntr <= tlplengthcntr_var_tmp;
                           --rdreqpipelinedecr <= '1';
                           cpltargetpipeline <= cpltargetpipeline + 1;
                        else
                           if m_axis_cc_tvalid_d = '0' or m_axis_cc_tready = '1' then
                              cpltlpsmsig <= memcplpipeline;
                              --rdreqpipelinedecr <= '1';
                              cpltargetpipeline <= cpltargetpipeline + 1;
                              wait_till_not_empty <= '0';
                           end if;
                           rd_en_sig <= '0';
                           lnkdowndataflush <= '0';
                        end if;
                     else
                        if m_axis_cc_tvalid_d = '0' or m_axis_cc_tready = '1' then
                           cpltlpsmsig <= memcplpipeline;
                           rdreqpipelinedecr <= '1';
                           cpltargetpipeline <= cpltargetpipeline + 1;
                           wait_till_not_empty <= '0';
                        end if;
                        rd_en_sig <= '0';
                        corruptdataflush <= '0';
                     end if;
                  end if;
               end if;

            when memcpltxonedw =>
               -- Don't wait for tready to come here as transfer is already complete
               --if m_axis_cc_tready = '1' then
                  rd_en_sig <= '0';
                  cpltlpsmsig <= memcplpipeline;
                  rdreqpipelinedecr <= '1';
                  cpltargetpipeline <= cpltargetpipeline + 1;
               --end if;
            
            when memcpltxdata =>
               if empty = '0' or tlplengthcntr = "0000000000" then
                  if m_axis_cc_tready = '1' or (m_axis_cc_tready = '0' and ctlplengthtemp = "0000000001") then
                     rd_en_sig <= '0';
                     m_axis_cc_tvalid_d <= not(empty);
                     data_phase <= '1';
                     m_axis_cc_tdatatemp128 <= dout(127 downto 32);
                     if tlplengthcntr = "0000000001" then
                        m_axis_cc_tlast_d <= '1';
                           case 
                           ((conv_integer(ctlplengthtemp) + 3) mod 4) is
                           when 0 =>
                              m_axis_cc_tstrb_d <= x"FFFF";
                           when 1 =>
                              m_axis_cc_tstrb_d <= x"000F";
                              if rdtlpaddrltemp(3 downto 2) /= "11" or cplpacket1 = '0' then
                                 dis_rden <= '1';
                              end if;
                           when 2 =>
                              m_axis_cc_tstrb_d <= x"00FF"; 
                              if rdtlpaddrltemp(3 downto 2) = "01" or rdtlpaddrltemp(3 downto 2) = "00" or cplpacket1 = '0' then
                                 dis_rden <= '1';
                              end if;
                           when 3 =>
                              m_axis_cc_tstrb_d <= x"0FFF"; 
                              if rdtlpaddrltemp(3 downto 2) = "00" or cplpacket1 = '0' then
                                 dis_rden <= '1';
                              end if;
                           -- coverage off
                           when others =>
                           -- coverage on
                           end case;
                     end if;
                     if tlplengthcntr = "0000000000" then
                        dis_rden <= '0';
                        data_phase <= '0';
                        m_axis_cc_tvalid_d <= '0';
                        m_axis_cc_tlast_d <= '0';
                        if cplcounter /= cpldsplitcounttemp then
                           cpltlpsmsig <= memcplcrtdatabeat1;
                           cplcounter <= cplcounter + 1;
                           if cplcounter /= "00000" then
                              ctlpbytecounttemp <= ctlpbytecounttemp - 
                                 (ctlplength1(conv_integer(cpltargetpipeline(1 downto 0))) & "00");
                           else
                              ctlpbytecounttemp <= ctlpbytecounttemp - 
                                 ctlpbytecount1(conv_integer(cpltargetpipeline(1 downto 0)));
                           end if;
                           if cplcounter+1 /= cpldsplitcounttemp then
                              ctlplengthtemp <= ctlplength1(conv_integer(cpltargetpipeline(1 downto 0)));
                           else
                              ctlplengthtemp <= ctlplength2(conv_integer(cpltargetpipeline(1 downto 0)));
                           end if;
                           cplpacket1 <= '0';
                        else
                           cpltlpsmsig <= memcplpipeline;
                           rdreqpipelinedecr <= '1';
                           cpltargetpipeline <= cpltargetpipeline + 1;
                        end if;
                     else
                        tlplengthcntr <= tlplengthcntr - 1;
                     end if;
                  end if;
               end if;
         
         -- coverage off
         when others =>
            cpltlpsmsig <= memcplpipeline;
         -- coverage on
      end case;
      end if;
   end if;
end process;
end generate;

rd_req_32_64: if C_S_AXIS_DATA_WIDTH /= 128 generate
rd_req_pipeline: process(aclk)
begin
   --pipeline buffer availability up/counter counter - CplD
   if rising_edge(aclk) then
      if reset = '0' or blk_lnk_up = '0' then
      --if reset = '0' then
         rdreqpipeline <= (others => '0');
      elsif rdreqpipelineincr = '1' and rdreqpipelinedecr = '1' then
         rdreqpipeline <= rdreqpipeline;
      elsif rdreqpipelineincr = '1' then
         rdreqpipeline <= rdreqpipeline + 1;
      elsif rdreqpipelinedecr = '1' then
         rdreqpipeline <= rdreqpipeline - 1;
      end if;
   end if;
   --pipeline buffer availability up/counter counter - Cpl
   if rising_edge(aclk) then
      if reset = '0' or blk_lnk_up = '0' then
      --if reset = '0' then
         rdndreqpipeline <= (others => '0');
      elsif rdndreqpipelineincr = '1' and rdndreqpipelinedecr = '1' then
         rdndreqpipeline <= rdndreqpipeline;
      elsif rdndreqpipelineincr = '1' then
         rdndreqpipeline <= rdndreqpipeline + 1;
      elsif rdndreqpipelinedecr = '1' then
         rdndreqpipeline <= rdndreqpipeline - 1;
      end if;
   end if;
end process;
end generate;

rd_req_128: if C_S_AXIS_DATA_WIDTH = 128 generate
rd_req_pipeline: process(aclk)
begin
   --pipeline buffer availability up/counter counter - CplD
   if rising_edge(aclk) then
      if reset = '0' or blk_lnk_up = '0' then
         rdreqpipeline <= (others => '0');
      elsif s_axis_cr_tvalid = '1' and s_axis_cr_tready_sig = '1' and rdreqpipelinedecr = '1' and s_axis_cr_tdata(30) = '0' and 
         s_axis_cr_tdata(28 downto 24) = "00000" and ((C_PCIEBAR_NUM = 1 and s_axis_cr_tuser(2) = '1') or (C_PCIEBAR_NUM > 1 and
         ( s_axis_cr_tuser(2) = '1' or s_axis_cr_tuser(3) = '1' or s_axis_cr_tuser(4) = '1' or s_axis_cr_tuser(6) = '1'))) and 
         s_axis_cr_tdata(35 downto 32) /= "0000" then
         rdreqpipeline <= rdreqpipeline;
      elsif s_axis_cr_tvalid = '1' and s_axis_cr_tready_sig = '1' and s_axis_cr_tdata(30) = '0' and 
         s_axis_cr_tdata(28 downto 24) = "00000" and ((C_PCIEBAR_NUM = 1 and s_axis_cr_tuser(2) = '1') or (C_PCIEBAR_NUM > 1 and
         ( s_axis_cr_tuser(2) = '1' or s_axis_cr_tuser(3) = '1' or s_axis_cr_tuser(4) = '1' or s_axis_cr_tuser(6) = '1'))) and 
         s_axis_cr_tdata(35 downto 32) /= "0000" then
         rdreqpipeline <= rdreqpipeline + 1;
      elsif rdreqpipelinedecr = '1' then
         rdreqpipeline <= rdreqpipeline - 1;
      end if;
   end if;
   --pipeline buffer availability up/counter counter - Cpl
   if rising_edge(aclk) then
      if reset = '0' or blk_lnk_up = '0' then
         rdndreqpipeline <= (others => '0');
      elsif s_axis_cr_tvalid = '1' and s_axis_cr_tready_sig = '1' and rdndreqpipelinedecr = '1' and s_axis_cr_tdata(30) = '0' and 
         s_axis_cr_tdata(28 downto 24) = "00000" and ((C_PCIEBAR_NUM = 1 and s_axis_cr_tuser(2) = '0') or (C_PCIEBAR_NUM > 1 and 
         s_axis_cr_tuser(2) = '0' and s_axis_cr_tuser(3) = '0' and s_axis_cr_tuser(4) = '0' and s_axis_cr_tuser(6) = '0')) then
         rdndreqpipeline <= rdndreqpipeline;
      elsif s_axis_cr_tvalid = '1' and s_axis_cr_tready_sig = '1' and rdndreqpipelinedecr = '1' and s_axis_cr_tdata(30) = '0' and 
         s_axis_cr_tdata(28 downto 24) = "00000" and ((C_PCIEBAR_NUM = 1 and s_axis_cr_tuser(2) = '1') or (C_PCIEBAR_NUM > 1 and 
         ( s_axis_cr_tuser(2) = '1' or s_axis_cr_tuser(3) = '1' or s_axis_cr_tuser(4) = '1' or s_axis_cr_tuser(6) = '1'))) and 
         s_axis_cr_tdata(35 downto 32) = "0000" then
         rdndreqpipeline <= rdndreqpipeline;
      elsif s_axis_cr_tvalid = '1' and s_axis_cr_tready_sig = '1' and s_axis_cr_tdata(30) = '0' and 
         s_axis_cr_tdata(28 downto 24) = "00000" and ((C_PCIEBAR_NUM = 1 and s_axis_cr_tuser(2) = '0') or (C_PCIEBAR_NUM > 1 and 
         s_axis_cr_tuser(2) = '0' and s_axis_cr_tuser(3) = '0' and s_axis_cr_tuser(4) = '0' and s_axis_cr_tuser(6) = '0')) then
         rdndreqpipeline <= rdndreqpipeline + 1;
      elsif s_axis_cr_tvalid = '1' and s_axis_cr_tready_sig = '1' and s_axis_cr_tdata(30) = '0' and 
         s_axis_cr_tdata(28 downto 24) = "00000" and ((C_PCIEBAR_NUM = 1 and s_axis_cr_tuser(2) = '1') or (C_PCIEBAR_NUM > 1 and 
         (s_axis_cr_tuser(2) = '1' or s_axis_cr_tuser(3) = '1' or s_axis_cr_tuser(4) = '1' or s_axis_cr_tuser(6) = '1'))) and
         s_axis_cr_tdata(35 downto 32) = "0000" then
         rdndreqpipeline <= rdndreqpipeline + 1;
      elsif rdndreqpipelinedecr = '1' then
         rdndreqpipeline <= rdndreqpipeline - 1;
      end if;
   end if;
end process;
end generate;

cpld_packet_split: process(aclk)
begin
   if rising_edge(aclk) then
      if reset = '0' then
         ctargetpipeline <= (others => '0');
         length_offset <= (others => '0');
         cpldsplitsm <= idle;
      else
      case cpldsplitsm is
      --count calculation for # of compl per read req
         when idle =>
            if ctargetpipeline /= rdtargetpipeline then
               cpldsplitsm <= cpldsplitcalc;
               case blk_dcontrol(7 downto 5) is 
                  when "000" =>
                     if tlplength(conv_integer(ctargetpipeline(1 downto 0))) /= "0000000000" then
                        length_offset(11 downto 2) <= (tlplength(conv_integer(ctargetpipeline(1 downto 0))) + 
                           tlpaddrl(conv_integer(ctargetpipeline(1 downto 0)))(6 downto 2)) - 1;
                     else
                        length_offset <= (others => '1');
                     end if;
                  
                  when "001" =>
                     if tlplength(conv_integer(ctargetpipeline(1 downto 0))) /= "0000000000" then
                        length_offset(11 downto 2) <= (tlplength(conv_integer(ctargetpipeline(1 downto 0))) + 
                           tlpaddrl(conv_integer(ctargetpipeline(1 downto 0)))(7 downto 2)) - 1;
                     else
                        length_offset <= (others => '1');
                     end if;
                  
                  -- coverage off
                  when "010" =>
                     if tlplength(conv_integer(ctargetpipeline(1 downto 0))) /= "0000000000" then
                        length_offset(11 downto 2) <= (tlplength(conv_integer(ctargetpipeline(1 downto 0))) + 
                           tlpaddrl(conv_integer(ctargetpipeline(1 downto 0)))(8 downto 2)) - 1;
                     else
                        length_offset <= (others => '1');
                     end if;
                  
                  when "011" =>
                     if tlplength(conv_integer(ctargetpipeline(1 downto 0))) /= "0000000000" then
                        length_offset(11 downto 2) <= (tlplength(conv_integer(ctargetpipeline(1 downto 0))) + 
                           tlpaddrl(conv_integer(ctargetpipeline(1 downto 0)))(9 downto 2)) - 1;
                     else
                        length_offset <= (others => '1');
                     end if;
                  
                  when "100" =>
                     if tlplength(conv_integer(ctargetpipeline(1 downto 0))) /= "0000000000" then
                        length_offset(11 downto 2) <= (tlplength(conv_integer(ctargetpipeline(1 downto 0))) + 
                           tlpaddrl(conv_integer(ctargetpipeline(1 downto 0)))(10 downto 2)) - 1;
                     else
                        length_offset <= (others => '1');
                     end if;
                  
                  when "101" =>
                     if tlplength(conv_integer(ctargetpipeline(1 downto 0))) /= "0000000000" then
                        length_offset(11 downto 2) <= (tlplength(conv_integer(ctargetpipeline(1 downto 0))) + 
                           tlpaddrl(conv_integer(ctargetpipeline(1 downto 0)))(11 downto 2)) - 1;
                     else
                        length_offset <= (others => '1');
                     end if;
                  
                  when others =>
                     cpldsplitsm <= idle;
                  -- coverage on
               end case;
            else
               cpldsplitsm <= idle;
            end if;
         
         when cpldsplitcalc =>
            cpldsplitsm <= cpldsplitparam;
            case blk_dcontrol(7 downto 5) is 
               when "000" =>
                  if tlplength(conv_integer(ctargetpipeline(1 downto 0))) /= "0000000000" then
                     if conv_integer(tlplength(conv_integer(ctargetpipeline(1 downto 0)))) > 32 then
                        cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0))) <= length_offset(11 downto 7);
                     else
                        cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0))) <= "00000";
                     end if;
                  else
                     cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0))) <= "11111";
                  end if;
               
               when "001" =>
                  if tlplength(conv_integer(ctargetpipeline(1 downto 0))) /= "0000000000" then
                     if conv_integer(tlplength(conv_integer(ctargetpipeline(1 downto 0)))) > 64 then
                        cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0))) <= '0' & length_offset(11 downto 8);
                     else
                        cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0))) <= "00000";
                     end if;
                  else
                     cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0))) <= "01111";
                  end if;
               
               -- coverage off
               when "010" =>
                  if tlplength(conv_integer(ctargetpipeline(1 downto 0))) /= "0000000000" then
                     if conv_integer(tlplength(conv_integer(ctargetpipeline(1 downto 0)))) > 128 then
                        cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0))) <= "00" & length_offset(11 downto 9);
                     else
                        cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0))) <= "00000";
                     end if;
                  else
                     cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0))) <= "00111";
                  end if;
               
               when "011" =>
                  if tlplength(conv_integer(ctargetpipeline(1 downto 0))) /= "0000000000" then
                     if conv_integer(tlplength(conv_integer(ctargetpipeline(1 downto 0)))) > 256 then
                        cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0))) <= "000" & length_offset(11 downto 10);
                     else
                        cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0))) <= "00000";
                     end if;
                  else
                     cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0))) <= "00011";
                  end if;
               
               when "100" =>
                  if tlplength(conv_integer(ctargetpipeline(1 downto 0))) /= "0000000000" then
                     if conv_integer(tlplength(conv_integer(ctargetpipeline(1 downto 0)))) > 512 then
                        cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0))) <= "0000" & length_offset(11 downto 11);
                     else
                        cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0))) <= "00000";
                     end if;
                  else
                     cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0))) <= "00001";
                  end if;
               
               when "101" =>
                  cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0))) <= "00000";
               
               when others =>
                  cpldsplitsm <= idle;
               -- coverage on
            end case;
         
         when cpldsplitparam =>
         --completion splits header info (len, bytecount)
            case blk_dcontrol(7 downto 5) is 
               when "000" =>
                  if conv_integer(cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0)))) = 0 then
                     ctlplength(0, conv_integer(ctargetpipeline(1 downto 0))) <= 
                        tlplength(conv_integer(ctargetpipeline(1 downto 0)));
                  else
                     ctlplength(0, conv_integer(ctargetpipeline(1 downto 0))) <= "00" & x"20" - 
                        tlpaddrl(conv_integer(ctargetpipeline(1 downto 0)))(6 downto 2);
                  end if;
                  ctlplength(1, conv_integer(ctargetpipeline(1 downto 0))) <= "00" & x"20";
                  ctlplength(2, conv_integer(ctargetpipeline(1 downto 0))) <= "00000" & length_offset(6 downto 2) + 1;
                  ctlpbytecount(0, conv_integer(ctargetpipeline(1 downto 0))) <= 
                     tlpbytecount(conv_integer(ctargetpipeline(1 downto 0)));
                  ctlpbytecount(1, conv_integer(ctargetpipeline(1 downto 0))) <= x"080" - 
                     tlpaddrl(conv_integer(ctargetpipeline(1 downto 0)))(6 downto 0);
               
               when "001" =>
                  if conv_integer(cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0)))) = 0 then
                     ctlplength(0, conv_integer(ctargetpipeline(1 downto 0))) <= 
                        tlplength(conv_integer(ctargetpipeline(1 downto 0)));
                  else
                     ctlplength(0, conv_integer(ctargetpipeline(1 downto 0))) <= "00" & x"40" - 
                        tlpaddrl(conv_integer(ctargetpipeline(1 downto 0)))(7 downto 2);
                  end if;
                  ctlplength(1, conv_integer(ctargetpipeline(1 downto 0))) <= "00" & x"40";
                  ctlplength(2, conv_integer(ctargetpipeline(1 downto 0))) <= "0000" & length_offset(7 downto 2) + 1;
                  ctlpbytecount(0, conv_integer(ctargetpipeline(1 downto 0))) <= 
                     tlpbytecount(conv_integer(ctargetpipeline(1 downto 0)));
                  ctlpbytecount(1, conv_integer(ctargetpipeline(1 downto 0))) <= x"100" - 
                     tlpaddrl(conv_integer(ctargetpipeline(1 downto 0)))(7 downto 0);
               
               -- coverage off
               when "010" =>
                  if conv_integer(cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0)))) = 0 then
                     ctlplength(0, conv_integer(ctargetpipeline(1 downto 0))) <= 
                        tlplength(conv_integer(ctargetpipeline(1 downto 0)));
                  else
                     ctlplength(0, conv_integer(ctargetpipeline(1 downto 0))) <= "00" & x"80" - 
                        tlpaddrl(conv_integer(ctargetpipeline(1 downto 0)))(8 downto 2);
                  end if;
                  ctlplength(1, conv_integer(ctargetpipeline(1 downto 0))) <= "00" & x"80";
                  ctlplength(2, conv_integer(ctargetpipeline(1 downto 0))) <= "000" & length_offset(8 downto 2) + 1;
                  ctlpbytecount(0, conv_integer(ctargetpipeline(1 downto 0))) <= 
                     tlpbytecount(conv_integer(ctargetpipeline(1 downto 0)));
                  ctlpbytecount(1, conv_integer(ctargetpipeline(1 downto 0))) <= x"200" - 
                     tlpaddrl(conv_integer(ctargetpipeline(1 downto 0)))(8 downto 0);
               
               when "011" =>
                  if conv_integer(cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0)))) = 0 then
                     ctlplength(0, conv_integer(ctargetpipeline(1 downto 0))) <= 
                        tlplength(conv_integer(ctargetpipeline(1 downto 0)));
                  else
                     ctlplength(0, conv_integer(ctargetpipeline(1 downto 0))) <= "01" & x"00" - 
                        tlpaddrl(conv_integer(ctargetpipeline(1 downto 0)))(9 downto 2);
                  end if;
                  ctlplength(1, conv_integer(ctargetpipeline(1 downto 0))) <= "01" & x"00";
                  ctlplength(2, conv_integer(ctargetpipeline(1 downto 0))) <= "00" & length_offset(9 downto 2) + 1;
                  ctlpbytecount(0, conv_integer(ctargetpipeline(1 downto 0))) <= 
                     tlpbytecount(conv_integer(ctargetpipeline(1 downto 0)));
                  ctlpbytecount(1, conv_integer(ctargetpipeline(1 downto 0))) <= x"400" - 
                     tlpaddrl(conv_integer(ctargetpipeline(1 downto 0)))(9 downto 0);
               
               when "100" =>
                  if conv_integer(cpldsplitcount(conv_integer(ctargetpipeline(1 downto 0)))) = 0 then
                     ctlplength(0, conv_integer(ctargetpipeline(1 downto 0))) <= 
                        tlplength(conv_integer(ctargetpipeline(1 downto 0)));
                  else
                     ctlplength(0, conv_integer(ctargetpipeline(1 downto 0))) <= "10" & x"00" - 
                        tlpaddrl(conv_integer(ctargetpipeline(1 downto 0)))(10 downto 2);
                  end if;
                  ctlplength(1, conv_integer(ctargetpipeline(1 downto 0))) <= (others => '0');
                  ctlplength(2, conv_integer(ctargetpipeline(1 downto 0))) <= '0' & length_offset(10 downto 2) + 1;
                  ctlpbytecount(0, conv_integer(ctargetpipeline(1 downto 0))) <= 
                     tlpbytecount(conv_integer(ctargetpipeline(1 downto 0)));
                  ctlpbytecount(1, conv_integer(ctargetpipeline(1 downto 0))) <= x"800" - 
                     tlpaddrl(conv_integer(ctargetpipeline(1 downto 0)))(10 downto 0);
               
               when "101" =>
                  ctlplength(0, conv_integer(ctargetpipeline(1 downto 0))) <= 
                     tlplength(conv_integer(ctargetpipeline(1 downto 0)));
                  ctlplength(1, conv_integer(ctargetpipeline(1 downto 0))) <= (others => '0');
                  ctlplength(2, conv_integer(ctargetpipeline(1 downto 0))) <= (others => '0');
                  ctlpbytecount(0, conv_integer(ctargetpipeline(1 downto 0))) <= 
                     tlpbytecount(conv_integer(ctargetpipeline(1 downto 0)));
                  ctlpbytecount(1, conv_integer(ctargetpipeline(1 downto 0))) <= (others => '0');
               
               when others =>
                  cpldsplitsm <= idle;
               -- coverage on
            end case;
            ctargetpipeline <= ctargetpipeline + 1;
            cpldsplitsm <= idle;
            
         -- coverage off
         when others =>
            cpldsplitsm <= idle;
         -- coverage on
      end case;
      if blk_lnk_up_latch = '0' and cpltargetpipeline /= ctargetpipeline then
         ctargetpipeline <= addrstreampipeline;
      end if;
      end if;
   end if;
end process;

m_axis_cc_tvalid <= m_axis_cc_tvalid_nd when cplndtargetpipeline /= rdndtargetpipeline and cpltlpsmsig = memcplpipeline else
                    m_axis_cc_tvalid_d;
dw32: if C_S_AXIS_DATA_WIDTH = 32 generate
m_axis_cc_tdata_d <= m_axis_cc_tdata_h when data_phase = '0' else
                     little_to_big_endian32(dout);
end generate dw32;

dw64: if C_S_AXIS_DATA_WIDTH = 64 generate
m_axis_cc_tdata_d <= m_axis_cc_tdata_h when data_phase = '0' else
                     little_to_big_endian32(dout(63 downto 32)) & little_to_big_endian32(dout(31 downto 0)) 
                        when (cplpacket1 = '1' and rdtlpaddrltemp(2) = '1') else
                     little_to_big_endian32(dout(31 downto 0)) & little_to_big_endian32(m_axis_cc_tdatatemp64);
end generate dw64;

dw128: if C_S_AXIS_DATA_WIDTH = 128 generate
m_axis_cc_tdata_d <= m_axis_cc_tdata_h when data_phase = '0' else
                     little_to_big_endian32(dout(127 downto 96)) & little_to_big_endian32(dout(95 downto 64)) & 
                        little_to_big_endian32(dout(63 downto 32)) & little_to_big_endian32(dout(31 downto 0)) 
                           when cplpacket1 = '1' and rdtlpaddrltemp(3 downto 2) = "11" else
                     little_to_big_endian32(dout(95 downto 64)) & little_to_big_endian32(dout(63 downto 32)) & 
                        little_to_big_endian32(dout(31 downto 0)) & little_to_big_endian32(m_axis_cc_tdatatemp128(95 downto 64)) 
                           when cplpacket1 = '1' and rdtlpaddrltemp(3) = '1' else
                     little_to_big_endian32(dout(63 downto 32)) & little_to_big_endian32(dout(31 downto 0)) & 
                        little_to_big_endian32(m_axis_cc_tdatatemp128(95 downto 64)) & 
                           little_to_big_endian32(m_axis_cc_tdatatemp128(63 downto 32)) 
                              when cplpacket1 = '1' and rdtlpaddrltemp(2) = '1' else
                     little_to_big_endian32(dout(31 downto 0)) & little_to_big_endian32(m_axis_cc_tdatatemp128(95 downto 64)) & 
                        little_to_big_endian32(m_axis_cc_tdatatemp128(63 downto 32)) & 
                           little_to_big_endian32(m_axis_cc_tdatatemp128(31 downto 0));
end generate dw128;

-- modified rd_en expression, CR #671086 (AXI PCIE 37x BURST ISSUE)

rd_en64_32: if C_S_AXIS_DATA_WIDTH /= 128 generate
rd_en            <= (m_axis_cc_tready or corruptdataflush or lnkdowndataflush) and (m_axis_cc_tvalid_d or rd_en_sig) and 
                       not(empty) and (data_phase or rd_en_sig) and not(dis_rden);
end generate rd_en64_32;

rd_en128: if C_S_AXIS_DATA_WIDTH = 128 generate
rd_en            <= (rd_en_sig or m_axis_cc_tready or corruptdataflush or lnkdowndataflush) and (m_axis_cc_tvalid_d or rd_en_sig) and 
                       		not(empty) and (data_phase or rd_en_sig) and not(dis_rden) when (cpltlpsmsig = memcpltxonedw or (cpltlpsmsig = memcpltxdata and ctlplengthtemp = "0000000001")) else
                    (m_axis_cc_tready or corruptdataflush or lnkdowndataflush) and (m_axis_cc_tvalid_d or rd_en_sig) and 
                       		not(empty) and (data_phase or rd_en_sig) and not(dis_rden);
end generate rd_en128;


m_axis_cc_tdata <= m_axis_cc_tdata_nd when cplndtargetpipeline /= rdndtargetpipeline and cpltlpsmsig = memcplpipeline else
                   m_axis_cc_tdata_d;
m_axis_cc_tstrb <= m_axis_cc_tstrb_nd when cplndtargetpipeline /= rdndtargetpipeline and cpltlpsmsig = memcplpipeline else
                   m_axis_cc_tstrb_d;
m_axis_cc_tlast <= m_axis_cc_tlast_nd when cplndtargetpipeline /= rdndtargetpipeline and cpltlpsmsig = memcplpipeline else
                   m_axis_cc_tlast_d;

rdtargetpipeline_out <= rdtargetpipeline;

s_axis_cr_tready <= s_axis_cr_tready_sig;

m_axis_cc_tuser <= (others => '0');

wrpending <= wrpendingsig;

end behavioral;


