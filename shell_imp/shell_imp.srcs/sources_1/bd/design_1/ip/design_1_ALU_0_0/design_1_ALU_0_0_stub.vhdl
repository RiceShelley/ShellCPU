-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Oct  5 21:36:28 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_ALU_0_0/design_1_ALU_0_0_stub.vhdl
-- Design      : design_1_ALU_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ALU_0_0 is
  Port ( 
    inputA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    inputB : in STD_LOGIC_VECTOR ( 15 downto 0 );
    outputC : out STD_LOGIC_VECTOR ( 15 downto 0 );
    op_add : in STD_LOGIC;
    op_sub : in STD_LOGIC;
    op_and : in STD_LOGIC;
    op_or : in STD_LOGIC;
    op_xor : in STD_LOGIC;
    op_nand : in STD_LOGIC;
    op_asr : in STD_LOGIC;
    op_asl : in STD_LOGIC;
    op_cmp : in STD_LOGIC
  );

end design_1_ALU_0_0;

architecture stub of design_1_ALU_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "inputA[15:0],inputB[15:0],outputC[15:0],op_add,op_sub,op_and,op_or,op_xor,op_nand,op_asr,op_asl,op_cmp";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ALU,Vivado 2018.3";
begin
end;
