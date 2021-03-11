
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name amiga_ocs_fpga -dir "/home/eddie/work/68000/hardware/fpga/amiga_ocs_fpga/planAhead_run_4" -part xc6slx16ftg256-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "ocs.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ocs.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top ocs $srcset
add_files [list {ocs.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16ftg256-2
