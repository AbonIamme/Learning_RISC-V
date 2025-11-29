# Learning_RISC-V 🖥️📚

**Implementing RISC-V from the textbooks:**

[![P&H COD](https://img.shields.io/badge/P&H-Ch4%205-blue)](https://www.elsevier.com/books/computer-organization-and-design-risc-v-edition/patterson/978-0-12-820331-5)
[![Harris%20DDCA](https://img.shields.io/badge/Harris-Ch6%207-green)](https://www.elsevier.com/books/digital-design-and-computer-architecture-risc-v-edition/harris/978-0-12-820064-3)

Hands-on Verilog implementations of **every exercise** from:
1. *Computer Organization and Design RISC-V Edition* (Patterson & Hennessy) - **Ch4-5**
2. *Digital Design and Computer Architecture RISC-V Edition* (Harris & Harris) - **Ch6-7**

## 📖 Chapter-by-Chapter Progress

| Book | Chapter | Topic | Status | Verilog |
|------|---------|-------|--------|---------|
| DDCA | 1-3 | Digital Basics | ✅ Complete | [gates, FSMs](ch01-digital-basics/) |
| DDCA | 6 | Single-Cycle | ⏳ | [single-cycle](ch04-single-cycle/) |
| P&H | 4 | Single-Cycle RV32I | ⏳ | [single-cycle](ch04-single-cycle/) |
| DDCA | 7 | Pipelined | ⏳ | [pipeline](ch05-pipelined/) |
| P&H | 4-5 | 5-Stage Pipeline | ⏳ | [pipeline](ch05-pipelined/) |

## 🚀 Quick Start

1. Setup toolchain

./tools/setup.sh
2. Simulate book examples

cd ch01-digital-basics
make sim # Chapter 1-3 exercises

cd ../ch04-single-cycle
make sim # Single-cycle RV32I
spike pk test.elf # ISA reference

## 📁 Chapter Structure

**Each chapter folder contains:**
ch04-single-cycle/
├── rtl/ # Book exercise Verilog
├── tb/ # Testbenches
├── sw/ # riscv-tests
├── sim.vcd # Waveforms
├── report.md # Exercise solutions
└── Makefile

## 🛠️ Tools (All Open Source)

| Tool | Book Reference | Command |
|------|----------------|---------|
| `riscv64-unknown-elf-gcc` | Appendix C | Compile C → ELF |
| `Spike` | P&H Ch4 | `spike pk program.elf` |
| `Verilator` | DDCA Ch4 | `verilate --binary` |
| `GTKWave` | DDCA Ch3 | `gtkwave dump.vcd` |
| `Yosys` | DDCA Ch5 | Synthesis checks |

## 📚 Exercise Tracking

### DDCA Chapter 6 (Single-Cycle)
- [ ] 6.1: ALU implementation
- [ ] 6.2: Register file
- [ ] 6.3: Instruction decode
- [ ] 6.20: Complete datapath

### P&H Chapter 4 (Single-Cycle)
- [ ] 4.1: Instruction memory
- [ ] 4.8: Control unit
- [ ] 4.23: Single-cycle processor

## Example: Chapter 1 ALU (DDCA)

**Exercise 1.XX**: 32-bit ALU in Verilog

## 📈 Progress

| Milestone | Status | PR # |
|-----------|--------|------|
| Instruction Memory | ⏳ |
| Register File | ⏳ | |
| ALU | ⏳ | |
| Single-Cycle CPU | ⏳ | |
| Pipeline Hazards | ⏳ | |
| UVM Testbench | ⏳ | |

## 📖 References

1. **Computer Organization and Design RISC-V Edition** - Patterson & Hennessy
2. **Digital Design and Computer Architecture RISC-V Edition** - Harris & Harris
3. [RISC-V International Learn Repo](https://github.com/riscv/learn)
4. [RV32-Tiny Base](rtl/rv32-tiny/) - Our educational core
