-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct  6 19:38:37 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_uart_0_2/design_1_uart_0_2_stub.vhdl
-- Design      : design_1_uart_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_uart_0_2 is
  Port ( 
    clk : in STD_LOGIC;
    rx : in STD_LOGIC;
    rx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_ready : out STD_LOGIC;
    tx_buff : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_start_trans : in STD_LOGIC;
    tx : out STD_LOGIC;
    tx_ready : out STD_LOGIC
  );

end design_1_uart_0_2;

architecture stub of design_1_uart_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rx,rx_data[7:0],rx_ready,tx_buff[7:0],tx_start_trans,tx,tx_ready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "uart,Vivado 2018.3";
begin
end;
