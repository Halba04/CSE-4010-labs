module halfSubtractor(op1, op2, difference, borrow);

    input op1, op2;         // Two input wires
    output difference, borrow; // Two output wires

    assign difference = op1 ^ op2;   // XOR operation for difference
    assign borrow = (~op1) & op2;    // AND operation for borrow

endmodule






module fullSubtractor(A, B, BIn, Difference, Bout);

    input A, B, BIn;       // Three input wires
    output Difference, Bout; // Two output wires

    wire X1, X2, X3, Y1, Y2, Borrow1, Borrow2;

    halfSubtractor u1(A, B, X1, Borrow1); // First half-subtractor
    halfSubtractor u2(X1, BIn, X2, Borrow2); // Second half-subtractor

    assign X3 = X2;         // Intermediate wire for XOR result
    assign Y1 = Borrow1;    // Intermediate wire for borrow from the first half-subtractor
    assign Y2 = Borrow2;    // Intermediate wire for borrow from the second half-subtractor

    assign Difference = X3 ^ Y1;  // XOR operation for the final difference
    assign Bout = Y1 | Y2;        // OR operation for the final borrow-out

endmodule

