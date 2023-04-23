/* EightBitArrayMultiplier.v
* -------------------
* By: Harith S. Ibrahim
* Date: 2nd March 2022
*
* Module Description:
* --------------------
* The top-level-entity of the unsigned 8-bit array multiplayer 
* 
* Inputs:
*
* a: unsigned 8 bit input of the first multiplied value 
*
* b: unsigned 8 bit input of the multiplaier value 
*
*
* Outputs:
* 
* p: final product value
*/

module EightBitArrayMultiplier(
	
	input [7:0]a,
	input [7:0]b,
	
	output [15:0]p
);
	//wire connections 

	wire [7:0]m0;
	wire [8:0]m1;
	wire [9:0]m2;
	wire [10:0]m3;
	wire [11:0]m4;
	wire [12:0]m5;
	wire [13:0]m6;
	wire [14:0]m7;
	wire [15:0]s1,s2,s3,s4,s5,s6,s7; //shifters

	//repeating A values to be repeated and used in each row  

	wire [7:0] a0, a1, a2, a3, a4, a5, a6, a7; 
	assign a0 = {8{a[0]}};
	assign a1 = {8{a[1]}};
	assign a2 = {8{a[2]}};
	assign a3 = {8{a[3]}};
	assign a4 = {8{a[4]}};
	assign a5 = {8{a[5]}};
	assign a6 = {8{a[6]}};
	assign a7 = {8{a[7]}};

//Array Rows

EightBitArrayRow row0(
	a0[7:0],
	b[7:0],
	m0[7:0]
);

EightBitArrayRow row1(
	a1[7:0],
	b[7:0],
	m1[7:0]
);

EightBitArrayRow row2(
	a2[7:0],
	b[7:0],
	m2[7:0]
);

EightBitArrayRow row3(
	a3[7:0],
	b[7:0],
	m3[7:0]
);

EightBitArrayRow row4(
	a4[7:0],
	b[7:0],
	m4[7:0]
);

EightBitArrayRow row5(
	a5[7:0],
	b[7:0],
	m5[7:0]
);

EightBitArrayRow row6(
	a6[7:0],
	b[7:0],
	m6[7:0]
);

EightBitArrayRow row7(
	a7[7:0],
	b[7:0],
	m7[7:0]
);

//Final addition with row-shifting

assign sl=m0 + (m1<<1);
assign s2=sl + (m2<<2);
assign s3=s2 + (m3<<3);
assign s4=s3 + (m4<<4);
assign s5=s4 + (m5<<5);
assign s6=s5 +  (m7<<7);

//final value
assign p=s7;

endmodule