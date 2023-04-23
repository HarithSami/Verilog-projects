/* 
		BCDtoSevenSeg Module 
		By: Harith S. Ibrahim
		Date: 14, May, 2022
		**Takes the corresponding digits and outputs the hex 7-segment representation of it**
*/
module BCDtoSevenSeg (

	input [3:0] BCD , 				
	output reg [6:0] Hex_values
);
always @ ( * )


    case( BCD )//checks for BCD values 
	 
		0 : Hex_values = 7'b0000001 ;//Digit zero
		
		1 : Hex_values = 7'b1001111 ;//Digit One
		
		2 : Hex_values = 7'b0010010 ;//Digit Two
		
		3 : Hex_values = 7'b0000110 ;//Digit Three
		
		4 : Hex_values = 7'b1001100 ;//Digit Four
		
		5 : Hex_values = 7'b0100100 ;//Digit Five
		
		6 : Hex_values = 7'b0100000 ;//Digit Six
		
		7 : Hex_values = 7'b0001101 ;//Digit Seven
		
		8 : Hex_values = 7'b0000000 ;//Digit Eight
		
		9 : Hex_values = 7'b0000100 ;//Digit Nine
		
       default: Hex_values = 7'b0000000 ;//off by default
   endcase	
  
endmodule