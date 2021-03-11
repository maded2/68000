
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
// WEB:
// BBS:
// Create Date:    09:34:12 07/20/2016 
// Design Name: 	 DDR3_TEST
// Module Name:    ddruser
// Project Name: 	 DDR3_Top
// Target Devices: XC6SLX16-FTG256/XC6SLX25-FTG256 Mis603
// Tool versions:  ISE14.7
// Description: 	 DDR3 memory Test cmd control module
// Revision: 		 V1.0
// Additional Comments: 
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module  ddruser #( 
 parameter  MCB_DATA_WIDTH = 8'd128
)
(
//clk and rst
  input  clk,
  input  rst_n,
//mcb write and read cmd interface  
  output mcb_cmd_en,
  output reg [2 :0] mcb_cmd_instr,
  output reg [5 :0] mcb_cmd_bl,
  output reg [29:0] mcb_cmd_byte_addr,
  input  mcb_cmd_empty,
  input  mcb_cmd_full,
//mcb write interface
  output mcb_wr_en,
  output [MCB_DATA_WIDTH/8 -1:0] mcb_wr_mask,
  output [MCB_DATA_WIDTH -1:0] mcb_wr_data,
  input  mcb_wr_full,
  input  mcb_wr_empty,
  input  [6:0] mcb_wr_count,
  input  mcb_wr_underrun,
  input  mcb_wr_error,  
//mcb read interface
  output mcb_rd_en,  
  input  [MCB_DATA_WIDTH -1:0] mcb_rd_data,
  input  mcb_rd_full,
  input  mcb_rd_empty,
  input  [6:0] mcb_rd_count,
  input  mcb_rd_overflow,
  input  mcb_rd_error,
//user interface 
  input [6:0] u_rd_len,
  input [6:0] u_wr_len,
  input [29:0]u_wr_addr,
  input [29:0]u_rd_addr,
  input [MCB_DATA_WIDTH -1:0] u_wr_data,
  output [MCB_DATA_WIDTH -1:0] u_rd_data,
  input  u_wr_en,
  input  u_rd_en,
  output u_wr_rdy,
  output u_rd_rdy,
  input  u_wr_cmd_en,
  input  u_rd_cmd_en,
  output u_wr_cmd_done,
  output u_rd_cmd_done
);  
localparam    MCB_CMD_WR  		= 3'b000; //mcb write cmd
localparam    MCB_CMD_RD  		= 3'b001; //mcb read cmd
localparam    MCB_CMD_WP  		= 3'b010; //mcb write with auto precharge cmd
localparam    MCB_CMD_RP  		= 3'b011; //mcb read with auto precharge cmd
localparam    MCB_CMD_RF  		= 3'b100; //mcb refresh cmd
(*KEEP = "TRUE" *)  wire  mcb_rd_empty;
(*KEEP = "TRUE" *)  wire [7:0] mcb_wr_data_dg;
assign mcb_wr_data_dg = mcb_wr_data[7:0];
(*KEEP = "TRUE" *)  wire [7:0] mcb_rd_data_dg;
assign mcb_rd_data_dg = mcb_rd_data[7:0];
assign mcb_wr_data = u_wr_data;
assign u_rd_data = mcb_rd_data;

wire [5:0] mcb_rd_bl;
wire [5:0] mcb_wr_bl;

reg  mcb_cmd_wr_p1;
reg  mcb_cmd_wr_p;
reg  mcb_cmd_rd_p1;
reg  mcb_cmd_rd_p;
reg  [1:0]u_wr_cmd_done1;
reg  [1:0]u_rd_cmd_done1;
wire u_rd_cmd_done0,u_wr_cmd_done0;

assign u_rd_cmd_done=u_rd_cmd_done1[1];
assign u_wr_cmd_done=u_wr_cmd_done1[1];
always@(posedge clk)
begin
  if(!rst_n) 
  begin
		mcb_cmd_wr_p1 <= 1'b0;
		mcb_cmd_rd_p1 <= 1'b0;
		u_wr_cmd_done1 <= 2'b0;
		u_rd_cmd_done1 <= 2'b0;
  end
  else begin
     mcb_cmd_wr_p1 <= mcb_cmd_wr_p;
	  mcb_cmd_rd_p1 <= mcb_cmd_rd_p;
	  
     u_rd_cmd_done1 <= {u_rd_cmd_done1[0:0],u_rd_cmd_done0};
	  u_wr_cmd_done1 <= {u_wr_cmd_done1[0:0],u_wr_cmd_done0};
  end
end



assign u_wr_cmd_done0 = mcb_cmd_en&(mcb_cmd_instr== MCB_CMD_WP);								// user write cmd is done
assign u_rd_cmd_done0 = mcb_cmd_en&(mcb_cmd_instr== MCB_CMD_RP);								// user read cmd is done
assign mcb_cmd_en = ((~mcb_cmd_wr_p1)&mcb_cmd_wr_p)||((~mcb_cmd_rd_p1)&mcb_cmd_rd_p);	// mcb cmd enable

assign    mcb_rd_bl	= (u_rd_len -1);
assign    mcb_wr_bl 	= (u_wr_len -1);

always @(posedge clk)begin
	if(!rst_n)begin
			mcb_cmd_instr 		<= MCB_CMD_RD;
			mcb_cmd_byte_addr <= u_rd_addr[29:0];
			mcb_cmd_bl 			<= mcb_rd_bl;	
			mcb_cmd_wr_p		<=1'b0;
			mcb_cmd_rd_p		<=1'b0;	
	end
	else begin
		if(u_wr_cmd_en)		// write 
		begin
				mcb_cmd_instr 		<= MCB_CMD_WP;
				mcb_cmd_byte_addr <= u_wr_addr[29:0];
				mcb_cmd_bl 			<= mcb_wr_bl;	
				mcb_cmd_wr_p		<=1'b1;
				mcb_cmd_rd_p		<=1'b0;
		end
		else if(u_rd_cmd_en)	//read 
		begin
				mcb_cmd_instr 		<= MCB_CMD_RP;
				mcb_cmd_byte_addr <= u_rd_addr[29:0];
				mcb_cmd_bl 			<= mcb_rd_bl;	
				mcb_cmd_wr_p		<=1'b0;
				mcb_cmd_rd_p		<=1'b1;				
		end
		else begin
				mcb_cmd_wr_p		<=1'b0;
				mcb_cmd_rd_p		<=1'b0;					
		end
	end
end

assign u_wr_rdy = mcb_wr_en;// write fifo is ready
assign u_rd_rdy = mcb_rd_en;// read fifo is ready
//write fifo enable and read fifo enable
assign mcb_wr_en = (~mcb_wr_full)&&u_wr_en&&rst_n;
assign mcb_rd_en = (~mcb_rd_empty)&&u_rd_en&&rst_n;

endmodule
