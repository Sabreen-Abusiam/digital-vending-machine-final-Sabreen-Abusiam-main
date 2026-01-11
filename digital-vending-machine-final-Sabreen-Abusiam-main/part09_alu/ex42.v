// ex42.v - 4-operation ALU (ADD/SUB/AND/OR)
// WHAT TO DO: Expand your ALU to perform four operations: arithmetic (ADD/SUB) and logic (AND/OR).
// Use a 2-bit opcode to select which operation to perform.
module ex42(
    input  [4:0] a,
    input  [4:0] b,
    input  [1:0] op,
    output reg [4:0] result
);

always @(*) begin
    case (op)
        2'b00: result = a + b;
        2'b01: result = a - b;
        2'b10: result = a & b;
        2'b11: result = a | b;
        default: result = 5'd0;
    endcase
end

endmodule