//|     Example adder module for CSUS CPE/EEE64
//|
//|     Author: Ben Smith
//|
//|     This module will add a specified number to a constant parameter. The
//|     Parameter can be changed in this file or overridden in
//|
//|
module Comparitor(
  input     wire [7:0]    ComparisonReference,
  input     wire [7:0]    ComparisonInput,
  output    reg           G,E,L = 0
  );

always @(*)
  begin
    //| This a combinatorial statement
    if(ComparisonReference >  ComparisonInput)
      begin
        G <= 1;
        E <= 0;
        L <= 0;
      end
    else if(ComparisonReference == ComparisonInput)
      begin
        G <= 0;
        E <= 1;
        L <= 0;
      end
    else
      begin
        G <= 0;
        E <= 0;
        L <= 1;
      end
  end
endmodule