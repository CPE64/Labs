// 4-State Mealy state machine
module mealy_mac
(
  input clk, data_in, reset,
  output reg [1:0] data_out
);

  // Declare state register
  reg   [1:0]state;

  // Declare states
  parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3;

  // Determine the next state synchronously, based on the
  // current state and the input
  always @ (posedge clk or posedge reset) begin
    if (reset)
      state <= S0;
    else
      case (state)
        S0:
          if (data_in) state <= S1;
          else         state <= S1;
        S1:
          if (data_in) state <= S2;
          else         state <= S1;
        S2:
          if (data_in) state <= S3;
          else         state <= S1;
        S3:
          if (data_in) state <= S2;
          else         state <= S3;
      endcase
  end

  // Determine the output based only on the current state
  // and the input (do not wait for a clock edge).
  always @ (state or data_in)
  begin
    case (state)
      S0:
        if (data_in) data_out = 2'b00;
        else         data_out = 2'b10;
      S1:
        if (data_in) data_out = 2'b01;
        else         data_out = 2'b00;
      S2:
        if (data_in) data_out = 2'b10;
        else         data_out = 2'b01;
      S3:
        if (data_in) data_out = 2'b11;
        else         data_out = 2'b00;
    endcase
  end
endmodule
