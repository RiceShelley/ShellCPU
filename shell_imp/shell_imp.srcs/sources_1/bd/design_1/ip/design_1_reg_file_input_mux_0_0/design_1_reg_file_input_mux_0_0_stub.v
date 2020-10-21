// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Oct  5 21:34:26 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_reg_file_input_mux_0_0/design_1_reg_file_input_mux_0_0_stub.v
// Design      : design_1_reg_file_input_mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "reg_file_input_mux,Vivado 2018.3" *)
module design_1_reg_file_input_mux_0_0(output_reg, in_alu, data_mem, next_ins_addr, 
  from_stack, sel)
/* synthesis syn_black_box black_box_pad_pin="output_reg[15:0],in_alu[15:0],data_mem[15:0],next_ins_addr[15:0],from_stack[15:0],sel[1:0]" */;
  output [15:0]output_reg;
  input [15:0]in_alu;
  input [15:0]data_mem;
  input [15:0]next_ins_addr;
  input [15:0]from_stack;
  input [1:0]sel;
endmodule
