//-------------------------------------------
//Module name: shift_pattern 
//Function: circular roatate left a pattern with one '1' in a 10 bit shift on every clock cycle 
//Creators: Aditya Rajagopal, Mike Rizakis 
//Version: 2.0 
//Date: 27/11/15
//-------------------------------------------

module shift_pattern(clk, pattern);
	input clk;
	output [9:0] pattern;
	
	reg [9:0] pattern; 
	reg direction;
	initial pattern = 10'b1; 
	initial direction = 1'b0;
	
	always @ (posedge clk) begin 
	
		if(pattern == 10'b0100000000) begin 
			direction <= 1'b1;
		end 
		
		else if (pattern == 10'b10) begin 
			direction <= 1'b0;
		end
		
		if(direction == 1'b0) begin 
			pattern <= pattern << 1; 
		end 
		
		else begin 
			pattern <= pattern >> 1;
		end 
	end
endmodule 
	