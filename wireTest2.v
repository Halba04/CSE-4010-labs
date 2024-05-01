// we are creating 4 wires W,X,Y,Z.
module wireTest2 (W, X, Y, Z);
//Now we have to created the input of W & X and outputs of Y and Z.

    input W;
    input X;
    output Y;
    output Z;

// Then we assign Y to the negation of X as requested and Z to the negation of Y.
    assign Y = ~X;

    assign Z = ~Y;

endmodule