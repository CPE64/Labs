  module <ModuleName>(
    input  wire        <PortName>,
    input  wire  [7:0] <PortName>,
    ....//arbitrary number of ports here
    output reg         <PortName>,
    output reg   [7:0] <PortName>
  );

  always @(<SensativityList>)
    begin
      //logic goes here
    end
  endmodule