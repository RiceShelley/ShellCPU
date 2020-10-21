-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Oct  5 21:34:57 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_imm_ext_0_0/design_1_imm_ext_0_0_stub.vhdl
-- Design      : design_1_imm_ext_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_imm_ext_0_0 is
  Port ( 
    imm : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_ext_imm : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end design_1_imm_ext_0_0;

architecture stub of design_1_imm_ext_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "imm[10:0],s_ext_imm[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "imm_ext,Vivado 2018.3";
begin
end;
