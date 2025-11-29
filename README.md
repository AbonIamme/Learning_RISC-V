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

Install RISC-V toolchain

./tools/setup-toolchain.sh
Simulate RV32-Tiny (our starter core)

cd rtl/rv32-tiny
make sim
Run UVM verification

make verilate-uvm

## 📁 Directory Structure

├── docs/ # Book chapter notes + solutions
├── rtl/ # Verilog implementations
│ ├── rv32-tiny/ # Educational 5-stage CPU
│ └── single-cycle/
├── sim/ # Testbenches (basic + UVM)
├── sw/ # C/Assembly test programs
└── labs/ # Guided exercises


## 🛠️ Tools Stack (All Open Source)

| Tool | Purpose | Command |
|------|---------|---------|
| `riscv-gnu-toolchain` | Compiler/Assembler | `riscv64-unknown-elf-gcc` |
| `Verilator` | RTL Simulation + UVM | `verilate --uvm` |
| `Yosys` | Synthesis | `yosys -p "read_verilog; synth -top rv32_tiny"` |
| `Spike` | ISA Reference | `spike pk program.elf` |
| `GTKWave` | Waveform viewer | `gtkwave sim.vcd` |

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
3. [RISC-V International Learn Repo](https://github.com/riscv/learn) [web:61]
4. [RV32-Tiny Base](rtl/rv32-tiny/) - Our educational core
