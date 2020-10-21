-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Oct  5 21:35:28 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_pc_load_mux_0_0/design_1_pc_load_mux_0_0_sim_netlist.vhdl
-- Design      : design_1_pc_load_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pc_load_mux_0_0_pc_load_mux is
  port (
    to_pc_ld : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pc_imm_b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gpr_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pc_load_mux_0_0_pc_load_mux : entity is "pc_load_mux";
end design_1_pc_load_mux_0_0_pc_load_mux;

architecture STRUCTURE of design_1_pc_load_mux_0_0_pc_load_mux is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \to_pc_ld[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \to_pc_ld[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \to_pc_ld[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \to_pc_ld[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \to_pc_ld[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \to_pc_ld[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \to_pc_ld[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \to_pc_ld[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \to_pc_ld[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \to_pc_ld[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \to_pc_ld[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \to_pc_ld[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \to_pc_ld[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \to_pc_ld[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \to_pc_ld[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \to_pc_ld[9]_INST_0\ : label is "soft_lutpair4";
begin
\to_pc_ld[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pc_imm_b(0),
      I1 => gpr_in(0),
      I2 => sel,
      O => to_pc_ld(0)
    );
\to_pc_ld[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pc_imm_b(10),
      I1 => gpr_in(10),
      I2 => sel,
      O => to_pc_ld(10)
    );
\to_pc_ld[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pc_imm_b(11),
      I1 => gpr_in(11),
      I2 => sel,
      O => to_pc_ld(11)
    );
\to_pc_ld[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pc_imm_b(12),
      I1 => gpr_in(12),
      I2 => sel,
      O => to_pc_ld(12)
    );
\to_pc_ld[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pc_imm_b(13),
      I1 => gpr_in(13),
      I2 => sel,
      O => to_pc_ld(13)
    );
\to_pc_ld[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pc_imm_b(14),
      I1 => gpr_in(14),
      I2 => sel,
      O => to_pc_ld(14)
    );
\to_pc_ld[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pc_imm_b(15),
      I1 => gpr_in(15),
      I2 => sel,
      O => to_pc_ld(15)
    );
\to_pc_ld[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pc_imm_b(1),
      I1 => gpr_in(1),
      I2 => sel,
      O => to_pc_ld(1)
    );
\to_pc_ld[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pc_imm_b(2),
      I1 => gpr_in(2),
      I2 => sel,
      O => to_pc_ld(2)
    );
\to_pc_ld[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pc_imm_b(3),
      I1 => gpr_in(3),
      I2 => sel,
      O => to_pc_ld(3)
    );
\to_pc_ld[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pc_imm_b(4),
      I1 => gpr_in(4),
      I2 => sel,
      O => to_pc_ld(4)
    );
\to_pc_ld[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pc_imm_b(5),
      I1 => gpr_in(5),
      I2 => sel,
      O => to_pc_ld(5)
    );
\to_pc_ld[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pc_imm_b(6),
      I1 => gpr_in(6),
      I2 => sel,
      O => to_pc_ld(6)
    );
\to_pc_ld[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pc_imm_b(7),
      I1 => gpr_in(7),
      I2 => sel,
      O => to_pc_ld(7)
    );
\to_pc_ld[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pc_imm_b(8),
      I1 => gpr_in(8),
      I2 => sel,
      O => to_pc_ld(8)
    );
\to_pc_ld[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pc_imm_b(9),
      I1 => gpr_in(9),
      I2 => sel,
      O => to_pc_ld(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pc_load_mux_0_0 is
  port (
    gpr_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pc_imm_b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC;
    to_pc_ld : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pc_load_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pc_load_mux_0_0 : entity is "design_1_pc_load_mux_0_0,pc_load_mux,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_pc_load_mux_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_pc_load_mux_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_pc_load_mux_0_0 : entity is "pc_load_mux,Vivado 2018.3";
end design_1_pc_load_mux_0_0;

architecture STRUCTURE of design_1_pc_load_mux_0_0 is
begin
U0: entity work.design_1_pc_load_mux_0_0_pc_load_mux
     port map (
      gpr_in(15 downto 0) => gpr_in(15 downto 0),
      pc_imm_b(15 downto 0) => pc_imm_b(15 downto 0),
      sel => sel,
      to_pc_ld(15 downto 0) => to_pc_ld(15 downto 0)
    );
end STRUCTURE;
