
module glue (
	input wire clk,
	input wire rst,
	input wire [23:1] addr,
	input wire [7:0] data,
	input wire as,
	input wire rw,
	input wire lds,
	input wire uds,
	input wire [2:0] fc,
	input wire irq1,
	input wire irq2,
	input wire miso,
	output wire rom_sel, 
	output wire io1_sel, 
	output wire io2_sel, 
	output wire ram1_sel, 
	output wire ram2_sel, 
	output wire ram3_sel, 
	output wire ram4_sel,
	output wire wrl,
	output wire rdl,
	output wire wru,
	output wire rdu,
	output wire [2:0] ipl,
	output wire dtack,
	output wire rst_h,
	output wire sclk,
	output wire mosi,
	output wire ss1,
	output wire ss2,
	output wire dc
);

	reg [20:0] counter;
	reg [20:0] counter2;
	reg [16:0] crom;

	assign ipl = 3'b_111;
	assign rst_h = !rst;
	assign dtack = 1'b_0;

	always @(posedge clk) begin
		counter <= counter + 1;
	end

	always @(negedge as) begin
		counter2 <= counter2 + 1;
	end
	
	assign rom_sel  = !(as == 1'b_0 && addr[23:20] == 4'b_0000 && rw == 1'b_1); // 0x000000
	assign ram1_sel = !(as == 1'b_0 && addr[23:20] == 4'b_1100); // 0xC00000
	assign ram2_sel = !(as == 1'b_0 && addr[23:20] == 4'b_1110); // 0xE00000
	assign ram3_sel = !(as == 1'b_0 && addr[23:20] == 4'b_1101); // 0xD00000
	assign ram4_sel = !(as == 1'b_0 && addr[23:20] == 4'b_1111); // 0xF00000
//	assign io2_sel  = !(as == 1'b_0 && addr[23:20] == 4'b_1001); // 0x900000
	assign io1_sel  = !(as == 1'b_0 && addr[23:20] == 4'b_1010); // 0xA00000
	assign wrl = !(as == 1'b_0 && rw == 1'b_0 && lds == 1'b_0);
	assign rdl = !(as == 1'b_0 && rw == 1'b_1 && lds == 1'b_0);	
	assign wru = !(as == 1'b_0 && rw == 1'b_0 && uds == 1'b_0);
	assign rdu = !(as == 1'b_0 && rw == 1'b_1 && uds == 1'b_0);
	
	assign io2_sel  = counter2[20];

	// SPI connections
	assign sclk = counter[20];
	assign ss1 = counter[19];
	assign ss2 = counter[18];
	assign dc = counter[17];
	assign mosi = counter[16];


endmodule
