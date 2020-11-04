-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Fri Oct 30 14:18:53 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_uart_0_0/design_1_uart_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_0_0_uart is
  port (
    rx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_ready : out STD_LOGIC;
    rx_ready : out STD_LOGIC;
    tx : out STD_LOGIC;
    rx : in STD_LOGIC;
    clk : in STD_LOGIC;
    tx_start_trans : in STD_LOGIC;
    tx_buff : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_0_0_uart : entity is "uart";
end design_1_uart_0_0_uart;

architecture STRUCTURE of design_1_uart_0_0_uart is
  signal \FSM_sequential_rx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal baud_clk_i_1_n_0 : STD_LOGIC;
  signal baud_clk_reg_n_0 : STD_LOGIC;
  signal baud_rst : STD_LOGIC;
  signal baud_rst_i_1_n_0 : STD_LOGIC;
  signal clk_acc : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \clk_acc[7]_i_2_n_0\ : STD_LOGIC;
  signal \clk_acc[7]_i_3_n_0\ : STD_LOGIC;
  signal \clk_acc[7]_i_4_n_0\ : STD_LOGIC;
  signal \clk_acc[8]_i_2_n_0\ : STD_LOGIC;
  signal clk_acc_0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal posedge_baud_clk_i_1_n_0 : STD_LOGIC;
  signal posedge_baud_clk_reg_n_0 : STD_LOGIC;
  signal rx_buff : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rx_buff[0]_i_1_n_0\ : STD_LOGIC;
  signal \rx_buff[1]_i_1_n_0\ : STD_LOGIC;
  signal \rx_buff[2]_i_1_n_0\ : STD_LOGIC;
  signal \rx_buff[3]_i_1_n_0\ : STD_LOGIC;
  signal \rx_buff[4]_i_1_n_0\ : STD_LOGIC;
  signal \rx_buff[5]_i_1_n_0\ : STD_LOGIC;
  signal \rx_buff[6]_i_1_n_0\ : STD_LOGIC;
  signal \rx_buff[7]_i_1_n_0\ : STD_LOGIC;
  signal \^rx_data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_pos : STD_LOGIC;
  signal \rx_pos[0]_i_1_n_0\ : STD_LOGIC;
  signal \rx_pos[1]_i_1_n_0\ : STD_LOGIC;
  signal \rx_pos[2]_i_1_n_0\ : STD_LOGIC;
  signal \rx_pos_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_pos_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_pos_reg_n_0_[2]\ : STD_LOGIC;
  signal \^rx_ready\ : STD_LOGIC;
  signal rx_ready_i_1_n_0 : STD_LOGIC;
  signal rx_start_bit_buff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal trans_flag_buff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^tx\ : STD_LOGIC;
  signal tx_i_1_n_0 : STD_LOGIC;
  signal tx_i_2_n_0 : STD_LOGIC;
  signal tx_i_3_n_0 : STD_LOGIC;
  signal \tx_pos[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_pos[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_pos[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_pos_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_pos_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_pos_reg_n_0_[2]\ : STD_LOGIC;
  signal tx_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[0]\ : label is "RX_RECV:10,RX_STOP:11,RX_IDLE:00,RX_START:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[1]\ : label is "RX_RECV:10,RX_STOP:11,RX_IDLE:00,RX_START:01";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[0]\ : label is "TX_TRANS:10,TX_STOP:11,TX_IDLE:00,TX_START:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[1]\ : label is "TX_TRANS:10,TX_STOP:11,TX_IDLE:00,TX_START:01";
  attribute SOFT_HLUTNM of \clk_acc[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_acc[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_acc[7]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clk_acc[7]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clk_acc[7]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clk_acc[8]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rx_buff[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rx_buff[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rx_buff[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rx_buff[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rx_buff[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rx_buff[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rx_buff[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rx_buff[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rx_pos[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tx_pos[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tx_pos[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tx_pos[2]_i_1\ : label is "soft_lutpair2";
begin
  rx_data(7 downto 0) <= \^rx_data\(7 downto 0);
  rx_ready <= \^rx_ready\;
  tx <= \^tx\;
\FSM_sequential_rx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AAFFAA000CFF0C"
    )
        port map (
      I0 => \FSM_sequential_rx_state[0]_i_2_n_0\,
      I1 => rx_start_bit_buff(1),
      I2 => rx_start_bit_buff(0),
      I3 => rx_state(0),
      I4 => posedge_baud_clk_reg_n_0,
      I5 => rx_state(1),
      O => \FSM_sequential_rx_state[0]_i_1_n_0\
    );
\FSM_sequential_rx_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => posedge_baud_clk_reg_n_0,
      I1 => \rx_pos_reg_n_0_[2]\,
      I2 => \rx_pos_reg_n_0_[0]\,
      I3 => \rx_pos_reg_n_0_[1]\,
      O => \FSM_sequential_rx_state[0]_i_2_n_0\
    );
\FSM_sequential_rx_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F40"
    )
        port map (
      I0 => rx,
      I1 => rx_state(0),
      I2 => posedge_baud_clk_reg_n_0,
      I3 => rx_state(1),
      O => \FSM_sequential_rx_state[1]_i_1_n_0\
    );
\FSM_sequential_rx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_rx_state[0]_i_1_n_0\,
      Q => rx_state(0),
      R => '0'
    );
\FSM_sequential_rx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_rx_state[1]_i_1_n_0\,
      Q => rx_state(1),
      R => '0'
    );
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFF400"
    )
        port map (
      I0 => trans_flag_buff(1),
      I1 => trans_flag_buff(0),
      I2 => tx_state(1),
      I3 => \FSM_sequential_tx_state[0]_i_2_n_0\,
      I4 => tx_state(0),
      O => \FSM_sequential_tx_state[0]_i_1_n_0\
    );
\FSM_sequential_tx_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDDDDDD"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(0),
      I2 => \tx_pos_reg_n_0_[1]\,
      I3 => \tx_pos_reg_n_0_[0]\,
      I4 => \tx_pos_reg_n_0_[2]\,
      O => \FSM_sequential_tx_state[0]_i_2_n_0\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(0),
      O => \FSM_sequential_tx_state[1]_i_1_n_0\
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => baud_clk_reg_n_0,
      CE => '1',
      D => \FSM_sequential_tx_state[0]_i_1_n_0\,
      Q => tx_state(0),
      R => '0'
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => baud_clk_reg_n_0,
      CE => '1',
      D => \FSM_sequential_tx_state[1]_i_1_n_0\,
      Q => tx_state(1),
      R => '0'
    );
baud_clk_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0010"
    )
        port map (
      I0 => baud_rst,
      I1 => \clk_acc[7]_i_2_n_0\,
      I2 => clk_acc(7),
      I3 => \clk_acc[7]_i_3_n_0\,
      I4 => baud_clk_reg_n_0,
      O => baud_clk_i_1_n_0
    );
baud_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => baud_clk_i_1_n_0,
      Q => baud_clk_reg_n_0,
      R => '0'
    );
baud_rst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00AAAE"
    )
        port map (
      I0 => baud_rst,
      I1 => rx_start_bit_buff(1),
      I2 => rx_start_bit_buff(0),
      I3 => rx_state(1),
      I4 => rx_state(0),
      O => baud_rst_i_1_n_0
    );
baud_rst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => baud_rst_i_1_n_0,
      Q => baud_rst,
      R => '0'
    );
\clk_acc[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_acc(0),
      O => clk_acc_0(0)
    );
\clk_acc[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF7FFFFF0000"
    )
        port map (
      I0 => clk_acc(5),
      I1 => clk_acc(4),
      I2 => clk_acc(7),
      I3 => \clk_acc[7]_i_2_n_0\,
      I4 => clk_acc(1),
      I5 => clk_acc(0),
      O => clk_acc_0(1)
    );
\clk_acc[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FBFB00FB00FB00"
    )
        port map (
      I0 => \clk_acc[7]_i_3_n_0\,
      I1 => clk_acc(7),
      I2 => \clk_acc[7]_i_2_n_0\,
      I3 => clk_acc(2),
      I4 => clk_acc(0),
      I5 => clk_acc(1),
      O => clk_acc_0(2)
    );
\clk_acc[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EE0E0E0E0E0E0E0"
    )
        port map (
      I0 => \clk_acc[8]_i_2_n_0\,
      I1 => \clk_acc[7]_i_2_n_0\,
      I2 => clk_acc(3),
      I3 => clk_acc(2),
      I4 => clk_acc(1),
      I5 => clk_acc(0),
      O => clk_acc_0(3)
    );
\clk_acc[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFF700FF00FF00"
    )
        port map (
      I0 => clk_acc(5),
      I1 => clk_acc(7),
      I2 => \clk_acc[7]_i_2_n_0\,
      I3 => clk_acc(4),
      I4 => \clk_acc[7]_i_4_n_0\,
      I5 => clk_acc(0),
      O => clk_acc_0(4)
    );
\clk_acc[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FD0F0F0F0F0F0F0"
    )
        port map (
      I0 => clk_acc(7),
      I1 => \clk_acc[7]_i_2_n_0\,
      I2 => clk_acc(5),
      I3 => \clk_acc[7]_i_4_n_0\,
      I4 => clk_acc(4),
      I5 => clk_acc(0),
      O => clk_acc_0(5)
    );
\clk_acc[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F00DD0"
    )
        port map (
      I0 => clk_acc(7),
      I1 => \clk_acc[7]_i_2_n_0\,
      I2 => clk_acc(6),
      I3 => \clk_acc[7]_i_4_n_0\,
      I4 => \clk_acc[7]_i_3_n_0\,
      O => clk_acc_0(6)
    );
\clk_acc[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3C8C8C8"
    )
        port map (
      I0 => \clk_acc[7]_i_2_n_0\,
      I1 => clk_acc(7),
      I2 => \clk_acc[7]_i_3_n_0\,
      I3 => clk_acc(6),
      I4 => \clk_acc[7]_i_4_n_0\,
      O => clk_acc_0(7)
    );
\clk_acc[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => clk_acc(1),
      I1 => clk_acc(6),
      I2 => clk_acc(8),
      I3 => clk_acc(3),
      I4 => clk_acc(2),
      O => \clk_acc[7]_i_2_n_0\
    );
\clk_acc[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => clk_acc(4),
      I1 => clk_acc(0),
      I2 => clk_acc(5),
      O => \clk_acc[7]_i_3_n_0\
    );
\clk_acc[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => clk_acc(2),
      I1 => clk_acc(1),
      I2 => clk_acc(3),
      O => \clk_acc[7]_i_4_n_0\
    );
\clk_acc[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAA8"
    )
        port map (
      I0 => clk_acc(8),
      I1 => clk_acc(6),
      I2 => clk_acc(2),
      I3 => clk_acc(1),
      I4 => clk_acc(3),
      I5 => \clk_acc[8]_i_2_n_0\,
      O => clk_acc_0(8)
    );
\clk_acc[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => clk_acc(5),
      I1 => clk_acc(0),
      I2 => clk_acc(4),
      I3 => clk_acc(7),
      O => \clk_acc[8]_i_2_n_0\
    );
\clk_acc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_acc_0(0),
      Q => clk_acc(0),
      R => baud_rst
    );
\clk_acc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_acc_0(1),
      Q => clk_acc(1),
      R => baud_rst
    );
\clk_acc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_acc_0(2),
      Q => clk_acc(2),
      R => baud_rst
    );
\clk_acc_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_acc_0(3),
      Q => clk_acc(3),
      S => baud_rst
    );
\clk_acc_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_acc_0(4),
      Q => clk_acc(4),
      S => baud_rst
    );
\clk_acc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_acc_0(5),
      Q => clk_acc(5),
      R => baud_rst
    );
