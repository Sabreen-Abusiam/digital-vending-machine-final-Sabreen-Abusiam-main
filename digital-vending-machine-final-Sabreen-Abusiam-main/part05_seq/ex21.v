// ex21.v - Basic D Flip-Flop
// This is your first SEQUENTIAL logic circuit (has memory!)
// It remembers values between clock cycles

module ex21(
    input d,
    input clk,
    output reg q
);

always @(posedge clk) begin
    q <= d;
end

endmodule
