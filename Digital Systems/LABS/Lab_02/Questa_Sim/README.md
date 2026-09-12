# QuestaSim Simulation Work

This directory contains the QuestaSim workspace files, binary waveform logs (`.wlf`), and macro automation scripts (`.do`) for **Lab 02: Ripple Carry Adder**.

---

##  Files Overview

* **`work/`**: Auto-generated target compilation library.
* **`*.mpf`**: QuestaSim main project file.
* **`*.cr.mti`**: Workspace state and compiler configuration file.
* **`*.wlf`**: Binary waveform log file.
* **`*.do`**: Macro script to automate compilation, loading testbenches, and plotting waveforms.

---

##  How to Run the Simulation locally

Since GitHub only hosts source files and cannot execute code directly in the browser, follow these steps to run the simulation on your machine:

1. **Clone/Download Repository:**
   * Download or clone this GitHub repository to your local computer.

2. **Open QuestaSim:**
   * Launch **QuestaSim** on your local machine.

3. **Set Directory & Execute Script:**
   * In QuestaSim, set the working directory to the `Questa_Sim/` folder.
   * Enter the following command in the QuestaSim command console:
     ```bash
     do wave_3bit.do
     ```
   * The script will automatically compile the design, load the testbench, and launch the signal waveforms.
