//|     Example adder module for CSUS CPE/EEE64
//|
//|     Author: Ben Smith
//|
//|     This module will add a specified number to a constant parameter. The
//|     Parameter can be changed in this file or overridden in
//|
//|
module Adder(
  input     wire [3:0]    UserNumber,
  output    reg  [7:0]    sum = 0
  );

  parameter constant = 4'b0000;

  //| This is a verilog behavioral block that executes whenever UserNumber changes value
  always @(UserNumber)
    begin
      sum = constant + UserNumber;
    end
endmodule