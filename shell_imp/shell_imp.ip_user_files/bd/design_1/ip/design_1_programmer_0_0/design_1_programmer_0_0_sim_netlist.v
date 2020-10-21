// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Oct 10 18:08:30 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_programmer_0_0/design_1_programmer_0_0_sim_netlist.v
// Design      : design_1_programmer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_programmer_0_0,programmer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "programmer,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_programmer_0_0
   (clk,
    rx_ready,
    tx_ready,
    rx_data,
    tx_buff,
    tx_start_trans,
    addr,
    dout,
    din,
    prog_mem_wr,
    data_mem_wr);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clock_gen/clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  input rx_ready;
  input tx_ready;
  input [7:0]rx_data;
  output [7:0]tx_buff;
  output tx_start_trans;
  output [15:0]addr;
  output [15:0]dout;
  input [7:0]din;
  output prog_mem_wr;
  output data_mem_wr;

  wire [15:0]addr;
  wire clk;
  wire data_mem_wr;
  wire [7:0]din;
  wire [15:0]dout;
  wire prog_mem_wr;
  wire [7:0]rx_data;
  wire rx_ready;
  wire [7:0]tx_buff;
  wire tx_ready;
  wire tx_start_trans;

  design_1_programmer_0_0_programmer U0
       (.addr(addr),
        .clk(clk),
        .data_mem_wr(data_mem_wr),
        .din(din),
        .dout(dout),
        .prog_mem_wr(prog_mem_wr),
        .rx_data(rx_data),
        .rx_ready(rx_ready),
        .tx_buff(tx_buff),
        .tx_ready(tx_ready),
        .tx_start_trans(tx_start_trans));
endmodule

