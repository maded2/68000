
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name sdram_test2 -dir "/home/eddie/work/68000/hardware/fpga/sdram_test2/planAhead_run_2" -part xc6slx16ftg256-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/eddie/work/68000/hardware/fpga/sdram_test2/DDR3_Top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/eddie/work/68000/hardware/fpga/sdram_test2} }
set_property target_constrs_file "qm_ddr3.ucf" [current_fileset -constrset]
add_files [list {qm_ddr3.ucf}] -fileset [get_property constrset [current_run]]
link_design
