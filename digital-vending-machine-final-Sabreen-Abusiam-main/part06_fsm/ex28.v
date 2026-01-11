// ex28.v - 4-state FSM for vending machine
// WHAT TO DO: Add a DISPENSE state to create a basic functioning vending machine controller.
// Now your FSM can accept coins, check payment, and dispense products.
module ex28(
    input clk,
    input rst,
    input coin,
    input sufficient,
    output reg [1:0] state
);

    // State encoding
    localparam IDLE     = 2'd0;
    localparam ACCEPT   = 2'd1;
    localparam CHECK    = 2'd2;
    localparam DISPENSE = 2'd3;

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
                    // stay here until money is sufficient
                    if (sufficient)
                        state <= CHECK;
                    else
                        state <= ACCEPT;
                end

                CHECK: begin
                    // if sufficient => go dispense, else back to accept
                    if (sufficient)
                        state <= DISPENSE;
                    else
                        state <= ACCEPT;
                end

                DISPENSE: begin
                    // dispense for one cycle, then go back to IDLE
                    state <= IDLE;
                end

                default: state <= IDLE;
            endcase
        end
    end

endmodule



