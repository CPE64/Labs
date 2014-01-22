//double always block Moore type state machine
//Example from Clifford Cummings 2003 SNUG paper "Synthesizable Finite State Machine Design Techniques Using the New SystemVerilog 3.0 Enhancements"

module fsm_cc1_2(
  output reg rd, ds,
  input go, ws, clk, rst_n);

parameter IDLE = 2'b00,
          READ = 2'b01,
          DLY = 2'b11,
          DONE = 2'b10;

reg [1:0] state, next;

//Note all non blocking statements in this section
always @(posedge clk or negedge rst_n)
  if (!rst_n) state <= IDLE;
  else state <= next;

//note all blocking statements in this section
 always @(state or go or ws) begin
    next = 'bx;
    rd = 1'b0;
    ds = 1'b0;

    case (state)
      IDLE : if (go) next = READ;
        else next = IDLE;

      READ :
        begin
          rd = 1'b1;
          next = DLY;
        end

      DLY :
        begin
          rd = 1'b1;
          if (!ws) next = DONE;
          else next = READ;
        end

      DONE :
        begin
          ds = 1'b1;
          next = IDLE;
        end
    endcase
   end
endmodule