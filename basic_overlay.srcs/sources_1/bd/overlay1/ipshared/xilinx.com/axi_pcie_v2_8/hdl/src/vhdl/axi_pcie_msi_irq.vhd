------------------------------------------------------------------------------------------------------------------------
--
--
--    File:       axi_pcie_msi_irq.vhd
--
--
--*--------------------------------------------------------------------------------------------------------------------*
--*                                                                                                                    *
--*      revision history:                                                                                             *
--*                                                                                                                    *
--*      31.10.2013  RE       - Initial revision                                                                       *
--*                                                                                                                    *
--*--------------------------------------------------------------------------------------------------------------------*


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_misc.ALL;
USE ieee.numeric_std.ALL;


PACKAGE axi_pcie_msi_irq_pkg IS

  COMPONENT axi_pcie_msi_irq
    GENERIC(
      g_data_width     : natural range 1 TO 64 := 32
			);
    PORT(
      COM_ICLK_I             : IN    std_logic;
      COM_CCLK_I             : IN    std_logic;
      COM_SYSRST_I           : IN    std_logic;
      
      MSI_MSG_RCVD_I         : IN    std_logic;
      MSI_IRQ_NUM_I          : IN    std_logic_vector(15 DOWNTO  0);
      
      MSI_IRQ_OVERFLOW_REG_O : OUT   std_logic_vector(g_data_width-1 DOWNTO  0);
      MSI_IRQ_UNDERRUN_REG_O : OUT   std_logic_vector(g_data_width-1 DOWNTO  0);
      
      IRQ_CLR_I              : IN    std_logic;
      IRQ_CLR_REG_I          : IN    std_logic_vector(g_data_width-1 DOWNTO  0);
      
      IRQ_STATUS_REG_O       : OUT   std_logic_vector(g_data_width-1 DOWNTO  0)
      );
  END COMPONENT axi_pcie_msi_irq;

END PACKAGE axi_pcie_msi_irq_pkg;


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


ENTITY axi_pcie_msi_irq IS
  GENERIC(
    g_data_width : natural range 1 TO 64 := 32
    );
  PORT(
    COM_ICLK_I             : IN    std_logic;
    COM_CCLK_I             : IN    std_logic;
    COM_SYSRST_I           : IN    std_logic;
    
    MSI_MSG_RCVD_I         : IN    std_logic;
    MSI_IRQ_NUM_I          : IN    std_logic_vector(15 DOWNTO  0);
    
    MSI_IRQ_OVERFLOW_REG_O : OUT   std_logic_vector(g_data_width-1 DOWNTO  0);
    MSI_IRQ_UNDERRUN_REG_O : OUT   std_logic_vector(g_data_width-1 DOWNTO  0);
    
    IRQ_CLR_I              : IN    std_logic;
    IRQ_CLR_REG_I          : IN    std_logic_vector(g_data_width-1 DOWNTO  0);
    
    IRQ_STATUS_REG_O       : OUT   std_logic_vector(g_data_width-1 DOWNTO  0)
    );
END ENTITY axi_pcie_msi_irq;