\clk_acc_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_acc_0(6),
      Q => clk_acc(6),
      S => baud_rst
    );
\clk_acc_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_acc_0(7),
      Q => clk_acc(7),
      S => baud_rst
    );
\clk_acc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_acc_0(8),
      Q => clk_acc(8),
      R => baud_rst
    );
posedge_baud_clk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF003000000010"
    )
        port map (
      I0 => baud_clk_reg_n_0,
      I1 => \clk_acc[7]_i_3_n_0\,
      I2 => clk_acc(7),
      I3 => \clk_acc[7]_i_2_n_0\,
      I4 => baud_rst,
      I5 => posedge_baud_clk_reg_n_0,
      O => posedge_baud_clk_i_1_n_0
    );
posedge_baud_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => posedge_baud_clk_i_1_n_0,
      Q => posedge_baud_clk_reg_n_0,
      R => '0'
    );
\rx_buff[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx,
      I1 => rx_buff(0),
      I2 => \^rx_data\(0),
      O => \rx_buff[0]_i_1_n_0\
    );
\rx_buff[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => rx_state(0),
      I1 => posedge_baud_clk_reg_n_0,
      I2 => \rx_pos_reg_n_0_[1]\,
      I3 => \rx_pos_reg_n_0_[0]\,
      I4 => \rx_pos_reg_n_0_[2]\,
      I5 => rx_state(1),
      O => rx_buff(0)
    );
