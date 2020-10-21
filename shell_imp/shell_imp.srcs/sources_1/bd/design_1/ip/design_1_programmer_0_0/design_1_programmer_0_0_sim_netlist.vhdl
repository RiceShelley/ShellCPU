-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct 20 19:56:01 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_programmer_0_0/design_1_programmer_0_0_sim_netlist.vhdl
-- Design      : design_1_programmer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_programmer_0_0_programmer is
  port (
    tx_buff : out STD_LOGIC_VECTOR ( 7 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    tx_start_trans : out STD_LOGIC;
    prog_mem_wr : out STD_LOGIC;
    data_mem_wr : out STD_LOGIC;
    cpu_rst : out STD_LOGIC;
    cpu_clk_en : out STD_LOGIC;
    prog_mode : out STD_LOGIC;
    clk : in STD_LOGIC;
    rx_ready : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_ready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_programmer_0_0_programmer : entity is "programmer";
end design_1_programmer_0_0_programmer;

architecture STRUCTURE of design_1_programmer_0_0_programmer is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \addr[15]_i_1_n_0\ : STD_LOGIC;
  signal \addr[7]_i_1_n_0\ : STD_LOGIC;
  signal cmd : STD_LOGIC;
  signal \cmd_reg_n_0_[0]\ : STD_LOGIC;
  signal \cmd_reg_n_0_[1]\ : STD_LOGIC;
  signal \cmd_reg_n_0_[2]\ : STD_LOGIC;
  signal \cmd_reg_n_0_[3]\ : STD_LOGIC;
  signal \cmd_reg_n_0_[4]\ : STD_LOGIC;
  signal \cmd_reg_n_0_[5]\ : STD_LOGIC;
  signal \cmd_reg_n_0_[6]\ : STD_LOGIC;
  signal \cmd_reg_n_0_[7]\ : STD_LOGIC;
  signal \^cpu_clk_en\ : STD_LOGIC;
  signal cpu_clk_en_i_1_n_0 : STD_LOGIC;
  signal \^cpu_rst\ : STD_LOGIC;
  signal cpu_rst_i_1_n_0 : STD_LOGIC;
  signal cpu_rst_i_2_n_0 : STD_LOGIC;
  signal cpu_rst_i_3_n_0 : STD_LOGIC;
  signal \^data_mem_wr\ : STD_LOGIC;
  signal data_mem_wr_i_1_n_0 : STD_LOGIC;
  signal delay_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \delay_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \delay_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \dout[15]_i_1_n_0\ : STD_LOGIC;
  signal \dout[7]_i_1_n_0\ : STD_LOGIC;
  signal \^prog_mem_wr\ : STD_LOGIC;
  signal prog_mem_wr_i_1_n_0 : STD_LOGIC;
  signal prog_mem_wr_i_2_n_0 : STD_LOGIC;
  signal prog_mem_wr_i_3_n_0 : STD_LOGIC;
  signal prog_mem_wr_i_4_n_0 : STD_LOGIC;
  signal \^prog_mode\ : STD_LOGIC;
  signal prog_mode_i_1_n_0 : STD_LOGIC;
  signal prog_mode_i_2_n_0 : STD_LOGIC;
  signal prog_mode_i_3_n_0 : STD_LOGIC;
  signal prog_mode_i_4_n_0 : STD_LOGIC;
  signal rx_ready_buff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \tx_buff[7]_i_1_n_0\ : STD_LOGIC;
  signal \^tx_start_trans\ : STD_LOGIC;
  signal tx_start_trans_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_4\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "GET_ADDR0:0000010,GET_ADDR1:0000100,WRITE0:0010000,WRITE1:0100000,DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC:1000000,READ:0001000,WAIT_FOR_CMD:0000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "GET_ADDR0:0000010,GET_ADDR1:0000100,WRITE0:0010000,WRITE1:0100000,DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC:1000000,READ:0001000,WAIT_FOR_CMD:0000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "GET_ADDR0:0000010,GET_ADDR1:0000100,WRITE0:0010000,WRITE1:0100000,DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC:1000000,READ:0001000,WAIT_FOR_CMD:0000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "GET_ADDR0:0000010,GET_ADDR1:0000100,WRITE0:0010000,WRITE1:0100000,DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC:1000000,READ:0001000,WAIT_FOR_CMD:0000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "GET_ADDR0:0000010,GET_ADDR1:0000100,WRITE0:0010000,WRITE1:0100000,DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC:1000000,READ:0001000,WAIT_FOR_CMD:0000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "GET_ADDR0:0000010,GET_ADDR1:0000100,WRITE0:0010000,WRITE1:0100000,DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC:1000000,READ:0001000,WAIT_FOR_CMD:0000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "GET_ADDR0:0000010,GET_ADDR1:0000100,WRITE0:0010000,WRITE1:0100000,DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC:1000000,READ:0001000,WAIT_FOR_CMD:0000001";
  attribute SOFT_HLUTNM of cpu_rst_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \delay_cnt[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \delay_cnt[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \delay_cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \delay_cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \delay_cnt[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \delay_cnt[6]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \delay_cnt[7]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \delay_cnt[7]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of prog_mode_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of prog_mode_i_4 : label is "soft_lutpair6";
begin
  cpu_clk_en <= \^cpu_clk_en\;
  cpu_rst <= \^cpu_rst\;
  data_mem_wr <= \^data_mem_wr\;
  prog_mem_wr <= \^prog_mem_wr\;
  prog_mode <= \^prog_mode\;
  tx_start_trans <= \^tx_start_trans\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAFFEAFFEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => tx_ready,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => rx_ready_buff(1),
      I5 => rx_ready_buff(0),
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => rx_ready_buff(1),
      I2 => rx_ready_buff(0),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => rx_ready_buff(1),
      I2 => rx_ready_buff(0),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000800"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => rx_ready_buff(0),
      I2 => rx_ready_buff(1),
      I3 => prog_mem_wr_i_2_n_0,
      I4 => tx_ready,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F044F0F0"
    )
        port map (
      I0 => prog_mem_wr_i_2_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => rx_ready_buff(1),
      I4 => rx_ready_buff(0),
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => rx_ready_buff(1),
      I2 => rx_ready_buff(0),
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state[6]_i_2_n_0\,
      I1 => \FSM_onehot_state[6]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFAAFFAAFBAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => rx_ready_buff(0),
      I2 => rx_ready_buff(1),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state[6]_i_4_n_0\,
      I5 => prog_mode_i_2_n_0,
      O => \FSM_onehot_state[6]_i_2_n_0\
    );
\FSM_onehot_state[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \delay_cnt[7]_i_4_n_0\,
      I2 => delay_cnt(7),
      I3 => delay_cnt(2),
      I4 => delay_cnt(1),
      I5 => delay_cnt(0),
      O => \FSM_onehot_state[6]_i_3_n_0\
    );
\FSM_onehot_state[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F75F"
    )
        port map (
      I0 => rx_data(7),
      I1 => rx_data(0),
      I2 => rx_data(2),
      I3 => rx_data(1),
      O => \FSM_onehot_state[6]_i_4_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[6]_i_1_n_0\,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[6]_i_1_n_0\,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[6]_i_1_n_0\,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[6]_i_1_n_0\,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[6]_i_1_n_0\,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[6]_i_1_n_0\,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => '0'
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[6]_i_1_n_0\,
      D => \dout[15]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      R => '0'
    );
\addr[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => rx_ready_buff(0),
      I2 => rx_ready_buff(1),
      O => \addr[15]_i_1_n_0\
    );
\addr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => rx_ready_buff(0),
      I2 => rx_ready_buff(1),
      O => \addr[7]_i_1_n_0\
    );
\addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr[7]_i_1_n_0\,
      D => rx_data(0),
      Q => addr(0),
      R => '0'
    );
\addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr[15]_i_1_n_0\,
      D => rx_data(2),
      Q => addr(10),
      R => '0'
    );
\addr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr[15]_i_1_n_0\,
      D => rx_data(3),
      Q => addr(11),
      R => '0'
    );
\addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr[15]_i_1_n_0\,
      D => rx_data(4),
      Q => addr(12),
      R => '0'
    );
\addr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr[15]_i_1_n_0\,
      D => rx_data(5),
      Q => addr(13),
      R => '0'
    );
\addr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr[15]_i_1_n_0\,
      D => rx_data(6),
      Q => addr(14),
      R => '0'
    );
\addr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr[15]_i_1_n_0\,
      D => rx_data(7),
      Q => addr(15),
      R => '0'
    );
\addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr[7]_i_1_n_0\,
      D => rx_data(1),
      Q => addr(1),
      R => '0'
    );
\addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr[7]_i_1_n_0\,
      D => rx_data(2),
      Q => addr(2),
      R => '0'
    );
\addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr[7]_i_1_n_0\,
      D => rx_data(3),
      Q => addr(3),
      R => '0'
    );
\addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr[7]_i_1_n_0\,
      D => rx_data(4),
      Q => addr(4),
      R => '0'
    );
\addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr[7]_i_1_n_0\,
      D => rx_data(5),
      Q => addr(5),
      R => '0'
    );
\addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr[7]_i_1_n_0\,
      D => rx_data(6),
      Q => addr(6),
      R => '0'
    );
\addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr[7]_i_1_n_0\,
      D => rx_data(7),
      Q => addr(7),
      R => '0'
    );
\addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr[15]_i_1_n_0\,
      D => rx_data(0),
      Q => addr(8),
      R => '0'
    );
\addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr[15]_i_1_n_0\,
      D => rx_data(1),
      Q => addr(9),
      R => '0'
    );
\cmd[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFBBFF00000000"
    )
        port map (
      I0 => prog_mode_i_2_n_0,
      I1 => rx_data(7),
      I2 => rx_data(0),
      I3 => rx_data(2),
      I4 => rx_data(1),
      I5 => prog_mode_i_4_n_0,
      O => cmd
    );
\cmd_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd,
      D => rx_data(0),
      Q => \cmd_reg_n_0_[0]\,
      R => '0'
    );
\cmd_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd,
      D => rx_data(1),
      Q => \cmd_reg_n_0_[1]\,
      R => '0'
    );
\cmd_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd,
      D => rx_data(2),
      Q => \cmd_reg_n_0_[2]\,
      R => '0'
    );
\cmd_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd,
      D => rx_data(3),
      Q => \cmd_reg_n_0_[3]\,
      R => '0'
    );
\cmd_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd,
      D => rx_data(4),
      Q => \cmd_reg_n_0_[4]\,
      R => '0'
    );
\cmd_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd,
      D => rx_data(5),
      Q => \cmd_reg_n_0_[5]\,
      R => '0'
    );
\cmd_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd,
      D => rx_data(6),
      Q => \cmd_reg_n_0_[6]\,
      R => '0'
    );
\cmd_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd,
      D => rx_data(7),
      Q => \cmd_reg_n_0_[7]\,
      R => '0'
    );
cpu_clk_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00040000"
    )
        port map (
      I0 => prog_mode_i_2_n_0,
      I1 => prog_mode_i_3_n_0,
      I2 => rx_data(0),
      I3 => rx_data(1),
      I4 => prog_mode_i_4_n_0,
      I5 => \^cpu_clk_en\,
      O => cpu_clk_en_i_1_n_0
    );
cpu_clk_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => cpu_clk_en_i_1_n_0,
      Q => \^cpu_clk_en\,
      R => '0'
    );
cpu_rst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rx_data(4),
      I1 => rx_data(3),
      I2 => rx_data(6),
      I3 => rx_data(5),
      I4 => cpu_rst_i_2_n_0,
      I5 => \^cpu_rst\,
      O => cpu_rst_i_1_n_0
    );
cpu_rst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => rx_data(7),
      I1 => rx_data(2),
      I2 => rx_data(0),
      I3 => rx_data(1),
      I4 => cpu_rst_i_3_n_0,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => cpu_rst_i_2_n_0
    );
cpu_rst_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rx_ready_buff(1),
      I1 => rx_ready_buff(0),
      O => cpu_rst_i_3_n_0
    );
