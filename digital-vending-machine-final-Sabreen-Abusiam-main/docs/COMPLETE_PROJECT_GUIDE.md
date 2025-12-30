# 📖 Complete Project Guide

**Digital Vending Machine Project - Complete Guide**

---

## 🎯 Project Overview

This project teaches digital design through building a complete vending machine system in Verilog. You will learn:

- Number representation (binary, hex, decimal)
- Arithmetic operations
- Boolean algebra
- Combinational and sequential logic
- State machines (FSM)
- Arithmetic circuits
- ALU design
- Complete system integration

---

## 📚 Project Structure

```
digital-vending-machine/
├── part00_intro/      ⭐ START HERE! (2 exercises)
├── part01_repr/       Number Representation (5 exercises)
├── part02_arith/      Binary Arithmetic (5 exercises)
├── part03_bool/       Boolean Algebra (5 exercises)
├── part04_kmap/       K-Maps & Components (5 exercises)
├── part05_seq/        Sequential Logic (5 exercises)
├── part06_fsm/        FSM Design (5 exercises)
├── part07_impl/       FSM Implementation (5 exercises)
├── part08_arith/      Arithmetic Circuits (5 exercises)
├── part09_alu/        ALU Design (5 exercises)
├── part10_system/     Complete System (5 exercises)
├── tests/             All 52 testbenches
└── docs/              📖 All documentation
```

**Total**: 52 exercises + 52 tests + Complete documentation

---

## 🚀 Getting Started

### 1. Install Icarus Verilog

**Windows**: http://bleyer.org/icarus/  
**Linux**: `sudo apt-get install iverilog`  
**macOS**: `brew install icarus-verilog`

### 2. Verify Installation

```bash
cd part00_intro
iverilog -o test.vvp ex00.v ..\tests\tb_ex00.v
vvp test.vvp
```

**Expected**: `PASS: Empty module compiled successfully!`

### 3. Hello Verilog!

```bash
iverilog -o test.vvp ex00_hello.v ..\tests\tb_ex00_hello.v
vvp test.vvp
```

**Expected**: `Hello Verilog!`

---

## 🧪 Testing Any Exercise

### Pattern

```bash
iverilog -o test.vvp partXX_folder/exYY.v tests/tb_exYY.v
vvp test.vvp
```

### Examples

```bash
# Test exercise 1 (part01_repr)
iverilog -o test.vvp part01_repr/ex01.v tests/tb_ex01.v && vvp test.vvp

# Test exercise 21 (part05_seq)
iverilog -o test.vvp part05_seq/ex21.v tests/tb_ex21.v && vvp test.vvp

# Test final exercise 50 (part10_system)
iverilog -o test.vvp part10_system/ex50.v tests/tb_ex50.v && vvp test.vvp
```

### Viewing Waveforms

After running a test, a `.vcd` file is created. View it with:

- **GTKWave** (recommended): https://gtkwave.sourceforge.net/
- **ModelSim**: Commercial simulator
- **Vivado/Quartus**: For FPGA projects

**GTKWave Usage**:
```bash
gtkwave ex01.vcd
```

---

## 📖 Learning Path

### Phase 1: Foundations (Parts 0-2)

**Week 0**: Setup (Part 0)
- ex00: Verify environment
- ex00_hello: First simulation

**Weeks 1-2**: Foundations (Parts 1-2)
- **Part 1 (Number Representation)**: Binary, hex, decimal
  - ex01: Basic module structure
  - ex02: Decimal → Binary conversion
  - ex03: Hexadecimal conversion
  - ex04: Coin validation (1, 5, 10 NIS)
  - ex05: 5-bit accumulator
  
- **Part 2 (Arithmetic)**: Basic operations
  - ex06-ex10: Binary arithmetic, addition, subtraction

### Phase 2: Combinational Logic (Parts 3-4)

**Weeks 3-4**: Combinational Logic
- **Part 3 (Boolean Algebra)**: Logic gates and expressions
  - ex11-ex15: AND, OR, NOT, XOR operations
  
- **Part 4 (K-Maps & Components)**: Optimization and multiplexers
  - ex16-ex20: K-Maps, multiplexers, decoders

### Phase 3: Sequential Logic (Parts 5-7)

**Weeks 5-7**: Sequential Logic and FSM
- **Part 5 (Sequential Logic)**: Flip-flops and registers
  - ex21-ex25: D flip-flops, registers, counters
  
- **Part 6 (FSM Design)**: State machine design
  - ex26-ex30: 2-state to 5-state FSMs
  
- **Part 7 (FSM Implementation)**: Implementing state machines
  - ex31-ex35: Complete FSM implementations

