-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Oct  5 21:34:26 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_reg_file_input_mux_0_0_stub.vhdl
-- Design      : design_1_reg_file_input_mux_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    output_reg : out STD_LOGIC_VECTOR ( 15 downto 0 );
    in_alu : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_mem : in STD_LOGIC_VECTOR ( 15 downto 0 );
    next_ins_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    from_stack : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "output_reg[15:0],in_alu[15:0],data_mem[15:0],next_ins_addr[15:0],from_stack[15:0],sel[1:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "reg_file_input_mux,Vivado 2018.3";
begin
end;
