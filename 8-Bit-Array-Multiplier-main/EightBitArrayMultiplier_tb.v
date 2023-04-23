//EightBitArrayMultiplier_tb.v

`timescale 1ns / 100 ps

module EightBitArrayRow_tb;

	//data types
		
		reg [7:0] a;
		reg [7:0] b;
		reg [7:0] sum_in;
		reg [7:0] c_in;
		
		wire [7:0] sum_out;
		wire [7:0] c_out;
		

		//Device test instance
	EightBitArrayRow dut(
	a,
	b,
	sum_in,
	c_in,
	
	sum_out,
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
	for(i = 0; i < 8; i = i + 1)
		begin	
			{sum_in,b,a}=i;
			#10;
		end
	
	$display("C_in = 1");
	//c_in high
	c_in= 1'b1;
	for(i = 0; i < 8; i = i + 1)
		begin	
			{sum_in,b,a}=i;
			#10;
		end
	$stop;
	
end
endmodule