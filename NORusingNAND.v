//First we use the module to create our wires and we have to list the wires which are A,B Q. We also name the gate we are using which is NAND.
module NANDgate (A, B, Q);
//Then we need to state which is our input and which is our output based on the notes the NAND gate has two inputs and one output. So A & B are the inputs and Q is the output.
    input A, B;
    output Q;
//We have to assign Q as the NAND and by doing this we put the ! in front of (A&B) if we dont put the ! then it will be an AND gate.
    assign Q = !(A&B);
//We always need to have an end to the module.
endmodule

//Now we are creating the wires and we are stating that they will be NOR gates using NAND.
module NORusingNAND (A, B, Q);
//We have to state and list out our inputs and outputs.
    input A, B;
    output Q;
//We use wire to make intermediate wires and we have to use letters that we have no used yet so in our case it will be C,D,E,F. The intermediate wires are shown in the notes under the logic gates.
    wire C, D, E, F;
//In the logic gates section we can see the NOR gate circuit. In this example it shows 4 gates which is what we have and we need to name them so we use u1,u2,u3,u4.
//In the logic gates section we see u1 have 2 outputs both by A so we have (A,A,C) the C is an intermediate wire that we came up with and that is when line 17 is used. We do the same for u2-u4.
    NANDgate u1(A, A, C);
    NANDgate u2(B, B, D);
    NANDgate u3(C, D, E);
    NANDgate u4(E, E, F);
//We need to make the output the value that we want. So since F is the value we want we will make Q = F since we stated that Q is an output.
    assign Q = F;
//All modules must end.
endmodule