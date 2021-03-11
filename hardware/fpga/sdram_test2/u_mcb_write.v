`timescale 1ns / 1ps
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
// WEB:
// BBS:
// Create Date:    09:34:12 07/20/2016
// Design Name: 	 DDR3_TEST
// Module Name:    u_mcb_read
// Project Name: 	 DDR3_Top
// Target Devices: XC6SLX16-FTG256/XC6SLX25-FTG256 Mis603
// Tool versions:  ISE14.7
// Description: 	 DDR3 memory Test user write mudule
// Revision: 		 V1.0
// Additional Comments:
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module u_mcb_write(
input clk,		
input rst_n,
input u_wr_cmd_done,				//user write cmd done
input u_wr_rdy,					//user write ready,data can be written in in to mcb

output reg u_wr_cmd_en,			//user write cmb cmd enable
output reg u_wr_en,				//user write enable
output reg [127:0]u_wr_data,	//user write data
output reg [29:0]u_wr_addr,	//user write address
output reg [6 :0]u_wr_len 		// user data len
    );
(*KEEP = "TRUE" *)  wire [1:0] u_wr_s_r; 
(*KEEP = "TRUE" *)wire [2:0] u_wr_en_dly1;

parameter WR_IDLE  = 2'd0;
parameter WR_BEGIN = 2'd1;
parameter WR_WAIT  = 2'd2;

assign u_wr_s_r = u_wr_s;

reg [6 :0]u_wr_cnt; // user write counter
reg [1 :0]u_wr_s;   // user write state


//when mcb write fifo more than 2 data enable write data mcb
//写命令请求
always @(posedge clk)
	if(~rst_n)
	begin
		u_wr_cmd_en <= 1'b0;
	end
	else begin
		if(u_wr_cmd_done) u_wr_cmd_en <= 1'b0; 		// clear mcb user write enable signal 
		else if(u_wr_cnt==40) u_wr_cmd_en <= 1'b1; 	// enable user mcb user cmd signal
	end

//写测试数据产生
always @(posedge clk)
	if(~rst_n)
	begin
		u_wr_data<=128'hAA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA;
	end
	else begin
		if(u_wr_rdy) 							// mcb fifo is valid	 
			u_wr_data <= ~u_wr_data; 		// count up data write to mcb fifo
		else if(~u_wr_en)
			u_wr_data<=128'hAA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA;
	end

//写数据计数器
always @(posedge clk)
	if(~rst_n)
	begin
		u_wr_cnt<=0;
	end
	else begin
		if(u_wr_rdy) 								// mcb fifo is valid	 
			u_wr_cnt <= u_wr_cnt + 1'b1; 	// count up data write to mcb fifo
		else if(u_wr_s==WR_IDLE)
			u_wr_cnt <= 7'd0;
	end

reg [28:0] u_wr_addr_set;
//写数据状态机
always @(posedge clk)
	if(~rst_n)
	begin
		u_wr_len 	<= 7'd64; 	// user write len
		u_wr_addr 	<= 29'd0; 	// user write address
		u_wr_en 		<= 1'b0;  	// user write enable
		u_wr_s		<=	WR_IDLE;
	end
	else 
	begin
		case(u_wr_s)
			WR_IDLE:
			begin
				u_wr_en 		<= 1'b0;
				if(u_wr_cmd_en==1'b0) // start new write 
				u_wr_s		<=	WR_BEGIN;
			end
				
			WR_BEGIN:
			begin
				u_wr_len 	<= 7'd64;
				u_wr_addr 	<= u_wr_addr_set;
				u_wr_en 		<= 1'b1;
				u_wr_s		<=	WR_WAIT;
			end
			WR_WAIT:
				if(u_wr_cnt==(u_wr_len-1))
				begin
					u_wr_s 		<= WR_IDLE;
					u_wr_en 		<= 1'b0;
				end
		endcase
	end

//////////////////////////////////////////////////////////////////////////////////
//Testing address generator
//////////////////////////////////////////////////////////////////////////////////
parameter ADDR_INC = 12'h400;
parameter END_ADDR = 29'h10000000 - ADDR_INC;
always @(posedge clk)
	if(~rst_n)
		begin
			u_wr_addr_set<=29'b0;
		end
	else 
		begin
			if(u_wr_cmd_done&&(u_wr_addr_set<END_ADDR))	
				u_wr_addr_set<=u_wr_addr_set+ADDR_INC;
			else if(u_wr_addr_set==END_ADDR)
				u_wr_addr_set<=0;
		end
endmodule