cpu_rst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cpu_rst_i_1_n_0,
      Q => \^cpu_rst\,
      R => '0'
    );
data_mem_wr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFFAAAAAA8A"
    )
        port map (
      I0 => \dout[15]_i_1_n_0\,
      I1 => prog_mem_wr_i_2_n_0,
      I2 => \cmd_reg_n_0_[0]\,
      I3 => cmd,
      I4 => prog_mem_wr_i_3_n_0,
      I5 => \^data_mem_wr\,
      O => data_mem_wr_i_1_n_0
    );
data_mem_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_mem_wr_i_1_n_0,
      Q => \^data_mem_wr\,
      R => '0'
    );
\delay_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => delay_cnt(0),
      O => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => delay_cnt(0),
      I2 => delay_cnt(1),
      O => \delay_cnt[1]_i_1_n_0\
    );
\delay_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => delay_cnt(0),
      I1 => delay_cnt(1),
      I2 => \FSM_onehot_state_reg_n_0_[6]\,
      I3 => delay_cnt(2),
      O => \delay_cnt[2]_i_1_n_0\
    );
\delay_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48888888"
    )
        port map (
      I0 => delay_cnt(3),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => delay_cnt(2),
      I3 => delay_cnt(0),
      I4 => delay_cnt(1),
      O => \delay_cnt[3]_i_1_n_0\
    );
\delay_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCCCCCC00000000"
    )
        port map (
      I0 => delay_cnt(3),
      I1 => delay_cnt(4),
      I2 => delay_cnt(2),
      I3 => delay_cnt(0),
      I4 => delay_cnt(1),
      I5 => \FSM_onehot_state_reg_n_0_[6]\,
      O => \delay_cnt[4]_i_1_n_0\
    );
\delay_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F078F000000000"
    )
        port map (
      I0 => delay_cnt(3),
      I1 => delay_cnt(4),
      I2 => delay_cnt(5),
      I3 => delay_cnt(2),
      I4 => \delay_cnt[5]_i_2_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[6]\,
      O => \delay_cnt[5]_i_1_n_0\
    );
\delay_cnt[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => delay_cnt(0),
      I1 => delay_cnt(1),
      O => \delay_cnt[5]_i_2_n_0\
    );
\delay_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9CCCCCCC00000000"
    )
        port map (
      I0 => \delay_cnt[6]_i_2_n_0\,
      I1 => delay_cnt(6),
      I2 => delay_cnt(2),
      I3 => delay_cnt(0),
      I4 => delay_cnt(1),
      I5 => \FSM_onehot_state_reg_n_0_[6]\,
      O => \delay_cnt[6]_i_1_n_0\
    );
\delay_cnt[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => delay_cnt(4),
      I1 => delay_cnt(3),
      I2 => delay_cnt(5),
      O => \delay_cnt[6]_i_2_n_0\
    );
\delay_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \delay_cnt[7]_i_3_n_0\,
      I2 => rx_ready_buff(1),
      I3 => rx_ready_buff(0),
      I4 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \delay_cnt[7]_i_1_n_0\
    );
\delay_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9CCCCCCC00000000"
    )
        port map (
      I0 => \delay_cnt[7]_i_4_n_0\,
      I1 => delay_cnt(7),
      I2 => delay_cnt(2),
      I3 => delay_cnt(0),
      I4 => delay_cnt(1),
      I5 => \FSM_onehot_state_reg_n_0_[6]\,
      O => \delay_cnt[7]_i_2_n_0\
    );
\delay_cnt[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => delay_cnt(0),
      I1 => delay_cnt(1),
      I2 => delay_cnt(2),
      I3 => delay_cnt(7),
      I4 => \delay_cnt[7]_i_4_n_0\,
      O => \delay_cnt[7]_i_3_n_0\
    );
\delay_cnt[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => delay_cnt(5),
      I1 => delay_cnt(3),
      I2 => delay_cnt(4),
      I3 => delay_cnt(6),
      O => \delay_cnt[7]_i_4_n_0\
    );
\delay_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[7]_i_1_n_0\,
      D => \delay_cnt[0]_i_1_n_0\,
      Q => delay_cnt(0),
      R => '0'
    );
