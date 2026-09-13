# Source Code (RTL Design Modules)

This directory contains the SystemVerilog hardware design implementation for **Lab 02: Ripple Carry Adder**. It includes both gate-level primitives and structural dataflow implementations of a 1-Bit Full Adder, as well as the top-level 3-Bit Ripple Carry Adder module.

---

##  File & Module Descriptions

### 1. `full_adder.sv` (1-Bit Full Adder)

The 1-bit full adder computes the arithmetic sum and carry-out of three 1-bit binary inputs ($A$, $B$, and $C_{in}$). Two implementation approaches are included in the source code:

#### **Implementation A: Gate-Level Primitives**
* **Logic Modeling:** Built using built-in Verilog gate primitives (`xor`, `and`, `or`).
* **Equations:**
  * $\text{Sum} = A \oplus B \oplus C_{in}$ via 3-input `xor` primitive.
  * $\text{Cout} = (A \cdot B) + (A \cdot C_{in}) + (B \cdot C_{in})$ using 3 `and` gates and 1 `or` gate.
* **Ports:**
  * Inputs: `A`, `B`, `cin`
  * Outputs: `sum`, `cout`

#### **Implementation B: Continuous Dataflow Assignments**
* **Logic Modeling:** Uses explicit boolean expressions with `assign` statements and bitwise operators (`^`, `&`, `|`).
* **Internal Wires:** Employs intermediate logic signals (`w1`, `w2`, `w3`) to store pairwise AND operations before OR-ing them together for the carry output.

---

### 2. `Ripple_Carry_Adder_3bit.sv` (Top-Level 3-Bit Adder)

#### **Structural Cascaded Architecture:**
* **Module Hierarchy:** Instantiates three 1-bit full adder instances (`FA0`, `FA1`, `FA2`) connected in series.
* **Carry Ripple Chain:**
  * `FA0` adds LSBs `A[0]` and `B[0]` with initial `cin`, producing `sum[0]` and internal carry `c1`.
  * `FA1` adds `A[1]` and `B[1]` with `c1`, producing `sum[1]` and internal carry `c2`.
  * `FA2` adds MSBs `A[2]` and `B[2]` with `c2`, producing `sum[2]` and final `cout`.
* **Bus Signals:**
  * `input logic [2:0] A, B` (3-bit input vector operands)
  * `input logic cin` (1-bit initial carry input)
  * `output logic [2:0] sum` (3-bit arithmetic sum result vector)
  * `output logic cout` (1-bit final carry output overflow)

---

##  Synthesis & Verification Notes

* **Port Mapping:** Named port connections (e.g., `.A(A[0])`) are used for modular clarity and to prevent incorrect wire bindings.
* **Synthesizability:** Both gate-level primitives and continuous dataflow assignments are 100% synthesizable for FPGA deployment (Xilinx Vivado).
