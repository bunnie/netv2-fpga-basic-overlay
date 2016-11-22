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
-- Filename:        register_block.vhd
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
--              register_block.vhd
--
-------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;

--------------------------------------------------------------------------------
--Notes
--------------------------------------------------------------------------------

entity register_block is
   generic(
      --Family Generics
      C_FAMILY                : string  :="virtex7";
      C_S_AXI_DATA_WIDTH      : integer := 32;
      C_S_AXI_ADDR_WIDTH      : integer := 32;
      C_AXIBAR_NUM            : integer := 6;
      C_INCLUDE_BAROFFSET_REG : integer := 1;
      C_AXIBAR2PCIEBAR_0       : std_logic_vector:=x"00000000";
      C_AXIBAR2PCIEBAR_1       : std_logic_vector:=x"00000000";
      C_AXIBAR2PCIEBAR_2       : std_logic_vector:=x"00000000";
      C_AXIBAR2PCIEBAR_3       : std_logic_vector:=x"00000000";
      C_AXIBAR2PCIEBAR_4       : std_logic_vector:=x"00000000";
      C_AXIBAR2PCIEBAR_5       : std_logic_vector:=x"00000000";
      C_AXIBAR_AS_0           : integer := 0;
      C_AXIBAR_AS_1           : integer := 0;
      C_AXIBAR_AS_2           : integer := 0;
      C_AXIBAR_AS_3           : integer := 0;
      C_AXIBAR_AS_4           : integer := 0;
      C_AXIBAR_AS_5           : integer := 0
   );
   port(
      -- AXI Global
      s_axi_aclk              : in  std_logic;
      reset                   : in  std_logic;

      -- AXI-Lite Slave IPIC
      IP2Bus_Data             : out std_logic_vector(31 downto 0);
      IP2Bus_WrAck            : out std_logic;
      IP2Bus_RdAck            : out std_logic;
      IP2Bus_Error            : out std_logic;
      Bus2IP_Addr             : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      Bus2IP_Data             : in  std_logic_vector(31 downto 0);
      Bus2IP_RNW              : in  std_logic;
      Bus2IP_BE               : in  std_logic_vector(32/8-1 downto 0);
      Bus2IP_CS               : in  std_logic;
      axibar2pciebar0          : out std_logic_vector(63 downto 0);
      axibar2pciebar1          : out std_logic_vector(63 downto 0);
      axibar2pciebar2          : out std_logic_vector(63 downto 0);
      axibar2pciebar3          : out std_logic_vector(63 downto 0);
      axibar2pciebar4          : out std_logic_vector(63 downto 0);
      axibar2pciebar5          : out std_logic_vector(63 downto 0)
   );
end register_block;