ARCHITECTURE behavior OF axi_pcie_msi_irq IS

  CONSTANT c_data_width : natural range 1 TO 64 := g_data_width;
  
  SIGNAL s_msi_irq_line : std_logic_vector(g_data_width-1 DOWNTO  0);
  SIGNAL s_msi_irq_num  : unsigned(15 DOWNTO  0);
  SIGNAL s_rst_cda      : std_logic_vector(g_data_width-1 DOWNTO  0);
  SIGNAL s_rst_cda_1    : std_logic_vector(g_data_width-1 DOWNTO  0);
  SIGNAL s_rst_cdb      : std_logic_vector(g_data_width-1 DOWNTO  0);
  SIGNAL s_rst_cdb_1    : std_logic_vector(g_data_width-1 DOWNTO  0);
  SIGNAL s_com_sysrst_1 : std_logic;
  SIGNAL s_com_sysrst   : std_logic;
  SIGNAL s_arst         : std_logic_vector(g_data_width-1 DOWNTO  0);
  
  SIGNAL s_msi_irq_pulse_cda : std_logic_vector(g_data_width-1 DOWNTO  0);
  SIGNAL s_msi_irq_pulse_cdb : std_logic_vector(g_data_width-1 DOWNTO  0);
  
  TYPE t_std_logic_vector_2DW0 IS ARRAY (natural range <>) OF std_logic_vector( 2 DOWNTO  0);
  SIGNAL s_msi_irq_pulse_cda_dlyd : t_std_logic_vector_2DW0(g_data_width-1 DOWNTO  0);
  
  TYPE t_unsigned_vector_3DW0 IS ARRAY (natural range <>) OF unsigned( 3 DOWNTO  0);
  SIGNAL s_msi_irq_cnt : t_unsigned_vector_3DW0(g_data_width-1 DOWNTO  0);
  
  SIGNAL s_msi_irq_clr_pulse    : std_logic_vector(g_data_width-1 DOWNTO  0);
  SIGNAL s_msi_irq_cnt_overflow : std_logic_vector(g_data_width-1 DOWNTO  0);
  SIGNAL s_msi_irq_cnt_underrun : std_logic_vector(g_data_width-1 DOWNTO  0);
  SIGNAL s_msi_irq_status       : std_logic_vector(g_data_width-1 DOWNTO  0);
  
  
