//The first line indicates the clock of our test. 
//The second line tells us that we must include the previous file, which is the one we created.
`timescale 1ns/1ns
`include "NORusingNAND.v"
//We need to create our Testbench and we use this by creating the module. We know it is a testbench since it has no ().
module NORusingNAND_tb;
//We want to test using 3 wires so we have the wires below. The reg means they are inputs and wire means it is an output.
reg A;
reg B;
wire Q;
//We want to call the instance using the Nor and we want to give a name to it which in this case we used uut. We also name our 3 wires.
NORusingNAND uut(A, B, Q);
//Set up our clock and where we want to write the test we want to run.
initial begin
//We use this to creat the file where we want to our outputs after the test is ran.
    $dumpfile("NORusingNAND_tb.vcd");
    $dumpvars(0, NORusingNAND_tb);
//We will start our test here and list what we want. The #20 means to wait 20ns before next test is ran.
    A = 0; B = 0; #20
    A = 0; B = 1; #20
    A = 1; B = 0; #20
    A = 1; B = 1; #20
//This is just and indicator to let us know that our test works.
    $display("Complete!");

end
//Means that we are ending our test.
endmodule
//All modules must have an end.