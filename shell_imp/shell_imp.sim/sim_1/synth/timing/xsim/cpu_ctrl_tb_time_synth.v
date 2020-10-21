// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Oct  5 22:54:54 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.sim/sim_1/synth/timing/xsim/cpu_ctrl_tb_time_synth.v
// Design      : design_1_wrapper
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CPU_imp_1IDDXJS
   (regA,
    data_mem_wr,
    stack_wr,
    ins_addr,
    regB,
    stack_ptr,
    cur_ins,
    clk,
    data_out,
    stack_out);
  output [15:0]regA;
  output data_mem_wr;
  output stack_wr;
  output [15:0]ins_addr;
  output [15:0]regB;
  output [15:0]stack_ptr;
  input [15:0]cur_ins;
  input clk;
  input [15:0]data_out;
  input [15:0]stack_out;

  wire ALU_CTRL_op_add;
  wire ALU_CTRL_op_and;
  wire ALU_CTRL_op_asl;
  wire ALU_CTRL_op_asr;
  wire ALU_CTRL_op_cmp;
  wire ALU_CTRL_op_nand;
  wire ALU_CTRL_op_or;
  wire ALU_CTRL_op_sub;
  wire ALU_CTRL_op_xor;
  wire CTRL_UNIT_alu_input_sel;
  wire [3:0]CTRL_UNIT_alu_op;
  wire CTRL_UNIT_cmp_status_wr;
  wire CTRL_UNIT_dec_stack;
  wire [2:0]CTRL_UNIT_dest_addr;
  wire [10:0]CTRL_UNIT_imm;
  wire CTRL_UNIT_inc_stack;
  wire CTRL_UNIT_pc_en;
  wire CTRL_UNIT_pc_ld_en;
  wire CTRL_UNIT_pc_load_sel;
  wire [2:0]CTRL_UNIT_regA_addr;
  wire [2:0]CTRL_UNIT_regB_addr;
  wire [1:0]CTRL_UNIT_reg_file_input_sel;
  wire CTRL_UNIT_reg_file_wr;
  wire [5:0]CTRL_UNIT_ri_imm;
  wire CTRL_UNIT_ri_imm_format_sel;
  wire CTRL_UNIT_stack_ld;
  wire [15:0]adder_0_c;
  wire [15:0]adder_1_c;
  wire [15:0]alu_input_mux_to_alu;
  wire clk;
  wire [15:0]cmp_status_in_1;
  wire cmp_status_reg_eq_sig;
  wire cmp_status_reg_gt_sig;
  wire cmp_status_reg_lt_sig;
  wire cmp_status_reg_ne_sig;
  wire [15:0]cur_ins;
  wire data_mem_wr;
  wire [15:0]data_out;
  wire [15:0]imm_ext_s_ext_imm;
  wire [15:0]ins_addr;
  wire [15:0]pc_load_mux_to_pc_ld;
  wire [15:0]regA;
  wire [15:0]regB;
  wire [15:0]reg_file_input_mux_output_reg;
  wire [15:0]ri_imm_ext_z_ext_imm;
  wire [15:0]ri_imm_format_mux_0_ri_imm;
  wire [15:0]ri_imm_upper_concat_0_upper_concat;
  wire [15:0]stack_out;
  wire [15:0]stack_ptr;
  wire stack_wr;
  wire [15:0]xlconstant_0_dout;

  (* X_CORE_INFO = "ALU,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_ALU_0_0 ALU
       (.inputA(regA),
        .inputB(alu_input_mux_to_alu),
        .op_add(ALU_CTRL_op_add),
        .op_and(ALU_CTRL_op_and),
        .op_asl(ALU_CTRL_op_asl),
        .op_asr(ALU_CTRL_op_asr),
        .op_cmp(ALU_CTRL_op_cmp),
        .op_nand(ALU_CTRL_op_nand),
        .op_or(ALU_CTRL_op_or),
        .op_sub(ALU_CTRL_op_sub),
        .op_xor(ALU_CTRL_op_xor),
        .outputC(cmp_status_in_1));
  (* X_CORE_INFO = "ALU_CTRL,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_ALU_CTRL_0_0 ALU_CTRL
       (.alu_op(CTRL_UNIT_alu_op),
        .op_add(ALU_CTRL_op_add),
        .op_and(ALU_CTRL_op_and),
        .op_asl(ALU_CTRL_op_asl),
        .op_asr(ALU_CTRL_op_asr),
        .op_cmp(ALU_CTRL_op_cmp),
        .op_nand(ALU_CTRL_op_nand),
        .op_or(ALU_CTRL_op_or),
        .op_sub(ALU_CTRL_op_sub),
        .op_xor(ALU_CTRL_op_xor));
  (* X_CORE_INFO = "CTRL_UNIT,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_CTRL_UNIT_0_0 CTRL_UNIT
       (.alu_input_sel(CTRL_UNIT_alu_input_sel),
        .alu_op(CTRL_UNIT_alu_op),
        .cmp_eq(cmp_status_reg_eq_sig),
        .cmp_gt(cmp_status_reg_gt_sig),
        .cmp_lt(cmp_status_reg_lt_sig),
        .cmp_ne(cmp_status_reg_ne_sig),
        .cmp_status_wr(CTRL_UNIT_cmp_status_wr),
        .data_mem_wr(data_mem_wr),
        .dec_stack(CTRL_UNIT_dec_stack),
        .dest_addr(CTRL_UNIT_dest_addr),
        .imm(CTRL_UNIT_imm),
        .inc_stack(CTRL_UNIT_inc_stack),
        .instruction(cur_ins),
        .pc_en(CTRL_UNIT_pc_en),
        .pc_ld_en(CTRL_UNIT_pc_ld_en),
        .pc_load_sel(CTRL_UNIT_pc_load_sel),
        .regA_addr(CTRL_UNIT_regA_addr),
        .regB_addr(CTRL_UNIT_regB_addr),
        .reg_file_input_sel(CTRL_UNIT_reg_file_input_sel),
        .reg_file_wr(CTRL_UNIT_reg_file_wr),
        .ri_imm(CTRL_UNIT_ri_imm),
        .ri_imm_format_sel(CTRL_UNIT_ri_imm_format_sel),
        .stack_ld(CTRL_UNIT_stack_ld),
        .stack_wr(stack_wr));
  (* X_CORE_INFO = "prog_cnt_reg,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_prog_cnt_reg_0_0 PC
       (.clk(clk),
        .en(CTRL_UNIT_pc_en),
        .ins_addr(ins_addr),
        .ld_en(CTRL_UNIT_pc_ld_en),
        .ld_val(pc_load_mux_to_pc_ld));
  (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_adder_0_0 adder_0
       (.a(imm_ext_s_ext_imm),
        .b(ins_addr),
        .c(adder_0_c));
  (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_adder_1_0 adder_1
       (.a(ins_addr),
        .b(xlconstant_0_dout),
        .c(adder_1_c));
  (* X_CORE_INFO = "alu_input_mux,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_alu_input_mux_0_0 alu_input_mux
       (.from_gpr(regB),
        .from_ri_imm(ri_imm_format_mux_0_ri_imm),
        .sel(CTRL_UNIT_alu_input_sel),
        .to_alu(alu_input_mux_to_alu));
  (* X_CORE_INFO = "cmp_status_reg,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_cmp_status_reg_0_0 cmp_status_reg
       (.clk(clk),
        .cmp_status_in(cmp_status_in_1),
        .eq_sig(cmp_status_reg_eq_sig),
        .gt_sig(cmp_status_reg_gt_sig),
        .lt_sig(cmp_status_reg_lt_sig),
        .ne_sig(cmp_status_reg_ne_sig),
        .wr_en(CTRL_UNIT_cmp_status_wr));
  (* X_CORE_INFO = "imm_ext,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_imm_ext_0_0 imm_ext
       (.imm(CTRL_UNIT_imm),
        .s_ext_imm(imm_ext_s_ext_imm));
  (* X_CORE_INFO = "pc_load_mux,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_pc_load_mux_0_0 pc_load_mux
       (.gpr_in(regA),
        .pc_imm_b(adder_0_c),
        .sel(CTRL_UNIT_pc_load_sel),
        .to_pc_ld(pc_load_mux_to_pc_ld));
  (* X_CORE_INFO = "reg_file,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_reg_file_0_0 reg_file
       (.clk(clk),
        .read_addrA(CTRL_UNIT_regA_addr),
        .read_addrB(CTRL_UNIT_regB_addr),
        .regA(regA),
        .regB(regB),
        .regC(reg_file_input_mux_output_reg),
        .wr_en(CTRL_UNIT_reg_file_wr),
        .write_addrC(CTRL_UNIT_dest_addr));
  (* X_CORE_INFO = "reg_file_input_mux,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_reg_file_input_mux_0_0 reg_file_input_mux
       (.data_mem(data_out),
        .from_stack(stack_out),
        .in_alu(cmp_status_in_1),
        .next_ins_addr(adder_1_c),
        .output_reg(reg_file_input_mux_output_reg),
        .sel(CTRL_UNIT_reg_file_input_sel));
  (* X_CORE_INFO = "ri_imm_ext,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_ri_imm_ext_0_0 ri_imm_ext
       (.imm(CTRL_UNIT_ri_imm),
        .z_ext_imm(ri_imm_ext_z_ext_imm));
  (* X_CORE_INFO = "ri_imm_format_mux,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_ri_imm_format_mux_0_0 ri_imm_format_mux
       (.ri_imm(ri_imm_format_mux_0_ri_imm),
        .sel(CTRL_UNIT_ri_imm_format_sel),
        .upper_concat_imm(ri_imm_upper_concat_0_upper_concat),
        .z_ext_imm(ri_imm_ext_z_ext_imm));
  (* X_CORE_INFO = "ri_imm_upper_concat,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_ri_imm_upper_concat_0_0 ri_imm_upper_concat
       (.imm(CTRL_UNIT_ri_imm),
        .upper_concat(ri_imm_upper_concat_0_upper_concat));
  (* X_CORE_INFO = "stack_ptr_reg,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_stack_ptr_reg_0_0 stack_ptr_reg
       (.clk(clk),
        .dec(CTRL_UNIT_dec_stack),
        .inc(CTRL_UNIT_inc_stack),
        .ld_en(CTRL_UNIT_stack_ld),
        .ld_val(regA),
        .stack_ptr(stack_ptr));
  (* CHECK_LICENSE_TYPE = "design_1_xlconstant_0_0,xlconstant_v1_1_5_xlconstant,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconstant_v1_1_5_xlconstant,Vivado 2018.3" *) 
  design_1_xlconstant_0_0 xlconstant_val_1
       (.dout(xlconstant_0_dout));
endmodule

(* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk);
  input clk;

  wire [15:0]PC_ins_addr;
  wire clk;
  wire [15:0]memory_cur_ins;
  wire [15:0]memory_data_out;
  wire [15:0]memory_stack_out;
  wire [15:0]reg_file_regA;
  wire [15:0]reg_file_regB;
  wire [15:0]stack_addr_1;
  wire stack_wr_en_1;
  wire wr_en_1;

  CPU_imp_1IDDXJS CPU
       (.clk(clk),
        .cur_ins(memory_cur_ins),
        .data_mem_wr(wr_en_1),
        .data_out(memory_data_out),
        .ins_addr(PC_ins_addr),
        .regA(reg_file_regA),
        .regB(reg_file_regB),
        .stack_out(memory_stack_out),
        .stack_ptr(stack_addr_1),
        .stack_wr(stack_wr_en_1));
  memory_imp_1RJ1PXL memory
       (.clk(clk),
        .cur_ins(memory_cur_ins),
        .data_in(reg_file_regA),
        .data_out(memory_data_out),
        .ins_addr(PC_ins_addr),
        .stack_addr(stack_addr_1),
        .stack_out(memory_stack_out),
        .stack_wr_en(stack_wr_en_1),
        .wr_addr(reg_file_regB),
        .wr_en(wr_en_1));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_ALU_0_0,ALU,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "ALU,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_ALU_0_0
   (inputA,
    inputB,
    outputC,
    op_add,
    op_sub,
    op_and,
    op_or,
    op_xor,
    op_nand,
    op_asr,
    op_asl,
    op_cmp);
  input [15:0]inputA;
  input [15:0]inputB;
  output [15:0]outputC;
  input op_add;
  input op_sub;
  input op_and;
  input op_or;
  input op_xor;
  input op_nand;
  input op_asr;
  input op_asl;
  input op_cmp;

  wire [3:1]and_out__15;
  wire [15:0]inputA;
  wire [15:0]inputB;
  wire op_add;
  wire op_and;
  wire op_asl;
  wire op_asr;
  wire op_cmp;
  wire op_nand;
  wire op_or;
  wire op_sub;
  wire op_xor;
  wire [15:0]outputC;
  wire \outputC[0]_INST_0_i_10_n_0 ;
  wire \outputC[0]_INST_0_i_11_n_0 ;
  wire \outputC[0]_INST_0_i_1_n_0 ;
  wire \outputC[0]_INST_0_i_2_n_0 ;
  wire \outputC[0]_INST_0_i_4_n_2 ;
  wire \outputC[0]_INST_0_i_4_n_3 ;
  wire \outputC[0]_INST_0_i_5_n_0 ;
  wire \outputC[0]_INST_0_i_5_n_1 ;
  wire \outputC[0]_INST_0_i_5_n_2 ;
  wire \outputC[0]_INST_0_i_5_n_3 ;
  wire \outputC[0]_INST_0_i_6_n_0 ;
  wire \outputC[0]_INST_0_i_7_n_0 ;
  wire \outputC[0]_INST_0_i_8_n_0 ;
  wire \outputC[0]_INST_0_i_9_n_0 ;
  wire \outputC[10]_INST_0_i_1_n_0 ;
  wire \outputC[10]_INST_0_i_2_n_0 ;
  wire \outputC[11]_INST_0_i_1_n_0 ;
  wire \outputC[11]_INST_0_i_2_n_0 ;
  wire \outputC[12]_INST_0_i_1_n_0 ;
  wire \outputC[12]_INST_0_i_2_n_0 ;
  wire \outputC[13]_INST_0_i_1_n_0 ;
  wire \outputC[13]_INST_0_i_2_n_0 ;
  wire \outputC[14]_INST_0_i_1_n_0 ;
  wire \outputC[14]_INST_0_i_2_n_0 ;
  wire \outputC[15]_INST_0_i_1_n_0 ;
  wire \outputC[15]_INST_0_i_2_n_0 ;
  wire \outputC[15]_INST_0_i_3_n_0 ;
  wire \outputC[1]_INST_0_i_10_n_0 ;
  wire \outputC[1]_INST_0_i_11_n_0 ;
  wire \outputC[1]_INST_0_i_12_n_0 ;
  wire \outputC[1]_INST_0_i_1_n_0 ;
  wire \outputC[1]_INST_0_i_2_n_0 ;
  wire \outputC[1]_INST_0_i_4_n_2 ;
  wire \outputC[1]_INST_0_i_4_n_3 ;
  wire \outputC[1]_INST_0_i_6_n_0 ;
  wire \outputC[1]_INST_0_i_6_n_1 ;
  wire \outputC[1]_INST_0_i_6_n_2 ;
  wire \outputC[1]_INST_0_i_6_n_3 ;
  wire \outputC[1]_INST_0_i_7_n_0 ;
  wire \outputC[1]_INST_0_i_8_n_0 ;
  wire \outputC[1]_INST_0_i_9_n_0 ;
  wire \outputC[2]_INST_0_i_1_n_0 ;
  wire \outputC[3]_INST_0_i_1_n_0 ;
  wire \outputC[3]_INST_0_i_2_n_0 ;
  wire \outputC[4]_INST_0_i_1_n_0 ;
  wire \outputC[4]_INST_0_i_2_n_0 ;
  wire \outputC[5]_INST_0_i_1_n_0 ;
  wire \outputC[5]_INST_0_i_2_n_0 ;
  wire \outputC[6]_INST_0_i_1_n_0 ;
  wire \outputC[6]_INST_0_i_2_n_0 ;
  wire \outputC[7]_INST_0_i_1_n_0 ;
  wire \outputC[7]_INST_0_i_2_n_0 ;
  wire \outputC[8]_INST_0_i_1_n_0 ;
  wire \outputC[8]_INST_0_i_2_n_0 ;
  wire \outputC[9]_INST_0_i_1_n_0 ;
  wire \outputC[9]_INST_0_i_2_n_0 ;
  wire [3:2]\NLW_outputC[0]_INST_0_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_outputC[0]_INST_0_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_outputC[0]_INST_0_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_outputC[1]_INST_0_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_outputC[1]_INST_0_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_outputC[1]_INST_0_i_6_O_UNCONNECTED ;

  design_1_ALU_0_0_ALU U0
       (.and_out__15(and_out__15),
        .inputA(inputA),
        .inputB(inputB),
        .op_add(op_add),
        .op_and(op_and),
        .op_asl(op_asl),
        .op_asr(op_asr),
        .op_cmp(op_cmp),
        .op_sub(op_sub),
        .outputC(outputC),
        .\outputC[0]_0 (\outputC[0]_INST_0_i_2_n_0 ),
        .\outputC[0]_1 (\outputC[15]_INST_0_i_3_n_0 ),
        .\outputC[10]_0 (\outputC[10]_INST_0_i_2_n_0 ),
        .\outputC[11]_0 (\outputC[11]_INST_0_i_2_n_0 ),
        .\outputC[12]_0 (\outputC[12]_INST_0_i_2_n_0 ),
        .\outputC[13]_0 (\outputC[13]_INST_0_i_2_n_0 ),
        .\outputC[14]_0 (\outputC[14]_INST_0_i_2_n_0 ),
        .\outputC[15]_0 (\outputC[15]_INST_0_i_2_n_0 ),
        .\outputC[1]_0 (\outputC[3]_INST_0_i_2_n_0 ),
        .\outputC[1]_1 (\outputC[1]_INST_0_i_2_n_0 ),
        .\outputC[4]_0 (\outputC[4]_INST_0_i_2_n_0 ),
        .\outputC[5]_0 (\outputC[5]_INST_0_i_2_n_0 ),
        .\outputC[6]_0 (\outputC[6]_INST_0_i_2_n_0 ),
        .\outputC[7]_0 (\outputC[7]_INST_0_i_2_n_0 ),
        .\outputC[8]_0 (\outputC[8]_INST_0_i_2_n_0 ),
        .\outputC[9]_0 (\outputC[9]_INST_0_i_2_n_0 ),
        .outputC_0_sp_1(\outputC[0]_INST_0_i_1_n_0 ),
        .outputC_10_sp_1(\outputC[10]_INST_0_i_1_n_0 ),
        .outputC_11_sp_1(\outputC[11]_INST_0_i_1_n_0 ),
        .outputC_12_sp_1(\outputC[12]_INST_0_i_1_n_0 ),
        .outputC_13_sp_1(\outputC[13]_INST_0_i_1_n_0 ),
        .outputC_14_sp_1(\outputC[14]_INST_0_i_1_n_0 ),
        .outputC_15_sp_1(\outputC[15]_INST_0_i_1_n_0 ),
        .outputC_1_sp_1(\outputC[1]_INST_0_i_1_n_0 ),
        .outputC_2_sp_1(\outputC[2]_INST_0_i_1_n_0 ),
        .outputC_3_sp_1(\outputC[3]_INST_0_i_1_n_0 ),
        .outputC_4_sp_1(\outputC[4]_INST_0_i_1_n_0 ),
        .outputC_5_sp_1(\outputC[5]_INST_0_i_1_n_0 ),
        .outputC_6_sp_1(\outputC[6]_INST_0_i_1_n_0 ),
        .outputC_7_sp_1(\outputC[7]_INST_0_i_1_n_0 ),
        .outputC_8_sp_1(\outputC[8]_INST_0_i_1_n_0 ),
        .outputC_9_sp_1(\outputC[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[0]_INST_0_i_1 
       (.I0(inputB[0]),
        .I1(inputA[0]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[0]_INST_0_i_10 
       (.I0(inputB[3]),
        .I1(inputA[3]),
        .I2(inputA[5]),
        .I3(inputB[5]),
        .I4(inputA[4]),
        .I5(inputB[4]),
        .O(\outputC[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[0]_INST_0_i_11 
       (.I0(inputB[0]),
        .I1(inputA[0]),
        .I2(inputA[2]),
        .I3(inputB[2]),
        .I4(inputA[1]),
        .I5(inputB[1]),
        .O(\outputC[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4F00400)) 
    \outputC[0]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_cmp),
        .I2(op_asr),
        .I3(\outputC[0]_INST_0_i_4_n_2 ),
        .I4(inputA[1]),
        .I5(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[0]_INST_0_i_2_n_0 ));
  CARRY4 \outputC[0]_INST_0_i_4 
       (.CI(\outputC[0]_INST_0_i_5_n_0 ),
        .CO({\NLW_outputC[0]_INST_0_i_4_CO_UNCONNECTED [3:2],\outputC[0]_INST_0_i_4_n_2 ,\outputC[0]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_outputC[0]_INST_0_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\outputC[0]_INST_0_i_6_n_0 ,\outputC[0]_INST_0_i_7_n_0 }));
  CARRY4 \outputC[0]_INST_0_i_5 
       (.CI(1'b0),
        .CO({\outputC[0]_INST_0_i_5_n_0 ,\outputC[0]_INST_0_i_5_n_1 ,\outputC[0]_INST_0_i_5_n_2 ,\outputC[0]_INST_0_i_5_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_outputC[0]_INST_0_i_5_O_UNCONNECTED [3:0]),
        .S({\outputC[0]_INST_0_i_8_n_0 ,\outputC[0]_INST_0_i_9_n_0 ,\outputC[0]_INST_0_i_10_n_0 ,\outputC[0]_INST_0_i_11_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \outputC[0]_INST_0_i_6 
       (.I0(inputA[15]),
        .I1(inputB[15]),
        .O(\outputC[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[0]_INST_0_i_7 
       (.I0(inputB[12]),
        .I1(inputA[12]),
        .I2(inputA[14]),
        .I3(inputB[14]),
        .I4(inputA[13]),
        .I5(inputB[13]),
        .O(\outputC[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[0]_INST_0_i_8 
       (.I0(inputB[9]),
        .I1(inputA[9]),
        .I2(inputA[11]),
        .I3(inputB[11]),
        .I4(inputA[10]),
        .I5(inputB[10]),
        .O(\outputC[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[0]_INST_0_i_9 
       (.I0(inputB[6]),
        .I1(inputA[6]),
        .I2(inputA[8]),
        .I3(inputB[8]),
        .I4(inputA[7]),
        .I5(inputB[7]),
        .O(\outputC[0]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[10]_INST_0_i_1 
       (.I0(inputB[10]),
        .I1(inputA[10]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[10]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[9]),
        .I3(inputA[11]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[11]_INST_0_i_1 
       (.I0(inputB[11]),
        .I1(inputA[11]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[11]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[10]),
        .I3(inputA[12]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[11]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[12]_INST_0_i_1 
       (.I0(inputB[12]),
        .I1(inputA[12]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[12]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[11]),
        .I3(inputA[13]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[13]_INST_0_i_1 
       (.I0(inputB[13]),
        .I1(inputA[13]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[13]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[12]),
        .I3(inputA[14]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[14]_INST_0_i_1 
       (.I0(inputB[14]),
        .I1(inputA[14]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[14]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[13]),
        .I3(inputA[15]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[14]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[15]_INST_0_i_1 
       (.I0(inputB[15]),
        .I1(inputA[15]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[15]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[14]),
        .I3(inputA[15]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[15]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \outputC[15]_INST_0_i_3 
       (.I0(op_sub),
        .I1(op_and),
        .I2(op_add),
        .O(\outputC[15]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[1]_INST_0_i_1 
       (.I0(inputB[1]),
        .I1(inputA[1]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[1]_INST_0_i_10 
       (.I0(inputB[6]),
        .I1(inputA[6]),
        .I2(inputA[8]),
        .I3(inputB[8]),
        .I4(inputA[7]),
        .I5(inputB[7]),
        .O(\outputC[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[1]_INST_0_i_11 
       (.I0(inputB[3]),
        .I1(inputA[3]),
        .I2(inputA[5]),
        .I3(inputB[5]),
        .I4(inputA[4]),
        .I5(inputB[4]),
        .O(\outputC[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[1]_INST_0_i_12 
       (.I0(inputB[0]),
        .I1(inputA[0]),
        .I2(inputA[2]),
        .I3(inputB[2]),
        .I4(inputA[1]),
        .I5(inputB[1]),
        .O(\outputC[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \outputC[1]_INST_0_i_2 
       (.I0(inputA[2]),
        .I1(\outputC[1]_INST_0_i_4_n_2 ),
        .I2(inputA[0]),
        .I3(op_asr),
        .I4(op_cmp),
        .I5(op_asl),
        .O(\outputC[1]_INST_0_i_2_n_0 ));
  CARRY4 \outputC[1]_INST_0_i_4 
       (.CI(\outputC[1]_INST_0_i_6_n_0 ),
        .CO({\NLW_outputC[1]_INST_0_i_4_CO_UNCONNECTED [3:2],\outputC[1]_INST_0_i_4_n_2 ,\outputC[1]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(\NLW_outputC[1]_INST_0_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\outputC[1]_INST_0_i_7_n_0 ,\outputC[1]_INST_0_i_8_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    \outputC[1]_INST_0_i_5 
       (.I0(inputA[1]),
        .I1(inputB[1]),
        .O(and_out__15[1]));
  CARRY4 \outputC[1]_INST_0_i_6 
       (.CI(1'b0),
        .CO({\outputC[1]_INST_0_i_6_n_0 ,\outputC[1]_INST_0_i_6_n_1 ,\outputC[1]_INST_0_i_6_n_2 ,\outputC[1]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_outputC[1]_INST_0_i_6_O_UNCONNECTED [3:0]),
        .S({\outputC[1]_INST_0_i_9_n_0 ,\outputC[1]_INST_0_i_10_n_0 ,\outputC[1]_INST_0_i_11_n_0 ,\outputC[1]_INST_0_i_12_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \outputC[1]_INST_0_i_7 
       (.I0(inputA[15]),
        .I1(inputB[15]),
        .O(\outputC[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[1]_INST_0_i_8 
       (.I0(inputB[12]),
        .I1(inputA[12]),
        .I2(inputA[14]),
        .I3(inputB[14]),
        .I4(inputA[13]),
        .I5(inputB[13]),
        .O(\outputC[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[1]_INST_0_i_9 
       (.I0(inputB[9]),
        .I1(inputA[9]),
        .I2(inputA[11]),
        .I3(inputB[11]),
        .I4(inputA[10]),
        .I5(inputB[10]),
        .O(\outputC[1]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[2]_INST_0_i_1 
       (.I0(inputB[2]),
        .I1(inputA[2]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \outputC[2]_INST_0_i_4 
       (.I0(inputA[2]),
        .I1(inputB[2]),
        .O(and_out__15[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[3]_INST_0_i_1 
       (.I0(inputB[3]),
        .I1(inputA[3]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \outputC[3]_INST_0_i_2 
       (.I0(op_xor),
        .I1(op_nand),
        .I2(op_or),
        .O(\outputC[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \outputC[3]_INST_0_i_5 
       (.I0(inputA[3]),
        .I1(inputB[3]),
        .O(and_out__15[3]));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[4]_INST_0_i_1 
       (.I0(inputB[4]),
        .I1(inputA[4]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[4]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[3]),
        .I3(inputA[5]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[5]_INST_0_i_1 
       (.I0(inputB[5]),
        .I1(inputA[5]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[5]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[4]),
        .I3(inputA[6]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[6]_INST_0_i_1 
       (.I0(inputB[6]),
        .I1(inputA[6]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[6]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[5]),
        .I3(inputA[7]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[7]_INST_0_i_1 
       (.I0(inputB[7]),
        .I1(inputA[7]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[7]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[6]),
        .I3(inputA[8]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[8]_INST_0_i_1 
       (.I0(inputB[8]),
        .I1(inputA[8]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[8]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[7]),
        .I3(inputA[9]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[9]_INST_0_i_1 
       (.I0(inputB[9]),
        .I1(inputA[9]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[9]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[8]),
        .I3(inputA[10]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[9]_INST_0_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "ALU" *) 
module design_1_ALU_0_0_ALU
   (outputC,
    inputA,
    inputB,
    outputC_0_sp_1,
    \outputC[0]_0 ,
    \outputC[0]_1 ,
    op_add,
    op_and,
    op_sub,
    outputC_1_sp_1,
    \outputC[1]_0 ,
    \outputC[1]_1 ,
    and_out__15,
    outputC_2_sp_1,
    outputC_3_sp_1,
    outputC_4_sp_1,
    \outputC[4]_0 ,
    outputC_5_sp_1,
    \outputC[5]_0 ,
    outputC_6_sp_1,
    \outputC[6]_0 ,
    outputC_7_sp_1,
    \outputC[7]_0 ,
    outputC_8_sp_1,
    \outputC[8]_0 ,
    outputC_9_sp_1,
    \outputC[9]_0 ,
    outputC_10_sp_1,
    \outputC[10]_0 ,
    outputC_11_sp_1,
    \outputC[11]_0 ,
    outputC_12_sp_1,
    \outputC[12]_0 ,
    outputC_13_sp_1,
    \outputC[13]_0 ,
    outputC_14_sp_1,
    \outputC[14]_0 ,
    outputC_15_sp_1,
    \outputC[15]_0 ,
    op_asr,
    op_cmp,
    op_asl);
  output [15:0]outputC;
  input [15:0]inputA;
  input [15:0]inputB;
  input outputC_0_sp_1;
  input \outputC[0]_0 ;
  input \outputC[0]_1 ;
  input op_add;
  input op_and;
  input op_sub;
  input outputC_1_sp_1;
  input \outputC[1]_0 ;
  input \outputC[1]_1 ;
  input [2:0]and_out__15;
  input outputC_2_sp_1;
  input outputC_3_sp_1;
  input outputC_4_sp_1;
  input \outputC[4]_0 ;
  input outputC_5_sp_1;
  input \outputC[5]_0 ;
  input outputC_6_sp_1;
  input \outputC[6]_0 ;
  input outputC_7_sp_1;
  input \outputC[7]_0 ;
  input outputC_8_sp_1;
  input \outputC[8]_0 ;
  input outputC_9_sp_1;
  input \outputC[9]_0 ;
  input outputC_10_sp_1;
  input \outputC[10]_0 ;
  input outputC_11_sp_1;
  input \outputC[11]_0 ;
  input outputC_12_sp_1;
  input \outputC[12]_0 ;
  input outputC_13_sp_1;
  input \outputC[13]_0 ;
  input outputC_14_sp_1;
  input \outputC[14]_0 ;
  input outputC_15_sp_1;
  input \outputC[15]_0 ;
  input op_asr;
  input op_cmp;
  input op_asl;

  wire add_out_carry__0_i_1_n_0;
  wire add_out_carry__0_i_2_n_0;
  wire add_out_carry__0_i_3_n_0;
  wire add_out_carry__0_i_4_n_0;
  wire add_out_carry__0_n_0;
  wire add_out_carry__0_n_1;
  wire add_out_carry__0_n_2;
  wire add_out_carry__0_n_3;
  wire add_out_carry__1_i_1_n_0;
  wire add_out_carry__1_i_2_n_0;
  wire add_out_carry__1_i_3_n_0;
  wire add_out_carry__1_i_4_n_0;
  wire add_out_carry__1_n_0;
  wire add_out_carry__1_n_1;
  wire add_out_carry__1_n_2;
  wire add_out_carry__1_n_3;
  wire add_out_carry__2_i_1_n_0;
  wire add_out_carry__2_i_2_n_0;
  wire add_out_carry__2_i_3_n_0;
  wire add_out_carry__2_i_4_n_0;
  wire add_out_carry__2_n_1;
  wire add_out_carry__2_n_2;
  wire add_out_carry__2_n_3;
  wire add_out_carry_i_1_n_0;
  wire add_out_carry_i_2_n_0;
  wire add_out_carry_i_3_n_0;
  wire add_out_carry_i_4_n_0;
  wire add_out_carry_n_0;
  wire add_out_carry_n_1;
  wire add_out_carry_n_2;
  wire add_out_carry_n_3;
  wire [2:0]and_out__15;
  wire cmp_out_reg0;
  wire cmp_out_reg0__7_carry__0_n_1;
  wire cmp_out_reg0__7_carry__0_n_2;
  wire cmp_out_reg0__7_carry__0_n_3;
  wire cmp_out_reg0__7_carry_i_1__0_n_0;
  wire cmp_out_reg0__7_carry_i_1_n_0;
  wire cmp_out_reg0__7_carry_i_2__0_n_0;
  wire cmp_out_reg0__7_carry_i_2_n_0;
  wire cmp_out_reg0__7_carry_i_3__0_n_0;
  wire cmp_out_reg0__7_carry_i_3_n_0;
  wire cmp_out_reg0__7_carry_i_4__0_n_0;
  wire cmp_out_reg0__7_carry_i_4_n_0;
  wire cmp_out_reg0__7_carry_i_5__0_n_0;
  wire cmp_out_reg0__7_carry_i_5_n_0;
  wire cmp_out_reg0__7_carry_i_6__0_n_0;
  wire cmp_out_reg0__7_carry_i_6_n_0;
  wire cmp_out_reg0__7_carry_i_7__0_n_0;
  wire cmp_out_reg0__7_carry_i_7_n_0;
  wire cmp_out_reg0__7_carry_i_8__0_n_0;
  wire cmp_out_reg0__7_carry_i_8_n_0;
  wire cmp_out_reg0__7_carry_n_0;
  wire cmp_out_reg0__7_carry_n_1;
  wire cmp_out_reg0__7_carry_n_2;
  wire cmp_out_reg0__7_carry_n_3;
  wire cmp_out_reg0_carry__0_i_1_n_0;
  wire cmp_out_reg0_carry__0_i_2_n_0;
  wire cmp_out_reg0_carry__0_i_3_n_0;
  wire cmp_out_reg0_carry__0_i_4_n_0;
  wire cmp_out_reg0_carry__0_i_5_n_0;
  wire cmp_out_reg0_carry__0_i_6_n_0;
  wire cmp_out_reg0_carry__0_i_7_n_0;
  wire cmp_out_reg0_carry__0_i_8_n_0;
  wire cmp_out_reg0_carry__0_n_0;
  wire cmp_out_reg0_carry__0_n_1;
  wire cmp_out_reg0_carry__0_n_2;
  wire cmp_out_reg0_carry__0_n_3;
  wire cmp_out_reg0_carry_i_1_n_0;
  wire cmp_out_reg0_carry_i_2_n_0;
  wire cmp_out_reg0_carry_i_3_n_0;
  wire cmp_out_reg0_carry_i_4_n_0;
  wire cmp_out_reg0_carry_i_5_n_0;
  wire cmp_out_reg0_carry_i_6_n_0;
  wire cmp_out_reg0_carry_i_7_n_0;
  wire cmp_out_reg0_carry_i_8_n_0;
  wire cmp_out_reg0_carry_n_0;
  wire cmp_out_reg0_carry_n_1;
  wire cmp_out_reg0_carry_n_2;
  wire cmp_out_reg0_carry_n_3;
  wire [15:0]data0;
  wire [15:0]data1;
  wire [15:0]inputA;
  wire [15:0]inputB;
  wire op_add;
  wire op_and;
  wire op_asl;
  wire op_asr;
  wire op_cmp;
  wire op_sub;
  wire [15:0]outputC;
  wire \outputC[0]_0 ;
  wire \outputC[0]_1 ;
  wire \outputC[0]_INST_0_i_3_n_0 ;
  wire \outputC[10]_0 ;
  wire \outputC[10]_INST_0_i_3_n_0 ;
  wire \outputC[11]_0 ;
  wire \outputC[11]_INST_0_i_3_n_0 ;
  wire \outputC[12]_0 ;
  wire \outputC[12]_INST_0_i_3_n_0 ;
  wire \outputC[13]_0 ;
  wire \outputC[13]_INST_0_i_3_n_0 ;
  wire \outputC[14]_0 ;
  wire \outputC[14]_INST_0_i_3_n_0 ;
  wire \outputC[15]_0 ;
  wire \outputC[15]_INST_0_i_4_n_0 ;
  wire \outputC[1]_0 ;
  wire \outputC[1]_1 ;
  wire \outputC[1]_INST_0_i_3_n_0 ;
  wire \outputC[2]_INST_0_i_2_n_0 ;
  wire \outputC[2]_INST_0_i_3_n_0 ;
  wire \outputC[3]_INST_0_i_3_n_0 ;
  wire \outputC[3]_INST_0_i_4_n_0 ;
  wire \outputC[4]_0 ;
  wire \outputC[4]_INST_0_i_3_n_0 ;
  wire \outputC[5]_0 ;
  wire \outputC[5]_INST_0_i_3_n_0 ;
  wire \outputC[6]_0 ;
  wire \outputC[6]_INST_0_i_3_n_0 ;
  wire \outputC[7]_0 ;
  wire \outputC[7]_INST_0_i_3_n_0 ;
  wire \outputC[8]_0 ;
  wire \outputC[8]_INST_0_i_3_n_0 ;
  wire \outputC[9]_0 ;
  wire \outputC[9]_INST_0_i_3_n_0 ;
  wire outputC_0_sn_1;
  wire outputC_10_sn_1;
  wire outputC_11_sn_1;
  wire outputC_12_sn_1;
  wire outputC_13_sn_1;
  wire outputC_14_sn_1;
  wire outputC_15_sn_1;
  wire outputC_1_sn_1;
  wire outputC_2_sn_1;
  wire outputC_3_sn_1;
  wire outputC_4_sn_1;
  wire outputC_5_sn_1;
  wire outputC_6_sn_1;
  wire outputC_7_sn_1;
  wire outputC_8_sn_1;
  wire outputC_9_sn_1;
  wire sub_out_carry__0_i_1_n_0;
  wire sub_out_carry__0_i_2_n_0;
  wire sub_out_carry__0_i_3_n_0;
  wire sub_out_carry__0_i_4_n_0;
  wire sub_out_carry__0_n_0;
  wire sub_out_carry__0_n_1;
  wire sub_out_carry__0_n_2;
  wire sub_out_carry__0_n_3;
  wire sub_out_carry__1_i_1_n_0;
  wire sub_out_carry__1_i_2_n_0;
  wire sub_out_carry__1_i_3_n_0;
  wire sub_out_carry__1_i_4_n_0;
  wire sub_out_carry__1_n_0;
  wire sub_out_carry__1_n_1;
  wire sub_out_carry__1_n_2;
  wire sub_out_carry__1_n_3;
  wire sub_out_carry__2_i_1_n_0;
  wire sub_out_carry__2_i_2_n_0;
  wire sub_out_carry__2_i_3_n_0;
  wire sub_out_carry__2_i_4_n_0;
  wire sub_out_carry__2_n_1;
  wire sub_out_carry__2_n_2;
  wire sub_out_carry__2_n_3;
  wire sub_out_carry_i_1_n_0;
  wire sub_out_carry_i_2_n_0;
  wire sub_out_carry_i_3_n_0;
  wire sub_out_carry_i_4_n_0;
  wire sub_out_carry_n_0;
  wire sub_out_carry_n_1;
  wire sub_out_carry_n_2;
  wire sub_out_carry_n_3;
  wire [3:3]NLW_add_out_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_cmp_out_reg0__7_carry_O_UNCONNECTED;
  wire [3:0]NLW_cmp_out_reg0__7_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_cmp_out_reg0_carry_O_UNCONNECTED;
  wire [3:0]NLW_cmp_out_reg0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_sub_out_carry__2_CO_UNCONNECTED;

  assign outputC_0_sn_1 = outputC_0_sp_1;
  assign outputC_10_sn_1 = outputC_10_sp_1;
  assign outputC_11_sn_1 = outputC_11_sp_1;
  assign outputC_12_sn_1 = outputC_12_sp_1;
  assign outputC_13_sn_1 = outputC_13_sp_1;
  assign outputC_14_sn_1 = outputC_14_sp_1;
  assign outputC_15_sn_1 = outputC_15_sp_1;
  assign outputC_1_sn_1 = outputC_1_sp_1;
  assign outputC_2_sn_1 = outputC_2_sp_1;
  assign outputC_3_sn_1 = outputC_3_sp_1;
  assign outputC_4_sn_1 = outputC_4_sp_1;
  assign outputC_5_sn_1 = outputC_5_sp_1;
  assign outputC_6_sn_1 = outputC_6_sp_1;
  assign outputC_7_sn_1 = outputC_7_sp_1;
  assign outputC_8_sn_1 = outputC_8_sp_1;
  assign outputC_9_sn_1 = outputC_9_sp_1;
  CARRY4 add_out_carry
       (.CI(1'b0),
        .CO({add_out_carry_n_0,add_out_carry_n_1,add_out_carry_n_2,add_out_carry_n_3}),
        .CYINIT(1'b0),
        .DI(inputA[3:0]),
        .O(data0[3:0]),
        .S({add_out_carry_i_1_n_0,add_out_carry_i_2_n_0,add_out_carry_i_3_n_0,add_out_carry_i_4_n_0}));
  CARRY4 add_out_carry__0
       (.CI(add_out_carry_n_0),
        .CO({add_out_carry__0_n_0,add_out_carry__0_n_1,add_out_carry__0_n_2,add_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(inputA[7:4]),
        .O(data0[7:4]),
        .S({add_out_carry__0_i_1_n_0,add_out_carry__0_i_2_n_0,add_out_carry__0_i_3_n_0,add_out_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__0_i_1
       (.I0(inputA[7]),
        .I1(inputB[7]),
        .O(add_out_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__0_i_2
       (.I0(inputA[6]),
        .I1(inputB[6]),
        .O(add_out_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__0_i_3
       (.I0(inputA[5]),
        .I1(inputB[5]),
        .O(add_out_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__0_i_4
       (.I0(inputA[4]),
        .I1(inputB[4]),
        .O(add_out_carry__0_i_4_n_0));
  CARRY4 add_out_carry__1
       (.CI(add_out_carry__0_n_0),
        .CO({add_out_carry__1_n_0,add_out_carry__1_n_1,add_out_carry__1_n_2,add_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(inputA[11:8]),
        .O(data0[11:8]),
        .S({add_out_carry__1_i_1_n_0,add_out_carry__1_i_2_n_0,add_out_carry__1_i_3_n_0,add_out_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__1_i_1
       (.I0(inputA[11]),
        .I1(inputB[11]),
        .O(add_out_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__1_i_2
       (.I0(inputA[10]),
        .I1(inputB[10]),
        .O(add_out_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__1_i_3
       (.I0(inputA[9]),
        .I1(inputB[9]),
        .O(add_out_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__1_i_4
       (.I0(inputA[8]),
        .I1(inputB[8]),
        .O(add_out_carry__1_i_4_n_0));
  CARRY4 add_out_carry__2
       (.CI(add_out_carry__1_n_0),
        .CO({NLW_add_out_carry__2_CO_UNCONNECTED[3],add_out_carry__2_n_1,add_out_carry__2_n_2,add_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,inputA[14:12]}),
        .O(data0[15:12]),
        .S({add_out_carry__2_i_1_n_0,add_out_carry__2_i_2_n_0,add_out_carry__2_i_3_n_0,add_out_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__2_i_1
       (.I0(inputA[15]),
        .I1(inputB[15]),
        .O(add_out_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__2_i_2
       (.I0(inputA[14]),
        .I1(inputB[14]),
        .O(add_out_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__2_i_3
       (.I0(inputA[13]),
        .I1(inputB[13]),
        .O(add_out_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__2_i_4
       (.I0(inputA[12]),
        .I1(inputB[12]),
        .O(add_out_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry_i_1
       (.I0(inputA[3]),
        .I1(inputB[3]),
        .O(add_out_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry_i_2
       (.I0(inputA[2]),
        .I1(inputB[2]),
        .O(add_out_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry_i_3
       (.I0(inputA[1]),
        .I1(inputB[1]),
        .O(add_out_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry_i_4
       (.I0(inputA[0]),
        .I1(inputB[0]),
        .O(add_out_carry_i_4_n_0));
  CARRY4 cmp_out_reg0__7_carry
       (.CI(1'b0),
        .CO({cmp_out_reg0__7_carry_n_0,cmp_out_reg0__7_carry_n_1,cmp_out_reg0__7_carry_n_2,cmp_out_reg0__7_carry_n_3}),
        .CYINIT(1'b0),
        .DI({cmp_out_reg0__7_carry_i_1_n_0,cmp_out_reg0__7_carry_i_2_n_0,cmp_out_reg0__7_carry_i_3_n_0,cmp_out_reg0__7_carry_i_4_n_0}),
        .O(NLW_cmp_out_reg0__7_carry_O_UNCONNECTED[3:0]),
        .S({cmp_out_reg0__7_carry_i_5_n_0,cmp_out_reg0__7_carry_i_6_n_0,cmp_out_reg0__7_carry_i_7_n_0,cmp_out_reg0__7_carry_i_8_n_0}));
  CARRY4 cmp_out_reg0__7_carry__0
       (.CI(cmp_out_reg0__7_carry_n_0),
        .CO({cmp_out_reg0,cmp_out_reg0__7_carry__0_n_1,cmp_out_reg0__7_carry__0_n_2,cmp_out_reg0__7_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({cmp_out_reg0__7_carry_i_1__0_n_0,cmp_out_reg0__7_carry_i_2__0_n_0,cmp_out_reg0__7_carry_i_3__0_n_0,cmp_out_reg0__7_carry_i_4__0_n_0}),
        .O(NLW_cmp_out_reg0__7_carry__0_O_UNCONNECTED[3:0]),
        .S({cmp_out_reg0__7_carry_i_5__0_n_0,cmp_out_reg0__7_carry_i_6__0_n_0,cmp_out_reg0__7_carry_i_7__0_n_0,cmp_out_reg0__7_carry_i_8__0_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0__7_carry_i_1
       (.I0(inputB[6]),
        .I1(inputA[6]),
        .I2(inputA[7]),
        .I3(inputB[7]),
        .O(cmp_out_reg0__7_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0__7_carry_i_1__0
       (.I0(inputB[14]),
        .I1(inputA[14]),
        .I2(inputA[15]),
        .I3(inputB[15]),
        .O(cmp_out_reg0__7_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0__7_carry_i_2
       (.I0(inputB[4]),
        .I1(inputA[4]),
        .I2(inputA[5]),
        .I3(inputB[5]),
        .O(cmp_out_reg0__7_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0__7_carry_i_2__0
       (.I0(inputB[12]),
        .I1(inputA[12]),
        .I2(inputA[13]),
        .I3(inputB[13]),
        .O(cmp_out_reg0__7_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0__7_carry_i_3
       (.I0(inputB[2]),
        .I1(inputA[2]),
        .I2(inputA[3]),
        .I3(inputB[3]),
        .O(cmp_out_reg0__7_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0__7_carry_i_3__0
       (.I0(inputB[10]),
        .I1(inputA[10]),
        .I2(inputA[11]),
        .I3(inputB[11]),
        .O(cmp_out_reg0__7_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0__7_carry_i_4
       (.I0(inputB[0]),
        .I1(inputA[0]),
        .I2(inputA[1]),
        .I3(inputB[1]),
        .O(cmp_out_reg0__7_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0__7_carry_i_4__0
       (.I0(inputB[8]),
        .I1(inputA[8]),
        .I2(inputA[9]),
        .I3(inputB[9]),
        .O(cmp_out_reg0__7_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_5
       (.I0(inputB[6]),
        .I1(inputA[6]),
        .I2(inputB[7]),
        .I3(inputA[7]),
        .O(cmp_out_reg0__7_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_5__0
       (.I0(inputB[14]),
        .I1(inputA[14]),
        .I2(inputB[15]),
        .I3(inputA[15]),
        .O(cmp_out_reg0__7_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_6
       (.I0(inputB[4]),
        .I1(inputA[4]),
        .I2(inputB[5]),
        .I3(inputA[5]),
        .O(cmp_out_reg0__7_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_6__0
       (.I0(inputB[12]),
        .I1(inputA[12]),
        .I2(inputB[13]),
        .I3(inputA[13]),
        .O(cmp_out_reg0__7_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_7
       (.I0(inputB[2]),
        .I1(inputA[2]),
        .I2(inputB[3]),
        .I3(inputA[3]),
        .O(cmp_out_reg0__7_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_7__0
       (.I0(inputB[10]),
        .I1(inputA[10]),
        .I2(inputB[11]),
        .I3(inputA[11]),
        .O(cmp_out_reg0__7_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_8
       (.I0(inputB[0]),
        .I1(inputA[0]),
        .I2(inputB[1]),
        .I3(inputA[1]),
        .O(cmp_out_reg0__7_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_8__0
       (.I0(inputB[8]),
        .I1(inputA[8]),
        .I2(inputB[9]),
        .I3(inputA[9]),
        .O(cmp_out_reg0__7_carry_i_8__0_n_0));
  CARRY4 cmp_out_reg0_carry
       (.CI(1'b0),
        .CO({cmp_out_reg0_carry_n_0,cmp_out_reg0_carry_n_1,cmp_out_reg0_carry_n_2,cmp_out_reg0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({cmp_out_reg0_carry_i_1_n_0,cmp_out_reg0_carry_i_2_n_0,cmp_out_reg0_carry_i_3_n_0,cmp_out_reg0_carry_i_4_n_0}),
        .O(NLW_cmp_out_reg0_carry_O_UNCONNECTED[3:0]),
        .S({cmp_out_reg0_carry_i_5_n_0,cmp_out_reg0_carry_i_6_n_0,cmp_out_reg0_carry_i_7_n_0,cmp_out_reg0_carry_i_8_n_0}));
  CARRY4 cmp_out_reg0_carry__0
       (.CI(cmp_out_reg0_carry_n_0),
        .CO({cmp_out_reg0_carry__0_n_0,cmp_out_reg0_carry__0_n_1,cmp_out_reg0_carry__0_n_2,cmp_out_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({cmp_out_reg0_carry__0_i_1_n_0,cmp_out_reg0_carry__0_i_2_n_0,cmp_out_reg0_carry__0_i_3_n_0,cmp_out_reg0_carry__0_i_4_n_0}),
        .O(NLW_cmp_out_reg0_carry__0_O_UNCONNECTED[3:0]),
        .S({cmp_out_reg0_carry__0_i_5_n_0,cmp_out_reg0_carry__0_i_6_n_0,cmp_out_reg0_carry__0_i_7_n_0,cmp_out_reg0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0_carry__0_i_1
       (.I0(inputA[14]),
        .I1(inputB[14]),
        .I2(inputB[15]),
        .I3(inputA[15]),
        .O(cmp_out_reg0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0_carry__0_i_2
       (.I0(inputA[12]),
        .I1(inputB[12]),
        .I2(inputB[13]),
        .I3(inputA[13]),
        .O(cmp_out_reg0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0_carry__0_i_3
       (.I0(inputA[10]),
        .I1(inputB[10]),
        .I2(inputB[11]),
        .I3(inputA[11]),
        .O(cmp_out_reg0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0_carry__0_i_4
       (.I0(inputA[8]),
        .I1(inputB[8]),
        .I2(inputB[9]),
        .I3(inputA[9]),
        .O(cmp_out_reg0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry__0_i_5
       (.I0(inputB[14]),
        .I1(inputA[14]),
        .I2(inputB[15]),
        .I3(inputA[15]),
        .O(cmp_out_reg0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry__0_i_6
       (.I0(inputB[12]),
        .I1(inputA[12]),
        .I2(inputB[13]),
        .I3(inputA[13]),
        .O(cmp_out_reg0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry__0_i_7
       (.I0(inputB[10]),
        .I1(inputA[10]),
        .I2(inputB[11]),
        .I3(inputA[11]),
        .O(cmp_out_reg0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry__0_i_8
       (.I0(inputB[8]),
        .I1(inputA[8]),
        .I2(inputB[9]),
        .I3(inputA[9]),
        .O(cmp_out_reg0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0_carry_i_1
       (.I0(inputA[6]),
        .I1(inputB[6]),
        .I2(inputB[7]),
        .I3(inputA[7]),
        .O(cmp_out_reg0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0_carry_i_2
       (.I0(inputA[4]),
        .I1(inputB[4]),
        .I2(inputB[5]),
        .I3(inputA[5]),
        .O(cmp_out_reg0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0_carry_i_3
       (.I0(inputA[2]),
        .I1(inputB[2]),
        .I2(inputB[3]),
        .I3(inputA[3]),
        .O(cmp_out_reg0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0_carry_i_4
       (.I0(inputA[0]),
        .I1(inputB[0]),
        .I2(inputB[1]),
        .I3(inputA[1]),
        .O(cmp_out_reg0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry_i_5
       (.I0(inputB[6]),
        .I1(inputA[6]),
        .I2(inputB[7]),
        .I3(inputA[7]),
        .O(cmp_out_reg0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry_i_6
       (.I0(inputB[4]),
        .I1(inputA[4]),
        .I2(inputB[5]),
        .I3(inputA[5]),
        .O(cmp_out_reg0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry_i_7
       (.I0(inputB[2]),
        .I1(inputA[2]),
        .I2(inputB[3]),
        .I3(inputA[3]),
        .O(cmp_out_reg0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry_i_8
       (.I0(inputB[0]),
        .I1(inputA[0]),
        .I2(inputB[1]),
        .I3(inputA[1]),
        .O(cmp_out_reg0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[0]_INST_0 
       (.I0(outputC_0_sn_1),
        .I1(\outputC[0]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[0]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[0]),
        .O(outputC[0]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[0]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[0]),
        .I2(inputB[0]),
        .I3(op_add),
        .I4(data1[0]),
        .I5(op_sub),
        .O(\outputC[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[10]_INST_0 
       (.I0(outputC_10_sn_1),
        .I1(\outputC[10]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[10]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[10]),
        .O(outputC[10]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[10]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[10]),
        .I2(inputB[10]),
        .I3(op_add),
        .I4(data1[10]),
        .I5(op_sub),
        .O(\outputC[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[11]_INST_0 
       (.I0(outputC_11_sn_1),
        .I1(\outputC[11]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[11]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[11]),
        .O(outputC[11]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[11]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[11]),
        .I2(inputB[11]),
        .I3(op_add),
        .I4(data1[11]),
        .I5(op_sub),
        .O(\outputC[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[12]_INST_0 
       (.I0(outputC_12_sn_1),
        .I1(\outputC[12]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[12]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[12]),
        .O(outputC[12]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[12]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[12]),
        .I2(inputB[12]),
        .I3(op_add),
        .I4(data1[12]),
        .I5(op_sub),
        .O(\outputC[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[13]_INST_0 
       (.I0(outputC_13_sn_1),
        .I1(\outputC[13]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[13]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[13]),
        .O(outputC[13]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[13]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[13]),
        .I2(inputB[13]),
        .I3(op_add),
        .I4(data1[13]),
        .I5(op_sub),
        .O(\outputC[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[14]_INST_0 
       (.I0(outputC_14_sn_1),
        .I1(\outputC[14]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[14]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[14]),
        .O(outputC[14]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[14]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[14]),
        .I2(inputB[14]),
        .I3(op_add),
        .I4(data1[14]),
        .I5(op_sub),
        .O(\outputC[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[15]_INST_0 
       (.I0(outputC_15_sn_1),
        .I1(\outputC[15]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[15]_INST_0_i_4_n_0 ),
        .I4(op_add),
        .I5(data0[15]),
        .O(outputC[15]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[15]_INST_0_i_4 
       (.I0(op_and),
        .I1(inputA[15]),
        .I2(inputB[15]),
        .I3(op_add),
        .I4(data1[15]),
        .I5(op_sub),
        .O(\outputC[15]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \outputC[1]_INST_0 
       (.I0(outputC_1_sn_1),
        .I1(\outputC[0]_1 ),
        .I2(\outputC[1]_0 ),
        .I3(\outputC[1]_1 ),
        .I4(\outputC[1]_INST_0_i_3_n_0 ),
        .O(outputC[1]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \outputC[1]_INST_0_i_3 
       (.I0(data0[1]),
        .I1(and_out__15[0]),
        .I2(data1[1]),
        .I3(op_add),
        .I4(op_and),
        .I5(op_sub),
        .O(\outputC[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \outputC[2]_INST_0 
       (.I0(outputC_2_sn_1),
        .I1(\outputC[0]_1 ),
        .I2(\outputC[1]_0 ),
        .I3(\outputC[2]_INST_0_i_2_n_0 ),
        .I4(\outputC[2]_INST_0_i_3_n_0 ),
        .O(outputC[2]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \outputC[2]_INST_0_i_2 
       (.I0(inputA[3]),
        .I1(cmp_out_reg0_carry__0_n_0),
        .I2(inputA[1]),
        .I3(op_asr),
        .I4(op_cmp),
        .I5(op_asl),
        .O(\outputC[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \outputC[2]_INST_0_i_3 
       (.I0(data0[2]),
        .I1(and_out__15[1]),
        .I2(data1[2]),
        .I3(op_add),
        .I4(op_and),
        .I5(op_sub),
        .O(\outputC[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \outputC[3]_INST_0 
       (.I0(outputC_3_sn_1),
        .I1(\outputC[0]_1 ),
        .I2(\outputC[1]_0 ),
        .I3(\outputC[3]_INST_0_i_3_n_0 ),
        .I4(\outputC[3]_INST_0_i_4_n_0 ),
        .O(outputC[3]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \outputC[3]_INST_0_i_3 
       (.I0(inputA[4]),
        .I1(cmp_out_reg0),
        .I2(inputA[2]),
        .I3(op_asr),
        .I4(op_cmp),
        .I5(op_asl),
        .O(\outputC[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \outputC[3]_INST_0_i_4 
       (.I0(data0[3]),
        .I1(and_out__15[2]),
        .I2(data1[3]),
        .I3(op_add),
        .I4(op_and),
        .I5(op_sub),
        .O(\outputC[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[4]_INST_0 
       (.I0(outputC_4_sn_1),
        .I1(\outputC[4]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[4]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[4]),
        .O(outputC[4]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[4]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[4]),
        .I2(inputB[4]),
        .I3(op_add),
        .I4(data1[4]),
        .I5(op_sub),
        .O(\outputC[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[5]_INST_0 
       (.I0(outputC_5_sn_1),
        .I1(\outputC[5]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[5]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[5]),
        .O(outputC[5]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[5]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[5]),
        .I2(inputB[5]),
        .I3(op_add),
        .I4(data1[5]),
        .I5(op_sub),
        .O(\outputC[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[6]_INST_0 
       (.I0(outputC_6_sn_1),
        .I1(\outputC[6]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[6]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[6]),
        .O(outputC[6]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[6]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[6]),
        .I2(inputB[6]),
        .I3(op_add),
        .I4(data1[6]),
        .I5(op_sub),
        .O(\outputC[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[7]_INST_0 
       (.I0(outputC_7_sn_1),
        .I1(\outputC[7]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[7]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[7]),
        .O(outputC[7]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[7]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[7]),
        .I2(inputB[7]),
        .I3(op_add),
        .I4(data1[7]),
        .I5(op_sub),
        .O(\outputC[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[8]_INST_0 
       (.I0(outputC_8_sn_1),
        .I1(\outputC[8]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[8]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[8]),
        .O(outputC[8]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[8]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[8]),
        .I2(inputB[8]),
        .I3(op_add),
        .I4(data1[8]),
        .I5(op_sub),
        .O(\outputC[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[9]_INST_0 
       (.I0(outputC_9_sn_1),
        .I1(\outputC[9]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[9]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[9]),
        .O(outputC[9]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[9]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[9]),
        .I2(inputB[9]),
        .I3(op_add),
        .I4(data1[9]),
        .I5(op_sub),
        .O(\outputC[9]_INST_0_i_3_n_0 ));
  CARRY4 sub_out_carry
       (.CI(1'b0),
        .CO({sub_out_carry_n_0,sub_out_carry_n_1,sub_out_carry_n_2,sub_out_carry_n_3}),
        .CYINIT(1'b1),
        .DI(inputA[3:0]),
        .O(data1[3:0]),
        .S({sub_out_carry_i_1_n_0,sub_out_carry_i_2_n_0,sub_out_carry_i_3_n_0,sub_out_carry_i_4_n_0}));
  CARRY4 sub_out_carry__0
       (.CI(sub_out_carry_n_0),
        .CO({sub_out_carry__0_n_0,sub_out_carry__0_n_1,sub_out_carry__0_n_2,sub_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(inputA[7:4]),
        .O(data1[7:4]),
        .S({sub_out_carry__0_i_1_n_0,sub_out_carry__0_i_2_n_0,sub_out_carry__0_i_3_n_0,sub_out_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__0_i_1
       (.I0(inputA[7]),
        .I1(inputB[7]),
        .O(sub_out_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__0_i_2
       (.I0(inputA[6]),
        .I1(inputB[6]),
        .O(sub_out_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__0_i_3
       (.I0(inputA[5]),
        .I1(inputB[5]),
        .O(sub_out_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__0_i_4
       (.I0(inputA[4]),
        .I1(inputB[4]),
        .O(sub_out_carry__0_i_4_n_0));
  CARRY4 sub_out_carry__1
       (.CI(sub_out_carry__0_n_0),
        .CO({sub_out_carry__1_n_0,sub_out_carry__1_n_1,sub_out_carry__1_n_2,sub_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(inputA[11:8]),
        .O(data1[11:8]),
        .S({sub_out_carry__1_i_1_n_0,sub_out_carry__1_i_2_n_0,sub_out_carry__1_i_3_n_0,sub_out_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__1_i_1
       (.I0(inputA[11]),
        .I1(inputB[11]),
        .O(sub_out_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__1_i_2
       (.I0(inputA[10]),
        .I1(inputB[10]),
        .O(sub_out_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__1_i_3
       (.I0(inputA[9]),
        .I1(inputB[9]),
        .O(sub_out_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__1_i_4
       (.I0(inputA[8]),
        .I1(inputB[8]),
        .O(sub_out_carry__1_i_4_n_0));
  CARRY4 sub_out_carry__2
       (.CI(sub_out_carry__1_n_0),
        .CO({NLW_sub_out_carry__2_CO_UNCONNECTED[3],sub_out_carry__2_n_1,sub_out_carry__2_n_2,sub_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,inputA[14:12]}),
        .O(data1[15:12]),
        .S({sub_out_carry__2_i_1_n_0,sub_out_carry__2_i_2_n_0,sub_out_carry__2_i_3_n_0,sub_out_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__2_i_1
       (.I0(inputA[15]),
        .I1(inputB[15]),
        .O(sub_out_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__2_i_2
       (.I0(inputA[14]),
        .I1(inputB[14]),
        .O(sub_out_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__2_i_3
       (.I0(inputA[13]),
        .I1(inputB[13]),
        .O(sub_out_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__2_i_4
       (.I0(inputA[12]),
        .I1(inputB[12]),
        .O(sub_out_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry_i_1
       (.I0(inputA[3]),
        .I1(inputB[3]),
        .O(sub_out_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry_i_2
       (.I0(inputA[2]),
        .I1(inputB[2]),
        .O(sub_out_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry_i_3
       (.I0(inputA[1]),
        .I1(inputB[1]),
        .O(sub_out_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry_i_4
       (.I0(inputA[0]),
        .I1(inputB[0]),
        .O(sub_out_carry_i_4_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_ALU_CTRL_0_0,ALU_CTRL,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "ALU_CTRL,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_ALU_CTRL_0_0
   (alu_op,
    op_add,
    op_sub,
    op_and,
    op_or,
    op_xor,
    op_nand,
    op_asr,
    op_asl,
    op_cmp);
  input [3:0]alu_op;
  output op_add;
  output op_sub;
  output op_and;
  output op_or;
  output op_xor;
  output op_nand;
  output op_asr;
  output op_asl;
  output op_cmp;

  wire [3:0]alu_op;
  wire op_add;
  wire op_and;
  wire op_asl;
  wire op_asr;
  wire op_cmp;
  wire op_nand;
  wire op_or;
  wire op_sub;
  wire op_xor;

  design_1_ALU_CTRL_0_0_ALU_CTRL U0
       (.alu_op(alu_op),
        .op_add(op_add),
        .op_asr(op_asr),
        .op_cmp(op_cmp),
        .op_nand(op_nand));
  LUT4 #(
    .INIT(16'h0010)) 
    op_and_INST_0
       (.I0(alu_op[3]),
        .I1(alu_op[2]),
        .I2(alu_op[1]),
        .I3(alu_op[0]),
        .O(op_and));
  LUT4 #(
    .INIT(16'h2000)) 
    op_asl_INST_0
       (.I0(alu_op[2]),
        .I1(alu_op[3]),
        .I2(alu_op[0]),
        .I3(alu_op[1]),
        .O(op_asl));
  LUT4 #(
    .INIT(16'h1000)) 
    op_or_INST_0
       (.I0(alu_op[3]),
        .I1(alu_op[2]),
        .I2(alu_op[0]),
        .I3(alu_op[1]),
        .O(op_or));
  LUT4 #(
    .INIT(16'h0010)) 
    op_sub_INST_0
       (.I0(alu_op[3]),
        .I1(alu_op[2]),
        .I2(alu_op[0]),
        .I3(alu_op[1]),
        .O(op_sub));
  LUT4 #(
    .INIT(16'h0010)) 
    op_xor_INST_0
       (.I0(alu_op[3]),
        .I1(alu_op[0]),
        .I2(alu_op[2]),
        .I3(alu_op[1]),
        .O(op_xor));
endmodule

(* ORIG_REF_NAME = "ALU_CTRL" *) 
module design_1_ALU_CTRL_0_0_ALU_CTRL
   (op_add,
    op_nand,
    op_asr,
    op_cmp,
    alu_op);
  output op_add;
  output op_nand;
  output op_asr;
  output op_cmp;
  input [3:0]alu_op;

  wire [3:0]alu_op;
  wire op_add;
  wire op_asr;
  wire op_cmp;
  wire op_nand;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    op_add__0
       (.I0(alu_op[3]),
        .I1(alu_op[2]),
        .I2(alu_op[0]),
        .I3(alu_op[1]),
        .O(op_add));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    op_asr__0
       (.I0(alu_op[3]),
        .I1(alu_op[0]),
        .I2(alu_op[1]),
        .I3(alu_op[2]),
        .O(op_asr));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    op_cmp__0
       (.I0(alu_op[0]),
        .I1(alu_op[2]),
        .I2(alu_op[1]),
        .I3(alu_op[3]),
        .O(op_cmp));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    op_nand__0
       (.I0(alu_op[3]),
        .I1(alu_op[1]),
        .I2(alu_op[0]),
        .I3(alu_op[2]),
        .O(op_nand));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_CTRL_UNIT_0_0,CTRL_UNIT,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "CTRL_UNIT,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_CTRL_UNIT_0_0
   (instruction,
    dest_addr,
    regA_addr,
    regB_addr,
    alu_op,
    reg_file_input_sel,
    reg_file_wr,
    pc_ld_en,
    pc_en,
    data_mem_wr,
    cmp_status_wr,
    ri_imm,
    imm,
    alu_input_sel,
    pc_load_sel,
    cmp_eq,
    cmp_ne,
    cmp_gt,
    cmp_lt,
    stack_ld,
    dec_stack,
    inc_stack,
    stack_wr,
    ri_imm_format_sel);
  input [15:0]instruction;
  output [2:0]dest_addr;
  output [2:0]regA_addr;
  output [2:0]regB_addr;
  output [3:0]alu_op;
  output [1:0]reg_file_input_sel;
  output reg_file_wr;
  output pc_ld_en;
  output pc_en;
  output data_mem_wr;
  output cmp_status_wr;
  output [5:0]ri_imm;
  output [10:0]imm;
  output alu_input_sel;
  output pc_load_sel;
  input cmp_eq;
  input cmp_ne;
  input cmp_gt;
  input cmp_lt;
  output stack_ld;
  output dec_stack;
  output inc_stack;
  output stack_wr;
  output ri_imm_format_sel;

  wire alu_input_sel;
  wire [3:0]alu_op;
  wire cmp_eq;
  wire cmp_gt;
  wire cmp_lt;
  wire cmp_ne;
  wire cmp_status_wr;
  wire cmp_status_wr_INST_0_i_1_n_0;
  wire data_mem_wr;
  wire inc_stack;
  wire [15:0]instruction;
  wire pc_en;
  wire pc_en_INST_0_i_1_n_0;
  wire pc_en_INST_0_i_2_n_0;
  wire pc_en_INST_0_i_3_n_0;
  wire pc_en_INST_0_i_4_n_0;
  wire pc_ld_en;
  wire pc_ld_en_INST_0_i_1_n_0;
  wire pc_load_sel;
  wire [2:0]regA_addr;
  wire [2:0]regB_addr;
  wire [1:0]reg_file_input_sel;
  wire reg_file_wr;
  wire reg_file_wr_INST_0_i_1_n_0;
  wire stack_ld;
  wire stack_ld_INST_0_i_1_n_0;
  wire stack_wr;

  assign dec_stack = stack_wr;
  assign dest_addr[2:0] = instruction[8:6];
  assign imm[10:0] = instruction[10:0];
  assign ri_imm[5:0] = instruction[5:0];
  assign ri_imm_format_sel = instruction[15];
  LUT3 #(
    .INIT(8'hF4)) 
    alu_input_sel_INST_0
       (.I0(instruction[10]),
        .I1(instruction[12]),
        .I2(instruction[13]),
        .O(alu_input_sel));
  LUT2 #(
    .INIT(4'h8)) 
    \alu_op[0]_INST_0 
       (.I0(instruction[15]),
        .I1(instruction[9]),
        .O(alu_op[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \alu_op[1]_INST_0 
       (.I0(instruction[15]),
        .I1(instruction[10]),
        .O(alu_op[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \alu_op[2]_INST_0 
       (.I0(instruction[15]),
        .I1(instruction[11]),
        .O(alu_op[2]));
  LUT3 #(
    .INIT(8'h80)) 
    \alu_op[3]_INST_0 
       (.I0(instruction[15]),
        .I1(instruction[12]),
        .I2(instruction[10]),
        .O(alu_op[3]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    cmp_status_wr_INST_0
       (.I0(instruction[12]),
        .I1(instruction[14]),
        .I2(cmp_status_wr_INST_0_i_1_n_0),
        .I3(instruction[9]),
        .I4(instruction[10]),
        .I5(instruction[11]),
        .O(cmp_status_wr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    cmp_status_wr_INST_0_i_1
       (.I0(instruction[15]),
        .I1(instruction[13]),
        .O(cmp_status_wr_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    data_mem_wr_INST_0
       (.I0(instruction[13]),
        .I1(instruction[15]),
        .I2(instruction[14]),
        .O(data_mem_wr));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    inc_stack_INST_0
       (.I0(instruction[14]),
        .I1(reg_file_input_sel[0]),
        .I2(instruction[11]),
        .I3(instruction[10]),
        .I4(instruction[9]),
        .I5(instruction[12]),
        .O(inc_stack));
  LUT6 #(
    .INIT(64'hF1F1F1F1F1F1F100)) 
    pc_en_INST_0
       (.I0(pc_ld_en_INST_0_i_1_n_0),
        .I1(instruction[14]),
        .I2(pc_en_INST_0_i_1_n_0),
        .I3(pc_en_INST_0_i_2_n_0),
        .I4(pc_en_INST_0_i_3_n_0),
        .I5(pc_en_INST_0_i_4_n_0),
        .O(pc_en));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF9)) 
    pc_en_INST_0_i_1
       (.I0(instruction[14]),
        .I1(instruction[13]),
        .I2(instruction[15]),
        .O(pc_en_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pc_en_INST_0_i_2
       (.I0(instruction[1]),
        .I1(instruction[8]),
        .I2(instruction[12]),
        .I3(instruction[3]),
        .I4(instruction[0]),
        .O(pc_en_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_en_INST_0_i_3
       (.I0(instruction[5]),
        .I1(instruction[2]),
        .I2(instruction[7]),
        .I3(instruction[4]),
        .O(pc_en_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_en_INST_0_i_4
       (.I0(instruction[9]),
        .I1(instruction[6]),
        .I2(instruction[13]),
        .I3(instruction[15]),
        .I4(instruction[11]),
        .I5(instruction[10]),
        .O(pc_en_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'h0320)) 
    pc_ld_en_INST_0
       (.I0(pc_ld_en_INST_0_i_1_n_0),
        .I1(instruction[15]),
        .I2(instruction[13]),
        .I3(instruction[14]),
        .O(pc_ld_en));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    pc_ld_en_INST_0_i_1
       (.I0(cmp_lt),
        .I1(cmp_ne),
        .I2(instruction[11]),
        .I3(cmp_gt),
        .I4(instruction[12]),
        .I5(cmp_eq),
        .O(pc_ld_en_INST_0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pc_load_sel_INST_0
       (.I0(instruction[14]),
        .O(pc_load_sel));
  LUT6 #(
    .INIT(64'hCCF00000D8CCF0F0)) 
    \regA_addr[0]_INST_0 
       (.I0(instruction[12]),
        .I1(instruction[6]),
        .I2(instruction[3]),
        .I3(instruction[14]),
        .I4(instruction[15]),
        .I5(instruction[13]),
        .O(regA_addr[0]));
  LUT6 #(
    .INIT(64'hCCF00000D8CCF0F0)) 
    \regA_addr[1]_INST_0 
       (.I0(instruction[12]),
        .I1(instruction[7]),
        .I2(instruction[4]),
        .I3(instruction[14]),
        .I4(instruction[15]),
        .I5(instruction[13]),
        .O(regA_addr[1]));
  LUT6 #(
    .INIT(64'hCCF00000D8CCF0F0)) 
    \regA_addr[2]_INST_0 
       (.I0(instruction[12]),
        .I1(instruction[8]),
        .I2(instruction[5]),
        .I3(instruction[14]),
        .I4(instruction[15]),
        .I5(instruction[13]),
        .O(regA_addr[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \regB_addr[0]_INST_0 
       (.I0(instruction[3]),
        .I1(instruction[12]),
        .I2(instruction[14]),
        .I3(instruction[0]),
        .O(regB_addr[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \regB_addr[1]_INST_0 
       (.I0(instruction[4]),
        .I1(instruction[12]),
        .I2(instruction[14]),
        .I3(instruction[1]),
        .O(regB_addr[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \regB_addr[2]_INST_0 
       (.I0(instruction[5]),
        .I1(instruction[12]),
        .I2(instruction[14]),
        .I3(instruction[2]),
        .O(regB_addr[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_file_input_sel[0]_INST_0 
       (.I0(instruction[13]),
        .I1(instruction[15]),
        .O(reg_file_input_sel[0]));
  LUT3 #(
    .INIT(8'h82)) 
    \reg_file_input_sel[1]_INST_0 
       (.I0(instruction[14]),
        .I1(instruction[13]),
        .I2(instruction[15]),
        .O(reg_file_input_sel[1]));
  LUT6 #(
    .INIT(64'h03F02FF0FF00FF00)) 
    reg_file_wr_INST_0
       (.I0(instruction[9]),
        .I1(instruction[12]),
        .I2(instruction[13]),
        .I3(instruction[14]),
        .I4(reg_file_wr_INST_0_i_1_n_0),
        .I5(instruction[15]),
        .O(reg_file_wr));
  LUT2 #(
    .INIT(4'hE)) 
    reg_file_wr_INST_0_i_1
       (.I0(instruction[11]),
        .I1(instruction[10]),
        .O(reg_file_wr_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    stack_ld_INST_0
       (.I0(stack_ld_INST_0_i_1_n_0),
        .I1(instruction[13]),
        .I2(instruction[15]),
        .I3(instruction[9]),
        .I4(instruction[10]),
        .I5(instruction[11]),
        .O(stack_ld));
  LUT2 #(
    .INIT(4'hB)) 
    stack_ld_INST_0_i_1
       (.I0(instruction[12]),
        .I1(instruction[14]),
        .O(stack_ld_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    stack_wr_INST_0
       (.I0(instruction[11]),
        .I1(instruction[10]),
        .I2(instruction[13]),
        .I3(instruction[15]),
        .I4(instruction[9]),
        .I5(stack_ld_INST_0_i_1_n_0),
        .O(stack_wr));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_adder_0_0,adder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_adder_0_0
   (a,
    b,
    c);
  input [15:0]a;
  input [15:0]b;
  output [15:0]c;

  wire [15:0]a;
  wire [15:0]b;
  wire [15:0]c;

  design_1_adder_0_0_adder U0
       (.a(a),
        .b(b),
        .c(c));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module design_1_adder_0_0_adder
   (c,
    a,
    b);
  output [15:0]c;
  input [15:0]a;
  input [15:0]b;

  wire [15:0]a;
  wire [15:0]b;
  wire [15:0]c;
  wire \c[0]_INST_0_i_1_n_0 ;
  wire \c[0]_INST_0_i_2_n_0 ;
  wire \c[0]_INST_0_i_3_n_0 ;
  wire \c[0]_INST_0_i_4_n_0 ;
  wire \c[0]_INST_0_n_0 ;
  wire \c[0]_INST_0_n_1 ;
  wire \c[0]_INST_0_n_2 ;
  wire \c[0]_INST_0_n_3 ;
  wire \c[12]_INST_0_i_1_n_0 ;
  wire \c[12]_INST_0_i_2_n_0 ;
  wire \c[12]_INST_0_i_3_n_0 ;
  wire \c[12]_INST_0_i_4_n_0 ;
  wire \c[12]_INST_0_n_1 ;
  wire \c[12]_INST_0_n_2 ;
  wire \c[12]_INST_0_n_3 ;
  wire \c[4]_INST_0_i_1_n_0 ;
  wire \c[4]_INST_0_i_2_n_0 ;
  wire \c[4]_INST_0_i_3_n_0 ;
  wire \c[4]_INST_0_i_4_n_0 ;
  wire \c[4]_INST_0_n_0 ;
  wire \c[4]_INST_0_n_1 ;
  wire \c[4]_INST_0_n_2 ;
  wire \c[4]_INST_0_n_3 ;
  wire \c[8]_INST_0_i_1_n_0 ;
  wire \c[8]_INST_0_i_2_n_0 ;
  wire \c[8]_INST_0_i_3_n_0 ;
  wire \c[8]_INST_0_i_4_n_0 ;
  wire \c[8]_INST_0_n_0 ;
  wire \c[8]_INST_0_n_1 ;
  wire \c[8]_INST_0_n_2 ;
  wire \c[8]_INST_0_n_3 ;
  wire [3:3]\NLW_c[12]_INST_0_CO_UNCONNECTED ;

  CARRY4 \c[0]_INST_0 
       (.CI(1'b0),
        .CO({\c[0]_INST_0_n_0 ,\c[0]_INST_0_n_1 ,\c[0]_INST_0_n_2 ,\c[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[3:0]),
        .O(c[3:0]),
        .S({\c[0]_INST_0_i_1_n_0 ,\c[0]_INST_0_i_2_n_0 ,\c[0]_INST_0_i_3_n_0 ,\c[0]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_INST_0_i_1 
       (.I0(a[3]),
        .I1(b[3]),
        .O(\c[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_INST_0_i_2 
       (.I0(a[2]),
        .I1(b[2]),
        .O(\c[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_INST_0_i_3 
       (.I0(a[1]),
        .I1(b[1]),
        .O(\c[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_INST_0_i_4 
       (.I0(a[0]),
        .I1(b[0]),
        .O(\c[0]_INST_0_i_4_n_0 ));
  CARRY4 \c[12]_INST_0 
       (.CI(\c[8]_INST_0_n_0 ),
        .CO({\NLW_c[12]_INST_0_CO_UNCONNECTED [3],\c[12]_INST_0_n_1 ,\c[12]_INST_0_n_2 ,\c[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,a[14:12]}),
        .O(c[15:12]),
        .S({\c[12]_INST_0_i_1_n_0 ,\c[12]_INST_0_i_2_n_0 ,\c[12]_INST_0_i_3_n_0 ,\c[12]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[12]_INST_0_i_1 
       (.I0(a[15]),
        .I1(b[15]),
        .O(\c[12]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[12]_INST_0_i_2 
       (.I0(a[14]),
        .I1(b[14]),
        .O(\c[12]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[12]_INST_0_i_3 
       (.I0(a[13]),
        .I1(b[13]),
        .O(\c[12]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[12]_INST_0_i_4 
       (.I0(a[12]),
        .I1(b[12]),
        .O(\c[12]_INST_0_i_4_n_0 ));
  CARRY4 \c[4]_INST_0 
       (.CI(\c[0]_INST_0_n_0 ),
        .CO({\c[4]_INST_0_n_0 ,\c[4]_INST_0_n_1 ,\c[4]_INST_0_n_2 ,\c[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[7:4]),
        .O(c[7:4]),
        .S({\c[4]_INST_0_i_1_n_0 ,\c[4]_INST_0_i_2_n_0 ,\c[4]_INST_0_i_3_n_0 ,\c[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[4]_INST_0_i_1 
       (.I0(a[7]),
        .I1(b[7]),
        .O(\c[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[4]_INST_0_i_2 
       (.I0(a[6]),
        .I1(b[6]),
        .O(\c[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[4]_INST_0_i_3 
       (.I0(a[5]),
        .I1(b[5]),
        .O(\c[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[4]_INST_0_i_4 
       (.I0(a[4]),
        .I1(b[4]),
        .O(\c[4]_INST_0_i_4_n_0 ));
  CARRY4 \c[8]_INST_0 
       (.CI(\c[4]_INST_0_n_0 ),
        .CO({\c[8]_INST_0_n_0 ,\c[8]_INST_0_n_1 ,\c[8]_INST_0_n_2 ,\c[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[11:8]),
        .O(c[11:8]),
        .S({\c[8]_INST_0_i_1_n_0 ,\c[8]_INST_0_i_2_n_0 ,\c[8]_INST_0_i_3_n_0 ,\c[8]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[8]_INST_0_i_1 
       (.I0(a[11]),
        .I1(b[11]),
        .O(\c[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[8]_INST_0_i_2 
       (.I0(a[10]),
        .I1(b[10]),
        .O(\c[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[8]_INST_0_i_3 
       (.I0(a[9]),
        .I1(b[9]),
        .O(\c[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[8]_INST_0_i_4 
       (.I0(a[8]),
        .I1(b[8]),
        .O(\c[8]_INST_0_i_4_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_adder_1_0,adder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_adder_1_0
   (a,
    b,
    c);
  input [15:0]a;
  input [15:0]b;
  output [15:0]c;

  wire [15:0]a;
  wire [15:0]b;
  wire [15:0]c;

  design_1_adder_1_0_adder U0
       (.a(a),
        .b(b),
        .c(c));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module design_1_adder_1_0_adder
   (c,
    a,
    b);
  output [15:0]c;
  input [15:0]a;
  input [15:0]b;

  wire [15:0]a;
  wire [15:0]b;
  wire [15:0]c;
  wire \c[0]_INST_0_i_1_n_0 ;
  wire \c[0]_INST_0_i_2_n_0 ;
  wire \c[0]_INST_0_i_3_n_0 ;
  wire \c[0]_INST_0_i_4_n_0 ;
  wire \c[0]_INST_0_n_0 ;
  wire \c[0]_INST_0_n_1 ;
  wire \c[0]_INST_0_n_2 ;
  wire \c[0]_INST_0_n_3 ;
  wire \c[12]_INST_0_i_1_n_0 ;
  wire \c[12]_INST_0_i_2_n_0 ;
  wire \c[12]_INST_0_i_3_n_0 ;
  wire \c[12]_INST_0_i_4_n_0 ;
  wire \c[12]_INST_0_n_1 ;
  wire \c[12]_INST_0_n_2 ;
  wire \c[12]_INST_0_n_3 ;
  wire \c[4]_INST_0_i_1_n_0 ;
  wire \c[4]_INST_0_i_2_n_0 ;
  wire \c[4]_INST_0_i_3_n_0 ;
  wire \c[4]_INST_0_i_4_n_0 ;
  wire \c[4]_INST_0_n_0 ;
  wire \c[4]_INST_0_n_1 ;
  wire \c[4]_INST_0_n_2 ;
  wire \c[4]_INST_0_n_3 ;
  wire \c[8]_INST_0_i_1_n_0 ;
  wire \c[8]_INST_0_i_2_n_0 ;
  wire \c[8]_INST_0_i_3_n_0 ;
  wire \c[8]_INST_0_i_4_n_0 ;
  wire \c[8]_INST_0_n_0 ;
  wire \c[8]_INST_0_n_1 ;
  wire \c[8]_INST_0_n_2 ;
  wire \c[8]_INST_0_n_3 ;
  wire [3:3]\NLW_c[12]_INST_0_CO_UNCONNECTED ;

  CARRY4 \c[0]_INST_0 
       (.CI(1'b0),
        .CO({\c[0]_INST_0_n_0 ,\c[0]_INST_0_n_1 ,\c[0]_INST_0_n_2 ,\c[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[3:0]),
        .O(c[3:0]),
        .S({\c[0]_INST_0_i_1_n_0 ,\c[0]_INST_0_i_2_n_0 ,\c[0]_INST_0_i_3_n_0 ,\c[0]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_INST_0_i_1 
       (.I0(a[3]),
        .I1(b[3]),
        .O(\c[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_INST_0_i_2 
       (.I0(a[2]),
        .I1(b[2]),
        .O(\c[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_INST_0_i_3 
       (.I0(a[1]),
        .I1(b[1]),
        .O(\c[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_INST_0_i_4 
       (.I0(a[0]),
        .I1(b[0]),
        .O(\c[0]_INST_0_i_4_n_0 ));
  CARRY4 \c[12]_INST_0 
       (.CI(\c[8]_INST_0_n_0 ),
        .CO({\NLW_c[12]_INST_0_CO_UNCONNECTED [3],\c[12]_INST_0_n_1 ,\c[12]_INST_0_n_2 ,\c[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,a[14:12]}),
        .O(c[15:12]),
        .S({\c[12]_INST_0_i_1_n_0 ,\c[12]_INST_0_i_2_n_0 ,\c[12]_INST_0_i_3_n_0 ,\c[12]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[12]_INST_0_i_1 
       (.I0(a[15]),
        .I1(b[15]),
        .O(\c[12]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[12]_INST_0_i_2 
       (.I0(a[14]),
        .I1(b[14]),
        .O(\c[12]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[12]_INST_0_i_3 
       (.I0(a[13]),
        .I1(b[13]),
        .O(\c[12]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[12]_INST_0_i_4 
       (.I0(a[12]),
        .I1(b[12]),
        .O(\c[12]_INST_0_i_4_n_0 ));
  CARRY4 \c[4]_INST_0 
       (.CI(\c[0]_INST_0_n_0 ),
        .CO({\c[4]_INST_0_n_0 ,\c[4]_INST_0_n_1 ,\c[4]_INST_0_n_2 ,\c[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[7:4]),
        .O(c[7:4]),
        .S({\c[4]_INST_0_i_1_n_0 ,\c[4]_INST_0_i_2_n_0 ,\c[4]_INST_0_i_3_n_0 ,\c[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[4]_INST_0_i_1 
       (.I0(a[7]),
        .I1(b[7]),
        .O(\c[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[4]_INST_0_i_2 
       (.I0(a[6]),
        .I1(b[6]),
        .O(\c[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[4]_INST_0_i_3 
       (.I0(a[5]),
        .I1(b[5]),
        .O(\c[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[4]_INST_0_i_4 
       (.I0(a[4]),
        .I1(b[4]),
        .O(\c[4]_INST_0_i_4_n_0 ));
  CARRY4 \c[8]_INST_0 
       (.CI(\c[4]_INST_0_n_0 ),
        .CO({\c[8]_INST_0_n_0 ,\c[8]_INST_0_n_1 ,\c[8]_INST_0_n_2 ,\c[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[11:8]),
        .O(c[11:8]),
        .S({\c[8]_INST_0_i_1_n_0 ,\c[8]_INST_0_i_2_n_0 ,\c[8]_INST_0_i_3_n_0 ,\c[8]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[8]_INST_0_i_1 
       (.I0(a[11]),
        .I1(b[11]),
        .O(\c[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[8]_INST_0_i_2 
       (.I0(a[10]),
        .I1(b[10]),
        .O(\c[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[8]_INST_0_i_3 
       (.I0(a[9]),
        .I1(b[9]),
        .O(\c[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[8]_INST_0_i_4 
       (.I0(a[8]),
        .I1(b[8]),
        .O(\c[8]_INST_0_i_4_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_alu_input_mux_0_0,alu_input_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "alu_input_mux,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_alu_input_mux_0_0
   (to_alu,
    from_gpr,
    from_ri_imm,
    sel);
  output [15:0]to_alu;
  input [15:0]from_gpr;
  input [15:0]from_ri_imm;
  input sel;

  wire [15:0]from_gpr;
  wire [15:0]from_ri_imm;
  wire sel;
  wire [15:0]to_alu;

  design_1_alu_input_mux_0_0_alu_input_mux U0
       (.from_gpr(from_gpr),
        .from_ri_imm(from_ri_imm),
        .sel(sel),
        .to_alu(to_alu));
endmodule

(* ORIG_REF_NAME = "alu_input_mux" *) 
module design_1_alu_input_mux_0_0_alu_input_mux
   (to_alu,
    from_ri_imm,
    from_gpr,
    sel);
  output [15:0]to_alu;
  input [15:0]from_ri_imm;
  input [15:0]from_gpr;
  input sel;

  wire [15:0]from_gpr;
  wire [15:0]from_ri_imm;
  wire sel;
  wire [15:0]to_alu;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[0]_INST_0 
       (.I0(from_ri_imm[0]),
        .I1(from_gpr[0]),
        .I2(sel),
        .O(to_alu[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[10]_INST_0 
       (.I0(from_ri_imm[10]),
        .I1(from_gpr[10]),
        .I2(sel),
        .O(to_alu[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[11]_INST_0 
       (.I0(from_ri_imm[11]),
        .I1(from_gpr[11]),
        .I2(sel),
        .O(to_alu[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[12]_INST_0 
       (.I0(from_ri_imm[12]),
        .I1(from_gpr[12]),
        .I2(sel),
        .O(to_alu[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[13]_INST_0 
       (.I0(from_ri_imm[13]),
        .I1(from_gpr[13]),
        .I2(sel),
        .O(to_alu[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[14]_INST_0 
       (.I0(from_ri_imm[14]),
        .I1(from_gpr[14]),
        .I2(sel),
        .O(to_alu[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[15]_INST_0 
       (.I0(from_ri_imm[15]),
        .I1(from_gpr[15]),
        .I2(sel),
        .O(to_alu[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[1]_INST_0 
       (.I0(from_ri_imm[1]),
        .I1(from_gpr[1]),
        .I2(sel),
        .O(to_alu[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[2]_INST_0 
       (.I0(from_ri_imm[2]),
        .I1(from_gpr[2]),
        .I2(sel),
        .O(to_alu[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[3]_INST_0 
       (.I0(from_ri_imm[3]),
        .I1(from_gpr[3]),
        .I2(sel),
        .O(to_alu[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[4]_INST_0 
       (.I0(from_ri_imm[4]),
        .I1(from_gpr[4]),
        .I2(sel),
        .O(to_alu[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[5]_INST_0 
       (.I0(from_ri_imm[5]),
        .I1(from_gpr[5]),
        .I2(sel),
        .O(to_alu[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[6]_INST_0 
       (.I0(from_ri_imm[6]),
        .I1(from_gpr[6]),
        .I2(sel),
        .O(to_alu[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[7]_INST_0 
       (.I0(from_ri_imm[7]),
        .I1(from_gpr[7]),
        .I2(sel),
        .O(to_alu[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[8]_INST_0 
       (.I0(from_ri_imm[8]),
        .I1(from_gpr[8]),
        .I2(sel),
        .O(to_alu[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[9]_INST_0 
       (.I0(from_ri_imm[9]),
        .I1(from_gpr[9]),
        .I2(sel),
        .O(to_alu[9]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_cmp_status_reg_0_0,cmp_status_reg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "cmp_status_reg,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_cmp_status_reg_0_0
   (clk,
    cmp_status_in,
    wr_en,
    eq_sig,
    ne_sig,
    gt_sig,
    lt_sig);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input [15:0]cmp_status_in;
  input wr_en;
  output eq_sig;
  output ne_sig;
  output gt_sig;
  output lt_sig;

  wire clk;
  wire [15:0]cmp_status_in;
  wire eq_sig;
  wire gt_sig;
  wire lt_sig;
  wire ne_sig;
  wire wr_en;

  design_1_cmp_status_reg_0_0_cmp_status_reg U0
       (.Q({lt_sig,gt_sig,ne_sig,eq_sig}),
        .clk(clk),
        .cmp_status_in(cmp_status_in[3:0]),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "cmp_status_reg" *) 
module design_1_cmp_status_reg_0_0_cmp_status_reg
   (Q,
    wr_en,
    cmp_status_in,
    clk);
  output [3:0]Q;
  input wr_en;
  input [3:0]cmp_status_in;
  input clk;

  wire [3:0]Q;
  wire clk;
  wire [3:0]cmp_status_in;
  wire wr_en;

  FDRE #(
    .INIT(1'b0)) 
    \cmp_status_reg[0] 
       (.C(clk),
        .CE(wr_en),
        .D(cmp_status_in[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_status_reg[1] 
       (.C(clk),
        .CE(wr_en),
        .D(cmp_status_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_status_reg[2] 
       (.C(clk),
        .CE(wr_en),
        .D(cmp_status_in[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_status_reg[3] 
       (.C(clk),
        .CE(wr_en),
        .D(cmp_status_in[3]),
        .Q(Q[3]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_data_mem_0_0,data_mem,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "data_mem,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_data_mem_0_0
   (clk,
    rd_addr,
    wr_addr,
    data_in,
    stack_addr,
    stack_wr_en,
    wr_en,
    data_out,
    stack_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input [15:0]rd_addr;
  input [15:0]wr_addr;
  input [15:0]data_in;
  input [15:0]stack_addr;
  input stack_wr_en;
  input wr_en;
  output [15:0]data_out;
  output [15:0]stack_out;

  wire clk;
  wire [15:0]data_in;
  wire [15:0]data_out;
  wire [15:0]rd_addr;
  wire [15:0]stack_addr;
  wire [15:0]stack_out;
  wire stack_wr_en;
  wire [15:0]wr_addr;
  wire wr_en;

  design_1_data_mem_0_0_data_mem U0
       (.clk(clk),
        .data_in(data_in),
        .data_out(data_out),
        .rd_addr(rd_addr),
        .stack_addr(stack_addr),
        .stack_out(stack_out),
        .stack_wr_en(stack_wr_en),
        .wr_addr(wr_addr),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "data_mem" *) 
module design_1_data_mem_0_0_data_mem
   (clk,
    rd_addr,
    wr_addr,
    data_in,
    stack_addr,
    stack_wr_en,
    wr_en,
    data_out,
    stack_out);
  input clk;
  input [15:0]rd_addr;
  input [15:0]wr_addr;
  input [15:0]data_in;
  input [15:0]stack_addr;
  input stack_wr_en;
  input wr_en;
  output [15:0]data_out;
  output [15:0]stack_out;


endmodule

(* CHECK_LICENSE_TYPE = "design_1_imm_ext_0_0,imm_ext,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "imm_ext,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_imm_ext_0_0
   (imm,
    s_ext_imm);
  input [10:0]imm;
  output [15:0]s_ext_imm;

  wire [10:0]imm;

  assign s_ext_imm[15] = imm[10];
  assign s_ext_imm[14] = imm[10];
  assign s_ext_imm[13] = imm[10];
  assign s_ext_imm[12] = imm[10];
  assign s_ext_imm[11] = imm[10];
  assign s_ext_imm[10:0] = imm;
endmodule

(* CHECK_LICENSE_TYPE = "design_1_pc_load_mux_0_0,pc_load_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pc_load_mux,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_pc_load_mux_0_0
   (gpr_in,
    pc_imm_b,
    sel,
    to_pc_ld);
  input [15:0]gpr_in;
  input [15:0]pc_imm_b;
  input sel;
  output [15:0]to_pc_ld;

  wire [15:0]gpr_in;
  wire [15:0]pc_imm_b;
  wire sel;
  wire [15:0]to_pc_ld;

  design_1_pc_load_mux_0_0_pc_load_mux U0
       (.gpr_in(gpr_in),
        .pc_imm_b(pc_imm_b),
        .sel(sel),
        .to_pc_ld(to_pc_ld));
endmodule

(* ORIG_REF_NAME = "pc_load_mux" *) 
module design_1_pc_load_mux_0_0_pc_load_mux
   (to_pc_ld,
    pc_imm_b,
    gpr_in,
    sel);
  output [15:0]to_pc_ld;
  input [15:0]pc_imm_b;
  input [15:0]gpr_in;
  input sel;

  wire [15:0]gpr_in;
  wire [15:0]pc_imm_b;
  wire sel;
  wire [15:0]to_pc_ld;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_pc_ld[0]_INST_0 
       (.I0(pc_imm_b[0]),
        .I1(gpr_in[0]),
        .I2(sel),
        .O(to_pc_ld[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_pc_ld[10]_INST_0 
       (.I0(pc_imm_b[10]),
        .I1(gpr_in[10]),
        .I2(sel),
        .O(to_pc_ld[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_pc_ld[11]_INST_0 
       (.I0(pc_imm_b[11]),
        .I1(gpr_in[11]),
        .I2(sel),
        .O(to_pc_ld[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_pc_ld[12]_INST_0 
       (.I0(pc_imm_b[12]),
        .I1(gpr_in[12]),
        .I2(sel),
        .O(to_pc_ld[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_pc_ld[13]_INST_0 
       (.I0(pc_imm_b[13]),
        .I1(gpr_in[13]),
        .I2(sel),
        .O(to_pc_ld[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_pc_ld[14]_INST_0 
       (.I0(pc_imm_b[14]),
        .I1(gpr_in[14]),
        .I2(sel),
        .O(to_pc_ld[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_pc_ld[15]_INST_0 
       (.I0(pc_imm_b[15]),
        .I1(gpr_in[15]),
        .I2(sel),
        .O(to_pc_ld[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_pc_ld[1]_INST_0 
       (.I0(pc_imm_b[1]),
        .I1(gpr_in[1]),
        .I2(sel),
        .O(to_pc_ld[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_pc_ld[2]_INST_0 
       (.I0(pc_imm_b[2]),
        .I1(gpr_in[2]),
        .I2(sel),
        .O(to_pc_ld[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_pc_ld[3]_INST_0 
       (.I0(pc_imm_b[3]),
        .I1(gpr_in[3]),
        .I2(sel),
        .O(to_pc_ld[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_pc_ld[4]_INST_0 
       (.I0(pc_imm_b[4]),
        .I1(gpr_in[4]),
        .I2(sel),
        .O(to_pc_ld[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_pc_ld[5]_INST_0 
       (.I0(pc_imm_b[5]),
        .I1(gpr_in[5]),
        .I2(sel),
        .O(to_pc_ld[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_pc_ld[6]_INST_0 
       (.I0(pc_imm_b[6]),
        .I1(gpr_in[6]),
        .I2(sel),
        .O(to_pc_ld[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_pc_ld[7]_INST_0 
       (.I0(pc_imm_b[7]),
        .I1(gpr_in[7]),
        .I2(sel),
        .O(to_pc_ld[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_pc_ld[8]_INST_0 
       (.I0(pc_imm_b[8]),
        .I1(gpr_in[8]),
        .I2(sel),
        .O(to_pc_ld[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_pc_ld[9]_INST_0 
       (.I0(pc_imm_b[9]),
        .I1(gpr_in[9]),
        .I2(sel),
        .O(to_pc_ld[9]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_prog_cnt_reg_0_0,prog_cnt_reg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "prog_cnt_reg,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_prog_cnt_reg_0_0
   (clk,
    ins_addr,
    ld_val,
    ld_en,
    en);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  output [15:0]ins_addr;
  input [15:0]ld_val;
  input ld_en;
  input en;

  wire clk;
  wire en;
  wire [15:0]ins_addr;
  wire ld_en;
  wire [15:0]ld_val;

  design_1_prog_cnt_reg_0_0_prog_cnt_reg U0
       (.clk(clk),
        .en(en),
        .ins_addr(ins_addr),
        .ld_en(ld_en),
        .ld_val(ld_val));
endmodule

(* ORIG_REF_NAME = "prog_cnt_reg" *) 
module design_1_prog_cnt_reg_0_0_prog_cnt_reg
   (ins_addr,
    ld_val,
    ld_en,
    clk,
    en);
  output [15:0]ins_addr;
  input [15:0]ld_val;
  input ld_en;
  input clk;
  input en;

  wire clk;
  wire en;
  wire [15:0]ins_addr;
  wire ld_en;
  wire [15:0]ld_val;
  wire \pc[11]_i_2_n_0 ;
  wire \pc[11]_i_3_n_0 ;
  wire \pc[11]_i_4_n_0 ;
  wire \pc[11]_i_5_n_0 ;
  wire \pc[15]_i_1_n_0 ;
  wire \pc[15]_i_3_n_0 ;
  wire \pc[15]_i_4_n_0 ;
  wire \pc[15]_i_5_n_0 ;
  wire \pc[15]_i_6_n_0 ;
  wire \pc[3]_i_2_n_0 ;
  wire \pc[3]_i_3_n_0 ;
  wire \pc[3]_i_4_n_0 ;
  wire \pc[3]_i_5_n_0 ;
  wire \pc[3]_i_6_n_0 ;
  wire \pc[7]_i_2_n_0 ;
  wire \pc[7]_i_3_n_0 ;
  wire \pc[7]_i_4_n_0 ;
  wire \pc[7]_i_5_n_0 ;
  wire \pc_reg[11]_i_1_n_0 ;
  wire \pc_reg[11]_i_1_n_1 ;
  wire \pc_reg[11]_i_1_n_2 ;
  wire \pc_reg[11]_i_1_n_3 ;
  wire \pc_reg[11]_i_1_n_4 ;
  wire \pc_reg[11]_i_1_n_5 ;
  wire \pc_reg[11]_i_1_n_6 ;
  wire \pc_reg[11]_i_1_n_7 ;
  wire \pc_reg[15]_i_2_n_1 ;
  wire \pc_reg[15]_i_2_n_2 ;
  wire \pc_reg[15]_i_2_n_3 ;
  wire \pc_reg[15]_i_2_n_4 ;
  wire \pc_reg[15]_i_2_n_5 ;
  wire \pc_reg[15]_i_2_n_6 ;
  wire \pc_reg[15]_i_2_n_7 ;
  wire \pc_reg[3]_i_1_n_0 ;
  wire \pc_reg[3]_i_1_n_1 ;
  wire \pc_reg[3]_i_1_n_2 ;
  wire \pc_reg[3]_i_1_n_3 ;
  wire \pc_reg[3]_i_1_n_4 ;
  wire \pc_reg[3]_i_1_n_5 ;
  wire \pc_reg[3]_i_1_n_6 ;
  wire \pc_reg[3]_i_1_n_7 ;
  wire \pc_reg[7]_i_1_n_0 ;
  wire \pc_reg[7]_i_1_n_1 ;
  wire \pc_reg[7]_i_1_n_2 ;
  wire \pc_reg[7]_i_1_n_3 ;
  wire \pc_reg[7]_i_1_n_4 ;
  wire \pc_reg[7]_i_1_n_5 ;
  wire \pc_reg[7]_i_1_n_6 ;
  wire \pc_reg[7]_i_1_n_7 ;
  wire [3:3]\NLW_pc_reg[15]_i_2_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hB8)) 
    \pc[11]_i_2 
       (.I0(ld_val[11]),
        .I1(ld_en),
        .I2(ins_addr[11]),
        .O(\pc[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[11]_i_3 
       (.I0(ld_val[10]),
        .I1(ld_en),
        .I2(ins_addr[10]),
        .O(\pc[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[11]_i_4 
       (.I0(ld_val[9]),
        .I1(ld_en),
        .I2(ins_addr[9]),
        .O(\pc[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[11]_i_5 
       (.I0(ld_val[8]),
        .I1(ld_en),
        .I2(ins_addr[8]),
        .O(\pc[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pc[15]_i_1 
       (.I0(ld_en),
        .I1(en),
        .O(\pc[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[15]_i_3 
       (.I0(ld_val[15]),
        .I1(ld_en),
        .I2(ins_addr[15]),
        .O(\pc[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[15]_i_4 
       (.I0(ld_val[14]),
        .I1(ld_en),
        .I2(ins_addr[14]),
        .O(\pc[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[15]_i_5 
       (.I0(ld_val[13]),
        .I1(ld_en),
        .I2(ins_addr[13]),
        .O(\pc[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[15]_i_6 
       (.I0(ld_val[12]),
        .I1(ld_en),
        .I2(ins_addr[12]),
        .O(\pc[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[3]_i_2 
       (.I0(ld_val[0]),
        .I1(ld_en),
        .I2(ins_addr[0]),
        .O(\pc[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[3]_i_3 
       (.I0(ld_val[3]),
        .I1(ld_en),
        .I2(ins_addr[3]),
        .O(\pc[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[3]_i_4 
       (.I0(ld_val[2]),
        .I1(ld_en),
        .I2(ins_addr[2]),
        .O(\pc[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[3]_i_5 
       (.I0(ld_val[1]),
        .I1(ld_en),
        .I2(ins_addr[1]),
        .O(\pc[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \pc[3]_i_6 
       (.I0(ins_addr[0]),
        .I1(ld_val[0]),
        .I2(ld_en),
        .O(\pc[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[7]_i_2 
       (.I0(ld_val[7]),
        .I1(ld_en),
        .I2(ins_addr[7]),
        .O(\pc[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[7]_i_3 
       (.I0(ld_val[6]),
        .I1(ld_en),
        .I2(ins_addr[6]),
        .O(\pc[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[7]_i_4 
       (.I0(ld_val[5]),
        .I1(ld_en),
        .I2(ins_addr[5]),
        .O(\pc[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[7]_i_5 
       (.I0(ld_val[4]),
        .I1(ld_en),
        .I2(ins_addr[4]),
        .O(\pc[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[0] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(\pc_reg[3]_i_1_n_7 ),
        .Q(ins_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[10] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(\pc_reg[11]_i_1_n_5 ),
        .Q(ins_addr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[11] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(\pc_reg[11]_i_1_n_4 ),
        .Q(ins_addr[11]),
        .R(1'b0));
  CARRY4 \pc_reg[11]_i_1 
       (.CI(\pc_reg[7]_i_1_n_0 ),
        .CO({\pc_reg[11]_i_1_n_0 ,\pc_reg[11]_i_1_n_1 ,\pc_reg[11]_i_1_n_2 ,\pc_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[11]_i_1_n_4 ,\pc_reg[11]_i_1_n_5 ,\pc_reg[11]_i_1_n_6 ,\pc_reg[11]_i_1_n_7 }),
        .S({\pc[11]_i_2_n_0 ,\pc[11]_i_3_n_0 ,\pc[11]_i_4_n_0 ,\pc[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[12] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(\pc_reg[15]_i_2_n_7 ),
        .Q(ins_addr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[13] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(\pc_reg[15]_i_2_n_6 ),
        .Q(ins_addr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[14] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(\pc_reg[15]_i_2_n_5 ),
        .Q(ins_addr[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[15] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(\pc_reg[15]_i_2_n_4 ),
        .Q(ins_addr[15]),
        .R(1'b0));
  CARRY4 \pc_reg[15]_i_2 
       (.CI(\pc_reg[11]_i_1_n_0 ),
        .CO({\NLW_pc_reg[15]_i_2_CO_UNCONNECTED [3],\pc_reg[15]_i_2_n_1 ,\pc_reg[15]_i_2_n_2 ,\pc_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[15]_i_2_n_4 ,\pc_reg[15]_i_2_n_5 ,\pc_reg[15]_i_2_n_6 ,\pc_reg[15]_i_2_n_7 }),
        .S({\pc[15]_i_3_n_0 ,\pc[15]_i_4_n_0 ,\pc[15]_i_5_n_0 ,\pc[15]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[1] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(\pc_reg[3]_i_1_n_6 ),
        .Q(ins_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(\pc_reg[3]_i_1_n_5 ),
        .Q(ins_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(\pc_reg[3]_i_1_n_4 ),
        .Q(ins_addr[3]),
        .R(1'b0));
  CARRY4 \pc_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\pc_reg[3]_i_1_n_0 ,\pc_reg[3]_i_1_n_1 ,\pc_reg[3]_i_1_n_2 ,\pc_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pc[3]_i_2_n_0 }),
        .O({\pc_reg[3]_i_1_n_4 ,\pc_reg[3]_i_1_n_5 ,\pc_reg[3]_i_1_n_6 ,\pc_reg[3]_i_1_n_7 }),
        .S({\pc[3]_i_3_n_0 ,\pc[3]_i_4_n_0 ,\pc[3]_i_5_n_0 ,\pc[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[4] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(\pc_reg[7]_i_1_n_7 ),
        .Q(ins_addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[5] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(\pc_reg[7]_i_1_n_6 ),
        .Q(ins_addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[6] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(\pc_reg[7]_i_1_n_5 ),
        .Q(ins_addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[7] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(\pc_reg[7]_i_1_n_4 ),
        .Q(ins_addr[7]),
        .R(1'b0));
  CARRY4 \pc_reg[7]_i_1 
       (.CI(\pc_reg[3]_i_1_n_0 ),
        .CO({\pc_reg[7]_i_1_n_0 ,\pc_reg[7]_i_1_n_1 ,\pc_reg[7]_i_1_n_2 ,\pc_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[7]_i_1_n_4 ,\pc_reg[7]_i_1_n_5 ,\pc_reg[7]_i_1_n_6 ,\pc_reg[7]_i_1_n_7 }),
        .S({\pc[7]_i_2_n_0 ,\pc[7]_i_3_n_0 ,\pc[7]_i_4_n_0 ,\pc[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[8] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(\pc_reg[11]_i_1_n_7 ),
        .Q(ins_addr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[9] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(\pc_reg[11]_i_1_n_6 ),
        .Q(ins_addr[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_prog_mem_0_0,prog_mem,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "prog_mem,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_prog_mem_0_0
   (clk,
    ins_addr,
    cur_ins);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input [15:0]ins_addr;
  output [15:0]cur_ins;

  wire \<const0> ;
  wire [15:15]\^cur_ins ;
  wire [15:0]ins_addr;

  assign cur_ins[15] = \^cur_ins [15];
  assign cur_ins[14] = \^cur_ins [15];
  assign cur_ins[13] = \<const0> ;
  assign cur_ins[12] = \^cur_ins [15];
  assign cur_ins[11] = \<const0> ;
  assign cur_ins[10] = \<const0> ;
  assign cur_ins[9] = \<const0> ;
  assign cur_ins[8] = \<const0> ;
  assign cur_ins[7] = \<const0> ;
  assign cur_ins[6] = \^cur_ins [15];
  assign cur_ins[5] = \<const0> ;
  assign cur_ins[4] = \<const0> ;
  assign cur_ins[3] = \^cur_ins [15];
  assign cur_ins[2] = \^cur_ins [15];
  assign cur_ins[1] = \^cur_ins [15];
  assign cur_ins[0] = \^cur_ins [15];
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'h01)) 
    \cur_ins[0]_INST_0 
       (.I0(ins_addr[2]),
        .I1(ins_addr[0]),
        .I2(ins_addr[1]),
        .O(\^cur_ins ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_reg_file_0_0,reg_file,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "reg_file,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_reg_file_0_0
   (clk,
    read_addrA,
    read_addrB,
    write_addrC,
    regA,
    regB,
    regC,
    wr_en);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input [2:0]read_addrA;
  input [2:0]read_addrB;
  input [2:0]write_addrC;
  output [15:0]regA;
  output [15:0]regB;
  input [15:0]regC;
  input wr_en;

  wire clk;
  wire [2:0]read_addrA;
  wire [2:0]read_addrB;
  wire [15:0]regA;
  wire [15:0]regB;
  wire [15:0]regC;
  wire wr_en;
  wire [2:0]write_addrC;

  design_1_reg_file_0_0_reg_file U0
       (.clk(clk),
        .read_addrA(read_addrA),
        .read_addrB(read_addrB),
        .regA(regA),
        .regB(regB),
        .regC(regC),
        .wr_en(wr_en),
        .write_addrC(write_addrC));
endmodule

(* ORIG_REF_NAME = "reg_file" *) 
module design_1_reg_file_0_0_reg_file
   (regA,
    regB,
    write_addrC,
    wr_en,
    regC,
    clk,
    read_addrA,
    read_addrB);
  output [15:0]regA;
  output [15:0]regB;
  input [2:0]write_addrC;
  input wr_en;
  input [15:0]regC;
  input clk;
  input [2:0]read_addrA;
  input [2:0]read_addrB;

  wire clk;
  wire \mem[0][15]_i_1_n_0 ;
  wire \mem[0]_7 ;
  wire \mem[1]_0 ;
  wire \mem[2]_1 ;
  wire \mem[3]_2 ;
  wire \mem[4]_3 ;
  wire \mem[5]_4 ;
  wire \mem[6]_5 ;
  wire \mem[7]_6 ;
  wire [15:0]\mem_reg[0] ;
  wire [15:0]\mem_reg[1] ;
  wire [15:0]\mem_reg[2] ;
  wire [15:0]\mem_reg[3] ;
  wire [15:0]\mem_reg[4] ;
  wire [15:0]\mem_reg[5] ;
  wire [15:0]\mem_reg[6] ;
  wire [15:0]\mem_reg[7] ;
  wire [2:0]read_addrA;
  wire [2:0]read_addrB;
  wire [15:0]regA;
  wire \regA[0]_INST_0_i_1_n_0 ;
  wire \regA[0]_INST_0_i_2_n_0 ;
  wire \regA[10]_INST_0_i_1_n_0 ;
  wire \regA[10]_INST_0_i_2_n_0 ;
  wire \regA[11]_INST_0_i_1_n_0 ;
  wire \regA[11]_INST_0_i_2_n_0 ;
  wire \regA[12]_INST_0_i_1_n_0 ;
  wire \regA[12]_INST_0_i_2_n_0 ;
  wire \regA[13]_INST_0_i_1_n_0 ;
  wire \regA[13]_INST_0_i_2_n_0 ;
  wire \regA[14]_INST_0_i_1_n_0 ;
  wire \regA[14]_INST_0_i_2_n_0 ;
  wire \regA[15]_INST_0_i_1_n_0 ;
  wire \regA[15]_INST_0_i_2_n_0 ;
  wire \regA[1]_INST_0_i_1_n_0 ;
  wire \regA[1]_INST_0_i_2_n_0 ;
  wire \regA[2]_INST_0_i_1_n_0 ;
  wire \regA[2]_INST_0_i_2_n_0 ;
  wire \regA[3]_INST_0_i_1_n_0 ;
  wire \regA[3]_INST_0_i_2_n_0 ;
  wire \regA[4]_INST_0_i_1_n_0 ;
  wire \regA[4]_INST_0_i_2_n_0 ;
  wire \regA[5]_INST_0_i_1_n_0 ;
  wire \regA[5]_INST_0_i_2_n_0 ;
  wire \regA[6]_INST_0_i_1_n_0 ;
  wire \regA[6]_INST_0_i_2_n_0 ;
  wire \regA[7]_INST_0_i_1_n_0 ;
  wire \regA[7]_INST_0_i_2_n_0 ;
  wire \regA[8]_INST_0_i_1_n_0 ;
  wire \regA[8]_INST_0_i_2_n_0 ;
  wire \regA[9]_INST_0_i_1_n_0 ;
  wire \regA[9]_INST_0_i_2_n_0 ;
  wire [15:0]regB;
  wire \regB[0]_INST_0_i_1_n_0 ;
  wire \regB[0]_INST_0_i_2_n_0 ;
  wire \regB[10]_INST_0_i_1_n_0 ;
  wire \regB[10]_INST_0_i_2_n_0 ;
  wire \regB[11]_INST_0_i_1_n_0 ;
  wire \regB[11]_INST_0_i_2_n_0 ;
  wire \regB[12]_INST_0_i_1_n_0 ;
  wire \regB[12]_INST_0_i_2_n_0 ;
  wire \regB[13]_INST_0_i_1_n_0 ;
  wire \regB[13]_INST_0_i_2_n_0 ;
  wire \regB[14]_INST_0_i_1_n_0 ;
  wire \regB[14]_INST_0_i_2_n_0 ;
  wire \regB[15]_INST_0_i_1_n_0 ;
  wire \regB[15]_INST_0_i_2_n_0 ;
  wire \regB[1]_INST_0_i_1_n_0 ;
  wire \regB[1]_INST_0_i_2_n_0 ;
  wire \regB[2]_INST_0_i_1_n_0 ;
  wire \regB[2]_INST_0_i_2_n_0 ;
  wire \regB[3]_INST_0_i_1_n_0 ;
  wire \regB[3]_INST_0_i_2_n_0 ;
  wire \regB[4]_INST_0_i_1_n_0 ;
  wire \regB[4]_INST_0_i_2_n_0 ;
  wire \regB[5]_INST_0_i_1_n_0 ;
  wire \regB[5]_INST_0_i_2_n_0 ;
  wire \regB[6]_INST_0_i_1_n_0 ;
  wire \regB[6]_INST_0_i_2_n_0 ;
  wire \regB[7]_INST_0_i_1_n_0 ;
  wire \regB[7]_INST_0_i_2_n_0 ;
  wire \regB[8]_INST_0_i_1_n_0 ;
  wire \regB[8]_INST_0_i_2_n_0 ;
  wire \regB[9]_INST_0_i_1_n_0 ;
  wire \regB[9]_INST_0_i_2_n_0 ;
  wire [15:0]regC;
  wire wr_en;
  wire [2:0]write_addrC;

  LUT4 #(
    .INIT(16'h01FF)) 
    \mem[0][15]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .O(\mem[0][15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \mem[0][15]_i_2 
       (.I0(write_addrC[2]),
        .I1(write_addrC[0]),
        .I2(write_addrC[1]),
        .O(\mem[0]_7 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \mem[1][15]_i_1 
       (.I0(wr_en),
        .I1(write_addrC[1]),
        .I2(write_addrC[2]),
        .I3(write_addrC[0]),
        .O(\mem[1]_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \mem[2][15]_i_1 
       (.I0(wr_en),
        .I1(write_addrC[2]),
        .I2(write_addrC[0]),
        .I3(write_addrC[1]),
        .O(\mem[2]_1 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \mem[3][15]_i_1 
       (.I0(wr_en),
        .I1(write_addrC[1]),
        .I2(write_addrC[0]),
        .I3(write_addrC[2]),
        .O(\mem[3]_2 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \mem[4][15]_i_1 
       (.I0(wr_en),
        .I1(write_addrC[1]),
        .I2(write_addrC[0]),
        .I3(write_addrC[2]),
        .O(\mem[4]_3 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \mem[5][15]_i_1 
       (.I0(wr_en),
        .I1(write_addrC[2]),
        .I2(write_addrC[0]),
        .I3(write_addrC[1]),
        .O(\mem[5]_4 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \mem[6][15]_i_1 
       (.I0(wr_en),
        .I1(write_addrC[1]),
        .I2(write_addrC[2]),
        .I3(write_addrC[0]),
        .O(\mem[6]_5 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \mem[7][15]_i_1 
       (.I0(wr_en),
        .I1(write_addrC[2]),
        .I2(write_addrC[0]),
        .I3(write_addrC[1]),
        .O(\mem[7]_6 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][0] 
       (.C(clk),
        .CE(\mem[0]_7 ),
        .D(regC[0]),
        .Q(\mem_reg[0] [0]),
        .R(\mem[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][10] 
       (.C(clk),
        .CE(\mem[0]_7 ),
        .D(regC[10]),
        .Q(\mem_reg[0] [10]),
        .R(\mem[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][11] 
       (.C(clk),
        .CE(\mem[0]_7 ),
        .D(regC[11]),
        .Q(\mem_reg[0] [11]),
        .R(\mem[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][12] 
       (.C(clk),
        .CE(\mem[0]_7 ),
        .D(regC[12]),
        .Q(\mem_reg[0] [12]),
        .R(\mem[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][13] 
       (.C(clk),
        .CE(\mem[0]_7 ),
        .D(regC[13]),
        .Q(\mem_reg[0] [13]),
        .R(\mem[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][14] 
       (.C(clk),
        .CE(\mem[0]_7 ),
        .D(regC[14]),
        .Q(\mem_reg[0] [14]),
        .R(\mem[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][15] 
       (.C(clk),
        .CE(\mem[0]_7 ),
        .D(regC[15]),
        .Q(\mem_reg[0] [15]),
        .R(\mem[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][1] 
       (.C(clk),
        .CE(\mem[0]_7 ),
        .D(regC[1]),
        .Q(\mem_reg[0] [1]),
        .R(\mem[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][2] 
       (.C(clk),
        .CE(\mem[0]_7 ),
        .D(regC[2]),
        .Q(\mem_reg[0] [2]),
        .R(\mem[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][3] 
       (.C(clk),
        .CE(\mem[0]_7 ),
        .D(regC[3]),
        .Q(\mem_reg[0] [3]),
        .R(\mem[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][4] 
       (.C(clk),
        .CE(\mem[0]_7 ),
        .D(regC[4]),
        .Q(\mem_reg[0] [4]),
        .R(\mem[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][5] 
       (.C(clk),
        .CE(\mem[0]_7 ),
        .D(regC[5]),
        .Q(\mem_reg[0] [5]),
        .R(\mem[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][6] 
       (.C(clk),
        .CE(\mem[0]_7 ),
        .D(regC[6]),
        .Q(\mem_reg[0] [6]),
        .R(\mem[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][7] 
       (.C(clk),
        .CE(\mem[0]_7 ),
        .D(regC[7]),
        .Q(\mem_reg[0] [7]),
        .R(\mem[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][8] 
       (.C(clk),
        .CE(\mem[0]_7 ),
        .D(regC[8]),
        .Q(\mem_reg[0] [8]),
        .R(\mem[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][9] 
       (.C(clk),
        .CE(\mem[0]_7 ),
        .D(regC[9]),
        .Q(\mem_reg[0] [9]),
        .R(\mem[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][0] 
       (.C(clk),
        .CE(\mem[1]_0 ),
        .D(regC[0]),
        .Q(\mem_reg[1] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][10] 
       (.C(clk),
        .CE(\mem[1]_0 ),
        .D(regC[10]),
        .Q(\mem_reg[1] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][11] 
       (.C(clk),
        .CE(\mem[1]_0 ),
        .D(regC[11]),
        .Q(\mem_reg[1] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][12] 
       (.C(clk),
        .CE(\mem[1]_0 ),
        .D(regC[12]),
        .Q(\mem_reg[1] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][13] 
       (.C(clk),
        .CE(\mem[1]_0 ),
        .D(regC[13]),
        .Q(\mem_reg[1] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][14] 
       (.C(clk),
        .CE(\mem[1]_0 ),
        .D(regC[14]),
        .Q(\mem_reg[1] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][15] 
       (.C(clk),
        .CE(\mem[1]_0 ),
        .D(regC[15]),
        .Q(\mem_reg[1] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][1] 
       (.C(clk),
        .CE(\mem[1]_0 ),
        .D(regC[1]),
        .Q(\mem_reg[1] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][2] 
       (.C(clk),
        .CE(\mem[1]_0 ),
        .D(regC[2]),
        .Q(\mem_reg[1] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][3] 
       (.C(clk),
        .CE(\mem[1]_0 ),
        .D(regC[3]),
        .Q(\mem_reg[1] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][4] 
       (.C(clk),
        .CE(\mem[1]_0 ),
        .D(regC[4]),
        .Q(\mem_reg[1] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][5] 
       (.C(clk),
        .CE(\mem[1]_0 ),
        .D(regC[5]),
        .Q(\mem_reg[1] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][6] 
       (.C(clk),
        .CE(\mem[1]_0 ),
        .D(regC[6]),
        .Q(\mem_reg[1] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][7] 
       (.C(clk),
        .CE(\mem[1]_0 ),
        .D(regC[7]),
        .Q(\mem_reg[1] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][8] 
       (.C(clk),
        .CE(\mem[1]_0 ),
        .D(regC[8]),
        .Q(\mem_reg[1] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][9] 
       (.C(clk),
        .CE(\mem[1]_0 ),
        .D(regC[9]),
        .Q(\mem_reg[1] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][0] 
       (.C(clk),
        .CE(\mem[2]_1 ),
        .D(regC[0]),
        .Q(\mem_reg[2] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][10] 
       (.C(clk),
        .CE(\mem[2]_1 ),
        .D(regC[10]),
        .Q(\mem_reg[2] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][11] 
       (.C(clk),
        .CE(\mem[2]_1 ),
        .D(regC[11]),
        .Q(\mem_reg[2] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][12] 
       (.C(clk),
        .CE(\mem[2]_1 ),
        .D(regC[12]),
        .Q(\mem_reg[2] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][13] 
       (.C(clk),
        .CE(\mem[2]_1 ),
        .D(regC[13]),
        .Q(\mem_reg[2] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][14] 
       (.C(clk),
        .CE(\mem[2]_1 ),
        .D(regC[14]),
        .Q(\mem_reg[2] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][15] 
       (.C(clk),
        .CE(\mem[2]_1 ),
        .D(regC[15]),
        .Q(\mem_reg[2] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][1] 
       (.C(clk),
        .CE(\mem[2]_1 ),
        .D(regC[1]),
        .Q(\mem_reg[2] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][2] 
       (.C(clk),
        .CE(\mem[2]_1 ),
        .D(regC[2]),
        .Q(\mem_reg[2] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][3] 
       (.C(clk),
        .CE(\mem[2]_1 ),
        .D(regC[3]),
        .Q(\mem_reg[2] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][4] 
       (.C(clk),
        .CE(\mem[2]_1 ),
        .D(regC[4]),
        .Q(\mem_reg[2] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][5] 
       (.C(clk),
        .CE(\mem[2]_1 ),
        .D(regC[5]),
        .Q(\mem_reg[2] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][6] 
       (.C(clk),
        .CE(\mem[2]_1 ),
        .D(regC[6]),
        .Q(\mem_reg[2] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][7] 
       (.C(clk),
        .CE(\mem[2]_1 ),
        .D(regC[7]),
        .Q(\mem_reg[2] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][8] 
       (.C(clk),
        .CE(\mem[2]_1 ),
        .D(regC[8]),
        .Q(\mem_reg[2] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][9] 
       (.C(clk),
        .CE(\mem[2]_1 ),
        .D(regC[9]),
        .Q(\mem_reg[2] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][0] 
       (.C(clk),
        .CE(\mem[3]_2 ),
        .D(regC[0]),
        .Q(\mem_reg[3] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][10] 
       (.C(clk),
        .CE(\mem[3]_2 ),
        .D(regC[10]),
        .Q(\mem_reg[3] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][11] 
       (.C(clk),
        .CE(\mem[3]_2 ),
        .D(regC[11]),
        .Q(\mem_reg[3] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][12] 
       (.C(clk),
        .CE(\mem[3]_2 ),
        .D(regC[12]),
        .Q(\mem_reg[3] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][13] 
       (.C(clk),
        .CE(\mem[3]_2 ),
        .D(regC[13]),
        .Q(\mem_reg[3] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][14] 
       (.C(clk),
        .CE(\mem[3]_2 ),
        .D(regC[14]),
        .Q(\mem_reg[3] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][15] 
       (.C(clk),
        .CE(\mem[3]_2 ),
        .D(regC[15]),
        .Q(\mem_reg[3] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][1] 
       (.C(clk),
        .CE(\mem[3]_2 ),
        .D(regC[1]),
        .Q(\mem_reg[3] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][2] 
       (.C(clk),
        .CE(\mem[3]_2 ),
        .D(regC[2]),
        .Q(\mem_reg[3] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][3] 
       (.C(clk),
        .CE(\mem[3]_2 ),
        .D(regC[3]),
        .Q(\mem_reg[3] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][4] 
       (.C(clk),
        .CE(\mem[3]_2 ),
        .D(regC[4]),
        .Q(\mem_reg[3] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][5] 
       (.C(clk),
        .CE(\mem[3]_2 ),
        .D(regC[5]),
        .Q(\mem_reg[3] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][6] 
       (.C(clk),
        .CE(\mem[3]_2 ),
        .D(regC[6]),
        .Q(\mem_reg[3] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][7] 
       (.C(clk),
        .CE(\mem[3]_2 ),
        .D(regC[7]),
        .Q(\mem_reg[3] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][8] 
       (.C(clk),
        .CE(\mem[3]_2 ),
        .D(regC[8]),
        .Q(\mem_reg[3] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][9] 
       (.C(clk),
        .CE(\mem[3]_2 ),
        .D(regC[9]),
        .Q(\mem_reg[3] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][0] 
       (.C(clk),
        .CE(\mem[4]_3 ),
        .D(regC[0]),
        .Q(\mem_reg[4] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][10] 
       (.C(clk),
        .CE(\mem[4]_3 ),
        .D(regC[10]),
        .Q(\mem_reg[4] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][11] 
       (.C(clk),
        .CE(\mem[4]_3 ),
        .D(regC[11]),
        .Q(\mem_reg[4] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][12] 
       (.C(clk),
        .CE(\mem[4]_3 ),
        .D(regC[12]),
        .Q(\mem_reg[4] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][13] 
       (.C(clk),
        .CE(\mem[4]_3 ),
        .D(regC[13]),
        .Q(\mem_reg[4] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][14] 
       (.C(clk),
        .CE(\mem[4]_3 ),
        .D(regC[14]),
        .Q(\mem_reg[4] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][15] 
       (.C(clk),
        .CE(\mem[4]_3 ),
        .D(regC[15]),
        .Q(\mem_reg[4] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][1] 
       (.C(clk),
        .CE(\mem[4]_3 ),
        .D(regC[1]),
        .Q(\mem_reg[4] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][2] 
       (.C(clk),
        .CE(\mem[4]_3 ),
        .D(regC[2]),
        .Q(\mem_reg[4] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][3] 
       (.C(clk),
        .CE(\mem[4]_3 ),
        .D(regC[3]),
        .Q(\mem_reg[4] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][4] 
       (.C(clk),
        .CE(\mem[4]_3 ),
        .D(regC[4]),
        .Q(\mem_reg[4] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][5] 
       (.C(clk),
        .CE(\mem[4]_3 ),
        .D(regC[5]),
        .Q(\mem_reg[4] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][6] 
       (.C(clk),
        .CE(\mem[4]_3 ),
        .D(regC[6]),
        .Q(\mem_reg[4] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][7] 
       (.C(clk),
        .CE(\mem[4]_3 ),
        .D(regC[7]),
        .Q(\mem_reg[4] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][8] 
       (.C(clk),
        .CE(\mem[4]_3 ),
        .D(regC[8]),
        .Q(\mem_reg[4] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][9] 
       (.C(clk),
        .CE(\mem[4]_3 ),
        .D(regC[9]),
        .Q(\mem_reg[4] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][0] 
       (.C(clk),
        .CE(\mem[5]_4 ),
        .D(regC[0]),
        .Q(\mem_reg[5] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][10] 
       (.C(clk),
        .CE(\mem[5]_4 ),
        .D(regC[10]),
        .Q(\mem_reg[5] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][11] 
       (.C(clk),
        .CE(\mem[5]_4 ),
        .D(regC[11]),
        .Q(\mem_reg[5] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][12] 
       (.C(clk),
        .CE(\mem[5]_4 ),
        .D(regC[12]),
        .Q(\mem_reg[5] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][13] 
       (.C(clk),
        .CE(\mem[5]_4 ),
        .D(regC[13]),
        .Q(\mem_reg[5] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][14] 
       (.C(clk),
        .CE(\mem[5]_4 ),
        .D(regC[14]),
        .Q(\mem_reg[5] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][15] 
       (.C(clk),
        .CE(\mem[5]_4 ),
        .D(regC[15]),
        .Q(\mem_reg[5] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][1] 
       (.C(clk),
        .CE(\mem[5]_4 ),
        .D(regC[1]),
        .Q(\mem_reg[5] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][2] 
       (.C(clk),
        .CE(\mem[5]_4 ),
        .D(regC[2]),
        .Q(\mem_reg[5] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][3] 
       (.C(clk),
        .CE(\mem[5]_4 ),
        .D(regC[3]),
        .Q(\mem_reg[5] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][4] 
       (.C(clk),
        .CE(\mem[5]_4 ),
        .D(regC[4]),
        .Q(\mem_reg[5] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][5] 
       (.C(clk),
        .CE(\mem[5]_4 ),
        .D(regC[5]),
        .Q(\mem_reg[5] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][6] 
       (.C(clk),
        .CE(\mem[5]_4 ),
        .D(regC[6]),
        .Q(\mem_reg[5] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][7] 
       (.C(clk),
        .CE(\mem[5]_4 ),
        .D(regC[7]),
        .Q(\mem_reg[5] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][8] 
       (.C(clk),
        .CE(\mem[5]_4 ),
        .D(regC[8]),
        .Q(\mem_reg[5] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][9] 
       (.C(clk),
        .CE(\mem[5]_4 ),
        .D(regC[9]),
        .Q(\mem_reg[5] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][0] 
       (.C(clk),
        .CE(\mem[6]_5 ),
        .D(regC[0]),
        .Q(\mem_reg[6] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][10] 
       (.C(clk),
        .CE(\mem[6]_5 ),
        .D(regC[10]),
        .Q(\mem_reg[6] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][11] 
       (.C(clk),
        .CE(\mem[6]_5 ),
        .D(regC[11]),
        .Q(\mem_reg[6] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][12] 
       (.C(clk),
        .CE(\mem[6]_5 ),
        .D(regC[12]),
        .Q(\mem_reg[6] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][13] 
       (.C(clk),
        .CE(\mem[6]_5 ),
        .D(regC[13]),
        .Q(\mem_reg[6] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][14] 
       (.C(clk),
        .CE(\mem[6]_5 ),
        .D(regC[14]),
        .Q(\mem_reg[6] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][15] 
       (.C(clk),
        .CE(\mem[6]_5 ),
        .D(regC[15]),
        .Q(\mem_reg[6] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][1] 
       (.C(clk),
        .CE(\mem[6]_5 ),
        .D(regC[1]),
        .Q(\mem_reg[6] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][2] 
       (.C(clk),
        .CE(\mem[6]_5 ),
        .D(regC[2]),
        .Q(\mem_reg[6] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][3] 
       (.C(clk),
        .CE(\mem[6]_5 ),
        .D(regC[3]),
        .Q(\mem_reg[6] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][4] 
       (.C(clk),
        .CE(\mem[6]_5 ),
        .D(regC[4]),
        .Q(\mem_reg[6] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][5] 
       (.C(clk),
        .CE(\mem[6]_5 ),
        .D(regC[5]),
        .Q(\mem_reg[6] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][6] 
       (.C(clk),
        .CE(\mem[6]_5 ),
        .D(regC[6]),
        .Q(\mem_reg[6] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][7] 
       (.C(clk),
        .CE(\mem[6]_5 ),
        .D(regC[7]),
        .Q(\mem_reg[6] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][8] 
       (.C(clk),
        .CE(\mem[6]_5 ),
        .D(regC[8]),
        .Q(\mem_reg[6] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][9] 
       (.C(clk),
        .CE(\mem[6]_5 ),
        .D(regC[9]),
        .Q(\mem_reg[6] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][0] 
       (.C(clk),
        .CE(\mem[7]_6 ),
        .D(regC[0]),
        .Q(\mem_reg[7] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][10] 
       (.C(clk),
        .CE(\mem[7]_6 ),
        .D(regC[10]),
        .Q(\mem_reg[7] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][11] 
       (.C(clk),
        .CE(\mem[7]_6 ),
        .D(regC[11]),
        .Q(\mem_reg[7] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][12] 
       (.C(clk),
        .CE(\mem[7]_6 ),
        .D(regC[12]),
        .Q(\mem_reg[7] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][13] 
       (.C(clk),
        .CE(\mem[7]_6 ),
        .D(regC[13]),
        .Q(\mem_reg[7] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][14] 
       (.C(clk),
        .CE(\mem[7]_6 ),
        .D(regC[14]),
        .Q(\mem_reg[7] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][15] 
       (.C(clk),
        .CE(\mem[7]_6 ),
        .D(regC[15]),
        .Q(\mem_reg[7] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][1] 
       (.C(clk),
        .CE(\mem[7]_6 ),
        .D(regC[1]),
        .Q(\mem_reg[7] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][2] 
       (.C(clk),
        .CE(\mem[7]_6 ),
        .D(regC[2]),
        .Q(\mem_reg[7] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][3] 
       (.C(clk),
        .CE(\mem[7]_6 ),
        .D(regC[3]),
        .Q(\mem_reg[7] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][4] 
       (.C(clk),
        .CE(\mem[7]_6 ),
        .D(regC[4]),
        .Q(\mem_reg[7] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][5] 
       (.C(clk),
        .CE(\mem[7]_6 ),
        .D(regC[5]),
        .Q(\mem_reg[7] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][6] 
       (.C(clk),
        .CE(\mem[7]_6 ),
        .D(regC[6]),
        .Q(\mem_reg[7] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][7] 
       (.C(clk),
        .CE(\mem[7]_6 ),
        .D(regC[7]),
        .Q(\mem_reg[7] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][8] 
       (.C(clk),
        .CE(\mem[7]_6 ),
        .D(regC[8]),
        .Q(\mem_reg[7] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][9] 
       (.C(clk),
        .CE(\mem[7]_6 ),
        .D(regC[9]),
        .Q(\mem_reg[7] [9]),
        .R(1'b0));
  MUXF7 \regA[0]_INST_0 
       (.I0(\regA[0]_INST_0_i_1_n_0 ),
        .I1(\regA[0]_INST_0_i_2_n_0 ),
        .O(regA[0]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[0]_INST_0_i_1 
       (.I0(\mem_reg[3] [0]),
        .I1(\mem_reg[2] [0]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [0]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [0]),
        .O(\regA[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[0]_INST_0_i_2 
       (.I0(\mem_reg[7] [0]),
        .I1(\mem_reg[6] [0]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [0]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [0]),
        .O(\regA[0]_INST_0_i_2_n_0 ));
  MUXF7 \regA[10]_INST_0 
       (.I0(\regA[10]_INST_0_i_1_n_0 ),
        .I1(\regA[10]_INST_0_i_2_n_0 ),
        .O(regA[10]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[10]_INST_0_i_1 
       (.I0(\mem_reg[3] [10]),
        .I1(\mem_reg[2] [10]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [10]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [10]),
        .O(\regA[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[10]_INST_0_i_2 
       (.I0(\mem_reg[7] [10]),
        .I1(\mem_reg[6] [10]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [10]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [10]),
        .O(\regA[10]_INST_0_i_2_n_0 ));
  MUXF7 \regA[11]_INST_0 
       (.I0(\regA[11]_INST_0_i_1_n_0 ),
        .I1(\regA[11]_INST_0_i_2_n_0 ),
        .O(regA[11]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[11]_INST_0_i_1 
       (.I0(\mem_reg[3] [11]),
        .I1(\mem_reg[2] [11]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [11]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [11]),
        .O(\regA[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[11]_INST_0_i_2 
       (.I0(\mem_reg[7] [11]),
        .I1(\mem_reg[6] [11]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [11]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [11]),
        .O(\regA[11]_INST_0_i_2_n_0 ));
  MUXF7 \regA[12]_INST_0 
       (.I0(\regA[12]_INST_0_i_1_n_0 ),
        .I1(\regA[12]_INST_0_i_2_n_0 ),
        .O(regA[12]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[12]_INST_0_i_1 
       (.I0(\mem_reg[3] [12]),
        .I1(\mem_reg[2] [12]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [12]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [12]),
        .O(\regA[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[12]_INST_0_i_2 
       (.I0(\mem_reg[7] [12]),
        .I1(\mem_reg[6] [12]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [12]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [12]),
        .O(\regA[12]_INST_0_i_2_n_0 ));
  MUXF7 \regA[13]_INST_0 
       (.I0(\regA[13]_INST_0_i_1_n_0 ),
        .I1(\regA[13]_INST_0_i_2_n_0 ),
        .O(regA[13]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[13]_INST_0_i_1 
       (.I0(\mem_reg[3] [13]),
        .I1(\mem_reg[2] [13]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [13]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [13]),
        .O(\regA[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[13]_INST_0_i_2 
       (.I0(\mem_reg[7] [13]),
        .I1(\mem_reg[6] [13]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [13]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [13]),
        .O(\regA[13]_INST_0_i_2_n_0 ));
  MUXF7 \regA[14]_INST_0 
       (.I0(\regA[14]_INST_0_i_1_n_0 ),
        .I1(\regA[14]_INST_0_i_2_n_0 ),
        .O(regA[14]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[14]_INST_0_i_1 
       (.I0(\mem_reg[3] [14]),
        .I1(\mem_reg[2] [14]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [14]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [14]),
        .O(\regA[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[14]_INST_0_i_2 
       (.I0(\mem_reg[7] [14]),
        .I1(\mem_reg[6] [14]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [14]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [14]),
        .O(\regA[14]_INST_0_i_2_n_0 ));
  MUXF7 \regA[15]_INST_0 
       (.I0(\regA[15]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_2_n_0 ),
        .O(regA[15]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[15]_INST_0_i_1 
       (.I0(\mem_reg[3] [15]),
        .I1(\mem_reg[2] [15]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [15]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [15]),
        .O(\regA[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[15]_INST_0_i_2 
       (.I0(\mem_reg[7] [15]),
        .I1(\mem_reg[6] [15]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [15]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [15]),
        .O(\regA[15]_INST_0_i_2_n_0 ));
  MUXF7 \regA[1]_INST_0 
       (.I0(\regA[1]_INST_0_i_1_n_0 ),
        .I1(\regA[1]_INST_0_i_2_n_0 ),
        .O(regA[1]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[1]_INST_0_i_1 
       (.I0(\mem_reg[3] [1]),
        .I1(\mem_reg[2] [1]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [1]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [1]),
        .O(\regA[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[1]_INST_0_i_2 
       (.I0(\mem_reg[7] [1]),
        .I1(\mem_reg[6] [1]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [1]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [1]),
        .O(\regA[1]_INST_0_i_2_n_0 ));
  MUXF7 \regA[2]_INST_0 
       (.I0(\regA[2]_INST_0_i_1_n_0 ),
        .I1(\regA[2]_INST_0_i_2_n_0 ),
        .O(regA[2]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[2]_INST_0_i_1 
       (.I0(\mem_reg[3] [2]),
        .I1(\mem_reg[2] [2]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [2]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [2]),
        .O(\regA[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[2]_INST_0_i_2 
       (.I0(\mem_reg[7] [2]),
        .I1(\mem_reg[6] [2]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [2]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [2]),
        .O(\regA[2]_INST_0_i_2_n_0 ));
  MUXF7 \regA[3]_INST_0 
       (.I0(\regA[3]_INST_0_i_1_n_0 ),
        .I1(\regA[3]_INST_0_i_2_n_0 ),
        .O(regA[3]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[3]_INST_0_i_1 
       (.I0(\mem_reg[3] [3]),
        .I1(\mem_reg[2] [3]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [3]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [3]),
        .O(\regA[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[3]_INST_0_i_2 
       (.I0(\mem_reg[7] [3]),
        .I1(\mem_reg[6] [3]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [3]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [3]),
        .O(\regA[3]_INST_0_i_2_n_0 ));
  MUXF7 \regA[4]_INST_0 
       (.I0(\regA[4]_INST_0_i_1_n_0 ),
        .I1(\regA[4]_INST_0_i_2_n_0 ),
        .O(regA[4]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[4]_INST_0_i_1 
       (.I0(\mem_reg[3] [4]),
        .I1(\mem_reg[2] [4]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [4]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [4]),
        .O(\regA[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[4]_INST_0_i_2 
       (.I0(\mem_reg[7] [4]),
        .I1(\mem_reg[6] [4]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [4]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [4]),
        .O(\regA[4]_INST_0_i_2_n_0 ));
  MUXF7 \regA[5]_INST_0 
       (.I0(\regA[5]_INST_0_i_1_n_0 ),
        .I1(\regA[5]_INST_0_i_2_n_0 ),
        .O(regA[5]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[5]_INST_0_i_1 
       (.I0(\mem_reg[3] [5]),
        .I1(\mem_reg[2] [5]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [5]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [5]),
        .O(\regA[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[5]_INST_0_i_2 
       (.I0(\mem_reg[7] [5]),
        .I1(\mem_reg[6] [5]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [5]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [5]),
        .O(\regA[5]_INST_0_i_2_n_0 ));
  MUXF7 \regA[6]_INST_0 
       (.I0(\regA[6]_INST_0_i_1_n_0 ),
        .I1(\regA[6]_INST_0_i_2_n_0 ),
        .O(regA[6]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[6]_INST_0_i_1 
       (.I0(\mem_reg[3] [6]),
        .I1(\mem_reg[2] [6]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [6]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [6]),
        .O(\regA[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[6]_INST_0_i_2 
       (.I0(\mem_reg[7] [6]),
        .I1(\mem_reg[6] [6]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [6]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [6]),
        .O(\regA[6]_INST_0_i_2_n_0 ));
  MUXF7 \regA[7]_INST_0 
       (.I0(\regA[7]_INST_0_i_1_n_0 ),
        .I1(\regA[7]_INST_0_i_2_n_0 ),
        .O(regA[7]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[7]_INST_0_i_1 
       (.I0(\mem_reg[3] [7]),
        .I1(\mem_reg[2] [7]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [7]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [7]),
        .O(\regA[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[7]_INST_0_i_2 
       (.I0(\mem_reg[7] [7]),
        .I1(\mem_reg[6] [7]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [7]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [7]),
        .O(\regA[7]_INST_0_i_2_n_0 ));
  MUXF7 \regA[8]_INST_0 
       (.I0(\regA[8]_INST_0_i_1_n_0 ),
        .I1(\regA[8]_INST_0_i_2_n_0 ),
        .O(regA[8]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[8]_INST_0_i_1 
       (.I0(\mem_reg[3] [8]),
        .I1(\mem_reg[2] [8]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [8]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [8]),
        .O(\regA[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[8]_INST_0_i_2 
       (.I0(\mem_reg[7] [8]),
        .I1(\mem_reg[6] [8]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [8]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [8]),
        .O(\regA[8]_INST_0_i_2_n_0 ));
  MUXF7 \regA[9]_INST_0 
       (.I0(\regA[9]_INST_0_i_1_n_0 ),
        .I1(\regA[9]_INST_0_i_2_n_0 ),
        .O(regA[9]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[9]_INST_0_i_1 
       (.I0(\mem_reg[3] [9]),
        .I1(\mem_reg[2] [9]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [9]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [9]),
        .O(\regA[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[9]_INST_0_i_2 
       (.I0(\mem_reg[7] [9]),
        .I1(\mem_reg[6] [9]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [9]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [9]),
        .O(\regA[9]_INST_0_i_2_n_0 ));
  MUXF7 \regB[0]_INST_0 
       (.I0(\regB[0]_INST_0_i_1_n_0 ),
        .I1(\regB[0]_INST_0_i_2_n_0 ),
        .O(regB[0]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[0]_INST_0_i_1 
       (.I0(\mem_reg[3] [0]),
        .I1(\mem_reg[2] [0]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [0]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [0]),
        .O(\regB[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[0]_INST_0_i_2 
       (.I0(\mem_reg[7] [0]),
        .I1(\mem_reg[6] [0]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [0]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [0]),
        .O(\regB[0]_INST_0_i_2_n_0 ));
  MUXF7 \regB[10]_INST_0 
       (.I0(\regB[10]_INST_0_i_1_n_0 ),
        .I1(\regB[10]_INST_0_i_2_n_0 ),
        .O(regB[10]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[10]_INST_0_i_1 
       (.I0(\mem_reg[3] [10]),
        .I1(\mem_reg[2] [10]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [10]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [10]),
        .O(\regB[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[10]_INST_0_i_2 
       (.I0(\mem_reg[7] [10]),
        .I1(\mem_reg[6] [10]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [10]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [10]),
        .O(\regB[10]_INST_0_i_2_n_0 ));
  MUXF7 \regB[11]_INST_0 
       (.I0(\regB[11]_INST_0_i_1_n_0 ),
        .I1(\regB[11]_INST_0_i_2_n_0 ),
        .O(regB[11]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[11]_INST_0_i_1 
       (.I0(\mem_reg[3] [11]),
        .I1(\mem_reg[2] [11]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [11]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [11]),
        .O(\regB[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[11]_INST_0_i_2 
       (.I0(\mem_reg[7] [11]),
        .I1(\mem_reg[6] [11]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [11]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [11]),
        .O(\regB[11]_INST_0_i_2_n_0 ));
  MUXF7 \regB[12]_INST_0 
       (.I0(\regB[12]_INST_0_i_1_n_0 ),
        .I1(\regB[12]_INST_0_i_2_n_0 ),
        .O(regB[12]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[12]_INST_0_i_1 
       (.I0(\mem_reg[3] [12]),
        .I1(\mem_reg[2] [12]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [12]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [12]),
        .O(\regB[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[12]_INST_0_i_2 
       (.I0(\mem_reg[7] [12]),
        .I1(\mem_reg[6] [12]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [12]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [12]),
        .O(\regB[12]_INST_0_i_2_n_0 ));
  MUXF7 \regB[13]_INST_0 
       (.I0(\regB[13]_INST_0_i_1_n_0 ),
        .I1(\regB[13]_INST_0_i_2_n_0 ),
        .O(regB[13]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[13]_INST_0_i_1 
       (.I0(\mem_reg[3] [13]),
        .I1(\mem_reg[2] [13]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [13]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [13]),
        .O(\regB[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[13]_INST_0_i_2 
       (.I0(\mem_reg[7] [13]),
        .I1(\mem_reg[6] [13]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [13]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [13]),
        .O(\regB[13]_INST_0_i_2_n_0 ));
  MUXF7 \regB[14]_INST_0 
       (.I0(\regB[14]_INST_0_i_1_n_0 ),
        .I1(\regB[14]_INST_0_i_2_n_0 ),
        .O(regB[14]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[14]_INST_0_i_1 
       (.I0(\mem_reg[3] [14]),
        .I1(\mem_reg[2] [14]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [14]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [14]),
        .O(\regB[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[14]_INST_0_i_2 
       (.I0(\mem_reg[7] [14]),
        .I1(\mem_reg[6] [14]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [14]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [14]),
        .O(\regB[14]_INST_0_i_2_n_0 ));
  MUXF7 \regB[15]_INST_0 
       (.I0(\regB[15]_INST_0_i_1_n_0 ),
        .I1(\regB[15]_INST_0_i_2_n_0 ),
        .O(regB[15]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[15]_INST_0_i_1 
       (.I0(\mem_reg[3] [15]),
        .I1(\mem_reg[2] [15]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [15]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [15]),
        .O(\regB[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[15]_INST_0_i_2 
       (.I0(\mem_reg[7] [15]),
        .I1(\mem_reg[6] [15]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [15]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [15]),
        .O(\regB[15]_INST_0_i_2_n_0 ));
  MUXF7 \regB[1]_INST_0 
       (.I0(\regB[1]_INST_0_i_1_n_0 ),
        .I1(\regB[1]_INST_0_i_2_n_0 ),
        .O(regB[1]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[1]_INST_0_i_1 
       (.I0(\mem_reg[3] [1]),
        .I1(\mem_reg[2] [1]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [1]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [1]),
        .O(\regB[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[1]_INST_0_i_2 
       (.I0(\mem_reg[7] [1]),
        .I1(\mem_reg[6] [1]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [1]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [1]),
        .O(\regB[1]_INST_0_i_2_n_0 ));
  MUXF7 \regB[2]_INST_0 
       (.I0(\regB[2]_INST_0_i_1_n_0 ),
        .I1(\regB[2]_INST_0_i_2_n_0 ),
        .O(regB[2]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[2]_INST_0_i_1 
       (.I0(\mem_reg[3] [2]),
        .I1(\mem_reg[2] [2]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [2]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [2]),
        .O(\regB[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[2]_INST_0_i_2 
       (.I0(\mem_reg[7] [2]),
        .I1(\mem_reg[6] [2]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [2]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [2]),
        .O(\regB[2]_INST_0_i_2_n_0 ));
  MUXF7 \regB[3]_INST_0 
       (.I0(\regB[3]_INST_0_i_1_n_0 ),
        .I1(\regB[3]_INST_0_i_2_n_0 ),
        .O(regB[3]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[3]_INST_0_i_1 
       (.I0(\mem_reg[3] [3]),
        .I1(\mem_reg[2] [3]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [3]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [3]),
        .O(\regB[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[3]_INST_0_i_2 
       (.I0(\mem_reg[7] [3]),
        .I1(\mem_reg[6] [3]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [3]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [3]),
        .O(\regB[3]_INST_0_i_2_n_0 ));
  MUXF7 \regB[4]_INST_0 
       (.I0(\regB[4]_INST_0_i_1_n_0 ),
        .I1(\regB[4]_INST_0_i_2_n_0 ),
        .O(regB[4]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[4]_INST_0_i_1 
       (.I0(\mem_reg[3] [4]),
        .I1(\mem_reg[2] [4]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [4]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [4]),
        .O(\regB[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[4]_INST_0_i_2 
       (.I0(\mem_reg[7] [4]),
        .I1(\mem_reg[6] [4]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [4]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [4]),
        .O(\regB[4]_INST_0_i_2_n_0 ));
  MUXF7 \regB[5]_INST_0 
       (.I0(\regB[5]_INST_0_i_1_n_0 ),
        .I1(\regB[5]_INST_0_i_2_n_0 ),
        .O(regB[5]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[5]_INST_0_i_1 
       (.I0(\mem_reg[3] [5]),
        .I1(\mem_reg[2] [5]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [5]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [5]),
        .O(\regB[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[5]_INST_0_i_2 
       (.I0(\mem_reg[7] [5]),
        .I1(\mem_reg[6] [5]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [5]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [5]),
        .O(\regB[5]_INST_0_i_2_n_0 ));
  MUXF7 \regB[6]_INST_0 
       (.I0(\regB[6]_INST_0_i_1_n_0 ),
        .I1(\regB[6]_INST_0_i_2_n_0 ),
        .O(regB[6]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[6]_INST_0_i_1 
       (.I0(\mem_reg[3] [6]),
        .I1(\mem_reg[2] [6]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [6]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [6]),
        .O(\regB[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[6]_INST_0_i_2 
       (.I0(\mem_reg[7] [6]),
        .I1(\mem_reg[6] [6]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [6]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [6]),
        .O(\regB[6]_INST_0_i_2_n_0 ));
  MUXF7 \regB[7]_INST_0 
       (.I0(\regB[7]_INST_0_i_1_n_0 ),
        .I1(\regB[7]_INST_0_i_2_n_0 ),
        .O(regB[7]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[7]_INST_0_i_1 
       (.I0(\mem_reg[3] [7]),
        .I1(\mem_reg[2] [7]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [7]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [7]),
        .O(\regB[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[7]_INST_0_i_2 
       (.I0(\mem_reg[7] [7]),
        .I1(\mem_reg[6] [7]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [7]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [7]),
        .O(\regB[7]_INST_0_i_2_n_0 ));
  MUXF7 \regB[8]_INST_0 
       (.I0(\regB[8]_INST_0_i_1_n_0 ),
        .I1(\regB[8]_INST_0_i_2_n_0 ),
        .O(regB[8]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[8]_INST_0_i_1 
       (.I0(\mem_reg[3] [8]),
        .I1(\mem_reg[2] [8]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [8]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [8]),
        .O(\regB[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[8]_INST_0_i_2 
       (.I0(\mem_reg[7] [8]),
        .I1(\mem_reg[6] [8]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [8]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [8]),
        .O(\regB[8]_INST_0_i_2_n_0 ));
  MUXF7 \regB[9]_INST_0 
       (.I0(\regB[9]_INST_0_i_1_n_0 ),
        .I1(\regB[9]_INST_0_i_2_n_0 ),
        .O(regB[9]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[9]_INST_0_i_1 
       (.I0(\mem_reg[3] [9]),
        .I1(\mem_reg[2] [9]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [9]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [9]),
        .O(\regB[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[9]_INST_0_i_2 
       (.I0(\mem_reg[7] [9]),
        .I1(\mem_reg[6] [9]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [9]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [9]),
        .O(\regB[9]_INST_0_i_2_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_reg_file_input_mux_0_0,reg_file_input_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "reg_file_input_mux,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_reg_file_input_mux_0_0
   (output_reg,
    in_alu,
    data_mem,
    next_ins_addr,
    from_stack,
    sel);
  output [15:0]output_reg;
  input [15:0]in_alu;
  input [15:0]data_mem;
  input [15:0]next_ins_addr;
  input [15:0]from_stack;
  input [1:0]sel;

  wire [15:0]data_mem;
  wire [15:0]from_stack;
  wire [15:0]in_alu;
  wire [15:0]next_ins_addr;
  wire [15:0]output_reg;
  wire [1:0]sel;

  design_1_reg_file_input_mux_0_0_reg_file_input_mux U0
       (.data_mem(data_mem),
        .from_stack(from_stack),
        .in_alu(in_alu),
        .next_ins_addr(next_ins_addr),
        .output_reg(output_reg),
        .sel(sel));
endmodule

(* ORIG_REF_NAME = "reg_file_input_mux" *) 
module design_1_reg_file_input_mux_0_0_reg_file_input_mux
   (output_reg,
    data_mem,
    in_alu,
    from_stack,
    sel,
    next_ins_addr);
  output [15:0]output_reg;
  input [15:0]data_mem;
  input [15:0]in_alu;
  input [15:0]from_stack;
  input [1:0]sel;
  input [15:0]next_ins_addr;

  wire [15:0]data_mem;
  wire [15:0]from_stack;
  wire [15:0]in_alu;
  wire [15:0]next_ins_addr;
  wire [15:0]output_reg;
  wire [1:0]sel;

  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[0]_INST_0 
       (.I0(data_mem[0]),
        .I1(in_alu[0]),
        .I2(from_stack[0]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[0]),
        .O(output_reg[0]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[10]_INST_0 
       (.I0(data_mem[10]),
        .I1(in_alu[10]),
        .I2(from_stack[10]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[10]),
        .O(output_reg[10]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[11]_INST_0 
       (.I0(data_mem[11]),
        .I1(in_alu[11]),
        .I2(from_stack[11]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[11]),
        .O(output_reg[11]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[12]_INST_0 
       (.I0(data_mem[12]),
        .I1(in_alu[12]),
        .I2(from_stack[12]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[12]),
        .O(output_reg[12]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[13]_INST_0 
       (.I0(data_mem[13]),
        .I1(in_alu[13]),
        .I2(from_stack[13]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[13]),
        .O(output_reg[13]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[14]_INST_0 
       (.I0(data_mem[14]),
        .I1(in_alu[14]),
        .I2(from_stack[14]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[14]),
        .O(output_reg[14]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[15]_INST_0 
       (.I0(data_mem[15]),
        .I1(in_alu[15]),
        .I2(from_stack[15]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[15]),
        .O(output_reg[15]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[1]_INST_0 
       (.I0(data_mem[1]),
        .I1(in_alu[1]),
        .I2(from_stack[1]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[1]),
        .O(output_reg[1]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[2]_INST_0 
       (.I0(data_mem[2]),
        .I1(in_alu[2]),
        .I2(from_stack[2]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[2]),
        .O(output_reg[2]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[3]_INST_0 
       (.I0(data_mem[3]),
        .I1(in_alu[3]),
        .I2(from_stack[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[3]),
        .O(output_reg[3]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[4]_INST_0 
       (.I0(data_mem[4]),
        .I1(in_alu[4]),
        .I2(from_stack[4]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[4]),
        .O(output_reg[4]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[5]_INST_0 
       (.I0(data_mem[5]),
        .I1(in_alu[5]),
        .I2(from_stack[5]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[5]),
        .O(output_reg[5]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[6]_INST_0 
       (.I0(data_mem[6]),
        .I1(in_alu[6]),
        .I2(from_stack[6]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[6]),
        .O(output_reg[6]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[7]_INST_0 
       (.I0(data_mem[7]),
        .I1(in_alu[7]),
        .I2(from_stack[7]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[7]),
        .O(output_reg[7]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[8]_INST_0 
       (.I0(data_mem[8]),
        .I1(in_alu[8]),
        .I2(from_stack[8]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[8]),
        .O(output_reg[8]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[9]_INST_0 
       (.I0(data_mem[9]),
        .I1(in_alu[9]),
        .I2(from_stack[9]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[9]),
        .O(output_reg[9]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_ri_imm_ext_0_0,ri_imm_ext,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "ri_imm_ext,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_ri_imm_ext_0_0
   (imm,
    z_ext_imm);
  input [5:0]imm;
  output [15:0]z_ext_imm;

  wire \<const0> ;
  wire [5:0]imm;

  assign z_ext_imm[15] = \<const0> ;
  assign z_ext_imm[14] = \<const0> ;
  assign z_ext_imm[13] = \<const0> ;
  assign z_ext_imm[12] = \<const0> ;
  assign z_ext_imm[11] = \<const0> ;
  assign z_ext_imm[10] = \<const0> ;
  assign z_ext_imm[9] = \<const0> ;
  assign z_ext_imm[8] = \<const0> ;
  assign z_ext_imm[7] = \<const0> ;
  assign z_ext_imm[6] = \<const0> ;
  assign z_ext_imm[5:0] = imm;
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_ri_imm_format_mux_0_0,ri_imm_format_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "ri_imm_format_mux,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_ri_imm_format_mux_0_0
   (upper_concat_imm,
    z_ext_imm,
    sel,
    ri_imm);
  input [15:0]upper_concat_imm;
  input [15:0]z_ext_imm;
  input sel;
  output [15:0]ri_imm;

  wire [15:0]ri_imm;
  wire sel;
  wire [15:0]upper_concat_imm;
  wire [15:0]z_ext_imm;

  design_1_ri_imm_format_mux_0_0_ri_imm_format_mux U0
       (.ri_imm(ri_imm),
        .sel(sel),
        .upper_concat_imm(upper_concat_imm),
        .z_ext_imm(z_ext_imm));
endmodule

(* ORIG_REF_NAME = "ri_imm_format_mux" *) 
module design_1_ri_imm_format_mux_0_0_ri_imm_format_mux
   (ri_imm,
    z_ext_imm,
    upper_concat_imm,
    sel);
  output [15:0]ri_imm;
  input [15:0]z_ext_imm;
  input [15:0]upper_concat_imm;
  input sel;

  wire [15:0]ri_imm;
  wire sel;
  wire [15:0]upper_concat_imm;
  wire [15:0]z_ext_imm;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[0]_INST_0 
       (.I0(z_ext_imm[0]),
        .I1(upper_concat_imm[0]),
        .I2(sel),
        .O(ri_imm[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[10]_INST_0 
       (.I0(z_ext_imm[10]),
        .I1(upper_concat_imm[10]),
        .I2(sel),
        .O(ri_imm[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[11]_INST_0 
       (.I0(z_ext_imm[11]),
        .I1(upper_concat_imm[11]),
        .I2(sel),
        .O(ri_imm[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[12]_INST_0 
       (.I0(z_ext_imm[12]),
        .I1(upper_concat_imm[12]),
        .I2(sel),
        .O(ri_imm[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[13]_INST_0 
       (.I0(z_ext_imm[13]),
        .I1(upper_concat_imm[13]),
        .I2(sel),
        .O(ri_imm[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[14]_INST_0 
       (.I0(z_ext_imm[14]),
        .I1(upper_concat_imm[14]),
        .I2(sel),
        .O(ri_imm[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[15]_INST_0 
       (.I0(z_ext_imm[15]),
        .I1(upper_concat_imm[15]),
        .I2(sel),
        .O(ri_imm[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[1]_INST_0 
       (.I0(z_ext_imm[1]),
        .I1(upper_concat_imm[1]),
        .I2(sel),
        .O(ri_imm[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[2]_INST_0 
       (.I0(z_ext_imm[2]),
        .I1(upper_concat_imm[2]),
        .I2(sel),
        .O(ri_imm[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[3]_INST_0 
       (.I0(z_ext_imm[3]),
        .I1(upper_concat_imm[3]),
        .I2(sel),
        .O(ri_imm[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[4]_INST_0 
       (.I0(z_ext_imm[4]),
        .I1(upper_concat_imm[4]),
        .I2(sel),
        .O(ri_imm[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[5]_INST_0 
       (.I0(z_ext_imm[5]),
        .I1(upper_concat_imm[5]),
        .I2(sel),
        .O(ri_imm[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[6]_INST_0 
       (.I0(z_ext_imm[6]),
        .I1(upper_concat_imm[6]),
        .I2(sel),
        .O(ri_imm[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[7]_INST_0 
       (.I0(z_ext_imm[7]),
        .I1(upper_concat_imm[7]),
        .I2(sel),
        .O(ri_imm[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[8]_INST_0 
       (.I0(z_ext_imm[8]),
        .I1(upper_concat_imm[8]),
        .I2(sel),
        .O(ri_imm[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[9]_INST_0 
       (.I0(z_ext_imm[9]),
        .I1(upper_concat_imm[9]),
        .I2(sel),
        .O(ri_imm[9]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_ri_imm_upper_concat_0_0,ri_imm_upper_concat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "ri_imm_upper_concat,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_ri_imm_upper_concat_0_0
   (imm,
    upper_concat);
  input [5:0]imm;
  output [15:0]upper_concat;

  wire \<const0> ;
  wire [5:0]imm;

  assign upper_concat[15:10] = imm;
  assign upper_concat[9] = \<const0> ;
  assign upper_concat[8] = \<const0> ;
  assign upper_concat[7] = \<const0> ;
  assign upper_concat[6] = \<const0> ;
  assign upper_concat[5] = \<const0> ;
  assign upper_concat[4] = \<const0> ;
  assign upper_concat[3] = \<const0> ;
  assign upper_concat[2] = \<const0> ;
  assign upper_concat[1] = \<const0> ;
  assign upper_concat[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_stack_ptr_reg_0_0,stack_ptr_reg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "stack_ptr_reg,Vivado 2018.3" *) 
(* ip_definition_source = "module_ref" *) 
module design_1_stack_ptr_reg_0_0
   (clk,
    ld_val,
    ld_en,
    dec,
    inc,
    stack_ptr);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input [15:0]ld_val;
  input ld_en;
  input dec;
  input inc;
  output [15:0]stack_ptr;

  wire clk;
  wire dec;
  wire inc;
  wire ld_en;
  wire [15:0]ld_val;
  wire [15:0]stack_ptr;

  design_1_stack_ptr_reg_0_0_stack_ptr_reg U0
       (.clk(clk),
        .dec(dec),
        .inc(inc),
        .ld_en(ld_en),
        .ld_val(ld_val),
        .stack_ptr(stack_ptr));
endmodule

(* ORIG_REF_NAME = "stack_ptr_reg" *) 
module design_1_stack_ptr_reg_0_0_stack_ptr_reg
   (stack_ptr,
    ld_en,
    ld_val,
    dec,
    clk,
    inc);
  output [15:0]stack_ptr;
  input ld_en;
  input [15:0]ld_val;
  input dec;
  input clk;
  input inc;

  wire clk;
  wire dec;
  wire inc;
  wire ld_en;
  wire [15:0]ld_val;
  wire \sp_reg[11]_i_2_n_0 ;
  wire \sp_reg[11]_i_3_n_0 ;
  wire \sp_reg[11]_i_4_n_0 ;
  wire \sp_reg[11]_i_5_n_0 ;
  wire \sp_reg[11]_i_6_n_0 ;
  wire \sp_reg[11]_i_7_n_0 ;
  wire \sp_reg[11]_i_8_n_0 ;
  wire \sp_reg[11]_i_9_n_0 ;
  wire \sp_reg[15]_i_2_n_0 ;
  wire \sp_reg[15]_i_3_n_0 ;
  wire \sp_reg[15]_i_4_n_0 ;
  wire \sp_reg[15]_i_5_n_0 ;
  wire \sp_reg[15]_i_6_n_0 ;
  wire \sp_reg[15]_i_7_n_0 ;
  wire \sp_reg[15]_i_8_n_0 ;
  wire \sp_reg[3]_i_2_n_0 ;
  wire \sp_reg[3]_i_3_n_0 ;
  wire \sp_reg[3]_i_4_n_0 ;
  wire \sp_reg[3]_i_5_n_0 ;
  wire \sp_reg[3]_i_6_n_0 ;
  wire \sp_reg[3]_i_7_n_0 ;
  wire \sp_reg[3]_i_8_n_0 ;
  wire \sp_reg[3]_i_9_n_0 ;
  wire \sp_reg[7]_i_2_n_0 ;
  wire \sp_reg[7]_i_3_n_0 ;
  wire \sp_reg[7]_i_4_n_0 ;
  wire \sp_reg[7]_i_5_n_0 ;
  wire \sp_reg[7]_i_6_n_0 ;
  wire \sp_reg[7]_i_7_n_0 ;
  wire \sp_reg[7]_i_8_n_0 ;
  wire \sp_reg[7]_i_9_n_0 ;
  wire sp_reg_n_0;
  wire \sp_reg_reg[11]_i_1_n_0 ;
  wire \sp_reg_reg[11]_i_1_n_1 ;
  wire \sp_reg_reg[11]_i_1_n_2 ;
  wire \sp_reg_reg[11]_i_1_n_3 ;
  wire \sp_reg_reg[11]_i_1_n_4 ;
  wire \sp_reg_reg[11]_i_1_n_5 ;
  wire \sp_reg_reg[11]_i_1_n_6 ;
  wire \sp_reg_reg[11]_i_1_n_7 ;
  wire \sp_reg_reg[15]_i_1_n_1 ;
  wire \sp_reg_reg[15]_i_1_n_2 ;
  wire \sp_reg_reg[15]_i_1_n_3 ;
  wire \sp_reg_reg[15]_i_1_n_4 ;
  wire \sp_reg_reg[15]_i_1_n_5 ;
  wire \sp_reg_reg[15]_i_1_n_6 ;
  wire \sp_reg_reg[15]_i_1_n_7 ;
  wire \sp_reg_reg[3]_i_1_n_0 ;
  wire \sp_reg_reg[3]_i_1_n_1 ;
  wire \sp_reg_reg[3]_i_1_n_2 ;
  wire \sp_reg_reg[3]_i_1_n_3 ;
  wire \sp_reg_reg[3]_i_1_n_4 ;
  wire \sp_reg_reg[3]_i_1_n_5 ;
  wire \sp_reg_reg[3]_i_1_n_6 ;
  wire \sp_reg_reg[3]_i_1_n_7 ;
  wire \sp_reg_reg[7]_i_1_n_0 ;
  wire \sp_reg_reg[7]_i_1_n_1 ;
  wire \sp_reg_reg[7]_i_1_n_2 ;
  wire \sp_reg_reg[7]_i_1_n_3 ;
  wire \sp_reg_reg[7]_i_1_n_4 ;
  wire \sp_reg_reg[7]_i_1_n_5 ;
  wire \sp_reg_reg[7]_i_1_n_6 ;
  wire \sp_reg_reg[7]_i_1_n_7 ;
  wire [15:0]stack_ptr;
  wire [3:3]\NLW_sp_reg_reg[15]_i_1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hFE)) 
    sp_reg
       (.I0(ld_en),
        .I1(inc),
        .I2(dec),
        .O(sp_reg_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \sp_reg[11]_i_2 
       (.I0(dec),
        .I1(ld_en),
        .O(\sp_reg[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sp_reg[11]_i_3 
       (.I0(dec),
        .I1(ld_en),
        .O(\sp_reg[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sp_reg[11]_i_4 
       (.I0(dec),
        .I1(ld_en),
        .O(\sp_reg[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sp_reg[11]_i_5 
       (.I0(dec),
        .I1(ld_en),
        .O(\sp_reg[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \sp_reg[11]_i_6 
       (.I0(dec),
        .I1(stack_ptr[11]),
        .I2(ld_en),
        .I3(ld_val[11]),
        .O(\sp_reg[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \sp_reg[11]_i_7 
       (.I0(dec),
        .I1(stack_ptr[10]),
        .I2(ld_en),
        .I3(ld_val[10]),
        .O(\sp_reg[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \sp_reg[11]_i_8 
       (.I0(dec),
        .I1(stack_ptr[9]),
        .I2(ld_en),
        .I3(ld_val[9]),
        .O(\sp_reg[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \sp_reg[11]_i_9 
       (.I0(dec),
        .I1(stack_ptr[8]),
        .I2(ld_en),
        .I3(ld_val[8]),
        .O(\sp_reg[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sp_reg[15]_i_2 
       (.I0(dec),
        .I1(ld_en),
        .O(\sp_reg[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sp_reg[15]_i_3 
       (.I0(dec),
        .I1(ld_en),
        .O(\sp_reg[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sp_reg[15]_i_4 
       (.I0(dec),
        .I1(ld_en),
        .O(\sp_reg[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \sp_reg[15]_i_5 
       (.I0(dec),
        .I1(stack_ptr[15]),
        .I2(ld_en),
        .I3(ld_val[15]),
        .O(\sp_reg[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \sp_reg[15]_i_6 
       (.I0(dec),
        .I1(stack_ptr[14]),
        .I2(ld_en),
        .I3(ld_val[14]),
        .O(\sp_reg[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \sp_reg[15]_i_7 
       (.I0(dec),
        .I1(stack_ptr[13]),
        .I2(ld_en),
        .I3(ld_val[13]),
        .O(\sp_reg[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \sp_reg[15]_i_8 
       (.I0(dec),
        .I1(stack_ptr[12]),
        .I2(ld_en),
        .I3(ld_val[12]),
        .O(\sp_reg[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sp_reg[3]_i_2 
       (.I0(dec),
        .I1(ld_en),
        .O(\sp_reg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sp_reg[3]_i_3 
       (.I0(dec),
        .I1(ld_en),
        .O(\sp_reg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sp_reg[3]_i_4 
       (.I0(dec),
        .I1(ld_en),
        .O(\sp_reg[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp_reg[3]_i_5 
       (.I0(ld_en),
        .O(\sp_reg[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \sp_reg[3]_i_6 
       (.I0(dec),
        .I1(stack_ptr[3]),
        .I2(ld_en),
        .I3(ld_val[3]),
        .O(\sp_reg[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \sp_reg[3]_i_7 
       (.I0(dec),
        .I1(stack_ptr[2]),
        .I2(ld_en),
        .I3(ld_val[2]),
        .O(\sp_reg[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \sp_reg[3]_i_8 
       (.I0(dec),
        .I1(stack_ptr[1]),
        .I2(ld_en),
        .I3(ld_val[1]),
        .O(\sp_reg[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \sp_reg[3]_i_9 
       (.I0(stack_ptr[0]),
        .I1(ld_en),
        .I2(ld_val[0]),
        .O(\sp_reg[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sp_reg[7]_i_2 
       (.I0(dec),
        .I1(ld_en),
        .O(\sp_reg[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sp_reg[7]_i_3 
       (.I0(dec),
        .I1(ld_en),
        .O(\sp_reg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sp_reg[7]_i_4 
       (.I0(dec),
        .I1(ld_en),
        .O(\sp_reg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sp_reg[7]_i_5 
       (.I0(dec),
        .I1(ld_en),
        .O(\sp_reg[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \sp_reg[7]_i_6 
       (.I0(dec),
        .I1(stack_ptr[7]),
        .I2(ld_en),
        .I3(ld_val[7]),
        .O(\sp_reg[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \sp_reg[7]_i_7 
       (.I0(dec),
        .I1(stack_ptr[6]),
        .I2(ld_en),
        .I3(ld_val[6]),
        .O(\sp_reg[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \sp_reg[7]_i_8 
       (.I0(dec),
        .I1(stack_ptr[5]),
        .I2(ld_en),
        .I3(ld_val[5]),
        .O(\sp_reg[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \sp_reg[7]_i_9 
       (.I0(dec),
        .I1(stack_ptr[4]),
        .I2(ld_en),
        .I3(ld_val[4]),
        .O(\sp_reg[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[0] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg_reg[3]_i_1_n_7 ),
        .Q(stack_ptr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[10] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg_reg[11]_i_1_n_5 ),
        .Q(stack_ptr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[11] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg_reg[11]_i_1_n_4 ),
        .Q(stack_ptr[11]),
        .R(1'b0));
  CARRY4 \sp_reg_reg[11]_i_1 
       (.CI(\sp_reg_reg[7]_i_1_n_0 ),
        .CO({\sp_reg_reg[11]_i_1_n_0 ,\sp_reg_reg[11]_i_1_n_1 ,\sp_reg_reg[11]_i_1_n_2 ,\sp_reg_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sp_reg[11]_i_2_n_0 ,\sp_reg[11]_i_3_n_0 ,\sp_reg[11]_i_4_n_0 ,\sp_reg[11]_i_5_n_0 }),
        .O({\sp_reg_reg[11]_i_1_n_4 ,\sp_reg_reg[11]_i_1_n_5 ,\sp_reg_reg[11]_i_1_n_6 ,\sp_reg_reg[11]_i_1_n_7 }),
        .S({\sp_reg[11]_i_6_n_0 ,\sp_reg[11]_i_7_n_0 ,\sp_reg[11]_i_8_n_0 ,\sp_reg[11]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[12] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg_reg[15]_i_1_n_7 ),
        .Q(stack_ptr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[13] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg_reg[15]_i_1_n_6 ),
        .Q(stack_ptr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[14] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg_reg[15]_i_1_n_5 ),
        .Q(stack_ptr[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[15] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg_reg[15]_i_1_n_4 ),
        .Q(stack_ptr[15]),
        .R(1'b0));
  CARRY4 \sp_reg_reg[15]_i_1 
       (.CI(\sp_reg_reg[11]_i_1_n_0 ),
        .CO({\NLW_sp_reg_reg[15]_i_1_CO_UNCONNECTED [3],\sp_reg_reg[15]_i_1_n_1 ,\sp_reg_reg[15]_i_1_n_2 ,\sp_reg_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\sp_reg[15]_i_2_n_0 ,\sp_reg[15]_i_3_n_0 ,\sp_reg[15]_i_4_n_0 }),
        .O({\sp_reg_reg[15]_i_1_n_4 ,\sp_reg_reg[15]_i_1_n_5 ,\sp_reg_reg[15]_i_1_n_6 ,\sp_reg_reg[15]_i_1_n_7 }),
        .S({\sp_reg[15]_i_5_n_0 ,\sp_reg[15]_i_6_n_0 ,\sp_reg[15]_i_7_n_0 ,\sp_reg[15]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[1] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg_reg[3]_i_1_n_6 ),
        .Q(stack_ptr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[2] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg_reg[3]_i_1_n_5 ),
        .Q(stack_ptr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[3] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg_reg[3]_i_1_n_4 ),
        .Q(stack_ptr[3]),
        .R(1'b0));
  CARRY4 \sp_reg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sp_reg_reg[3]_i_1_n_0 ,\sp_reg_reg[3]_i_1_n_1 ,\sp_reg_reg[3]_i_1_n_2 ,\sp_reg_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sp_reg[3]_i_2_n_0 ,\sp_reg[3]_i_3_n_0 ,\sp_reg[3]_i_4_n_0 ,\sp_reg[3]_i_5_n_0 }),
        .O({\sp_reg_reg[3]_i_1_n_4 ,\sp_reg_reg[3]_i_1_n_5 ,\sp_reg_reg[3]_i_1_n_6 ,\sp_reg_reg[3]_i_1_n_7 }),
        .S({\sp_reg[3]_i_6_n_0 ,\sp_reg[3]_i_7_n_0 ,\sp_reg[3]_i_8_n_0 ,\sp_reg[3]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[4] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg_reg[7]_i_1_n_7 ),
        .Q(stack_ptr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[5] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg_reg[7]_i_1_n_6 ),
        .Q(stack_ptr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[6] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg_reg[7]_i_1_n_5 ),
        .Q(stack_ptr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[7] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg_reg[7]_i_1_n_4 ),
        .Q(stack_ptr[7]),
        .R(1'b0));
  CARRY4 \sp_reg_reg[7]_i_1 
       (.CI(\sp_reg_reg[3]_i_1_n_0 ),
        .CO({\sp_reg_reg[7]_i_1_n_0 ,\sp_reg_reg[7]_i_1_n_1 ,\sp_reg_reg[7]_i_1_n_2 ,\sp_reg_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sp_reg[7]_i_2_n_0 ,\sp_reg[7]_i_3_n_0 ,\sp_reg[7]_i_4_n_0 ,\sp_reg[7]_i_5_n_0 }),
        .O({\sp_reg_reg[7]_i_1_n_4 ,\sp_reg_reg[7]_i_1_n_5 ,\sp_reg_reg[7]_i_1_n_6 ,\sp_reg_reg[7]_i_1_n_7 }),
        .S({\sp_reg[7]_i_6_n_0 ,\sp_reg[7]_i_7_n_0 ,\sp_reg[7]_i_8_n_0 ,\sp_reg[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[8] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg_reg[11]_i_1_n_7 ),
        .Q(stack_ptr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[9] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg_reg[11]_i_1_n_6 ),
        .Q(stack_ptr[9]),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module design_1_wrapper
   (clk);
  input clk;

  wire clk;
  wire clk_IBUF;

initial begin
 $sdf_annotate("cpu_ctrl_tb_time_synth.sdf",,,,"tool_control");
end
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* hw_handoff = "design_1.hwdef" *) 
  design_1 design_1_i
       (.clk(clk_IBUF));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_xlconstant_0_0,xlconstant_v1_1_5_xlconstant,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconstant_v1_1_5_xlconstant,Vivado 2018.3" *) 
module design_1_xlconstant_0_0
   (dout);
  output [15:0]dout;

  wire \<const0> ;
  wire \<const1> ;

  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule

module memory_imp_1RJ1PXL
   (data_out,
    stack_out,
    cur_ins,
    clk,
    data_in,
    wr_addr,
    stack_addr,
    stack_wr_en,
    wr_en,
    ins_addr);
  output [15:0]data_out;
  output [15:0]stack_out;
  output [15:0]cur_ins;
  input clk;
  input [15:0]data_in;
  input [15:0]wr_addr;
  input [15:0]stack_addr;
  input stack_wr_en;
  input wr_en;
  input [15:0]ins_addr;

  wire clk;
  wire [15:0]cur_ins;
  wire [15:0]data_in;
  wire [15:0]data_out;
  wire [15:0]ins_addr;
  wire [15:0]stack_addr;
  wire [15:0]stack_out;
  wire stack_wr_en;
  wire [15:0]wr_addr;
  wire wr_en;

  (* X_CORE_INFO = "data_mem,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_data_mem_0_0 data_mem
       (.clk(clk),
        .data_in(data_in),
        .data_out(data_out),
        .rd_addr(data_in),
        .stack_addr(stack_addr),
        .stack_out(stack_out),
        .stack_wr_en(stack_wr_en),
        .wr_addr(wr_addr),
        .wr_en(wr_en));
  (* X_CORE_INFO = "prog_mem,Vivado 2018.3" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_prog_mem_0_0 prog_mem
       (.clk(clk),
        .cur_ins(cur_ins),
        .ins_addr(ins_addr));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
