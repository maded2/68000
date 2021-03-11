`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:34:12 07/20/2016 
// Design Name: 
// Module Name:    clk_rst_gen 
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
module clk_rst_gen #(
   parameter  WDOG_CALC_INIT_WIDTH  = 26
)
(
//system extern clk and rst in
    input  sys_clk,
	input  sys_rst_n,
//pll base clk out	 
	output clk_ddr,
	output clk_50m,
	output clk_100m,
//watchdog for ddr calic
    input  calc_done,
    output rst_ddr_n

    );
wire   clk_ddr_bufi;
wire   clk_100m_bufi;
wire   clk_50m_bufi;
wire   clk_vga_bufi;
wire   sys_clk_ibufg;

wire   pll_locked;
wire   clk_pll_fb;

//////////////////////
reg  [WDOG_CALC_INIT_WIDTH-1:0]  pu_rst_dly_cnt;
reg  pu_rst_dly;   //rst for if ddr calc done didnot done for startup


IBUFG  u_ibufg_sys_clk(
    .I  (sys_clk),
    .O  (sys_clk_ibufg)
);

PLL_BASE #(
   .BANDWIDTH          ("OPTIMIZED"),
   .CLKIN_PERIOD       (20.000),
   .CLKFBOUT_MULT      (13),
   .CLKFBOUT_PHASE     (0.0),
   .CLKOUT0_DIVIDE     (6),
   .CLKOUT1_DIVIDE     (10),
   .CLKOUT2_DIVIDE     (2),
   .CLKOUT3_DIVIDE     (1),
   .CLKOUT4_DIVIDE     (1),
   .CLKOUT5_DIVIDE     (1),
   .CLKOUT0_PHASE      (0.000),
   .CLKOUT1_PHASE      (0.000),
   .CLKOUT2_PHASE      (0.000),
   .CLKOUT3_PHASE      (0.000),
   .CLKOUT4_PHASE      (0.000),
   .CLKOUT5_PHASE      (0.000),
   .CLKOUT0_DUTY_CYCLE (0.500),
   .CLKOUT1_DUTY_CYCLE (0.500),
   .CLKOUT2_DUTY_CYCLE (0.500),
   .CLKOUT3_DUTY_CYCLE (0.500),
   .CLKOUT4_DUTY_CYCLE (0.500),
   .CLKOUT5_DUTY_CYCLE (0.500),
   .COMPENSATION       ("SYSTEM_SYNCHRONOUS"),
   .DIVCLK_DIVIDE      (1), 
   .REF_JITTER         (0.010)
   )
   u_pll(
     .CLKFBIN     (clk_pll_fb),
     .CLKIN       (sys_clk_ibufg),
     .RST         (~sys_rst_n),
     .CLKFBOUT    (clk_pll_fb),
     .CLKOUT0     (clk_50m_bufi),
     .CLKOUT1     (clk_100m_bufi),
     .CLKOUT2     (clk_ddr_bufi),
     .CLKOUT3     (clk_vga_bufi),
     .CLKOUT4     (),
     .CLKOUT5     (),
     .LOCKED      (pll_locked)
     );
	 
BUFGCE U_BUFG_CLK50M(
     .O (clk_50m),
     .I (clk_50m_bufi),
	 .CE(pll_locked)
     );
	 
BUFGCE U_BUFG_CLK100M(
     .O (clk_100m),
     .I (clk_100m_bufi),
	 .CE(pll_locked)
     );

BUFGCE U_BUFG_CLKDDR(
     .O (clk_ddr),
     .I (clk_ddr_bufi),
	 .CE(pll_locked)
     );	 

always@(posedge clk_100m)
begin 
    if(!sys_rst_n) begin
        pu_rst_dly_cnt <= {WDOG_CALC_INIT_WIDTH{1'b0}};
	    pu_rst_dly <= 1'b1;
    end
    else begin
    if(!calc_done) begin
	    if(pu_rst_dly_cnt == {WDOG_CALC_INIT_WIDTH{1'b1}}) begin
            pu_rst_dly_cnt <= {WDOG_CALC_INIT_WIDTH{1'b0}};
		    pu_rst_dly <= 1'b0;
        end	
        else if(pu_rst_dly_cnt == 26'hfff) begin
            pu_rst_dly_cnt <= pu_rst_dly_cnt + 1'b1;
		    pu_rst_dly <= 1'b1; 
        end
        else begin
            pu_rst_dly_cnt <= pu_rst_dly_cnt + 1'b1;   
        end			 
	end
	else begin  
	      pu_rst_dly_cnt <= {WDOG_CALC_INIT_WIDTH{1'b0}};
		  pu_rst_dly <= 1'b1;
	  end
  end
end	 

assign rst_ddr_n = sys_rst_n&pu_rst_dly&pll_locked;


endmodule
