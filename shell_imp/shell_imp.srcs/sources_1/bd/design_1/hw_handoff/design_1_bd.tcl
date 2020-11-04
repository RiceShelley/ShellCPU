
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
# uart, shell_cpu_top, and_gate, sync_extern, data_mem, prog_mem, sync_word, sync_extern, sync_word, sync_extern, sync_extern, sync_extern, uart, programmer, clk_div, display_ctrl, nexys_7seg, sync_byte, sync_byte, sync_extern, sync_extern, sync_extern, uart_controller

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


# Hierarchical cell: mem_maped_uart
proc create_hier_cell_mem_maped_uart { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_mem_maped_uart() - Empty argument(s)!"}
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
  create_bd_pin -dir I -type clk clk1
  create_bd_pin -dir I -from 15 -to 0 data_in
  create_bd_pin -dir I -from 7 -to 0 rx_buff
  create_bd_pin -dir I sig_in
  create_bd_pin -dir I sig_in1
  create_bd_pin -dir O sig_out
  create_bd_pin -dir O -from 7 -to 0 tx_buff
  create_bd_pin -dir I wr_en

  # Create instance: sync_byte_0, and set properties
  set block_name sync_byte
  set block_cell_name sync_byte_0
  if { [catch {set sync_byte_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sync_byte_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sync_byte_1, and set properties
  set block_name sync_byte
  set block_cell_name sync_byte_1
  if { [catch {set sync_byte_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sync_byte_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sync_extern_0, and set properties
  set block_name sync_extern
  set block_cell_name sync_extern_0
  if { [catch {set sync_extern_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sync_extern_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sync_extern_1, and set properties
  set block_name sync_extern
  set block_cell_name sync_extern_1
  if { [catch {set sync_extern_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sync_extern_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sync_extern_2, and set properties
  set block_name sync_extern
  set block_cell_name sync_extern_2
  if { [catch {set sync_extern_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sync_extern_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: uart_controller, and set properties
  set block_name uart_controller
  set block_cell_name uart_controller
  if { [catch {set uart_controller [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $uart_controller eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net clk1_1 [get_bd_pins clk1] [get_bd_pins sync_byte_1/clk] [get_bd_pins sync_extern_0/clk]
  connect_bd_net -net clk_1 [get_bd_pins clk] [get_bd_pins sync_byte_0/clk] [get_bd_pins sync_extern_1/clk] [get_bd_pins sync_extern_2/clk] [get_bd_pins uart_controller/clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins uart_controller/tx_buff_data_in]
  connect_bd_net -net rx_buff_1 [get_bd_pins rx_buff] [get_bd_pins sync_byte_0/byte]
  connect_bd_net -net sig_in1_1 [get_bd_pins sig_in1] [get_bd_pins sync_extern_2/sig_in]
  connect_bd_net -net sig_in_1 [get_bd_pins sig_in] [get_bd_pins sync_extern_1/sig_in]
  connect_bd_net -net sync_byte_0_stable_word [get_bd_pins sync_byte_0/stable_byte] [get_bd_pins uart_controller/rx_buff]
  connect_bd_net -net sync_byte_1_stable_word [get_bd_pins tx_buff] [get_bd_pins sync_byte_1/stable_byte]
  connect_bd_net -net sync_extern_0_sig_out [get_bd_pins sig_out] [get_bd_pins sync_extern_0/sig_out]
  connect_bd_net -net sync_extern_1_sig_out [get_bd_pins sync_extern_1/sig_out] [get_bd_pins uart_controller/rx_ready]
  connect_bd_net -net sync_extern_2_sig_out [get_bd_pins sync_extern_2/sig_out] [get_bd_pins uart_controller/tx_ready]
  connect_bd_net -net uart_controller_tx_buff [get_bd_pins sync_byte_1/byte] [get_bd_pins uart_controller/tx_buff]
  connect_bd_net -net uart_controller_tx_start_trans [get_bd_pins sync_extern_0/sig_in] [get_bd_pins uart_controller/tx_start_trans]
  connect_bd_net -net wr_en_1 [get_bd_pins wr_en] [get_bd_pins uart_controller/tx_buff_wr]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: seg_display
proc create_hier_cell_seg_display { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_seg_display() - Empty argument(s)!"}
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
  create_bd_pin -dir I clk_in
  create_bd_pin -dir I -from 15 -to 0 data
  create_bd_pin -dir I -from 15 -to 0 pc_in
  create_bd_pin -dir O -from 7 -to 0 seg
  create_bd_pin -dir O -from 7 -to 0 seg_sel

  # Create instance: clk_div_0, and set properties
  set block_name clk_div
  set block_cell_name clk_div_0
  if { [catch {set clk_div_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $clk_div_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: display_ctrl_0, and set properties
  set block_name display_ctrl
  set block_cell_name display_ctrl_0
  if { [catch {set display_ctrl_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $display_ctrl_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: nexys_7seg_0, and set properties
  set block_name nexys_7seg
  set block_cell_name nexys_7seg_0
  if { [catch {set nexys_7seg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $nexys_7seg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net Net [get_bd_pins clk_div_0/clk_out] [get_bd_pins display_ctrl_0/clk] [get_bd_pins nexys_7seg_0/clk]
  connect_bd_net -net clk_in_1 [get_bd_pins clk_in] [get_bd_pins clk_div_0/clk_in]
  connect_bd_net -net data_1 [get_bd_pins data] [get_bd_pins display_ctrl_0/data]
  connect_bd_net -net display_ctrl_0_data_out [get_bd_pins display_ctrl_0/data_out] [get_bd_pins nexys_7seg_0/data]
  connect_bd_net -net nexys_7seg_0_seg [get_bd_pins seg] [get_bd_pins nexys_7seg_0/seg]
  connect_bd_net -net nexys_7seg_0_seg_sel [get_bd_pins seg_sel] [get_bd_pins nexys_7seg_0/seg_sel]
  connect_bd_net -net pc_in_1 [get_bd_pins pc_in] [get_bd_pins display_ctrl_0/pc_in]

  # Restore current instance
  current_bd_instance $oldCurInst
}

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
  create_bd_pin -dir I UART_TXD_IN
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I -type clk clk1
  create_bd_pin -dir O cpu_clk_en
  create_bd_pin -dir O rst
  create_bd_pin -dir O sig_out
  create_bd_pin -dir O sig_out1
  create_bd_pin -dir O sig_out2
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
  connect_bd_net -net sync_pc_rst_to_cpu_clk_sig_out [get_bd_pins rst] [get_bd_pins sync_pc_rst_to_cpu_clk/sig_out]
  connect_bd_net -net sync_word_to_CPU_clk_sync_word [get_bd_pins sync_word] [get_bd_pins sync_addr_to_CPU_clk/stable_word]
  connect_bd_net -net uart_programmer_addr [get_bd_pins sync_addr_to_CPU_clk/word] [get_bd_pins uart_programmer/addr]
  connect_bd_net -net uart_programmer_cpu_clk_en [get_bd_pins cpu_clk_en] [get_bd_pins uart_programmer/cpu_clk_en]
  connect_bd_net -net uart_programmer_cpu_rst [get_bd_pins sync_pc_rst_to_cpu_clk/sig_in] [get_bd_pins uart_programmer/cpu_rst]
  connect_bd_net -net uart_programmer_data_mem_wr [get_bd_pins sync_data_mem_wr_to_cpu_clk/sig_in] [get_bd_pins uart_programmer/data_mem_wr]
  connect_bd_net -net uart_programmer_dout [get_bd_pins sync_data_to_cpu_clk/word] [get_bd_pins uart_programmer/dout]
  connect_bd_net -net uart_programmer_prog_mem_wr [get_bd_pins sync_prog_mem_wr_to_cpu_clk/sig_in] [get_bd_pins uart_programmer/prog_mem_wr]
  connect_bd_net -net uart_programmer_prog_mode [get_bd_pins sync_prog_mode_to_CPU_clk/sig_in] [get_bd_pins uart_programmer/prog_mode]
  connect_bd_net -net uart_rx_data [get_bd_pins uart/rx_data] [get_bd_pins uart_programmer/rx_data]
  connect_bd_net -net uart_rx_ready [get_bd_pins uart/rx_ready] [get_bd_pins uart_programmer/rx_ready]
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
  create_bd_pin -dir I -type clk clk1
  create_bd_pin -dir O -from 15 -to 0 cur_ins
  create_bd_pin -dir I -from 15 -to 0 data_in
  create_bd_pin -dir O -from 15 -to 0 data_out
  create_bd_pin -dir I -from 15 -to 0 ins_addr
  create_bd_pin -dir I -from 15 -to 0 prog_addr1
  create_bd_pin -dir I -from 15 -to 0 prog_data1
  create_bd_pin -dir I prog_mode
  create_bd_pin -dir I prog_wr
  create_bd_pin -dir I prog_wr1
  create_bd_pin -dir I -from 7 -to 0 rx_buff
  create_bd_pin -dir I sig_in
  create_bd_pin -dir I sig_in1
  create_bd_pin -dir O sig_out
  create_bd_pin -dir I -from 15 -to 0 stack_addr
  create_bd_pin -dir O -from 15 -to 0 stack_out
  create_bd_pin -dir I stack_wr_en
  create_bd_pin -dir O -from 7 -to 0 tx_buff
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
  
  # Create instance: mem_maped_uart
  create_hier_cell_mem_maped_uart $hier_obj mem_maped_uart

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
  connect_bd_net -net clk1_1 [get_bd_pins clk1] [get_bd_pins mem_maped_uart/clk1]
  connect_bd_net -net clk_1 [get_bd_pins clk] [get_bd_pins data_mem/clk] [get_bd_pins mem_maped_uart/clk] [get_bd_pins prog_mem/clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins data_mem/data_in] [get_bd_pins data_mem/rd_addr] [get_bd_pins mem_maped_uart/data_in]
  connect_bd_net -net data_mem_data_out [get_bd_pins data_out] [get_bd_pins data_mem/data_out]
  connect_bd_net -net data_mem_stack_out [get_bd_pins stack_out] [get_bd_pins data_mem/stack_out]
  connect_bd_net -net ins_addr_1 [get_bd_pins ins_addr] [get_bd_pins prog_mem/ins_addr]
  connect_bd_net -net mem_maped_uart_sig_out [get_bd_pins sig_out] [get_bd_pins mem_maped_uart/sig_out]
  connect_bd_net -net prog_addr1_1 [get_bd_pins prog_addr1] [get_bd_pins data_mem/prog_addr] [get_bd_pins prog_mem/prog_addr]
  connect_bd_net -net prog_data1_1 [get_bd_pins prog_data1] [get_bd_pins data_mem/prog_data] [get_bd_pins prog_mem/prog_data]
  connect_bd_net -net prog_mem_cur_ins [get_bd_pins cur_ins] [get_bd_pins prog_mem/cur_ins]
  connect_bd_net -net prog_mode_1 [get_bd_pins prog_mode] [get_bd_pins data_mem/prog_mode]
  connect_bd_net -net prog_wr1_1 [get_bd_pins prog_wr1] [get_bd_pins data_mem/prog_wr]
  connect_bd_net -net prog_wr_1 [get_bd_pins prog_wr] [get_bd_pins prog_mem/prog_wr]
  connect_bd_net -net rx_buff_1 [get_bd_pins rx_buff] [get_bd_pins mem_maped_uart/rx_buff]
  connect_bd_net -net sig_in1_1 [get_bd_pins sig_in1] [get_bd_pins mem_maped_uart/sig_in1]
  connect_bd_net -net sig_in_1 [get_bd_pins sig_in] [get_bd_pins mem_maped_uart/sig_in]
  connect_bd_net -net stack_addr_1 [get_bd_pins stack_addr] [get_bd_pins data_mem/stack_addr]
  connect_bd_net -net stack_wr_en_1 [get_bd_pins stack_wr_en] [get_bd_pins data_mem/stack_wr_en]
  connect_bd_net -net uart_controller_0_tx_buff [get_bd_pins tx_buff] [get_bd_pins mem_maped_uart/tx_buff]
  connect_bd_net -net wr_addr_1 [get_bd_pins wr_addr] [get_bd_pins data_mem/wr_addr]
  connect_bd_net -net wr_en_1 [get_bd_pins wr_en] [get_bd_pins data_mem/wr_en] [get_bd_pins mem_maped_uart/wr_en]

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
  set LED16_G [ create_bd_port -dir O LED16_G ]
  set LED17_B [ create_bd_port -dir O LED17_B ]
  set UART_RXD_OUT [ create_bd_port -dir O UART_RXD_OUT ]
  set UART_TXD_IN [ create_bd_port -dir I UART_TXD_IN ]
  set inr [ create_bd_port -dir I -from 2 -to 0 inr ]
  set outvalue [ create_bd_port -dir O -from 15 -to 0 outvalue ]
  set seg [ create_bd_port -dir O -from 7 -to 0 seg ]
  set seg_sel [ create_bd_port -dir O -from 7 -to 0 seg_sel ]

  # Create instance: clock_gen
  create_hier_cell_clock_gen [current_bd_instance .] clock_gen

  # Create instance: cpu_uart, and set properties
  set block_name uart
  set block_cell_name cpu_uart
  if { [catch {set cpu_uart [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $cpu_uart eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: memory
  create_hier_cell_memory [current_bd_instance .] memory

  # Create instance: programmer
  create_hier_cell_programmer [current_bd_instance .] programmer

  # Create instance: seg_display
  create_hier_cell_seg_display [current_bd_instance .] seg_display

  # Create instance: shell_cpu_top, and set properties
  set block_name shell_cpu_top
  set block_cell_name shell_cpu_top
  if { [catch {set shell_cpu_top [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $shell_cpu_top eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net CLK100MHZ_2 [get_bd_ports CLK100MHZ] [get_bd_pins clock_gen/CLK100MHZ]
  connect_bd_net -net UART_TXD_IN_1 [get_bd_ports UART_TXD_IN] [get_bd_pins cpu_uart/rx] [get_bd_pins programmer/UART_TXD_IN]
  connect_bd_net -net async_rst_1 [get_bd_ports LED17_B] [get_bd_pins programmer/rst] [get_bd_pins shell_cpu_top/rst]
  connect_bd_net -net clk_2 [get_bd_pins clock_gen/CPU_CLK] [get_bd_pins memory/clk] [get_bd_pins programmer/clk1] [get_bd_pins seg_display/clk_in]
  connect_bd_net -net clock_gen_c [get_bd_pins clock_gen/c] [get_bd_pins shell_cpu_top/clk]
  connect_bd_net -net clock_gen_clk_100Mhz [get_bd_pins clock_gen/clk_100Mhz] [get_bd_pins cpu_uart/clk] [get_bd_pins memory/clk1] [get_bd_pins programmer/clk]
  connect_bd_net -net cpu_uart_rx_ready [get_bd_pins cpu_uart/rx_ready] [get_bd_pins memory/sig_in]
  connect_bd_net -net cpu_uart_tx_ready [get_bd_pins cpu_uart/tx_ready] [get_bd_pins memory/sig_in1]
  connect_bd_net -net inr_1 [get_bd_ports inr] [get_bd_pins shell_cpu_top/inr]
  connect_bd_net -net memory_cur_ins [get_bd_pins memory/cur_ins] [get_bd_pins shell_cpu_top/instruction]
  connect_bd_net -net memory_data_out [get_bd_pins memory/data_out] [get_bd_pins shell_cpu_top/data_mem]
  connect_bd_net -net memory_sig_out [get_bd_pins cpu_uart/tx_start_trans] [get_bd_pins memory/sig_out]
  connect_bd_net -net memory_stack_out [get_bd_pins memory/stack_out] [get_bd_pins seg_display/data] [get_bd_pins shell_cpu_top/from_stack]
  connect_bd_net -net memory_tx_buff [get_bd_pins cpu_uart/tx_buff] [get_bd_pins memory/tx_buff]
  connect_bd_net -net prog_addr1_1 [get_bd_pins memory/prog_addr1] [get_bd_pins programmer/sync_word]
  connect_bd_net -net prog_data1_1 [get_bd_pins memory/prog_data1] [get_bd_pins programmer/sync_word1]
  connect_bd_net -net prog_mode_2 [get_bd_ports LED16_G] [get_bd_pins memory/prog_mode] [get_bd_pins programmer/sig_out]
  connect_bd_net -net prog_wr1_1 [get_bd_pins memory/prog_wr1] [get_bd_pins programmer/sig_out1]
  connect_bd_net -net programmer_cpu_clk_en [get_bd_pins clock_gen/sig_in] [get_bd_pins programmer/cpu_clk_en]
  connect_bd_net -net programmer_sig_out2 [get_bd_pins memory/prog_wr] [get_bd_pins programmer/sig_out2]
  connect_bd_net -net seg_display_seg [get_bd_ports seg] [get_bd_pins seg_display/seg]
  connect_bd_net -net seg_display_seg_sel [get_bd_ports seg_sel] [get_bd_pins seg_display/seg_sel]
  connect_bd_net -net shell_cpu_top_0_data_mem_wr [get_bd_pins memory/wr_en] [get_bd_pins shell_cpu_top/data_mem_wr]
  connect_bd_net -net shell_cpu_top_0_ins_addr [get_bd_pins memory/ins_addr] [get_bd_pins seg_display/pc_in] [get_bd_pins shell_cpu_top/ins_addr]
  connect_bd_net -net shell_cpu_top_0_outvalue [get_bd_ports outvalue] [get_bd_pins shell_cpu_top/outvalue]
  connect_bd_net -net shell_cpu_top_0_regA [get_bd_pins memory/data_in] [get_bd_pins shell_cpu_top/regA]
  connect_bd_net -net shell_cpu_top_0_regB [get_bd_pins memory/wr_addr] [get_bd_pins shell_cpu_top/regB]
  connect_bd_net -net shell_cpu_top_0_stack_ptr [get_bd_pins memory/stack_addr] [get_bd_pins shell_cpu_top/stack_ptr]
  connect_bd_net -net shell_cpu_top_0_stack_wr [get_bd_pins memory/stack_wr_en] [get_bd_pins shell_cpu_top/stack_wr]
  connect_bd_net -net uart_0_rx_data [get_bd_pins cpu_uart/rx_data] [get_bd_pins memory/rx_buff]
  connect_bd_net -net uart_0_tx [get_bd_ports UART_RXD_OUT] [get_bd_pins cpu_uart/tx]

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


