// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct  6 17:37:47 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_CTRL_UNIT_0_0_stub.v
// Design      : design_1_CTRL_UNIT_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "CTRL_UNIT,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(instruction, dest_addr, regA_addr, regB_addr, 
  alu_op, reg_file_input_sel, reg_file_wr, pc_ld_en, pc_en, data_mem_wr, cmp_status_wr, ri_imm, 
  imm, alu_input_sel, pc_load_sel, cmp_eq, cmp_ne, cmp_gt, cmp_lt, stack_ld, dec_stack, inc_stack, 
  stack_wr, ri_imm_format_sel)
/* synthesis syn_black_box black_box_pad_pin="instruction[15:0],dest_addr[2:0],regA_addr[2:0],regB_addr[2:0],alu_op[3:0],reg_file_input_sel[1:0],reg_file_wr,pc_ld_en,pc_en,data_mem_wr,cmp_status_wr,ri_imm[5:0],imm[10:0],alu_input_sel,pc_load_sel,cmp_eq,cmp_ne,cmp_gt,cmp_lt,stack_ld,dec_stack,inc_stack,stack_wr,ri_imm_format_sel" */;
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
endmodule
