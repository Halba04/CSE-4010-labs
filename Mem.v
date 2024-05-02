// Class: CSCI 401 Computer Architecture
// Term: Fall2023
//Name: Hector Alba

module memory (
    output reg [31:0] data,     //Output of Instruction Memory
    input wire [31:0] addr      //Input of Instruction Memory 
    );

// Register Declarations
    reg [31:0] MEM[0:127];  // 128 words of 32-bit memory 

// Initilizer Registers
    initial begin
    MEM[0] <= 'hA00000AA;
    MEM[1] <= 'hA0000011;
    MEM[2] <= 'hA0000022;
    MEM[3] <= 'hA0000033;
    MEM[4] <= 'hA0000044;
    MEM[5] <= 'hA0000055;
    MEM[6] <= 'hA0000066;
    MEM[7] <= 'hA0000077;
    MEM[8] <= 'hA0000088;
    MEM[9] <= 'hA0000099;
    end

    always @ (addr) data <= MEM[addr];
endmodule //memory 