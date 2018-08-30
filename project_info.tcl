# This is an automatically generated file used by digilent_vivado_checkout.tcl to set project options
proc set_digilent_project_properties {proj_name} {
    set project_obj [get_projects $proj_name]
	set_property "part" "xc7a100tcsg324-1" $project_obj
	set_property "board_part" "digilentinc.com:nexys4_ddr:part0:1.1" $project_obj
	set_property "default_lib" "xil_defaultlib" $project_obj
	set_property "simulator_language" "Mixed" $project_obj
	set_property "target_language" "VHDL" $project_obj
}
