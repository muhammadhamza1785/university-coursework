# Lab 02: Ripple Carry Adder

This directory contains the schematic block diagrams, simulation waveforms, and timing analyses for **Lab 02 (Ripple Carry Adder)**. Below is a detailed technical explanation of each design aspect and verified output.

---

## 1. 1-Bit Full Adder Block Diagram

### Technical Description:
* **Circuit Architecture:** Represents the foundational single-bit full adder hardware block.
* **Logic Equations:**
  * **Sum Output ($Sum$):** Implemented using a 3-input XOR logic operation: $Sum = a \oplus b \oplus C_{in}$
  * **Carry Output ($C_{out}$):** Implemented using an AND-OR logic network: $C_{out} = (a \cdot b) + (b \cdot C_{in}) + (a \cdot C_{in})$
* **Input/Output Ports:** Consists of three single-bit inputs ($a, b, C_{in}$) and two single-bit outputs ($Sum, C_{out}$).

---

## 2. 1-Bit Full Adder Simulation Waveform

### Technical Description:
* **Simulation Environment:** QuestaSim RTL Testbench.
* **Functional Verification:**
  * Displays the response of the 1-bit full adder across all possible 3-bit binary input combinations ($000$ to $111$).
  * Confirms correct arithmetic operation:
    * Single high input results in $Sum = 1, C_{out} = 0$.
    * Any two high inputs result in $Sum = 0, C_{out} = 1$.
    * All three high inputs result in $Sum = 1, C_{out} = 1$.

---

## 3. 3-Bit Ripple Carry Adder Architecture

### Technical Description:
* **Cascaded Structure:** Constructed by instantiating and cascading three 1-bit Full Adder modules in series.
* **Carry Propagation:** The carry output ($C_1$) of the first stage feeds directly into the carry input of the second stage, and $C_2$ ripples into the third stage.
* **Data Buses:** Processes two 3-bit input buses, $A[2:0]$ ($A_0, A_1, A_2$) and $B[2:0]$ ($B_0, B_1, B_2$), alongside an initial carry-in ($C_0$), producing a 3-bit sum bus $S[2:0]$ and a final carry-out bit ($C_3$).

---

## 4. 3-Bit Ripple Carry Adder Simulation Waveform

### Technical Description:
* **Simulation Environment:** QuestaSim Waveform Viewer.
* **Multi-Bit Verification:**
  * Demonstrates dynamic addition across multiple test vectors:
    * $A=001, B=001 \implies Sum=010, Cout=0$
    * $A=010, B=011 \implies Sum=101, Cout=0$
    * $A=111, B=001, Cin=1 \implies Sum=001, Cout=1$
* Validates correct multi-bit bus transitions and ripple carry propagation logic under functional test cases.

---

## 5. WaveDrom Timing Diagram & Signal Analysis

### Technical Description:
* **Documentation Tool:** WaveDrom Timing Editor.
* **Signal Protocol:**
  * **$A[2:0]$ & $B[2:0]$ Buses:** Illustrates precise time-sliced vector changes with clear hex/binary values ($001, 010, 111$).
  * **$C_{in}$ & $C_{out}$ Signals:** Highlights control line transitions and final output stability intervals.
  * Provides a formal visual representation suitable for timing analysis and engineering documentation.
