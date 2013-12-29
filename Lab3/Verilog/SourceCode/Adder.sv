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
  output    reg  [7:0]    sum
  );

  parameter constant = 4'b0000;

  //| This a combinatorial statement
  assign sum = constant + UserNumber;
endmodule