(* ORIG_REF_NAME = "programmer" *) 
module design_1_programmer_0_0_programmer
   (tx_buff,
    addr,
    dout,
    tx_start_trans,
    prog_mem_wr,
    data_mem_wr,
    clk,
    rx_ready,
    rx_data,
    din,
    tx_ready);
  output [7:0]tx_buff;
  output [15:0]addr;
  output [15:0]dout;
  output tx_start_trans;
  output prog_mem_wr;
  output data_mem_wr;
  input clk;
  input rx_ready;
  input [7:0]rx_data;
  input [7:0]din;
  input tx_ready;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state[6]_i_4_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire [15:0]addr;
  wire \addr[15]_i_1_n_0 ;
  wire \addr[7]_i_1_n_0 ;
  wire clk;
  wire cmd;
  wire \cmd_reg_n_0_[0] ;
  wire \cmd_reg_n_0_[1] ;
  wire \cmd_reg_n_0_[2] ;
  wire \cmd_reg_n_0_[3] ;
  wire \cmd_reg_n_0_[4] ;
  wire \cmd_reg_n_0_[5] ;
  wire \cmd_reg_n_0_[6] ;
  wire \cmd_reg_n_0_[7] ;
  wire data_mem_wr;
  wire data_mem_wr_i_1_n_0;
  wire [7:0]delay_cnt;
  wire \delay_cnt[0]_i_1_n_0 ;
  wire \delay_cnt[1]_i_1_n_0 ;
  wire \delay_cnt[2]_i_1_n_0 ;
  wire \delay_cnt[3]_i_1_n_0 ;
  wire \delay_cnt[4]_i_1_n_0 ;
  wire \delay_cnt[5]_i_1_n_0 ;
  wire \delay_cnt[5]_i_2_n_0 ;
  wire \delay_cnt[6]_i_1_n_0 ;
  wire \delay_cnt[6]_i_2_n_0 ;
  wire \delay_cnt[6]_i_3_n_0 ;
  wire \delay_cnt[6]_i_4_n_0 ;
  wire \delay_cnt[6]_i_5_n_0 ;
  wire \delay_cnt[7]_i_1_n_0 ;
  wire \delay_cnt[7]_i_2_n_0 ;
  wire [7:0]din;
  wire [15:0]dout;
  wire \dout[15]_i_1_n_0 ;
  wire \dout[7]_i_1_n_0 ;
  wire [1:1]p_0_in;
  wire prog_mem_wr;
  wire prog_mem_wr_i_1_n_0;
  wire prog_mem_wr_i_2_n_0;
  wire prog_mem_wr_i_3_n_0;
  wire prog_mem_wr_i_4_n_0;
  wire [7:0]rx_data;
  wire rx_ready;
  wire \rx_ready_buff_reg_n_0_[1] ;
  wire [7:0]tx_buff;
  wire \tx_buff[7]_i_1_n_0 ;
  wire tx_ready;
  wire tx_start_trans;
  wire tx_start_trans_i_1_n_0;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFD0D0D0)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(p_0_in),
        .I1(\rx_ready_buff_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(tx_ready),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(\rx_ready_buff_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_0_in),
        .I2(\rx_ready_buff_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444F44444444444)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(tx_ready),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(prog_mem_wr_i_2_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\rx_ready_buff_reg_n_0_[1] ),
        .I5(p_0_in),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAA30AAAA)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(prog_mem_wr_i_2_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\rx_ready_buff_reg_n_0_[1] ),
        .I4(p_0_in),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(p_0_in),
        .I2(\rx_ready_buff_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state[6]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state[6]_i_3_n_0 ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(delay_cnt[1]),
        .I1(delay_cnt[6]),
        .I2(delay_cnt[7]),
        .I3(delay_cnt[2]),
        .I4(\FSM_onehot_state[6]_i_4_n_0 ),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(delay_cnt[4]),
        .I1(delay_cnt[3]),
        .I2(delay_cnt[5]),
        .I3(delay_cnt[0]),
        .O(\FSM_onehot_state[6]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "GET_ADDR0:0000010,GET_ADDR1:0000100,WRITE0:0010000,WRITE1:0100000,DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC:1000000,READ:0001000,WAIT_FOR_CMD:0000001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "GET_ADDR0:0000010,GET_ADDR1:0000100,WRITE0:0010000,WRITE1:0100000,DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC:1000000,READ:0001000,WAIT_FOR_CMD:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "GET_ADDR0:0000010,GET_ADDR1:0000100,WRITE0:0010000,WRITE1:0100000,DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC:1000000,READ:0001000,WAIT_FOR_CMD:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "GET_ADDR0:0000010,GET_ADDR1:0000100,WRITE0:0010000,WRITE1:0100000,DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC:1000000,READ:0001000,WAIT_FOR_CMD:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "GET_ADDR0:0000010,GET_ADDR1:0000100,WRITE0:0010000,WRITE1:0100000,DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC:1000000,READ:0001000,WAIT_FOR_CMD:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "GET_ADDR0:0000010,GET_ADDR1:0000100,WRITE0:0010000,WRITE1:0100000,DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC:1000000,READ:0001000,WAIT_FOR_CMD:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "GET_ADDR0:0000010,GET_ADDR1:0000100,WRITE0:0010000,WRITE1:0100000,DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC:1000000,READ:0001000,WAIT_FOR_CMD:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\dout[15]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    \addr[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\rx_ready_buff_reg_n_0_[1] ),
        .I2(p_0_in),
        .O(\addr[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \addr[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_ready_buff_reg_n_0_[1] ),
        .I2(p_0_in),
        .O(\addr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clk),
        .CE(\addr[7]_i_1_n_0 ),
        .D(rx_data[0]),
        .Q(addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[10] 
       (.C(clk),
        .CE(\addr[15]_i_1_n_0 ),
        .D(rx_data[2]),
        .Q(addr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[11] 
       (.C(clk),
        .CE(\addr[15]_i_1_n_0 ),
        .D(rx_data[3]),
        .Q(addr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[12] 
       (.C(clk),
        .CE(\addr[15]_i_1_n_0 ),
        .D(rx_data[4]),
        .Q(addr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[13] 
       (.C(clk),
        .CE(\addr[15]_i_1_n_0 ),
        .D(rx_data[5]),
        .Q(addr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[14] 
       (.C(clk),
        .CE(\addr[15]_i_1_n_0 ),
        .D(rx_data[6]),
        .Q(addr[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[15] 
       (.C(clk),
        .CE(\addr[15]_i_1_n_0 ),
        .D(rx_data[7]),
        .Q(addr[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clk),
        .CE(\addr[7]_i_1_n_0 ),
        .D(rx_data[1]),
        .Q(addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clk),
        .CE(\addr[7]_i_1_n_0 ),
        .D(rx_data[2]),
        .Q(addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clk),
        .CE(\addr[7]_i_1_n_0 ),
        .D(rx_data[3]),
        .Q(addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clk),
        .CE(\addr[7]_i_1_n_0 ),
        .D(rx_data[4]),
        .Q(addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(clk),
        .CE(\addr[7]_i_1_n_0 ),
        .D(rx_data[5]),
        .Q(addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(clk),
        .CE(\addr[7]_i_1_n_0 ),
        .D(rx_data[6]),
        .Q(addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(clk),
        .CE(\addr[7]_i_1_n_0 ),
        .D(rx_data[7]),
        .Q(addr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[8] 
       (.C(clk),
        .CE(\addr[15]_i_1_n_0 ),
        .D(rx_data[0]),
        .Q(addr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[9] 
       (.C(clk),
        .CE(\addr[15]_i_1_n_0 ),
        .D(rx_data[1]),
        .Q(addr[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    \cmd[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\rx_ready_buff_reg_n_0_[1] ),
        .I2(p_0_in),
        .O(cmd));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[0] 
       (.C(clk),
        .CE(cmd),
        .D(rx_data[0]),
        .Q(\cmd_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[1] 
       (.C(clk),
        .CE(cmd),
        .D(rx_data[1]),
        .Q(\cmd_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[2] 
       (.C(clk),
        .CE(cmd),
        .D(rx_data[2]),
        .Q(\cmd_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[3] 
       (.C(clk),
        .CE(cmd),
        .D(rx_data[3]),
        .Q(\cmd_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[4] 
       (.C(clk),
        .CE(cmd),
        .D(rx_data[4]),
        .Q(\cmd_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[5] 
       (.C(clk),
        .CE(cmd),
        .D(rx_data[5]),
        .Q(\cmd_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[6] 
       (.C(clk),
        .CE(cmd),
        .D(rx_data[6]),
        .Q(\cmd_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[7] 
       (.C(clk),
        .CE(cmd),
        .D(rx_data[7]),
        .Q(\cmd_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF55FFFFFB000000)) 
    data_mem_wr_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\cmd_reg_n_0_[0] ),
        .I2(prog_mem_wr_i_2_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(prog_mem_wr_i_3_n_0),
        .I5(data_mem_wr),
        .O(data_mem_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_mem_wr_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_mem_wr_i_1_n_0),
        .Q(data_mem_wr),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(delay_cnt[0]),
        .O(\delay_cnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F80)) 
    \delay_cnt[1]_i_1 
       (.I0(delay_cnt[0]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\delay_cnt[6]_i_1_n_0 ),
        .I3(delay_cnt[1]),
        .O(\delay_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \delay_cnt[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(delay_cnt[2]),
        .I2(delay_cnt[1]),
        .I3(delay_cnt[0]),
        .O(\delay_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F00FFFF80000000)) 
    \delay_cnt[3]_i_1 
       (.I0(delay_cnt[2]),
        .I1(delay_cnt[1]),
        .I2(delay_cnt[0]),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\delay_cnt[6]_i_1_n_0 ),
        .I5(delay_cnt[3]),
        .O(\delay_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \delay_cnt[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(delay_cnt[4]),
        .I2(delay_cnt[2]),
        .I3(delay_cnt[1]),
        .I4(delay_cnt[0]),
        .I5(delay_cnt[3]),
        .O(\delay_cnt[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[5]_i_1 
       (.I0(\delay_cnt[6]_i_1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\delay_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \delay_cnt[5]_i_2 
       (.I0(delay_cnt[5]),
        .I1(delay_cnt[3]),
        .I2(delay_cnt[4]),
        .I3(delay_cnt[2]),
        .I4(delay_cnt[1]),
        .I5(delay_cnt[0]),
        .O(\delay_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFAAAAAAAA)) 
    \delay_cnt[6]_i_1 
       (.I0(\dout[15]_i_1_n_0 ),
        .I1(\delay_cnt[6]_i_3_n_0 ),
        .I2(delay_cnt[0]),
        .I3(delay_cnt[5]),
        .I4(\delay_cnt[6]_i_4_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\delay_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \delay_cnt[6]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(delay_cnt[6]),
        .I2(delay_cnt[5]),
        .I3(\delay_cnt[6]_i_5_n_0 ),
        .I4(delay_cnt[4]),
        .I5(delay_cnt[3]),
        .O(\delay_cnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \delay_cnt[6]_i_3 
       (.I0(delay_cnt[2]),
        .I1(delay_cnt[7]),
        .I2(delay_cnt[6]),
        .I3(delay_cnt[1]),
        .O(\delay_cnt[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \delay_cnt[6]_i_4 
       (.I0(delay_cnt[3]),
        .I1(delay_cnt[4]),
        .O(\delay_cnt[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \delay_cnt[6]_i_5 
       (.I0(delay_cnt[2]),
        .I1(delay_cnt[1]),
        .I2(delay_cnt[0]),
        .O(\delay_cnt[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \delay_cnt[7]_i_1 
       (.I0(\delay_cnt[7]_i_2_n_0 ),
        .I1(delay_cnt[6]),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\delay_cnt[6]_i_1_n_0 ),
        .I4(delay_cnt[7]),
        .O(\delay_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \delay_cnt[7]_i_2 
       (.I0(delay_cnt[3]),
        .I1(delay_cnt[4]),
        .I2(delay_cnt[2]),
        .I3(delay_cnt[1]),
        .I4(delay_cnt[0]),
        .I5(delay_cnt[5]),
        .O(\delay_cnt[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[0] 
       (.C(clk),
        .CE(\delay_cnt[6]_i_1_n_0 ),
        .D(\delay_cnt[0]_i_1_n_0 ),
        .Q(delay_cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\delay_cnt[1]_i_1_n_0 ),
        .Q(delay_cnt[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[2] 
       (.C(clk),
        .CE(\delay_cnt[6]_i_1_n_0 ),
        .D(\delay_cnt[2]_i_1_n_0 ),
        .Q(delay_cnt[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\delay_cnt[3]_i_1_n_0 ),
        .Q(delay_cnt[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[4] 
       (.C(clk),
        .CE(\delay_cnt[6]_i_1_n_0 ),
        .D(\delay_cnt[4]_i_1_n_0 ),
        .Q(delay_cnt[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[5] 
       (.C(clk),
        .CE(\delay_cnt[6]_i_1_n_0 ),
        .D(\delay_cnt[5]_i_2_n_0 ),
        .Q(delay_cnt[5]),
        .R(\delay_cnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[6] 
       (.C(clk),
        .CE(\delay_cnt[6]_i_1_n_0 ),
        .D(\delay_cnt[6]_i_2_n_0 ),
        .Q(delay_cnt[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\delay_cnt[7]_i_1_n_0 ),
        .Q(delay_cnt[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    \dout[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\rx_ready_buff_reg_n_0_[1] ),
        .I2(p_0_in),
        .O(\dout[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \dout[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\rx_ready_buff_reg_n_0_[1] ),
        .I2(p_0_in),
        .O(\dout[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(rx_data[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[10] 
       (.C(clk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(rx_data[2]),
        .Q(dout[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[11] 
       (.C(clk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(rx_data[3]),
        .Q(dout[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[12] 
       (.C(clk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(rx_data[4]),
        .Q(dout[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[13] 
       (.C(clk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(rx_data[5]),
        .Q(dout[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[14] 
       (.C(clk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(rx_data[6]),
        .Q(dout[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[15] 
       (.C(clk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(rx_data[7]),
        .Q(dout[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(rx_data[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(rx_data[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(rx_data[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(rx_data[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(rx_data[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(rx_data[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(rx_data[7]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[8] 
       (.C(clk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(rx_data[0]),
        .Q(dout[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[9] 
       (.C(clk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(rx_data[1]),
        .Q(dout[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF55FFFFAE000000)) 
    prog_mem_wr_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\cmd_reg_n_0_[0] ),
        .I2(prog_mem_wr_i_2_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(prog_mem_wr_i_3_n_0),
        .I5(prog_mem_wr),
        .O(prog_mem_wr_i_1_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    prog_mem_wr_i_2
       (.I0(\cmd_reg_n_0_[3] ),
        .I1(\cmd_reg_n_0_[7] ),
        .I2(\cmd_reg_n_0_[5] ),
        .I3(prog_mem_wr_i_4_n_0),
        .O(prog_mem_wr_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    prog_mem_wr_i_3
       (.I0(p_0_in),
        .I1(\rx_ready_buff_reg_n_0_[1] ),
        .O(prog_mem_wr_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    prog_mem_wr_i_4
       (.I0(\cmd_reg_n_0_[2] ),
        .I1(\cmd_reg_n_0_[1] ),
        .I2(\cmd_reg_n_0_[6] ),
        .I3(\cmd_reg_n_0_[4] ),
        .O(prog_mem_wr_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    prog_mem_wr_reg
       (.C(clk),
        .CE(1'b1),
        .D(prog_mem_wr_i_1_n_0),
        .Q(prog_mem_wr),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_ready_buff_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_ready),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_ready_buff_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\rx_ready_buff_reg_n_0_[1] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_buff[7]_i_1 
       (.I0(tx_ready),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\tx_buff[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buff_reg[0] 
       (.C(clk),
        .CE(\tx_buff[7]_i_1_n_0 ),
        .D(din[0]),
        .Q(tx_buff[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buff_reg[1] 
       (.C(clk),
        .CE(\tx_buff[7]_i_1_n_0 ),
        .D(din[1]),
        .Q(tx_buff[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buff_reg[2] 
       (.C(clk),
        .CE(\tx_buff[7]_i_1_n_0 ),
        .D(din[2]),
        .Q(tx_buff[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buff_reg[3] 
       (.C(clk),
        .CE(\tx_buff[7]_i_1_n_0 ),
        .D(din[3]),
        .Q(tx_buff[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buff_reg[4] 
       (.C(clk),
        .CE(\tx_buff[7]_i_1_n_0 ),
        .D(din[4]),
        .Q(tx_buff[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buff_reg[5] 
       (.C(clk),
        .CE(\tx_buff[7]_i_1_n_0 ),
        .D(din[5]),
        .Q(tx_buff[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buff_reg[6] 
       (.C(clk),
        .CE(\tx_buff[7]_i_1_n_0 ),
        .D(din[6]),
        .Q(tx_buff[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buff_reg[7] 
       (.C(clk),
        .CE(\tx_buff[7]_i_1_n_0 ),
        .D(din[7]),
        .Q(tx_buff[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF8FFFFF88888888)) 
    tx_start_trans_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(tx_ready),
        .I2(p_0_in),
        .I3(\rx_ready_buff_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(tx_start_trans),
        .O(tx_start_trans_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_start_trans_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_start_trans_i_1_n_0),
        .Q(tx_start_trans),
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
