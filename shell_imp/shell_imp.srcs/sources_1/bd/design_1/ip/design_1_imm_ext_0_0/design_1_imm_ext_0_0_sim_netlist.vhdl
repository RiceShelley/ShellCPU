-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Oct  5 21:34:58 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_imm_ext_0_0/design_1_imm_ext_0_0_sim_netlist.vhdl
-- Design      : design_1_imm_ext_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_imm_ext_0_0 is
  port (
    imm : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_ext_imm : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_imm_ext_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_imm_ext_0_0 : entity is "design_1_imm_ext_0_0,imm_ext,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_imm_ext_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_imm_ext_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_imm_ext_0_0 : entity is "imm_ext,Vivado 2018.3";
end design_1_imm_ext_0_0;

architecture STRUCTURE of design_1_imm_ext_0_0 is
  signal \^imm\ : STD_LOGIC_VECTOR ( 10 downto 0 );
begin
  \^imm\(10 downto 0) <= imm(10 downto 0);
  s_ext_imm(15) <= \^imm\(10);
  s_ext_imm(14) <= \^imm\(10);
  s_ext_imm(13) <= \^imm\(10);
  s_ext_imm(12) <= \^imm\(10);
  s_ext_imm(11) <= \^imm\(10);
  s_ext_imm(10 downto 0) <= \^imm\(10 downto 0);
end STRUCTURE;
