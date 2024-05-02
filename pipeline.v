// Class: CSCI 401 Computer Architecture
// Term: FALL2023
// Name(s): Hector Alba

`include "ifetch.v"

module pipeline ();

    wire [31:0] IF_ID_instr, IF_ID_npc;
    reg EX_MEM_PCSrc;
    reg [31:0] EX_MEM_NPC;

     I_FETCH I_FETCH1(.IF_ID_instr(IF_ID_instr),
                      .IF_ID_npc(IF_ID_npc), 
                      .EX_MEM_PCSrc(EX_MEM_PCSrc),
                      .EX_MEM_NPC(EX_MEM_NPC) );
    initial begin
    EX_MEM_PCSrc <= 0;
    EX_MEM_NPC <= 0;
    end

// Here you will add I_DECODE. You will have to declare wires to make 
// the connections between the I_FETCH and I_DECODE modules

endmodule //pipeline