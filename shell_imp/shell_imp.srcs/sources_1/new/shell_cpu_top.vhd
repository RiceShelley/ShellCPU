----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/30/2020 12:23:45 PM
-- Design Name: 
-- Module Name: shell_cpu_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY shell_cpu_top IS
  PORT (
    rst : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    data_mem : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    data_mem_wr : OUT STD_LOGIC;
    from_stack : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    inr : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
    ins_addr : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    instruction : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    outvalue : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    regA : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    regB : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    stack_ptr : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    stack_wr : OUT STD_LOGIC
  );
END shell_cpu_top;

ARCHITECTURE Behavioral OF shell_cpu_top IS

  COMPONENT adder IS
    PORT (
      a : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      b : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      c : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
    );
  END COMPONENT adder;

  COMPONENT ri_imm_upper_concat IS
    PORT (
      imm : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
      upper_concat : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
    );
  END COMPONENT ri_imm_upper_concat;

  COMPONENT ri_imm_ext IS
    PORT (
      imm : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
      z_ext_imm : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
    );
  END COMPONENT ri_imm_ext;

  COMPONENT imm_ext IS
    PORT (
      imm : IN STD_LOGIC_VECTOR (10 DOWNTO 0);
      s_ext_imm : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
    );
  END COMPONENT imm_ext;

  COMPONENT reg_file_input_mux IS
    PORT (
      output_reg : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
      in_alu : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      data_mem : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      next_ins_addr : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      from_stack : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      sel : IN STD_LOGIC_VECTOR (1 DOWNTO 0)
    );
  END COMPONENT reg_file_input_mux;

  COMPONENT ALU IS
    PORT (
      inputA : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      inputB : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      outputC : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
      op_add : IN STD_LOGIC;
      op_sub : IN STD_LOGIC;
      op_and : IN STD_LOGIC;
      op_or : IN STD_LOGIC;
      op_xor : IN STD_LOGIC;
      op_nand : IN STD_LOGIC;
      op_asr : IN STD_LOGIC;
      op_asl : IN STD_LOGIC;
      op_cmp : IN STD_LOGIC
    );
  END COMPONENT ALU;

  COMPONENT ALU_CTRL IS
    PORT (
      alu_op : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
      op_add : OUT STD_LOGIC;
      op_sub : OUT STD_LOGIC;
      op_and : OUT STD_LOGIC;
      op_or : OUT STD_LOGIC;
      op_xor : OUT STD_LOGIC;
      op_nand : OUT STD_LOGIC;
      op_asr : OUT STD_LOGIC;
      op_asl : OUT STD_LOGIC;
      op_cmp : OUT STD_LOGIC
    );
  END COMPONENT ALU_CTRL;

  COMPONENT CTRL_UNIT IS
    PORT (
      instruction : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      dest_addr : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
      regA_addr : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
      regB_addr : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
      alu_op : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
      reg_file_input_sel : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
      reg_file_wr : OUT STD_LOGIC;
      pc_ld_en : OUT STD_LOGIC;
      pc_en : OUT STD_LOGIC;
      data_mem_wr : OUT STD_LOGIC;
      cmp_status_wr : OUT STD_LOGIC;
      ri_imm : OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
      imm : OUT STD_LOGIC_VECTOR (10 DOWNTO 0);
      alu_input_sel : OUT STD_LOGIC;
      pc_load_sel : OUT STD_LOGIC;
      cmp_eq : IN STD_LOGIC;
      cmp_ne : IN STD_LOGIC;
      cmp_gt : IN STD_LOGIC;
      cmp_lt : IN STD_LOGIC;
      stack_ld : OUT STD_LOGIC;
      dec_stack : OUT STD_LOGIC;
      inc_stack : OUT STD_LOGIC;
      stack_wr : OUT STD_LOGIC;
      ri_imm_format_sel : OUT STD_LOGIC
    );
  END COMPONENT CTRL_UNIT;

  COMPONENT prog_cnt_reg IS
    PORT (
      clk : IN STD_LOGIC;
      async_rst : IN STD_LOGIC;
      ins_addr : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
      ld_val : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      ld_en : IN STD_LOGIC;
      en : IN STD_LOGIC
    );
  END COMPONENT prog_cnt_reg;

  COMPONENT reg_file IS
    PORT (
      clk : IN STD_LOGIC;
      read_addrA : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
      read_addrB : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
      write_addrC : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
      inr : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
      regA : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
      regB : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
      regC : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      outvalue : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
      wr_en : IN STD_LOGIC;
      rst : IN STD_LOGIC
    );
  END COMPONENT reg_file;

  COMPONENT stack_ptr_reg IS
    PORT (
      clk : IN STD_LOGIC;
      ld_val : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      ld_en : IN STD_LOGIC;
      dec : IN STD_LOGIC;
      inc : IN STD_LOGIC;
      stack_ptr : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
      rst : IN STD_LOGIC
    );
  END COMPONENT stack_ptr_reg;

  COMPONENT cmp_status_reg IS
    PORT (
      clk : IN STD_LOGIC;
      cmp_status_in : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      wr_en : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      eq_sig : OUT STD_LOGIC;
      ne_sig : OUT STD_LOGIC;
      gt_sig : OUT STD_LOGIC;
      lt_sig : OUT STD_LOGIC
    );
  END COMPONENT cmp_status_reg;

  COMPONENT mux_2_to_1 IS
    PORT (
      a : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      b : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      sel : IN STD_LOGIC;
      c : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
    );
  END COMPONENT mux_2_to_1;

  SIGNAL ALU_CTRL_op_add : STD_LOGIC;
  SIGNAL ALU_CTRL_op_and : STD_LOGIC;
  SIGNAL ALU_CTRL_op_asl : STD_LOGIC;
  SIGNAL ALU_CTRL_op_asr : STD_LOGIC;
  SIGNAL ALU_CTRL_op_cmp : STD_LOGIC;
  SIGNAL ALU_CTRL_op_nand : STD_LOGIC;
  SIGNAL ALU_CTRL_op_or : STD_LOGIC;
  SIGNAL ALU_CTRL_op_sub : STD_LOGIC;
  SIGNAL ALU_CTRL_op_xor : STD_LOGIC;
  SIGNAL CTRL_UNIT_alu_input_sel : STD_LOGIC;
  SIGNAL CTRL_UNIT_alu_op : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL CTRL_UNIT_cmp_status_wr : STD_LOGIC;
  SIGNAL CTRL_UNIT_dec_stack : STD_LOGIC;
  SIGNAL CTRL_UNIT_dest_addr : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL CTRL_UNIT_imm : STD_LOGIC_VECTOR (10 DOWNTO 0);
  SIGNAL CTRL_UNIT_inc_stack : STD_LOGIC;
  SIGNAL CTRL_UNIT_pc_en : STD_LOGIC;
  SIGNAL CTRL_UNIT_pc_ld_en : STD_LOGIC;
  SIGNAL CTRL_UNIT_pc_load_sel : STD_LOGIC;
  SIGNAL CTRL_UNIT_regA_addr : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL CTRL_UNIT_regB_addr : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL CTRL_UNIT_reg_file_input_sel : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL CTRL_UNIT_reg_file_wr : STD_LOGIC;
  SIGNAL CTRL_UNIT_ri_imm : STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL CTRL_UNIT_ri_imm_format_sel : STD_LOGIC;
  SIGNAL CTRL_UNIT_stack_ld : STD_LOGIC;
  SIGNAL PC_ins_addr : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL adder_0_c : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL adder_1_c : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL cmp_status_in_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL cmp_status_reg_eq_sig : STD_LOGIC;
  SIGNAL cmp_status_reg_gt_sig : STD_LOGIC;
  SIGNAL cmp_status_reg_lt_sig : STD_LOGIC;
  SIGNAL cmp_status_reg_ne_sig : STD_LOGIC;
  SIGNAL gpr_in_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL imm_ext_s_ext_imm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL mux_2_to_1_0_c : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL mux_2_to_1_0_c1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL mux_2_to_1_1_c : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_file_input_mux_output_reg : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL reg_file_regB : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL ri_imm_ext_z_ext_imm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL ri_imm_upper_concat_0_upper_concat : STD_LOGIC_VECTOR (15 DOWNTO 0);

