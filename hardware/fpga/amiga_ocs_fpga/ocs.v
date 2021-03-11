`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:50:40 02/15/2021 
// Design Name: 
// Module Name:    ocs 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ocs(
	input wire cpu_clk,
	input wire sys_clk,
	input wire rst,
	input wire as,
	output led_1,
	output led_2,
	output reg     vga_hsync,    // horizontal sync
	output reg     vga_vsync,    // vertical sync
	output reg     [5:0] vga_r,  // 6-bit VGA red
	output reg     [5:0] vga_g,  // 6-bit VGA green
	output reg     [5:0] vga_b   // 6-bit VGA blue
);

	reg [31:0] count1 = 32'd0;
	reg [31:0] count2 = 32'd0;
	wire clkout1;
	wire pixel_clk;
	wire clk_locked;
	reg [15:0] din;
	wire [15:0] dout;
	reg wr_en;
	reg rd_en;
	
	vga_clock vgaclk(
		.CLK_IN1(sys_clk), 
		.CLK_OUT1(clkout1),
		.CLK_OUT2(pixel_clk),
		// Status and control signals
		.RESET(rst),// IN
		.LOCKED(clk_locked)); 
	
//	video_fifo video_buffer (
//	  .rst(rst), // input rst
//	  .wr_clk(clkout1), // input wr_clk
//	  .rd_clk(pixel_clk), // input rd_clk
//	  .din(din), // input [15 : 0] din
//	  .wr_en(wr_en), // input wr_en
//	  .rd_en(rd_en), // input rd_en
//	  .dout(dout), // output [15 : 0] dout
//	  .full(full), // output full
//	  .almost_full(almost_full), // output almost_full
//	  .empty(empty), // output empty
//	  .prog_full(prog_full) // output prog_full
//	);
	
	reg [15:0] data = 0;
	always@(posedge clkout1) 
	begin
		count1 <= count1 + 32'd1;
//		data[15]<=count2[23];
//		data[14]<=count2[24];
//		data[11]<=count2[23];
//		data[10]<=count2[24];
//		data[4]<=count2[23];
//		data[3]<=count2[24];
//		if (!full) din <= data;
//		wr_en <= 1'b_1;
	end
 
	always@(posedge pixel_clk) 
	begin
		count2 <= count2 + 32'd1;
	end

 	assign led_1 = count1[24];
 	assign led_2 = count2[24];
	
    // display timings
    localparam CORDW = 10;  // screen coordinate width in bits
    wire [CORDW-1:0] sx, sy;
    wire hsync, vsync, de;
    display_timings_480p timings_640x480 (
        .clk_pix(pixel_clk),
        .rst(!clk_locked),  // wait for clock lock
        .sx,
        .sy,
        .hsync,
        .vsync,
        .de
    );

    // VGA output
    always @(posedge pixel_clk) begin
		rd_en <= de;
        vga_hsync <= hsync;
        vga_vsync <= vsync;	
		if (!de) begin
			vga_r <= 6'd0;
			vga_g <= 6'd0;
			vga_b <= 6'd0;
		end else begin
//			vga_r[5:1] <= dout[15:11];
//			vga_r[0] <= 1'b_0;
//			vga_g <= dout[10:6];
//			vga_b[5:1] <= dout[5:0];
//			vga_b[0] <= 1'b_0;
			vga_r <= !de ? 6'd0 : count2[26:21];
			vga_g <= !de ? 6'd0 : count2[26:21];
			vga_b <= !de ? 6'd0 : count2[26:21];
		end
    end
endmodule
