
module top (
	input cpu_clk,
	input [23:0] addr,
	input as,
	input rw,
	input [2:0] fc,
	input single_step,
	input lds,
	input uds,
	
	output ram_select1,
	output ram_select2,
	output rom_select,
	output dtack,
	output berr
);

reg ram1 = 1'b_0;
reg ram2 = 1'b_0;
reg rom = 1'b_0;

always @(as)
	begin
		if (as == 1'b_0)
			begin
				ram1 <= addr[23:20] == 8'h_c;
				ram2 <= addr[23:20] == 8'h_e;
				rom <= addr[23:20] == 8'h_0;
			end
		else
			begin
				ram1 <= 1'b_0;
				ram2 <= 1'b_0;
				rom <= 1'b_0;

			end
	end

	assign ram_select1 = !ram1;
	assign ram_select2 = !ram2;
	assign rom_select = !rom;
endmodule