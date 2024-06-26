// Class: CSCI 401 Computer Architecture
// Term: FALL2023
// Name(s): Hector Alba

module if_id (
    output reg [31:0] instrout,         //Output of IF/ID Instruction Register
                        npcout,         //Output of IF/ID NPC Register
    input wire [31:0]    instr,         //Input  of IF/ID Instruction Register
                           npc          //Input of IF/ID NPC Register
    );
    initial begin
        instrout <= 0;
        npcout   <= 0;
    end
    always @* begin
        #1 instrout <= instr;
             npcout <=   npc;
    end
endmodule // if_id