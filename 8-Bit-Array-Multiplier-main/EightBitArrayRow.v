/* EightBitArrayRow.v
* -------------------
* By: Harith S. Ibrahim
* Date: 26th Febuary 2022
*
* Module Description:
* --------------------
* One row of the unsigned 8-bit array multiplier
* 
* Inputs:
*
*
* a: unsigned 8 bit row input of the first multiplied value 
*
* b: unsigned 8 bit row input of the multiplaier value 
*
*
* Outputs:
* 
* p: the final row product value
*
*/

module EightBitArrayRow(
	
	input [7:0] a,
	input [7:0] b,

	output [7:0] sum_out


);

	wire [8:0] c_pass;
	
	EightBitArrayCell Cell0(
	a[0],
	b[0],
	c_pass[0],
	
	sum_out[0],
	c_pass[1]
	);
	
	EightBitArrayCell Cell1(
	a[1],
	b[1],
	c_pass[1],
	
	sum_out[1],
	c_pass[2]
	);

	EightBitArrayCell Cell2(
	a[2],
	b[2],
	c_pass[2],
	
	sum_out[2],
	c_pass[3]
	);
	
	EightBitArrayCell Cell3(
	a[3],
	b[3],
	c_pass[3],
	
	sum_out[3],
	c_pass[4]
	);
	
	EightBitArrayCell Cell4(
	a[4],
	b[4],
	c_pass[4],
	
	sum_out[4],
	c_pass[5]
	);
	
	EightBitArrayCell Cell5(
	a[5],
	b[5],
	c_pass[5],
	
	sum_out[5],
	c_pass[6]
	);
	
	EightBitArrayCell Cell6(
	a[6],
	b[6],
	c_pass[6],
	
	sum_out[6],
	c_pass[7]
	);
	
	EightBitArrayCell Cell7(
	a[7],
	b[7],
	c_pass[7],
	sum_out[7],
	c_pass[8]
	//c_out
);
	

endmodule