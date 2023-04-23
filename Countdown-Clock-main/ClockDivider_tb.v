/* 
		Clock Divider TestBench  
		By: Harith S. Ibrahim
		Date: 14, May, 2022
		**TestBench for ClockDivider**
*/

//`timescale 1 ns / 100 ps

module ClockDivider_tb ;
	reg clk_50MHz, set_n ;
	wire clk_1Hz ;
 
	ClockDivider (clk_50MHz, set_n, clk_1Hz) ;//DUT instance
	
	
initial
clk_50MHz= 1'b0 ;// initial clock signal

always

	#20  clk_50MHz=~clk_50MHz;//wait 20 seconds 

	initial 
		begin
		#20 set_n=1'b1 ;//set_n on
		#20 set_n=1'b0 ;//set_n off
		#24999999 $finish ;
	end

endmodule