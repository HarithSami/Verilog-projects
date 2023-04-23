/* 
		BinaryToBCD Module 
		By: Harith S. Ibrahim
		Date: 14, May, 2022
		**Converts binary inputs to Binary coded decimal output**
*/

module BinaryToBCD (	
	input [6:0] Binary,		
	output reg [7:0] BCD		//
);

	integer i;
	reg [ 7: 0 ] Temp1 ;
	reg [ 11 : 0] Temp2 ;
	always @ ( Binary )
		begin
			Temp2 = {11'b0};
			Temp1 = {1'b0, Binary [6:0]};
			for (i = 0; i <= 7; i = i+1)
				begin
					Temp2 = {Temp2 [10:0], Temp1 [7-i]};
					
					if(i < 7 && Temp2 [3:0] > 4'd4)
						begin
							Temp2 [3:0] = Temp2 [3:0] + 4'd3;
						end
						
					if(i < 7 && Temp2 [7:4] > 4'd4)
						begin
							Temp2 [7:4] = Temp2 [7:4] + 4'd3;
						end

				end
			BCD = Temp2 [7:0];
		end
			

endmodule