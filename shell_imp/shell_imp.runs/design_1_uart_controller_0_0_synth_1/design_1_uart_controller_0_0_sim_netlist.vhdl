-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Fri Oct 30 14:46:14 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart_controller_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_controller is
  port (
    tx_buff : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_start_trans : out STD_LOGIC;
    tx_buff_data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    tx_buff_wr : in STD_LOGIC;
    tx_ready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_controller is
  signal \tx_buff[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buff[7]_i_2_n_0\ : STD_LOGIC;
  signal \^tx_start_trans\ : STD_LOGIC;
  signal tx_start_trans_i_1_n_0 : STD_LOGIC;
  signal tx_start_trans_i_2_n_0 : STD_LOGIC;
begin
  tx_start_trans <= \^tx_start_trans\;
\tx_buff[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => tx_buff_data_in(15),
      I1 => \tx_buff[7]_i_2_n_0\,
      I2 => tx_buff_data_in(14),
      I3 => tx_buff_wr,
      O => \tx_buff[7]_i_1_n_0\
    );
\tx_buff[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => tx_buff_data_in(12),
      I1 => tx_buff_data_in(11),
      I2 => tx_buff_data_in(9),
      I3 => tx_buff_data_in(8),
      I4 => tx_buff_data_in(10),
      I5 => tx_buff_data_in(13),
      O => \tx_buff[7]_i_2_n_0\
    );
\tx_buff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_buff[7]_i_1_n_0\,
      D => tx_buff_data_in(0),
      Q => tx_buff(0),
      R => '0'
    );
\tx_buff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tx_buff[7]_i_1_n_0\,
      D => tx_buff_data_in(1),
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
      D => tx_buff_data_in(2),
      Q => tx_buff(2),
      R => '0'
    );
\tx_buff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tx_buff[7]_i_1_n_0\,
      D => tx_buff_data_in(3),
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
      D => tx_buff_data_in(4),
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
      D => tx_buff_data_in(5),
      Q => tx_buff(5),
      R => '0'
    );
\tx_buff_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tx_buff[7]_i_1_n_0\,
      D => tx_buff_data_in(6),
      Q => tx_buff(6),
      R => '0'
    );
\tx_buff_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tx_buff[7]_i_1_n_0\,
      D => tx_buff_data_in(7),
      Q => tx_buff(7),
      R => '0'
    );
tx_start_trans_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8000FF000000"
    )
        port map (
      I0 => tx_buff_data_in(15),
      I1 => tx_buff_data_in(14),
      I2 => tx_start_trans_i_2_n_0,
      I3 => tx_buff_wr,
      I4 => \^tx_start_trans\,
      I5 => tx_ready,
      O => tx_start_trans_i_1_n_0
    );
tx_start_trans_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => tx_buff_data_in(12),
      I1 => tx_buff_data_in(11),
      I2 => tx_buff_data_in(9),
      I3 => tx_buff_data_in(8),
      I4 => tx_buff_data_in(10),
      I5 => tx_buff_data_in(13),
      O => tx_start_trans_i_2_n_0
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_uart_controller_0_0,uart_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uart_controller,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN /clock_gen/clk_wiz_clk_out1, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_controller
     port map (
      clk => clk,
      tx_buff(7 downto 0) => tx_buff(7 downto 0),
      tx_buff_data_in(15 downto 0) => tx_buff_data_in(15 downto 0),
      tx_buff_wr => tx_buff_wr,
      tx_ready => tx_ready,
      tx_start_trans => tx_start_trans
    );
end STRUCTURE;