\delay_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[7]_i_1_n_0\,
      D => \delay_cnt[1]_i_1_n_0\,
      Q => delay_cnt(1),
      R => '0'
    );
\delay_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[7]_i_1_n_0\,
      D => \delay_cnt[2]_i_1_n_0\,
      Q => delay_cnt(2),
      R => '0'
    );
\delay_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[7]_i_1_n_0\,
      D => \delay_cnt[3]_i_1_n_0\,
      Q => delay_cnt(3),
      R => '0'
    );
\delay_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[7]_i_1_n_0\,
      D => \delay_cnt[4]_i_1_n_0\,
      Q => delay_cnt(4),
      R => '0'
    );
\delay_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[7]_i_1_n_0\,
      D => \delay_cnt[5]_i_1_n_0\,
      Q => delay_cnt(5),
      R => '0'
    );
\delay_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[7]_i_1_n_0\,
      D => \delay_cnt[6]_i_1_n_0\,
      Q => delay_cnt(6),
      R => '0'
    );
\delay_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[7]_i_1_n_0\,
      D => \delay_cnt[7]_i_2_n_0\,
      Q => delay_cnt(7),
      R => '0'
    );
\dout[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => rx_ready_buff(0),
      I2 => rx_ready_buff(1),
      O => \dout[15]_i_1_n_0\
    );
\dout[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => rx_ready_buff(0),
      I2 => rx_ready_buff(1),
      O => \dout[7]_i_1_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => rx_data(0),
      Q => dout(0),
      R => '0'
    );
\dout_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dout[15]_i_1_n_0\,
      D => rx_data(2),
      Q => dout(10),
      R => '0'
    );
\dout_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dout[15]_i_1_n_0\,
      D => rx_data(3),
      Q => dout(11),
      R => '0'
    );
\dout_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dout[15]_i_1_n_0\,
      D => rx_data(4),
      Q => dout(12),
      R => '0'
    );
\dout_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dout[15]_i_1_n_0\,
      D => rx_data(5),
      Q => dout(13),
      R => '0'
    );
\dout_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dout[15]_i_1_n_0\,
      D => rx_data(6),
      Q => dout(14),
      R => '0'
    );
\dout_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dout[15]_i_1_n_0\,
      D => rx_data(7),
      Q => dout(15),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => rx_data(1),
      Q => dout(1),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => rx_data(2),
      Q => dout(2),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => rx_data(3),
      Q => dout(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => rx_data(4),
      Q => dout(4),
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => rx_data(5),
      Q => dout(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => rx_data(6),
      Q => dout(6),
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => rx_data(7),
      Q => dout(7),
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dout[15]_i_1_n_0\,
      D => rx_data(0),
      Q => dout(8),
      R => '0'
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dout[15]_i_1_n_0\,
      D => rx_data(1),
      Q => dout(9),
      R => '0'
    );
prog_mem_wr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0FFF0F0F040"
    )
        port map (
      I0 => prog_mem_wr_i_2_n_0,
      I1 => \cmd_reg_n_0_[0]\,
      I2 => \dout[15]_i_1_n_0\,
      I3 => cmd,
      I4 => prog_mem_wr_i_3_n_0,
      I5 => \^prog_mem_wr\,
      O => prog_mem_wr_i_1_n_0
    );
prog_mem_wr_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => prog_mem_wr_i_4_n_0,
      I1 => \cmd_reg_n_0_[1]\,
      I2 => \cmd_reg_n_0_[6]\,
      I3 => \cmd_reg_n_0_[7]\,
      O => prog_mem_wr_i_2_n_0
    );
prog_mem_wr_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => delay_cnt(7),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => delay_cnt(2),
      I3 => delay_cnt(1),
      I4 => delay_cnt(0),
      I5 => \delay_cnt[7]_i_4_n_0\,
      O => prog_mem_wr_i_3_n_0
    );
prog_mem_wr_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cmd_reg_n_0_[3]\,
      I1 => \cmd_reg_n_0_[2]\,
      I2 => \cmd_reg_n_0_[5]\,
      I3 => \cmd_reg_n_0_[4]\,
      O => prog_mem_wr_i_4_n_0
    );
