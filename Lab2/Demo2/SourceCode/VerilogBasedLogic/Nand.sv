//|
//| Author: Ben Smith for CSUS CPE 64
//|
//| Purpose: This module performs the OR operator on two inputs
//|
//|
//| Revision History-----------------------------------------------
//| 19/22/13 - Initial input
//|
module NandGate(
    input   wire    a,         //Logic input 1
    input   wire    b,         //Logic input 2
    output  reg     q  //Output
    );

    assign    q = !(a & b);
endmodule