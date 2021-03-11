gui_open_window Wave
gui_sg_create vga_clock_group
gui_list_add_group -id Wave.1 {vga_clock_group}
gui_sg_addsignal -group vga_clock_group {vga_clock_tb.test_phase}
gui_set_radix -radix {ascii} -signals {vga_clock_tb.test_phase}
gui_sg_addsignal -group vga_clock_group {{Input_clocks}} -divider
gui_sg_addsignal -group vga_clock_group {vga_clock_tb.CLK_IN1}
gui_sg_addsignal -group vga_clock_group {{Output_clocks}} -divider
gui_sg_addsignal -group vga_clock_group {vga_clock_tb.dut.clk}
gui_list_expand -id Wave.1 vga_clock_tb.dut.clk
gui_sg_addsignal -group vga_clock_group {{Status_control}} -divider
gui_sg_addsignal -group vga_clock_group {vga_clock_tb.RESET}
gui_sg_addsignal -group vga_clock_group {vga_clock_tb.LOCKED}
gui_sg_addsignal -group vga_clock_group {{Counters}} -divider
gui_sg_addsignal -group vga_clock_group {vga_clock_tb.COUNT}
gui_sg_addsignal -group vga_clock_group {vga_clock_tb.dut.counter}
gui_list_expand -id Wave.1 vga_clock_tb.dut.counter
gui_zoom -window Wave.1 -full