BEGIN

  ins_addr(15 DOWNTO 0) <= PC_ins_addr(15 DOWNTO 0);
  regA(15 DOWNTO 0) <= gpr_in_1(15 DOWNTO 0);
  regB(15 DOWNTO 0) <= reg_file_regB(15 DOWNTO 0);

  ALU_inst : ALU
  PORT MAP(
    inputA(15 DOWNTO 0) => gpr_in_1(15 DOWNTO 0),
    inputB(15 DOWNTO 0) => mux_2_to_1_1_c(15 DOWNTO 0),
    op_add => ALU_CTRL_op_add,
    op_and => ALU_CTRL_op_and,
    op_asl => ALU_CTRL_op_asl,
    op_asr => ALU_CTRL_op_asr,
    op_cmp => ALU_CTRL_op_cmp,
    op_nand => ALU_CTRL_op_nand,
    op_or => ALU_CTRL_op_or,
    op_sub => ALU_CTRL_op_sub,
    op_xor => ALU_CTRL_op_xor,
    outputC(15 DOWNTO 0) => cmp_status_in_1(15 DOWNTO 0)
  );

  ALU_CTRL_inst : ALU_CTRL
  PORT MAP(
    alu_op(3 DOWNTO 0) => CTRL_UNIT_alu_op(3 DOWNTO 0),
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

  CTRL_UNIT_inst : CTRL_UNIT
  PORT MAP(
    alu_input_sel => CTRL_UNIT_alu_input_sel,
    alu_op(3 DOWNTO 0) => CTRL_UNIT_alu_op(3 DOWNTO 0),
    cmp_eq => cmp_status_reg_eq_sig,
    cmp_gt => cmp_status_reg_gt_sig,
    cmp_lt => cmp_status_reg_lt_sig,
    cmp_ne => cmp_status_reg_ne_sig,
    cmp_status_wr => CTRL_UNIT_cmp_status_wr,
    data_mem_wr => data_mem_wr,
    dec_stack => CTRL_UNIT_dec_stack,
    dest_addr(2 DOWNTO 0) => CTRL_UNIT_dest_addr(2 DOWNTO 0),
    imm(10 DOWNTO 0) => CTRL_UNIT_imm(10 DOWNTO 0),
    inc_stack => CTRL_UNIT_inc_stack,
    instruction(15 DOWNTO 0) => instruction(15 DOWNTO 0),
    pc_en => CTRL_UNIT_pc_en,
    pc_ld_en => CTRL_UNIT_pc_ld_en,
    pc_load_sel => CTRL_UNIT_pc_load_sel,
    regA_addr(2 DOWNTO 0) => CTRL_UNIT_regA_addr(2 DOWNTO 0),
    regB_addr(2 DOWNTO 0) => CTRL_UNIT_regB_addr(2 DOWNTO 0),
    reg_file_input_sel(1 DOWNTO 0) => CTRL_UNIT_reg_file_input_sel(1 DOWNTO 0),
    reg_file_wr => CTRL_UNIT_reg_file_wr,
    ri_imm(5 DOWNTO 0) => CTRL_UNIT_ri_imm(5 DOWNTO 0),
    ri_imm_format_sel => CTRL_UNIT_ri_imm_format_sel,
    stack_ld => CTRL_UNIT_stack_ld,
    stack_wr => stack_wr
  );

  PC : prog_cnt_reg
  PORT MAP(
    async_rst => rst,
    clk => clk,
    en => CTRL_UNIT_pc_en,
    ins_addr(15 DOWNTO 0) => PC_ins_addr(15 DOWNTO 0),
    ld_en => CTRL_UNIT_pc_ld_en,
    ld_val(15 DOWNTO 0) => mux_2_to_1_0_c1(15 DOWNTO 0)
  );

  adder_0_inst : adder
  PORT MAP(
    a(15 DOWNTO 0) => imm_ext_s_ext_imm(15 DOWNTO 0),
    b(15 DOWNTO 0) => PC_ins_addr(15 DOWNTO 0),
    c(15 DOWNTO 0) => adder_0_c(15 DOWNTO 0)
  );

  adder_1_inst : adder
  PORT MAP(
    a(15 DOWNTO 0) => PC_ins_addr(15 DOWNTO 0),
    b(15 DOWNTO 0) => x"0001",
    c(15 DOWNTO 0) => adder_1_c(15 DOWNTO 0)
  );

  alu_mux : mux_2_to_1
  PORT MAP(
    a(15 DOWNTO 0) => reg_file_regB(15 DOWNTO 0),
    b(15 DOWNTO 0) => mux_2_to_1_0_c(15 DOWNTO 0),
    c(15 DOWNTO 0) => mux_2_to_1_1_c(15 DOWNTO 0),
    sel => CTRL_UNIT_alu_input_sel
  );

  cmp_status_reg_inst : cmp_status_reg
  PORT MAP(
    clk => clk,
    cmp_status_in(15 DOWNTO 0) => cmp_status_in_1(15 DOWNTO 0),
    eq_sig => cmp_status_reg_eq_sig,
    gt_sig => cmp_status_reg_gt_sig,
    lt_sig => cmp_status_reg_lt_sig,
    ne_sig => cmp_status_reg_ne_sig,
    rst => rst,
    wr_en => CTRL_UNIT_cmp_status_wr
  );

  imm_ext_inst : imm_ext
  PORT MAP(
    imm(10 DOWNTO 0) => CTRL_UNIT_imm(10 DOWNTO 0),
    s_ext_imm(15 DOWNTO 0) => imm_ext_s_ext_imm(15 DOWNTO 0)
  );

  imm_mux : mux_2_to_1
  PORT MAP(
    a(15 DOWNTO 0) => ri_imm_upper_concat_0_upper_concat(15 DOWNTO 0),
    b(15 DOWNTO 0) => ri_imm_ext_z_ext_imm(15 DOWNTO 0),
    c(15 DOWNTO 0) => mux_2_to_1_0_c(15 DOWNTO 0),
    sel => CTRL_UNIT_ri_imm_format_sel
  );

  pc_load_mux : mux_2_to_1
  PORT MAP(
    a(15 DOWNTO 0) => gpr_in_1(15 DOWNTO 0),
    b(15 DOWNTO 0) => adder_0_c(15 DOWNTO 0),
    c(15 DOWNTO 0) => mux_2_to_1_0_c1(15 DOWNTO 0),
    sel => CTRL_UNIT_pc_load_sel
  );

  reg_file_inst : reg_file
  PORT MAP(
    clk => clk,
    inr(2 DOWNTO 0) => inr(2 DOWNTO 0),
    outvalue(15 DOWNTO 0) => outvalue(15 DOWNTO 0),
    read_addrA(2 DOWNTO 0) => CTRL_UNIT_regA_addr(2 DOWNTO 0),
    read_addrB(2 DOWNTO 0) => CTRL_UNIT_regB_addr(2 DOWNTO 0),
    regA(15 DOWNTO 0) => gpr_in_1(15 DOWNTO 0),
    regB(15 DOWNTO 0) => reg_file_regB(15 DOWNTO 0),
    regC(15 DOWNTO 0) => reg_file_input_mux_output_reg(15 DOWNTO 0),
    rst => rst,
    wr_en => CTRL_UNIT_reg_file_wr,
    write_addrC(2 DOWNTO 0) => CTRL_UNIT_dest_addr(2 DOWNTO 0)
  );

  reg_file_input_mux_inst : reg_file_input_mux
  PORT MAP(
    data_mem(15 DOWNTO 0) => data_mem(15 DOWNTO 0),
    from_stack(15 DOWNTO 0) => from_stack(15 DOWNTO 0),
    in_alu(15 DOWNTO 0) => cmp_status_in_1(15 DOWNTO 0),
    next_ins_addr(15 DOWNTO 0) => adder_1_c(15 DOWNTO 0),
    output_reg(15 DOWNTO 0) => reg_file_input_mux_output_reg(15 DOWNTO 0),
    sel(1 DOWNTO 0) => CTRL_UNIT_reg_file_input_sel(1 DOWNTO 0)
  );

  ri_imm_ext_inst : ri_imm_ext
  PORT MAP(
    imm(5 DOWNTO 0) => CTRL_UNIT_ri_imm(5 DOWNTO 0),
    z_ext_imm(15 DOWNTO 0) => ri_imm_ext_z_ext_imm(15 DOWNTO 0)
  );

  ri_imm_upper_concat_inst : ri_imm_upper_concat
  PORT MAP(
    imm(5 DOWNTO 0) => CTRL_UNIT_ri_imm(5 DOWNTO 0),
    upper_concat(15 DOWNTO 0) => ri_imm_upper_concat_0_upper_concat(15 DOWNTO 0)
  );

  stack_ptr_reg_inst : stack_ptr_reg
  PORT MAP(
    clk => clk,
    dec => CTRL_UNIT_dec_stack,
    inc => CTRL_UNIT_inc_stack,
    ld_en => CTRL_UNIT_stack_ld,
    ld_val(15 DOWNTO 0) => gpr_in_1(15 DOWNTO 0),
    rst => rst,
    stack_ptr(15 DOWNTO 0) => stack_ptr(15 DOWNTO 0)
  );

END Behavioral;