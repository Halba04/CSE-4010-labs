// the first two lines we give a time of 1ns and we make sure to include the module created.
`timescale 1ns / 1ns
`include "wireTest2.v"


module wireTest2_tb;

reg W, X;
wire Y, Z;

// we are naming the write test as utt.
wireTest2 utt(W, X, Y, Z);
   

initial begin
// We use dumbfile to created a file for the output.
    $dumpfile("wireTest2_tb.vcd");
    $dumpvars(0, wireTest2_tb);


// The following we do using to the testbench given in lab of a,b,c,d & e.
// the #20 makes us wait 20 ns until the next wire is ran.
  W = 0;
  X = 0;
  #20;

  W = 1;
  #20;

  X = 1;
  #20;

  W = 0;
  #20;

  X = 0;
  #20;

    $display("Good Job Test Completed");
// the display is what will be shown after the codes are ran and compiled.
end

endmodule