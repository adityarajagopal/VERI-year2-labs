//------------------------------
// Module name: top.v
// Function: DAC tester
// Creator:  Aditya Rajagopal, Mike Rizakis
// Version:  1.0
// Date:     04/12/15
//------------------------------

module top (SW[9:0], CLOCK_50, DAC_CS, DAC_SDI, DAC_LD, SCK); 
	input [9:0] SW; 
	input CLOCK_50; 
	
	output DAC_CS; 
	output DAC_SDI;
	output DAC_LD; 
	output SCK;
	
	wire trigger; 
	wire load;
	
	clk_div clock_divider(CLOCK_50, 2499, trigger);
	pulse_gen pulse_generator(CLOCK_50, trigger, load);
	spi2dac converter(CLOCK_50, SW, load, DAC_SDI, DAC_CS, SCK, DAC_LD);	
endmodule
