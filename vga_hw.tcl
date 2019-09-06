# TCL File Generated by Component Editor 16.1
# Thu Sep 05 20:07:01 BRT 2019
# DO NOT MODIFY


# 
# VGA "VGA" v1.0
#  2019.09.05.20:07:01
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module VGA
# 
set_module_property DESCRIPTION ""
set_module_property NAME VGA
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME VGA
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL top2
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file top2.v VERILOG PATH verilogFiles/PongController/top2.v TOP_LEVEL_FILE
add_fileset_file vga640x480.v VERILOG PATH verilogFiles/PongController/vga640x480.v
add_fileset_file printBar.v VERILOG PATH verilogFiles/PongController/printBar.v
add_fileset_file printBall.v VERILOG PATH verilogFiles/PongController/printBall.v
add_fileset_file LFSR.v VERILOG PATH verilogFiles/PongController/LFSR.v
add_fileset_file printMenu.v VERILOG PATH verilogFiles/PongController/printMenu.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point nios_custom_instruction_slave
# 
add_interface nios_custom_instruction_slave nios_custom_instruction end
set_interface_property nios_custom_instruction_slave clockCycle 0
set_interface_property nios_custom_instruction_slave operands 2
set_interface_property nios_custom_instruction_slave ENABLED true
set_interface_property nios_custom_instruction_slave EXPORT_OF ""
set_interface_property nios_custom_instruction_slave PORT_NAME_MAP ""
set_interface_property nios_custom_instruction_slave CMSIS_SVD_VARIABLES ""
set_interface_property nios_custom_instruction_slave SVD_ADDRESS_GROUP ""

add_interface_port nios_custom_instruction_slave CLK clk Input 1
add_interface_port nios_custom_instruction_slave CLK_EN clk_en Input 1
add_interface_port nios_custom_instruction_slave dataa dataa Input 32
add_interface_port nios_custom_instruction_slave RST_BTN reset Input 1
add_interface_port nios_custom_instruction_slave result result Output 32


# 
# connection point HS
# 
add_interface HS conduit end
set_interface_property HS associatedClock ""
set_interface_property HS associatedReset ""
set_interface_property HS ENABLED true
set_interface_property HS EXPORT_OF ""
set_interface_property HS PORT_NAME_MAP ""
set_interface_property HS CMSIS_SVD_VARIABLES ""
set_interface_property HS SVD_ADDRESS_GROUP ""

add_interface_port HS VGA_HS_O writeresponsevalid_n Output 1


# 
# connection point VS
# 
add_interface VS conduit end
set_interface_property VS associatedClock ""
set_interface_property VS associatedReset ""
set_interface_property VS ENABLED true
set_interface_property VS EXPORT_OF ""
set_interface_property VS PORT_NAME_MAP ""
set_interface_property VS CMSIS_SVD_VARIABLES ""
set_interface_property VS SVD_ADDRESS_GROUP ""

add_interface_port VS VGA_VS_O writeresponsevalid_n Output 1


# 
# connection point VGA_R
# 
add_interface VGA_R conduit end
set_interface_property VGA_R associatedClock ""
set_interface_property VGA_R associatedReset ""
set_interface_property VGA_R ENABLED true
set_interface_property VGA_R EXPORT_OF ""
set_interface_property VGA_R PORT_NAME_MAP ""
set_interface_property VGA_R CMSIS_SVD_VARIABLES ""
set_interface_property VGA_R SVD_ADDRESS_GROUP ""

add_interface_port VGA_R VGA_R writeresponsevalid_n Output 1


# 
# connection point VGA_G
# 
add_interface VGA_G conduit end
set_interface_property VGA_G associatedClock ""
set_interface_property VGA_G associatedReset ""
set_interface_property VGA_G ENABLED true
set_interface_property VGA_G EXPORT_OF ""
set_interface_property VGA_G PORT_NAME_MAP ""
set_interface_property VGA_G CMSIS_SVD_VARIABLES ""
set_interface_property VGA_G SVD_ADDRESS_GROUP ""

add_interface_port VGA_G VGA_G writeresponsevalid_n Output 1


# 
# connection point VGA_B
# 
add_interface VGA_B conduit end
set_interface_property VGA_B associatedClock ""
set_interface_property VGA_B associatedReset ""
set_interface_property VGA_B ENABLED true
set_interface_property VGA_B EXPORT_OF ""
set_interface_property VGA_B PORT_NAME_MAP ""
set_interface_property VGA_B CMSIS_SVD_VARIABLES ""
set_interface_property VGA_B SVD_ADDRESS_GROUP ""

add_interface_port VGA_B VGA_B writeresponsevalid_n Output 1

