// ex21.v - Basic D Flip-Flop
// This is your first SEQUENTIAL logic circuit (has memory!)
// It remembers values between clock cycles

module ex21(
    input D,
    input clk,
    output reg Q
);

always @(posedge clk) begin
    Q <= D;
end

endmodule
