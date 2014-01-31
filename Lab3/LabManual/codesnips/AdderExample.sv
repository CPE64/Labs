  module Adder(
  input     wire  [3:0]    UserNumber,
  output    reg   [7:0]    sum = 0
  );

  parameter constant = 4'b0000;

  //| This is a verilog behavioral block that executes whenever UserNumber changes value
  always @(UserNumber)
    begin
      sum = constant + UserNumber;
    end
  endmodule