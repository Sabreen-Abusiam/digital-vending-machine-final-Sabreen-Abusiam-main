// ex27.v - 3-state FSM (IDLE, ACCEPT, CHECK)
// WHAT TO DO: Expand your FSM to three states to handle coin acceptance and checking.
// This teaches you how FSMs transition through multiple states based on inputs.
module ex27(
    input clk,
    input rst,
    input coin,
    input check,
    output reg [1:0] state
);

    // State encoding
    localparam IDLE   = 2'd0;
    localparam ACCEPT = 2'd1;
    localparam CHECK  = 2'd2;

    // Initial state
    initial state = IDLE;

    always @(posedge clk) begin
        if (rst) begin
            state <= IDLE;
        end else begin
            case (state)
                IDLE: begin
                    if (coin)
                        state <= ACCEPT;
                    else
                        state <= IDLE;
                end

                ACCEPT: begin
                    if (check)
                        state <= CHECK;
                    else
                        state <= ACCEPT;
                end

                CHECK: begin
                    state <= IDLE;
                end

                default: state <= IDLE;
            endcase
        end
    end

endmodule

