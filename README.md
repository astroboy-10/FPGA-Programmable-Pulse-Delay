FPGA-Programmable-Pulse-Delay - Arty S7-50 / XC7S50-CSGA324  for a delay circuit

FPGA Programmable Pulse Delay

Programmable digital pulse-delay generator implemented in VHDL for the Digilent Arty S7-50 FPGA development board.

Target Hardware

- Board: Digilent Arty S7-50
- FPGA: Xilinx Spartan-7 XC7S50
- Package: CSGA324
- HDL: VHDL
- Toolchain: Xilinx Vivado

Project Goals

The project aims to develop a programmable pulse-delay system
with:

- Deterministic digital delay
- Adjustable delay settings
- External trigger input
- Delayed pulse output
- Hardware verification using an oscilloscope
- Fine-resolution timing as a later development stage

Development Stages

1. Clock-cycle pulse delay
2. Programmable coarse delay
3. Simulation and verification
4. Hardware implementation
5. Fine-resolution delay
6. Multi-channel operation
7. Digital control interface
8. Timing calibration

Repository Structure

```text
rtl/          VHDL design sources
sim/          VHDL testbenches
constraints/  FPGA pin/timing constraints
docs/         Design documentation
hardware/     Hardware notes and measurements
vivado/       Vivado project information
