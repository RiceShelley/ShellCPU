// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct  6 19:38:37 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_uart_0_2/design_1_uart_0_2_sim_netlist.v
// Design      : design_1_uart_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uart_0_2,uart,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "uart,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_uart_0_2
   (clk,
    rx,
    rx_data,
    rx_ready,
    tx_buff,
    tx_start_trans,
    tx,
    tx_ready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input rx;
  output [7:0]rx_data;
  output rx_ready;
  input [7:0]tx_buff;
  input tx_start_trans;
  output tx;
  output tx_ready;

  wire clk;
  wire rx;
  wire [7:0]rx_data;
  wire rx_ready;
  wire tx;
  wire [7:0]tx_buff;
  wire tx_ready;
  wire tx_start_trans;

  design_1_uart_0_2_uart U0
       (.clk(clk),
        .rx(rx),
        .rx_data(rx_data),
        .rx_ready(rx_ready),
        .tx(tx),
        .tx_buff(tx_buff),
        .tx_ready(tx_ready),
        .tx_start_trans(tx_start_trans));
endmodule

(* ORIG_REF_NAME = "uart" *) 
module design_1_uart_0_2_uart
   (rx_data,
    tx_ready,
    rx_ready,
    tx,
    rx,
    clk,
    tx_start_trans,
    tx_buff);
  output [7:0]rx_data;
  output tx_ready;
  output rx_ready;
  output tx;
  input rx;
  input clk;
  input tx_start_trans;
  input [7:0]tx_buff;

  wire \FSM_sequential_rx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_1_n_0 ;
  wire baud_clk_i_1_n_0;
  wire baud_clk_reg_n_0;
  wire baud_rst;
  wire baud_rst_i_1_n_0;
  wire clk;
  wire [8:0]clk_acc;
  wire \clk_acc[7]_i_2_n_0 ;
  wire \clk_acc[7]_i_3_n_0 ;
  wire \clk_acc[7]_i_4_n_0 ;
  wire \clk_acc[8]_i_2_n_0 ;
  wire [8:0]clk_acc_0;
  wire posedge_baud_clk_i_1_n_0;
  wire posedge_baud_clk_reg_n_0;
  wire rx;
  wire [7:0]rx_buff;
  wire \rx_buff[0]_i_1_n_0 ;
  wire \rx_buff[1]_i_1_n_0 ;
  wire \rx_buff[2]_i_1_n_0 ;
  wire \rx_buff[3]_i_1_n_0 ;
  wire \rx_buff[4]_i_1_n_0 ;
  wire \rx_buff[5]_i_1_n_0 ;
  wire \rx_buff[6]_i_1_n_0 ;
  wire \rx_buff[7]_i_1_n_0 ;
  wire [7:0]rx_data;
  wire rx_pos;
  wire \rx_pos[0]_i_1_n_0 ;
  wire \rx_pos[1]_i_1_n_0 ;
  wire \rx_pos[2]_i_1_n_0 ;
  wire \rx_pos_reg_n_0_[0] ;
  wire \rx_pos_reg_n_0_[1] ;
  wire \rx_pos_reg_n_0_[2] ;
  wire rx_ready;
  wire rx_ready_i_1_n_0;
  wire [1:0]rx_start_bit_buff;
  wire [1:0]rx_state;
  wire [1:0]trans_flag_buff;
  wire tx;
  wire [7:0]tx_buff;
  wire tx_i_1_n_0;
  wire tx_i_2_n_0;
  wire tx_i_3_n_0;
  wire \tx_pos[0]_i_1_n_0 ;
  wire \tx_pos[1]_i_1_n_0 ;
  wire \tx_pos[2]_i_1_n_0 ;
  wire \tx_pos_reg_n_0_[0] ;
  wire \tx_pos_reg_n_0_[1] ;
  wire \tx_pos_reg_n_0_[2] ;
  wire tx_ready;
  wire tx_start_trans;
  wire [1:0]tx_state;

  LUT6 #(
    .INIT(64'h00AAFFAA000CFF0C)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .I1(rx_start_bit_buff[1]),
        .I2(rx_start_bit_buff[0]),
        .I3(rx_state[0]),
        .I4(posedge_baud_clk_reg_n_0),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(posedge_baud_clk_reg_n_0),
        .I1(\rx_pos_reg_n_0_[2] ),
        .I2(\rx_pos_reg_n_0_[0] ),
        .I3(\rx_pos_reg_n_0_[1] ),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h3F40)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(rx),
        .I1(rx_state[0]),
        .I2(posedge_baud_clk_reg_n_0),
        .I3(rx_state[1]),
        .O(\FSM_sequential_rx_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RX_RECV:10,RX_STOP:11,RX_IDLE:00,RX_START:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_rx_state[0]_i_1_n_0 ),
        .Q(rx_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RX_RECV:10,RX_STOP:11,RX_IDLE:00,RX_START:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_rx_state[1]_i_1_n_0 ),
        .Q(rx_state[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00FFF400)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(trans_flag_buff[1]),
        .I1(trans_flag_buff[0]),
        .I2(tx_state[1]),
        .I3(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .I4(tx_state[0]),
        .O(\FSM_sequential_tx_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFDDDDDDD)) 
    \FSM_sequential_tx_state[0]_i_2 
       (.I0(tx_state[1]),
        .I1(tx_state[0]),
        .I2(\tx_pos_reg_n_0_[1] ),
        .I3(\tx_pos_reg_n_0_[0] ),
        .I4(\tx_pos_reg_n_0_[2] ),
        .O(\FSM_sequential_tx_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[1]),
        .I1(tx_state[0]),
        .O(\FSM_sequential_tx_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "TX_TRANS:10,TX_STOP:11,TX_IDLE:00,TX_START:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(baud_clk_reg_n_0),
        .CE(1'b1),
        .D(\FSM_sequential_tx_state[0]_i_1_n_0 ),
        .Q(tx_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "TX_TRANS:10,TX_STOP:11,TX_IDLE:00,TX_START:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(baud_clk_reg_n_0),
        .CE(1'b1),
        .D(\FSM_sequential_tx_state[1]_i_1_n_0 ),
        .Q(tx_state[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFEF0010)) 
    baud_clk_i_1
       (.I0(baud_rst),
        .I1(\clk_acc[7]_i_2_n_0 ),
        .I2(clk_acc[7]),
        .I3(\clk_acc[7]_i_3_n_0 ),
        .I4(baud_clk_reg_n_0),
        .O(baud_clk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    baud_clk_reg
       (.C(clk),
        .CE(1'b1),
        .D(baud_clk_i_1_n_0),
        .Q(baud_clk_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAA00AAAE)) 
    baud_rst_i_1
       (.I0(baud_rst),
        .I1(rx_start_bit_buff[1]),
        .I2(rx_start_bit_buff[0]),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .O(baud_rst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    baud_rst_reg
       (.C(clk),
        .CE(1'b1),
        .D(baud_rst_i_1_n_0),
        .Q(baud_rst),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_acc[0]_i_1 
       (.I0(clk_acc[0]),
        .O(clk_acc_0[0]));
  LUT6 #(
    .INIT(64'h0000FF7FFFFF0000)) 
    \clk_acc[1]_i_1 
       (.I0(clk_acc[5]),
        .I1(clk_acc[4]),
        .I2(clk_acc[7]),
        .I3(\clk_acc[7]_i_2_n_0 ),
        .I4(clk_acc[1]),
        .I5(clk_acc[0]),
        .O(clk_acc_0[1]));
  LUT6 #(
    .INIT(64'h00FBFB00FB00FB00)) 
    \clk_acc[2]_i_1 
       (.I0(\clk_acc[7]_i_3_n_0 ),
        .I1(clk_acc[7]),
        .I2(\clk_acc[7]_i_2_n_0 ),
        .I3(clk_acc[2]),
        .I4(clk_acc[0]),
        .I5(clk_acc[1]),
        .O(clk_acc_0[2]));
  LUT6 #(
    .INIT(64'h0EE0E0E0E0E0E0E0)) 
    \clk_acc[3]_i_1 
       (.I0(\clk_acc[8]_i_2_n_0 ),
        .I1(\clk_acc[7]_i_2_n_0 ),
        .I2(clk_acc[3]),
        .I3(clk_acc[2]),
        .I4(clk_acc[1]),
        .I5(clk_acc[0]),
        .O(clk_acc_0[3]));
  LUT6 #(
    .INIT(64'h00FFF700FF00FF00)) 
    \clk_acc[4]_i_1 
       (.I0(clk_acc[5]),
        .I1(clk_acc[7]),
        .I2(\clk_acc[7]_i_2_n_0 ),
        .I3(clk_acc[4]),
        .I4(\clk_acc[7]_i_4_n_0 ),
        .I5(clk_acc[0]),
        .O(clk_acc_0[4]));
  LUT6 #(
    .INIT(64'h0FD0F0F0F0F0F0F0)) 
    \clk_acc[5]_i_1 
       (.I0(clk_acc[7]),
        .I1(\clk_acc[7]_i_2_n_0 ),
        .I2(clk_acc[5]),
        .I3(\clk_acc[7]_i_4_n_0 ),
        .I4(clk_acc[4]),
        .I5(clk_acc[0]),
        .O(clk_acc_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0F00DD0)) 
    \clk_acc[6]_i_1 
       (.I0(clk_acc[7]),
        .I1(\clk_acc[7]_i_2_n_0 ),
        .I2(clk_acc[6]),
        .I3(\clk_acc[7]_i_4_n_0 ),
        .I4(\clk_acc[7]_i_3_n_0 ),
        .O(clk_acc_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC3C8C8C8)) 
    \clk_acc[7]_i_1 
       (.I0(\clk_acc[7]_i_2_n_0 ),
        .I1(clk_acc[7]),
        .I2(\clk_acc[7]_i_3_n_0 ),
        .I3(clk_acc[6]),
        .I4(\clk_acc[7]_i_4_n_0 ),
        .O(clk_acc_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \clk_acc[7]_i_2 
       (.I0(clk_acc[1]),
        .I1(clk_acc[6]),
        .I2(clk_acc[8]),
        .I3(clk_acc[3]),
        .I4(clk_acc[2]),
        .O(\clk_acc[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \clk_acc[7]_i_3 
       (.I0(clk_acc[4]),
        .I1(clk_acc[0]),
        .I2(clk_acc[5]),
        .O(\clk_acc[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \clk_acc[7]_i_4 
       (.I0(clk_acc[2]),
        .I1(clk_acc[1]),
        .I2(clk_acc[3]),
        .O(\clk_acc[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAA8)) 
    \clk_acc[8]_i_1 
       (.I0(clk_acc[8]),
        .I1(clk_acc[6]),
        .I2(clk_acc[2]),
        .I3(clk_acc[1]),
        .I4(clk_acc[3]),
        .I5(\clk_acc[8]_i_2_n_0 ),
        .O(clk_acc_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clk_acc[8]_i_2 
       (.I0(clk_acc[5]),
        .I1(clk_acc[0]),
        .I2(clk_acc[4]),
        .I3(clk_acc[7]),
        .O(\clk_acc[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_acc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_acc_0[0]),
        .Q(clk_acc[0]),
        .R(baud_rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_acc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_acc_0[1]),
        .Q(clk_acc[1]),
        .R(baud_rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_acc_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_acc_0[2]),
        .Q(clk_acc[2]),
        .R(baud_rst));
  FDSE #(
    .INIT(1'b0)) 
    \clk_acc_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_acc_0[3]),
        .Q(clk_acc[3]),
        .S(baud_rst));
  FDSE #(
    .INIT(1'b0)) 
    \clk_acc_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_acc_0[4]),
        .Q(clk_acc[4]),
        .S(baud_rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_acc_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_acc_0[5]),
        .Q(clk_acc[5]),
        .R(baud_rst));
  FDSE #(
    .INIT(1'b0)) 
    \clk_acc_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_acc_0[6]),
        .Q(clk_acc[6]),
        .S(baud_rst));
  FDSE #(
    .INIT(1'b0)) 
    \clk_acc_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_acc_0[7]),
        .Q(clk_acc[7]),
        .S(baud_rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_acc_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_acc_0[8]),
        .Q(clk_acc[8]),
        .R(baud_rst));
  LUT6 #(
    .INIT(64'hFFFF003000000010)) 
    posedge_baud_clk_i_1
       (.I0(baud_clk_reg_n_0),
        .I1(\clk_acc[7]_i_3_n_0 ),
        .I2(clk_acc[7]),
        .I3(\clk_acc[7]_i_2_n_0 ),
        .I4(baud_rst),
        .I5(posedge_baud_clk_reg_n_0),
        .O(posedge_baud_clk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    posedge_baud_clk_reg
       (.C(clk),
        .CE(1'b1),
        .D(posedge_baud_clk_i_1_n_0),
        .Q(posedge_baud_clk_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_buff[0]_i_1 
       (.I0(rx),
        .I1(rx_buff[0]),
        .I2(rx_data[0]),
        .O(\rx_buff[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \rx_buff[0]_i_2 
       (.I0(rx_state[0]),
        .I1(posedge_baud_clk_reg_n_0),
        .I2(\rx_pos_reg_n_0_[1] ),
        .I3(\rx_pos_reg_n_0_[0] ),
        .I4(\rx_pos_reg_n_0_[2] ),
        .I5(rx_state[1]),
        .O(rx_buff[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_buff[1]_i_1 
       (.I0(rx),
        .I1(rx_buff[1]),
        .I2(rx_data[1]),
        .O(\rx_buff[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \rx_buff[1]_i_2 
       (.I0(rx_state[0]),
        .I1(posedge_baud_clk_reg_n_0),
        .I2(\rx_pos_reg_n_0_[1] ),
        .I3(\rx_pos_reg_n_0_[0] ),
        .I4(\rx_pos_reg_n_0_[2] ),
        .I5(rx_state[1]),
        .O(rx_buff[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_buff[2]_i_1 
       (.I0(rx),
        .I1(rx_buff[2]),
        .I2(rx_data[2]),
        .O(\rx_buff[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \rx_buff[2]_i_2 
       (.I0(rx_state[0]),
        .I1(posedge_baud_clk_reg_n_0),
        .I2(\rx_pos_reg_n_0_[0] ),
        .I3(\rx_pos_reg_n_0_[1] ),
        .I4(\rx_pos_reg_n_0_[2] ),
        .I5(rx_state[1]),
        .O(rx_buff[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_buff[3]_i_1 
       (.I0(rx),
        .I1(rx_buff[3]),
        .I2(rx_data[3]),
        .O(\rx_buff[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \rx_buff[3]_i_2 
       (.I0(rx_state[0]),
        .I1(posedge_baud_clk_reg_n_0),
        .I2(\rx_pos_reg_n_0_[1] ),
        .I3(\rx_pos_reg_n_0_[0] ),
        .I4(\rx_pos_reg_n_0_[2] ),
        .I5(rx_state[1]),
        .O(rx_buff[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_buff[4]_i_1 
       (.I0(rx),
        .I1(rx_buff[4]),
        .I2(rx_data[4]),
        .O(\rx_buff[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \rx_buff[4]_i_2 
       (.I0(rx_state[0]),
        .I1(posedge_baud_clk_reg_n_0),
        .I2(\rx_pos_reg_n_0_[1] ),
        .I3(\rx_pos_reg_n_0_[0] ),
        .I4(\rx_pos_reg_n_0_[2] ),
        .I5(rx_state[1]),
        .O(rx_buff[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_buff[5]_i_1 
       (.I0(rx),
        .I1(rx_buff[5]),
        .I2(rx_data[5]),
        .O(\rx_buff[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \rx_buff[5]_i_2 
       (.I0(rx_state[0]),
        .I1(posedge_baud_clk_reg_n_0),
        .I2(\rx_pos_reg_n_0_[1] ),
        .I3(\rx_pos_reg_n_0_[0] ),
        .I4(\rx_pos_reg_n_0_[2] ),
        .I5(rx_state[1]),
        .O(rx_buff[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_buff[6]_i_1 
       (.I0(rx),
        .I1(rx_buff[6]),
        .I2(rx_data[6]),
        .O(\rx_buff[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \rx_buff[6]_i_2 
       (.I0(rx_state[0]),
        .I1(posedge_baud_clk_reg_n_0),
        .I2(\rx_pos_reg_n_0_[0] ),
        .I3(\rx_pos_reg_n_0_[1] ),
        .I4(\rx_pos_reg_n_0_[2] ),
        .I5(rx_state[1]),
        .O(rx_buff[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_buff[7]_i_1 
       (.I0(rx),
        .I1(rx_buff[7]),
        .I2(rx_data[7]),
        .O(\rx_buff[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \rx_buff[7]_i_2 
       (.I0(rx_state[0]),
        .I1(posedge_baud_clk_reg_n_0),
        .I2(\rx_pos_reg_n_0_[1] ),
        .I3(\rx_pos_reg_n_0_[0] ),
        .I4(\rx_pos_reg_n_0_[2] ),
        .I5(rx_state[1]),
        .O(rx_buff[7]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_buff_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_buff[0]_i_1_n_0 ),
        .Q(rx_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_buff_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_buff[1]_i_1_n_0 ),
        .Q(rx_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_buff_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_buff[2]_i_1_n_0 ),
        .Q(rx_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_buff_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_buff[3]_i_1_n_0 ),
        .Q(rx_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_buff_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_buff[4]_i_1_n_0 ),
        .Q(rx_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_buff_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_buff[5]_i_1_n_0 ),
        .Q(rx_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_buff_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_buff[6]_i_1_n_0 ),
        .Q(rx_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_buff_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_buff[7]_i_1_n_0 ),
        .Q(rx_data[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCBFF3000)) 
    \rx_pos[0]_i_1 
       (.I0(rx),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(posedge_baud_clk_reg_n_0),
        .I4(\rx_pos_reg_n_0_[0] ),
        .O(\rx_pos[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF5CFFFFF0A000000)) 
    \rx_pos[1]_i_1 
       (.I0(\rx_pos_reg_n_0_[0] ),
        .I1(rx),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(posedge_baud_clk_reg_n_0),
        .I5(\rx_pos_reg_n_0_[1] ),
        .O(\rx_pos[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F70FFFF8F800000)) 
    \rx_pos[2]_i_1 
       (.I0(\rx_pos_reg_n_0_[0] ),
        .I1(\rx_pos_reg_n_0_[1] ),
        .I2(rx_state[1]),
        .I3(rx),
        .I4(rx_pos),
        .I5(\rx_pos_reg_n_0_[2] ),
        .O(\rx_pos[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3400)) 
    \rx_pos[2]_i_2 
       (.I0(rx),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(posedge_baud_clk_reg_n_0),
        .O(rx_pos));
  FDRE #(
    .INIT(1'b0)) 
    \rx_pos_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_pos[0]_i_1_n_0 ),
        .Q(\rx_pos_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_pos_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_pos[1]_i_1_n_0 ),
        .Q(\rx_pos_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_pos_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_pos[2]_i_1_n_0 ),
        .Q(\rx_pos_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFCFF88880000)) 
    rx_ready_i_1
       (.I0(posedge_baud_clk_reg_n_0),
        .I1(rx_state[0]),
        .I2(rx_start_bit_buff[0]),
        .I3(rx_start_bit_buff[1]),
        .I4(rx_state[1]),
        .I5(rx_ready),
        .O(rx_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(rx_ready_i_1_n_0),
        .Q(rx_ready),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_start_bit_buff_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rx),
        .Q(rx_start_bit_buff[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_start_bit_buff_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_start_bit_buff[0]),
        .Q(rx_start_bit_buff[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \trans_flag_buff_reg[0] 
       (.C(baud_clk_reg_n_0),
        .CE(1'b1),
        .D(tx_start_trans),
        .Q(trans_flag_buff[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \trans_flag_buff_reg[1] 
       (.C(baud_clk_reg_n_0),
        .CE(1'b1),
        .D(trans_flag_buff[0]),
        .Q(trans_flag_buff[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF2C2F2F2F2C2C2C2)) 
    tx_i_1
       (.I0(tx),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(tx_i_2_n_0),
        .I4(\tx_pos_reg_n_0_[2] ),
        .I5(tx_i_3_n_0),
        .O(tx_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i_2
       (.I0(tx_buff[7]),
        .I1(tx_buff[6]),
        .I2(\tx_pos_reg_n_0_[1] ),
        .I3(tx_buff[5]),
        .I4(\tx_pos_reg_n_0_[0] ),
        .I5(tx_buff[4]),
        .O(tx_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i_3
       (.I0(tx_buff[3]),
        .I1(tx_buff[2]),
        .I2(\tx_pos_reg_n_0_[1] ),
        .I3(tx_buff[1]),
        .I4(\tx_pos_reg_n_0_[0] ),
        .I5(tx_buff[0]),
        .O(tx_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hD9449944)) 
    \tx_pos[0]_i_1 
       (.I0(tx_state[0]),
        .I1(tx_state[1]),
        .I2(\tx_pos_reg_n_0_[2] ),
        .I3(\tx_pos_reg_n_0_[0] ),
        .I4(\tx_pos_reg_n_0_[1] ),
        .O(\tx_pos[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hD9DD4400)) 
    \tx_pos[1]_i_1 
       (.I0(tx_state[0]),
        .I1(tx_state[1]),
        .I2(\tx_pos_reg_n_0_[2] ),
        .I3(\tx_pos_reg_n_0_[0] ),
        .I4(\tx_pos_reg_n_0_[1] ),
        .O(\tx_pos[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hD4D0D0D0)) 
    \tx_pos[2]_i_1 
       (.I0(tx_state[0]),
        .I1(tx_state[1]),
        .I2(\tx_pos_reg_n_0_[2] ),
        .I3(\tx_pos_reg_n_0_[0] ),
        .I4(\tx_pos_reg_n_0_[1] ),
        .O(\tx_pos[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_pos_reg[0] 
       (.C(baud_clk_reg_n_0),
        .CE(1'b1),
        .D(\tx_pos[0]_i_1_n_0 ),
        .Q(\tx_pos_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_pos_reg[1] 
       (.C(baud_clk_reg_n_0),
        .CE(1'b1),
        .D(\tx_pos[1]_i_1_n_0 ),
        .Q(\tx_pos_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_pos_reg[2] 
       (.C(baud_clk_reg_n_0),
        .CE(1'b1),
        .D(\tx_pos[2]_i_1_n_0 ),
        .Q(\tx_pos_reg_n_0_[2] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    tx_ready_INST_0
       (.I0(tx_state[0]),
        .I1(tx_state[1]),
        .O(tx_ready));
  FDRE #(
    .INIT(1'b1)) 
    tx_reg
       (.C(baud_clk_reg_n_0),
        .CE(1'b1),
        .D(tx_i_1_n_0),
        .Q(tx),
        .R(1'b0));
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
