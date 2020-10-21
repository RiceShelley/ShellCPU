# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "READ_CMD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TOGGLE_CPU_CLK_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TOGGLE_PC_RST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TOGGLE_PROG_MODE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WRITE_DATA_MEM_CMD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WRITE_PROG_MEM_CMD" -parent ${Page_0}


}

proc update_PARAM_VALUE.READ_CMD { PARAM_VALUE.READ_CMD } {
	# Procedure called to update READ_CMD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.READ_CMD { PARAM_VALUE.READ_CMD } {
	# Procedure called to validate READ_CMD
	return true
}

proc update_PARAM_VALUE.TOGGLE_CPU_CLK_EN { PARAM_VALUE.TOGGLE_CPU_CLK_EN } {
	# Procedure called to update TOGGLE_CPU_CLK_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TOGGLE_CPU_CLK_EN { PARAM_VALUE.TOGGLE_CPU_CLK_EN } {
	# Procedure called to validate TOGGLE_CPU_CLK_EN
	return true
}

proc update_PARAM_VALUE.TOGGLE_PC_RST { PARAM_VALUE.TOGGLE_PC_RST } {
	# Procedure called to update TOGGLE_PC_RST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TOGGLE_PC_RST { PARAM_VALUE.TOGGLE_PC_RST } {
	# Procedure called to validate TOGGLE_PC_RST
	return true
}

proc update_PARAM_VALUE.TOGGLE_PROG_MODE { PARAM_VALUE.TOGGLE_PROG_MODE } {
	# Procedure called to update TOGGLE_PROG_MODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TOGGLE_PROG_MODE { PARAM_VALUE.TOGGLE_PROG_MODE } {
	# Procedure called to validate TOGGLE_PROG_MODE
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

proc update_MODELPARAM_VALUE.TOGGLE_PROG_MODE { MODELPARAM_VALUE.TOGGLE_PROG_MODE PARAM_VALUE.TOGGLE_PROG_MODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TOGGLE_PROG_MODE}] ${MODELPARAM_VALUE.TOGGLE_PROG_MODE}
}

proc update_MODELPARAM_VALUE.TOGGLE_CPU_CLK_EN { MODELPARAM_VALUE.TOGGLE_CPU_CLK_EN PARAM_VALUE.TOGGLE_CPU_CLK_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TOGGLE_CPU_CLK_EN}] ${MODELPARAM_VALUE.TOGGLE_CPU_CLK_EN}
}

proc update_MODELPARAM_VALUE.TOGGLE_PC_RST { MODELPARAM_VALUE.TOGGLE_PC_RST PARAM_VALUE.TOGGLE_PC_RST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TOGGLE_PC_RST}] ${MODELPARAM_VALUE.TOGGLE_PC_RST}
}

