-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Oct  5 21:35:59 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ALU_CTRL_0_0_sim_netlist.vhdl
-- Design      : design_1_ALU_CTRL_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_CTRL is
  port (
    op_add : out STD_LOGIC;
    op_nand : out STD_LOGIC;
    op_asr : out STD_LOGIC;
    op_cmp : out STD_LOGIC;
    alu_op : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_CTRL;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_CTRL is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \op_add__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \op_asr__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \op_cmp__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \op_nand__0\ : label is "soft_lutpair0";
begin
\op_add__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => alu_op(3),
      I1 => alu_op(2),
      I2 => alu_op(0),
      I3 => alu_op(1),
      O => op_add
    );
\op_asr__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => alu_op(3),
      I1 => alu_op(0),
      I2 => alu_op(1),
      I3 => alu_op(2),
      O => op_asr
    );
\op_cmp__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(2),
      I2 => alu_op(1),
      I3 => alu_op(3),
      O => op_cmp
    );
\op_nand__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => alu_op(3),
      I1 => alu_op(1),
      I2 => alu_op(0),
      I3 => alu_op(2),
      O => op_nand
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_ALU_CTRL_0_0,ALU_CTRL,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ALU_CTRL,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_CTRL
     port map (
      alu_op(3 downto 0) => alu_op(3 downto 0),
      op_add => op_add,
      op_asr => op_asr,
      op_cmp => op_cmp,
      op_nand => op_nand
    );
op_and_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => alu_op(3),
      I1 => alu_op(2),
      I2 => alu_op(1),
      I3 => alu_op(0),
      O => op_and
    );
op_asl_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => alu_op(2),
      I1 => alu_op(3),
      I2 => alu_op(0),
      I3 => alu_op(1),
      O => op_asl
    );
op_or_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => alu_op(3),
      I1 => alu_op(2),
      I2 => alu_op(0),
      I3 => alu_op(1),
      O => op_or
    );
op_sub_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => alu_op(3),
      I1 => alu_op(2),
      I2 => alu_op(0),
      I3 => alu_op(1),
      O => op_sub
    );
op_xor_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => alu_op(3),
      I1 => alu_op(0),
      I2 => alu_op(2),
      I3 => alu_op(1),
      O => op_xor
    );
end STRUCTURE;
