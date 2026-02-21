# Booth's Multiplier Analysis

🔷 Aim: Design and Comparative Analysis of 8-bit Booth Multiplier with Counter-Based and FSM-Based Control using Verilog HDL.

🔷 Comparison: 
| Feature           | Without FSM        | With FSM       |
| ----------------- | ------------------ | ---------------|
| Control           | Counter            | State Machine  |
| Readability       | Low                | High           |
| Modularity        | Poor               | Better         |
| Control Path      | Not separated      | Separated      |
| Datapath          | Mixed with control | Separated      | 
| Scalability       | Difficult          | Easy           |
| Debugging         | Hard               | Easy           |
| Reusability       | Low                | High           |
| Industry Standard | ❌ No              | ✔ Yes         |            

🔷 Structural Difference

Without FSM:

      Always Block
         ↓
      Counter decides everything
         ↓
      ADD / SUB / SHIFT mixed

With FSM:

      FSM (Control Path)
              ↓
      Generates control signals
              ↓
      Datapath executes operation

      
🔷 Hardware Performance:

| Parameter  | Without FSM | With FSM |
| ---------- | ----------- | -------- |
| LUTs Used  | ?           | ?        |
| Flip-Flops | ?           | ?        |
| Delay      | ?           | ?        |
| Power      | ?           | ?        |
| Slack      | ?           | ?        |
| Area       | ?           | ?        |

🔷 Output Waveform of Counter Controlled Base Booth's Multiplier:
<img width="831" height="401" alt="image" src="https://github.com/user-attachments/assets/4a1ce82f-f0ca-449a-a1af-e4a6fc621771" />




