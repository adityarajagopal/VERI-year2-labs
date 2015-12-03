module veri_decoder (SW, HEX0_D);

	input[3:0] SW;
	output[6:0] HEX0_D;
	
	hex_to_7seg DEC0 (HEX0_D, SW);
	
endmodule