\rx_buff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx,
      I1 => rx_buff(1),
      I2 => \^rx_data\(1),
      O => \rx_buff[1]_i_1_n_0\
    );
\rx_buff[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => rx_state(0),
      I1 => posedge_baud_clk_reg_n_0,
      I2 => \rx_pos_reg_n_0_[1]\,
      I3 => \rx_pos_reg_n_0_[0]\,
      I4 => \rx_pos_reg_n_0_[2]\,
      I5 => rx_state(1),
      O => rx_buff(1)
    );
\rx_buff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx,
      I1 => rx_buff(2),
      I2 => \^rx_data\(2),
      O => \rx_buff[2]_i_1_n_0\
    );
\rx_buff[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => rx_state(0),
      I1 => posedge_baud_clk_reg_n_0,
      I2 => \rx_pos_reg_n_0_[0]\,
      I3 => \rx_pos_reg_n_0_[1]\,
      I4 => \rx_pos_reg_n_0_[2]\,
      I5 => rx_state(1),
      O => rx_buff(2)
    );
\rx_buff[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx,
      I1 => rx_buff(3),
      I2 => \^rx_data\(3),
      O => \rx_buff[3]_i_1_n_0\
    );
\rx_buff[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => rx_state(0),
      I1 => posedge_baud_clk_reg_n_0,
      I2 => \rx_pos_reg_n_0_[1]\,
      I3 => \rx_pos_reg_n_0_[0]\,
      I4 => \rx_pos_reg_n_0_[2]\,
      I5 => rx_state(1),
      O => rx_buff(3)
    );
