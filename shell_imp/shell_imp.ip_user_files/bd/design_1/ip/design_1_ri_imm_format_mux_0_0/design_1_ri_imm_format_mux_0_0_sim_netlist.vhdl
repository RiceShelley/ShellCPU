-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Oct  5 21:35:59 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_ri_imm_format_mux_0_0/design_1_ri_imm_format_mux_0_0_sim_netlist.vhdl
-- Design      : design_1_ri_imm_format_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ri_imm_format_mux_0_0_ri_imm_format_mux is
  port (
    ri_imm : out STD_LOGIC_VECTOR ( 15 downto 0 );
    z_ext_imm : in STD_LOGIC_VECTOR ( 15 downto 0 );
    upper_concat_imm : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ri_imm_format_mux_0_0_ri_imm_format_mux : entity is "ri_imm_format_mux";
end design_1_ri_imm_format_mux_0_0_ri_imm_format_mux;

architecture STRUCTURE of design_1_ri_imm_format_mux_0_0_ri_imm_format_mux is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ri_imm[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ri_imm[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ri_imm[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ri_imm[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ri_imm[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ri_imm[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ri_imm[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ri_imm[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ri_imm[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ri_imm[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ri_imm[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ri_imm[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ri_imm[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ri_imm[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ri_imm[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ri_imm[9]_INST_0\ : label is "soft_lutpair4";
begin
\ri_imm[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => z_ext_imm(0),
      I1 => upper_concat_imm(0),
      I2 => sel,
      O => ri_imm(0)
    );
\ri_imm[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => z_ext_imm(10),
      I1 => upper_concat_imm(10),
      I2 => sel,
      O => ri_imm(10)
    );
\ri_imm[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => z_ext_imm(11),
      I1 => upper_concat_imm(11),
      I2 => sel,
      O => ri_imm(11)
    );
\ri_imm[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => z_ext_imm(12),
      I1 => upper_concat_imm(12),
      I2 => sel,
      O => ri_imm(12)
    );
\ri_imm[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => z_ext_imm(13),
      I1 => upper_concat_imm(13),
      I2 => sel,
      O => ri_imm(13)
    );
\ri_imm[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => z_ext_imm(14),
      I1 => upper_concat_imm(14),
      I2 => sel,
      O => ri_imm(14)
    );
\ri_imm[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => z_ext_imm(15),
      I1 => upper_concat_imm(15),
      I2 => sel,
      O => ri_imm(15)
    );
\ri_imm[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => z_ext_imm(1),
      I1 => upper_concat_imm(1),
      I2 => sel,
      O => ri_imm(1)
    );
\ri_imm[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => z_ext_imm(2),
      I1 => upper_concat_imm(2),
      I2 => sel,
      O => ri_imm(2)
    );
\ri_imm[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => z_ext_imm(3),
      I1 => upper_concat_imm(3),
      I2 => sel,
      O => ri_imm(3)
    );
\ri_imm[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => z_ext_imm(4),
      I1 => upper_concat_imm(4),
      I2 => sel,
      O => ri_imm(4)
    );
\ri_imm[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => z_ext_imm(5),
      I1 => upper_concat_imm(5),
      I2 => sel,
      O => ri_imm(5)
    );
\ri_imm[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => z_ext_imm(6),
      I1 => upper_concat_imm(6),
      I2 => sel,
      O => ri_imm(6)
    );
\ri_imm[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => z_ext_imm(7),
      I1 => upper_concat_imm(7),
      I2 => sel,
      O => ri_imm(7)
    );
\ri_imm[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => z_ext_imm(8),
      I1 => upper_concat_imm(8),
      I2 => sel,
      O => ri_imm(8)
    );
\ri_imm[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => z_ext_imm(9),
      I1 => upper_concat_imm(9),
      I2 => sel,
      O => ri_imm(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ri_imm_format_mux_0_0 is
  port (
    upper_concat_imm : in STD_LOGIC_VECTOR ( 15 downto 0 );
    z_ext_imm : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC;
    ri_imm : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ri_imm_format_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ri_imm_format_mux_0_0 : entity is "design_1_ri_imm_format_mux_0_0,ri_imm_format_mux,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_ri_imm_format_mux_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_ri_imm_format_mux_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_ri_imm_format_mux_0_0 : entity is "ri_imm_format_mux,Vivado 2018.3";
end design_1_ri_imm_format_mux_0_0;

architecture STRUCTURE of design_1_ri_imm_format_mux_0_0 is
begin
U0: entity work.design_1_ri_imm_format_mux_0_0_ri_imm_format_mux
     port map (
      ri_imm(15 downto 0) => ri_imm(15 downto 0),
      sel => sel,
      upper_concat_imm(15 downto 0) => upper_concat_imm(15 downto 0),
      z_ext_imm(15 downto 0) => z_ext_imm(15 downto 0)
    );
end STRUCTURE;