BEGIN

  s_msi_irq_num <= unsigned(MSI_IRQ_NUM_I);
  
  COM_SYSRST: PROCESS(COM_CCLK_I, COM_SYSRST_I)
  BEGIN
    IF (COM_SYSRST_I = '1') THEN
      s_com_sysrst_1 <= '1';
      s_com_sysrst   <= '1';
    ELSE
      IF rising_edge(COM_CCLK_I) THEN
        s_com_sysrst_1 <= '0';
        s_com_sysrst   <= s_com_sysrst_1;
      END IF;
    END IF;
  END PROCESS COM_SYSRST;
  
  
  G_MSI_IRQ_CLR: FOR i IN g_data_width-1 DOWNTO 0 GENERATE
    s_msi_irq_clr_pulse(i) <= IRQ_CLR_REG_I(i) AND IRQ_CLR_I;
  END GENERATE G_MSI_IRQ_CLR;
  
  
  G_MSI_IRQ_LINE: FOR i IN g_data_width-1 DOWNTO 0 GENERATE
  
    PROCESS(COM_ICLK_I)
    BEGIN
      IF rising_edge(COM_ICLK_I) THEN
        IF (MSI_MSG_RCVD_I = '1' AND
            s_msi_irq_num( 4 DOWNTO 0) = TO_UNSIGNED(i, 5)
           ) THEN
          s_msi_irq_line(i) <= '1';
        ELSE
          s_msi_irq_line(i) <= '0';
        END IF;
      END IF;
    END PROCESS;
    
  END GENERATE G_MSI_IRQ_LINE;
  
  
  G_MSI_IRQ_PACD: FOR i IN g_data_width-1 DOWNTO 0 GENERATE
    
    TFF: PROCESS(COM_ICLK_I, s_rst_cda(i))
    BEGIN
      IF rising_edge(COM_ICLK_I) THEN
        IF (s_rst_cda(i) = '1') THEN
          s_msi_irq_pulse_cda(i) <= '0';
        ELSE
          s_msi_irq_pulse_cda(i) <= s_msi_irq_pulse_cda(i) XOR s_msi_irq_line(i);
        END IF;
      END IF;
    END PROCESS TFF;
    
    DFF: PROCESS(COM_CCLK_I, s_rst_cdb(i))
    BEGIN
      IF rising_edge(COM_CCLK_I) THEN
        IF (s_rst_cdb(i) = '1') THEN
          s_msi_irq_pulse_cda_dlyd(i) <= (OTHERS => '0');
        ELSE
          s_msi_irq_pulse_cda_dlyd(i) <= s_msi_irq_pulse_cda_dlyd(i)(s_msi_irq_pulse_cda_dlyd(i)'high-1 DOWNTO  0) & s_msi_irq_pulse_cda(i);
        END IF;
      END IF;
    END PROCESS DFF;
    
    s_arst(i)              <= s_msi_irq_pulse_cda_dlyd(i)(s_msi_irq_pulse_cda_dlyd(i)'high) OR COM_SYSRST_I;
    s_msi_irq_pulse_cdb(i) <= s_msi_irq_pulse_cda_dlyd(i)(s_msi_irq_pulse_cda_dlyd(i)'high) XOR s_msi_irq_pulse_cda_dlyd(i)(s_msi_irq_pulse_cda_dlyd(i)'high-1);
    
    
    RST_TFF: PROCESS(COM_ICLK_I, s_arst(i))
    BEGIN
      IF (s_arst(i) = '1') THEN
        s_rst_cda_1(i) <= '1';
        s_rst_cda(i)   <= '1';
      ELSE
        IF rising_edge(COM_ICLK_I) THEN
          s_rst_cda_1(i) <= '0';
          s_rst_cda(i)   <= s_rst_cda_1(i);
        END IF;
      END IF;
    END PROCESS RST_TFF;
    
    RST_DFF: PROCESS(COM_CCLK_I, s_arst(i))
    BEGIN
      IF (s_arst(i) = '1') THEN
        s_rst_cdb_1(i) <= '1';
        s_rst_cdb(i)   <= '1';
      ELSE
        IF rising_edge(COM_CCLK_I) THEN
          s_rst_cdb_1(i) <= '0';
          s_rst_cdb(i)   <= s_rst_cdb_1(i);
        END IF;
      END IF;
    END PROCESS RST_DFF;
        
  END GENERATE G_MSI_IRQ_PACD;
  
  
  G_MSI_IRQ_CNT: FOR i IN g_data_width-1 DOWNTO  0 GENERATE
  
    MSI_IRQ_CNT: PROCESS(COM_CCLK_I, s_com_sysrst)
    BEGIN
      IF (s_com_sysrst = '1') THEN
        s_msi_irq_cnt(i)          <= to_unsigned(0, 4);
        s_msi_irq_cnt_overflow(i) <= '0';
        s_msi_irq_cnt_underrun(i) <= '0';
        s_msi_irq_status(i)       <= '0';
      ELSE
        IF rising_edge(COM_CCLK_I) THEN
          IF (s_msi_irq_pulse_cdb(i) = '1' AND s_msi_irq_clr_pulse(i) = '1') THEN
            s_msi_irq_cnt(i) <= s_msi_irq_cnt(i);
          ELSIF (s_msi_irq_pulse_cdb(i) = '1') THEN
            IF (s_msi_irq_cnt(i) < to_unsigned(15, 4)) THEN
              s_msi_irq_cnt(i)          <= s_msi_irq_cnt(i) + to_unsigned(1, 4);
              s_msi_irq_cnt_underrun(i) <= '0';
              s_msi_irq_status(i)       <= '1';
            ELSE
              s_msi_irq_cnt(i)          <= s_msi_irq_cnt(i);
              s_msi_irq_cnt_overflow(i) <= '1';
            END IF;
          ELSIF (s_msi_irq_clr_pulse(i) = '1') THEN
            IF (s_msi_irq_cnt(i) > to_unsigned(0, 4)) THEN
              s_msi_irq_cnt(i)          <= s_msi_irq_cnt(i) - to_unsigned(1, 4);
              s_msi_irq_cnt_overflow(i) <= '0';
              IF (s_msi_irq_cnt(i) = to_unsigned(1, 4)) THEN
                s_msi_irq_status(i) <= '0';
              ELSE
                s_msi_irq_status(i) <= s_msi_irq_status(i);
              END IF;
            ELSE
              s_msi_irq_cnt(i)          <= s_msi_irq_cnt(i);
              s_msi_irq_cnt_underrun(i) <= '1';
            END IF;
          END IF;
        END IF;
      END IF;
    END PROCESS MSI_IRQ_CNT;
    
    MSI_IRQ_OVERFLOW_REG_O(i) <= s_msi_irq_cnt_overflow(i);
    MSI_IRQ_UNDERRUN_REG_O(i) <= s_msi_irq_cnt_underrun(i);
    
  END GENERATE G_MSI_IRQ_CNT;
  
  
  IRQ_STATUS_REG_O <= s_msi_irq_status;
  
   
END ARCHITECTURE behavior;