\rx_buff[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx,
      I1 => rx_buff(4),
      I2 => \^rx_data\(4),
      O => \rx_buff[4]_i_1_n_0\
    );
\rx_buff[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => rx_state(0),
      I1 => posedge_baud_clk_reg_n_0,
      I2 => \rx_pos_reg_n_0_[1]\,
      I3 => \rx_pos_reg_n_0_[0]\,
      I4 => \rx_pos_reg_n_0_[2]\,
      I5 => rx_state(1),
      O => rx_buff(4)
    );
\rx_buff[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx,
      I1 => rx_buff(5),
      I2 => \^rx_data\(5),
      O => \rx_buff[5]_i_1_n_0\
    );
\rx_buff[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => rx_state(0),
      I1 => posedge_baud_clk_reg_n_0,
      I2 => \rx_pos_reg_n_0_[1]\,
      I3 => \rx_pos_reg_n_0_[0]\,
      I4 => \rx_pos_reg_n_0_[2]\,
      I5 => rx_state(1),
      O => rx_buff(5)
    );
\rx_buff[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx,
      I1 => rx_buff(6),
      I2 => \^rx_data\(6),
      O => \rx_buff[6]_i_1_n_0\
    );
\rx_buff[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => rx_state(0),
      I1 => posedge_baud_clk_reg_n_0,
      I2 => \rx_pos_reg_n_0_[0]\,
      I3 => \rx_pos_reg_n_0_[1]\,
      I4 => \rx_pos_reg_n_0_[2]\,
      I5 => rx_state(1),
      O => rx_buff(6)
    );