prog_mem_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => prog_mem_wr_i_1_n_0,
      Q => \^prog_mem_wr\,
      R => '0'
    );
prog_mode_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00400000"
    )
        port map (
      I0 => prog_mode_i_2_n_0,
      I1 => prog_mode_i_3_n_0,
      I2 => rx_data(0),
      I3 => rx_data(1),
      I4 => prog_mode_i_4_n_0,
      I5 => \^prog_mode\,
      O => prog_mode_i_1_n_0
    );
prog_mode_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => rx_data(4),
      I1 => rx_data(3),
      I2 => rx_data(6),
      I3 => rx_data(5),
      O => prog_mode_i_2_n_0
    );
prog_mode_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_data(2),
      I1 => rx_data(7),
      O => prog_mode_i_3_n_0
    );
prog_mode_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => rx_ready_buff(0),
      I2 => rx_ready_buff(1),
      O => prog_mode_i_4_n_0
    );
prog_mode_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => prog_mode_i_1_n_0,
      Q => \^prog_mode\,
      R => '0'
    );
\rx_ready_buff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx_ready,
      Q => rx_ready_buff(0),
      R => '0'
    );
\rx_ready_buff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx_ready_buff(0),
      Q => rx_ready_buff(1),
      R => '0'
    );
\tx_buff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tx_ready,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \tx_buff[7]_i_1_n_0\
    );
\tx_buff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_buff[7]_i_1_n_0\,
      D => din(0),
      Q => tx_buff(0),
      R => '0'
    );
\tx_buff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_buff[7]_i_1_n_0\,
      D => din(1),
      Q => tx_buff(1),
      R => '0'
    );
\tx_buff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_buff[7]_i_1_n_0\,
      D => din(2),
      Q => tx_buff(2),
      R => '0'
    );
\tx_buff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_buff[7]_i_1_n_0\,
      D => din(3),
      Q => tx_buff(3),
      R => '0'
    );
\tx_buff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_buff[7]_i_1_n_0\,
      D => din(4),
      Q => tx_buff(4),
      R => '0'
    );
\tx_buff_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_buff[7]_i_1_n_0\,
      D => din(5),
      Q => tx_buff(5),
      R => '0'
    );
\tx_buff_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_buff[7]_i_1_n_0\,
      D => din(6),
      Q => tx_buff(6),
      R => '0'
    );
\tx_buff_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_buff[7]_i_1_n_0\,
      D => din(7),
      Q => tx_buff(7),
      R => '0'
    );
tx_start_trans_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => tx_ready,
      I2 => cmd,
      I3 => \^tx_start_trans\,
      O => tx_start_trans_i_1_n_0
    );
tx_start_trans_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tx_start_trans_i_1_n_0,
      Q => \^tx_start_trans\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_programmer_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_programmer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_programmer_0_0 : entity is "design_1_programmer_0_0,programmer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_programmer_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_programmer_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_programmer_0_0 : entity is "programmer,Vivado 2018.3";
end design_1_programmer_0_0;

architecture STRUCTURE of design_1_programmer_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clock_gen/clk_wiz_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of cpu_rst : signal is "xilinx.com:signal:reset:1.0 cpu_rst RST";
  attribute x_interface_parameter of cpu_rst : signal is "XIL_INTERFACENAME cpu_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_programmer_0_0_programmer
     port map (
      addr(15 downto 0) => addr(15 downto 0),
      clk => clk,
      cpu_clk_en => cpu_clk_en,
      cpu_rst => cpu_rst,
      data_mem_wr => data_mem_wr,
      din(7 downto 0) => din(7 downto 0),
      dout(15 downto 0) => dout(15 downto 0),
      prog_mem_wr => prog_mem_wr,
      prog_mode => prog_mode,
      rx_data(7 downto 0) => rx_data(7 downto 0),
      rx_ready => rx_ready,
      tx_buff(7 downto 0) => tx_buff(7 downto 0),
      tx_ready => tx_ready,
      tx_start_trans => tx_start_trans
    );
end STRUCTURE;
