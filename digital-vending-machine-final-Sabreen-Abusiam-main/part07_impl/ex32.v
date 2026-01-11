// ex32.v - Payment validator FSM
// WHAT TO DO: Create a clocked circuit that continuously checks if payment is sufficient.
// This validates that the customer has inserted enough money before allowing a purchase.
module ex32(
    input clk,
    input rst,
    input [4:0] paid,
    input [3:0] price,
    output reg valid
);

always @(posedge clk) begin
    if (rst)
        valid <= 1'b0;
    else begin
        if (paid >= price)
            valid <= 1'b1;
        else
            valid <= 1'b0;
    end
end

endmodule
