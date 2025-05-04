//=============================================================================
// Title       : Testbench for CMOS NOT Gate
// File        : tb_cmosnot.v
// Description : Simulates the behavior of the CMOS NOT gate by toggling input x
//               and observing the output f.
// Author      : [Your Name]
// Created     : [Date]
// Dependencies: cmosnot.v
//
// Expected behavior:
//   x = 0 => f = 1
//   x = 1 => f = 0
//
//=============================================================================

module tb_cmosnot;

  // Input and output declarations
  reg x;          // Input to NOT gate
  wire f;         // Output from NOT gate

  // Instantiate the Device Under Test (DUT)
  cmosnot uut (
    .x(x),
    .f(f)
  );

  // Test sequence
  initial begin
    $display("Time\t x\t f");
    $monitor("%0t\t %b\t %b", $time, x, f);

    // Apply stimulus
    x = 0; #10;    // Expect f = 1
    x = 1; #10;    // Expect f = 0
    x = 0; #10;    // Expect f = 1
    x = 1; #10;    // Expect f = 0

    $finish;       // End simulation
  end

endmodule
