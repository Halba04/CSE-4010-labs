`timescale 1 ns / 1 ns
`include "fullSubtractor.v"

module fullSubtractor_tb;

    reg A, B, BIn;       // Inputs
    wire Difference, Bout; // Outputs

    fullSubtractor uut(A, B, BIn, Difference, Bout); // Instantiate the fullSubtractor module

    initial begin
        $dumpfile("fullSubtractor_tb.vcd"); // Create a VCD waveform file
        $dumpvars(0, fullSubtractor_tb);

        // Test cases with different inputs and delays
        {A, B, BIn} = 3'b000; #20;
        {A, B, BIn} = 3'b001; #20;
        {A, B, BIn} = 3'b010; #20;
        {A, B, BIn} = 3'b011; #20;
        {A, B, BIn} = 3'b100; #20;
        {A, B, BIn} = 3'b101; #20;
        {A, B, BIn} = 3'b110; #20;
        {A, B, BIn} = 3'b111; #20;

        $display("Finished Hector!"); // Display a message when all test cases are finished

        // Finish the simulation
        $finish;
    end

endmodule
