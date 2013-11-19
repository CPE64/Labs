//|
//| Author: Ben Smith for CSUS CPE 64
//|
//| Purpose: This module performs the OR operator on two inputs on
//|          the positive edge of the input clock
//|
//| Revision History-----------------------------------------------
//| 19/22/13 - Initial input
//|
module orGate(
    input   wire    clk,       //System clock used to
    input   wire    a,         //Logic input 1
    input   wire    b,         //Logic input 2
    output  reg     q = 0      //Output
    );

    always @(posedge clk)
    begin
        q <= a || b;
    end
endmodule