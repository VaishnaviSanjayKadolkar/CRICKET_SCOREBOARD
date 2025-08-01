# 🏏 Digital Cricket Score Keeper using Verilog

This project implements a **digital cricket scoreboard** using Verilog. It tracks and updates the score, over, ball, and wicket count of a cricket match based on real-time inputs.

---

## 👥 Team Members

- Swayam (02FE22BEC113)  
- Tanisha Fagare (02FE22BEC114)  
- Vaishnavi Sanjay Kadolkar (02FE22BEC115)  
- Vasanthkumar (02FE22BEC116)

**Guide:** Prof. Pooja Mahajan  
**Institution:** KLE Technological University  
**Department:** Electronics and Communication Engineering  
**Semester:** V, 2023–2024

---

## 🎯 Objectives

- Track runs, balls, overs, and wickets accurately.
- Handle **special inputs** such as wides and no-balls.
- Reset ball count after 6 legal deliveries.
- Manage overs and generate signals based on score logic.

---

## 💡 Problem Statement

Manual scorekeeping in cricket is prone to human error and inefficiency. This project proposes a **Verilog-based digital scoreboard** that can automate the scoring process based on simple binary inputs representing match events.

---

## 🔧 Module Overview

### ⚙️ Inputs

- `runs [3:0]` – Encodes the type of event (0 to 6 runs, wide, no-ball, or wicket)
- `clk` – System clock
- `reset` – Resets all counters

### 📤 Outputs

- `score [6:0]` – Current match score
- `over [2:0]` – Overs completed
- `ball [2:0]` – Balls in current over
- `wicket [3:0]` – Number of wickets fallen

---

## 🗂️ Files

| File                | Description                      |
|---------------------|----------------------------------|
| `keepscore.v`       | Main Verilog module              |
| `keepscore_tb.v`    | Testbench for simulation         |
| `DSD_CRICKETSCOREBOARD_REPORT.docx` | Project documentation |

---

## 🧪 Simulation Overview

- **Tool Used:** ModelSim / Vivado / GTKWave
- **Testing:** Covered wide range of events (1–6 runs, wide, no-ball, wicket)
- **Reset Condition:** Resets the entire scoreboard state
- **Result:** Accurate over-tracking and run calculation with visual waveforms

### 🔍 Sample Waveform Output  
<img src="images/waveform_output.png" width="500"/>

---

## 📝 Verilog Code Summary

The `keepscore.v` module:
- Uses a `casex` block to interpret the `runs` input.
- Increments score and ball count accordingly.
- Resets ball count after 6 deliveries (i.e., `ball == 3'b110`)
- Increments wicket count on `3'b111`
- Handles extra runs for wide and no-ball

---

## 🚀 Applications

- Digital scoreboard for real cricket matches  
- Educational simulators for cricket training  
- Embedded sports display systems  
- FPGA-based sports management tools

---

## 🔮 Future Scope

- Add GUI interface or 7-segment display output  
- Interface with FPGA hardware for physical implementation  
- Include DLS-based score recalculation (for rain-affected matches)  
- Audio/visual alerts for boundary, over, and wicket events

---

## ✅ Conclusion

The Cricket Score Keeper built using Verilog is a practical demonstration of digital system design principles. It automates match scoring and ensures accuracy, making it a strong candidate for FPGA-based embedded applications in sports technology.

---

## 🧾 License

This project is licensed under the [MIT License](LICENSE).
