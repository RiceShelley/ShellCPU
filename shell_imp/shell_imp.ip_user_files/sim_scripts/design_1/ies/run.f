-makelib ies_lib/xil_defaultlib -sv \
  "/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_CTRL_UNIT_0_0/sim/design_1_CTRL_UNIT_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_reg_file_0_0/sim/design_1_reg_file_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_ALU_0_0/sim/design_1_ALU_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_prog_mem_0_0/sim/design_1_prog_mem_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_prog_cnt_reg_0_0/sim/design_1_prog_cnt_reg_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_data_mem_0_0/sim/design_1_data_mem_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_ALU_CTRL_0_0/sim/design_1_ALU_CTRL_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_reg_file_input_mux_0_0/sim/design_1_reg_file_input_mux_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_cmp_status_reg_0_0/sim/design_1_cmp_status_reg_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_ri_imm_ext_0_0/sim/design_1_ri_imm_ext_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_alu_input_mux_0_0/sim/design_1_alu_input_mux_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_imm_ext_0_0/sim/design_1_imm_ext_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_pc_load_mux_0_0/sim/design_1_pc_load_mux_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_adder_0_0/sim/design_1_adder_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_adder_1_0/sim/design_1_adder_1_0.vhd" \
-endlib
-makelib ies_lib/xlconstant_v1_1_5 \
  "../../../../shell_imp.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_stack_ptr_reg_0_0/sim/design_1_stack_ptr_reg_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_ri_imm_upper_concat_0_0/sim/design_1_ri_imm_upper_concat_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_ri_imm_format_mux_0_0/sim/design_1_ri_imm_format_mux_0_0.vhd" \
  "../../../bd/design_1/sim/design_1.vhd" \
  "../../../bd/design_1/ip/design_1_programmer_0_0/sim/design_1_programmer_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_uart_0_2/sim/design_1_uart_0_2.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_and_gate_0_0/sim/design_1_and_gate_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_sync_extern_0_0/sim/design_1_sync_extern_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_sync_word_0_0/sim/design_1_sync_word_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_sync_word_1_0/sim/design_1_sync_word_1_0.vhd" \
  "../../../bd/design_1/ip/design_1_sync_extern_0_1/sim/design_1_sync_extern_0_1.vhd" \
  "../../../bd/design_1/ip/design_1_sync_extern_1_0/sim/design_1_sync_extern_1_0.vhd" \
  "../../../bd/design_1/ip/design_1_sync_extern_0_2/sim/design_1_sync_extern_0_2.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib
