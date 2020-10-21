
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# ALU, ALU_CTRL, CTRL_UNIT, prog_cnt_reg, adder, adder, mux_2_to_1, cmp_status_reg, imm_ext, mux_2_to_1, mux_2_to_1, reg_file, reg_file_input_mux, ri_imm_ext, ri_imm_upper_concat, stack_ptr_reg, and_gate, sync_extern, data_mem, prog_mem, sync_word, sync_extern, sync_word, sync_extern, sync_extern, sync_extern, uart, programmer

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: programmer
proc create_hier_cell_programmer { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_programmer() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O UART_RXD_OUT
  create_bd_pin -dir I UART_TXD_IN
  create_bd_pin -dir O -from 15 -to 0 addr
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I -type clk clk1
  create_bd_pin -dir O cpu_clk_en
  create_bd_pin -dir O -from 15 -to 0 dout
  create_bd_pin -dir O sig_out
  create_bd_pin -dir O sig_out1
  create_bd_pin -dir O sig_out2
  create_bd_pin -dir O sig_out3
  create_bd_pin -dir O -from 15 -to 0 sync_word
  create_bd_pin -dir O -from 15 -to 0 sync_word1

  # Create instance: sync_addr_to_CPU_clk, and set properties
  set block_name sync_word
  set block_cell_name sync_addr_to_CPU_clk
  if { [catch {set sync_addr_to_CPU_clk [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sync_addr_to_CPU_clk eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sync_data_mem_wr_to_cpu_clk, and set properties
  set block_name sync_extern
  set block_cell_name sync_data_mem_wr_to_cpu_clk
  if { [catch {set sync_data_mem_wr_to_cpu_clk [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sync_data_mem_wr_to_cpu_clk eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sync_data_to_cpu_clk, and set properties
  set block_name sync_word
  set block_cell_name sync_data_to_cpu_clk
  if { [catch {set sync_data_to_cpu_clk [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sync_data_to_cpu_clk eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sync_pc_rst_to_cpu_clk, and set properties
  set block_name sync_extern
  set block_cell_name sync_pc_rst_to_cpu_clk
  if { [catch {set sync_pc_rst_to_cpu_clk [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sync_pc_rst_to_cpu_clk eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sync_prog_mem_wr_to_cpu_clk, and set properties
  set block_name sync_extern
  set block_cell_name sync_prog_mem_wr_to_cpu_clk
  if { [catch {set sync_prog_mem_wr_to_cpu_clk [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sync_prog_mem_wr_to_cpu_clk eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sync_prog_mode_to_CPU_clk, and set properties
  set block_name sync_extern
  set block_cell_name sync_prog_mode_to_CPU_clk
  if { [catch {set sync_prog_mode_to_CPU_clk [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sync_prog_mode_to_CPU_clk eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: uart, and set properties
  set block_name uart
  set block_cell_name uart
  if { [catch {set uart [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $uart eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: uart_programmer, and set properties
  set block_name programmer
  set block_cell_name uart_programmer
  if { [catch {set uart_programmer [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $uart_programmer eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net UART_TXD_IN_1 [get_bd_pins UART_TXD_IN] [get_bd_pins uart/rx]
  connect_bd_net -net clk1_1 [get_bd_pins clk1] [get_bd_pins sync_addr_to_CPU_clk/clk] [get_bd_pins sync_data_mem_wr_to_cpu_clk/clk] [get_bd_pins sync_data_to_cpu_clk/clk] [get_bd_pins sync_pc_rst_to_cpu_clk/clk] [get_bd_pins sync_prog_mem_wr_to_cpu_clk/clk] [get_bd_pins sync_prog_mode_to_CPU_clk/clk]
  connect_bd_net -net clk_1 [get_bd_pins clk] [get_bd_pins uart/clk] [get_bd_pins uart_programmer/clk]
  connect_bd_net -net sync_data_to_cpu_clk_stable_word [get_bd_pins sync_word1] [get_bd_pins sync_data_to_cpu_clk/stable_word]
  connect_bd_net -net sync_extern_0_sig_out [get_bd_pins sig_out1] [get_bd_pins sync_data_mem_wr_to_cpu_clk/sig_out]
  connect_bd_net -net sync_extern_0_sig_out1 [get_bd_pins sig_out2] [get_bd_pins sync_prog_mem_wr_to_cpu_clk/sig_out]
  connect_bd_net -net sync_extern_1_sig_out [get_bd_pins sig_out] [get_bd_pins sync_prog_mode_to_CPU_clk/sig_out]
  connect_bd_net -net sync_pc_rst_to_cpu_clk_sig_out [get_bd_pins sig_out3] [get_bd_pins sync_pc_rst_to_cpu_clk/sig_out]
  connect_bd_net -net sync_word_to_CPU_clk_sync_word [get_bd_pins sync_word] [get_bd_pins sync_addr_to_CPU_clk/stable_word]
  connect_bd_net -net uart_programmer_addr [get_bd_pins addr] [get_bd_pins sync_addr_to_CPU_clk/word] [get_bd_pins uart_programmer/addr]
  connect_bd_net -net uart_programmer_cpu_clk_en [get_bd_pins cpu_clk_en] [get_bd_pins uart_programmer/cpu_clk_en]
  connect_bd_net -net uart_programmer_cpu_rst [get_bd_pins sync_pc_rst_to_cpu_clk/sig_in] [get_bd_pins uart_programmer/cpu_rst]
  connect_bd_net -net uart_programmer_data_mem_wr [get_bd_pins sync_data_mem_wr_to_cpu_clk/sig_in] [get_bd_pins uart_programmer/data_mem_wr]
  connect_bd_net -net uart_programmer_dout [get_bd_pins dout] [get_bd_pins sync_data_to_cpu_clk/word] [get_bd_pins uart_programmer/dout]
  connect_bd_net -net uart_programmer_prog_mem_wr [get_bd_pins sync_prog_mem_wr_to_cpu_clk/sig_in] [get_bd_pins uart_programmer/prog_mem_wr]
  connect_bd_net -net uart_programmer_prog_mode [get_bd_pins sync_prog_mode_to_CPU_clk/sig_in] [get_bd_pins uart_programmer/prog_mode]
  connect_bd_net -net uart_rx_data [get_bd_pins uart/rx_data] [get_bd_pins uart_programmer/rx_data]
  connect_bd_net -net uart_rx_ready [get_bd_pins uart/rx_ready] [get_bd_pins uart_programmer/rx_ready]
  connect_bd_net -net uart_tx [get_bd_pins UART_RXD_OUT] [get_bd_pins uart/tx]
  connect_bd_net -net uart_tx_ready [get_bd_pins uart/tx_ready] [get_bd_pins uart_programmer/tx_ready]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: memory
proc create_hier_cell_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir O -from 15 -to 0 cur_ins
  create_bd_pin -dir I -from 15 -to 0 data_in
  create_bd_pin -dir O -from 15 -to 0 data_out
  create_bd_pin -dir I -from 15 -to 0 ins_addr
  create_bd_pin -dir I -from 15 -to 0 prog_addr
  create_bd_pin -dir I -from 15 -to 0 prog_addr1
  create_bd_pin -dir I -from 15 -to 0 prog_data
  create_bd_pin -dir I -from 15 -to 0 prog_data1
  create_bd_pin -dir I prog_mode
  create_bd_pin -dir I prog_wr
  create_bd_pin -dir I prog_wr1
  create_bd_pin -dir I -from 15 -to 0 stack_addr
  create_bd_pin -dir O -from 15 -to 0 stack_out
  create_bd_pin -dir I stack_wr_en
  create_bd_pin -dir I -from 15 -to 0 wr_addr
  create_bd_pin -dir I wr_en

  # Create instance: data_mem, and set properties
  set block_name data_mem
  set block_cell_name data_mem
  if { [catch {set data_mem [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $data_mem eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: prog_mem, and set properties
  set block_name prog_mem
  set block_cell_name prog_mem
  if { [catch {set prog_mem [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $prog_mem eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net clk_1 [get_bd_pins clk] [get_bd_pins data_mem/clk] [get_bd_pins prog_mem/clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins data_mem/data_in] [get_bd_pins data_mem/rd_addr]
  connect_bd_net -net data_mem_data_out [get_bd_pins data_out] [get_bd_pins data_mem/data_out]
  connect_bd_net -net data_mem_stack_out [get_bd_pins stack_out] [get_bd_pins data_mem/stack_out]
  connect_bd_net -net ins_addr_1 [get_bd_pins ins_addr] [get_bd_pins prog_mem/ins_addr]
  connect_bd_net -net prog_addr1_1 [get_bd_pins prog_addr1] [get_bd_pins data_mem/prog_addr] [get_bd_pins prog_mem/prog_addr]
  connect_bd_net -net prog_data1_1 [get_bd_pins prog_data1] [get_bd_pins data_mem/prog_data] [get_bd_pins prog_mem/prog_data]
  connect_bd_net -net prog_mem_cur_ins [get_bd_pins cur_ins] [get_bd_pins prog_mem/cur_ins]
  connect_bd_net -net prog_mode_1 [get_bd_pins prog_mode] [get_bd_pins data_mem/prog_mode]
  connect_bd_net -net prog_wr1_1 [get_bd_pins prog_wr1] [get_bd_pins data_mem/prog_wr]
  connect_bd_net -net prog_wr_1 [get_bd_pins prog_wr] [get_bd_pins prog_mem/prog_wr]
  connect_bd_net -net stack_addr_1 [get_bd_pins stack_addr] [get_bd_pins data_mem/stack_addr]
  connect_bd_net -net stack_wr_en_1 [get_bd_pins stack_wr_en] [get_bd_pins data_mem/stack_wr_en]
  connect_bd_net -net wr_addr_1 [get_bd_pins wr_addr] [get_bd_pins data_mem/wr_addr]
  connect_bd_net -net wr_en_1 [get_bd_pins wr_en] [get_bd_pins data_mem/wr_en]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: clock_gen
proc create_hier_cell_clock_gen { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_clock_gen() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -type clk CLK100MHZ
  create_bd_pin -dir O -type clk CPU_CLK
  create_bd_pin -dir O c
  create_bd_pin -dir O -type clk clk_100Mhz
  create_bd_pin -dir I sig_in

  # Create instance: and_gate, and set properties
  set block_name and_gate
  set block_cell_name and_gate
  if { [catch {set and_gate [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $and_gate eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {219.371} \
   CONFIG.CLKOUT1_PHASE_ERROR {105.461} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {10} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {137.681} \
   CONFIG.CLKOUT2_PHASE_ERROR {105.461} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLK_OUT1_PORT {CPU_CLK} \
   CONFIG.CLK_OUT2_PORT {CLK100Mhz} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {9} \
   CONFIG.MMCM_CLKIN1_PERIOD {10.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {90} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {9} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz

  # Create instance: sync_extern, and set properties
  set block_name sync_extern
  set block_cell_name sync_extern
  if { [catch {set sync_extern [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sync_extern eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net CLK100MHZ_1 [get_bd_pins CLK100MHZ] [get_bd_pins clk_wiz/clk_in1]
  connect_bd_net -net and_gate_c [get_bd_pins c] [get_bd_pins and_gate/c]
  connect_bd_net -net b_1 [get_bd_pins CPU_CLK] [get_bd_pins and_gate/b] [get_bd_pins clk_wiz/CPU_CLK] [get_bd_pins sync_extern/clk]
  connect_bd_net -net clk_wiz_CLK100Mhz [get_bd_pins clk_100Mhz] [get_bd_pins clk_wiz/CLK100Mhz]
  connect_bd_net -net sig_in_1 [get_bd_pins sig_in] [get_bd_pins sync_extern/sig_in]
  connect_bd_net -net sync_extern_sig_out [get_bd_pins and_gate/a] [get_bd_pins sync_extern/sig_out]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: CPU
proc create_hier_cell_CPU { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_CPU() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -type rst async_rst
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I -from 15 -to 0 data_mem
  create_bd_pin -dir O data_mem_wr
  create_bd_pin -dir I -from 15 -to 0 from_stack
  create_bd_pin -dir I -from 2 -to 0 inr
  create_bd_pin -dir O -from 15 -to 0 ins_addr
  create_bd_pin -dir I -from 15 -to 0 instruction
  create_bd_pin -dir O -from 15 -to 0 outvalue
  create_bd_pin -dir O -from 15 -to 0 regA
  create_bd_pin -dir O -from 15 -to 0 regB
  create_bd_pin -dir O -from 15 -to 0 stack_ptr
  create_bd_pin -dir O stack_wr

  # Create instance: ALU, and set properties
  set block_name ALU
  set block_cell_name ALU
  if { [catch {set ALU [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ALU eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ALU_CTRL, and set properties
  set block_name ALU_CTRL
  set block_cell_name ALU_CTRL
  if { [catch {set ALU_CTRL [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ALU_CTRL eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: CTRL_UNIT, and set properties
  set block_name CTRL_UNIT
  set block_cell_name CTRL_UNIT
  if { [catch {set CTRL_UNIT [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $CTRL_UNIT eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: PC, and set properties
  set block_name prog_cnt_reg
  set block_cell_name PC
  if { [catch {set PC [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $PC eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: adder_0, and set properties
  set block_name adder
  set block_cell_name adder_0
  if { [catch {set adder_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $adder_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: adder_1, and set properties
  set block_name adder
  set block_cell_name adder_1
  if { [catch {set adder_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $adder_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: alu_mux, and set properties
  set block_name mux_2_to_1
  set block_cell_name alu_mux
  if { [catch {set alu_mux [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $alu_mux eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: cmp_status_reg, and set properties
  set block_name cmp_status_reg
  set block_cell_name cmp_status_reg
  if { [catch {set cmp_status_reg [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $cmp_status_reg eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: imm_ext, and set properties
  set block_name imm_ext
  set block_cell_name imm_ext
  if { [catch {set imm_ext [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $imm_ext eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: imm_mux, and set properties
  set block_name mux_2_to_1
  set block_cell_name imm_mux
  if { [catch {set imm_mux [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $imm_mux eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: pc_load_mux, and set properties
  set block_name mux_2_to_1
  set block_cell_name pc_load_mux
  if { [catch {set pc_load_mux [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pc_load_mux eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: reg_file, and set properties
  set block_name reg_file
  set block_cell_name reg_file
  if { [catch {set reg_file [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $reg_file eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: reg_file_input_mux, and set properties
  set block_name reg_file_input_mux
  set block_cell_name reg_file_input_mux
  if { [catch {set reg_file_input_mux [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $reg_file_input_mux eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ri_imm_ext, and set properties
  set block_name ri_imm_ext
  set block_cell_name ri_imm_ext
  if { [catch {set ri_imm_ext [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ri_imm_ext eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ri_imm_upper_concat, and set properties
  set block_name ri_imm_upper_concat
  set block_cell_name ri_imm_upper_concat
  if { [catch {set ri_imm_upper_concat [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ri_imm_upper_concat eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: stack_ptr_reg, and set properties
  set block_name stack_ptr_reg
  set block_cell_name stack_ptr_reg
  if { [catch {set stack_ptr_reg [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $stack_ptr_reg eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_val_1, and set properties
  set xlconstant_val_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_val_1 ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_val_1

  # Create port connections
  connect_bd_net -net ALU_CTRL_op_add [get_bd_pins ALU/op_add] [get_bd_pins ALU_CTRL/op_add]
  connect_bd_net -net ALU_CTRL_op_and [get_bd_pins ALU/op_and] [get_bd_pins ALU_CTRL/op_and]
  connect_bd_net -net ALU_CTRL_op_asl [get_bd_pins ALU/op_asl] [get_bd_pins ALU_CTRL/op_asl]
  connect_bd_net -net ALU_CTRL_op_asr [get_bd_pins ALU/op_asr] [get_bd_pins ALU_CTRL/op_asr]
  connect_bd_net -net ALU_CTRL_op_cmp [get_bd_pins ALU/op_cmp] [get_bd_pins ALU_CTRL/op_cmp]
  connect_bd_net -net ALU_CTRL_op_nand [get_bd_pins ALU/op_nand] [get_bd_pins ALU_CTRL/op_nand]
  connect_bd_net -net ALU_CTRL_op_or [get_bd_pins ALU/op_or] [get_bd_pins ALU_CTRL/op_or]
  connect_bd_net -net ALU_CTRL_op_sub [get_bd_pins ALU/op_sub] [get_bd_pins ALU_CTRL/op_sub]
  connect_bd_net -net ALU_CTRL_op_xor [get_bd_pins ALU/op_xor] [get_bd_pins ALU_CTRL/op_xor]
  connect_bd_net -net CTRL_UNIT_alu_input_sel [get_bd_pins CTRL_UNIT/alu_input_sel] [get_bd_pins alu_mux/sel]
  connect_bd_net -net CTRL_UNIT_alu_op [get_bd_pins ALU_CTRL/alu_op] [get_bd_pins CTRL_UNIT/alu_op]
  connect_bd_net -net CTRL_UNIT_cmp_status_wr [get_bd_pins CTRL_UNIT/cmp_status_wr] [get_bd_pins cmp_status_reg/wr_en]
  connect_bd_net -net CTRL_UNIT_data_mem_wr [get_bd_pins data_mem_wr] [get_bd_pins CTRL_UNIT/data_mem_wr]
  connect_bd_net -net CTRL_UNIT_dec_stack [get_bd_pins CTRL_UNIT/dec_stack] [get_bd_pins stack_ptr_reg/dec]
  connect_bd_net -net CTRL_UNIT_dest_addr [get_bd_pins CTRL_UNIT/dest_addr] [get_bd_pins reg_file/write_addrC]
  connect_bd_net -net CTRL_UNIT_imm [get_bd_pins CTRL_UNIT/imm] [get_bd_pins imm_ext/imm]
  connect_bd_net -net CTRL_UNIT_inc_stack [get_bd_pins CTRL_UNIT/inc_stack] [get_bd_pins stack_ptr_reg/inc]
  connect_bd_net -net CTRL_UNIT_pc_en [get_bd_pins CTRL_UNIT/pc_en] [get_bd_pins PC/en]
  connect_bd_net -net CTRL_UNIT_pc_ld_en [get_bd_pins CTRL_UNIT/pc_ld_en] [get_bd_pins PC/ld_en]
  connect_bd_net -net CTRL_UNIT_pc_load_sel [get_bd_pins CTRL_UNIT/pc_load_sel] [get_bd_pins pc_load_mux/sel]
  connect_bd_net -net CTRL_UNIT_regA_addr [get_bd_pins CTRL_UNIT/regA_addr] [get_bd_pins reg_file/read_addrA]
  connect_bd_net -net CTRL_UNIT_regB_addr [get_bd_pins CTRL_UNIT/regB_addr] [get_bd_pins reg_file/read_addrB]
  connect_bd_net -net CTRL_UNIT_reg_file_input_sel [get_bd_pins CTRL_UNIT/reg_file_input_sel] [get_bd_pins reg_file_input_mux/sel]
  connect_bd_net -net CTRL_UNIT_reg_file_wr [get_bd_pins CTRL_UNIT/reg_file_wr] [get_bd_pins reg_file/wr_en]
  connect_bd_net -net CTRL_UNIT_ri_imm [get_bd_pins CTRL_UNIT/ri_imm] [get_bd_pins ri_imm_ext/imm] [get_bd_pins ri_imm_upper_concat/imm]
  connect_bd_net -net CTRL_UNIT_ri_imm_format_sel [get_bd_pins CTRL_UNIT/ri_imm_format_sel] [get_bd_pins imm_mux/sel]
  connect_bd_net -net CTRL_UNIT_stack_ld [get_bd_pins CTRL_UNIT/stack_ld] [get_bd_pins stack_ptr_reg/ld_en]
  connect_bd_net -net CTRL_UNIT_stack_wr [get_bd_pins stack_wr] [get_bd_pins CTRL_UNIT/stack_wr]
  connect_bd_net -net PC_ins_addr [get_bd_pins ins_addr] [get_bd_pins PC/ins_addr] [get_bd_pins adder_0/b] [get_bd_pins adder_1/a]
  connect_bd_net -net adder_0_c [get_bd_pins adder_0/c] [get_bd_pins pc_load_mux/b]
  connect_bd_net -net adder_1_c [get_bd_pins adder_1/c] [get_bd_pins reg_file_input_mux/next_ins_addr]
  connect_bd_net -net async_rst_1 [get_bd_pins async_rst] [get_bd_pins PC/async_rst] [get_bd_pins cmp_status_reg/rst] [get_bd_pins reg_file/rst] [get_bd_pins stack_ptr_reg/rst]
  connect_bd_net -net clk_1 [get_bd_pins clk] [get_bd_pins PC/clk] [get_bd_pins cmp_status_reg/clk] [get_bd_pins reg_file/clk] [get_bd_pins stack_ptr_reg/clk]
  connect_bd_net -net cmp_status_in_1 [get_bd_pins ALU/outputC] [get_bd_pins cmp_status_reg/cmp_status_in] [get_bd_pins reg_file_input_mux/in_alu]
  connect_bd_net -net cmp_status_reg_eq_sig [get_bd_pins CTRL_UNIT/cmp_eq] [get_bd_pins cmp_status_reg/eq_sig]
  connect_bd_net -net cmp_status_reg_gt_sig [get_bd_pins CTRL_UNIT/cmp_gt] [get_bd_pins cmp_status_reg/gt_sig]
  connect_bd_net -net cmp_status_reg_lt_sig [get_bd_pins CTRL_UNIT/cmp_lt] [get_bd_pins cmp_status_reg/lt_sig]
  connect_bd_net -net cmp_status_reg_ne_sig [get_bd_pins CTRL_UNIT/cmp_ne] [get_bd_pins cmp_status_reg/ne_sig]
  connect_bd_net -net data_mem_1 [get_bd_pins data_mem] [get_bd_pins reg_file_input_mux/data_mem]
  connect_bd_net -net from_stack_1 [get_bd_pins from_stack] [get_bd_pins reg_file_input_mux/from_stack]
  connect_bd_net -net gpr_in_1 [get_bd_pins regA] [get_bd_pins ALU/inputA] [get_bd_pins pc_load_mux/a] [get_bd_pins reg_file/regA] [get_bd_pins stack_ptr_reg/ld_val]
  connect_bd_net -net imm_ext_s_ext_imm [get_bd_pins adder_0/a] [get_bd_pins imm_ext/s_ext_imm]
  connect_bd_net -net inr_1 [get_bd_pins inr] [get_bd_pins reg_file/inr]
  connect_bd_net -net instruction_1 [get_bd_pins instruction] [get_bd_pins CTRL_UNIT/instruction]
  connect_bd_net -net mux_2_to_1_0_c [get_bd_pins alu_mux/b] [get_bd_pins imm_mux/c]
  connect_bd_net -net mux_2_to_1_0_c1 [get_bd_pins PC/ld_val] [get_bd_pins pc_load_mux/c]
  connect_bd_net -net mux_2_to_1_1_c [get_bd_pins ALU/inputB] [get_bd_pins alu_mux/c]
  connect_bd_net -net reg_file_input_mux_output_reg [get_bd_pins reg_file/regC] [get_bd_pins reg_file_input_mux/output_reg]
  connect_bd_net -net reg_file_outvalue [get_bd_pins outvalue] [get_bd_pins reg_file/outvalue]
  connect_bd_net -net reg_file_regB [get_bd_pins regB] [get_bd_pins alu_mux/a] [get_bd_pins reg_file/regB]
  connect_bd_net -net ri_imm_ext_z_ext_imm [get_bd_pins imm_mux/b] [get_bd_pins ri_imm_ext/z_ext_imm]
  connect_bd_net -net ri_imm_upper_concat_0_upper_concat [get_bd_pins imm_mux/a] [get_bd_pins ri_imm_upper_concat/upper_concat]
  connect_bd_net -net stack_ptr_reg_stack_ptr [get_bd_pins stack_ptr] [get_bd_pins stack_ptr_reg/stack_ptr]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins adder_1/b] [get_bd_pins xlconstant_val_1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set CLK100MHZ [ create_bd_port -dir I CLK100MHZ ]
  set UART_RXD_OUT [ create_bd_port -dir O UART_RXD_OUT ]
  set UART_TXD_IN [ create_bd_port -dir I UART_TXD_IN ]
  set inr [ create_bd_port -dir I -from 2 -to 0 inr ]
  set outvalue [ create_bd_port -dir O -from 15 -to 0 outvalue ]

  # Create instance: CPU
  create_hier_cell_CPU [current_bd_instance .] CPU

  # Create instance: clock_gen
  create_hier_cell_clock_gen [current_bd_instance .] clock_gen

  # Create instance: memory
  create_hier_cell_memory [current_bd_instance .] memory

  # Create instance: programmer
  create_hier_cell_programmer [current_bd_instance .] programmer

  # Create port connections
  connect_bd_net -net CLK100MHZ_2 [get_bd_ports CLK100MHZ] [get_bd_pins clock_gen/CLK100MHZ]
  connect_bd_net -net CPU_outvalue [get_bd_ports outvalue] [get_bd_pins CPU/outvalue]
  connect_bd_net -net PC_ins_addr [get_bd_pins CPU/ins_addr] [get_bd_pins memory/ins_addr]
  connect_bd_net -net UART_TXD_IN_1 [get_bd_ports UART_TXD_IN] [get_bd_pins programmer/UART_TXD_IN]
  connect_bd_net -net async_rst_1 [get_bd_pins CPU/async_rst] [get_bd_pins programmer/sig_out3]
  connect_bd_net -net clk_1 [get_bd_pins CPU/clk] [get_bd_pins clock_gen/c]
  connect_bd_net -net clk_2 [get_bd_pins clock_gen/CPU_CLK] [get_bd_pins memory/clk] [get_bd_pins programmer/clk1]
  connect_bd_net -net clock_gen_clk_100Mhz [get_bd_pins clock_gen/clk_100Mhz] [get_bd_pins programmer/clk]
  connect_bd_net -net inr_1 [get_bd_ports inr] [get_bd_pins CPU/inr]
  connect_bd_net -net memory_cur_ins [get_bd_pins CPU/instruction] [get_bd_pins memory/cur_ins]
  connect_bd_net -net memory_data_out [get_bd_pins CPU/data_mem] [get_bd_pins memory/data_out]
  connect_bd_net -net memory_stack_out [get_bd_pins CPU/from_stack] [get_bd_pins memory/stack_out]
  connect_bd_net -net prog_addr1_1 [get_bd_pins memory/prog_addr1] [get_bd_pins programmer/sync_word]
  connect_bd_net -net prog_addr_1 [get_bd_pins memory/prog_addr] [get_bd_pins programmer/addr]
  connect_bd_net -net prog_data1_1 [get_bd_pins memory/prog_data1] [get_bd_pins programmer/sync_word1]
  connect_bd_net -net prog_data_1 [get_bd_pins memory/prog_data] [get_bd_pins programmer/dout]
  connect_bd_net -net prog_mode_2 [get_bd_pins memory/prog_mode] [get_bd_pins programmer/sig_out]
  connect_bd_net -net prog_wr1_1 [get_bd_pins memory/prog_wr1] [get_bd_pins programmer/sig_out1]
  connect_bd_net -net programmer_UART_RXD_OUT [get_bd_ports UART_RXD_OUT] [get_bd_pins programmer/UART_RXD_OUT]
  connect_bd_net -net programmer_cpu_clk_en [get_bd_pins clock_gen/sig_in] [get_bd_pins programmer/cpu_clk_en]
  connect_bd_net -net programmer_sig_out2 [get_bd_pins memory/prog_wr] [get_bd_pins programmer/sig_out2]
  connect_bd_net -net reg_file_regA [get_bd_pins CPU/regA] [get_bd_pins memory/data_in]
  connect_bd_net -net reg_file_regB [get_bd_pins CPU/regB] [get_bd_pins memory/wr_addr]
  connect_bd_net -net stack_addr_1 [get_bd_pins CPU/stack_ptr] [get_bd_pins memory/stack_addr]
  connect_bd_net -net stack_wr_en_1 [get_bd_pins CPU/stack_wr] [get_bd_pins memory/stack_wr_en]
  connect_bd_net -net wr_en_1 [get_bd_pins CPU/data_mem_wr] [get_bd_pins memory/wr_en]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


