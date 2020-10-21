// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Oct 10 22:53:18 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_prog_cnt_reg_0_0/design_1_prog_cnt_reg_0_0_sim_netlist.v
// Design      : design_1_prog_cnt_reg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_prog_cnt_reg_0_0,prog_cnt_reg,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "prog_cnt_reg,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_prog_cnt_reg_0_0
   (clk,
    async_rst,
    ins_addr,
    ld_val,
    ld_en,
    en);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 async_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME async_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input async_rst;
  output [15:0]ins_addr;
  input [15:0]ld_val;
  input ld_en;
  input en;

  wire async_rst;
  wire clk;
  wire en;
  wire [15:0]ins_addr;
  wire ld_en;
  wire [15:0]ld_val;

  design_1_prog_cnt_reg_0_0_prog_cnt_reg U0
       (.async_rst(async_rst),
        .clk(clk),
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
    async_rst,
    en);
  output [15:0]ins_addr;
  input [15:0]ld_val;
  input ld_en;
  input clk;
  input async_rst;
  input en;

  wire async_rst;
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
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[0] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(async_rst),
        .D(\pc_reg[3]_i_1_n_7 ),
        .Q(ins_addr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[10] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(async_rst),
        .D(\pc_reg[11]_i_1_n_5 ),
        .Q(ins_addr[10]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[11] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(async_rst),
        .D(\pc_reg[11]_i_1_n_4 ),
        .Q(ins_addr[11]));
  CARRY4 \pc_reg[11]_i_1 
       (.CI(\pc_reg[7]_i_1_n_0 ),
        .CO({\pc_reg[11]_i_1_n_0 ,\pc_reg[11]_i_1_n_1 ,\pc_reg[11]_i_1_n_2 ,\pc_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[11]_i_1_n_4 ,\pc_reg[11]_i_1_n_5 ,\pc_reg[11]_i_1_n_6 ,\pc_reg[11]_i_1_n_7 }),
        .S({\pc[11]_i_2_n_0 ,\pc[11]_i_3_n_0 ,\pc[11]_i_4_n_0 ,\pc[11]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[12] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(async_rst),
        .D(\pc_reg[15]_i_2_n_7 ),
        .Q(ins_addr[12]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[13] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(async_rst),
        .D(\pc_reg[15]_i_2_n_6 ),
        .Q(ins_addr[13]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[14] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(async_rst),
        .D(\pc_reg[15]_i_2_n_5 ),
        .Q(ins_addr[14]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[15] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(async_rst),
        .D(\pc_reg[15]_i_2_n_4 ),
        .Q(ins_addr[15]));
  CARRY4 \pc_reg[15]_i_2 
       (.CI(\pc_reg[11]_i_1_n_0 ),
        .CO({\NLW_pc_reg[15]_i_2_CO_UNCONNECTED [3],\pc_reg[15]_i_2_n_1 ,\pc_reg[15]_i_2_n_2 ,\pc_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[15]_i_2_n_4 ,\pc_reg[15]_i_2_n_5 ,\pc_reg[15]_i_2_n_6 ,\pc_reg[15]_i_2_n_7 }),
        .S({\pc[15]_i_3_n_0 ,\pc[15]_i_4_n_0 ,\pc[15]_i_5_n_0 ,\pc[15]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[1] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(async_rst),
        .D(\pc_reg[3]_i_1_n_6 ),
        .Q(ins_addr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(async_rst),
        .D(\pc_reg[3]_i_1_n_5 ),
        .Q(ins_addr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(async_rst),
        .D(\pc_reg[3]_i_1_n_4 ),
        .Q(ins_addr[3]));
  CARRY4 \pc_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\pc_reg[3]_i_1_n_0 ,\pc_reg[3]_i_1_n_1 ,\pc_reg[3]_i_1_n_2 ,\pc_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pc[3]_i_2_n_0 }),
        .O({\pc_reg[3]_i_1_n_4 ,\pc_reg[3]_i_1_n_5 ,\pc_reg[3]_i_1_n_6 ,\pc_reg[3]_i_1_n_7 }),
        .S({\pc[3]_i_3_n_0 ,\pc[3]_i_4_n_0 ,\pc[3]_i_5_n_0 ,\pc[3]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[4] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(async_rst),
        .D(\pc_reg[7]_i_1_n_7 ),
        .Q(ins_addr[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[5] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(async_rst),
        .D(\pc_reg[7]_i_1_n_6 ),
        .Q(ins_addr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[6] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(async_rst),
        .D(\pc_reg[7]_i_1_n_5 ),
        .Q(ins_addr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[7] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(async_rst),
        .D(\pc_reg[7]_i_1_n_4 ),
        .Q(ins_addr[7]));
  CARRY4 \pc_reg[7]_i_1 
       (.CI(\pc_reg[3]_i_1_n_0 ),
        .CO({\pc_reg[7]_i_1_n_0 ,\pc_reg[7]_i_1_n_1 ,\pc_reg[7]_i_1_n_2 ,\pc_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[7]_i_1_n_4 ,\pc_reg[7]_i_1_n_5 ,\pc_reg[7]_i_1_n_6 ,\pc_reg[7]_i_1_n_7 }),
        .S({\pc[7]_i_2_n_0 ,\pc[7]_i_3_n_0 ,\pc[7]_i_4_n_0 ,\pc[7]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[8] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(async_rst),
        .D(\pc_reg[11]_i_1_n_7 ),
        .Q(ins_addr[8]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[9] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(async_rst),
        .D(\pc_reg[11]_i_1_n_6 ),
        .Q(ins_addr[9]));
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
