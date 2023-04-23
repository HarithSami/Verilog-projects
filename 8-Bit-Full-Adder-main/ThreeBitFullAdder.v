/* ThreeBitFullAdder.v
* -------------------
* By: Harith S. Ibrahim
* Date: 15th Febuary 2022
*
* Module Description:
* --------------------
* A three bit full adder module
* 
* Inputs:
* a [2:0] - The first number to be added
* b [2:0] - The second number to be added
* c_in carry in
*
* Outputs:
* sum [2:0] - The sum of the two inputs and carry in
* c_out - Carry out
*
*/

module ThreeBitFullAdder(

	input [2:0] a,
	input [2:0] b,
	input c_in,
	
	output [2:0] sum,
	output c_out

);


	wire [2:0] w1;

	OneBitFullAdder adder1(
	a[0],
	b[0],
	c_in,
	sum[0],
	w1[0]
	);
	
	
	OneBitFullAdder adder2(
	a[1],
	b[1],
	w1[0],
	sum[1],
	w1[1]
	);
	
	

	OneBitFullAdder adder3(
	a[2],
	b[2],
	w1[1],
	sum[2],
	c_out
	);
	
endmodule