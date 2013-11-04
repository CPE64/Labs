//|
//| Author: Ben Smith for CSUS CPE 64
//|
//| Purpose: This module performs an inversion on two inputs on
//|          the positive edge of the input clock
//|
//| Revision History-----------------------------------------------
//| 19/22/13 - Initial input
//|
module Inverter(
    input   wire    clk,       //System clock used to
    input   wire    a,         //Logic input 1
    output  reg     q = 0      //Output
    );

    always @(posedge clk)
    begin
        q <= ~a;
    end
endmodule