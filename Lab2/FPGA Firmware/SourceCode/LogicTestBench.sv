//|
//| Author: Ben Smith for CSUS CPE 64
//|
//| Purpose: This testbench generates all possible inputs for a
//|          inverter, AND, OR, and, NAND logic gates.
//|
//| Revision History-----------------------------------------------
//| 19/22/13 - Initial input
//|
module LogicTestBench();
    //| local objects for DUT and input generator
    //| ===========================================================
    reg            simClk = 0;
    reg            logicA = 0;
    reg            logicB = 0;
    wire           logicOutputNAND;
    wire           logicOutputAND;
    wire           logicOutputOR;
    wire           logicOutputInverter;

    //| We create the module instances that we want to test
    //| The wires allow the gates to be manipulated by the test module
    //| ===========================================================
    Inverter Inverter(
        .a(logicA),             //Logic input 1
        .q(logicOutputInverter)  //Output
    );

    AndGate And(
        .a(logicA),         //Logic input 1
        .b(logicB),         //Logic input 2
        .q(logicOutputAND)  //Output
    );

    OrGate OR(
        .a(logicA),         //Logic input 1
        .b(logicB),         //Logic input 2
        .q(logicOutputOR)   //Output
    );

    NandGate Nand(
        .a(logicA),         //Logic input 1
        .b(logicB),         //Logic input 2
        .q(logicOutputNAND)  //Output
    );

    //| Generate input table for logic modules
    //| ===========================================================
    initial
        begin
        #8 {logicA, logicB} = 2'b00;
        #2 $display("A:%d B:%d - Inverter:%d AND:%d OR:%d NAND:%d", logicA, logicB, logicOutputInverter, logicOutputAND, logicOutputOR, logicOutputNAND);

        #8 {logicA, logicB} = 2'b01;
        #2 $display("A:%d B:%d - Inverter:%d AND:%d OR:%d NAND:%d", logicA, logicB, logicOutputInverter, logicOutputAND, logicOutputOR, logicOutputNAND);

        #10 {logicA, logicB} = 2'b10;
        #2  $display("A:%d B:%d - Inverter:%d AND:%d OR:%d NAND:%d", logicA, logicB, logicOutputInverter, logicOutputAND, logicOutputOR, logicOutputNAND);

        #10 {logicA, logicB} = 2'b11;
        #2  $display("A:%d B:%d - Inverter:%d AND:%d OR:%d NAND:%d", logicA, logicB, logicOutputInverter, logicOutputAND, logicOutputOR, logicOutputNAND);
        end
endmodule