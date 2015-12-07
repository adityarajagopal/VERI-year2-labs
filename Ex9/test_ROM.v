module test_ROM(SW[9:0], CLOCK_50, HEX0_D[6:0], HEX1_D[6:0], HEX2_D[6:0]);
	input [9:0] SW;
	input CLOCK_50;
	output [6:0] HEX0_D, HEX1_D, HEX2_D; 
	
	wire [9:0] out; 
	
	ROM sineROM(SW[9:0], CLOCK_50, out);
	
	hex_to_7seg HEX2(HEX2_D, out[9:8]);
	hex_to_7seg HEX1(HEX1_D, out[7:4]);
	hex_to_7seg HEX0(HEX0_D, out[3:0]);
endmodule


	
	
	
	