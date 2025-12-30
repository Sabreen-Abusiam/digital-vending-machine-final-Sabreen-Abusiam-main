# 📊 Waveform Debugging Guide

**How to Use GTKWave to Debug Your Verilog Designs**

---

## 🎯 Why Use Waveforms?

Waveforms let you **visualize** how signals change over time, making it easy to:
- See exactly when signals change
- Debug timing issues
- Understand state machine transitions
- Verify your circuit behavior

---

## 📦 Installation

### Windows
1. Download GTKWave from: http://gtkwave.sourceforge.net/
2. Run the installer
3. Add to PATH (optional but recommended)

### Linux
```bash
sudo apt-get install gtkwave
```

### macOS
```bash
brew install gtkwave
```

---

## 🚀 Quick Start - Generate and View Waveforms

### Step 1: Run a Test (Generates .vcd File Automatically)

All your testbenches automatically generate waveform files!

```bash
# Example: Test exercise 01
iverilog -o test.vvp tests/tb_ex01.v part01_repr/ex01.v
vvp test.vvp
```

This creates `ex01.vcd` (waveform file)

### Step 2: Open in GTKWave

```bash
gtkwave ex01.vcd
```

**Windows PowerShell:**
```powershell
& "C:\Program Files\gtkwave\bin\gtkwave.exe" ex01.vcd
```

---

## 🖥️ GTKWave Interface Guide

### Main Window Sections

```
┌─────────────────────────────────────────────┐
│  Menu Bar                                   │
├──────────────┬──────────────────────────────┤
│              │                              │
│  SST Panel   │    Waveform Display Area    │
│  (Signals)   │    (Shows signal traces)    │
│              │                              │
├──────────────┴──────────────────────────────┤
│  Signal Values & Markers                    │
└─────────────────────────────────────────────┘
```

### How to Add Signals

1. **SST Panel** (left) shows all available signals
2. Click on a signal name
3. Click **"Append"** button (or double-click)
4. Signal appears in waveform display

### Navigation Tips

| Action | Shortcut |
|--------|----------|
| Zoom In | `Ctrl + +` or scroll up |
| Zoom Out | `Ctrl + -` or scroll down |
| Zoom Fit | `Ctrl + Alt + F` |
| Zoom Full | `Shift + Alt + F` |
| Move Left/Right | Arrow keys |

---

## 📚 Example: Debug Exercise 01 (AND Gate)

### Step 1: Run Test
```bash
cd C:\Cursor\StudentTest\digital-vending-machine-final-niro1001
iverilog -o test.vvp tests/tb_ex01.v part01_repr/ex01.v
vvp test.vvp
```

### Step 2: Open Waveform
```bash
gtkwave ex01.vcd
```

### Step 3: View Signals
1. In SST panel, expand `tb_ex01`
2. Expand `uut` (unit under test)
3. Select and append these signals:
   - `a` (input)
   - `b` (input)
   - `y` (output)

### Step 4: Analyze
You should see:
```
Time:  0ns   10ns  20ns  30ns  40ns
a:     0     0     1     1     
b:     0     1     0     1     
y:     0     0     0     1     ← AND gate: only 1 when both inputs are 1
```

---

## 🔍 Advanced Examples

### Example 1: Debugging a Counter (ex24 - Register)

```bash
iverilog -o test.vvp tests/tb_ex24.v part05_seq/ex24.v
vvp test.vvp
gtkwave ex24.vcd
```

**Signals to watch:**
- `clk` - Clock signal
- `rst` - Reset signal
- `en` - Enable signal
- `d[4:0]` - Data input (5-bit)
- `q[4:0]` - Output (5-bit)

**What to look for:**
- `q` changes only on rising edge of `clk`
- When `rst=1`, `q` becomes 0
- When `en=1`, `q` captures value of `d`

### Example 2: Debugging FSM (ex26 - State Machine)

```bash
iverilog -o test.vvp tests/tb_ex26.v part06_fsm/ex26.v
vvp test.vvp
gtkwave ex26.vcd
```

**Signals to watch:**
- `clk` - Clock
- `rst` - Reset
- `start` - Start signal
- `state` - Current state

**What to look for:**
- State transitions happen on clock edges
- Reset forces state to 0 (IDLE)
- `start=1` causes transition to state 1

### Example 3: Complete System (ex50 - Vending Machine)

```bash
iverilog -o test.vvp tests/tb_ex50.v part10_system/ex50.v
vvp test.vvp
gtkwave ex50.vcd
```

**Key signals:**
- `clk`, `rst`
- `coin[3:0]` - Coin value input
- `coin_insert` - Coin insertion signal
- `total[4:0]` - Total money inserted
- `state[2:0]` - FSM state
- `dispense` - Product dispense signal
- `change[4:0]` - Change to return

---

## 🎨 GTKWave Display Tips

### Change Signal Colors
1. Right-click on signal name
2. Select "Highlight" → Choose color
3. Makes important signals stand out

### Change Number Format
Right-click signal → Data Format:
- **Binary** - See individual bits
- **Hex** - Compact for multi-bit signals
- **Decimal** - Easy to read numbers
- **ASCII** - For character data

### Add Markers
1. Left-click on waveform to place primary marker (orange)
2. Middle-click for secondary marker (blue)
3. Bottom shows time difference between markers

### Group Signals
1. Select multiple signals (Ctrl+Click)
2. Right-click → "Group"
3. Organize related signals together

