`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
// WEB:
// BBS:
// Create Date:    09:34:12 07/20/2016 
// Design Name: 	 DDR3_TEST
// Module Name:    DDR3_Top
// Project Name: 	 DDR3_Top
// Target Devices: XC6SLX16-FTG256/XC6SLX25-FTG256 qm_ddr3
// Tool versions:  ISE14.7
// Description: 	 DDR3 memory Test
// Revision: 		 V1.0
// Additional Comments: 
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module DDR3_Top#
(
	parameter C3_NUM_DQ_PINS			= 16,
	parameter C3_MEM_ADDR_WIDTH       	= 15,  
	parameter C3_MEM_BANKADDR_WIDTH   	= 3,
	parameter C3_P0_MASK_SIZE           = 16,	
	parameter C3_P0_DATA_PORT_SIZE		= 128	
 )
(
	input sys_rst_i,
	input sys_clk_i,
	output calib_done,
	output led_1,
	output led_2,
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

parameter 			DLY_CNT = 32'd50000000;
parameter 			HALF_DLY_CNT = 32'd25000000;
reg 				r_led;
reg 				[31:0]count;

//ddr3
wire				mcb3_cmd_clk;
wire				mcb3_cmd_en;
wire[2:0]			mcb3_cmd_instr;
wire[5:0]			mcb3_cmd_bl;
wire[29:0]			mcb3_cmd_byte_addr;
wire				mcb3_cmd_empty;
wire				mcb3_cmd_full;

wire				mcb3_wr_clk;
wire				mcb3_wr_en;
wire[C3_P0_MASK_SIZE-1:0]			mcb3_wr_mask;
wire[C3_P0_DATA_PORT_SIZE-1:0]		mcb3_wr_data;
wire				mcb3_wr_full;
wire				mcb3_wr_empty;
wire[6:0]			mcb3_wr_count;
wire				mcb3_wr_underrun;
wire				mcb3_wr_error;

wire				mcb3_rd_clk;
wire				mcb3_rd_en;
wire[C3_P0_DATA_PORT_SIZE-1:0]	mcb3_rd_data;
wire				mcb3_rd_full;
wire				mcb3_rd_empty;
wire[6:0]			mcb3_rd_count;
wire				mcb3_rd_overflow;
wire				mcb3_rd_error;

(*KEEP = "TRUE" *)  wire c3_calib_done;
//assign error = ~(c1_error | c3_error);
assign calib_done = ~(c3_calib_done);
wire 	 calib_rst;
assign calib_rst=c3_calib_done;//

wire rst_ddr_n;
wire clk_ddr;

wire [127:0]u3_wr_data;
wire [29 :0]u3_wr_addr;
wire [6  :0]u3_wr_len;	
wire u3_wr_cmd_en;
wire u3_wr_en;
wire u3_wr_rdy;
wire u3_wr_cmd_done;

wire [127:0]u3_rd_data;
wire [29 :0]u3_rd_addr;
wire [6  :0]u3_rd_len;	
wire u3_rd_cmd_en;
wire u3_rd_en;
wire u3_rd_rdy;
wire u3_rd_cmd_done;

assign phy_mdc =1'b1;
assign phy_rst =1'b1;
assign phy_txclk =1'b1;
assign phy_txctl =1'b1;
assign phy_txd0 =1'b1;
assign phy_txd1 =1'b1;
assign phy_txd2 =1'b1;
assign phy_txd3 =1'b1;

ddruser #(
 .MCB_DATA_WIDTH(128)
 )
 c3_ddruser(
	.clk               (clk_100m),  //must same as ddr fifo write and read            
	.rst_n             (~calib_done),               
	.mcb_cmd_en        (mcb3_cmd_en),
	.mcb_cmd_instr     (mcb3_cmd_instr),
	.mcb_cmd_bl        (mcb3_cmd_bl),
	.mcb_cmd_byte_addr (mcb3_cmd_byte_addr),  
	.mcb_cmd_empty     (mcb3_cmd_empty),
	.mcb_cmd_full      (mcb3_cmd_full),
	.mcb_wr_en         (mcb3_wr_en),
	.mcb_wr_mask       (mcb3_wr_mask),
	.mcb_wr_data       (mcb3_wr_data),
	.mcb_wr_full       (mcb3_wr_full),
	.mcb_wr_empty      (mcb3_wr_empty),
	.mcb_wr_count      (mcb3_wr_count),
	.mcb_wr_underrun   (mcb3_wr_underrun),
	.mcb_wr_error      (mcb3_wr_error),
	.mcb_rd_en         (mcb3_rd_en),
	.mcb_rd_data       (mcb3_rd_data),
	.mcb_rd_full       (mcb3_rd_full),
	.mcb_rd_empty      (mcb3_rd_empty),
	.mcb_rd_count      (mcb3_rd_count),
	.mcb_rd_overflow   (mcb3_rd_overflow),
	.mcb_rd_error      (mcb3_rd_error),

	.u_wr_data  		(u3_wr_data), 
	.u_wr_addr			(u3_wr_addr),
	.u_wr_len			(u3_wr_len),
	.u_wr_cmd_en		(u3_wr_cmd_en),	
	.u_wr_en			(u3_wr_en),	
	.u_wr_rdy			(u3_wr_rdy),
	.u_wr_cmd_done		(u3_wr_cmd_done),
	
	.u_rd_data  		(u3_rd_data),
	.u_rd_addr			(u3_rd_addr),
	.u_rd_len			(u3_rd_len), 
	.u_rd_cmd_en		(u3_rd_cmd_en), 
	.u_rd_en			(u3_rd_en),
	.u_rd_rdy			(u3_rd_rdy),
	.u_rd_cmd_done		(u3_rd_cmd_done)
);

qm_ddr3 # (
    .DEBUG_EN(0),
    .C3_P0_MASK_SIZE(16),
    .C3_P0_DATA_PORT_SIZE(128),
    .C3_MEMCLK_PERIOD(2500),
    .C3_CALIB_SOFT_IP("TRUE"),
    .C3_SIMULATION("FALSE"),
    .C3_RST_ACT_LOW(0),
    .C3_INPUT_CLK_TYPE("SINGLE_ENDED"),
    .C3_MEM_ADDR_ORDER("ROW_BANK_COLUMN"),
    .C3_NUM_DQ_PINS(16),
    .C3_MEM_ADDR_WIDTH(15),
    .C3_MEM_BANKADDR_WIDTH(3)
)
u_ddr3_mig (
  .c3_sys_clk             (clk_ddr),
  .c3_sys_rst_i           (~rst_ddr_n),                        
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
  .c3_clk0		        	  (c3_clk0),
  .c3_rst0		        	  (c3_rst0),
  .c3_calib_done    		  (c3_calib_done),
  .mcb3_rzq               (mcb3_rzq),    
  .mcb3_zio               (mcb3_zio),
	
   .c3_p0_cmd_clk                          (clk_100m),
   .c3_p0_cmd_en                           (mcb3_cmd_en),
   .c3_p0_cmd_instr                        (mcb3_cmd_instr),
   .c3_p0_cmd_bl                           (mcb3_cmd_bl),
   .c3_p0_cmd_byte_addr                    (mcb3_cmd_byte_addr),
   .c3_p0_cmd_empty                        (mcb3_cmd_empty),
   .c3_p0_cmd_full                         (mcb3_cmd_full),
   .c3_p0_wr_clk                           (clk_100m),
   .c3_p0_wr_en                            (mcb3_wr_en),
   .c3_p0_wr_mask                          (mcb3_wr_mask),
   .c3_p0_wr_data                          (mcb3_wr_data),
   .c3_p0_wr_full                          (mcb3_wr_full),
   .c3_p0_wr_empty                         (mcb3_wr_empty),
   .c3_p0_wr_count                         (mcb3_wr_count),
   .c3_p0_wr_underrun                      (mcb3_wr_underrun),
   .c3_p0_wr_error                         (mcb3_wr_error),
   .c3_p0_rd_clk                           (clk_100m),
   .c3_p0_rd_en                            (mcb3_rd_en),
   .c3_p0_rd_data                          (mcb3_rd_data),
   .c3_p0_rd_full                          (mcb3_rd_full),
   .c3_p0_rd_empty                         (mcb3_rd_empty),
   .c3_p0_rd_count                         (mcb3_rd_count),
   .c3_p0_rd_overflow                      (mcb3_rd_overflow),
   .c3_p0_rd_error                         (mcb3_rd_error)
);
clk_rst_gen #(.WDOG_CALC_INIT_WIDTH(26)) 
u_pll (
	.sys_clk(sys_clk_i),
	.sys_rst_n(sys_rst_i), 
	.clk_ddr(clk_ddr),
	.clk_50m(sys_clk_50m),
	.clk_100m(clk_100m),
	.calc_done(calib_rst),
	.rst_ddr_n(rst_ddr_n)
);

u_mcb_read u3_mcb_read_inst
(
	.clk(clk_100m),
	.rst_n(rst_ddr_n),
	.u_rd_cmd_done(u3_rd_cmd_done),	//user read cmd done
	.u_rd_rdy(u3_rd_rdy),				//user read ready,data can be read from mcb

	.u_rd_cmd_en(u3_rd_cmd_en),		//user read cmb cmd enable
	.u_rd_en(u3_rd_en),					//user read enable
	.u_rd_data(u3_rd_data),				//user read data
	.u_rd_addr(u3_rd_addr),				//user read address
	.u_rd_len(u3_rd_len) 				//user data len
 );
 
u_mcb_write u3_mcb_write_inst
(
	.clk(clk_100m),
	.rst_n(rst_ddr_n),
	.u_wr_cmd_done(u3_wr_cmd_done),	//user write cmd done
	.u_wr_rdy(u3_wr_rdy),				//user write ready,data can be written into mcb

	.u_wr_cmd_en(u3_wr_cmd_en),		//user write cmb cmd enable
	.u_wr_en(u3_wr_en),					//user write enable
	.u_wr_data(u3_wr_data),				//user write data
	.u_wr_addr(u3_wr_addr),				//user write address
	.u_wr_len(u3_wr_len) 				//user data len
);

//counter control
always@(posedge sys_clk_50m or negedge sys_rst_i)
begin
	if(!sys_rst_i)
		begin
			count <= 32'd0;
		end
	else if(count == DLY_CNT)
		begin
			count <= 32'd0;
		end
	else
		begin
			count <= count+32'd1;
		end
end

//led output register control
always@(posedge sys_clk_50m or negedge sys_rst_i)
begin
	if(!sys_rst_i)
		begin
			r_led <= 1'b0;
		end
	else if(count < HALF_DLY_CNT)
		begin
			r_led <= 1'b1;
		end
	else
		begin
			r_led <= 1'b0;
		end
end

assign led_1 = r_led;
assign led_2 = c3_calib_done;

endmodule
