//|
//| Author: Ben Smith for CSUS CPE 64
//|
//| Purpose: This module performs the OR operator on two inputs on
//|          the positive edge of the input clock
//|
//| Revision History-----------------------------------------------
//| 19/22/13 - Initial input
//|
module OrGate(
    input   wire    a,         //Logic input 1
    input   wire    b,         //Logic input 2
    output  reg     q      //Output
    );

    assign q = a || b;
endmodule