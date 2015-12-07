//------------------------------
// Module name: tff.v
// Function: toggle flip flop 
// Creator:  Aditya Rajagopal, Mike Rizakis
// Version:  1.0
// Date:     04/12/15
//------------------------------

module TOGGLE_FF(D, Q[9:0]);
	input D; 
	output [9:0] Q; 
	
	reg [9:0] Q;
	initial Q = 10'b0;
	
	always @ (posedge D) begin 
		Q <= ~Q;		
	end
endmodule