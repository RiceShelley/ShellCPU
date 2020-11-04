-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Fri Oct 30 22:03:02 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_shell_cpu_top_0_0/design_1_shell_cpu_top_0_0_stub.vhdl
-- Design      : design_1_shell_cpu_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_shell_cpu_top_0_0 is
  Port ( 
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

end design_1_shell_cpu_top_0_0;

architecture stub of design_1_shell_cpu_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,clk,data_mem[15:0],data_mem_wr,from_stack[15:0],inr[2:0],ins_addr[15:0],instruction[15:0],outvalue[15:0],regA[15:0],regB[15:0],stack_ptr[15:0],stack_wr";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "shell_cpu_top,Vivado 2018.3";
begin
end;
