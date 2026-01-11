// ex35.v - Combinational logic using always @(*)
// WHAT TO DO: Learn to use always @(*) blocks for combinational logic with case statements.
// This is an alternative to assign statements, useful for complex multi-operation circuits.
module ex35(
    input  [3:0] a,
    input  [3:0] b,
    input  [1:0] op,
    output reg [4:0] result
);

always @(*) begin
    case (op)
        2'b00: result = a + b;
        2'b01: result = a - b;
        default: result = 5'd0;
    endcase
end

endmodule
