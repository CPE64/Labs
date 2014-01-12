//| Author          : Ben Smith
//| Purpose         : Parameterized 4bit constant to variable 4 bit adder.
//| Revision        : 1.0
//| Change History  :
//| ============================================================================
//|  1.0 - Initial Input
//|
//| ============================================================================

module Adder(
  input     wire [3:0]    UserNumber,
  output    wire [7:0]    sum
  );

  parameter constant = 4'b0000;

  //| This a combinatorial statement
  assign sum = constant + UserNumber;

endmodule