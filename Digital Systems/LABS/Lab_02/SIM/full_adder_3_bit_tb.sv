module Ripple_Carry_Adder_3bit_tb;

logic [2:0] A;
logic [2:0] B;
logic cin;
logic [2:0] sum;
logic cout;

Ripple_Carry_Adder_3bit DUT (
    .A(A),
    .B(B),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
    A=3'b000; B=3'b000; cin=0; #10;
    A=3'b001; B=3'b010; cin=0; #10;
    A=3'b011; B=3'b001; cin=0; #10;
    A=3'b101; B=3'b010; cin=0; #10;
    A=3'b111; B=3'b001; cin=0; #10;

    A=3'b000; B=3'b000; cin=1; #10;
    A=3'b010; B=3'b011; cin=1; #10;
    A=3'b100; B=3'b101; cin=1; #10;
    A=3'b111; B=3'b111; cin=1; #10;

    $stop;
end

endmodule