architecture structure of register_block is
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of structure : architecture is "yes";

   constant C_VSEC2_CAP         : integer := conv_integer(x"00")/4;
   constant C_VSEC2_HDR         : integer := conv_integer(x"04")/4;
   constant C_AXIBAR2PCIEBAR_0A : integer := conv_integer(x"08")/4;
   constant C_AXIBAR2PCIEBAR_0B : integer := conv_integer(x"0C")/4;
   constant C_AXIBAR2PCIEBAR_1A : integer := conv_integer(x"10")/4;
   constant C_AXIBAR2PCIEBAR_1B : integer := conv_integer(x"14")/4;
   constant C_AXIBAR2PCIEBAR_2A : integer := conv_integer(x"18")/4;
   constant C_AXIBAR2PCIEBAR_2B : integer := conv_integer(x"1C")/4;
   constant C_AXIBAR2PCIEBAR_3A : integer := conv_integer(x"20")/4;
   constant C_AXIBAR2PCIEBAR_3B : integer := conv_integer(x"24")/4;
   constant C_AXIBAR2PCIEBAR_4A : integer := conv_integer(x"28")/4;
   constant C_AXIBAR2PCIEBAR_4B : integer := conv_integer(x"2C")/4;
   constant C_AXIBAR2PCIEBAR_5A : integer := conv_integer(x"30")/4;
   constant C_AXIBAR2PCIEBAR_5B : integer := conv_integer(x"34")/4;

   type axi_bar_array is array (0 to 11) of std_logic_vector(0 to 63);
   type integer_array  is array (0 to 5) of integer range 0 to 1;
   type register_bar_array is array (0 to 11) of std_logic_vector(31 downto 0);

   constant C_AXIBAR_AS_ARRAY : integer_array:=(
      C_AXIBAR_AS_0,
      C_AXIBAR_AS_1,
      C_AXIBAR_AS_2,
      C_AXIBAR_AS_3,
      C_AXIBAR_AS_4,
      C_AXIBAR_AS_5);
   constant C_AXIBAR0_UPPER : std_logic_vector(0 to 63):=x"0000000000000000"+C_AXIBAR2PCIEBAR_0;
   constant C_AXIBAR0_LOWER : std_logic_vector(0 to 63):=x"0000000000000000"+C_AXIBAR2PCIEBAR_0;
   constant C_AXIBAR1_UPPER : std_logic_vector(0 to 63):=x"0000000000000000"+C_AXIBAR2PCIEBAR_1;
   constant C_AXIBAR1_LOWER : std_logic_vector(0 to 63):=x"0000000000000000"+C_AXIBAR2PCIEBAR_1;
   constant C_AXIBAR2_UPPER : std_logic_vector(0 to 63):=x"0000000000000000"+C_AXIBAR2PCIEBAR_2;
   constant C_AXIBAR2_LOWER : std_logic_vector(0 to 63):=x"0000000000000000"+C_AXIBAR2PCIEBAR_2;
   constant C_AXIBAR3_UPPER : std_logic_vector(0 to 63):=x"0000000000000000"+C_AXIBAR2PCIEBAR_3;
   constant C_AXIBAR3_LOWER : std_logic_vector(0 to 63):=x"0000000000000000"+C_AXIBAR2PCIEBAR_3;
   constant C_AXIBAR4_UPPER : std_logic_vector(0 to 63):=x"0000000000000000"+C_AXIBAR2PCIEBAR_4;
   constant C_AXIBAR4_LOWER : std_logic_vector(0 to 63):=x"0000000000000000"+C_AXIBAR2PCIEBAR_4;
   constant C_AXIBAR5_UPPER : std_logic_vector(0 to 63):=x"0000000000000000"+C_AXIBAR2PCIEBAR_5;
   constant C_AXIBAR5_LOWER : std_logic_vector(0 to 63):=x"0000000000000000"+C_AXIBAR2PCIEBAR_5;
   constant C_AXIBAR2PCIEBAR_ARRAY : axi_bar_array:=(
      x"0000000000000000"+C_AXIBAR0_UPPER(0 to 31),
      x"0000000000000000"+C_AXIBAR0_LOWER(32 to 63),
      x"0000000000000000"+C_AXIBAR1_UPPER(0 to 31),
      x"0000000000000000"+C_AXIBAR1_LOWER(32 to 63),
      x"0000000000000000"+C_AXIBAR2_UPPER(0 to 31),
      x"0000000000000000"+C_AXIBAR2_LOWER(32 to 63),
      x"0000000000000000"+C_AXIBAR3_UPPER(0 to 31),
      x"0000000000000000"+C_AXIBAR3_LOWER(32 to 63),
      x"0000000000000000"+C_AXIBAR4_UPPER(0 to 31),
      x"0000000000000000"+C_AXIBAR4_LOWER(32 to 63),
      x"0000000000000000"+C_AXIBAR5_UPPER(0 to 31),
      x"0000000000000000"+C_AXIBAR5_LOWER(32 to 63));

   type register_states is (IDLE, REG_ACCESS, WAIT_CS);
   signal register_state : register_states;

   signal sig_axibar2pciebar_array   : axi_bar_array;
   signal sig_axibar2pciebar_reset   : axi_bar_array;
   signal sig_register_bar_array     : register_bar_array;
   constant VSEC2_CAP                : std_logic_vector(31 downto 0) := x"0001_000b";
   constant VSEC2_HDR                : std_logic_vector(31 downto 0) := x"0380_0002";

   signal sig_bus2ip_addr            : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
   signal sig_bus2ip_rnw             : std_logic;
   signal sig_bus2ip_ce              : std_logic_vector(2**4-1 downto 0);
   signal sig_bus2ip_ce_reg          : std_logic_vector(2**4-1 downto 0);
   signal sig_oob                    : std_logic;

