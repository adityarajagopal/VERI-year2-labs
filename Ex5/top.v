module top(LEDG[9:0], CLOCK_50);
	input CLOCK_50;
	output [9:0] LEDG;
	
	wire clk_10;
	
	clk_div clock_divider(CLOCK_50, 2499999, clk_10);
	
	shift_pattern shift(clk_10, LEDG);
endmodule
	