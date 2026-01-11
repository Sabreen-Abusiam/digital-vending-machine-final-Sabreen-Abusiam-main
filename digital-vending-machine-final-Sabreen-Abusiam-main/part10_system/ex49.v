// ex49.v - Inventory management with RAM
// WHAT TO DO: Use RAM to track product inventory, decrementing stock when items are dispensed.
// This adds realistic inventory management to your vending machine.
module ex49(
    input        clk,
    input        rst,
    input  [1:0] product,
    input        dispense,
    output reg [3:0] stock
);

always @(posedge clk) begin
    if (rst)
        stock <= 4'd10;
    else if (dispense && stock > 0)
        stock <= stock - 1;
end

endmodule