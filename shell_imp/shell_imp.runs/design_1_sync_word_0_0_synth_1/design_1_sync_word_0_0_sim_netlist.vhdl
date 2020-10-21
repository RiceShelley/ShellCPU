-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sat Oct 10 18:20:21 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sync_word_0_0_sim_netlist.vhdl
-- Design      : design_1_sync_word_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_word is
  port (
    stable_word : out STD_LOGIC_VECTOR ( 15 downto 0 );
    word : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_word;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_word is
  signal double_flop : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
\double_flop_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => word(0),
      Q => double_flop(0),
      R => '0'
    );
\double_flop_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => word(10),
      Q => double_flop(10),
      R => '0'
    );
\double_flop_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => word(11),
      Q => double_flop(11),
      R => '0'
    );
\double_flop_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => word(12),
      Q => double_flop(12),
      R => '0'
    );
\double_flop_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => word(13),
      Q => double_flop(13),
      R => '0'
    );
\double_flop_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => word(14),
      Q => double_flop(14),
      R => '0'
    );
\double_flop_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => word(15),
      Q => double_flop(15),
      R => '0'
    );
\double_flop_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => word(1),
      Q => double_flop(1),
      R => '0'
    );
\double_flop_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => word(2),
      Q => double_flop(2),
      R => '0'
    );
\double_flop_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => word(3),
      Q => double_flop(3),
      R => '0'
    );
\double_flop_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => word(4),
      Q => double_flop(4),
      R => '0'
    );
\double_flop_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => word(5),
      Q => double_flop(5),
      R => '0'
    );
\double_flop_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => word(6),
      Q => double_flop(6),
      R => '0'
    );
\double_flop_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => word(7),
      Q => double_flop(7),
      R => '0'
    );
\double_flop_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => word(8),
      Q => double_flop(8),
      R => '0'
    );
\double_flop_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => word(9),
      Q => double_flop(9),
      R => '0'
    );
\stable_word_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => double_flop(0),
      Q => stable_word(0),
      R => '0'
    );
\stable_word_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => double_flop(10),
      Q => stable_word(10),
      R => '0'
    );
\stable_word_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => double_flop(11),
      Q => stable_word(11),
      R => '0'
    );
\stable_word_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => double_flop(12),
      Q => stable_word(12),
      R => '0'
    );
\stable_word_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => double_flop(13),
      Q => stable_word(13),
      R => '0'
    );
\stable_word_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => double_flop(14),
      Q => stable_word(14),
      R => '0'
    );
\stable_word_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => double_flop(15),
      Q => stable_word(15),
      R => '0'
    );
\stable_word_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => double_flop(1),
      Q => stable_word(1),
      R => '0'
    );
\stable_word_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => double_flop(2),
      Q => stable_word(2),
      R => '0'
    );
\stable_word_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => double_flop(3),
      Q => stable_word(3),
      R => '0'
    );
\stable_word_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => double_flop(4),
      Q => stable_word(4),
      R => '0'
    );
\stable_word_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => double_flop(5),
      Q => stable_word(5),
      R => '0'
    );
\stable_word_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => double_flop(6),
      Q => stable_word(6),
      R => '0'
    );
\stable_word_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => double_flop(7),
      Q => stable_word(7),
      R => '0'
    );
\stable_word_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => double_flop(8),
      Q => stable_word(8),
      R => '0'
    );
\stable_word_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => double_flop(9),
      Q => stable_word(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    word : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stable_word : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_sync_word_0_0,sync_word,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "sync_word,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN /clock_gen/clk_wiz_clk_out1, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_word
     port map (
      clk => clk,
      stable_word(15 downto 0) => stable_word(15 downto 0),
      word(15 downto 0) => word(15 downto 0)
    );
end STRUCTURE;
