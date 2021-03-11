
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name amiga_ocs_fpga -dir "/home/eddie/work/68000/hardware/fpga/amiga_ocs_fpga/planAhead_run_5" -part xc6slx16ftg256-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/eddie/work/68000/hardware/fpga/amiga_ocs_fpga/ocs.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/eddie/work/68000/hardware/fpga/amiga_ocs_fpga} {ipcore_dir} }
add_files [list {ipcore_dir/video_fifo.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "ocs.ucf" [current_fileset -constrset]
add_files [list {ocs.ucf}] -fileset [get_property constrset [current_run]]
link_design
