// ex26.v - Simple 2-State Finite State Machine (FSM)
// FSMs are used to control sequences of operations
// Like a traffic light or vending machine controller

module ex26(
    input clk,
    input rst,
    input start,
    output reg state

);

  // States: 0 = IDLE, 1 = ACTIVE
    initial state = 1'b0;

    always @(posedge clk) begin
        if (rst)
            state <= 1'b0;
        else if (start)
            state <= 1'b1;
        else
            state <= state;
    end

endmodule
