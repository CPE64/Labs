//|     Example adder testbench module for CSUS CPE/EEE64
//|
//|     Author: Ben Smith
//|
//|     This module will test the verilog adder module
//|     Parameter can be changed in this file or overridden in
//|
//|
localparam SpecifiedConstant = 4'b0001;

module ComparitorTestbench();
  //|
  //| Local reg/wire declarations
  //|--------------------------------------------
  reg             SimClk = 0;
  reg   [7:0]     ReferenceNumber = 127;
  reg   [7:0]     InputNumber = 0;
  wire            G,E,L;

  //|
  //| DUT instantiation
  //|--------------------------------------------
  Comparitor DUT(
      .ComparisonReference(ReferenceNumber),
      .ComparisonInput(InputNumber),
      .G(G),
      .E(E),
      .L(L)
    );

  //|
  //| Generate simulation clock
  //|--------------------------------------------
  always
    #1 SimClk = !SimClk;

  //|
  //| Main testbench logic
  //|--------------------------------------------
  always @(posedge SimClk)
    begin
      // //| This assertion will list an error if not met
      // assert (Result[16] == )
      //   $display("Case %d: Pass", InputNumber);
      // else
      //   $error("Case %d: FAIL:%d + %d /= %d", InputNumber, InputNumber, SpecifiedConstant, Result);

      InputNumber++;
    end
endmodule