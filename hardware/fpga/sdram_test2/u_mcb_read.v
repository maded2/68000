
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
// Description: 	 DDR3 memory Test user read mudule
// Revision: 		 V1.0
// Additional Comments: 
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module u_mcb_read 
(
input clk,
input rst_n,
input u_rd_cmd_done,				//user read cmd done
input u_rd_rdy,					//user read ready,data can be written in in to mcb
output reg u_rd_cmd_en,			//user read cmb cmd enable
output reg u_rd_en,				//user read enable
input [127:0]u_rd_data,			//user read data
output reg [29:0]u_rd_addr,	//user read address
output reg [6 :0]u_rd_len 		// user data len
    );
	 
reg [1 :0]u_rd_s;					// read state
reg [6 :0]u_rd_cnt;				// user read data counter
reg read_error;
(*KEEP = "TRUE" *)  wire [1:0] u_rd_s_r;// debug signal
assign u_rd_s_r = u_rd_s;
(*KEEP = "TRUE" *) wire read_error_dg;

assign read_error_dg = read_error;

parameter RD_IDLE  = 2'd0;
parameter RD_BEGIN = 2'd1;
parameter RD_WAIT  = 2'd2;
parameter RD_RST   = 2'd3;

reg u_rd_en_dly;
always @(posedge clk)
	if(~rst_n)
	begin
		u_rd_en_dly<=1'b0;
	end
	else 
	begin
		u_rd_en_dly <= u_rd_en;
	end

//读命令请求
always @(posedge clk)
	if(~rst_n)
	begin
		u_rd_cmd_en <= 1'b0;
	end
	else 
	begin
		if(u_rd_cmd_done) 					u_rd_cmd_en <= 1'b0; // clear user read mcb cmd signal
		else if(u_rd_en&&(~u_rd_en_dly)) u_rd_cmd_en <= 1'b1; // enable user read mbb cmd signal
	end

reg s;
//读数据比较
always @(posedge clk)
	if(~rst_n)
	begin
		read_error<=1'b0;
		s<=0;
	end
	else 
	begin
		if((u_rd_s==RD_WAIT)&&u_rd_rdy)// valid data 
			case(s)
				0:
					if(u_rd_data==128'hAA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA_AA) s <= 1'b1;
					else read_error<=1'b1;
				1:
					if(u_rd_data==128'h55_55_55_55_55_55_55_55_55_55_55_55_55_55_55_55) s <= 1'b0;
					else read_error<=1'b1;
			endcase
		else if(~u_rd_en)
			begin
				read_error<=1'b0;
				s<=0;
			end
	end

//读数据计数器
always @(posedge clk)
	if(~rst_n)
	begin
		u_rd_cnt<=0;
	end
	else 
	begin
		if(u_rd_rdy)										// valid data 
			u_rd_cnt<=u_rd_cnt+1'b1; 					// count up
		else if(u_rd_s==RD_IDLE)u_rd_cnt<=7'd0; 	// clear counter
	end

reg [28:0]u_rd_addr_set;
//读状态机
always @(posedge clk)
	if(~rst_n)
	begin
		u_rd_len 	<= 7'd64; // user read length
		u_rd_addr 	<= 29'd0; // user read address
		u_rd_en 		<= 1'b0;  // user read enable
		u_rd_s		<=	RD_IDLE;
	end
	else 
	begin
		case(u_rd_s)
			RD_IDLE:
			begin
				u_rd_en 		<= 1'b0;
				if(u_rd_cmd_en==1'b0)// when mcb read cmd is done
				u_rd_s		<=	RD_BEGIN;
			end
			RD_BEGIN://read cmd
			begin
				u_rd_len 	<= 7'd64;
				u_rd_addr 	<= u_rd_addr_set;
				u_rd_en 		<= 1'b1;
				u_rd_s		<=	RD_WAIT;
			end
			RD_WAIT://read cmd done
			if(u_rd_cnt==(u_rd_len))begin
				u_rd_s		<=	RD_IDLE;
				u_rd_en 		<= 1'b0;
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
		u_rd_addr_set<=29'b0;
	end
	else 
	begin
		if(u_rd_cmd_done&&(u_rd_addr_set<END_ADDR))	
			u_rd_addr_set<=u_rd_addr_set+ADDR_INC;
		else if(u_rd_addr_set==END_ADDR)
			u_rd_addr_set<=0;
	end
endmodule
