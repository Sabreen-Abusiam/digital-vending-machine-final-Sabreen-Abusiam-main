// ex24.v - 5-bit register for accumulator
// WHAT TO DO: Build a multi-bit register that stores the total amount of money inserted.
// This register is the core of the coin accumulator in your vending machine.
module ex24(
    input  [4:0] d,
    input        clk,
    input        rst,
    input        en,
    output reg [4:0] q
);

initial q = 5'b00000;

always @(posedge clk) begin
    if (rst)
        q <= 5'b00000;
    else if (en)
        q <= d;
    else
        q <= q;
end

endmodule

