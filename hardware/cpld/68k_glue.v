
module glue (
	input wire clk,
	input wire rst,
	input wire [23:1] addr,
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
	output wire dc,
	inout [7:0] data
);

	reg [7:0] status;
	reg [7:0] datain;
	
	reg [7:0] buffer= 8'b_0;
	reg r_out_enable = 1'b_0;

	assign rst_h = !rst;
	assign ipl = 3'b_111;
	assign dtack = 1'b_0;

	parameter SPI_MODE = 0;           // CPOL = 1, CPHA = 1
	parameter CLKS_PER_HALF_BIT = 2;  // 12Mhz / (2 * 4) = 1.5Mb/s
	wire [7:0] w_Master_RX_Byte;
	reg [7:0] r_Master_TX_Byte;
	wire w_Master_RX_DV;
	reg r_Master_TX_DV;
	wire w_Master_TX_Ready;
	reg [20:0] counter;
/*
    68000 Read Cycle
		    ____       _____________________________
	ADDR        \_____/                             \_____
		    ____/     \_____________________________/
		        _________                      ___________
	AS      ___/         \____________________/
		    ______________________________________________
	RW      ___________/
		       __________                      ___________
	UDS/LDS __/          \____________________/
	        ___                  __________________
	DATA       \________________/                  \______
	        ___/                \__________________/
	              ___________                          ___
	DTACK	_____/           \________________________/  	



    68000 Write Cycle
		               _____________________________
	ADDR    __________/                             \_____
		              \_____________________________/
		    _____________                      ___________
	AS                   \____________________/
		    ______________                         _______
	RW                    \_______________________/
		    _______________________              _________
	UDS/LDS                        \____________/
	        ___                  __________________
	DATA       \________________/                  \______
	        ___/                \__________________/
	              _______________________              ___
	DTACK	_____/                       \____________/  	

	
	SPI Registers, only uses the lower 8 bits of the data bus
	0xB00001 - Status Register
					Bit 0 - Send Busy(0=Busy, 1=Ok)
					Bit 1 - Recv Data(1=Has Data, 0=Empty)
					Bit 2 - Data(1) / Cmd(0)
					Bit 3 - SS1 (0=enable)
					Bit 4 - SS2 (0=enable)
	0xB00003 - Send Data Register, 8 bits
	0xB00005 - Recv Data Register, 8 bits
*/

    // Instantiate Master
	SPI_Master 
	#(.SPI_MODE(SPI_MODE),
	  .CLKS_PER_HALF_BIT(CLKS_PER_HALF_BIT)
	  ) SPI_Master_Inst
	   (
	   // Control/Data Signals,
	   .i_Rst_L(rst),     // FPGA Reset
	   .i_Clk(clk),         // FPGA Clock
	   
	   // TX (MOSI) Signals
	   .i_TX_Byte(r_Master_TX_Byte),         // Byte to transmit
	   .i_TX_DV(r_Master_TX_DV),             // Data Valid Pulse 
	   .o_TX_Ready(w_Master_TX_Ready),   // Transmit Ready for Byte
	   
	   // RX (MISO) Signals
	   .o_RX_DV(w_Master_RX_DV),       // Data Valid pulse (1 clock cycle)
	   .o_RX_Byte(w_Master_RX_Byte),   // Byte received on MISO

	   // SPI Interface
	   .o_SPI_Clk(sclk),
	   .i_SPI_MISO(miso),
	   .o_SPI_MOSI(mosi)
	   );

	
	assign data = r_out_enable == 1'b_1 ? buffer : 8'b_z;
	assign dc = status[2];
	assign ss1 = status[3];
	assign ss2 = status[4];
	assign wrl = !(as == 1'b_0 && rw == 1'b_0 && lds == 1'b_0);
	assign rdl = !(as == 1'b_0 && rw == 1'b_1 && lds == 1'b_0);	
	assign wru = !(as == 1'b_0 && rw == 1'b_0 && uds == 1'b_0);
	assign rdu = !(as == 1'b_0 && rw == 1'b_1 && uds == 1'b_0);		
	assign rom_sel  = !(as == 1'b_0 && addr[23:20] == 4'b_0000); // 0x000000
	assign ram1_sel = !(as == 1'b_0 && addr[23:20] == 4'b_1100); // 0xC00000
	assign ram2_sel = !(as == 1'b_0 && addr[23:20] == 4'b_1101); // 0xD00000
	assign ram3_sel = !(as == 1'b_0 && addr[23:20] == 4'b_1110); // 0xE00000
	assign ram4_sel = !(as == 1'b_0 && addr[23:20] == 4'b_1111); // 0xF00000
	assign io1_sel  = !(as == 1'b_0 && addr[23:20] == 4'b_1010); // 0xA00000
	assign io2_sel = counter[20];
	
	always @(negedge as) begin
		counter <= counter + 1;
	end
	
	always @(clk) begin
		r_Master_TX_DV <= 1'b_0;
		r_out_enable <= 1'b_0;
		
		if (w_Master_RX_DV== 1'b_1) begin  // listen to stroke from the SPI interface
			datain <= w_Master_RX_Byte;
			status[1] <= 1'b_1;  // set data available flag to indicate SPI data received
		end
		
		if (as == 1'b_0 && addr[23:20] == 4'b_1011) begin // 0xB00000
			case(addr[2:1])
			2'b_00 : begin	// read status register, 0xB00000
					if (rdl == 1'b_0) begin
						status[0] <= w_Master_TX_Ready;
						buffer <= status;
						r_out_enable <= 1'b_1;
					end
					if (wrl == 1'b_0) begin
						status[4:2] <= data[4:2];
					end
				end
			2'b_01 : begin	
					if (wrl == 1'b_0 && w_Master_TX_Ready == 1'b_1) begin
						r_Master_TX_Byte <= data;
						r_Master_TX_DV <= 1'b_1;   // write stroke to the SPI interface
					end
				end
			2'b_10 : begin	// read spi data in register, 0xB00005
					if (rdl == 1'b_0) begin
						buffer <= datain;
						status[1] <= 1'b_0;  // clear data available flag after read
						r_out_enable <= 1'b_1;
					end
				end
			endcase
		end
	end


endmodule
