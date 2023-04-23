//ThreeBitFullAdder_tb.v

`timescale 1ns / 100 ps

module ThreeBitFullAdder_tb;

	//data types
	
		reg [2:0] a;
		reg [2:0] b;
		reg c_in;
		
		wire [2:0] sum;
		wire c_out;
		
		//Device test instance
	ThreeBitFullAdder dut(
	a,
	b,
	c_in,
	sum,
	c_out
	);
	
	integer i;
	//64 times!!!
	//test vectors
	
	//c_in low
	initial
	begin
	$display("C_in = 0");
	c_in= 1'b0;
	for(i = 0; i < 64; i = i + 1)
		begin	
			{b,a}=i;
			#10;
		end
	
	$display("C_in = 1");
	//c_in high
	c_in= 1'b1;
	for(i = 0; i < 64; i = i + 1)
		begin	
			{b,a}=i;
			#10;
		end
	$stop;
	
end
endmodule