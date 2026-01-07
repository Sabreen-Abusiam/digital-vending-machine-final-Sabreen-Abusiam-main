// ex24.v - 5-bit register for accumulator
// WHAT TO DO: Build a multi-bit register that stores the total amount of money inserted.
// This register is the core of the coin accumulator in your vending machine.
module ex24(
    input  [4:0] D,
    input        clk,
    output reg [4:0] Q
);

always @(posedge clk) begin
    Q <= D;
end

endmodule

