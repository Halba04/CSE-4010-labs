// We set the timescale as 1ns/1ns and inculde the module fullAdder.v
`timescale 1 ns / 1 ns
`include "fullAdder.v"

// Define the Verilog testbench module named "fullAdder_tb"
module fullAdder_tb;

// Declare registers and wires for testbench signals
reg A, B, carryIn; //Inputs
wire sum, carryOut; //Outputs

fullAdder uut(A, B, carryIn, sum, carryOut);

initial begin

    $dumpfile("fullAdder_tb.vcd");
    $dumpvars(0, fullAdder_tb);

    // Test cases with different input values and delays
    // We se the time to 20
    {A, B, carryIn} = 3'd0; #20; 
    {A, B, carryIn} = 3'd1; #20; 
    {A, B, carryIn} = 3'd2; #20; 
    {A, B, carryIn} = 3'd3; #20; 
    {A, B, carryIn} = 3'd4; #20; 
    {A, B, carryIn} = 3'd5; #20; 
    {A, B, carryIn} = 3'd6; #20; 
    {A, B, carryIn} = 3'd7; #20; 
    //This is the message that will show when all test cases are finished
    $display("Finished additions!");  

end

//End the testbench module.
endmodule