\rx_buff[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx,
      I1 => rx_buff(7),
      I2 => \^rx_data\(7),
      O => \rx_buff[7]_i_1_n_0\
    );
\rx_buff[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => rx_state(0),
      I1 => posedge_baud_clk_reg_n_0,
      I2 => \rx_pos_reg_n_0_[1]\,
      I3 => \rx_pos_reg_n_0_[0]\,
      I4 => \rx_pos_reg_n_0_[2]\,
      I5 => rx_state(1),
      O => rx_buff(7)
    );
\rx_buff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_buff[0]_i_1_n_0\,
      Q => \^rx_data\(0),
      R => '0'
    );
\rx_buff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_buff[1]_i_1_n_0\,
      Q => \^rx_data\(1),
      R => '0'
    );
\rx_buff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_buff[2]_i_1_n_0\,
      Q => \^rx_data\(2),
      R => '0'
    );
\rx_buff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_buff[3]_i_1_n_0\,
      Q => \^rx_data\(3),
      R => '0'
    );
\rx_buff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_buff[4]_i_1_n_0\,
      Q => \^rx_data\(4),
      R => '0'
    );
\rx_buff_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_buff[5]_i_1_n_0\,
      Q => \^rx_data\(5),
      R => '0'
    );
\rx_buff_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_buff[6]_i_1_n_0\,
      Q => \^rx_data\(6),
      R => '0'
    );
\rx_buff_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_buff[7]_i_1_n_0\,
      Q => \^rx_data\(7),
      R => '0'
    );
\rx_pos[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CBFF3000"
    )
        port map (
      I0 => rx,
      I1 => rx_state(0),
      I2 => rx_state(1),
      I3 => posedge_baud_clk_reg_n_0,
      I4 => \rx_pos_reg_n_0_[0]\,
      O => \rx_pos[0]_i_1_n_0\
    );
\rx_pos[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5CFFFFF0A000000"
    )
        port map (
      I0 => \rx_pos_reg_n_0_[0]\,
      I1 => rx,
      I2 => rx_state(0),
      I3 => rx_state(1),
      I4 => posedge_baud_clk_reg_n_0,
      I5 => \rx_pos_reg_n_0_[1]\,
      O => \rx_pos[1]_i_1_n_0\
    );
\rx_pos[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F70FFFF8F800000"
    )
        port map (
      I0 => \rx_pos_reg_n_0_[0]\,
      I1 => \rx_pos_reg_n_0_[1]\,
      I2 => rx_state(1),
      I3 => rx,
      I4 => rx_pos,
      I5 => \rx_pos_reg_n_0_[2]\,
      O => \rx_pos[2]_i_1_n_0\
    );
\rx_pos[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3400"
    )
        port map (
      I0 => rx,
      I1 => rx_state(0),
      I2 => rx_state(1),
      I3 => posedge_baud_clk_reg_n_0,
      O => rx_pos
    );
\rx_pos_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_pos[0]_i_1_n_0\,
      Q => \rx_pos_reg_n_0_[0]\,
      R => '0'
    );
\rx_pos_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_pos[1]_i_1_n_0\,
      Q => \rx_pos_reg_n_0_[1]\,
      R => '0'
    );
\rx_pos_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rx_pos[2]_i_1_n_0\,
      Q => \rx_pos_reg_n_0_[2]\,
      R => '0'
    );
rx_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFCFF88880000"
    )
        port map (
      I0 => posedge_baud_clk_reg_n_0,
      I1 => rx_state(0),
      I2 => rx_start_bit_buff(0),
      I3 => rx_start_bit_buff(1),
      I4 => rx_state(1),
      I5 => \^rx_ready\,
      O => rx_ready_i_1_n_0
    );
rx_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx_ready_i_1_n_0,
      Q => \^rx_ready\,
      R => '0'
    );
