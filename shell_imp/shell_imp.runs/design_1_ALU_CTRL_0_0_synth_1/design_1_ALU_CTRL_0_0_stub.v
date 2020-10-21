// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Oct  5 21:35:59 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ALU_CTRL_0_0_stub.v
// Design      : design_1_ALU_CTRL_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ALU_CTRL,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(alu_op, op_add, op_sub, op_and, op_or, op_xor, 
  op_nand, op_asr, op_asl, op_cmp)
/* synthesis syn_black_box black_box_pad_pin="alu_op[3:0],op_add,op_sub,op_and,op_or,op_xor,op_nand,op_asr,op_asl,op_cmp" */;
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
endmodule
