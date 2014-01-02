//|     Example adder testbench module for CSUS CPE/EEE64
//|
//|     Author: Ben Smith
//|
//|     This module will test the verilog adder module
//|     Parameter can be changed in this file or overridden in
//|
//|
localparam SpecifiedConstant = 4'b0001;

module adderTestbench();
  //|
  //| Local reg/wire declarations
  //|--------------------------------------------
  reg             SimClk = 0;
  reg     [3:0]   Number = 0;
  wire    [7:0]   Sum;

  //|
  //| DUT instantiation
  //|--------------------------------------------
  Adder #(
      .constant(SpecifiedConstant)
    )AdderDUT(
      .UserNumber(Number),
      .sum(Sum)
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
      //| This assertion will list an error if not met
      assert (Sum == SpecifiedConstant + Number)
        $display("Case %d: Pass", Number);
      else
        $error("Case %d: FAIL:%d + %d /= %d", Number, Number, SpecifiedConstant, Sum);

      Number++;
    end
endmodule