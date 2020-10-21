-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct 20 23:29:54 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_reg_file_0_0_stub.vhdl
-- Design      : design_1_reg_file_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    read_addrA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    read_addrB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    write_addrC : in STD_LOGIC_VECTOR ( 2 downto 0 );
    inr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regC : in STD_LOGIC_VECTOR ( 15 downto 0 );
    outvalue : out STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_en : in STD_LOGIC;
    rst : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,read_addrA[2:0],read_addrB[2:0],write_addrC[2:0],inr[2:0],regA[15:0],regB[15:0],regC[15:0],outvalue[15:0],wr_en,rst";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "reg_file,Vivado 2018.3";
begin
end;
