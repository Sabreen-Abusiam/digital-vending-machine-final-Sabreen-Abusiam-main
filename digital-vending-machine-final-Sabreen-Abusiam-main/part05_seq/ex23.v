// ex23.v - D FF with enable
// WHAT TO DO: Add an enable signal that controls when the flip-flop updates its value.
// Enable lets you pause storing new values - useful for controlling when coins are counted.
module ex23(
    input d,
    input clk,
    input en,
    output reg q
);

initial q = 1'b0;

always @(posedge clk) begin
    if (en)
        q <= d;
    else
        q <= q;
end
endmodule

