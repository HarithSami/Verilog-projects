/* 
		Seven Segment Encoder Module 
		By: Harith S. Ibrahim
		Date: 14, May, 2022
		**Includes instances of the BinarytoBCD and BDCtoSevenSeg modules**
		**converts timer logic values to the Hardcoded hex 7-seg presets**
*/
module SevenSegEncoder (
	input CLK_1Hz,  
	input [5:0] Qs, 		
	input [1:0] Qm,			
	output [6:0] HexM_1,		
	output [6:0] HexM_2,	
	output [6:0] HexS_1,		
	output [6:0] HexS_2		

);

reg [3:0] sec_seg1, sec_seg2, min_seg1, min_seg2; //splits the 8 bit BCD to two 4-bit registers
wire [7:0] Qm_BCD;
wire [7:0] Qs_BCD;


BinaryToBCD s_BinaryToBCD(//Binary seconds to BCD seconds

	.Binary(Qs),
	
	.BCD(s_BCD)
);


BinaryToBCD m_BinaryToBCD(//Binary minutes to BCD minutes

	.Binary(Qm),
	
	.BCD(Qm_BCD)
);


always @ ( posedge CLK_1Hz )//split BCD values

	begin

		{sec_seg2, sec_seg1} = Qs_BCD;
		{min_seg2, min_seg1} = Qm_BCD;

	end
	
	
BCDtoSevenSeg BCDtoSevenSeg_HexS_1(//BCD seconds to Hex 7-seg Seconds
	.BCD(sec_seg1),
	.Hex_values(HexS_1)
);


BCDtoSevenSeg BCDtoSevenSeg_HexS_2(//BCD seconds to Hex 7-seg Seconds
	.BCD(sec_seg2),
	.Hex_values(HexS_2)
);


BCDtoSevenSeg BCDtoSevenSeg_HexM_1(//BCD minutes to Hex 7-seg minutes
	.BCD(min_seg1),
	.Hex_values(HexM_1)
);


BCDtoSevenSeg BCDtoSevenSeg_HexM_2(//BCD minutes to Hex 7-seg minutes
	.BCD(min_seg2),
	.Hex_values(HexM_2)
);


endmodule