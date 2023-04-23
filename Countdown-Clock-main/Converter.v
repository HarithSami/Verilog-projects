/* 
		Converter Module 
		By: Harith S. Ibrahim
		Date: 14, May, 2022
		**Recieves switch user-input to select timer mode**
*/

module Converter(

input c1,
input c2,
output reg Sec_set,
output reg Min_set

);

always @ ( * )

	begin


		if ( !c2 && !c1 )// 0 0 
			Sec_set <= 5 ;//5 seconds mode



		else if ( !c2 && c1 )// 0 1
			Sec_set <= 30 ;//30 seconds mode

			
		else if ( c2 && !c1 )// 1 0
			Min_set <= 1 ;//1 minute mode


		else

			Min_set <= 2 ;// 1 1 
							  //2 minutes mode

	end
endmodule