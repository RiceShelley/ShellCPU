-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Oct  5 21:35:28 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_adder_1_0_sim_netlist.vhdl
-- Design      : design_1_adder_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder is
  port (
    c : out STD_LOGIC_VECTOR ( 15 downto 0 );
    a : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder is
  signal \c[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \c[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \c[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \c[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \c[0]_INST_0_n_0\ : STD_LOGIC;
  signal \c[0]_INST_0_n_1\ : STD_LOGIC;
  signal \c[0]_INST_0_n_2\ : STD_LOGIC;
  signal \c[0]_INST_0_n_3\ : STD_LOGIC;
  signal \c[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \c[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \c[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \c[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \c[12]_INST_0_n_1\ : STD_LOGIC;
  signal \c[12]_INST_0_n_2\ : STD_LOGIC;
  signal \c[12]_INST_0_n_3\ : STD_LOGIC;
  signal \c[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \c[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \c[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \c[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \c[4]_INST_0_n_0\ : STD_LOGIC;
  signal \c[4]_INST_0_n_1\ : STD_LOGIC;
  signal \c[4]_INST_0_n_2\ : STD_LOGIC;
  signal \c[4]_INST_0_n_3\ : STD_LOGIC;
  signal \c[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \c[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \c[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \c[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \c[8]_INST_0_n_0\ : STD_LOGIC;
  signal \c[8]_INST_0_n_1\ : STD_LOGIC;
  signal \c[8]_INST_0_n_2\ : STD_LOGIC;
  signal \c[8]_INST_0_n_3\ : STD_LOGIC;
  signal \NLW_c[12]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\c[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \c[0]_INST_0_n_0\,
      CO(2) => \c[0]_INST_0_n_1\,
      CO(1) => \c[0]_INST_0_n_2\,
      CO(0) => \c[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(3 downto 0),
      O(3 downto 0) => c(3 downto 0),
      S(3) => \c[0]_INST_0_i_1_n_0\,
      S(2) => \c[0]_INST_0_i_2_n_0\,
      S(1) => \c[0]_INST_0_i_3_n_0\,
      S(0) => \c[0]_INST_0_i_4_n_0\
    );
\c[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(3),
      I1 => b(3),
      O => \c[0]_INST_0_i_1_n_0\
    );
\c[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      O => \c[0]_INST_0_i_2_n_0\
    );
\c[0]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(1),
      I1 => b(1),
      O => \c[0]_INST_0_i_3_n_0\
    );
\c[0]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      O => \c[0]_INST_0_i_4_n_0\
    );
\c[12]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \c[8]_INST_0_n_0\,
      CO(3) => \NLW_c[12]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \c[12]_INST_0_n_1\,
      CO(1) => \c[12]_INST_0_n_2\,
      CO(0) => \c[12]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => a(14 downto 12),
      O(3 downto 0) => c(15 downto 12),
      S(3) => \c[12]_INST_0_i_1_n_0\,
      S(2) => \c[12]_INST_0_i_2_n_0\,
      S(1) => \c[12]_INST_0_i_3_n_0\,
      S(0) => \c[12]_INST_0_i_4_n_0\
    );
\c[12]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(15),
      I1 => b(15),
      O => \c[12]_INST_0_i_1_n_0\
    );
\c[12]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(14),
      I1 => b(14),
      O => \c[12]_INST_0_i_2_n_0\
    );
\c[12]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(13),
      I1 => b(13),
      O => \c[12]_INST_0_i_3_n_0\
    );
\c[12]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(12),
      I1 => b(12),
      O => \c[12]_INST_0_i_4_n_0\
    );
\c[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \c[0]_INST_0_n_0\,
      CO(3) => \c[4]_INST_0_n_0\,
      CO(2) => \c[4]_INST_0_n_1\,
      CO(1) => \c[4]_INST_0_n_2\,
      CO(0) => \c[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(7 downto 4),
      O(3 downto 0) => c(7 downto 4),
      S(3) => \c[4]_INST_0_i_1_n_0\,
      S(2) => \c[4]_INST_0_i_2_n_0\,
      S(1) => \c[4]_INST_0_i_3_n_0\,
      S(0) => \c[4]_INST_0_i_4_n_0\
    );
\c[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(7),
      I1 => b(7),
      O => \c[4]_INST_0_i_1_n_0\
    );
\c[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(6),
      I1 => b(6),
      O => \c[4]_INST_0_i_2_n_0\
    );
\c[4]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(5),
      I1 => b(5),
      O => \c[4]_INST_0_i_3_n_0\
    );
\c[4]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(4),
      I1 => b(4),
      O => \c[4]_INST_0_i_4_n_0\
    );
\c[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \c[4]_INST_0_n_0\,
      CO(3) => \c[8]_INST_0_n_0\,
      CO(2) => \c[8]_INST_0_n_1\,
      CO(1) => \c[8]_INST_0_n_2\,
      CO(0) => \c[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(11 downto 8),
      O(3 downto 0) => c(11 downto 8),
      S(3) => \c[8]_INST_0_i_1_n_0\,
      S(2) => \c[8]_INST_0_i_2_n_0\,
      S(1) => \c[8]_INST_0_i_3_n_0\,
      S(0) => \c[8]_INST_0_i_4_n_0\
    );
\c[8]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(11),
      I1 => b(11),
      O => \c[8]_INST_0_i_1_n_0\
    );
\c[8]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(10),
      I1 => b(10),
      O => \c[8]_INST_0_i_2_n_0\
    );
\c[8]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(9),
      I1 => b(9),
      O => \c[8]_INST_0_i_3_n_0\
    );
\c[8]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(8),
      I1 => b(8),
      O => \c[8]_INST_0_i_4_n_0\
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
    c : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_adder_1_0,adder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "adder,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder
     port map (
      a(15 downto 0) => a(15 downto 0),
      b(15 downto 0) => b(15 downto 0),
      c(15 downto 0) => c(15 downto 0)
    );
end STRUCTURE;
