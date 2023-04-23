/* EightBitArrayCell.v
* -------------------
* By: Harith S. Ibrahim
* Date: 15th Febuary 2022
*
* Module Description:
* --------------------
* One Cell from the unsigned 8-bit array multiplier
* 
Inputs:
*
*
* a: 1-bit multiplied value 
*
* b: 1-bit multiplaier value 
*
* c_in: 1-bit carry-in value
*
*
* Outputs:
* 
* sum: the final cell product value
*
* c_out: carry-out value of the cell
*
*/

module EightBitArrayCell(
	input a,
	input b,
	input c_in,
	output sum,
	output c_out

);

	wire w4;
	
and(w4, a, b);

	wire w1;
	wire w2;
	wire w3;
	
	//sum
	xor(w1, a, w4);
	xor(sum, w1, c_in);

	//carry
	and(w2,w1, c_in);
	and(w3, a, w4);
	or(c_out, w2, w3);
	
endmodule