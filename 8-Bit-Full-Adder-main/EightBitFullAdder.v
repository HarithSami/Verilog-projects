/* EightBitFullAdder.v
* -------------------
* By: Harith S. Ibrahim
* Date: 15th Febuary 2022
*
* Module Description:
* --------------------
* An eight bit full adder module
* 
* Inputs:
* a [3:0] - The first number to be added
* b [3:0] - The second number to be added
* c_in carry in
*
* Outputs:
* sum [3:0] - The sum of the two inputs and carry in
* c_out - Carry out
*
*/

module EightBitFullAdder(

	input [7:0] a,
	input [7:0] b,
	input c_in,
	
	output [7:0] sum,
	output c_out

);


	wire [7:0] w1;

	
	
	ThreeBitFullAdder adder1(
	a[1],
	b[1],
	c_in,
	sum[1],
	w1[1]
	);
	
	
	
	
	
	OneBitFullAdder adder2(
	a[3],
	b[3],
	w1[1],
	sum[3],
	w1[2]
	);
	
	
	FourBitFullAdder adder3(
	a[4],
	b[4],
	w1[2],
	sum[4],
	c_out
	);
	
endmodule