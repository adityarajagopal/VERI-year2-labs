//------------------------------
// Module name: top.v
// Function: DAC tester
// Creator:  Aditya Rajagopal, Mike Rizakis
// Version:  1.0
// Date:     04/12/15
//------------------------------

module top (CLOCK_50, DAC_CS, DAC_SDI, DAC_LD, SCK); 
	input CLOCK_50; 
	
	output DAC_CS; 
	output DAC_SDI;
	output DAC_LD; 
	output SCK;
	
	wire trigger; 
	wire load;
	wire [9:0] data;
	
	clk_div clock_divider(CLOCK_50, 12499, trigger);
	TOGGLE_FF toggle(trigger, data);
	pulse_gen pulse_generator(CLOCK_50, trigger, load);
	spi2dac converter(CLOCK_50, data, load, DAC_SDI, DAC_CS, SCK, DAC_LD);	
	
	
endmodule
