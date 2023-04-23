`timescale 1 ns/100 ps
module FullAdderOneBit_tb;
  // Inputs are created as registers
  reg a;
  reg b;
  reg c_in;
   // outputs are created as wires
  wire sum;
  wire c_out;
   //Instantiate Device under Test
  FullAdderOneBit dut(
      a,
      b,
      C_in,
      sum,
      c_out
  );
   integer i;
  // create stimulus
   initial begin
      c_in = 1'b0;
      for (i = 0; i < 4; i = i + 1) begin
      {b,a} = i; 
      #10;
      end
      $stop; //stop the simulat ion
  end
endmodule