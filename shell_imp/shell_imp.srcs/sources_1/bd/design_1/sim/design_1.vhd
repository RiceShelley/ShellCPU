--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Mon Nov  2 19:24:02 2020
--Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_gen_imp_1W5H0XW is
  port (
    CLK100MHZ : in STD_LOGIC;
    CPU_CLK : out STD_LOGIC;
    c : out STD_LOGIC;
    clk_100Mhz : out STD_LOGIC;
    sig_in : in STD_LOGIC
  );
end clock_gen_imp_1W5H0XW;

architecture STRUCTURE of clock_gen_imp_1W5H0XW is
  component design_1_and_gate_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : out STD_LOGIC
  );
  end component design_1_and_gate_0_0;
  component design_1_sync_extern_0_0 is
  port (
    clk : in STD_LOGIC;
    sig_in : in STD_LOGIC;
    sig_out : out STD_LOGIC
  );
  end component design_1_sync_extern_0_0;
  component design_1_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    CPU_CLK : out STD_LOGIC;
    CLK100Mhz : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  signal CLK100MHZ_1 : STD_LOGIC;
  signal and_gate_c : STD_LOGIC;
  signal b_1 : STD_LOGIC;
  signal clk_wiz_CLK100Mhz : STD_LOGIC;
  signal sig_in_1 : STD_LOGIC;
  signal sync_extern_sig_out : STD_LOGIC;
begin
  CLK100MHZ_1 <= CLK100MHZ;
  CPU_CLK <= b_1;
  c <= and_gate_c;
  clk_100Mhz <= clk_wiz_CLK100Mhz;
  sig_in_1 <= sig_in;
and_gate: component design_1_and_gate_0_0
     port map (
      a => sync_extern_sig_out,
      b => b_1,
      c => and_gate_c
    );
clk_wiz: component design_1_clk_wiz_0_0
     port map (
      CLK100Mhz => clk_wiz_CLK100Mhz,
      CPU_CLK => b_1,
      clk_in1 => CLK100MHZ_1
    );
