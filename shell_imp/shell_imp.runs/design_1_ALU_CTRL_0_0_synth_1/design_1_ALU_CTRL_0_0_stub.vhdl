-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Oct  5 21:35:59 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ALU_CTRL_0_0_stub.vhdl
-- Design      : design_1_ALU_CTRL_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    alu_op : in STD_LOGIC_VECTOR ( 3 downto 0 );
    op_add : out STD_LOGIC;
    op_sub : out STD_LOGIC;
    op_and : out STD_LOGIC;
    op_or : out STD_LOGIC;
    op_xor : out STD_LOGIC;
    op_nand : out STD_LOGIC;
    op_asr : out STD_LOGIC;
    op_asl : out STD_LOGIC;
    op_cmp : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "alu_op[3:0],op_add,op_sub,op_and,op_or,op_xor,op_nand,op_asr,op_asl,op_cmp";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ALU_CTRL,Vivado 2018.3";
begin
end;