### Phase 4: Advanced (Parts 8-10)

**Weeks 8-10**: Advanced Topics
- **Part 8 (Arithmetic Circuits)**: Building arithmetic units
  - ex36-ex40: Adders, subtractors, multipliers
  
- **Part 9 (ALU Design)**: Arithmetic Logic Unit
  - ex41-ex45: Complete ALU with operations
  
- **Part 10 (Complete System)**: Final integration
  - ex46-ex49: Memory, control, integration
  - **ex50: Complete Vending Machine!** 🎯

---

## 🎯 Part 1: Number Representation (Detailed)

### Exercise 1: Basic Module Structure
- **Goal**: Learn Verilog module syntax
- **Concepts**: Inputs, outputs, assignments
- **Test**: `iverilog -o test.vvp part01_repr/ex01.v tests/tb_ex01.v && vvp test.vvp`
- **Waveform**: `gtkwave ex01.vcd`

### Exercise 2: Decimal → Binary
- **Goal**: Understand decimal to binary conversion
- **Visualization**: Shows decimal, binary, and hex representations
- **Output**: Displays all three formats side by side
- **Test**: `iverilog -o test.vvp part01_repr/ex02.v tests/tb_ex02.v && vvp test.vvp`

### Exercise 3: Hexadecimal Conversion
- **Goal**: Understand hex representation
- **Visualization**: Shows hex → binary → decimal conversion
- **Output**: Multi-format display
- **Test**: `iverilog -o test.vvp part01_repr/ex03.v tests/tb_ex03.v && vvp test.vvp`

### Exercise 4: Coin Validation
- **Goal**: Implement decision logic
- **Visualization**: Shows coin value in decimal/hex and validation result
- **Output**: Clear PASS/FAIL with value representations
- **Test**: `iverilog -o test.vvp part01_repr/ex04.v tests/tb_ex04.v && vvp test.vvp`

### Exercise 5: 5-bit Accumulator
- **Goal**: Understand bit width and overflow
- **Visualization**: Shows input/output in decimal and hex
- **Test**: `iverilog -o test.vvp part01_repr/ex05.v tests/tb_ex05.v && vvp test.vvp`

---

## 🎨 Visualization Features

All exercises in Part 1 (ex01-ex05) now include:

1. **Multi-format Display**: Shows values in decimal, binary, and hexadecimal
2. **Waveform Generation**: Creates `.vcd` files for GTKWave
3. **Formatted Output**: Clean, readable test results
4. **Error Messages**: Clear feedback on test failures

### Example Output Format

```
╔════════════════════════════════════════╗
║   TEST: Binary Representation (ex02)  ║
╚════════════════════════════════════════╝

Testing conversion: Decimal → Binary
Format: Decimal (Dec) | Binary (Bin) | Hex
─────────────────────────────────────────
✓ PASS: Decimal  5 (Dec) | Binary 0101 (Bin) | Hex 5
✓ PASS: Decimal 10 (Dec) | Binary 1010 (Bin) | Hex A
✓ PASS: Decimal 15 (Dec) | Binary 1111 (Bin) | Hex F
```

---

## 🔧 Troubleshooting

### Compilation Errors
- Check file paths (use `..\tests\` from part folders)
- Verify Verilog syntax
- Check for missing semicolons

### Simulation Errors
- Verify testbench matches module interface
- Check signal widths match
- Ensure all inputs are driven

### Waveform Issues
- Verify `$dumpfile` and `$dumpvars` are present
- Check file permissions
- Ensure simulation completes (not stuck)

---

## 📊 Project Statistics

| Metric                | Count     | Status      |
| --------------------- | --------- | ----------- |
| **Exercises**         | 52        | ✅ Complete |
| **Testbenches**       | 52        | ✅ Complete |
| **Parts**             | 11 (0-10) | ✅ Complete |
| **Documentation**     | Multiple  | ✅ Complete |

---

## 🎓 Final Goal: Exercise 50

The complete vending machine includes:

- ✅ Coin acceptance (1, 5, 10 NIS)
- ✅ Payment validation
- ✅ 4 products with different prices
- ✅ Automatic change calculation
- ✅ Inventory management
- ✅ 5-state FSM controller
- ✅ Complete ALU integration
- ✅ Complete system integration

---

## 📧 Additional Resources

- **Project Diagram**: See `PROJECT_DIAGRAM.md` for visual structure
- **Testing Guide**: See `TESTING_GUIDE.md` for detailed testing
- **Syllabus Alignment**: See `SYLLABUS_ALIGNMENT.md` for week-by-week plan

---

**Good luck with your project! 🎉**

