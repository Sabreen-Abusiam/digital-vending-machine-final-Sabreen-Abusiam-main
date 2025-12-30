# 🎓 Digital Vending Machine Project

**Complete SystemVerilog Project for Numerical Systems Course (26)**

---

## 🚀 Quick Start

### 1. Install Icarus Verilog

- **Windows**: http://bleyer.org/icarus/
- **Linux**: `sudo apt-get install iverilog`
- **macOS**: `brew install icarus-verilog`

### 2. Verify Setup

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

✅ **You're ready to start!**

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
└── docs/              📖 All documentation (13 files)
```

**Total**: 52 exercises + 52 tests + Complete documentation

---

## 📖 Documentation (All in docs/ folder)

### Essential Reading

1. **docs/00_READ_ME_FIRST.txt** - Plain text intro
2. **docs/COMPLETE_PROJECT_GUIDE.md** - ⭐ Complete all-in-one guide
3. **docs/README.md** - This file
4. **docs/TESTING_GUIDE.md** - How to test exercises
5. **docs/TESTING_NOTES_REFERENCE.md** - Testing patterns for all 52 tests
6. **docs/SYLLABUS_ALIGNMENT.md** - Week-by-week syllabus alignment

### Reference Documents

7. **docs/FINAL_VERIFICATION.md** - Project completion checklist
8. **docs/DOCUMENTATION_INDEX.md** - Documentation navigation

### Special

- **part10_system/ex50_GUIDE.md** - Final vending machine guide

---

## 🧪 How to Test Any Exercise

```bash
# Pattern:
iverilog -o test.vvp partXX_folder/exYY.v tests/tb_exYY.v
vvp test.vvp

# Examples:
iverilog -o test.vvp part01_repr/ex01.v tests/tb_ex01.v && vvp test.vvp
iverilog -o test.vvp part05_seq/ex21.v tests/tb_ex21.v && vvp test.vvp
iverilog -o test.vvp part10_system/ex50.v tests/tb_ex50.v && vvp test.vvp
```

---

## 🎯 What You'll Build

A complete **digital vending machine** with:

- ✅ Coin acceptance (1, 5, 10 NIS)
- ✅ Payment validation
- ✅ 4 products with different prices
- ✅ Automatic change calculation
- ✅ Inventory management
- ✅ 5-state FSM controller
- ✅ Complete system integration

---

## 📊 Project Statistics

| Metric                | Count     | Status      |
| --------------------- | --------- | ----------- |
| **Exercises**         | 52        | ✅ Complete |
| **Testbenches**       | 52        | ✅ Complete |
| **Parts**             | 11 (0-10) | ✅ Complete |
| **Documentation**     | 13 files  | ✅ Complete |

---

## 🎓 Learning Path

### Week 0: Setup (Part 0)

- ex00: Verify environment
- ex00_hello: First simulation

### Weeks 1-2: Foundations (Parts 1-2)

- Number systems (binary, hex)
- Arithmetic operations
- Coin handling basics

### Weeks 3-4: Combinational Logic (Parts 3-4)

- Boolean algebra
- K-Maps optimization
- Multiplexers & decoders

### Weeks 5-7: Sequential & FSM (Parts 5-7)

- Flip-flops & registers
- FSM design (2 to 5 states)
- FSM implementation

### Weeks 8-10: Advanced (Parts 8-10)

- Arithmetic circuits from scratch
- Complete ALU design
- Memory systems
- **ex50: Complete Vending Machine!** 🎯



## 📧 Project Information

**Course**: Numerical Systems (26A)  
**Project**: Digital Vending Machine  
**Language**: SystemVerilog  
**Simulator**: Icarus Verilog  
**Total Exercises**: 52  


---

**🎉 Good Luck - Ready for coding!**


