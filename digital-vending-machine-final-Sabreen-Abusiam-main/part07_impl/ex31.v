// ex31.v - Coin accumulator with FSM
// WHAT TO DO: Combine sequential logic (register) with FSM to accumulate coin values.
// This integrates your register from Part 5 with state machine control to track total money.
module ex31(
    input  clk,
    input  rst,
    input  coin_valid,
    input  [3:0] coin,
    output reg [4:0] total
);

    always @(posedge clk) begin
        if (rst) begin
            total <= 5'd0;
        end else begin
            if (coin_valid)
                total <= total + coin;
        end
    end

endmodule

