//| Author          : Ben Smith
//| Purpose         : Provides an indication if one of two four bit is larger than
//|                   the other.
//| Revision        : 1.0
//| Change History  :
//| ============================================================================
//|  1.0 - Initial Input
//|
//| ============================================================================

module Comparitor(
  input     wire [3:0]    ComparisonReference,
  input     wire [3:0]    ComparisonInput,
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