---

## 🐛 Common Issues & Solutions

### Issue 1: "No signals found"
**Solution:** Your testbench needs `$dumpfile()` and `$dumpvars()`

Check that your testbench has:
```verilog
initial begin
  $dumpfile("filename.vcd");
  $dumpvars(0, module_name);
end
```

All our testbenches already have this!

### Issue 2: "Waveform file not generated"
**Solution:** Test might have crashed before writing file

Check terminal output for errors:
```bash
vvp test.vvp
# Look for errors before opening gtkwave
```

### Issue 3: "Can't see signal changes"
**Solution:** Zoom in more!

- Press `Ctrl + +` multiple times
- Or use "Zoom Fit" button
- Check if signal actually changes in simulation

### Issue 4: "Signals show as 'x' or 'z'"
- **x** = undefined value (not initialized)
- **z** = high impedance (tri-state)

**Fix:** Initialize your signals properly

---

## 📝 Practical Debugging Workflow

### Step 1: Run Test First
```bash
vvp test.vvp
```
Look at console output - does test pass or fail?

### Step 2: If Test Fails, Open Waveform
```bash
gtkwave exXX.vcd
```

### Step 3: Add All Module Signals
- Expand `tb_exXX` → `uut`
- Select all signals
- Click "Append"

### Step 4: Find the Problem
1. **Find failing test case** - Look at console output for failed test
2. **Find time of failure** - Tests show timing
3. **Go to that time** in waveform
4. **Check signal values** - Are they what you expect?

### Step 5: Fix and Re-test
1. Fix your Verilog code
2. Re-compile: `iverilog ...`
3. Re-run: `vvp test.vvp`
4. Re-check waveform if needed

---

## 💡 Pro Tips

### Tip 1: Save Your GTKWave Setup
1. Arrange signals nicely
2. Set colors, formats
3. **File → Write Save File** (creates .gtkw file)
4. Next time: `gtkwave ex01.gtkw` (loads with your settings)

### Tip 2: Compare Expected vs Actual
Keep testbench output open while viewing waveform:
```
Terminal:         GTKWave:
PASS: a=0, b=0    ← Check waveform at t=10ns
FAIL: a=1, b=1    ← Check waveform at t=40ns (find bug!)
```

### Tip 3: Use Search
- **Edit → Search Signal** (Ctrl+F)
- Quickly find signals in large designs

### Tip 4: Multiple Waveform Windows
- **File → New Viewer**
- Compare different test runs side-by-side

---

## 🎯 Quick Reference Card

```
┌─────────────────────────────────────────────┐
│  GTKWave Quick Commands                     │
├─────────────────────────────────────────────┤
│  Zoom In:           Ctrl + +                │
│  Zoom Out:          Ctrl + -                │
│  Zoom Fit:          Ctrl + Alt + F          │
│  Zoom Full:         Shift + Alt + F         │
│  Search Signal:     Ctrl + F                │
│  Toggle Grid:       Alt + G                 │
│  Primary Marker:    Left Click              │
│  Secondary Marker:  Middle Click            │
│  Delete Signal:     Delete key              │
│  Move Signal Up:    Shift + ↑               │
│  Move Signal Down:  Shift + ↓               │
└─────────────────────────────────────────────┘
```

---

## 📚 Example Debugging Session

**Problem:** Ex24 test fails - register not storing value

**Step 1:** Run test
```bash
iverilog -o test.vvp tests/tb_ex24.v part05_seq/ex24.v
vvp test.vvp
# Output shows: FAIL: After reset, Q should be 1, got Q=0
```

**Step 2:** Open waveform
```bash
gtkwave ex24.vcd
```

**Step 3:** Add signals and analyze
```
Add: clk, rst, en, d[4:0], q[4:0]

Waveform shows:
  rst=1 at 0ns  → q=0 (correct)
  rst=0 at 10ns
  en=1, d=15 at 15ns
  Clock edge at 20ns → q=15 (should capture d)
  
But q stays 0! 
```

**Step 4:** Found bug!
```verilog
// Bug: Missing en check
always @(posedge clk) begin
  if (rst)
    q <= 5'b0;
  // Missing: else if (en)
  q <= d;  // ← Always assigns, ignores en!
end
```

**Step 5:** Fix it
```verilog
always @(posedge clk) begin
  if (rst)
    q <= 5'b0;
  else if (en)  // ← Add this!
    q <= d;
end
```

---

## 🎓 Learning Resources

### Online Tutorials
- **GTKWave Manual:** http://gtkwave.sourceforge.net/gtkwave.pdf
- **YouTube:** Search "GTKWave tutorial"

### Practice Exercises
1. Start with simple exercises (ex01-ex05)
2. View waveforms for passing tests to learn
3. Then debug failing tests

---

## ✅ Quick Test Script

Create `test_and_view.sh` (Linux/Mac) or `test_and_view.ps1` (Windows):

**Windows (PowerShell):**
```powershell
# test_and_view.ps1
param($ex)
iverilog -o test.vvp "tests/tb_ex${ex}.v" "part*/**/ex${ex}.v"
vvp test.vvp
& "C:\Program Files\gtkwave\bin\gtkwave.exe" "ex${ex}.vcd"
```

**Usage:**
```powershell
.\test_and_view.ps1 24  # Tests and views ex24
```

---

**Happy Debugging! 🎉**

*Remember: Waveforms are your best friend for debugging digital circuits!*

