
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name framebuffer -dir "/home/eddie/work/68000/hardware/fpga/framebuffer/planAhead_run_1" -part xc6slx16ftg256-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "fb.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {fb.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top fb $srcset
add_files [list {fb.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16ftg256-2
