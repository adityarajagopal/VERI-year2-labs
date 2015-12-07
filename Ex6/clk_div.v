//------------------------------
// Module name: clk_div
// Function: Clock divider
// Creator:  Aditya Rajagopal, Mike Rizakis
// Version:  1.0
// Date:     27/11/15
//------------------------------

module clk_div(clkin, tc, clkout);
	input clkin;
	input [21:0] tc;
	output clkout;
	
	wire clkin;
	wire [21:0] tc;
	
	reg clkout;
	reg [21:0] constant;
	initial clkout = 1'b0;
	initial constant = tc;
	
	always @ (posedge clkin) begin
		if(constant == 22'b0) begin 
			clkout <= ~clkout;
			constant <= tc;
		end
		
		else begin 
			constant <= constant - 1;
		end
	
	end
endmodule
	