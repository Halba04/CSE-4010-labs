module wireTest (A,B,C);
//creating 3 wires A,B,C

    input A;
    output B;
    output C;
//shows A is output and B,C are input

    assign B = A;
    assign C = !A;
//we set B=A and C does not =A, so if A=1 then B=1 and C=0
endmodule
