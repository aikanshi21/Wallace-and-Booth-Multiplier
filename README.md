# Wallace-and-Booth-Multiplier
📌 Project Title:
Design and Implementation of 8-bit Signed Booth and Wallace Tree Multipliers using Verilog HDL on FPGA

1. Functional Specifications

   | Parameter                 | Specification                          |
   | ------------------------- | -------------------------------------- |
   | Input Type                | Signed Binary Numbers                  |
   | Input Bit-width           | 8-bit Multiplicand & Multiplier        |
   | Output Bit-width          | 16-bit Product                         |
   | Multiplication Algorithms | 1. Radix-2 Booth Algorithm             |
   |                           | 2. Wallace Tree Multiplier             |
   | Number System             | two’s Complement                       |
   | Algorithm Selection       | Mode Select Input                      |
   | Operation Type            | Signed Multiplication                  |
   | Execution Type            | Sequential (Booth), Parallel (Wallace) |

2. Hardware Specifications

   | Component         | Description                  |
   | ----------------- | ---------------------------- |
   | Target Platform   | FPGA                         |
   | FPGA Tool         | Xilinx Vivado                |
   | HDL Used          | Verilog                      |
   | Clock Frequency   | 100 MHz (Typical FPGA Clock) |
   | Arithmetic Unit   | Adder/Subtractor             |
   | Shifter           | Arithmetic Right Shifter     |
   | Compressors Used  | Half Adder & Full Adder      |
   | Wallace Reduction | CSA based                    |
   | Controller        | Finite State Machine (FSM)   |
   | Registers Used    | A, Q, Q-1                    |
   | Counter Size      | 4-bit                        |

3. Booth's Multiplier Specifications

   | Parameter            | Value                         |
   | -------------------- | ----------------------------- |
   | Algorithm Type       | Radix-2 Booth                 |
   | Iterations Required  | 8 Clock Cycles                |
   | Control Bits Used    | Q₀ and Q₋₁                    |
   | Operations Supported | Add / Subtract / No Operation |
   | Shift Type           | Arithmetic Right Shift        |
   | Latency              | n clock cycles                |
   | Hardware Utilization | Low                           |

4. Wallace Tree Multiplier Specifications

   | Parameter                  | Value                          |
   | -------------------------- | ------------------------------ |
   | Partial Product Generation | AND Gates                      |
   | Reduction Technique        | Tree Compression               |
   | Compressors Used           | Full Adders (3:2), Half Adders |
   | Addition Method            | Parallel                       |
   | Final Stage Adder          | Ripple Carry Adder             |
   | Latency                    | 1–2 Clock Cycles               |
   | Hardware Utilization       | High                           |
   | Speed                      | High                           |

5. Performance Specifications

   | Parameter      | Booth    | Wallace  |
   | -------------- | -------- | -------- |
   | Latency        | High     | Low      |
   | Speed          | Moderate | High     |
   | Area           | Low      | High     |
   | Power          | Low      | Moderate |
   | Parallelism    | No       | Yes      |
   | Signed Support | Yes      | Yes      |

7. Applications

   a) DSP Processors
   b) ALU Design
   c) Image Processing
   d) Digital Filters
   e) Cryptographic Units
   f) VLSI Arithmetic Units
