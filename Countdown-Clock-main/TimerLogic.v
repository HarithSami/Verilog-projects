/* 
		Timer Logic Module 
		By: Harith S. Ibrahim
		Date: 14, May, 2022
		**The timer logic, takes in Qm and Qs timer values output binary time value**
*/

module TimerLogic(
	input hold,
	input CLK_1Hz,				
	input set_n,				
	input [5:0] Qm_set, //how many seconds 
	input [1:0] Qs_set, //how many minutes
	output reg [5:0] Qm,
	output reg [1:0] Qs
);



	initial begin
      Qs = 6'b0 ;//Set seconds to zero
      Qm = 2'b0 ;//Set minutes to zero
		
     end
         
         
always @ ( posedge (CLK_1Hz) or negedge (set_n) )
   begin
      if ( !set_n ) 
         begin
			
            if ( Qm_set > 2'b10 )
                begin
					 
					    Qm = 2'b0 ;
                   Qs = 6'b0 ;

                end
					 
            if( ( Qm_set == 1'b0 ) && ( Qs_set == 1'b0 )  )//set seconds value  
                begin
					    Qm = 2'b00 ;
                   Qs = 6'b000101 ;
						 
						 
                end
					 
            else if(  ( Qm_set == 1'b0 ) && ( Qs_set == 1'b1 ) )//set seconds value  
                begin
					   
						Qm = 2'b00 ;

                  Qs = 6'b001010 ;
						
						
						end
						
            else if( ( Qm_set == 1'b1 ) && ( Qs_set == 1'b0 ) )//set minutes value  
				
					 begin
					 
					 	 Qm = 2'b01 ;

					 
						 Qs = 6'b000000 ;
						 
						 
					 end
					 
				else if( ( Qm_set == 1'b1 ) && ( Qs_set == 1'b1 ) )//set minutes value 
					 begin
					 
						  Qm = 2'b10 ;
						  
						  Qs = 6'b000000 ;
						  
					 end
				end
				
				
				else if ( hold == 1 )
				  begin
				  
					 Qm = Qm ;
				  
				  
					  Qs = Qs ;
					 
					 
				  end
				  
				  
				else
				  begin
				  
				  
					 if ( Qs > 1'b0 )
						 begin
						 
							Qs = Qs - 1'b1 ;
							
						 end
						 
					 else if ( Qs == 1'b0 && ( Qm == 2'b10 || Qm == 1'b1 ) )//minute reduction
						 begin
						 
							Qs = 6'b111011 ;

							Qm = Qm - 1'b1 ;
							
						 end
						 
					 else
						begin
							
							Qs = 1'b0 ;

							Qm = 1'b0 ;
							
						end
								
					 end
				end
endmodule