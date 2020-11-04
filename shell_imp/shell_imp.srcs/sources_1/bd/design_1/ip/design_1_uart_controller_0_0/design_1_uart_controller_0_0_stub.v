// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Oct 30 14:46:14 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_uart_controller_0_0/design_1_uart_controller_0_0_stub.v
// Design      : design_1_uart_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "uart_controller,Vivado 2018.3" *)
module design_1_uart_controller_0_0(clk, tx_buff, rx_buff, rx_ready, tx_ready, 
  tx_start_trans, tx_buff_data_in, tx_buff_wr)
/* synthesis syn_black_box black_box_pad_pin="clk,tx_buff[7:0],rx_buff[7:0],rx_ready,tx_ready,tx_start_trans,tx_buff_data_in[15:0],tx_buff_wr" */;
  input clk;
  output [7:0]tx_buff;
  input [7:0]rx_buff;
  input rx_ready;
  input tx_ready;
  output tx_start_trans;
  input [15:0]tx_buff_data_in;
  input tx_buff_wr;
endmodule
