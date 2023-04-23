/* 
		Clock Divider Module 
		By: Harith S. Ibrahim
		Date: 14, May, 2022
		**Divides input clock Signal to 1 second intervals**
*/

module ClockDivider  #( 

parameter div_val = 24999999,//value is (50mhz/2)-1 [it is minused by one because the clock starts at zero
parameter regi=28// Register is 28 bits

)

	(clk_50MHz, set_n,clk_1Hz);
	 
	input clk_50MHz;
	input set_n;
	output clk_1Hz;
	 
	reg [ regi - 1:0 ] register ;
	reg counter ;
	wire [ regi - 1:0 ] next ;

	 
always @ ( posedge clk_50MHz or posedge set_n )

	begin
	  if ( set_n )
		  begin
			  register <= 0;
		counter <= 1'b0;
		  end

	  else if ( next == div_val )
			begin
			  register <= 0;
			  counter <= ~counter ;
			end

	  else
			register <= next ;
	end

	 assign next = register + 1 ;   	      
	 assign clk_1Hz = counter ;
	endmodule
