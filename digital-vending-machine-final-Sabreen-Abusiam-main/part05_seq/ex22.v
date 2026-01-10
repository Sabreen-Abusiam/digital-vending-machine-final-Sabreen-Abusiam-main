// ex22.v - D FF with synchronous reset
// WHAT TO DO: Add a reset signal to your flip-flop so it can be cleared to zero.
// Reset is essential for initializing the vending machine to a known starting state.
module ex22(
    input  d,
    input  clk,
    input  rst,
    output reg q
);

always @(posedge clk) begin
    if (rst)
        q <= 1'b0;
    else
        q <= d;
end

endmodule

