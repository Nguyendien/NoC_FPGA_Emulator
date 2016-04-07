
################################################################
# This is a generated script based on design: network_2x2
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source network_2x2_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z020clg484-1
#    set_property BOARD_PART em.avnet.com:zed:part0:1.3 [current_project]

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name network_2x2

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

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports

  # Create instance: network_interface_0, and set properties
  set network_interface_0 [ create_bd_cell -type ip -vlnv ttu.ee:user:network_interface:1.1 network_interface_0 ]

  # Create instance: network_interface_1, and set properties
  set network_interface_1 [ create_bd_cell -type ip -vlnv ttu.ee:user:network_interface:1.1 network_interface_1 ]

  # Create instance: network_interface_2, and set properties
  set network_interface_2 [ create_bd_cell -type ip -vlnv ttu.ee:user:network_interface:1.1 network_interface_2 ]

  # Create instance: network_interface_3, and set properties
  set network_interface_3 [ create_bd_cell -type ip -vlnv ttu.ee:user:network_interface:1.1 network_interface_3 ]

  # Create instance: noc_router_NE_0, and set properties
  set noc_router_NE_0 [ create_bd_cell -type ip -vlnv ttu.ee:user:noc_router_NE:1.0 noc_router_NE_0 ]

  # Create instance: noc_router_NW_0, and set properties
  set noc_router_NW_0 [ create_bd_cell -type ip -vlnv ttu.ee:user:noc_router_NW:1.0 noc_router_NW_0 ]

  # Create instance: noc_router_SE_0, and set properties
  set noc_router_SE_0 [ create_bd_cell -type ip -vlnv ttu.ee:user:noc_router_SE:1.0 noc_router_SE_0 ]

  # Create instance: noc_router_SW_0, and set properties
  set noc_router_SW_0 [ create_bd_cell -type ip -vlnv ttu.ee:user:noc_router_SW:1.0 noc_router_SW_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list CONFIG.preset {ZedBoard}  ] $processing_system7_0

  # Create instance: processing_system7_0_axi_periph, and set properties
  set processing_system7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processing_system7_0_axi_periph ]
  set_property -dict [ list CONFIG.NUM_MI {4}  ] $processing_system7_0_axi_periph

  # Create instance: rst_processing_system7_0_100M, and set properties
  set rst_processing_system7_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_processing_system7_0_100M ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list CONFIG.CONST_VAL {60} CONFIG.CONST_WIDTH {8}  ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list CONFIG.CONST_VAL {10} CONFIG.CONST_WIDTH {4}  ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list CONFIG.CONST_VAL {0} CONFIG.CONST_WIDTH {2}  ] $xlconstant_2

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list CONFIG.CONST_VAL {60} CONFIG.CONST_WIDTH {8}  ] $xlconstant_3

  # Create instance: xlconstant_4, and set properties
  set xlconstant_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_4 ]
  set_property -dict [ list CONFIG.CONST_VAL {12} CONFIG.CONST_WIDTH {4}  ] $xlconstant_4

  # Create instance: xlconstant_5, and set properties
  set xlconstant_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_5 ]
  set_property -dict [ list CONFIG.CONST_VAL {1} CONFIG.CONST_WIDTH {2}  ] $xlconstant_5

  # Create instance: xlconstant_6, and set properties
  set xlconstant_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_6 ]
  set_property -dict [ list CONFIG.CONST_VAL {60} CONFIG.CONST_WIDTH {8}  ] $xlconstant_6

  # Create instance: xlconstant_7, and set properties
  set xlconstant_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_7 ]
  set_property -dict [ list CONFIG.CONST_VAL {3} CONFIG.CONST_WIDTH {4}  ] $xlconstant_7

  # Create instance: xlconstant_8, and set properties
  set xlconstant_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_8 ]
  set_property -dict [ list CONFIG.CONST_VAL {2} CONFIG.CONST_WIDTH {2}  ] $xlconstant_8

  # Create instance: xlconstant_9, and set properties
  set xlconstant_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_9 ]
  set_property -dict [ list CONFIG.CONST_VAL {60} CONFIG.CONST_WIDTH {8}  ] $xlconstant_9

  # Create instance: xlconstant_10, and set properties
  set xlconstant_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_10 ]
  set_property -dict [ list CONFIG.CONST_VAL {5} CONFIG.CONST_WIDTH {4}  ] $xlconstant_10

  # Create instance: xlconstant_11, and set properties
  set xlconstant_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_11 ]
  set_property -dict [ list CONFIG.CONST_VAL {3} CONFIG.CONST_WIDTH {2}  ] $xlconstant_11

  # Create interface connections
  connect_bd_intf_net -intf_net network_interface_0_router_in [get_bd_intf_pins network_interface_0/router_in] [get_bd_intf_pins noc_router_NW_0/L_out]
  connect_bd_intf_net -intf_net network_interface_1_router_in [get_bd_intf_pins network_interface_1/router_in] [get_bd_intf_pins noc_router_NE_0/L_out]
  connect_bd_intf_net -intf_net network_interface_2_router_in [get_bd_intf_pins network_interface_2/router_in] [get_bd_intf_pins noc_router_SW_0/L_out]
  connect_bd_intf_net -intf_net network_interface_3_router_in [get_bd_intf_pins network_interface_3/router_in] [get_bd_intf_pins noc_router_SE_0/L_out]
  connect_bd_intf_net -intf_net noc_router_NE_0_L_in [get_bd_intf_pins network_interface_1/router_out] [get_bd_intf_pins noc_router_NE_0/L_in]
  connect_bd_intf_net -intf_net noc_router_NE_0_S_in [get_bd_intf_pins noc_router_NE_0/S_in] [get_bd_intf_pins noc_router_SE_0/N_out]
  connect_bd_intf_net -intf_net noc_router_NE_0_W_in [get_bd_intf_pins noc_router_NE_0/W_in] [get_bd_intf_pins noc_router_NW_0/E_out]
  connect_bd_intf_net -intf_net noc_router_NW_0_E_in [get_bd_intf_pins noc_router_NE_0/W_out] [get_bd_intf_pins noc_router_NW_0/E_in]
  connect_bd_intf_net -intf_net noc_router_NW_0_L_in [get_bd_intf_pins network_interface_0/router_out] [get_bd_intf_pins noc_router_NW_0/L_in]
  connect_bd_intf_net -intf_net noc_router_NW_0_S_in [get_bd_intf_pins noc_router_NW_0/S_in] [get_bd_intf_pins noc_router_SW_0/N_out]
  connect_bd_intf_net -intf_net noc_router_SE_0_L_in [get_bd_intf_pins network_interface_3/router_out] [get_bd_intf_pins noc_router_SE_0/L_in]
  connect_bd_intf_net -intf_net noc_router_SE_0_N_in [get_bd_intf_pins noc_router_NE_0/S_out] [get_bd_intf_pins noc_router_SE_0/N_in]
  connect_bd_intf_net -intf_net noc_router_SE_0_W_in [get_bd_intf_pins noc_router_SE_0/W_in] [get_bd_intf_pins noc_router_SW_0/E_out]
  connect_bd_intf_net -intf_net noc_router_SW_0_E_in [get_bd_intf_pins noc_router_SE_0/W_out] [get_bd_intf_pins noc_router_SW_0/E_in]
  connect_bd_intf_net -intf_net noc_router_SW_0_L_in [get_bd_intf_pins network_interface_2/router_out] [get_bd_intf_pins noc_router_SW_0/L_in]
  connect_bd_intf_net -intf_net noc_router_SW_0_N_in [get_bd_intf_pins noc_router_NW_0/S_out] [get_bd_intf_pins noc_router_SW_0/N_in]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins processing_system7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M00_AXI [get_bd_intf_pins network_interface_0/S_AXI_PE_con] [get_bd_intf_pins processing_system7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M01_AXI [get_bd_intf_pins network_interface_1/S_AXI_PE_con] [get_bd_intf_pins processing_system7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M02_AXI [get_bd_intf_pins network_interface_2/S_AXI_PE_con] [get_bd_intf_pins processing_system7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M03_AXI [get_bd_intf_pins network_interface_3/S_AXI_PE_con] [get_bd_intf_pins processing_system7_0_axi_periph/M03_AXI]

  # Create port connections
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins network_interface_0/s00_axi_aclk] [get_bd_pins network_interface_1/s00_axi_aclk] [get_bd_pins network_interface_2/s00_axi_aclk] [get_bd_pins network_interface_3/s00_axi_aclk] [get_bd_pins noc_router_NE_0/clk] [get_bd_pins noc_router_NW_0/clk] [get_bd_pins noc_router_SE_0/clk] [get_bd_pins noc_router_SW_0/clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/M01_ACLK] [get_bd_pins processing_system7_0_axi_periph/M02_ACLK] [get_bd_pins processing_system7_0_axi_periph/M03_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK] [get_bd_pins rst_processing_system7_0_100M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_processing_system7_0_100M/ext_reset_in]
  connect_bd_net -net rst_processing_system7_0_100M_interconnect_aresetn [get_bd_pins processing_system7_0_axi_periph/ARESETN] [get_bd_pins rst_processing_system7_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_processing_system7_0_100M_peripheral_aresetn [get_bd_pins network_interface_0/s00_axi_aresetn] [get_bd_pins network_interface_1/s00_axi_aresetn] [get_bd_pins network_interface_2/s00_axi_aresetn] [get_bd_pins network_interface_3/s00_axi_aresetn] [get_bd_pins noc_router_NE_0/rst] [get_bd_pins noc_router_NW_0/rst] [get_bd_pins noc_router_SE_0/rst] [get_bd_pins noc_router_SW_0/rst] [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M01_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M02_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M03_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_processing_system7_0_100M/peripheral_aresetn]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins noc_router_NW_0/Rxy] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_10_dout [get_bd_pins noc_router_SE_0/Cx] [get_bd_pins xlconstant_10/dout]
  connect_bd_net -net xlconstant_11_dout [get_bd_pins noc_router_SE_0/cur_addr] [get_bd_pins xlconstant_11/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins noc_router_NW_0/Cx] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins noc_router_NW_0/cur_addr] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins noc_router_NE_0/Rxy] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlconstant_4_dout [get_bd_pins noc_router_NE_0/Cx] [get_bd_pins xlconstant_4/dout]
  connect_bd_net -net xlconstant_5_dout [get_bd_pins noc_router_NE_0/cur_addr] [get_bd_pins xlconstant_5/dout]
  connect_bd_net -net xlconstant_6_dout [get_bd_pins noc_router_SW_0/Rxy] [get_bd_pins xlconstant_6/dout]
  connect_bd_net -net xlconstant_7_dout [get_bd_pins noc_router_SW_0/Cx] [get_bd_pins xlconstant_7/dout]
  connect_bd_net -net xlconstant_8_dout [get_bd_pins noc_router_SW_0/cur_addr] [get_bd_pins xlconstant_8/dout]
  connect_bd_net -net xlconstant_9_dout [get_bd_pins noc_router_SE_0/Rxy] [get_bd_pins xlconstant_9/dout]

  # Create address segments
  create_bd_addr_seg -range 0x10000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs network_interface_0/S00_AXI/S00_AXI_reg] SEG_network_interface_0_S00_AXI_reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs network_interface_1/S00_AXI/S00_AXI_reg] SEG_network_interface_1_S00_AXI_reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C20000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs network_interface_2/S00_AXI/S00_AXI_reg] SEG_network_interface_2_S00_AXI_reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C30000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs network_interface_3/S00_AXI/S00_AXI_reg] SEG_network_interface_3_S00_AXI_reg
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


