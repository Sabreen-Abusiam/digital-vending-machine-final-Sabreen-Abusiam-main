// ex33.v - Product dispenser FSM
// WHAT TO DO: Build a controlled dispenser that only releases products when payment is confirmed.
// This prevents giving away free products - dispense only when both request AND payment are valid.
module ex33(

    input  clk,
    input  rst,
    input  dispense_req,
    input  payment_ok,
    output reg dispense
);

always @(posedge clk) begin
    if (rst)
        dispense <= 1'b0;
    else
        dispense <= dispense_req & payment_ok;
end

endmodule