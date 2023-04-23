//EightBitFullAdder_tb.v

`timescale 1ns / 100 ps

module EightBitFullAdder_tb;

	//data types
	
		reg [7:0] a;
		reg [7:0] b;
		reg c_in;
		
		wire [7:0] sum;
		wire c_out;
		
		//Device test instance
	EightBitFullAdder dut(
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
	for(i = 0; i < 65536; i = i + 1)
		begin	
			{b,a}=i;
			#10;
		end
	
	$display("C_in = 1");
	//c_in high
	c_in= 1'b1;
	for(i = 0; i < 65536; i = i + 1)
		begin	
			{b,a}=i;
			#10;
		end
	$stop;
	
end
endmodule