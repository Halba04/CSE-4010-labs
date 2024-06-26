// Class: CSCI 401 Computer Architecture
// Term: FALL2023
// Name(s): Hector Alba

module incrementer (
    input wire [31:0] pcin,        // Input of incrementer
    output wire [31:0] pcout       // Output of incrementer
    );
    assign pcout = pcin + 1;      // Increment PC by 1, *See Comments above
endmodule  // incrementer
