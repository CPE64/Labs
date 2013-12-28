module 595SerialOuput(
  input         [8:0] dataToSend,
  input               clk,

  output  reg         SerialDataOut,
  output  reg         nClear,
  output  reg         StorageLatch,
  output  wire        clkOut

);