//------------------------------
// Module name: pulse_gen
// Function: 1 clock cycle pulse generator
// Creator:  Aditya Rajagopal, Mike Rizakis
// Version:  1.0
// Date:     04/12/15
//------------------------------

module pulse_gen(clkin, trigger, load);
	input clkin;
	input trigger;
	output load; 
	
	reg [1:0] state; 
	reg load; 
	
	initial load = 1'b0;
	parameter IDLE = 2'b00; 
	parameter HIGH = 2'b01; 
	parameter WAIT = 2'b10;
	
	initial state = IDLE;
	
	always @ (posedge clkin) begin 
		case (state)
			IDLE :	if(trigger == 1'b1) begin 
							state <= HIGH;
							load <= 1'b1; 
						end 
						
						else begin
							state <= IDLE;
							load <= 1'b0;
						end
						
			HIGH : 	if(trigger == 1'b1) begin
							state <= WAIT;
							load <= 1'b0;
						end
						
						else begin
							state <= IDLE; 
							load <= 1'b0;
						end
			
			WAIT : 	if(trigger == 1'b0) begin
							state <= IDLE;
							load <= 1'b0; 
						end
						
						else begin 
							state <= WAIT;
							load <= 1'b0;
						end
		endcase
	end
endmodule
