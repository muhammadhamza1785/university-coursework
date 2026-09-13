# Xilinx Vivado Projects

This directory contains the Xilinx Vivado project files for **Lab 02: Ripple Carry Adder**. The lab is divided into two separate Vivado projects to isolate the single-bit logic implementation from the multi-bit cascaded adder design.

---

##  Projects Breakdown

### 1. `project_1/` (1-Bit Full Adder Project)
* **Main Project File:** `project_1.xpr`
* **Description:** Contains the Xilinx Vivado project setup for designing, synthesizing, and simulating the fundamental **1-Bit Full Adder** logic module.

### 2. `project_2_3bit/` (3-Bit Ripple Carry Adder Project)
* **Main Project File:** `project_2_3bit.xpr`
* **Description:** Contains the Xilinx Vivado project setup for the **3-Bit Ripple Carry Adder**, constructed by cascading three 1-bit full adder instances in series.

---

##  How to Open Projects in Vivado

1. Launch **Xilinx Vivado** on your computer.
2. Click on **Open Project** (or go to `File > Project > Open`).
3. Navigate to this directory and select the desired `.xpr` file:
   * Select `project_1/project_1.xpr` for the 1-bit design.
   * Select `project_2_3bit/project_2_3bit.xpr` for the 3-bit design.
4. Click **OK** to load the complete project workspace, source files, and constraints into Vivado.
