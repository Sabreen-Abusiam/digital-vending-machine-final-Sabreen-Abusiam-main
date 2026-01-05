// ex01.v - Basic Module Structure and Simple Logic
// This is your first real Verilog module with inputs and outputs

module ex01(
  input a,    // Input: signal that comes INTO this module from outside
              // 'input' means this signal comes from outside
              // Each input is 1 bit (can be 0 or 1)
  input b,    // Another input signal
  output y    // Output: signal that goes OUT of this module to the outside world
              // 'output' means this signal goes to outside
              // Output is also 1 bit
);

  // LOGIC IMPLEMENTATION
  // 'assign' statement creates COMBINATIONAL logic (no memory, no clock needed)
  // This means: whenever 'a' or 'b' changes, 'y' updates immediately
  // & is the AND operator
  assign y = a & b;  // y will be 1 only when BOTH a AND b are 1
                     // This creates an AND gate in hardware
  
  // Truth Table:
  // a | b | y
  // 0 | 0 | 0
  // 0 | 1 | 0
  // 1 | 0 | 0
  // 1 | 1 | 1

endmodule  // Always end your module with 'endmodule'

//done
