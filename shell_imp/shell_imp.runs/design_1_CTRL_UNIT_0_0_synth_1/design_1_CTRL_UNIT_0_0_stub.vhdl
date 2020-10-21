-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct  6 17:37:47 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_CTRL_UNIT_0_0_stub.vhdl
-- Design      : design_1_CTRL_UNIT_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dest_addr : out STD_LOGIC_VECTOR ( 2 downto 0 );
    regA_addr : out STD_LOGIC_VECTOR ( 2 downto 0 );
    regB_addr : out STD_LOGIC_VECTOR ( 2 downto 0 );
    alu_op : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_file_input_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    reg_file_wr : out STD_LOGIC;
    pc_ld_en : out STD_LOGIC;
    pc_en : out STD_LOGIC;
    data_mem_wr : out STD_LOGIC;
    cmp_status_wr : out STD_LOGIC;
    ri_imm : out STD_LOGIC_VECTOR ( 5 downto 0 );
    imm : out STD_LOGIC_VECTOR ( 10 downto 0 );
    alu_input_sel : out STD_LOGIC;
    pc_load_sel : out STD_LOGIC;
    cmp_eq : in STD_LOGIC;
    cmp_ne : in STD_LOGIC;
    cmp_gt : in STD_LOGIC;
    cmp_lt : in STD_LOGIC;
    stack_ld : out STD_LOGIC;
    dec_stack : out STD_LOGIC;
    inc_stack : out STD_LOGIC;
    stack_wr : out STD_LOGIC;
    ri_imm_format_sel : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "instruction[15:0],dest_addr[2:0],regA_addr[2:0],regB_addr[2:0],alu_op[3:0],reg_file_input_sel[1:0],reg_file_wr,pc_ld_en,pc_en,data_mem_wr,cmp_status_wr,ri_imm[5:0],imm[10:0],alu_input_sel,pc_load_sel,cmp_eq,cmp_ne,cmp_gt,cmp_lt,stack_ld,dec_stack,inc_stack,stack_wr,ri_imm_format_sel";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "CTRL_UNIT,Vivado 2018.3";
begin
end;
