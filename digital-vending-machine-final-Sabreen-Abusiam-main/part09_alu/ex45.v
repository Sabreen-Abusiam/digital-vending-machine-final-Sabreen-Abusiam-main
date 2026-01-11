// ex45.v - Complete ALU with all operations
// WHAT TO DO: Build a full-featured ALU with 8 operations including shifts and XOR.
// This is similar to what you'd find in a real processor's arithmetic unit.
module ex45(
    input  [4:0] a,
    input  [4:0] b,
    input  [2:0] op,
    output reg [4:0] result,
    output reg carry,
    output reg zero
);

    reg [5:0] tmp;

    always @(*) begin
        carry = 1'b0;

        case (op)
            3'b000: begin
                tmp    = a + b;
                result = tmp[4:0];
                carry  = tmp[5];
            end
            3'b001: begin
                tmp    = a - b;
                result = tmp[4:0];
            end
            3'b010: result = a & b;
            3'b011: result = a | b;
            3'b100: result = a ^ b;
            3'b101: result = ~a;
            3'b110: result = a << 1;
            3'b111: result = a >> 1;
            default: result = 5'd0;
        endcase

        zero = (result == 5'd0);
    end

endmodule