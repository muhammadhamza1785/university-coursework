module full_adder (
    input logic a,
    input logic b,
    input logic c,    // This is Cin
    output logic sum,
    output logic carry // This is Cout
);

    // Internal wires (optional, but good for clarity)
    logic w1, w2, w3;

    // --- SUM LOGIC (Calculates the Result) ---
    // Equation: Sum = A XOR B XOR C
    assign sum = a ^ b ^ c;     

    // --- CARRY LOGIC (Calculates the Overflow) ---
    // Equation: Carry = (A & B) | (A & C) | (B & C)
    // This matches the AND/OR diagram you uploaded
    assign w1 = a & b;
    assign w2 = a & c;
    assign w3 = b & c;
    assign carry = w1 | w2 | w3;

endmodule