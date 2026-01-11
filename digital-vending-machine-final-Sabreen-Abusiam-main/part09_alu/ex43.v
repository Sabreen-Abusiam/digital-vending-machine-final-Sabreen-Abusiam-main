// ex43.v - ALU with comparison (CMP)
// WHAT TO DO: Add comparison operations that output flags for equal and greater-than.
// These flags are used for decision making in the vending machine controller.
module ex43(
    input  [4:0] a,
    input  [4:0] b,
    input  [1:0] op,
    output reg [4:0] result,
    output reg equal,
    output reg greater
);

always @(*) begin
    case (op)
        2'b00: result = a + b;
        2'b01: result = a - b;
        default: result = 5'd0;
    endcase

    equal   = (a == b);
    greater = (a > b);
end

endmodule