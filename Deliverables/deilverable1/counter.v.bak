`timescale 1ns/100ps
//Design Name : counter
//File Name : counter.v
//Function : 4-bit up counter with synchronous active high reset and enable
// -----------------------------------------------------------------------

module counter (clock, reset, enable, count);
	input clock;
	input reset;
	input enable;
	
	output[15:0] count;
	
	wire clock;
	wire reset;
	wire enable;
	
	reg[15:0] count;
	
	always @ (posedge clock) begin	
		if(reset == 1'b1) begin 
			count <= 16'b0;
		end
		
		else if(enable == 1'b1) begin	
			count <= count + 1'b1;
		end
	end
endmodule
