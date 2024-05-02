 //Define a Verilog module named "halfAdder" with inputs op1 and op2 and outputs sum and carry.
module halfAdder(op1, op2, sum, carry);

    input op1, op2;
    output sum, carry;

    assign sum = op1 ^ op2; // ^ is the xor operator, We are calculating the sum of op1 and op2 using XOR
    assign carry = op1 & op2; // & is the and operator, Calculate the carry of op1 and op2

endmodule

// Define a Verilog module named "fullAdder" with inputs A, B, carryIn and outputs sum and carryOut.
module fullAdder(A, B, carryIn, sum, carryOut);

    //inputs and outputs
    input A, B, carryIn; // Connect A and B to op1 and op2, respectively, and get sum in c and carry in d.
    output sum, carryOut;

    //intermediary wires
    wire c, d, e;

    halfAdder u1(A, B, c, d);
    halfAdder u2(carryIn, c, e, f);

    assign carryOut = f | d; // Calculate carryOut as the OR of f and d.
    assign sum = e; // The sum equal to e

endmodule