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
    wire           logicOutputAND = 0;
    wire           logicOutputOR  = 0;

    //| We create the module instances that we want to test
    //| The wires allow the gates to be manipulated by the test module
    //| ===========================================================
    andGate Inverter(
        .clk(simClk),       //System clock used to
        .a(logicA),         //Logic input 1
        .b(logicB),         //Logic input 2
        .q(logicOutputAND)  //Output
    );

    andGate AND(
        .clk(simClk),       //System clock used to
        .a(logicA),         //Logic input 1
        .b(logicB),         //Logic input 2
        .q(logicOutputAND)  //Output
    );

    orGate OR(
        .clk(simClk),       //System clock used to
        .a(logicA),         //Logic input 1
        .b(logicB),         //Logic input 2
        .q(logicOutputOR)   //Output
    );

    andGate Nand(
        .clk(simClk),       //System clock used to
        .a(logicA),         //Logic input 1
        .b(logicB),         //Logic input 2
        .q(logicOutputAND)  //Output
    );

    //| Generate "virtual" clock for synchronus logic modules
    //| ===========================================================
    always #1 simClk = !simClk;

    //| Generate input table for logic modules
    //| ===========================================================
    initial
        begin
        #4  {logicA, logicB} = 2'b00;
        #4  {logicA, logicB} = 2'b01;
        #4  {logicA, logicB} = 2'b10;
        #4  {logicA, logicB} = 2'b11;
        #4  {logicA, logicB} = 2'b00;
        end
endmodule