--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Sat Oct 10 18:19:42 2020
--Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU_imp_1IDDXJS is
  port (
    clk : in STD_LOGIC;
    data_mem : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_mem_wr : out STD_LOGIC;
    from_stack : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ins_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_ptr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_wr : out STD_LOGIC
  );
end CPU_imp_1IDDXJS;

architecture STRUCTURE of CPU_imp_1IDDXJS is
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_adder_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_adder_0_0;
  component design_1_adder_1_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_adder_1_0;
  component design_1_reg_file_0_0 is
  port (
    clk : in STD_LOGIC;
    read_addrA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    read_addrB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    write_addrC : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regC : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_en : in STD_LOGIC
  );
  end component design_1_reg_file_0_0;
  component design_1_alu_input_mux_0_0 is
  port (
    to_alu : out STD_LOGIC_VECTOR ( 15 downto 0 );
    from_gpr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    from_ri_imm : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC
  );
  end component design_1_alu_input_mux_0_0;
  component design_1_ri_imm_format_mux_0_0 is
  port (
    upper_concat_imm : in STD_LOGIC_VECTOR ( 15 downto 0 );
    z_ext_imm : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC;
    ri_imm : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_ri_imm_format_mux_0_0;
  component design_1_ri_imm_upper_concat_0_0 is
  port (
    imm : in STD_LOGIC_VECTOR ( 5 downto 0 );
    upper_concat : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_ri_imm_upper_concat_0_0;
  component design_1_ri_imm_ext_0_0 is
  port (
    imm : in STD_LOGIC_VECTOR ( 5 downto 0 );
    z_ext_imm : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_ri_imm_ext_0_0;
  component design_1_cmp_status_reg_0_0 is
  port (
    clk : in STD_LOGIC;
    cmp_status_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_en : in STD_LOGIC;
    eq_sig : out STD_LOGIC;
    ne_sig : out STD_LOGIC;
    gt_sig : out STD_LOGIC;
    lt_sig : out STD_LOGIC
  );
  end component design_1_cmp_status_reg_0_0;
  component design_1_imm_ext_0_0 is
  port (
    imm : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_ext_imm : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_imm_ext_0_0;
  component design_1_reg_file_input_mux_0_0 is
  port (
    output_reg : out STD_LOGIC_VECTOR ( 15 downto 0 );
    in_alu : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_mem : in STD_LOGIC_VECTOR ( 15 downto 0 );
    next_ins_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    from_stack : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_reg_file_input_mux_0_0;
  component design_1_pc_load_mux_0_0 is
  port (
    gpr_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pc_imm_b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC;
    to_pc_ld : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_pc_load_mux_0_0;
  component design_1_stack_ptr_reg_0_0 is
  port (
    clk : in STD_LOGIC;
    ld_val : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ld_en : in STD_LOGIC;
    dec : in STD_LOGIC;
    inc : in STD_LOGIC;
    stack_ptr : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_stack_ptr_reg_0_0;
  component design_1_prog_cnt_reg_0_0 is
  port (
    clk : in STD_LOGIC;
    ins_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ld_val : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ld_en : in STD_LOGIC;
    en : in STD_LOGIC
  );
  end component design_1_prog_cnt_reg_0_0;
  component design_1_ALU_0_0 is
  port (
    inputA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    inputB : in STD_LOGIC_VECTOR ( 15 downto 0 );
    outputC : out STD_LOGIC_VECTOR ( 15 downto 0 );
    op_add : in STD_LOGIC;
    op_sub : in STD_LOGIC;
    op_and : in STD_LOGIC;
    op_or : in STD_LOGIC;
    op_xor : in STD_LOGIC;
    op_nand : in STD_LOGIC;
    op_asr : in STD_LOGIC;
    op_asl : in STD_LOGIC;
    op_cmp : in STD_LOGIC
  );
  end component design_1_ALU_0_0;
  component design_1_ALU_CTRL_0_0 is
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
  end component design_1_ALU_CTRL_0_0;
  component design_1_CTRL_UNIT_0_0 is
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
  end component design_1_CTRL_UNIT_0_0;
  signal ALU_CTRL_op_add : STD_LOGIC;
  signal ALU_CTRL_op_and : STD_LOGIC;
  signal ALU_CTRL_op_asl : STD_LOGIC;
  signal ALU_CTRL_op_asr : STD_LOGIC;
  signal ALU_CTRL_op_cmp : STD_LOGIC;
  signal ALU_CTRL_op_nand : STD_LOGIC;
  signal ALU_CTRL_op_or : STD_LOGIC;
  signal ALU_CTRL_op_sub : STD_LOGIC;
  signal ALU_CTRL_op_xor : STD_LOGIC;
  signal CTRL_UNIT_alu_input_sel : STD_LOGIC;
  signal CTRL_UNIT_alu_op : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CTRL_UNIT_cmp_status_wr : STD_LOGIC;
  signal CTRL_UNIT_data_mem_wr : STD_LOGIC;
  signal CTRL_UNIT_dec_stack : STD_LOGIC;
  signal CTRL_UNIT_dest_addr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CTRL_UNIT_imm : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal CTRL_UNIT_inc_stack : STD_LOGIC;
  signal CTRL_UNIT_pc_en : STD_LOGIC;
  signal CTRL_UNIT_pc_ld_en : STD_LOGIC;
  signal CTRL_UNIT_pc_load_sel : STD_LOGIC;
  signal CTRL_UNIT_regA_addr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CTRL_UNIT_regB_addr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CTRL_UNIT_reg_file_input_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CTRL_UNIT_reg_file_wr : STD_LOGIC;
  signal CTRL_UNIT_ri_imm : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal CTRL_UNIT_ri_imm_format_sel : STD_LOGIC;
  signal CTRL_UNIT_stack_ld : STD_LOGIC;
  signal CTRL_UNIT_stack_wr : STD_LOGIC;
  signal PC_ins_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal adder_0_c : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal adder_1_c : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal alu_input_mux_to_alu : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal cmp_status_in_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cmp_status_reg_eq_sig : STD_LOGIC;
  signal cmp_status_reg_gt_sig : STD_LOGIC;
  signal cmp_status_reg_lt_sig : STD_LOGIC;
  signal cmp_status_reg_ne_sig : STD_LOGIC;
  signal data_mem_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal from_stack_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gpr_in_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal imm_ext_s_ext_imm : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal instruction_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pc_load_mux_to_pc_ld : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_file_input_mux_output_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_file_regB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ri_imm_ext_z_ext_imm : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ri_imm_format_mux_0_ri_imm : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ri_imm_upper_concat_0_upper_concat : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal stack_ptr_reg_stack_ptr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  clk_1 <= clk;
  data_mem_1(15 downto 0) <= data_mem(15 downto 0);
  data_mem_wr <= CTRL_UNIT_data_mem_wr;
  from_stack_1(15 downto 0) <= from_stack(15 downto 0);
  ins_addr(15 downto 0) <= PC_ins_addr(15 downto 0);
  instruction_1(15 downto 0) <= instruction(15 downto 0);
  regA(15 downto 0) <= gpr_in_1(15 downto 0);
  regB(15 downto 0) <= reg_file_regB(15 downto 0);
  stack_ptr(15 downto 0) <= stack_ptr_reg_stack_ptr(15 downto 0);
  stack_wr <= CTRL_UNIT_stack_wr;
ALU: component design_1_ALU_0_0
     port map (
      inputA(15 downto 0) => gpr_in_1(15 downto 0),
      inputB(15 downto 0) => alu_input_mux_to_alu(15 downto 0),
      op_add => ALU_CTRL_op_add,
      op_and => ALU_CTRL_op_and,
      op_asl => ALU_CTRL_op_asl,
      op_asr => ALU_CTRL_op_asr,
      op_cmp => ALU_CTRL_op_cmp,
      op_nand => ALU_CTRL_op_nand,
      op_or => ALU_CTRL_op_or,
      op_sub => ALU_CTRL_op_sub,
      op_xor => ALU_CTRL_op_xor,
      outputC(15 downto 0) => cmp_status_in_1(15 downto 0)
    );
ALU_CTRL: component design_1_ALU_CTRL_0_0
     port map (
      alu_op(3 downto 0) => CTRL_UNIT_alu_op(3 downto 0),
      op_add => ALU_CTRL_op_add,
      op_and => ALU_CTRL_op_and,
      op_asl => ALU_CTRL_op_asl,
      op_asr => ALU_CTRL_op_asr,
      op_cmp => ALU_CTRL_op_cmp,
      op_nand => ALU_CTRL_op_nand,
      op_or => ALU_CTRL_op_or,
      op_sub => ALU_CTRL_op_sub,
      op_xor => ALU_CTRL_op_xor
    );
CTRL_UNIT: component design_1_CTRL_UNIT_0_0
     port map (
      alu_input_sel => CTRL_UNIT_alu_input_sel,
      alu_op(3 downto 0) => CTRL_UNIT_alu_op(3 downto 0),
      cmp_eq => cmp_status_reg_eq_sig,
      cmp_gt => cmp_status_reg_gt_sig,
      cmp_lt => cmp_status_reg_lt_sig,
      cmp_ne => cmp_status_reg_ne_sig,
      cmp_status_wr => CTRL_UNIT_cmp_status_wr,
      data_mem_wr => CTRL_UNIT_data_mem_wr,
      dec_stack => CTRL_UNIT_dec_stack,
      dest_addr(2 downto 0) => CTRL_UNIT_dest_addr(2 downto 0),
      imm(10 downto 0) => CTRL_UNIT_imm(10 downto 0),
      inc_stack => CTRL_UNIT_inc_stack,
      instruction(15 downto 0) => instruction_1(15 downto 0),
      pc_en => CTRL_UNIT_pc_en,
      pc_ld_en => CTRL_UNIT_pc_ld_en,
      pc_load_sel => CTRL_UNIT_pc_load_sel,
      regA_addr(2 downto 0) => CTRL_UNIT_regA_addr(2 downto 0),
      regB_addr(2 downto 0) => CTRL_UNIT_regB_addr(2 downto 0),
      reg_file_input_sel(1 downto 0) => CTRL_UNIT_reg_file_input_sel(1 downto 0),
      reg_file_wr => CTRL_UNIT_reg_file_wr,
      ri_imm(5 downto 0) => CTRL_UNIT_ri_imm(5 downto 0),
      ri_imm_format_sel => CTRL_UNIT_ri_imm_format_sel,
      stack_ld => CTRL_UNIT_stack_ld,
      stack_wr => CTRL_UNIT_stack_wr
    );
PC: component design_1_prog_cnt_reg_0_0
     port map (
      clk => clk_1,
      en => CTRL_UNIT_pc_en,
      ins_addr(15 downto 0) => PC_ins_addr(15 downto 0),
      ld_en => CTRL_UNIT_pc_ld_en,
      ld_val(15 downto 0) => pc_load_mux_to_pc_ld(15 downto 0)
    );
adder_0: component design_1_adder_0_0
     port map (
      a(15 downto 0) => imm_ext_s_ext_imm(15 downto 0),
      b(15 downto 0) => PC_ins_addr(15 downto 0),
      c(15 downto 0) => adder_0_c(15 downto 0)
    );
adder_1: component design_1_adder_1_0
     port map (
      a(15 downto 0) => PC_ins_addr(15 downto 0),
      b(15 downto 0) => xlconstant_0_dout(15 downto 0),
      c(15 downto 0) => adder_1_c(15 downto 0)
    );
alu_input_mux: component design_1_alu_input_mux_0_0
     port map (
      from_gpr(15 downto 0) => reg_file_regB(15 downto 0),
      from_ri_imm(15 downto 0) => ri_imm_format_mux_0_ri_imm(15 downto 0),
      sel => CTRL_UNIT_alu_input_sel,
      to_alu(15 downto 0) => alu_input_mux_to_alu(15 downto 0)
    );
cmp_status_reg: component design_1_cmp_status_reg_0_0
     port map (
      clk => clk_1,
      cmp_status_in(15 downto 0) => cmp_status_in_1(15 downto 0),
      eq_sig => cmp_status_reg_eq_sig,
      gt_sig => cmp_status_reg_gt_sig,
      lt_sig => cmp_status_reg_lt_sig,
      ne_sig => cmp_status_reg_ne_sig,
      wr_en => CTRL_UNIT_cmp_status_wr
    );
imm_ext: component design_1_imm_ext_0_0
     port map (
      imm(10 downto 0) => CTRL_UNIT_imm(10 downto 0),
      s_ext_imm(15 downto 0) => imm_ext_s_ext_imm(15 downto 0)
    );
pc_load_mux: component design_1_pc_load_mux_0_0
     port map (
      gpr_in(15 downto 0) => gpr_in_1(15 downto 0),
      pc_imm_b(15 downto 0) => adder_0_c(15 downto 0),
      sel => CTRL_UNIT_pc_load_sel,
      to_pc_ld(15 downto 0) => pc_load_mux_to_pc_ld(15 downto 0)
    );
reg_file: component design_1_reg_file_0_0
     port map (
      clk => clk_1,
      read_addrA(2 downto 0) => CTRL_UNIT_regA_addr(2 downto 0),
      read_addrB(2 downto 0) => CTRL_UNIT_regB_addr(2 downto 0),
      regA(15 downto 0) => gpr_in_1(15 downto 0),
      regB(15 downto 0) => reg_file_regB(15 downto 0),
      regC(15 downto 0) => reg_file_input_mux_output_reg(15 downto 0),
      wr_en => CTRL_UNIT_reg_file_wr,
      write_addrC(2 downto 0) => CTRL_UNIT_dest_addr(2 downto 0)
    );
reg_file_input_mux: component design_1_reg_file_input_mux_0_0
     port map (
      data_mem(15 downto 0) => data_mem_1(15 downto 0),
      from_stack(15 downto 0) => from_stack_1(15 downto 0),
      in_alu(15 downto 0) => cmp_status_in_1(15 downto 0),
      next_ins_addr(15 downto 0) => adder_1_c(15 downto 0),
      output_reg(15 downto 0) => reg_file_input_mux_output_reg(15 downto 0),
      sel(1 downto 0) => CTRL_UNIT_reg_file_input_sel(1 downto 0)
    );
ri_imm_ext: component design_1_ri_imm_ext_0_0
     port map (
      imm(5 downto 0) => CTRL_UNIT_ri_imm(5 downto 0),
      z_ext_imm(15 downto 0) => ri_imm_ext_z_ext_imm(15 downto 0)
    );
ri_imm_format_mux: component design_1_ri_imm_format_mux_0_0
     port map (
      ri_imm(15 downto 0) => ri_imm_format_mux_0_ri_imm(15 downto 0),
      sel => CTRL_UNIT_ri_imm_format_sel,
      upper_concat_imm(15 downto 0) => ri_imm_upper_concat_0_upper_concat(15 downto 0),
      z_ext_imm(15 downto 0) => ri_imm_ext_z_ext_imm(15 downto 0)
    );
ri_imm_upper_concat: component design_1_ri_imm_upper_concat_0_0
     port map (
      imm(5 downto 0) => CTRL_UNIT_ri_imm(5 downto 0),
      upper_concat(15 downto 0) => ri_imm_upper_concat_0_upper_concat(15 downto 0)
    );
stack_ptr_reg: component design_1_stack_ptr_reg_0_0
     port map (
      clk => clk_1,
      dec => CTRL_UNIT_dec_stack,
      inc => CTRL_UNIT_inc_stack,
      ld_en => CTRL_UNIT_stack_ld,
      ld_val(15 downto 0) => gpr_in_1(15 downto 0),
      stack_ptr(15 downto 0) => stack_ptr_reg_stack_ptr(15 downto 0)
    );
xlconstant_val_1: component design_1_xlconstant_0_0
     port map (
      dout(15 downto 0) => xlconstant_0_dout(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_gen_imp_1W5H0XW is
  port (
    CLK100MHZ : in STD_LOGIC;
    CPU_CLK : out STD_LOGIC;
    c : out STD_LOGIC;
    clk_100Mhz : out STD_LOGIC;
    clk_gate : in STD_LOGIC
  );
end clock_gen_imp_1W5H0XW;

architecture STRUCTURE of clock_gen_imp_1W5H0XW is
  component design_1_and_gate_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : out STD_LOGIC
  );
  end component design_1_and_gate_0_0;
  component design_1_sync_extern_0_0 is
  port (
    clk : in STD_LOGIC;
    sig_in : in STD_LOGIC;
    sig_out : out STD_LOGIC
  );
  end component design_1_sync_extern_0_0;
  component design_1_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    CPU_CLK : out STD_LOGIC;
    CLK100Mhz : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  signal CLK100MHZ_1 : STD_LOGIC;
  signal and_gate_c : STD_LOGIC;
  signal b_1 : STD_LOGIC;
  signal clk_gate_1 : STD_LOGIC;
  signal clk_wiz_CLK100Mhz : STD_LOGIC;
  signal sync_extern_sig_out : STD_LOGIC;
begin
  CLK100MHZ_1 <= CLK100MHZ;
  CPU_CLK <= b_1;
  c <= and_gate_c;
  clk_100Mhz <= clk_wiz_CLK100Mhz;
  clk_gate_1 <= clk_gate;
and_gate: component design_1_and_gate_0_0
     port map (
      a => sync_extern_sig_out,
      b => b_1,
      c => and_gate_c
    );
clk_wiz: component design_1_clk_wiz_0_0
     port map (
      CLK100Mhz => clk_wiz_CLK100Mhz,
      CPU_CLK => b_1,
      clk_in1 => CLK100MHZ_1
    );
sync_extern: component design_1_sync_extern_0_0
     port map (
      clk => b_1,
      sig_in => clk_gate_1,
      sig_out => sync_extern_sig_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity memory_imp_1RJ1PXL is
  port (
    LED : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    cur_ins : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ins_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_addr1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_data1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_mode : in STD_LOGIC;
    prog_wr : in STD_LOGIC;
    prog_wr1 : in STD_LOGIC;
    stack_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_wr_en : in STD_LOGIC;
    wr_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_en : in STD_LOGIC
  );
end memory_imp_1RJ1PXL;

architecture STRUCTURE of memory_imp_1RJ1PXL is
  component design_1_prog_mem_0_0 is
  port (
    clk : in STD_LOGIC;
    ins_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_wr : in STD_LOGIC;
    cur_ins : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_prog_mem_0_0;
  component design_1_data_mem_0_0 is
  port (
    clk : in STD_LOGIC;
    rd_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_wr_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    prog_wr : in STD_LOGIC;
    prog_mode : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gpio_port_a : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_data_mem_0_0;
  signal clk_1 : STD_LOGIC;
  signal data_in_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_mem_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_mem_gpio_port_a : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_mem_stack_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ins_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal prog_addr1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal prog_data1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal prog_mem_cur_ins : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal prog_mode_1 : STD_LOGIC;
  signal prog_wr1_1 : STD_LOGIC;
  signal prog_wr_1 : STD_LOGIC;
  signal stack_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal stack_wr_en_1 : STD_LOGIC;
  signal wr_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal wr_en_1 : STD_LOGIC;
begin
  LED(15 downto 0) <= data_mem_gpio_port_a(15 downto 0);
  clk_1 <= clk;
  cur_ins(15 downto 0) <= prog_mem_cur_ins(15 downto 0);
  data_in_1(15 downto 0) <= data_in(15 downto 0);
  data_out(15 downto 0) <= data_mem_data_out(15 downto 0);
  ins_addr_1(15 downto 0) <= ins_addr(15 downto 0);
  prog_addr1_1(15 downto 0) <= prog_addr1(15 downto 0);
  prog_data1_1(15 downto 0) <= prog_data1(15 downto 0);
  prog_mode_1 <= prog_mode;
  prog_wr1_1 <= prog_wr1;
  prog_wr_1 <= prog_wr;
  stack_addr_1(15 downto 0) <= stack_addr(15 downto 0);
  stack_out(15 downto 0) <= data_mem_stack_out(15 downto 0);
  stack_wr_en_1 <= stack_wr_en;
  wr_addr_1(15 downto 0) <= wr_addr(15 downto 0);
  wr_en_1 <= wr_en;
data_mem: component design_1_data_mem_0_0
     port map (
      clk => clk_1,
      data_in(15 downto 0) => data_in_1(15 downto 0),
      data_out(15 downto 0) => data_mem_data_out(15 downto 0),
      gpio_port_a(15 downto 0) => data_mem_gpio_port_a(15 downto 0),
      prog_addr(15 downto 0) => prog_addr1_1(15 downto 0),
      prog_data(15 downto 0) => prog_data1_1(15 downto 0),
      prog_mode => prog_mode_1,
      prog_wr => prog_wr1_1,
      rd_addr(15 downto 0) => data_in_1(15 downto 0),
      stack_addr(15 downto 0) => stack_addr_1(15 downto 0),
      stack_out(15 downto 0) => data_mem_stack_out(15 downto 0),
      stack_wr_en => stack_wr_en_1,
      wr_addr(15 downto 0) => wr_addr_1(15 downto 0),
      wr_en => wr_en_1
    );
prog_mem: component design_1_prog_mem_0_0
     port map (
      clk => clk_1,
      cur_ins(15 downto 0) => prog_mem_cur_ins(15 downto 0),
      ins_addr(15 downto 0) => ins_addr_1(15 downto 0),
      prog_addr(15 downto 0) => prog_addr1_1(15 downto 0),
      prog_data(15 downto 0) => prog_data1_1(15 downto 0),
      prog_wr => prog_wr_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity programmer_imp_1AUNZS1 is
  port (
    UART_RXD_OUT : out STD_LOGIC;
    UART_TXD_IN : in STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    clk1 : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_mode : in STD_LOGIC;
    sig_out : out STD_LOGIC;
    sig_out1 : out STD_LOGIC;
    sig_out2 : out STD_LOGIC;
    sync_word : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sync_word1 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end programmer_imp_1AUNZS1;

architecture STRUCTURE of programmer_imp_1AUNZS1 is
  component design_1_uart_0_2 is
  port (
    clk : in STD_LOGIC;
    rx : in STD_LOGIC;
    rx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_ready : out STD_LOGIC;
    tx_buff : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_start_trans : in STD_LOGIC;
    tx : out STD_LOGIC;
    tx_ready : out STD_LOGIC
  );
  end component design_1_uart_0_2;
  component design_1_sync_extern_1_0 is
  port (
    clk : in STD_LOGIC;
    sig_in : in STD_LOGIC;
    sig_out : out STD_LOGIC
  );
  end component design_1_sync_extern_1_0;
  component design_1_sync_extern_0_1 is
  port (
    clk : in STD_LOGIC;
    sig_in : in STD_LOGIC;
    sig_out : out STD_LOGIC
  );
  end component design_1_sync_extern_0_1;
  component design_1_sync_extern_0_2 is
  port (
    clk : in STD_LOGIC;
    sig_in : in STD_LOGIC;
    sig_out : out STD_LOGIC
  );
  end component design_1_sync_extern_0_2;
  component design_1_programmer_0_0 is
  port (
    clk : in STD_LOGIC;
    rx_ready : in STD_LOGIC;
    tx_ready : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_buff : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_start_trans : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    prog_mem_wr : out STD_LOGIC;
    data_mem_wr : out STD_LOGIC
  );
  end component design_1_programmer_0_0;
  component design_1_sync_word_0_0 is
  port (
    clk : in STD_LOGIC;
    word : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stable_word : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_sync_word_0_0;
  component design_1_sync_word_1_0 is
  port (
    clk : in STD_LOGIC;
    word : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stable_word : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_sync_word_1_0;
  signal UART_TXD_IN_1 : STD_LOGIC;
  signal clk1_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal prog_mode_1 : STD_LOGIC;
  signal sync_data_to_cpu_clk_stable_word : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sync_extern_0_sig_out : STD_LOGIC;
  signal sync_extern_0_sig_out1 : STD_LOGIC;
  signal sync_extern_1_sig_out : STD_LOGIC;
  signal sync_word_to_CPU_clk_sync_word : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal uart_programmer_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal uart_programmer_data_mem_wr : STD_LOGIC;
  signal uart_programmer_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal uart_programmer_prog_mem_wr : STD_LOGIC;
  signal uart_rx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal uart_rx_ready : STD_LOGIC;
  signal uart_tx : STD_LOGIC;
  signal uart_tx_ready : STD_LOGIC;
  signal NLW_uart_programmer_tx_start_trans_UNCONNECTED : STD_LOGIC;
  signal NLW_uart_programmer_tx_buff_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  UART_RXD_OUT <= uart_tx;
  UART_TXD_IN_1 <= UART_TXD_IN;
  addr(15 downto 0) <= uart_programmer_addr(15 downto 0);
  clk1_1 <= clk1;
  clk_1 <= clk;
  dout(15 downto 0) <= uart_programmer_dout(15 downto 0);
  prog_mode_1 <= prog_mode;
  sig_out <= sync_extern_1_sig_out;
  sig_out1 <= sync_extern_0_sig_out;
  sig_out2 <= sync_extern_0_sig_out1;
  sync_word(15 downto 0) <= sync_word_to_CPU_clk_sync_word(15 downto 0);
  sync_word1(15 downto 0) <= sync_data_to_cpu_clk_stable_word(15 downto 0);
sync_addr_to_CPU_clk: component design_1_sync_word_0_0
     port map (
      clk => clk1_1,
      stable_word(15 downto 0) => sync_word_to_CPU_clk_sync_word(15 downto 0),
      word(15 downto 0) => uart_programmer_addr(15 downto 0)
    );
sync_data_mem_wr_to_cpu_clk: component design_1_sync_extern_0_1
     port map (
      clk => clk1_1,
      sig_in => uart_programmer_data_mem_wr,
      sig_out => sync_extern_0_sig_out
    );
sync_data_to_cpu_clk: component design_1_sync_word_1_0
     port map (
      clk => clk1_1,
      stable_word(15 downto 0) => sync_data_to_cpu_clk_stable_word(15 downto 0),
      word(15 downto 0) => uart_programmer_dout(15 downto 0)
    );
sync_prog_mem_wr_to_cpu_clk: component design_1_sync_extern_0_2
     port map (
      clk => clk1_1,
      sig_in => uart_programmer_prog_mem_wr,
      sig_out => sync_extern_0_sig_out1
    );
sync_prog_mode_to_CPU_clk: component design_1_sync_extern_1_0
     port map (
      clk => clk1_1,
      sig_in => prog_mode_1,
      sig_out => sync_extern_1_sig_out
    );
uart: component design_1_uart_0_2
     port map (
      clk => clk_1,
      rx => UART_TXD_IN_1,
      rx_data(7 downto 0) => uart_rx_data(7 downto 0),
      rx_ready => uart_rx_ready,
      tx => uart_tx,
      tx_buff(7 downto 0) => B"00000000",
      tx_ready => uart_tx_ready,
      tx_start_trans => '0'
    );
uart_programmer: component design_1_programmer_0_0
     port map (
      addr(15 downto 0) => uart_programmer_addr(15 downto 0),
      clk => clk_1,
      data_mem_wr => uart_programmer_data_mem_wr,
      din(7 downto 0) => B"00000000",
      dout(15 downto 0) => uart_programmer_dout(15 downto 0),
      prog_mem_wr => uart_programmer_prog_mem_wr,
      rx_data(7 downto 0) => uart_rx_data(7 downto 0),
      rx_ready => uart_rx_ready,
      tx_buff(7 downto 0) => NLW_uart_programmer_tx_buff_UNCONNECTED(7 downto 0),
      tx_ready => uart_tx_ready,
      tx_start_trans => NLW_uart_programmer_tx_start_trans_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    CLK100MHZ : in STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 15 downto 0 );
    UART_RXD_OUT : out STD_LOGIC;
    UART_TXD_IN : in STD_LOGIC;
    clk_gate : in STD_LOGIC;
    prog_mode : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=33,numReposBlks=29,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=27,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  signal CLK100MHZ_2 : STD_LOGIC;
  signal PC_ins_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal UART_TXD_IN_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal clk_2 : STD_LOGIC;
  signal clk_gate_1 : STD_LOGIC;
  signal clock_gen_clk_100Mhz : STD_LOGIC;
  signal memory_LED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal memory_cur_ins : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal memory_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal memory_stack_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal prog_addr1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal prog_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal prog_data1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal prog_data_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal prog_mode_1 : STD_LOGIC;
  signal prog_mode_2 : STD_LOGIC;
  signal prog_wr1_1 : STD_LOGIC;
  signal programmer_UART_RXD_OUT : STD_LOGIC;
  signal programmer_sig_out2 : STD_LOGIC;
  signal reg_file_regA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_file_regB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal stack_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal stack_wr_en_1 : STD_LOGIC;
  signal wr_en_1 : STD_LOGIC;
begin
  CLK100MHZ_2 <= CLK100MHZ;
  LED(15 downto 0) <= memory_LED(15 downto 0);
  UART_RXD_OUT <= programmer_UART_RXD_OUT;
  UART_TXD_IN_1 <= UART_TXD_IN;
  clk_gate_1 <= clk_gate;
  prog_mode_1 <= prog_mode;
CPU: entity work.CPU_imp_1IDDXJS
     port map (
      clk => clk_1,
      data_mem(15 downto 0) => memory_data_out(15 downto 0),
      data_mem_wr => wr_en_1,
      from_stack(15 downto 0) => memory_stack_out(15 downto 0),
      ins_addr(15 downto 0) => PC_ins_addr(15 downto 0),
      instruction(15 downto 0) => memory_cur_ins(15 downto 0),
      regA(15 downto 0) => reg_file_regA(15 downto 0),
      regB(15 downto 0) => reg_file_regB(15 downto 0),
      stack_ptr(15 downto 0) => stack_addr_1(15 downto 0),
      stack_wr => stack_wr_en_1
    );
clock_gen: entity work.clock_gen_imp_1W5H0XW
     port map (
      CLK100MHZ => CLK100MHZ_2,
      CPU_CLK => clk_2,
      c => clk_1,
      clk_100Mhz => clock_gen_clk_100Mhz,
      clk_gate => clk_gate_1
    );
memory: entity work.memory_imp_1RJ1PXL
     port map (
      LED(15 downto 0) => memory_LED(15 downto 0),
      clk => clk_2,
      cur_ins(15 downto 0) => memory_cur_ins(15 downto 0),
      data_in(15 downto 0) => reg_file_regA(15 downto 0),
      data_out(15 downto 0) => memory_data_out(15 downto 0),
      ins_addr(15 downto 0) => PC_ins_addr(15 downto 0),
      prog_addr(15 downto 0) => prog_addr_1(15 downto 0),
      prog_addr1(15 downto 0) => prog_addr1_1(15 downto 0),
      prog_data(15 downto 0) => prog_data_1(15 downto 0),
      prog_data1(15 downto 0) => prog_data1_1(15 downto 0),
      prog_mode => prog_mode_2,
      prog_wr => programmer_sig_out2,
      prog_wr1 => prog_wr1_1,
      stack_addr(15 downto 0) => stack_addr_1(15 downto 0),
      stack_out(15 downto 0) => memory_stack_out(15 downto 0),
      stack_wr_en => stack_wr_en_1,
      wr_addr(15 downto 0) => reg_file_regB(15 downto 0),
      wr_en => wr_en_1
    );
programmer: entity work.programmer_imp_1AUNZS1
     port map (
      UART_RXD_OUT => programmer_UART_RXD_OUT,
      UART_TXD_IN => UART_TXD_IN_1,
      addr(15 downto 0) => prog_addr_1(15 downto 0),
      clk => clock_gen_clk_100Mhz,
      clk1 => clk_2,
      dout(15 downto 0) => prog_data_1(15 downto 0),
      prog_mode => prog_mode_1,
      sig_out => prog_mode_2,
      sig_out1 => prog_wr1_1,
      sig_out2 => programmer_sig_out2,
      sync_word(15 downto 0) => prog_addr1_1(15 downto 0),
      sync_word1(15 downto 0) => prog_data1_1(15 downto 0)
    );
end STRUCTURE;
