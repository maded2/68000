`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:59:33 02/27/2021 
// Design Name: 
// Module Name:    fb 
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
module fb#(
	parameter C3_NUM_DQ_PINS			= 16,
	parameter C3_MEM_ADDR_WIDTH       	= 15,  
	parameter C3_MEM_BANKADDR_WIDTH   	= 3
)
(
	input wire		cpu_clk,
	input wire		sys_clk,
	input wire		sys_rst_n,
	input wire		as,
	output wire		led_1,
	output wire		led_2,
	output reg		vga_hsync,    // horizontal sync
	output reg		vga_vsync,    // vertical sync
	output reg		[5:0] vga_r,  // 6-bit VGA red
	output reg		[5:0] vga_g,  // 6-bit VGA green
	output reg		[5:0] vga_b,   // 6-bit VGA blue
	
//	output calib_done,
	 // output                                           error,
   inout  [C3_NUM_DQ_PINS-1:0]                      mcb3_dram_dq,
   output [C3_MEM_ADDR_WIDTH-1:0]                   mcb3_dram_a,
   output [C3_MEM_BANKADDR_WIDTH-1:0]               mcb3_dram_ba,
   output                                           mcb3_dram_ras_n,
   output                                           mcb3_dram_cas_n,
   output                                           mcb3_dram_we_n,
   output                                           mcb3_dram_odt,
   output                                           mcb3_dram_reset_n,
   output                                           mcb3_dram_cke,
   output                                           mcb3_dram_dm,
   inout                                            mcb3_dram_udqs,
   inout                                            mcb3_dram_udqs_n,
   inout                                            mcb3_rzq,
   inout                                            mcb3_zio,
   output                                           mcb3_dram_udm,
   inout                                            mcb3_dram_dqs,
   inout                                            mcb3_dram_dqs_n,
   output                                           mcb3_dram_ck,
   output                                           mcb3_dram_ck_n

    );

	reg [31:0]	count1 = 32'd0;
	reg [31:0]	count2 = 32'd0;
	wire		data_clk;
	wire		pixel_clk;
	wire		sdram_clk;
	wire		clk_locked;

  fb_pll main_clk
   (// Clock in ports
    .CLK_IN1(sys_clk),      // IN
    // Clock out ports
    .CLK_DATA(data_clk),     // OUT
    .CLK_VGA(pixel_clk),     // OUT
    .CLK_DDR(sdram_clk),     // OUT
    // Status and control signals
    .RESET(!sys_rst_n),// IN
    .LOCKED(clk_locked));      // OUT
	

sdram # (
    .C3_P0_MASK_SIZE(4),
    .C3_P0_DATA_PORT_SIZE(32),
    .C3_P1_MASK_SIZE(4),
    .C3_P1_DATA_PORT_SIZE(32),
    .DEBUG_EN(0),
    .C3_MEMCLK_PERIOD(2500),
    .C3_CALIB_SOFT_IP("TRUE"),
    .C3_SIMULATION("FALSE"),
    .C3_RST_ACT_LOW(0),
    .C3_INPUT_CLK_TYPE("SINGLE_ENDED"),
    .C3_MEM_ADDR_ORDER("ROW_BANK_COLUMN"),
    .C3_NUM_DQ_PINS(16),
    .C3_MEM_ADDR_WIDTH(14),
    .C3_MEM_BANKADDR_WIDTH(3)
)
chip_ram (

    .c3_sys_clk           (sdram_clk),
  .c3_sys_rst_i           (~sys_rst_n),                        

  .mcb3_dram_dq           (mcb3_dram_dq),  
  .mcb3_dram_a            (mcb3_dram_a),  
  .mcb3_dram_ba           (mcb3_dram_ba),
  .mcb3_dram_ras_n        (mcb3_dram_ras_n),                        
  .mcb3_dram_cas_n        (mcb3_dram_cas_n),                        
  .mcb3_dram_we_n         (mcb3_dram_we_n),                          
  .mcb3_dram_odt          (mcb3_dram_odt),
  .mcb3_dram_cke          (mcb3_dram_cke),                          
  .mcb3_dram_ck           (mcb3_dram_ck),                          
  .mcb3_dram_ck_n         (mcb3_dram_ck_n),       
  .mcb3_dram_dqs          (mcb3_dram_dqs),                          
  .mcb3_dram_dqs_n        (mcb3_dram_dqs_n),
  .mcb3_dram_udqs         (mcb3_dram_udqs),    // for X16 parts                        
  .mcb3_dram_udqs_n       (mcb3_dram_udqs_n),  // for X16 parts
  .mcb3_dram_udm          (mcb3_dram_udm),     // for X16 parts
  .mcb3_dram_dm           (mcb3_dram_dm),
  .mcb3_dram_reset_n      (mcb3_dram_reset_n),
  .c3_clk0		        (c3_clk0),
  .c3_rst0		        (c3_rst0),
  .c3_calib_done    (c3_calib_done),
     .mcb3_rzq               (mcb3_rzq),  
     .mcb3_zio               (mcb3_zio),
	
     .c3_p0_cmd_clk                          (sdram_clk),
   .c3_p0_cmd_en                           (c3_p0_cmd_en),
   .c3_p0_cmd_instr                        (c3_p0_cmd_instr),
   .c3_p0_cmd_bl                           (c3_p0_cmd_bl),
   .c3_p0_cmd_byte_addr                    (c3_p0_cmd_byte_addr),
   .c3_p0_cmd_empty                        (c3_p0_cmd_empty),
   .c3_p0_cmd_full                         (c3_p0_cmd_full),
   .c3_p0_wr_clk                           (sdram_clk),
   .c3_p0_wr_en                            (c3_p0_wr_en),
   .c3_p0_wr_mask                          (c3_p0_wr_mask),
   .c3_p0_wr_data                          (c3_p0_wr_data),
   .c3_p0_wr_full                          (c3_p0_wr_full),
   .c3_p0_wr_empty                         (c3_p0_wr_empty),
   .c3_p0_wr_count                         (c3_p0_wr_count),
   .c3_p0_wr_underrun                      (c3_p0_wr_underrun),
   .c3_p0_wr_error                         (c3_p0_wr_error),
   .c3_p0_rd_clk                           (sdram_clk),
   .c3_p0_rd_en                            (c3_p0_rd_en),
   .c3_p0_rd_data                          (c3_p0_rd_data),
   .c3_p0_rd_full                          (c3_p0_rd_full),
   .c3_p0_rd_empty                         (c3_p0_rd_empty),
   .c3_p0_rd_count                         (c3_p0_rd_count),
   .c3_p0_rd_overflow                      (c3_p0_rd_overflow),
   .c3_p0_rd_error                         (c3_p0_rd_error),
   .c3_p2_cmd_clk                          (sdram_clk),
   .c3_p2_cmd_en                           (c3_p2_cmd_en),
   .c3_p2_cmd_instr                        (c3_p2_cmd_instr),
   .c3_p2_cmd_bl                           (c3_p2_cmd_bl),
   .c3_p2_cmd_byte_addr                    (c3_p2_cmd_byte_addr),
   .c3_p2_cmd_empty                        (c3_p2_cmd_empty),
   .c3_p2_cmd_full                         (c3_p2_cmd_full),
   .c3_p2_rd_clk                           (sdram_clk),
   .c3_p2_rd_en                            (c3_p2_rd_en),
   .c3_p2_rd_data                          (c3_p2_rd_data),
   .c3_p2_rd_full                          (c3_p2_rd_full),
   .c3_p2_rd_empty                         (c3_p2_rd_empty),
   .c3_p2_rd_count                         (c3_p2_rd_count),
   .c3_p2_rd_overflow                      (c3_p2_rd_overflow),
   .c3_p2_rd_error                         (c3_p2_rd_error)
);


	reg wr_en, rd_en;
	wire full, empty;
	reg [31:0] din;
	wire [15:0] dout;
	
	fb_fifo video_buffer (
		  .rst(~sys_rst_n), // input rst
		  .wr_clk(data_clk), // input wr_clk
		  .rd_clk(pixel_clk), // input rd_clk
		  .din(din), // input [15 : 0] din
		  .wr_en(wr_en), // input wr_en
		  .rd_en(rd_en), // input rd_en
		  .dout(dout), // output [15 : 0] dout
		  .full(full), // output full
		  .empty(empty) // output empty
		);

	reg [5:0] start;
	reg [5:0] count3;
	reg [9:0] col_count;
	reg [8:0] row_count;
	always@(posedge data_clk) 
	begin
		count1 <= count1 + 32'd1;
		
		if (!full) begin
			din[31:27]= count3[5:1];
			din[26:21]= count3;
			din[20:16]= count3[5:1];
			count3 = count3 + 6'd1;
			din[15:11]= count3[5:1];
			din[10:5]= count3;
			din[4:0]= count3[5:1];
			wr_en = 1'b_1;
			col_count = col_count + 10'd1;
			count3 = count3 + 6'd1;
			if (col_count == 10'd320) begin
				row_count = row_count + 9'd1;
				if (row_count == 9'd480) start = start + 6'd1;
				count3 = start;
				col_count = 10'd0;
			end
		end
	end

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
	reg [15:0] out_buf;
    always @(posedge pixel_clk) begin
 		count2 <= count2 + 32'd1;
 		rd_en = de;
		vga_hsync <= hsync;
        vga_vsync <= vsync;	
		if (!de || empty) begin
			vga_r <= 6'd0;
			vga_g <= 6'd0;
			vga_b <= 6'd0;
		end else begin
			out_buf = dout;
			vga_r[5:1] <= out_buf[15:11];
			vga_r[0] <= 1'b_1;
			vga_g[5:0] <= out_buf[10:5];
			vga_b[5:1] <= out_buf[4:0];
			vga_b[0] <= 1'b_1;
//			vga_r <= 6'h_00;
//			vga_g <= 6'h_00;
//			vga_b <= 6'h_aa;
		end
    end

 	assign led_1 = count1[24];
 	assign led_2 = count2[24];
endmodule
