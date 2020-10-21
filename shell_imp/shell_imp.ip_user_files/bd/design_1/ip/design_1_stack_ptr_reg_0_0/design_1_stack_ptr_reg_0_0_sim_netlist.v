// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Oct  5 21:35:28 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_stack_ptr_reg_0_0/design_1_stack_ptr_reg_0_0_sim_netlist.v
// Design      : design_1_stack_ptr_reg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_stack_ptr_reg_0_0,stack_ptr_reg,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "stack_ptr_reg,Vivado 2018.3" *) 
(* NotValidForBitStream *)
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
