// ex00_hello.v - "Hello Verilog!
// Your first Verilog program that prints a messagaae

module ex00_hello;
 initial
 begin
  // 'initial' block runs once when simulation starts
    // $display prints text to the console (like printf or print)
    $display("hello world");
    // Note: $finish removed - let testbench control simulation end
   end
  endmodule

