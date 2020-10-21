# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "RX_IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RX_RECV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RX_START" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RX_STOP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TX_IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TX_START" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TX_STOP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TX_TRANS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "clk_acc_limit" -parent ${Page_0}


}

proc update_PARAM_VALUE.RX_IDLE { PARAM_VALUE.RX_IDLE } {
	# Procedure called to update RX_IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RX_IDLE { PARAM_VALUE.RX_IDLE } {
	# Procedure called to validate RX_IDLE
	return true
}

proc update_PARAM_VALUE.RX_RECV { PARAM_VALUE.RX_RECV } {
	# Procedure called to update RX_RECV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RX_RECV { PARAM_VALUE.RX_RECV } {
	# Procedure called to validate RX_RECV
	return true
}

proc update_PARAM_VALUE.RX_START { PARAM_VALUE.RX_START } {
	# Procedure called to update RX_START when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RX_START { PARAM_VALUE.RX_START } {
	# Procedure called to validate RX_START
	return true
}

proc update_PARAM_VALUE.RX_STOP { PARAM_VALUE.RX_STOP } {
	# Procedure called to update RX_STOP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RX_STOP { PARAM_VALUE.RX_STOP } {
	# Procedure called to validate RX_STOP
	return true
}

proc update_PARAM_VALUE.TX_IDLE { PARAM_VALUE.TX_IDLE } {
	# Procedure called to update TX_IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TX_IDLE { PARAM_VALUE.TX_IDLE } {
	# Procedure called to validate TX_IDLE
	return true
}

proc update_PARAM_VALUE.TX_START { PARAM_VALUE.TX_START } {
	# Procedure called to update TX_START when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TX_START { PARAM_VALUE.TX_START } {
	# Procedure called to validate TX_START
	return true
}

proc update_PARAM_VALUE.TX_STOP { PARAM_VALUE.TX_STOP } {
	# Procedure called to update TX_STOP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TX_STOP { PARAM_VALUE.TX_STOP } {
	# Procedure called to validate TX_STOP
	return true
}

proc update_PARAM_VALUE.TX_TRANS { PARAM_VALUE.TX_TRANS } {
	# Procedure called to update TX_TRANS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TX_TRANS { PARAM_VALUE.TX_TRANS } {
	# Procedure called to validate TX_TRANS
	return true
}

proc update_PARAM_VALUE.clk_acc_limit { PARAM_VALUE.clk_acc_limit } {
	# Procedure called to update clk_acc_limit when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.clk_acc_limit { PARAM_VALUE.clk_acc_limit } {
	# Procedure called to validate clk_acc_limit
	return true
}


proc update_MODELPARAM_VALUE.clk_acc_limit { MODELPARAM_VALUE.clk_acc_limit PARAM_VALUE.clk_acc_limit } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.clk_acc_limit}] ${MODELPARAM_VALUE.clk_acc_limit}
}

proc update_MODELPARAM_VALUE.RX_START { MODELPARAM_VALUE.RX_START PARAM_VALUE.RX_START } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RX_START}] ${MODELPARAM_VALUE.RX_START}
}

proc update_MODELPARAM_VALUE.RX_RECV { MODELPARAM_VALUE.RX_RECV PARAM_VALUE.RX_RECV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RX_RECV}] ${MODELPARAM_VALUE.RX_RECV}
}

proc update_MODELPARAM_VALUE.RX_STOP { MODELPARAM_VALUE.RX_STOP PARAM_VALUE.RX_STOP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RX_STOP}] ${MODELPARAM_VALUE.RX_STOP}
}

proc update_MODELPARAM_VALUE.RX_IDLE { MODELPARAM_VALUE.RX_IDLE PARAM_VALUE.RX_IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RX_IDLE}] ${MODELPARAM_VALUE.RX_IDLE}
}

proc update_MODELPARAM_VALUE.TX_START { MODELPARAM_VALUE.TX_START PARAM_VALUE.TX_START } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TX_START}] ${MODELPARAM_VALUE.TX_START}
}

proc update_MODELPARAM_VALUE.TX_TRANS { MODELPARAM_VALUE.TX_TRANS PARAM_VALUE.TX_TRANS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TX_TRANS}] ${MODELPARAM_VALUE.TX_TRANS}
}

proc update_MODELPARAM_VALUE.TX_STOP { MODELPARAM_VALUE.TX_STOP PARAM_VALUE.TX_STOP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TX_STOP}] ${MODELPARAM_VALUE.TX_STOP}
}

proc update_MODELPARAM_VALUE.TX_IDLE { MODELPARAM_VALUE.TX_IDLE PARAM_VALUE.TX_IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TX_IDLE}] ${MODELPARAM_VALUE.TX_IDLE}
}

