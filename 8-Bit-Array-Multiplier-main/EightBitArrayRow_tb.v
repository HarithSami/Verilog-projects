//EightBitArrayRow_tb.v

`timescale 1ns / 100 ps

module EightBitArrayRow_tb;

	//data types
		
		reg [7:0] a;
		reg [7:0] b;
		
		wire [7:0] sum_out;
		

		//Device test instance
	EightBitArrayRow dut(
	a,
	b,
	sum_out
	);
	
	integer i;
	
	initial 
	begin
	
		for(i = 0; i<250; i=i+1)
		begin
		a=$urandom%256;
		b=$urandom%256;
		#10;
		
		end

	end

endmodule