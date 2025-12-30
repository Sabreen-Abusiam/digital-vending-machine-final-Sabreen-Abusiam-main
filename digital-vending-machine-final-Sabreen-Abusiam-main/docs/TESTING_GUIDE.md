# 🧪 Testing Guide

**How to Test Exercises in the Digital Vending Machine Project**

---

## 🚀 Quick Start

### Basic Test Command

```bash
iverilog -o test.vvp partXX_folder/exYY.v tests/tb_exYY.v
vvp test.vvp
```

**Example**:
```bash
iverilog -o test.vvp part01_repr/ex02.v tests/tb_ex02.v
vvp test.vvp
```

---

## 📁 File Organization

### Exercise Files
- Located in: `partXX_folder/exYY.v`
- Contains: Module implementation

### Testbench Files
- Located in: `tests/tb_exYY.v`
- Contains: Test cases and verification

### Output Files
- `.vvp`: Compiled Verilog (can be deleted)
- `.vcd`: Waveform file (view with GTKWave)

---

## 🔍 Understanding Test Output

### Successful Test

```
╔════════════════════════════════════════╗
║   TEST: Binary Representation (ex02)  ║
╚════════════════════════════════════════╝

Testing conversion: Decimal → Binary
Format: Decimal (Dec) | Binary (Bin) | Hex
─────────────────────────────────────────
✓ PASS: Decimal  5 (Dec) | Binary 0101 (Bin) | Hex 5
✓ PASS: Decimal 10 (Dec) | Binary 1010 (Bin) | Hex A

╔════════════════════════════════════════╗
║     ✓ ALL TESTS PASSED - ex02          ║
╚════════════════════════════════════════╝
```

### Failed Test

```
✗ FAIL: Decimal 5 → Expected binary 0101, got 0000
✗ FAIL: Decimal 10 → Expected binary 1010, got 0000
```

---

## 📊 Waveform Viewing

### Generating Waveforms

All testbenches automatically generate `.vcd` files:

```bash
# Run test (automatically creates exYY.vcd)
iverilog -o test.vvp part01_repr/ex02.v tests/tb_ex02.v
vvp test.vvp

# View waveform
gtkwave ex02.vcd
```

### Using GTKWave

1. **Install GTKWave**: https://gtkwave.sourceforge.net/
2. **Open VCD file**: `File → Open New Tab → Select .vcd file`
3. **Add signals**: Select signals in `SST` panel and click `Append`
4. **Navigate**: Zoom, pan, and measure time

### What to Look For

- **Signal transitions**: When values change
- **Timing relationships**: Signal timing
- **State changes**: For sequential circuits
- **Data flow**: Input to output relationships

---

## 🔧 Common Testing Patterns

### Pattern 1: Combinational Logic

```verilog
// Set inputs
input_a = value1;
input_b = value2;
#10;  // Wait for propagation

// Check output
if (output !== expected) begin
  $display("FAIL: Expected %b, got %b", expected, output);
end
```

### Pattern 2: Sequential Logic

```verilog
// Reset
rst = 1;
#10;
rst = 0;
#10;

// Clock cycle
clk = 0;
#5;
clk = 1;
#5;
```

### Pattern 3: Multi-format Display

```verilog
$display("Value %2d (Dec) | %4b (Bin) | %1h (Hex)", 
         value, value, value);
```

---

## 🎯 Part 1 Testing Examples

### Exercise 1: Basic AND Gate

```bash
iverilog -o test.vvp part01_repr/ex01.v tests/tb_ex01.v && vvp test.vvp
gtkwave ex01.vcd
```

**Expected**: All 4 truth table entries pass

### Exercise 2: Decimal → Binary

```bash
iverilog -o test.vvp part01_repr/ex02.v tests/tb_ex02.v && vvp test.vvp
gtkwave ex02.vcd
```

**Expected**: Shows decimal, binary, and hex side-by-side

### Exercise 3: Hexadecimal

```bash
iverilog -o test.vvp part01_repr/ex03.v tests/tb_ex03.v && vvp test.vvp
gtkwave ex03.vcd
```

**Expected**: Shows hex → binary → decimal conversion

### Exercise 4: Coin Validation

```bash
iverilog -o test.vvp part01_repr/ex04.v tests/tb_ex04.v && vvp test.vvp
gtkwave ex04.vcd
```

**Expected**: Validates coins 1, 5, 10 NIS correctly

### Exercise 5: 5-bit Accumulator

```bash
iverilog -o test.vvp part01_repr/ex05.v tests/tb_ex05.v && vvp test.vvp
gtkwave ex05.vcd
```

**Expected**: Stores values 0-31 correctly

---

## 🐛 Debugging Tips

### 1. Check Module Interface

Ensure testbench signals match module ports:

```verilog
// Module
module ex02(input [3:0] price_decimal, output [3:0] price_binary);

// Testbench must match
ex02 uut(.price_decimal(price_decimal), .price_binary(price_binary));
```

### 2. Verify Signal Widths

```verilog
// Correct
reg [3:0] input;
wire [3:0] output;

// Wrong
reg input;  // Only 1 bit!
wire [4:0] output;  // Wrong width!
```

### 3. Check Timing

```verilog
// Always wait after setting inputs
input = value;
#10;  // Wait for propagation delay
// Now check output
```

### 4. Use Waveforms

Visual inspection helps identify:
- Missing signals
- Wrong timing
- Unexpected values
- State machine issues

---

## 📈 Testing Checklist

For each exercise:

- [ ] Compiles without errors
- [ ] All tests pass
- [ ] Waveform file generated
- [ ] Can view waveform in GTKWave
- [ ] Output format matches expected
- [ ] All edge cases tested

---

## 🔄 Batch Testing

### Test All Exercises in Part 1

**Windows (PowerShell)**:
```powershell
for ($i=1; $i -le 5; $i++) {
    iverilog -o test.vvp "part01_repr/ex0$i.v" "tests/tb_ex0$i.v"
    vvp test.vvp
}
```

**Linux/Mac**:
```bash
for i in {1..5}; do
    iverilog -o test.vvp part01_repr/ex0$i.v tests/tb_ex0$i.v
    vvp test.vvp
done
```

---

## 📚 Additional Resources

- **Complete Guide**: See `COMPLETE_PROJECT_GUIDE.md`
- **Project Diagram**: See `PROJECT_DIAGRAM.md`
- **GTKWave Tutorial**: https://gtkwave.sourceforge.net/gtkwave.pdf

---

**Happy Testing! 🎉**

