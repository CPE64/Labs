//| Author          : Ben Smith
//| Purpose         : testbench for comparitor.
//| Revision        : 1.0
//| Change History  :
//| ============================================================================
//|  1.0 - Initial Input
//|
//| ============================================================================

module ComparitorTestbench();
  //|
  //| Local reg/wire declarations
  //|--------------------------------------------
  reg             SimClk = 0;
  reg   [3:0]     ReferenceNumber = 127;
  reg   [3:0]     InputNumber = 0;
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