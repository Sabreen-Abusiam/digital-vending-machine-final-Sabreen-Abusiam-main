// ex29.v - 5-state complete FSM
// WHAT TO DO: Add a CHANGE state to complete the full vending machine transaction cycle.
// This final state handles returning change before going back to IDLE for the next customer.
module ex29(
    input  clk,
    input  rst,
    input  coin,
    input  sufficient,
    input  done,
    output reg [2:0] state
);

    // State encoding (5 states => need 3 bits)
    localparam IDLE     = 3'd0;
    localparam ACCEPT   = 3'd1;
    localparam CHECK    = 3'd2;
    localparam DISPENSE = 3'd3;
    localparam CHANGE   = 3'd4;

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
                    // wait until dispensing is done
                    if (done)
                        state <= CHANGE;
                    else
                        state <= DISPENSE;
                end

                CHANGE: begin
                    // give change for one cycle, then go back to IDLE
                    state <= IDLE;
                end

                default: state <= IDLE;

            endcase
        end
    end

endmodule

