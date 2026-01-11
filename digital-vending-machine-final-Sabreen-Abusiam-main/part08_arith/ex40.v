// ex40.v - Combined Adder/Subtractor unit
// WHAT TO DO: Create one circuit that can both add and subtract based on a control signal.
// This is more efficient than having separate adder and subtractor circuits.
module ex40(
    input  [4:0] a,
    input  [4:0] b,
    input        sub,
    output [4:0] result,
    output       carry_borrow
);

    wire [4:0] b_mod;
    wire [5:0] sum_ext;

    assign b_mod = sub ? ~b : b;
    assign sum_ext = {1'b0, a} + {1'b0, b_mod} + sub;

    assign result = sum_ext[4:0];
    assign carry_borrow = sum_ext[5];

endmodule