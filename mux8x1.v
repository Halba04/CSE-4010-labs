// Define a module named mux_8x1
module mux_8x1(a, b, c, d, e, f, g, h, sel0, sel1, sel2, out);
    // Declare input ports: a, b, c, d, e, f, g, h, sel0, sel1, sel2
    input a, b, c, d, e, f, g, h, sel0, sel1, sel2;
    // Declare output port: out
    output out;

    // Use a ternary operator to implement an 8x1 multiplexer logic
    assign out = (sel2 & sel1 & sel0) ? h :        // If sel2=1, sel1=1, sel0=1, output is h
               (sel2 & sel1 & ~sel0) ? g :        // If sel2=1, sel1=1, sel0=0, output is g
               (sel2 & ~sel1 & sel0) ? f :        // If sel2=1, sel1=0, sel0=1, output is f
               (sel2 & ~sel1 & ~sel0) ? e :       // If sel2=1, sel1=0, sel0=0, output is e
               (~sel2 & sel1 & sel0) ? d :        // If sel2=0, sel1=1, sel0=1, output is d
               (~sel2 & sel1 & ~sel0) ? c :       // If sel2=0, sel1=1, sel0=0, output is c
               (~sel2 & ~sel1 & sel0) ? b :       // If sel2=0, sel1=0, sel0=1, output is b
               (~sel2 & ~sel1 & ~sel0) ? a :      // If sel2=0, sel1=0, sel0=0, output is a
               1'bz; // Default case, assign high impedance (z) if none of the conditions are met
endmodule
