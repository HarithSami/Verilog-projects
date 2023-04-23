/* 
		FourModeTimer Module 
		By: Harith S. Ibrahim
		Date: 14, May, 2022
		**The top level entity for the 4-Mode timer project**
*/
module FourModeTimer (
	input clk_50M,				
	input set,					
	input hold,					
	input C1, 					
	input C2,					
	output [6:0] Hex_M1,		
	output [6:0] Hex_M2,		
	output [6:0] Hex_S1,		
	output [6:0] Hex_S2,		
	output CLK_ind				
);




ClockDivider clockdivider(//Clock Divider module

	.clk_50MHz (clk_50M),
	
	.set_n (set),
	
	.clk_1Hz (CLK_ind)
);



Converter Converter(//Converter Module

	.c1 (C1),
	
	.c2 (C2),
	
	.Sec_set(Qs_set),
	
	.Min_set(Qm_set)
);


TimerLogic TimerLogic(//Timer Logic Module
	.hold (hold),
	
	.CLK_1Hz(CLK_ind),
	
	.set_n(set),				

	.Qm_set(Qm_set),
	
	.Qs_set(Qs_set),
	
	.Qs(Qs),
	
	.Qm(Qm)
);


SevenSegEncoder SevenSegEncoder(//Seven Segment Encoder Module
	.CLK_1Hz(CLK_ind),
	.Qs(Qs),
	.Qm(Qm),
	.HexM_1(Hex_M1),
	.HexM_2(Hex_M2),
	.HexS_1(Hex_S1),
	.HexS_2(Hex_S2),
);


endmodule