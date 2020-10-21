// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct 20 23:44:50 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_stack_ptr_reg_0_0_sim_netlist.v
// Design      : design_1_stack_ptr_reg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_stack_ptr_reg_0_0,stack_ptr_reg,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "stack_ptr_reg,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    ld_val,
    ld_en,
    dec,
    inc,
    stack_ptr,
    rst);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input [15:0]ld_val;
  input ld_en;
  input dec;
  input inc;
  output [15:0]stack_ptr;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire clk;
  wire dec;
  wire inc;
  wire ld_en;
  wire [15:0]ld_val;
  wire rst;
  wire [15:0]stack_ptr;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stack_ptr_reg U0
       (.clk(clk),
        .dec(dec),
        .inc(inc),
        .ld_en(ld_en),
        .ld_val(ld_val),
        .rst(rst),
        .\sp_reg_reg[1]_0 (stack_ptr[1]),
        .stack_ptr({stack_ptr[15:2],stack_ptr[0]}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stack_ptr_reg
   (\sp_reg_reg[1]_0 ,
    stack_ptr,
    dec,
    rst,
    clk,
    inc,
    ld_en,
    ld_val);
  output \sp_reg_reg[1]_0 ;
  output [14:0]stack_ptr;
  input dec;
  input rst;
  input clk;
  input inc;
  input ld_en;
  input [15:0]ld_val;

  wire clk;
  wire dec;
  wire inc;
  wire ld_en;
  wire [15:0]ld_val;
  wire rst;
  wire sp_reg0_carry__0_i_1_n_0;
  wire sp_reg0_carry__0_i_2_n_0;
  wire sp_reg0_carry__0_i_3_n_0;
  wire sp_reg0_carry__0_i_4_n_0;
  wire sp_reg0_carry__0_n_0;
  wire sp_reg0_carry__0_n_1;
  wire sp_reg0_carry__0_n_2;
  wire sp_reg0_carry__0_n_3;
  wire sp_reg0_carry__0_n_4;
  wire sp_reg0_carry__0_n_5;
  wire sp_reg0_carry__0_n_6;
  wire sp_reg0_carry__0_n_7;
  wire sp_reg0_carry__1_i_1_n_0;
  wire sp_reg0_carry__1_i_2_n_0;
  wire sp_reg0_carry__1_i_3_n_0;
  wire sp_reg0_carry__1_i_4_n_0;
  wire sp_reg0_carry__1_n_0;
  wire sp_reg0_carry__1_n_1;
  wire sp_reg0_carry__1_n_2;
  wire sp_reg0_carry__1_n_3;
  wire sp_reg0_carry__1_n_4;
  wire sp_reg0_carry__1_n_5;
  wire sp_reg0_carry__1_n_6;
  wire sp_reg0_carry__1_n_7;
  wire sp_reg0_carry__2_i_1_n_0;
  wire sp_reg0_carry__2_i_2_n_0;
  wire sp_reg0_carry__2_i_3_n_0;
  wire sp_reg0_carry__2_n_2;
  wire sp_reg0_carry__2_n_3;
  wire sp_reg0_carry__2_n_5;
  wire sp_reg0_carry__2_n_6;
  wire sp_reg0_carry__2_n_7;
  wire sp_reg0_carry_i_1_n_0;
  wire sp_reg0_carry_i_2_n_0;
  wire sp_reg0_carry_i_3_n_0;
  wire sp_reg0_carry_i_4_n_0;
  wire sp_reg0_carry_i_5_n_0;
  wire sp_reg0_carry_n_0;
  wire sp_reg0_carry_n_1;
  wire sp_reg0_carry_n_2;
  wire sp_reg0_carry_n_3;
  wire sp_reg0_carry_n_4;
  wire sp_reg0_carry_n_5;
  wire sp_reg0_carry_n_6;
  wire sp_reg0_carry_n_7;
  wire \sp_reg[0]_i_1_n_0 ;
  wire \sp_reg[10]_i_1_n_0 ;
  wire \sp_reg[11]_i_1_n_0 ;
  wire \sp_reg[12]_i_1_n_0 ;
  wire \sp_reg[13]_i_1_n_0 ;
  wire \sp_reg[14]_i_1_n_0 ;
  wire \sp_reg[15]_i_1_n_0 ;
  wire \sp_reg[1]_i_1_n_0 ;
  wire \sp_reg[2]_i_1_n_0 ;
  wire \sp_reg[3]_i_1_n_0 ;
  wire \sp_reg[4]_i_1_n_0 ;
  wire \sp_reg[5]_i_1_n_0 ;
  wire \sp_reg[6]_i_1_n_0 ;
  wire \sp_reg[7]_i_1_n_0 ;
  wire \sp_reg[8]_i_1_n_0 ;
  wire \sp_reg[9]_i_1_n_0 ;
  wire sp_reg_n_0;
  wire \sp_reg_reg[1]_0 ;
  wire [14:0]stack_ptr;
  wire [3:2]NLW_sp_reg0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_sp_reg0_carry__2_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hFE)) 
    sp_reg
       (.I0(dec),
        .I1(inc),
        .I2(ld_en),
        .O(sp_reg_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 sp_reg0_carry
       (.CI(1'b0),
        .CO({sp_reg0_carry_n_0,sp_reg0_carry_n_1,sp_reg0_carry_n_2,sp_reg0_carry_n_3}),
        .CYINIT(stack_ptr[0]),
        .DI({stack_ptr[2:1],\sp_reg_reg[1]_0 ,sp_reg0_carry_i_1_n_0}),
        .O({sp_reg0_carry_n_4,sp_reg0_carry_n_5,sp_reg0_carry_n_6,sp_reg0_carry_n_7}),
        .S({sp_reg0_carry_i_2_n_0,sp_reg0_carry_i_3_n_0,sp_reg0_carry_i_4_n_0,sp_reg0_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 sp_reg0_carry__0
       (.CI(sp_reg0_carry_n_0),
        .CO({sp_reg0_carry__0_n_0,sp_reg0_carry__0_n_1,sp_reg0_carry__0_n_2,sp_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(stack_ptr[6:3]),
        .O({sp_reg0_carry__0_n_4,sp_reg0_carry__0_n_5,sp_reg0_carry__0_n_6,sp_reg0_carry__0_n_7}),
        .S({sp_reg0_carry__0_i_1_n_0,sp_reg0_carry__0_i_2_n_0,sp_reg0_carry__0_i_3_n_0,sp_reg0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__0_i_1
       (.I0(stack_ptr[6]),
        .I1(stack_ptr[7]),
        .O(sp_reg0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__0_i_2
       (.I0(stack_ptr[5]),
        .I1(stack_ptr[6]),
        .O(sp_reg0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__0_i_3
       (.I0(stack_ptr[4]),
        .I1(stack_ptr[5]),
        .O(sp_reg0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__0_i_4
       (.I0(stack_ptr[3]),
        .I1(stack_ptr[4]),
        .O(sp_reg0_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 sp_reg0_carry__1
       (.CI(sp_reg0_carry__0_n_0),
        .CO({sp_reg0_carry__1_n_0,sp_reg0_carry__1_n_1,sp_reg0_carry__1_n_2,sp_reg0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(stack_ptr[10:7]),
        .O({sp_reg0_carry__1_n_4,sp_reg0_carry__1_n_5,sp_reg0_carry__1_n_6,sp_reg0_carry__1_n_7}),
        .S({sp_reg0_carry__1_i_1_n_0,sp_reg0_carry__1_i_2_n_0,sp_reg0_carry__1_i_3_n_0,sp_reg0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__1_i_1
       (.I0(stack_ptr[10]),
        .I1(stack_ptr[11]),
        .O(sp_reg0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__1_i_2
       (.I0(stack_ptr[9]),
        .I1(stack_ptr[10]),
        .O(sp_reg0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__1_i_3
       (.I0(stack_ptr[8]),
        .I1(stack_ptr[9]),
        .O(sp_reg0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__1_i_4
       (.I0(stack_ptr[7]),
        .I1(stack_ptr[8]),
        .O(sp_reg0_carry__1_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 sp_reg0_carry__2
       (.CI(sp_reg0_carry__1_n_0),
        .CO({NLW_sp_reg0_carry__2_CO_UNCONNECTED[3:2],sp_reg0_carry__2_n_2,sp_reg0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,stack_ptr[12:11]}),
        .O({NLW_sp_reg0_carry__2_O_UNCONNECTED[3],sp_reg0_carry__2_n_5,sp_reg0_carry__2_n_6,sp_reg0_carry__2_n_7}),
        .S({1'b0,sp_reg0_carry__2_i_1_n_0,sp_reg0_carry__2_i_2_n_0,sp_reg0_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__2_i_1
       (.I0(stack_ptr[13]),
        .I1(stack_ptr[14]),
        .O(sp_reg0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__2_i_2
       (.I0(stack_ptr[12]),
        .I1(stack_ptr[13]),
        .O(sp_reg0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__2_i_3
       (.I0(stack_ptr[11]),
        .I1(stack_ptr[12]),
        .O(sp_reg0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_reg0_carry_i_1
       (.I0(\sp_reg_reg[1]_0 ),
        .O(sp_reg0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry_i_2
       (.I0(stack_ptr[2]),
        .I1(stack_ptr[3]),
        .O(sp_reg0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry_i_3
       (.I0(stack_ptr[1]),
        .I1(stack_ptr[2]),
        .O(sp_reg0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry_i_4
       (.I0(\sp_reg_reg[1]_0 ),
        .I1(stack_ptr[1]),
        .O(sp_reg0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sp_reg0_carry_i_5
       (.I0(\sp_reg_reg[1]_0 ),
        .I1(dec),
        .O(sp_reg0_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \sp_reg[0]_i_1 
       (.I0(ld_val[0]),
        .I1(ld_en),
        .I2(stack_ptr[0]),
        .O(\sp_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp_reg[10]_i_1 
       (.I0(ld_val[10]),
        .I1(ld_en),
        .I2(sp_reg0_carry__1_n_6),
        .O(\sp_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp_reg[11]_i_1 
       (.I0(ld_val[11]),
        .I1(ld_en),
        .I2(sp_reg0_carry__1_n_5),
        .O(\sp_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp_reg[12]_i_1 
       (.I0(ld_val[12]),
        .I1(ld_en),
        .I2(sp_reg0_carry__1_n_4),
        .O(\sp_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp_reg[13]_i_1 
       (.I0(ld_val[13]),
        .I1(ld_en),
        .I2(sp_reg0_carry__2_n_7),
        .O(\sp_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp_reg[14]_i_1 
       (.I0(ld_val[14]),
        .I1(ld_en),
        .I2(sp_reg0_carry__2_n_6),
        .O(\sp_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp_reg[15]_i_1 
       (.I0(ld_val[15]),
        .I1(ld_en),
        .I2(sp_reg0_carry__2_n_5),
        .O(\sp_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp_reg[1]_i_1 
       (.I0(ld_val[1]),
        .I1(ld_en),
        .I2(sp_reg0_carry_n_7),
        .O(\sp_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp_reg[2]_i_1 
       (.I0(ld_val[2]),
        .I1(ld_en),
        .I2(sp_reg0_carry_n_6),
        .O(\sp_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp_reg[3]_i_1 
       (.I0(ld_val[3]),
        .I1(ld_en),
        .I2(sp_reg0_carry_n_5),
        .O(\sp_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp_reg[4]_i_1 
       (.I0(ld_val[4]),
        .I1(ld_en),
        .I2(sp_reg0_carry_n_4),
        .O(\sp_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp_reg[5]_i_1 
       (.I0(ld_val[5]),
        .I1(ld_en),
        .I2(sp_reg0_carry__0_n_7),
        .O(\sp_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp_reg[6]_i_1 
       (.I0(ld_val[6]),
        .I1(ld_en),
        .I2(sp_reg0_carry__0_n_6),
        .O(\sp_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp_reg[7]_i_1 
       (.I0(ld_val[7]),
        .I1(ld_en),
        .I2(sp_reg0_carry__0_n_5),
        .O(\sp_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp_reg[8]_i_1 
       (.I0(ld_val[8]),
        .I1(ld_en),
        .I2(sp_reg0_carry__0_n_4),
        .O(\sp_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp_reg[9]_i_1 
       (.I0(ld_val[9]),
        .I1(ld_en),
        .I2(sp_reg0_carry__1_n_7),
        .O(\sp_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[0] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg[0]_i_1_n_0 ),
        .Q(stack_ptr[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[10] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg[10]_i_1_n_0 ),
        .Q(stack_ptr[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[11] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg[11]_i_1_n_0 ),
        .Q(stack_ptr[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[12] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg[12]_i_1_n_0 ),
        .Q(stack_ptr[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[13] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg[13]_i_1_n_0 ),
        .Q(stack_ptr[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[14] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg[14]_i_1_n_0 ),
        .Q(stack_ptr[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[15] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg[15]_i_1_n_0 ),
        .Q(stack_ptr[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[1] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg[1]_i_1_n_0 ),
        .Q(\sp_reg_reg[1]_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[2] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg[2]_i_1_n_0 ),
        .Q(stack_ptr[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[3] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg[3]_i_1_n_0 ),
        .Q(stack_ptr[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[4] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg[4]_i_1_n_0 ),
        .Q(stack_ptr[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[5] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg[5]_i_1_n_0 ),
        .Q(stack_ptr[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[6] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg[6]_i_1_n_0 ),
        .Q(stack_ptr[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[7] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg[7]_i_1_n_0 ),
        .Q(stack_ptr[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[8] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg[8]_i_1_n_0 ),
        .Q(stack_ptr[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[9] 
       (.C(clk),
        .CE(sp_reg_n_0),
        .D(\sp_reg[9]_i_1_n_0 ),
        .Q(stack_ptr[8]),
        .R(rst));
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
