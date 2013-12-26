//double always block Moore type state machine

//The combinational always block sensitivity list is sensitive to changes on the state variable and all of the
//inputs referenced in the combinational always block.

//The combinational always block has a default next state assignment at the top of the always block.

//Default output assignments are made prior to the case statement (this eliminates latches and reduces the
//amount of code required to code the rest of the outputs in the case statement and highlights in the case
//statement exactly in which states the individual output(s) change).

//In the states where the output assignment is not the default value assigned at the top of the always block, the
//output assignment is only made once for each state.

//There is an if-statement, an else-if-statement or an else statement for each transition arc in the FSM
//state diagram. The number of transition arcs between states in the FSM state diagram should equal the number
//of if-else-type statements in the combinational always block.

//For ease of scanning and debug, place all of the next assignments in a single column, as opposed to placing
//inline next assignments that follow the contour of the RTL code.

module fsm_cc1_2(
  output reg rd, ds,
  input go, ws, clk, rst_n);

parameter IDLE = 2'b00,
          READ = 2'b01,
          DLY = 2'b11,
          DONE = 2'b10;

reg [1:0] state, next;

//Note all non
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