module full_adder (
    input  logic A,
    input  logic B,
    input  logic cin,
    output logic sum,
    output logic cout
);

wire a1, a2, a3;

xor(sum, A, B, cin);
and(a1, A, B);
and(a2, A, cin);
and(a3, B, cin);
or(cout, a1, a2, a3);

endmodule

module Ripple_Carry_Adder_3bit (
    input  logic [2:0] A,
    input  logic [2:0] B,
    input  logic cin,
    output logic [2:0] sum,
    output logic cout
);
wire c1, c2;
full_adder FA0 (
    .A(A[0]),
    .B(B[0]),
    .cin(cin),
    .sum(sum[0]),
    .cout(c1)
);
full_adder FA1 (
    .A(A[1]),
    .B(B[1]),
    .cin(c1),
    .sum(sum[1]),
    .cout(c2)
);
full_adder FA2 (
    .A(A[2]),
    .B(B[2]),
    .cin(c2),
    .sum(sum[2]),
    .cout(cout)
);
endmodule