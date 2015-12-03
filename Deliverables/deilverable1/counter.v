`timescale 1ns/100ps
//Design Name : counter
//File Name : counter.v
//Function : 4-bit up counter with synchronous active high reset and enable
// -----------------------------------------------------------------------

module counter (clock, reset, enable, select, count);
	input clock;
	input reset;
	input enable;
	input select;
	
	output[3:0] count;
	
	wire clock;
	wire reset;
	wire enable;
	
	reg[3:0] count;
	
	always @ (posedge clock) begin	
		if(reset == 1'b1) begin 
			count <= 4'b0;
		end
		
		else if(enable == 1'b1) begin
			if(select == 1'b1) begin
				if(count == 4'b1001) begin
					count <= 4'b0;
				end
				
				else begin
					count <= count + 1'b1;
				end
			end
			
			else begin
				count <= count + 1'b1;	
			end
		end
	end
endmodule
