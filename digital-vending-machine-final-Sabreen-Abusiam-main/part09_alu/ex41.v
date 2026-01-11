// ex41.v - Simple 2-operation ALU (ADD/SUB)
// WHAT TO DO: Build your first Arithmetic Logic Unit that performs ADD or SUB based on opcode.
// ALUs are the computational heart of processors - this is a simplified version.
module ex41(
    input  [4:0] a,
    input  [4:0] b,
    input        op,
    output [4:0] result
);

    wire [4:0] b_mod;
    wire [5:0] sum_ext;

    assign b_mod   = op ? ~b : b;
    assign sum_ext = {1'b0, a} + {1'b0, b_mod} + op;
    assign result  = sum_ext[4:0];

endmodule