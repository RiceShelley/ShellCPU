// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct 20 19:56:01 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_programmer_0_0_sim_netlist.v
// Design      : design_1_programmer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_programmer_0_0,programmer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "programmer,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
    data_mem_wr,
    prog_mode,
    cpu_clk_en,
    cpu_rst);
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
  output prog_mode;
  output cpu_clk_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 cpu_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME cpu_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output cpu_rst;

  wire [15:0]addr;
  wire clk;
  wire cpu_clk_en;
  wire cpu_rst;
  wire data_mem_wr;
  wire [7:0]din;
  wire [15:0]dout;
  wire prog_mem_wr;
  wire prog_mode;
  wire [7:0]rx_data;
  wire rx_ready;
  wire [7:0]tx_buff;
  wire tx_ready;
  wire tx_start_trans;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_programmer U0
       (.addr(addr),
        .clk(clk),
        .cpu_clk_en(cpu_clk_en),
        .cpu_rst(cpu_rst),
        .data_mem_wr(data_mem_wr),
        .din(din),
        .dout(dout),
        .prog_mem_wr(prog_mem_wr),
        .prog_mode(prog_mode),
        .rx_data(rx_data),
        .rx_ready(rx_ready),
        .tx_buff(tx_buff),
        .tx_ready(tx_ready),
        .tx_start_trans(tx_start_trans));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_programmer
   (tx_buff,
    addr,
    dout,
    tx_start_trans,
    prog_mem_wr,
    data_mem_wr,
    cpu_rst,
    cpu_clk_en,
    prog_mode,
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
  output cpu_rst;
  output cpu_clk_en;
  output prog_mode;
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
  wire cpu_clk_en;
  wire cpu_clk_en_i_1_n_0;
  wire cpu_rst;
  wire cpu_rst_i_1_n_0;
  wire cpu_rst_i_2_n_0;
  wire cpu_rst_i_3_n_0;
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
  wire \delay_cnt[7]_i_1_n_0 ;
  wire \delay_cnt[7]_i_2_n_0 ;
  wire \delay_cnt[7]_i_3_n_0 ;
  wire \delay_cnt[7]_i_4_n_0 ;
  wire [7:0]din;
  wire [15:0]dout;
  wire \dout[15]_i_1_n_0 ;
  wire \dout[7]_i_1_n_0 ;
  wire prog_mem_wr;
  wire prog_mem_wr_i_1_n_0;
  wire prog_mem_wr_i_2_n_0;
  wire prog_mem_wr_i_3_n_0;
  wire prog_mem_wr_i_4_n_0;
  wire prog_mode;
  wire prog_mode_i_1_n_0;
  wire prog_mode_i_2_n_0;
  wire prog_mode_i_3_n_0;
  wire prog_mode_i_4_n_0;
  wire [7:0]rx_data;
  wire rx_ready;
  wire [1:0]rx_ready_buff;
  wire [7:0]tx_buff;
  wire \tx_buff[7]_i_1_n_0 ;
  wire tx_ready;
  wire tx_start_trans;
  wire tx_start_trans_i_1_n_0;

  LUT6 #(
    .INIT(64'hFFEAEAEAFFEAFFEA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(tx_ready),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(rx_ready_buff[1]),
        .I5(rx_ready_buff[0]),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(rx_ready_buff[1]),
        .I2(rx_ready_buff[0]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(rx_ready_buff[1]),
        .I2(rx_ready_buff[0]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(rx_ready_buff[0]),
        .I2(rx_ready_buff[1]),
        .I3(prog_mem_wr_i_2_n_0),
        .I4(tx_ready),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF044F0F0)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(prog_mem_wr_i_2_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(rx_ready_buff[1]),
        .I4(rx_ready_buff[0]),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(rx_ready_buff[1]),
        .I2(rx_ready_buff[0]),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state[6]_i_2_n_0 ),
        .I1(\FSM_onehot_state[6]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFAAFFAAFBAA)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(rx_ready_buff[0]),
        .I2(rx_ready_buff[1]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state[6]_i_4_n_0 ),
        .I5(prog_mode_i_2_n_0),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\delay_cnt[7]_i_4_n_0 ),
        .I2(delay_cnt[7]),
        .I3(delay_cnt[2]),
        .I4(delay_cnt[1]),
        .I5(delay_cnt[0]),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF75F)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(rx_data[7]),
        .I1(rx_data[0]),
        .I2(rx_data[2]),
        .I3(rx_data[1]),
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
    .INIT(8'h08)) 
    \addr[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(rx_ready_buff[0]),
        .I2(rx_ready_buff[1]),
        .O(\addr[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \addr[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(rx_ready_buff[0]),
        .I2(rx_ready_buff[1]),
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
  LUT6 #(
    .INIT(64'hFFBFBBFF00000000)) 
    \cmd[7]_i_1 
       (.I0(prog_mode_i_2_n_0),
        .I1(rx_data[7]),
        .I2(rx_data[0]),
        .I3(rx_data[2]),
        .I4(rx_data[1]),
        .I5(prog_mode_i_4_n_0),
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
    .INIT(64'hFFFBFFFF00040000)) 
    cpu_clk_en_i_1
       (.I0(prog_mode_i_2_n_0),
        .I1(prog_mode_i_3_n_0),
        .I2(rx_data[0]),
        .I3(rx_data[1]),
        .I4(prog_mode_i_4_n_0),
        .I5(cpu_clk_en),
        .O(cpu_clk_en_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    cpu_clk_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(cpu_clk_en_i_1_n_0),
        .Q(cpu_clk_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    cpu_rst_i_1
       (.I0(rx_data[4]),
        .I1(rx_data[3]),
        .I2(rx_data[6]),
        .I3(rx_data[5]),
        .I4(cpu_rst_i_2_n_0),
        .I5(cpu_rst),
        .O(cpu_rst_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    cpu_rst_i_2
       (.I0(rx_data[7]),
        .I1(rx_data[2]),
        .I2(rx_data[0]),
        .I3(rx_data[1]),
        .I4(cpu_rst_i_3_n_0),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(cpu_rst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    cpu_rst_i_3
       (.I0(rx_ready_buff[1]),
        .I1(rx_ready_buff[0]),
        .O(cpu_rst_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cpu_rst_reg
       (.C(clk),
        .CE(1'b1),
        .D(cpu_rst_i_1_n_0),
        .Q(cpu_rst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAFFAAAAAA8A)) 
    data_mem_wr_i_1
       (.I0(\dout[15]_i_1_n_0 ),
        .I1(prog_mem_wr_i_2_n_0),
        .I2(\cmd_reg_n_0_[0] ),
        .I3(cmd),
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(delay_cnt[0]),
        .O(\delay_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \delay_cnt[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(delay_cnt[0]),
        .I2(delay_cnt[1]),
        .O(\delay_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \delay_cnt[2]_i_1 
       (.I0(delay_cnt[0]),
        .I1(delay_cnt[1]),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(delay_cnt[2]),
        .O(\delay_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h48888888)) 
    \delay_cnt[3]_i_1 
       (.I0(delay_cnt[3]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(delay_cnt[2]),
        .I3(delay_cnt[0]),
        .I4(delay_cnt[1]),
        .O(\delay_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6CCCCCCC00000000)) 
    \delay_cnt[4]_i_1 
       (.I0(delay_cnt[3]),
        .I1(delay_cnt[4]),
        .I2(delay_cnt[2]),
        .I3(delay_cnt[0]),
        .I4(delay_cnt[1]),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\delay_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F078F000000000)) 
    \delay_cnt[5]_i_1 
       (.I0(delay_cnt[3]),
        .I1(delay_cnt[4]),
        .I2(delay_cnt[5]),
        .I3(delay_cnt[2]),
        .I4(\delay_cnt[5]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\delay_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \delay_cnt[5]_i_2 
       (.I0(delay_cnt[0]),
        .I1(delay_cnt[1]),
        .O(\delay_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9CCCCCCC00000000)) 
    \delay_cnt[6]_i_1 
       (.I0(\delay_cnt[6]_i_2_n_0 ),
        .I1(delay_cnt[6]),
        .I2(delay_cnt[2]),
        .I3(delay_cnt[0]),
        .I4(delay_cnt[1]),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\delay_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \delay_cnt[6]_i_2 
       (.I0(delay_cnt[4]),
        .I1(delay_cnt[3]),
        .I2(delay_cnt[5]),
        .O(\delay_cnt[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \delay_cnt[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\delay_cnt[7]_i_3_n_0 ),
        .I2(rx_ready_buff[1]),
        .I3(rx_ready_buff[0]),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\delay_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9CCCCCCC00000000)) 
    \delay_cnt[7]_i_2 
       (.I0(\delay_cnt[7]_i_4_n_0 ),
        .I1(delay_cnt[7]),
        .I2(delay_cnt[2]),
        .I3(delay_cnt[0]),
        .I4(delay_cnt[1]),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\delay_cnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \delay_cnt[7]_i_3 
       (.I0(delay_cnt[0]),
        .I1(delay_cnt[1]),
        .I2(delay_cnt[2]),
        .I3(delay_cnt[7]),
        .I4(\delay_cnt[7]_i_4_n_0 ),
        .O(\delay_cnt[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \delay_cnt[7]_i_4 
       (.I0(delay_cnt[5]),
        .I1(delay_cnt[3]),
        .I2(delay_cnt[4]),
        .I3(delay_cnt[6]),
        .O(\delay_cnt[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[0] 
       (.C(clk),
        .CE(\delay_cnt[7]_i_1_n_0 ),
        .D(\delay_cnt[0]_i_1_n_0 ),
        .Q(delay_cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[1] 
       (.C(clk),
        .CE(\delay_cnt[7]_i_1_n_0 ),
        .D(\delay_cnt[1]_i_1_n_0 ),
        .Q(delay_cnt[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[2] 
       (.C(clk),
        .CE(\delay_cnt[7]_i_1_n_0 ),
        .D(\delay_cnt[2]_i_1_n_0 ),
        .Q(delay_cnt[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[3] 
       (.C(clk),
        .CE(\delay_cnt[7]_i_1_n_0 ),
        .D(\delay_cnt[3]_i_1_n_0 ),
        .Q(delay_cnt[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[4] 
       (.C(clk),
        .CE(\delay_cnt[7]_i_1_n_0 ),
        .D(\delay_cnt[4]_i_1_n_0 ),
        .Q(delay_cnt[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[5] 
       (.C(clk),
        .CE(\delay_cnt[7]_i_1_n_0 ),
        .D(\delay_cnt[5]_i_1_n_0 ),
        .Q(delay_cnt[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[6] 
       (.C(clk),
        .CE(\delay_cnt[7]_i_1_n_0 ),
        .D(\delay_cnt[6]_i_1_n_0 ),
        .Q(delay_cnt[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[7] 
       (.C(clk),
        .CE(\delay_cnt[7]_i_1_n_0 ),
        .D(\delay_cnt[7]_i_2_n_0 ),
        .Q(delay_cnt[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \dout[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(rx_ready_buff[0]),
        .I2(rx_ready_buff[1]),
        .O(\dout[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \dout[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(rx_ready_buff[0]),
        .I2(rx_ready_buff[1]),
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
    .INIT(64'hF0F0F0FFF0F0F040)) 
    prog_mem_wr_i_1
       (.I0(prog_mem_wr_i_2_n_0),
        .I1(\cmd_reg_n_0_[0] ),
        .I2(\dout[15]_i_1_n_0 ),
        .I3(cmd),
        .I4(prog_mem_wr_i_3_n_0),
        .I5(prog_mem_wr),
        .O(prog_mem_wr_i_1_n_0));
  LUT4 #(
    .INIT(16'hBFFF)) 
    prog_mem_wr_i_2
       (.I0(prog_mem_wr_i_4_n_0),
        .I1(\cmd_reg_n_0_[1] ),
        .I2(\cmd_reg_n_0_[6] ),
        .I3(\cmd_reg_n_0_[7] ),
        .O(prog_mem_wr_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    prog_mem_wr_i_3
       (.I0(delay_cnt[7]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(delay_cnt[2]),
        .I3(delay_cnt[1]),
        .I4(delay_cnt[0]),
        .I5(\delay_cnt[7]_i_4_n_0 ),
        .O(prog_mem_wr_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    prog_mem_wr_i_4
       (.I0(\cmd_reg_n_0_[3] ),
        .I1(\cmd_reg_n_0_[2] ),
        .I2(\cmd_reg_n_0_[5] ),
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
  LUT6 #(
    .INIT(64'hFFBFFFFF00400000)) 
    prog_mode_i_1
       (.I0(prog_mode_i_2_n_0),
        .I1(prog_mode_i_3_n_0),
        .I2(rx_data[0]),
        .I3(rx_data[1]),
        .I4(prog_mode_i_4_n_0),
        .I5(prog_mode),
        .O(prog_mode_i_1_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    prog_mode_i_2
       (.I0(rx_data[4]),
        .I1(rx_data[3]),
        .I2(rx_data[6]),
        .I3(rx_data[5]),
        .O(prog_mode_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    prog_mode_i_3
       (.I0(rx_data[2]),
        .I1(rx_data[7]),
        .O(prog_mode_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    prog_mode_i_4
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(rx_ready_buff[0]),
        .I2(rx_ready_buff[1]),
        .O(prog_mode_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    prog_mode_reg
       (.C(clk),
        .CE(1'b1),
        .D(prog_mode_i_1_n_0),
        .Q(prog_mode),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_ready_buff_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_ready),
        .Q(rx_ready_buff[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_ready_buff_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_ready_buff[0]),
        .Q(rx_ready_buff[1]),
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
  LUT4 #(
    .INIT(16'h8F88)) 
    tx_start_trans_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(tx_ready),
        .I2(cmd),
        .I3(tx_start_trans),
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
