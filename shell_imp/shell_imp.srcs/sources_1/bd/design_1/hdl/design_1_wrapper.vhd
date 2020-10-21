--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Tue Oct 20 23:59:59 2020
--Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    CLK100MHZ : in STD_LOGIC;
    UART_RXD_OUT : out STD_LOGIC;
    UART_TXD_IN : in STD_LOGIC;
    inr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    outvalue : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    CLK100MHZ : in STD_LOGIC;
    UART_TXD_IN : in STD_LOGIC;
    UART_RXD_OUT : out STD_LOGIC;
    outvalue : out STD_LOGIC_VECTOR ( 15 downto 0 );
    inr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      CLK100MHZ => CLK100MHZ,
      UART_RXD_OUT => UART_RXD_OUT,
      UART_TXD_IN => UART_TXD_IN,
      inr(2 downto 0) => inr(2 downto 0),
      outvalue(15 downto 0) => outvalue(15 downto 0)
    );
end STRUCTURE;
