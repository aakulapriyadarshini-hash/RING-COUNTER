# 4-Bit Ring Counter using Verilog

## Overview

This project implements a **4-bit Ring Counter** using Verilog HDL.

A Ring Counter is a circular shift register in which only one flip-flop is set to HIGH (`1`) at a time. On every clock pulse, the HIGH bit moves to the next position, creating a repeating sequence.

---

## Features

- 4-bit ring counter
- Asynchronous reset
- One-hot output sequence
- Clock-driven operation
- Simulation-ready testbench
- GTKWave waveform support

---

## Block Diagram

```
      +----------------------+
CLK -->|                      |
RST -->|   4-Bit Ring Counter |--> Q[3:0]
      +----------------------+
```

---

## Inputs

| Signal | Description |
|--------|-------------|
| clk | System clock |
| rst | Asynchronous reset |

---

## Outputs

| Signal | Description |
|--------|-------------|
| q[3:0] | 4-bit ring counter output |

---

## Output Sequence

| Clock Cycle | Output |
|-------------|--------|
| Reset | 0001 |
| 1 | 0010 |
| 2 | 0100 |
| 3 | 1000 |
| 4 | 0001 |
| ... | Repeats |

---

## Project Files

- `ring_counter.v` – Verilog design
- `ring_counter_tb.v` – Testbench
- `ring_counter.vcd` – Waveform file
- `simulation.png` – Waveform screenshot
- `README.md` – Documentation

---

## How to Simulate

### Compile

```bash
iverilog -o ring ring_counter.v ring_counter_tb.v
```

### Run

```bash
vvp ring
```

### View Waveform

```bash
gtkwave ring_counter.vcd
```

---

## Expected Behavior

- After reset, the output is `0001`.
- On each clock pulse, the `1` shifts left:
  - `0001`
  - `0010`
  - `0100`
  - `1000`
  - `0001` (repeats)

---

## Applications

- Sequence generation
- LED chasers
- Timing circuits
- Digital control systems
- FPGA learning projects

---

## Future Improvements

- Configurable counter width
- Enable signal
- Bidirectional shifting
- Johnson counter implementation

---

## License

MIT License

---

## Author

Your Name