begin

   IP2Bus_Error <= '0';

   process(Bus2IP_Addr)
      begin
         sig_bus2ip_ce <= (others => '0');
         sig_bus2ip_ce(conv_integer(Bus2IP_Addr(5 downto 2))) <= '1';
   end process;


    process(s_axi_aclk)
      begin
        if(rising_edge(s_axi_aclk)) then
          if(reset='0') then
            sig_register_bar_array <= (others=> (others => '0'));
            sig_register_bar_array(C_AXIBAR2PCIEBAR_0A-2) <=sig_axibar2pciebar_reset(0)( 0 to 31);
            sig_register_bar_array(C_AXIBAR2PCIEBAR_0B-2) <=sig_axibar2pciebar_reset(0)(32 to 63);
            sig_register_bar_array(C_AXIBAR2PCIEBAR_1A-2) <=sig_axibar2pciebar_reset(1)( 0 to 31);
            sig_register_bar_array(C_AXIBAR2PCIEBAR_1B-2) <=sig_axibar2pciebar_reset(1)(32 to 63);
            sig_register_bar_array(C_AXIBAR2PCIEBAR_2A-2) <=sig_axibar2pciebar_reset(2)( 0 to 31);
            sig_register_bar_array(C_AXIBAR2PCIEBAR_2B-2) <=sig_axibar2pciebar_reset(2)(32 to 63);
            sig_register_bar_array(C_AXIBAR2PCIEBAR_3A-2) <=sig_axibar2pciebar_reset(3)( 0 to 31);
            sig_register_bar_array(C_AXIBAR2PCIEBAR_3B-2) <=sig_axibar2pciebar_reset(3)(32 to 63);
            sig_register_bar_array(C_AXIBAR2PCIEBAR_4A-2) <=sig_axibar2pciebar_reset(4)( 0 to 31);
            sig_register_bar_array(C_AXIBAR2PCIEBAR_4B-2) <=sig_axibar2pciebar_reset(4)(32 to 63);
            sig_register_bar_array(C_AXIBAR2PCIEBAR_5A-2) <=sig_axibar2pciebar_reset(5)( 0 to 31);
            sig_register_bar_array(C_AXIBAR2PCIEBAR_5B-2) <=sig_axibar2pciebar_reset(5)(32 to 63);
            IP2Bus_RdAck               <= '0';
            IP2Bus_WrAck               <= '0';
            IP2Bus_Data                <= (others => '0');
            sig_bus2ip_rnw             <= '0';
            sig_bus2ip_addr            <= (others => '0');
            sig_bus2ip_ce_reg          <= (others => '0');
            sig_oob                    <= '0';
          else
            sig_bus2ip_ce_reg          <= sig_bus2ip_ce;

            IP2Bus_RdAck               <= '0';
            IP2Bus_WrAck               <= '0';
            IP2Bus_Data                <= (others => '0');
            case register_state is
              when IDLE =>
                sig_register_bar_array(0)   <= sig_register_bar_array(0);
		sig_register_bar_array(1)   <= sig_register_bar_array(1);
		if(Bus2IP_CS ='1') then
                   register_state           <= REG_ACCESS;
                   --if(conv_integer(Bus2IP_Addr(12 downto 10))=0) then
                      sig_oob               <= '0';
                   --else
                   --   sig_oob               <= '1';
                   --end if;
                end if;

              when REG_ACCESS =>
                sig_oob   <= sig_oob;
		-- Nam - FALSE branch will not be taken, impossible condition
                -- NAM / JRH Tool bug doesn't exclude the second condition. removed cov off item b 2. Moved cov off.
                -- coverage off -item c 1 -condrow 1 2
                if(bus2ip_CS ='1' and sig_oob='0') then
                    -----------------------------------------------------------------
                    -- Bridge Register Interface Here
                    -----------------------------------------------------------------
                      register_state        <= WAIT_CS;
                      IP2Bus_RdAck          <= Bus2IP_RNW;
                      IP2Bus_WrAck          <= not Bus2IP_RNW;
                      IP2Bus_Data           <= (others => '0');

                      
                      if(C_Include_Baroffset_Reg=1 and Sig_Bus2ip_Ce_Reg(C_VSEC2_CAP)='1') then
                        if(Bus2IP_RNW='0') then
                          null; --read only
                        else
                          Ip2bus_Data <= VSEC2_CAP;
                        end if;
                      end if;
                      if(C_Include_Baroffset_Reg=1 and Sig_Bus2ip_Ce_Reg(C_VSEC2_HDR)='1') then
                        if(Bus2IP_RNW='0') then
                          null; --read only
                        else
                          Ip2bus_Data <= VSEC2_HDR;
                        end if;
                      end if;

                      --translation for bar 0
                      if(C_Include_Baroffset_Reg=1 and Sig_Bus2ip_Ce_Reg(C_AXIBAR2PCIEBAR_0A)='1') then
                        -- Nam - C_AXIBAR_AS_ARRAY(0)=1 will always be TRUE
                        -- coverage off -item c 1 -condrow 2
                        if(Bus2IP_RNW='0' and C_AXIBAR_AS_ARRAY(0)=1) then
                          sig_register_bar_array(C_AXIBAR2PCIEBAR_0A-2) <= Bus2IP_Data(31 downto 0);
                        else
                          Ip2bus_Data <=sig_register_bar_array(C_AXIBAR2PCIEBAR_0A-2);
                        end if;
                      end if;
                      if(C_Include_Baroffset_Reg=1 and Sig_Bus2ip_Ce_Reg(C_AXIBAR2PCIEBAR_0B)='1') then
                        if(Bus2IP_RNW='0') then
                          sig_register_bar_array(C_AXIBAR2PCIEBAR_0B-2) <= Bus2IP_Data(31 downto 0);
                        else
                          Ip2bus_Data <=sig_register_bar_array(C_AXIBAR2PCIEBAR_0B-2);
                        end if;
                      end if;

                      --translation for bar 1
                      if(C_Include_Baroffset_Reg=1 and Sig_Bus2ip_Ce_Reg(C_AXIBAR2PCIEBAR_1A)='1' and C_AXIBAR_NUM>1)
                      then
                        if(Bus2IP_RNW='0' and C_AXIBAR_AS_ARRAY(1)=1) then
                          sig_register_bar_array(C_AXIBAR2PCIEBAR_1A-2) <= Bus2IP_Data(31 downto 0);
                        else
                          Ip2bus_Data <=sig_register_bar_array(C_AXIBAR2PCIEBAR_1A-2);
                        end if;
                      end if;
                      if(C_Include_Baroffset_reg=1 and Sig_Bus2ip_Ce_Reg(C_AXIBAR2PCIEBAR_1B)='1' and C_AXIBAR_NUM>1)
                      then
                        if(Bus2IP_RNW='0') then
                          sig_register_bar_array(C_AXIBAR2PCIEBAR_1B-2) <= Bus2IP_Data(31 downto 0);
                        else
                          Ip2bus_Data <=sig_register_bar_array(C_AXIBAR2PCIEBAR_1B-2);
                        end if;
                      end if;

                      --translation for bar 2
                      if(C_Include_Baroffset_reg=1 and Sig_Bus2ip_Ce_Reg(C_AXIBAR2PCIEBAR_2A)='1' and C_AXIBAR_NUM>2)
                      then
                        if(Bus2IP_RNW='0' and C_AXIBAR_AS_ARRAY(2)=1) then
                          sig_register_bar_array(C_AXIBAR2PCIEBAR_2A-2) <= Bus2IP_Data(31 downto 0);
                        else
                          Ip2bus_Data <=sig_register_bar_array(C_AXIBAR2PCIEBAR_2A-2);
                        end if;
                      end if;
                      if(C_Include_Baroffset_reg=1 and Sig_Bus2ip_Ce_Reg(C_AXIBAR2PCIEBAR_2B)='1' and C_AXIBAR_NUM>2)
                      then
                        if(Bus2IP_RNW='0') then
                          sig_register_bar_array(C_AXIBAR2PCIEBAR_2B-2) <= Bus2IP_Data(31 downto 0);
                        else
                          Ip2bus_Data <=sig_register_bar_array(C_AXIBAR2PCIEBAR_2B-2);
                        end if;
                      end if;

                      --translation for bar 3
                      if(C_Include_Baroffset_reg=1 and Sig_Bus2ip_Ce_Reg(C_AXIBAR2PCIEBAR_3A)='1' and C_AXIBAR_NUM>3)
                      then
                        if(Bus2IP_RNW='0' and C_AXIBAR_AS_ARRAY(3)=1) then
                          sig_register_bar_array(C_AXIBAR2PCIEBAR_3A-2) <= Bus2IP_Data(31 downto 0);
                        else
                          Ip2bus_Data <=sig_register_bar_array(C_AXIBAR2PCIEBAR_3A-2);
                        end if;
                      end if;
                      if(C_Include_Baroffset_reg=1 and Sig_Bus2ip_Ce_Reg(C_AXIBAR2PCIEBAR_3B)='1' and C_AXIBAR_NUM>3)
                      then
                        if(Bus2IP_RNW='0') then
                          sig_register_bar_array(C_AXIBAR2PCIEBAR_3B-2) <= Bus2IP_Data(31 downto 0);
                        else
                          Ip2bus_Data <=sig_register_bar_array(C_AXIBAR2PCIEBAR_3B-2);
                        end if;
                      end if;

                      --translation for bar 4
                      if(C_Include_Baroffset_reg=1 and Sig_Bus2ip_Ce_Reg(C_AXIBAR2PCIEBAR_4A)='1' and C_AXIBAR_NUM>4)
                      then
                        if(Bus2IP_RNW='0' and C_AXIBAR_AS_ARRAY(4)=1) then
                          sig_register_bar_array(C_AXIBAR2PCIEBAR_4A-2) <= Bus2IP_Data(31 downto 0);
                        else
                          Ip2bus_Data <=sig_register_bar_array(C_AXIBAR2PCIEBAR_4A-2);
                        end if;
                      end if;
                      if(C_Include_Baroffset_reg=1 and Sig_Bus2ip_Ce_Reg(C_AXIBAR2PCIEBAR_4B)='1' and C_AXIBAR_NUM>4)
                      then
                        if(Bus2IP_RNW='0') then
                          sig_register_bar_array(C_AXIBAR2PCIEBAR_4B-2) <= Bus2IP_Data(31 downto 0);
                        else
                          Ip2bus_Data <=sig_register_bar_array(C_AXIBAR2PCIEBAR_4B-2);
                        end if;
                      end if;

                      --translation for bar 5
                      if(C_Include_Baroffset_reg=1 and Sig_Bus2ip_Ce_Reg(C_AXIBAR2PCIEBAR_5A)='1' and C_AXIBAR_NUM>5)
                      then
                        if(Bus2IP_RNW='0' and C_AXIBAR_AS_ARRAY(5)=1) then
                          sig_register_bar_array(C_AXIBAR2PCIEBAR_5A-2) <= Bus2IP_Data(31 downto 0);
                        else
                          Ip2bus_Data <=sig_register_bar_array(C_AXIBAR2PCIEBAR_5A-2);
                        end if;
                      end if;
                      if(C_Include_Baroffset_reg=1 and Sig_Bus2ip_Ce_Reg(C_AXIBAR2PCIEBAR_5B)='1' and C_AXIBAR_NUM>5)
                      then
                        if(Bus2IP_RNW='0') then
                          sig_register_bar_array(C_AXIBAR2PCIEBAR_5B-2) <= Bus2IP_Data(31 downto 0);
                        else
                          Ip2bus_Data <=sig_register_bar_array(C_AXIBAR2PCIEBAR_5B-2);
                        end if;
                      end if;

                -- NAM / JRH Tool bug doesn't exclude the second condition. Moved cov off.
                -- coverage off
                else
                  --should only be here if the CS(0) is set and the
                  --address is not within range (aka out of bounds (oob))
                  if(sig_oob = '1') then
                    IP2Bus_WrAck          <= not Bus2IP_RNW;
                    IP2Bus_RdAck          <= Bus2IP_RNW;
                    register_state        <= WAIT_CS;
                  end if;
                  -- coverage on
                end if;
              when WAIT_CS =>
                sig_register_bar_array(0)   <= sig_register_bar_array(0);
		sig_register_bar_array(1)   <= sig_register_bar_array(1);
		sig_oob                  <= sig_oob;
		if(Bus2IP_CS ='0') then
                  register_state        <= IDLE;
                end if;

            end case;
          end if;
        end if;
    end process;


   --AXI to PCIe translation vectors
   -- Crazy looking code to map the generics to the correct registers based on
   -- BAR size (32 or 64bit addresses)
   process(sig_register_bar_array)
   begin
     for i in 0 to 5 loop
       if(i < C_AXIBAR_NUM) then
         if(C_AXIBAR_AS_ARRAY(i)=0) then
           --32bit bar
           sig_axibar2pciebar_array(i)(0  to 31) <= (others => '0');
           sig_axibar2pciebar_array(i)(32 to 63) <= sig_register_bar_array(C_AXIBAR2PCIEBAR_0A-2+i*2+1);
           sig_axibar2pciebar_reset(i)(0  to 31) <= (others => '0');
           sig_axibar2pciebar_reset(i)(32 to 63) <= C_AXIBAR2PCIEBAR_ARRAY(i*2+1)(32 to 63);
         else
           --64bit bar
           sig_axibar2pciebar_array(i)(0  to 31) <= sig_register_bar_array(C_AXIBAR2PCIEBAR_0A-2+i*2);
           sig_axibar2pciebar_array(i)(32 to 63) <= sig_register_bar_array(C_AXIBAR2PCIEBAR_0A-2+i*2+1);
           sig_axibar2pciebar_reset(i)(0  to 31) <= C_AXIBAR2PCIEBAR_ARRAY(i*2)(32 to 63);
           sig_axibar2pciebar_reset(i)(32 to 63) <= C_AXIBAR2PCIEBAR_ARRAY(i*2+1)(32 to 63);
         end if;
       else
         sig_axibar2pciebar_array(i) <= (others => '0');
         sig_axibar2pciebar_reset(i) <= (others => '0');
       end if;
     end loop;
   end process;

   axibar2pciebar0 <= sig_axibar2pciebar_array(0) when C_INCLUDE_BAROFFSET_REG>0
      else x"0000000000000000"+C_AXIBAR2PCIEBAR_0;
   axibar2pciebar1 <= sig_axibar2pciebar_array(1) when C_INCLUDE_BAROFFSET_REG>0
      else x"0000000000000000"+C_AXIBAR2PCIEBAR_1;
   axibar2pciebar2 <= sig_axibar2pciebar_array(2) when C_INCLUDE_BAROFFSET_REG>0
      else x"0000000000000000"+C_AXIBAR2PCIEBAR_2;
   axibar2pciebar3 <= sig_axibar2pciebar_array(3) when C_INCLUDE_BAROFFSET_REG>0
      else x"0000000000000000"+C_AXIBAR2PCIEBAR_3;
   axibar2pciebar4 <= sig_axibar2pciebar_array(4) when C_INCLUDE_BAROFFSET_REG>0
      else x"0000000000000000"+C_AXIBAR2PCIEBAR_4;
   axibar2pciebar5 <= sig_axibar2pciebar_array(5) when C_INCLUDE_BAROFFSET_REG>0
      else x"0000000000000000"+C_AXIBAR2PCIEBAR_5;

end architecture;
