// ex44.v - ALU with flags (carry, zero, negative)
// WHAT TO DO: Generate status flags that indicate properties of the ALU result.
// Carry (overflow), zero, and negative flags help detect special conditions.
module ex44(
    input  [4:0] a,
    input  [4:0] b,
    input  [1:0] op,
    output reg [4:0] result,
    output reg carry,
    output reg zero,
    output reg negative
);

    reg [5:0] temp;

    always @(*) begin
        carry = 1'b0;

        case (op)
            2'b00: begin
                temp   = a + b;
                result = temp[4:0];
                carry  = temp[5];
            end
            2'b01: begin
                temp   = a - b;
                result = temp[4:0];
                carry  = temp[5];
            end
            2'b10: begin
                result = a & b;
            end
            2'b11: begin
                result = a | b;
            end
            default: begin
                result = 5'd0;
            end
        endcase

        zero     = (result == 5'd0);
        negative = result[4];
    end

endmodule