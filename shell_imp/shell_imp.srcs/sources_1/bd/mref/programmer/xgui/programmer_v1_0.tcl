# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CPU_CLK_EN_SET_HIGH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CPU_CLK_EN_SET_LOW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PC_RST_SET_HIGH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PC_RST_SET_LOW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PROG_MODE_SET_HIGH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PROG_MODE_SET_LOW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "READ_CMD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WRITE_DATA_MEM_CMD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WRITE_PROG_MEM_CMD" -parent ${Page_0}


}

proc update_PARAM_VALUE.CPU_CLK_EN_SET_HIGH { PARAM_VALUE.CPU_CLK_EN_SET_HIGH } {
	# Procedure called to update CPU_CLK_EN_SET_HIGH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPU_CLK_EN_SET_HIGH { PARAM_VALUE.CPU_CLK_EN_SET_HIGH } {
	# Procedure called to validate CPU_CLK_EN_SET_HIGH
	return true
}

proc update_PARAM_VALUE.CPU_CLK_EN_SET_LOW { PARAM_VALUE.CPU_CLK_EN_SET_LOW } {
	# Procedure called to update CPU_CLK_EN_SET_LOW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPU_CLK_EN_SET_LOW { PARAM_VALUE.CPU_CLK_EN_SET_LOW } {
	# Procedure called to validate CPU_CLK_EN_SET_LOW
	return true
}

proc update_PARAM_VALUE.PC_RST_SET_HIGH { PARAM_VALUE.PC_RST_SET_HIGH } {
	# Procedure called to update PC_RST_SET_HIGH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PC_RST_SET_HIGH { PARAM_VALUE.PC_RST_SET_HIGH } {
	# Procedure called to validate PC_RST_SET_HIGH
	return true
}

proc update_PARAM_VALUE.PC_RST_SET_LOW { PARAM_VALUE.PC_RST_SET_LOW } {
	# Procedure called to update PC_RST_SET_LOW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PC_RST_SET_LOW { PARAM_VALUE.PC_RST_SET_LOW } {
	# Procedure called to validate PC_RST_SET_LOW
	return true
}

proc update_PARAM_VALUE.PROG_MODE_SET_HIGH { PARAM_VALUE.PROG_MODE_SET_HIGH } {
	# Procedure called to update PROG_MODE_SET_HIGH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PROG_MODE_SET_HIGH { PARAM_VALUE.PROG_MODE_SET_HIGH } {
	# Procedure called to validate PROG_MODE_SET_HIGH
	return true
}

proc update_PARAM_VALUE.PROG_MODE_SET_LOW { PARAM_VALUE.PROG_MODE_SET_LOW } {
	# Procedure called to update PROG_MODE_SET_LOW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PROG_MODE_SET_LOW { PARAM_VALUE.PROG_MODE_SET_LOW } {
	# Procedure called to validate PROG_MODE_SET_LOW
	return true
}

proc update_PARAM_VALUE.READ_CMD { PARAM_VALUE.READ_CMD } {
	# Procedure called to update READ_CMD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.READ_CMD { PARAM_VALUE.READ_CMD } {
	# Procedure called to validate READ_CMD
	return true
}

proc update_PARAM_VALUE.WRITE_DATA_MEM_CMD { PARAM_VALUE.WRITE_DATA_MEM_CMD } {
	# Procedure called to update WRITE_DATA_MEM_CMD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WRITE_DATA_MEM_CMD { PARAM_VALUE.WRITE_DATA_MEM_CMD } {
	# Procedure called to validate WRITE_DATA_MEM_CMD
	return true
}

proc update_PARAM_VALUE.WRITE_PROG_MEM_CMD { PARAM_VALUE.WRITE_PROG_MEM_CMD } {
	# Procedure called to update WRITE_PROG_MEM_CMD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WRITE_PROG_MEM_CMD { PARAM_VALUE.WRITE_PROG_MEM_CMD } {
	# Procedure called to validate WRITE_PROG_MEM_CMD
	return true
}


proc update_MODELPARAM_VALUE.READ_CMD { MODELPARAM_VALUE.READ_CMD PARAM_VALUE.READ_CMD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.READ_CMD}] ${MODELPARAM_VALUE.READ_CMD}
}

proc update_MODELPARAM_VALUE.WRITE_PROG_MEM_CMD { MODELPARAM_VALUE.WRITE_PROG_MEM_CMD PARAM_VALUE.WRITE_PROG_MEM_CMD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WRITE_PROG_MEM_CMD}] ${MODELPARAM_VALUE.WRITE_PROG_MEM_CMD}
}

proc update_MODELPARAM_VALUE.WRITE_DATA_MEM_CMD { MODELPARAM_VALUE.WRITE_DATA_MEM_CMD PARAM_VALUE.WRITE_DATA_MEM_CMD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WRITE_DATA_MEM_CMD}] ${MODELPARAM_VALUE.WRITE_DATA_MEM_CMD}
}

proc update_MODELPARAM_VALUE.PROG_MODE_SET_HIGH { MODELPARAM_VALUE.PROG_MODE_SET_HIGH PARAM_VALUE.PROG_MODE_SET_HIGH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PROG_MODE_SET_HIGH}] ${MODELPARAM_VALUE.PROG_MODE_SET_HIGH}
}

proc update_MODELPARAM_VALUE.PROG_MODE_SET_LOW { MODELPARAM_VALUE.PROG_MODE_SET_LOW PARAM_VALUE.PROG_MODE_SET_LOW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PROG_MODE_SET_LOW}] ${MODELPARAM_VALUE.PROG_MODE_SET_LOW}
}

proc update_MODELPARAM_VALUE.CPU_CLK_EN_SET_HIGH { MODELPARAM_VALUE.CPU_CLK_EN_SET_HIGH PARAM_VALUE.CPU_CLK_EN_SET_HIGH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPU_CLK_EN_SET_HIGH}] ${MODELPARAM_VALUE.CPU_CLK_EN_SET_HIGH}
}

proc update_MODELPARAM_VALUE.CPU_CLK_EN_SET_LOW { MODELPARAM_VALUE.CPU_CLK_EN_SET_LOW PARAM_VALUE.CPU_CLK_EN_SET_LOW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPU_CLK_EN_SET_LOW}] ${MODELPARAM_VALUE.CPU_CLK_EN_SET_LOW}
}

proc update_MODELPARAM_VALUE.PC_RST_SET_HIGH { MODELPARAM_VALUE.PC_RST_SET_HIGH PARAM_VALUE.PC_RST_SET_HIGH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PC_RST_SET_HIGH}] ${MODELPARAM_VALUE.PC_RST_SET_HIGH}
}

proc update_MODELPARAM_VALUE.PC_RST_SET_LOW { MODELPARAM_VALUE.PC_RST_SET_LOW PARAM_VALUE.PC_RST_SET_LOW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PC_RST_SET_LOW}] ${MODELPARAM_VALUE.PC_RST_SET_LOW}
}

