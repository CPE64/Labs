  //       Title: Example Module for CPE/EEE64
  //      Author: Smart Guy
  // Description: This module serves as a template for SystemVerilog modules
  module <ModuleName>(
    input  wire        <PortName>,
    input  wire  [7:0] <PortName>,
    output reg         <PortName>,
    output reg   [7:0] <PortName>
  );

  always @posedge(<SensativityList>)
  begin
    //logic goes here
  end
  endmodule