\rx_start_bit_buff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx,
      Q => rx_start_bit_buff(0),
      R => '0'
    );
\rx_start_bit_buff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx_start_bit_buff(0),
      Q => rx_start_bit_buff(1),
      R => '0'
    );
\trans_flag_buff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => baud_clk_reg_n_0,
      CE => '1',
      D => tx_start_trans,
      Q => trans_flag_buff(0),
      R => '0'
    );
\trans_flag_buff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => baud_clk_reg_n_0,
      CE => '1',
      D => trans_flag_buff(0),
      Q => trans_flag_buff(1),
      R => '0'
    );
tx_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2C2F2F2F2C2C2C2"
    )
        port map (
      I0 => \^tx\,
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_i_2_n_0,
      I4 => \tx_pos_reg_n_0_[2]\,
      I5 => tx_i_3_n_0,
      O => tx_i_1_n_0
    );
tx_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => tx_buff(7),
      I1 => tx_buff(6),
      I2 => \tx_pos_reg_n_0_[1]\,
      I3 => tx_buff(5),
      I4 => \tx_pos_reg_n_0_[0]\,
      I5 => tx_buff(4),
      O => tx_i_2_n_0
    );
tx_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => tx_buff(3),
      I1 => tx_buff(2),
      I2 => \tx_pos_reg_n_0_[1]\,
      I3 => tx_buff(1),
      I4 => \tx_pos_reg_n_0_[0]\,
      I5 => tx_buff(0),
      O => tx_i_3_n_0
    );
\tx_pos[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D9449944"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(1),
      I2 => \tx_pos_reg_n_0_[2]\,
      I3 => \tx_pos_reg_n_0_[0]\,
      I4 => \tx_pos_reg_n_0_[1]\,
      O => \tx_pos[0]_i_1_n_0\
    );
\tx_pos[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D9DD4400"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(1),
      I2 => \tx_pos_reg_n_0_[2]\,
      I3 => \tx_pos_reg_n_0_[0]\,
      I4 => \tx_pos_reg_n_0_[1]\,
      O => \tx_pos[1]_i_1_n_0\
    );
\tx_pos[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D4D0D0D0"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(1),
      I2 => \tx_pos_reg_n_0_[2]\,
      I3 => \tx_pos_reg_n_0_[0]\,
      I4 => \tx_pos_reg_n_0_[1]\,
      O => \tx_pos[2]_i_1_n_0\
    );
\tx_pos_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => baud_clk_reg_n_0,
      CE => '1',
      D => \tx_pos[0]_i_1_n_0\,
      Q => \tx_pos_reg_n_0_[0]\,
      R => '0'
    );
\tx_pos_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => baud_clk_reg_n_0,
      CE => '1',
      D => \tx_pos[1]_i_1_n_0\,
      Q => \tx_pos_reg_n_0_[1]\,
      R => '0'
    );
\tx_pos_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => baud_clk_reg_n_0,
      CE => '1',
      D => \tx_pos[2]_i_1_n_0\,
      Q => \tx_pos_reg_n_0_[2]\,
      R => '0'
    );
tx_ready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(1),
      O => tx_ready
    );
tx_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => baud_clk_reg_n_0,
      CE => '1',
      D => tx_i_1_n_0,
      Q => \^tx\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_uart_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_uart_0_0 : entity is "design_1_uart_0_0,uart,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_uart_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_uart_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_uart_0_0 : entity is "uart,Vivado 2018.3";
end design_1_uart_0_0;

architecture STRUCTURE of design_1_uart_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clock_gen/clk_wiz_clk_out1, INSERT_VIP 0";
begin
U0: entity work.design_1_uart_0_0_uart
     port map (
      clk => clk,
      rx => rx,
      rx_data(7 downto 0) => rx_data(7 downto 0),
      rx_ready => rx_ready,
      tx => tx,
      tx_buff(7 downto 0) => tx_buff(7 downto 0),
      tx_ready => tx_ready,
      tx_start_trans => tx_start_trans
    );
end STRUCTURE;
