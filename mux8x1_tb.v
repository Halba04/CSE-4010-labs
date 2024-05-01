// Set the timescale for simulation to 1 nanosecond/1 nanosecond
`timescale 1ns/1ns

// Include the Verilog module for the 8x1 multiplexer
`include "mux8x1.v"

// Define the testbench module
module mux8x1_tb;

  // Declare reg signals for inputs A, B, C, D, E, F, G, H, and selection signals Sel0, Sel1, Sel2
  reg A, B, C, D, E, F, G, H, Sel0, Sel1, Sel2;

  // Declare wire signal for the output O
  wire O;

  // Instantiate the mux_8x1 module with named connections
  mux_8x1 uut(
    .a(A),
    .b(B),
    .c(C),
    .d(D),
    .e(E),
    .f(F),
    .g(G),
    .h(H),
    .sel0(Sel0),
    .sel1(Sel1),
    .sel2(Sel2),
    .out(O)
  );

  // Initial block: Start of simulation
  initial begin
    // Specify VCD file for waveform dumping
    $dumpfile("mux8x1_tb.vcd");

    // Dump variables for waveform tracing
    $dumpvars(0, mux8x1_tb);

    // Initialize input signals and wait for 10 time units
    A = 0; B = 1; C = 0; D = 1; E = 0; F = 1; G = 0; H = 1;
    Sel0 = 0; Sel1 = 0; Sel2 = 0;
    #10; // Wait for 10 time units

    // Change selection signals and wait for 10 time units between each change
    Sel0 = 1; Sel1 = 0; Sel2 = 0;
    #10;

    Sel0 = 0; Sel1 = 1; Sel2 = 0;
    #10;

    Sel0 = 1; Sel1 = 1; Sel2 = 0;
    #10;

    Sel0 = 0; Sel1 = 0; Sel2 = 1;
    #10;

    Sel0 = 1; Sel1 = 0; Sel2 = 1;
    #10;

    Sel0 = 0; Sel1 = 1; Sel2 = 1;
    #10;

    Sel0 = 1; Sel1 = 1; Sel2 = 1;
    #10;

    // Display completion message
    $display("Complete!");

    // Finish the simulation
    $finish;
  end

endmodule
