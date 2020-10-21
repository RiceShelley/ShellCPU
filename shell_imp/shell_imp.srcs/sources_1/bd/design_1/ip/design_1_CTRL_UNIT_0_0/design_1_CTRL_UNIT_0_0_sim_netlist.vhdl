-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct  6 17:37:47 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_CTRL_UNIT_0_0/design_1_CTRL_UNIT_0_0_sim_netlist.vhdl
-- Design      : design_1_CTRL_UNIT_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CTRL_UNIT_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_CTRL_UNIT_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_CTRL_UNIT_0_0 : entity is "design_1_CTRL_UNIT_0_0,CTRL_UNIT,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_CTRL_UNIT_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_CTRL_UNIT_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_CTRL_UNIT_0_0 : entity is "CTRL_UNIT,Vivado 2018.3";
end design_1_CTRL_UNIT_0_0;

architecture STRUCTURE of design_1_CTRL_UNIT_0_0 is
  signal cmp_status_wr_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^instruction\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pc_ld_en_INST_0_i_1_n_0 : STD_LOGIC;
  signal reg_file_wr_INST_0_i_1_n_0 : STD_LOGIC;
  signal stack_ld_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^stack_wr\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cmp_status_wr_INST_0_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of stack_ld_INST_0_i_1 : label is "soft_lutpair0";
begin
  \^instruction\(15 downto 0) <= instruction(15 downto 0);
  dec_stack <= \^stack_wr\;
  dest_addr(2 downto 0) <= \^instruction\(8 downto 6);
  imm(10 downto 0) <= \^instruction\(10 downto 0);
  ri_imm(5 downto 0) <= \^instruction\(5 downto 0);
  ri_imm_format_sel <= \^instruction\(15);
  stack_wr <= \^stack_wr\;
alu_input_sel_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^instruction\(10),
      I1 => \^instruction\(12),
      I2 => \^instruction\(13),
      O => alu_input_sel
    );
\alu_op[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^instruction\(15),
      I1 => \^instruction\(9),
      O => alu_op(0)
    );
\alu_op[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^instruction\(10),
      I1 => \^instruction\(15),
      O => alu_op(1)
    );
\alu_op[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^instruction\(15),
      I1 => \^instruction\(11),
      O => alu_op(2)
    );
\alu_op[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^instruction\(15),
      I1 => \^instruction\(12),
      I2 => \^instruction\(10),
      O => alu_op(3)
    );
cmp_status_wr_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \^instruction\(12),
      I1 => \^instruction\(15),
      I2 => cmp_status_wr_INST_0_i_1_n_0,
      I3 => \^instruction\(9),
      I4 => \^instruction\(10),
      I5 => \^instruction\(11),
      O => cmp_status_wr
    );
cmp_status_wr_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^instruction\(14),
      I1 => \^instruction\(13),
      O => cmp_status_wr_INST_0_i_1_n_0
    );
data_mem_wr_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^instruction\(14),
      I1 => \^instruction\(15),
      I2 => \^instruction\(13),
      O => data_mem_wr
    );
inc_stack_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \^instruction\(13),
      I1 => \^instruction\(15),
      I2 => \^instruction\(10),
      I3 => \^instruction\(11),
      I4 => \^instruction\(9),
      I5 => stack_ld_INST_0_i_1_n_0,
      O => inc_stack
    );
pc_en_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8A"
    )
        port map (
      I0 => \^instruction\(13),
      I1 => \^instruction\(14),
      I2 => pc_ld_en_INST_0_i_1_n_0,
      I3 => \^instruction\(15),
      O => pc_en
    );
pc_ld_en_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004A"
    )
        port map (
      I0 => \^instruction\(14),
      I1 => pc_ld_en_INST_0_i_1_n_0,
      I2 => \^instruction\(13),
      I3 => \^instruction\(15),
      O => pc_ld_en
    );
pc_ld_en_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cmp_lt,
      I1 => cmp_ne,
      I2 => \^instruction\(11),
      I3 => cmp_gt,
      I4 => \^instruction\(12),
      I5 => cmp_eq,
      O => pc_ld_en_INST_0_i_1_n_0
    );
pc_load_sel_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction\(14),
      O => pc_load_sel
    );
\regA_addr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC00AACCAC00CACC"
    )
        port map (
      I0 => \^instruction\(6),
      I1 => \^instruction\(3),
      I2 => \^instruction\(14),
      I3 => \^instruction\(15),
      I4 => \^instruction\(13),
      I5 => \^instruction\(12),
      O => regA_addr(0)
    );
\regA_addr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC00AACCAC00CACC"
    )
        port map (
      I0 => \^instruction\(7),
      I1 => \^instruction\(4),
      I2 => \^instruction\(14),
      I3 => \^instruction\(15),
      I4 => \^instruction\(13),
      I5 => \^instruction\(12),
      O => regA_addr(1)
    );
\regA_addr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC00AACCAC00CACC"
    )
        port map (
      I0 => \^instruction\(8),
      I1 => \^instruction\(5),
      I2 => \^instruction\(14),
      I3 => \^instruction\(15),
      I4 => \^instruction\(13),
      I5 => \^instruction\(12),
      O => regA_addr(2)
    );
\regB_addr[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^instruction\(0),
      I1 => \^instruction\(14),
      I2 => \^instruction\(12),
      I3 => \^instruction\(3),
      O => regB_addr(0)
    );
\regB_addr[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^instruction\(1),
      I1 => \^instruction\(14),
      I2 => \^instruction\(12),
      I3 => \^instruction\(4),
      O => regB_addr(1)
    );
\regB_addr[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^instruction\(2),
      I1 => \^instruction\(14),
      I2 => \^instruction\(12),
      I3 => \^instruction\(5),
      O => regB_addr(2)
    );
\reg_file_input_sel[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^instruction\(13),
      I1 => \^instruction\(15),
      O => reg_file_input_sel(0)
    );
\reg_file_input_sel[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \^instruction\(15),
      I1 => \^instruction\(14),
      I2 => \^instruction\(13),
      O => reg_file_input_sel(1)
    );
reg_file_wr_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0A0F08FF0F0F0"
    )
        port map (
      I0 => reg_file_wr_INST_0_i_1_n_0,
      I1 => \^instruction\(9),
      I2 => \^instruction\(14),
      I3 => \^instruction\(15),
      I4 => \^instruction\(13),
      I5 => \^instruction\(12),
      O => reg_file_wr
    );
reg_file_wr_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction\(10),
      I1 => \^instruction\(11),
      O => reg_file_wr_INST_0_i_1_n_0
    );
stack_ld_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => stack_ld_INST_0_i_1_n_0,
      I1 => \^instruction\(13),
      I2 => \^instruction\(15),
      I3 => \^instruction\(9),
      I4 => \^instruction\(10),
      I5 => \^instruction\(11),
      O => stack_ld
    );
stack_ld_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^instruction\(14),
      I1 => \^instruction\(12),
      O => stack_ld_INST_0_i_1_n_0
    );
stack_wr_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^instruction\(13),
      I1 => \^instruction\(15),
      I2 => \^instruction\(10),
      I3 => \^instruction\(11),
      I4 => \^instruction\(9),
      I5 => stack_ld_INST_0_i_1_n_0,
      O => \^stack_wr\
    );
end STRUCTURE;
