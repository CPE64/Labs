//| This module serves as a testing module for CPE64
module HDL595ShiftRegister(
  input                 nMasterReclear,
  input                 SerialDataInput,
  input                 SerialDataClock,
  input                 StorageRegisterClock,

  output  reg   [7:0]   q,
  output  wire          SerialDataOutput
);

//| input shift register
reg   [7:0]      inputReg;

//| Assign serial data out to last shift register bit.
assign SerialDataOutput = inputReg[0];

//| Input shift register
always@ (posedge SerialDataClock)
  begin
    inputReg[0] <= inputReg[1];
    inputReg[1] <= inputReg[2];
    inputReg[2] <= inputReg[3];
    inputReg[3] <= inputReg[4];
    inputReg[4] <= inputReg[5];
    inputReg[5] <= inputReg[6];
    inputReg[6] <= inputReg[7];
    inputReg[7] <= SerialDataInput;
  end

  //| Latch input shift register to output
  always@ (posedge StorageRegisterClock or negedge nMasterReclear)
    begin
      if(nMasterReclear == 0) q[7:0] = 0;   //| Reset output upon reclear low
      else
        begin
          //| latch data from input buffer
          q[0] <= inputReg[0];
          q[1] <= inputReg[1];
          q[2] <= inputReg[2];
          q[3] <= inputReg[3];
          q[4] <= inputReg[4];
          q[5] <= inputReg[5];
          q[6] <= inputReg[6];
          q[7] <= inputReg[7];
        end
    end
endmodule