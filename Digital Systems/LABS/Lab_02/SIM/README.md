# Simulation

This folder contains the SystemVerilog testbench files used to verify the Ripple Carry Adder design.

## Testbench Files

### 1. Full Adder Testbench

The Full Adder testbench is used to verify the functionality of a single Full Adder.

It provides the following inputs:

- `a1` - First input
- `b1` - Second input
- `c1` - Carry input

The testbench observes:

- `sum1` - Sum output
- `carry1` - Carry output

The testbench applies all possible combinations of the three inputs. Since there are three 1-bit inputs, a total of 8 combinations are tested.

Each test case is applied for 10 ns, allowing the outputs to be observed during simulation.

The simulation is stopped after all test cases are completed using the `$stop` statement.

### 2. 3-bit Ripple Carry Adder Testbench

The `Ripple_Carry_Adder_3bit_tb` testbench is used to verify the complete 3-bit Ripple Carry Adder.

The testbench provides:

- `A[2:0]` - First 3-bit input
- `B[2:0]` - Second 3-bit input
- `cin` - Carry input

It observes:

- `sum[2:0]` - 3-bit sum output
- `cout` - Final carry output

The Ripple Carry Adder is instantiated in the testbench as the **Design Under Test (DUT)**.

Different combinations of `A`, `B`, and `cin` are applied during the simulation. The testbench checks the behavior of the design for both cases:

- `cin = 0`
- `cin = 1`

Each test case is given a fixed simulation delay so that the corresponding output can be observed in the waveform.

The testbench is used to verify that the output follows:

```text
A + B + cin = {cout, sum}
