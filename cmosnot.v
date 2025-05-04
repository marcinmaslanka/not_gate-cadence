//=============================================================================
// Module      : cmosnot
// Description : CMOS implementation of a NOT gate using one NMOS and one PMOS.
// Inputs      :
//   - x : Input signal
// Outputs     :
//   - f : Output signal (logical NOT of x)
// Technology  : CMOS
// Notes       :
//   - When x = 1: NMOS conducts, PMOS off → f = 0
//   - When x = 0: PMOS conducts, NMOS off → f = 1
//=============================================================================

module cmosnot (x, f);

  // Input and Output Declarations
  input x;        // Input signal
  output f;       // Output signal

  // Power supply connections
  supply1 vdd;    // Logic high (power supply)
  supply0 gnd;    // Logic low (ground)

  // Transistor-level implementation
  nmos n1 (f, gnd, x);  // NMOS: Drain=f, Source=gnd, Gate=x
  pmos p1 (f, vdd, x);  // PMOS: Drain=f, Source=vdd, Gate=x

endmodule
