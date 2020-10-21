-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Wed Oct 21 00:01:25 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mux_2_to_1_0_0_sim_netlist.vhdl
-- Design      : design_1_mux_2_to_1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux_2_to_1 is
  port (
    c : out STD_LOGIC_VECTOR ( 15 downto 0 );
    b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux_2_to_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux_2_to_1 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \c[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \c[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \c[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \c[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \c[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \c[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \c[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \c[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \c[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \c[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \c[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \c[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \c[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \c[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \c[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \c[9]_INST_0\ : label is "soft_lutpair4";
begin
\c[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => sel,
      O => c(0)
    );
\c[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b(10),
      I1 => a(10),
      I2 => sel,
      O => c(10)
    );
\c[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b(11),
      I1 => a(11),
      I2 => sel,
      O => c(11)
    );
\c[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b(12),
      I1 => a(12),
      I2 => sel,
      O => c(12)
    );
\c[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b(13),
      I1 => a(13),
      I2 => sel,
      O => c(13)
    );
\c[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b(14),
      I1 => a(14),
      I2 => sel,
      O => c(14)
    );
\c[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b(15),
      I1 => a(15),
      I2 => sel,
      O => c(15)
    );
\c[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b(1),
      I1 => a(1),
      I2 => sel,
      O => c(1)
    );
\c[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b(2),
      I1 => a(2),
      I2 => sel,
      O => c(2)
    );
\c[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b(3),
      I1 => a(3),
      I2 => sel,
      O => c(3)
    );
\c[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b(4),
      I1 => a(4),
      I2 => sel,
      O => c(4)
    );
\c[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b(5),
      I1 => a(5),
      I2 => sel,
      O => c(5)
    );
\c[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b(6),
      I1 => a(6),
      I2 => sel,
      O => c(6)
    );
\c[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b(7),
      I1 => a(7),
      I2 => sel,
      O => c(7)
    );
\c[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b(8),
      I1 => a(8),
      I2 => sel,
      O => c(8)
    );
\c[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b(9),
      I1 => a(9),
      I2 => sel,
      O => c(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    a : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC;
    c : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_mux_2_to_1_0_0,mux_2_to_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mux_2_to_1,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux_2_to_1
     port map (
      a(15 downto 0) => a(15 downto 0),
      b(15 downto 0) => b(15 downto 0),
      c(15 downto 0) => c(15 downto 0),
      sel => sel
    );
end STRUCTURE;
