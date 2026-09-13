module full_adder_tb;

    // 1. Declare signals to connect to the Design
    // These act like "virtual wires" on your testbench table
    logic a1;
    logic b1;
    logic c1;
    logic sum1;
    logic carry1;

    // 2. Instantiate the Design (Connect the Design to the Testbench)
    // "UUT" stands for Unit Under Test
    full_adder UUT (
        .a(a1),
        .b(b1),
        .c(c1),
        .sum(sum1),
        .carry(carry1)
    );

    // 3. Generate the Inputs (The Stimulus)
    initial begin
        // Case 1: All zeros
        a1 = 0; b1 = 0; c1 = 0;
        #10; // Wait 10ns

        // Case 2: A is 0, B is 0, C is 1
        a1 = 0; b1 = 0; c1 = 1;
        #10;

        // Case 3: A is 0, B is 1, C is 0
        a1 = 0; b1 = 1; c1 = 0;
        #10;

        // Case 4: A is 0, B is 1, C is 1 (Sum should be 0, Carry 1)
        a1 = 0; b1 = 1; c1 = 1;
        #10;

        // Case 5: A is 1, B is 0, C is 0
        a1 = 1; b1 = 0; c1 = 0;
        #10;

        // Case 6: A is 1, B is 0, C is 1
        a1 = 1; b1 = 0; c1 = 1;
        #10;

        // Case 7: A is 1, B is 1, C is 0
        a1 = 1; b1 = 1; c1 = 0;
        #10;

        // Case 8: All ones (Sum should be 1, Carry 1)
        a1 = 1; b1 = 1; c1 = 1;
        #10;

        $stop; // End the simulation
    end

endmodule