sync_extern: component design_1_sync_extern_0_0
     port map (
      clk => b_1,
      sig_in => sig_in_1,
      sig_out => sync_extern_sig_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mem_maped_uart_imp_8888OQ is
  port (
    clk : in STD_LOGIC;
    clk1 : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx_buff : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_in : in STD_LOGIC;
    sig_in1 : in STD_LOGIC;
    sig_out : out STD_LOGIC;
    tx_buff : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC
  );
end mem_maped_uart_imp_8888OQ;

architecture STRUCTURE of mem_maped_uart_imp_8888OQ is
  component design_1_sync_extern_0_4 is
  port (
    clk : in STD_LOGIC;
    sig_in : in STD_LOGIC;
    sig_out : out STD_LOGIC
  );
  end component design_1_sync_extern_0_4;
  component design_1_sync_extern_1_1 is
  port (
    clk : in STD_LOGIC;
    sig_in : in STD_LOGIC;
    sig_out : out STD_LOGIC
  );
  end component design_1_sync_extern_1_1;
  component design_1_sync_extern_2_0 is
  port (
    clk : in STD_LOGIC;
    sig_in : in STD_LOGIC;
    sig_out : out STD_LOGIC
  );
  end component design_1_sync_extern_2_0;
  component design_1_sync_byte_0_0 is
  port (
    clk : in STD_LOGIC;
    byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stable_byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_sync_byte_0_0;
  component design_1_sync_byte_1_0 is
  port (
    clk : in STD_LOGIC;
    byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stable_byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_sync_byte_1_0;
  component design_1_uart_controller_0_0 is
  port (
    clk : in STD_LOGIC;
    tx_buff : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_buff : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_ready : in STD_LOGIC;
    tx_ready : in STD_LOGIC;
    tx_start_trans : out STD_LOGIC;
    tx_buff_data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tx_buff_wr : in STD_LOGIC
  );
  end component design_1_uart_controller_0_0;
  signal clk1_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal data_in_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rx_buff_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_in1_1 : STD_LOGIC;
  signal sig_in_1 : STD_LOGIC;
  signal sync_byte_0_stable_word : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sync_byte_1_stable_word : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sync_extern_0_sig_out : STD_LOGIC;
  signal sync_extern_1_sig_out : STD_LOGIC;
  signal sync_extern_2_sig_out : STD_LOGIC;
  signal uart_controller_tx_buff : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal uart_controller_tx_start_trans : STD_LOGIC;
  signal wr_en_1 : STD_LOGIC;
begin
  clk1_1 <= clk1;
  clk_1 <= clk;
  data_in_1(15 downto 0) <= data_in(15 downto 0);
  rx_buff_1(7 downto 0) <= rx_buff(7 downto 0);
  sig_in1_1 <= sig_in1;
  sig_in_1 <= sig_in;
  sig_out <= sync_extern_0_sig_out;
  tx_buff(7 downto 0) <= sync_byte_1_stable_word(7 downto 0);
  wr_en_1 <= wr_en;
sync_byte_0: component design_1_sync_byte_0_0
     port map (
      byte(7 downto 0) => rx_buff_1(7 downto 0),
      clk => clk_1,
      stable_byte(7 downto 0) => sync_byte_0_stable_word(7 downto 0)
    );
sync_byte_1: component design_1_sync_byte_1_0
     port map (
      byte(7 downto 0) => uart_controller_tx_buff(7 downto 0),
      clk => clk1_1,
      stable_byte(7 downto 0) => sync_byte_1_stable_word(7 downto 0)
    );
sync_extern_0: component design_1_sync_extern_0_4
     port map (
      clk => clk1_1,
      sig_in => uart_controller_tx_start_trans,
      sig_out => sync_extern_0_sig_out
    );
sync_extern_1: component design_1_sync_extern_1_1
     port map (
      clk => clk_1,
      sig_in => sig_in_1,
      sig_out => sync_extern_1_sig_out
    );
sync_extern_2: component design_1_sync_extern_2_0
     port map (
      clk => clk_1,
      sig_in => sig_in1_1,
      sig_out => sync_extern_2_sig_out
    );
uart_controller: component design_1_uart_controller_0_0
     port map (
      clk => clk_1,
      rx_buff(7 downto 0) => sync_byte_0_stable_word(7 downto 0),
      rx_ready => sync_extern_1_sig_out,
      tx_buff(7 downto 0) => uart_controller_tx_buff(7 downto 0),
      tx_buff_data_in(15 downto 0) => data_in_1(15 downto 0),
      tx_buff_wr => wr_en_1,
      tx_ready => sync_extern_2_sig_out,
      tx_start_trans => uart_controller_tx_start_trans
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity programmer_imp_1AUNZS1 is
  port (
    UART_TXD_IN : in STD_LOGIC;
    clk : in STD_LOGIC;
    clk1 : in STD_LOGIC;
    cpu_clk_en : out STD_LOGIC;
    rst : out STD_LOGIC;
    sig_out : out STD_LOGIC;
    sig_out1 : out STD_LOGIC;
    sig_out2 : out STD_LOGIC;
    sync_word : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sync_word1 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end programmer_imp_1AUNZS1;

architecture STRUCTURE of programmer_imp_1AUNZS1 is
  component design_1_uart_0_2 is
  port (
    clk : in STD_LOGIC;
    rx : in STD_LOGIC;
    rx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_ready : out STD_LOGIC;
    tx_buff : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_start_trans : in STD_LOGIC;
    tx : out STD_LOGIC;
    tx_ready : out STD_LOGIC
  );
  end component design_1_uart_0_2;
  component design_1_sync_extern_1_0 is
  port (
    clk : in STD_LOGIC;
    sig_in : in STD_LOGIC;
    sig_out : out STD_LOGIC
  );
  end component design_1_sync_extern_1_0;
  component design_1_sync_extern_0_1 is
  port (
    clk : in STD_LOGIC;
    sig_in : in STD_LOGIC;
    sig_out : out STD_LOGIC
  );
  end component design_1_sync_extern_0_1;
  component design_1_sync_extern_0_2 is
  port (
    clk : in STD_LOGIC;
    sig_in : in STD_LOGIC;
    sig_out : out STD_LOGIC
  );
  end component design_1_sync_extern_0_2;
  component design_1_sync_word_0_0 is
  port (
    clk : in STD_LOGIC;
    word : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stable_word : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_sync_word_0_0;
  component design_1_sync_word_1_0 is
  port (
    clk : in STD_LOGIC;
    word : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stable_word : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_sync_word_1_0;
  component design_1_sync_extern_0_3 is
  port (
    clk : in STD_LOGIC;
    sig_in : in STD_LOGIC;
    sig_out : out STD_LOGIC
  );
  end component design_1_sync_extern_0_3;
  component design_1_programmer_0_0 is
  port (
    clk : in STD_LOGIC;
    rx_ready : in STD_LOGIC;
    tx_ready : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_buff : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_start_trans : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    prog_mem_wr : out STD_LOGIC;
    data_mem_wr : out STD_LOGIC;
    prog_mode : out STD_LOGIC;
    cpu_clk_en : out STD_LOGIC;
    cpu_rst : out STD_LOGIC
  );
  end component design_1_programmer_0_0;
  signal UART_TXD_IN_1 : STD_LOGIC;
  signal clk1_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal sync_data_to_cpu_clk_stable_word : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sync_extern_0_sig_out : STD_LOGIC;
  signal sync_extern_0_sig_out1 : STD_LOGIC;
  signal sync_extern_1_sig_out : STD_LOGIC;
  signal sync_pc_rst_to_cpu_clk_sig_out : STD_LOGIC;
  signal sync_word_to_CPU_clk_sync_word : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal uart_programmer_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal uart_programmer_cpu_clk_en : STD_LOGIC;
  signal uart_programmer_cpu_rst : STD_LOGIC;
  signal uart_programmer_data_mem_wr : STD_LOGIC;
  signal uart_programmer_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal uart_programmer_prog_mem_wr : STD_LOGIC;
  signal uart_programmer_prog_mode : STD_LOGIC;
  signal uart_rx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal uart_rx_ready : STD_LOGIC;
  signal uart_tx_ready : STD_LOGIC;
  signal NLW_uart_tx_UNCONNECTED : STD_LOGIC;
  signal NLW_uart_programmer_tx_start_trans_UNCONNECTED : STD_LOGIC;
  signal NLW_uart_programmer_tx_buff_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  UART_TXD_IN_1 <= UART_TXD_IN;
  clk1_1 <= clk1;
  clk_1 <= clk;
  cpu_clk_en <= uart_programmer_cpu_clk_en;
  rst <= sync_pc_rst_to_cpu_clk_sig_out;
  sig_out <= sync_extern_1_sig_out;
  sig_out1 <= sync_extern_0_sig_out;
  sig_out2 <= sync_extern_0_sig_out1;
  sync_word(15 downto 0) <= sync_word_to_CPU_clk_sync_word(15 downto 0);
  sync_word1(15 downto 0) <= sync_data_to_cpu_clk_stable_word(15 downto 0);
sync_addr_to_CPU_clk: component design_1_sync_word_0_0
     port map (
      clk => clk1_1,
      stable_word(15 downto 0) => sync_word_to_CPU_clk_sync_word(15 downto 0),
      word(15 downto 0) => uart_programmer_addr(15 downto 0)
    );
sync_data_mem_wr_to_cpu_clk: component design_1_sync_extern_0_1
     port map (
      clk => clk1_1,
      sig_in => uart_programmer_data_mem_wr,
      sig_out => sync_extern_0_sig_out
    );
sync_data_to_cpu_clk: component design_1_sync_word_1_0
     port map (
      clk => clk1_1,
      stable_word(15 downto 0) => sync_data_to_cpu_clk_stable_word(15 downto 0),
      word(15 downto 0) => uart_programmer_dout(15 downto 0)
    );
sync_pc_rst_to_cpu_clk: component design_1_sync_extern_0_3
     port map (
      clk => clk1_1,
      sig_in => uart_programmer_cpu_rst,
      sig_out => sync_pc_rst_to_cpu_clk_sig_out
    );
sync_prog_mem_wr_to_cpu_clk: component design_1_sync_extern_0_2
     port map (
      clk => clk1_1,
      sig_in => uart_programmer_prog_mem_wr,
      sig_out => sync_extern_0_sig_out1
    );
sync_prog_mode_to_CPU_clk: component design_1_sync_extern_1_0
     port map (
      clk => clk1_1,
      sig_in => uart_programmer_prog_mode,
      sig_out => sync_extern_1_sig_out
    );
uart: component design_1_uart_0_2
     port map (
      clk => clk_1,
      rx => UART_TXD_IN_1,
      rx_data(7 downto 0) => uart_rx_data(7 downto 0),
      rx_ready => uart_rx_ready,
      tx => NLW_uart_tx_UNCONNECTED,
      tx_buff(7 downto 0) => B"00000000",
      tx_ready => uart_tx_ready,
      tx_start_trans => '0'
    );
uart_programmer: component design_1_programmer_0_0
     port map (
      addr(15 downto 0) => uart_programmer_addr(15 downto 0),
      clk => clk_1,
      cpu_clk_en => uart_programmer_cpu_clk_en,
      cpu_rst => uart_programmer_cpu_rst,
      data_mem_wr => uart_programmer_data_mem_wr,
      din(7 downto 0) => B"00000000",
      dout(15 downto 0) => uart_programmer_dout(15 downto 0),
      prog_mem_wr => uart_programmer_prog_mem_wr,
      prog_mode => uart_programmer_prog_mode,
      rx_data(7 downto 0) => uart_rx_data(7 downto 0),
      rx_ready => uart_rx_ready,
      tx_buff(7 downto 0) => NLW_uart_programmer_tx_buff_UNCONNECTED(7 downto 0),
      tx_ready => uart_tx_ready,
      tx_start_trans => NLW_uart_programmer_tx_start_trans_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seg_display_imp_KDOS65 is
  port (
    clk_in : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pc_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg_sel : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end seg_display_imp_KDOS65;

architecture STRUCTURE of seg_display_imp_KDOS65 is
  component design_1_display_ctrl_0_0 is
  port (
    clk : in STD_LOGIC;
    pc_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_display_ctrl_0_0;
  component design_1_nexys_7seg_0_0 is
  port (
    seg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg_sel : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_nexys_7seg_0_0;
  component design_1_clk_div_0_0 is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  end component design_1_clk_div_0_0;
  signal Net : STD_LOGIC;
  signal clk_in_1 : STD_LOGIC;
  signal data_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal display_ctrl_0_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal nexys_7seg_0_seg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal nexys_7seg_0_seg_sel : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pc_in_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  clk_in_1 <= clk_in;
  data_1(15 downto 0) <= data(15 downto 0);
  pc_in_1(15 downto 0) <= pc_in(15 downto 0);
  seg(7 downto 0) <= nexys_7seg_0_seg(7 downto 0);
  seg_sel(7 downto 0) <= nexys_7seg_0_seg_sel(7 downto 0);
clk_div_0: component design_1_clk_div_0_0
     port map (
      clk_in => clk_in_1,
      clk_out => Net
    );
display_ctrl_0: component design_1_display_ctrl_0_0
     port map (
      clk => Net,
      data(15 downto 0) => data_1(15 downto 0),
      data_out(31 downto 0) => display_ctrl_0_data_out(31 downto 0),
      pc_in(15 downto 0) => pc_in_1(15 downto 0)
    );
nexys_7seg_0: component design_1_nexys_7seg_0_0
     port map (
      clk => Net,
      data(31 downto 0) => display_ctrl_0_data_out(31 downto 0),
      seg(7 downto 0) => nexys_7seg_0_seg(7 downto 0),
      seg_sel(7 downto 0) => nexys_7seg_0_seg_sel(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity memory_imp_1RJ1PXL is
  port (
    clk : in STD_LOGIC;
    clk1 : in STD_LOGIC;
    cur_ins : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ins_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_addr1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_data1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_mode : in STD_LOGIC;
    prog_wr : in STD_LOGIC;
    prog_wr1 : in STD_LOGIC;
    rx_buff : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_in : in STD_LOGIC;
    sig_in1 : in STD_LOGIC;
    sig_out : out STD_LOGIC;
    stack_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_wr_en : in STD_LOGIC;
    tx_buff : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_en : in STD_LOGIC
  );
end memory_imp_1RJ1PXL;

architecture STRUCTURE of memory_imp_1RJ1PXL is
  component design_1_prog_mem_0_0 is
  port (
    clk : in STD_LOGIC;
    ins_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_wr : in STD_LOGIC;
    cur_ins : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_prog_mem_0_0;
  component design_1_data_mem_0_0 is
  port (
    clk : in STD_LOGIC;
    rd_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_wr_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    prog_wr : in STD_LOGIC;
    prog_mode : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_data_mem_0_0;
  signal clk1_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal data_in_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_mem_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_mem_stack_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ins_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mem_maped_uart_sig_out : STD_LOGIC;
  signal prog_addr1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal prog_data1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal prog_mem_cur_ins : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal prog_mode_1 : STD_LOGIC;
  signal prog_wr1_1 : STD_LOGIC;
  signal prog_wr_1 : STD_LOGIC;
  signal rx_buff_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_in1_1 : STD_LOGIC;
  signal sig_in_1 : STD_LOGIC;
  signal stack_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal stack_wr_en_1 : STD_LOGIC;
  signal uart_controller_0_tx_buff : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wr_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal wr_en_1 : STD_LOGIC;
begin
  clk1_1 <= clk1;
  clk_1 <= clk;
  cur_ins(15 downto 0) <= prog_mem_cur_ins(15 downto 0);
  data_in_1(15 downto 0) <= data_in(15 downto 0);
  data_out(15 downto 0) <= data_mem_data_out(15 downto 0);
  ins_addr_1(15 downto 0) <= ins_addr(15 downto 0);
  prog_addr1_1(15 downto 0) <= prog_addr1(15 downto 0);
  prog_data1_1(15 downto 0) <= prog_data1(15 downto 0);
  prog_mode_1 <= prog_mode;
  prog_wr1_1 <= prog_wr1;
  prog_wr_1 <= prog_wr;
  rx_buff_1(7 downto 0) <= rx_buff(7 downto 0);
  sig_in1_1 <= sig_in1;
  sig_in_1 <= sig_in;
  sig_out <= mem_maped_uart_sig_out;
  stack_addr_1(15 downto 0) <= stack_addr(15 downto 0);
  stack_out(15 downto 0) <= data_mem_stack_out(15 downto 0);
  stack_wr_en_1 <= stack_wr_en;
  tx_buff(7 downto 0) <= uart_controller_0_tx_buff(7 downto 0);
  wr_addr_1(15 downto 0) <= wr_addr(15 downto 0);
  wr_en_1 <= wr_en;
data_mem: component design_1_data_mem_0_0
     port map (
      clk => clk_1,
      data_in(15 downto 0) => data_in_1(15 downto 0),
      data_out(15 downto 0) => data_mem_data_out(15 downto 0),
      prog_addr(15 downto 0) => prog_addr1_1(15 downto 0),
      prog_data(15 downto 0) => prog_data1_1(15 downto 0),
      prog_mode => prog_mode_1,
      prog_wr => prog_wr1_1,
      rd_addr(15 downto 0) => data_in_1(15 downto 0),
      stack_addr(15 downto 0) => stack_addr_1(15 downto 0),
      stack_out(15 downto 0) => data_mem_stack_out(15 downto 0),
      stack_wr_en => stack_wr_en_1,
      wr_addr(15 downto 0) => wr_addr_1(15 downto 0),
      wr_en => wr_en_1
    );
mem_maped_uart: entity work.mem_maped_uart_imp_8888OQ
     port map (
      clk => clk_1,
      clk1 => clk1_1,
      data_in(15 downto 0) => data_in_1(15 downto 0),
      rx_buff(7 downto 0) => rx_buff_1(7 downto 0),
      sig_in => sig_in_1,
      sig_in1 => sig_in1_1,
      sig_out => mem_maped_uart_sig_out,
      tx_buff(7 downto 0) => uart_controller_0_tx_buff(7 downto 0),
      wr_en => wr_en_1
    );
prog_mem: component design_1_prog_mem_0_0
     port map (
      clk => clk_1,
      cur_ins(15 downto 0) => prog_mem_cur_ins(15 downto 0),
      ins_addr(15 downto 0) => ins_addr_1(15 downto 0),
      prog_addr(15 downto 0) => prog_addr1_1(15 downto 0),
      prog_data(15 downto 0) => prog_data1_1(15 downto 0),
      prog_wr => prog_wr_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    CLK100MHZ : in STD_LOGIC;
    LED16_G : out STD_LOGIC;
    LED17_B : out STD_LOGIC;
    UART_RXD_OUT : out STD_LOGIC;
    UART_TXD_IN : in STD_LOGIC;
    inr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    outvalue : out STD_LOGIC_VECTOR ( 15 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg_sel : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=29,numReposBlks=24,numNonXlnxBlks=0,numHierBlks=5,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=23,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_uart_0_0 is
  port (
    clk : in STD_LOGIC;
    rx : in STD_LOGIC;
    rx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_ready : out STD_LOGIC;
    tx_buff : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_start_trans : in STD_LOGIC;
    tx : out STD_LOGIC;
    tx_ready : out STD_LOGIC
  );
  end component design_1_uart_0_0;
  component design_1_shell_cpu_top_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_mem : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_mem_wr : out STD_LOGIC;
    from_stack : in STD_LOGIC_VECTOR ( 15 downto 0 );
    inr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ins_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    outvalue : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_ptr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_wr : out STD_LOGIC
  );
  end component design_1_shell_cpu_top_0_0;
  signal CLK100MHZ_2 : STD_LOGIC;
  signal UART_TXD_IN_1 : STD_LOGIC;
  signal async_rst_1 : STD_LOGIC;
  signal clk_2 : STD_LOGIC;
  signal clock_gen_c : STD_LOGIC;
  signal clock_gen_clk_100Mhz : STD_LOGIC;
  signal cpu_uart_rx_ready : STD_LOGIC;
  signal cpu_uart_tx_ready : STD_LOGIC;
  signal inr_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal memory_cur_ins : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal memory_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal memory_sig_out : STD_LOGIC;
  signal memory_stack_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal memory_tx_buff : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal prog_addr1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal prog_data1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal prog_mode_2 : STD_LOGIC;
  signal prog_wr1_1 : STD_LOGIC;
  signal programmer_cpu_clk_en : STD_LOGIC;
  signal programmer_sig_out2 : STD_LOGIC;
  signal seg_display_seg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal seg_display_seg_sel : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shell_cpu_top_0_data_mem_wr : STD_LOGIC;
  signal shell_cpu_top_0_ins_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal shell_cpu_top_0_outvalue : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal shell_cpu_top_0_regA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal shell_cpu_top_0_regB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal shell_cpu_top_0_stack_ptr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal shell_cpu_top_0_stack_wr : STD_LOGIC;
  signal uart_0_rx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal uart_0_tx : STD_LOGIC;
begin
  CLK100MHZ_2 <= CLK100MHZ;
  LED16_G <= prog_mode_2;
  LED17_B <= async_rst_1;
  UART_RXD_OUT <= uart_0_tx;
  UART_TXD_IN_1 <= UART_TXD_IN;
  inr_1(2 downto 0) <= inr(2 downto 0);
  outvalue(15 downto 0) <= shell_cpu_top_0_outvalue(15 downto 0);
  seg(7 downto 0) <= seg_display_seg(7 downto 0);
  seg_sel(7 downto 0) <= seg_display_seg_sel(7 downto 0);
clock_gen: entity work.clock_gen_imp_1W5H0XW
     port map (
      CLK100MHZ => CLK100MHZ_2,
      CPU_CLK => clk_2,
      c => clock_gen_c,
      clk_100Mhz => clock_gen_clk_100Mhz,
      sig_in => programmer_cpu_clk_en
    );
cpu_uart: component design_1_uart_0_0
     port map (
      clk => clock_gen_clk_100Mhz,
      rx => UART_TXD_IN_1,
      rx_data(7 downto 0) => uart_0_rx_data(7 downto 0),
      rx_ready => cpu_uart_rx_ready,
      tx => uart_0_tx,
      tx_buff(7 downto 0) => memory_tx_buff(7 downto 0),
      tx_ready => cpu_uart_tx_ready,
      tx_start_trans => memory_sig_out
    );
memory: entity work.memory_imp_1RJ1PXL
     port map (
      clk => clk_2,
      clk1 => clock_gen_clk_100Mhz,
      cur_ins(15 downto 0) => memory_cur_ins(15 downto 0),
      data_in(15 downto 0) => shell_cpu_top_0_regA(15 downto 0),
      data_out(15 downto 0) => memory_data_out(15 downto 0),
      ins_addr(15 downto 0) => shell_cpu_top_0_ins_addr(15 downto 0),
      prog_addr1(15 downto 0) => prog_addr1_1(15 downto 0),
      prog_data1(15 downto 0) => prog_data1_1(15 downto 0),
      prog_mode => prog_mode_2,
      prog_wr => programmer_sig_out2,
      prog_wr1 => prog_wr1_1,
      rx_buff(7 downto 0) => uart_0_rx_data(7 downto 0),
      sig_in => cpu_uart_rx_ready,
      sig_in1 => cpu_uart_tx_ready,
      sig_out => memory_sig_out,
      stack_addr(15 downto 0) => shell_cpu_top_0_stack_ptr(15 downto 0),
      stack_out(15 downto 0) => memory_stack_out(15 downto 0),
      stack_wr_en => shell_cpu_top_0_stack_wr,
      tx_buff(7 downto 0) => memory_tx_buff(7 downto 0),
      wr_addr(15 downto 0) => shell_cpu_top_0_regB(15 downto 0),
      wr_en => shell_cpu_top_0_data_mem_wr
    );
programmer: entity work.programmer_imp_1AUNZS1
     port map (
      UART_TXD_IN => UART_TXD_IN_1,
      clk => clock_gen_clk_100Mhz,
      clk1 => clk_2,
      cpu_clk_en => programmer_cpu_clk_en,
      rst => async_rst_1,
      sig_out => prog_mode_2,
      sig_out1 => prog_wr1_1,
      sig_out2 => programmer_sig_out2,
      sync_word(15 downto 0) => prog_addr1_1(15 downto 0),
      sync_word1(15 downto 0) => prog_data1_1(15 downto 0)
    );
seg_display: entity work.seg_display_imp_KDOS65
     port map (
      clk_in => clk_2,
      data(15 downto 0) => memory_stack_out(15 downto 0),
      pc_in(15 downto 0) => shell_cpu_top_0_ins_addr(15 downto 0),
      seg(7 downto 0) => seg_display_seg(7 downto 0),
      seg_sel(7 downto 0) => seg_display_seg_sel(7 downto 0)
    );
shell_cpu_top: component design_1_shell_cpu_top_0_0
     port map (
      clk => clock_gen_c,
      data_mem(15 downto 0) => memory_data_out(15 downto 0),
      data_mem_wr => shell_cpu_top_0_data_mem_wr,
      from_stack(15 downto 0) => memory_stack_out(15 downto 0),
      inr(2 downto 0) => inr_1(2 downto 0),
      ins_addr(15 downto 0) => shell_cpu_top_0_ins_addr(15 downto 0),
      instruction(15 downto 0) => memory_cur_ins(15 downto 0),
      outvalue(15 downto 0) => shell_cpu_top_0_outvalue(15 downto 0),
      regA(15 downto 0) => shell_cpu_top_0_regA(15 downto 0),
      regB(15 downto 0) => shell_cpu_top_0_regB(15 downto 0),
      rst => async_rst_1,
      stack_ptr(15 downto 0) => shell_cpu_top_0_stack_ptr(15 downto 0),
      stack_wr => shell_cpu_top_0_stack_wr
    );
end STRUCTURE;
