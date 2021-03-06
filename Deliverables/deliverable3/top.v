module top(BUTTON[1:0], CLOCK_50, HEX0_D[6:0], HEX1_D[6:0], HEX2_D[6:0], HEX3_D[6:0]);
	input [1:0] BUTTON;
	input CLOCK_50;
	output [6:0] HEX0_D;
	output [6:0] HEX1_D;
	output [6:0] HEX2_D;
	output [6:0] HEX3_D;

	wire [15:0] count;
	wire clk_10;
	
	clk_div clock_divider(CLOCK_50, 2499999, clk_10);
	
	counter CT1(clk_10, !BUTTON[0], !BUTTON[1], count);
	
	hex_to_7seg HEX0(HEX0_D, count[3:0]);
	hex_to_7seg HEX1(HEX1_D, count[7:4]);
	hex_to_7seg HEX2(HEX2_D, count[11:8]);
	hex_to_7seg HEX3(HEX3_D, count[15:12]);
endmodule
	