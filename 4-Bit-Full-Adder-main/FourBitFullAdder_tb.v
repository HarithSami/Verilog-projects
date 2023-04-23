`timescale 1 ns/ 100 ps
module FourBitFullAdder_tb;

	//data types
	reg [3:0] a;
	reg [3:0] b;
	reg c_in;
	
	wire [3:0] sum;
	wire c_out;
	
	//reg for inputs and wires for outputs
	
	//Device intantiated for testing
	FourBitFullAdder dut(
	a,
	b,
	c_in,
	sum,
	c_out
	);
	
	integer i;
	
	//test vectors
	initial 
	begin
	$display("Testing Carry In = 0");
	c_in = 1'b0;
	for(i = 0; i < 256; i = i +1)
		begin
		{b,a} = i;
		#10;
		end
		
	$display("Testing Carry In = 1");	
	c_in = 1'b1;
	for(i = 0; i < 256; i = i +1)
		begin
		{b,a} = i;
		#10;
		end
		
		
		$stop;
	end

endmodule