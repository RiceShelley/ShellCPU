-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Oct  5 21:34:27 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_reg_file_input_mux_0_0/design_1_reg_file_input_mux_0_0_sim_netlist.vhdl
-- Design      : design_1_reg_file_input_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_reg_file_input_mux_0_0_reg_file_input_mux is
  port (
    output_reg : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_mem : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_alu : in STD_LOGIC_VECTOR ( 15 downto 0 );
    from_stack : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    next_ins_addr : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_reg_file_input_mux_0_0_reg_file_input_mux : entity is "reg_file_input_mux";
end design_1_reg_file_input_mux_0_0_reg_file_input_mux;

architecture STRUCTURE of design_1_reg_file_input_mux_0_0_reg_file_input_mux is
begin
\output_reg[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => data_mem(0),
      I1 => in_alu(0),
      I2 => from_stack(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => next_ins_addr(0),
      O => output_reg(0)
    );
\output_reg[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => data_mem(10),
      I1 => in_alu(10),
      I2 => from_stack(10),
      I3 => sel(0),
      I4 => sel(1),
      I5 => next_ins_addr(10),
      O => output_reg(10)
    );
\output_reg[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => data_mem(11),
      I1 => in_alu(11),
      I2 => from_stack(11),
      I3 => sel(0),
      I4 => sel(1),
      I5 => next_ins_addr(11),
      O => output_reg(11)
    );
\output_reg[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => data_mem(12),
      I1 => in_alu(12),
      I2 => from_stack(12),
      I3 => sel(0),
      I4 => sel(1),
      I5 => next_ins_addr(12),
      O => output_reg(12)
    );
\output_reg[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => data_mem(13),
      I1 => in_alu(13),
      I2 => from_stack(13),
      I3 => sel(0),
      I4 => sel(1),
      I5 => next_ins_addr(13),
      O => output_reg(13)
    );
\output_reg[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => data_mem(14),
      I1 => in_alu(14),
      I2 => from_stack(14),
      I3 => sel(0),
      I4 => sel(1),
      I5 => next_ins_addr(14),
      O => output_reg(14)
    );
\output_reg[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => data_mem(15),
      I1 => in_alu(15),
      I2 => from_stack(15),
      I3 => sel(0),
      I4 => sel(1),
      I5 => next_ins_addr(15),
      O => output_reg(15)
    );
\output_reg[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => data_mem(1),
      I1 => in_alu(1),
      I2 => from_stack(1),
      I3 => sel(0),
      I4 => sel(1),
      I5 => next_ins_addr(1),
      O => output_reg(1)
    );
\output_reg[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => data_mem(2),
      I1 => in_alu(2),
      I2 => from_stack(2),
      I3 => sel(0),
      I4 => sel(1),
      I5 => next_ins_addr(2),
      O => output_reg(2)
    );
\output_reg[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => data_mem(3),
      I1 => in_alu(3),
      I2 => from_stack(3),
      I3 => sel(0),
      I4 => sel(1),
      I5 => next_ins_addr(3),
      O => output_reg(3)
    );
\output_reg[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => data_mem(4),
      I1 => in_alu(4),
      I2 => from_stack(4),
      I3 => sel(0),
      I4 => sel(1),
      I5 => next_ins_addr(4),
      O => output_reg(4)
    );
\output_reg[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => data_mem(5),
      I1 => in_alu(5),
      I2 => from_stack(5),
      I3 => sel(0),
      I4 => sel(1),
      I5 => next_ins_addr(5),
      O => output_reg(5)
    );
\output_reg[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => data_mem(6),
      I1 => in_alu(6),
      I2 => from_stack(6),
      I3 => sel(0),
      I4 => sel(1),
      I5 => next_ins_addr(6),
      O => output_reg(6)
    );
\output_reg[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => data_mem(7),
      I1 => in_alu(7),
      I2 => from_stack(7),
      I3 => sel(0),
      I4 => sel(1),
      I5 => next_ins_addr(7),
      O => output_reg(7)
    );
\output_reg[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => data_mem(8),
      I1 => in_alu(8),
      I2 => from_stack(8),
      I3 => sel(0),
      I4 => sel(1),
      I5 => next_ins_addr(8),
      O => output_reg(8)
    );
\output_reg[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => data_mem(9),
      I1 => in_alu(9),
      I2 => from_stack(9),
      I3 => sel(0),
      I4 => sel(1),
      I5 => next_ins_addr(9),
      O => output_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_reg_file_input_mux_0_0 is
  port (
    output_reg : out STD_LOGIC_VECTOR ( 15 downto 0 );
    in_alu : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_mem : in STD_LOGIC_VECTOR ( 15 downto 0 );
    next_ins_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    from_stack : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_reg_file_input_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_reg_file_input_mux_0_0 : entity is "design_1_reg_file_input_mux_0_0,reg_file_input_mux,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_reg_file_input_mux_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_reg_file_input_mux_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_reg_file_input_mux_0_0 : entity is "reg_file_input_mux,Vivado 2018.3";
end design_1_reg_file_input_mux_0_0;

architecture STRUCTURE of design_1_reg_file_input_mux_0_0 is
begin
U0: entity work.design_1_reg_file_input_mux_0_0_reg_file_input_mux
     port map (
      data_mem(15 downto 0) => data_mem(15 downto 0),
      from_stack(15 downto 0) => from_stack(15 downto 0),
      in_alu(15 downto 0) => in_alu(15 downto 0),
      next_ins_addr(15 downto 0) => next_ins_addr(15 downto 0),
      output_reg(15 downto 0) => output_reg(15 downto 0),
      sel(1 downto 0) => sel(1 downto 0)
    );
end STRUCTURE;
