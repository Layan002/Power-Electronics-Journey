# Phase 0 – Foundations

Part of **Power-Electronics-Journey** → goal: a bidirectional buck-boost converter
(12 V battery ⇄ 24 V bus, 50–100 W), modelled in Simulink, verified in LTspice, built on a PCB.

**Status:** 🟡 In progress (started Sat 31 Oct 2026)
**Main course:** Walid Issa – *Power Electronics – SHU 2022* (YouTube)
**Simulink companion:** Dr. Abdelrahman Farghly – *DC-DC converters* (YouTube)

---

## 🎯 Semester target (deadline: Thu 14 Jan 2027)

> **By the end of this semester: a working, tested simulation of the bidirectional converter**
> in Simulink (system + control) and LTspice (power stage), with results compared to hand calculations.

Assumptions: ~10 hours/week alongside the Electricity Diploma. Hardware builds (Phase 2 buck board,
PCB) move to **after** the semester, so this plan follows the simulation track first.

| Phase | Focus | Dates | Deadline |
|---|---|---|---|
| 0 | Foundations (MATLAB, Simulink, LTspice, Bode) | 1 – 14 Nov | **Sat 14 Nov** |
| 1 | Converter theory + Simulink buck/boost/buck-boost | 15 Nov – 5 Dec | **Sat 5 Dec** |
| 2 (sim) | Losses, MOSFETs, buck in LTspice | 6 – 12 Dec | **Sat 12 Dec** |
| 3 (sim) | Half-bridge, two-quadrant operation, sync rectification | 13 – 19 Dec | **Sat 19 Dec** |
| 4 | Averaged models, PI / Type II control, closed loop | 20 Dec – 2 Jan | **Sat 2 Jan** |
| 5 (sim) | Full bidirectional converter simulation + test report | 3 – 9 Jan | **Sat 9 Jan** |
| — | Buffer (exams / catch-up) | 10 – 14 Jan | **Thu 14 Jan** |

---

## 1. Goals of this phase

- Be comfortable with MATLAB scripts and plotting (for converter parameter calculations).
- Build and measure circuits in Simulink / Simscape.
- Build, simulate and measure circuits in LTspice.
- Refresh Laplace transforms, transfer functions and Bode plots (needed in Phase 4).

---

## 2. Checklist

### 2.1 MathWorks Onramps (free, interactive – [matlabacademy.mathworks.com](https://matlabacademy.mathworks.com))
- [ ] MATLAB Onramp — 📅 **Tue 3 Nov**
- [ ] Simulink Onramp — 📅 **Thu 5 Nov**
- [ ] Simscape Onramp — 📅 **Sat 7 Nov**
- [ ] *(Bonus)* Simscape Electrical Onramp — 📅 **Mon 9 Nov**

### 2.2 MATLAB – selected videos — 📅 all by **Sun 8 Nov**
Playlist: [كورس ماتلاب بالعربي – MATLAB Course for Beginners](https://www.youtube.com/playlist?list=PLUSE6w0Kh7fKp5ndh3spA8uiZuLuA5OoT) – Dr. Abdelrahman Farghly
*Watch alongside the MATLAB Onramp; skip any video the Onramp already covered well.*

- [ ] #1 [Introduction to Matlab program](https://www.youtube.com/watch?v=MbJ7eeaXzes) — 📅 Sun 1 Nov
- [ ] #2 [MATLAB program](https://www.youtube.com/watch?v=BBAloO08rnc) — 📅 Sun 1 Nov
- [ ] #3 [Basic Math Operation on MATLAB](https://www.youtube.com/watch?v=Ol6I714sMno) — 📅 Mon 2 Nov
- [ ] #4 [Relational and Logic operation on MATLAB](https://www.youtube.com/watch?v=Hm8CRrHzI7A) — 📅 Mon 2 Nov
- [ ] #6 [Vector on MATLAB](https://www.youtube.com/watch?v=hX3842XYBX0) — 📅 Tue 3 Nov
- [ ] #7 [Matrices on MATLAB](https://www.youtube.com/watch?v=ww3SVzJtCqI) — 📅 Tue 3 Nov
- [ ] #9 [Matrices operation on MATLAB](https://www.youtube.com/watch?v=CfBMJHrE8W8) — 📅 Wed 4 Nov
- [ ] #10 [Matrix Sub-scripting on MATLAB](https://www.youtube.com/watch?v=IZJ3E4ov_cg) — 📅 Wed 4 Nov
- [ ] #12 [Plot function on MATLAB](https://www.youtube.com/watch?v=tu1hwUDIqWg) — 📅 Thu 5 Nov
- [ ] #13 [Multiple plot on MATLAB](https://www.youtube.com/watch?v=7d-3j2IRTx0) — 📅 Thu 5 Nov
- [ ] #15 [Subplot on MATLAB](https://www.youtube.com/watch?v=we1XD0w8oLE) — 📅 Thu 5 Nov
- [ ] #21 [Introduction to MATLAB programming](https://www.youtube.com/watch?v=La_XlYZemIw) — 📅 Fri 6 Nov
- [ ] #22 [Enter input and display output](https://www.youtube.com/watch?v=uTmb7NW7LiI) — 📅 Fri 6 Nov
- [ ] #23 [IF condition](https://www.youtube.com/watch?v=i1-pVHX7uvg) — 📅 Sat 7 Nov
- [ ] #24 [For loop](https://www.youtube.com/watch?v=iX6fX_k1qZ8) — 📅 Sat 7 Nov
- [ ] #25 [Switch case and while loop](https://www.youtube.com/watch?v=MjBFfp4wdsk) — 📅 Sun 8 Nov
- [ ] #26 [Function file](https://www.youtube.com/watch?v=OwXsGyJYyRs) — 📅 Sun 8 Nov

### 2.3 Simulink / Simscape – selected videos — 📅 all by **Mon 9 Nov**
- [ ] Voltuino #1 [Introduction to Simulink](https://www.youtube.com/watch?v=Tcs8TmuH2FU) *(optional if the Simulink Onramp was enough)* — 📅 Fri 6 Nov
- [ ] Farghly – Electric circuits #1 [Introduction to electric circuit MATLAB Simulink](https://www.youtube.com/watch?v=b7WgcP9syaI) — 📅 Sun 8 Nov
- [ ] Farghly – Electric circuits #2 [Measure resistance, current, voltage and power](https://www.youtube.com/watch?v=vknCsP2HVgo) — 📅 Mon 9 Nov

> ⚠️ Note which library each video uses: **Specialized Power Systems** (needs a `powergui` block)
> or **Simscape foundation / Simscape Electrical** blocks. They can't be wired together directly –
> stick to one library per model.

### 2.4 LTspice basics — 📅 all by **Wed 11 Nov**
Playlist: *Power Electronics – SHU 2022* – Walid Issa Plus
- [ ] Lab 1 – Task 0: Introduction to LTSpice — 📅 Tue 10 Nov
- [ ] Lab 1 – Task 1: Building First circuit in LTSpice — 📅 Tue 10 Nov
- [ ] Lab 1 – Task 2: IV Curves of R and D in LTspice — 📅 Wed 11 Nov
- [ ] Lab 1 – Task 3: Sources and AC analysis in LTSpice — 📅 Wed 11 Nov
- [ ] Lab 1 – Task 4: LTSPICE Models and Library — 📅 Wed 11 Nov

### 2.5 Laplace & Bode review — 📅 **Thu 12 Nov**
- [ ] Laplace transform of R, L, C impedances: $Z_R = R$, $Z_L = sL$, $Z_C = \frac{1}{sC}$
- [ ] Transfer function, poles and zeros
- [ ] Bode plot: magnitude in dB, phase in degrees, −20 dB/decade per pole
- [ ] Second-order LC filter: resonant frequency and quality factor $Q$
- Reference: Erickson & Maksimović, *Fundamentals of Power Electronics*, Ch. 8.1 (Bode plot review)

### 2.6 Mini-project + README — 📅 **Sat 14 Nov** (end of Phase 0)
- [ ] RC low-pass filter, full workflow (section 3) — 📅 Fri 13 Nov
- [ ] Fill in results table, summary, what I learned; commit — 📅 Sat 14 Nov

---

## 3. Phase 0 mini-project: RC low-pass filter (full workflow)

The first circuit to run through the full workflow:
**hand calculation → Simulink → LTspice → measurement**.

Circuit: series $R$, output across $C$. Values: $R = 1\ \text{k}\Omega$, $C = 1\ \mu\text{F}$.

### 3.1 Hand calculation

Transfer function:

$$H(s) = \frac{V_{out}(s)}{V_{in}(s)} = \frac{1}{1 + sRC}$$

Time constant:

$$\tau = RC = (1\ \text{k}\Omega)(1\ \mu\text{F}) = 1\ \text{ms}$$

Cut-off frequency:

$$f_c = \frac{1}{2\pi RC} = \frac{1}{2\pi (1\ \text{ms})} \approx 159\ \text{Hz}$$

Step response to a 5 V step: $v_{out}(t) = 5\left(1 - e^{-t/\tau}\right)\ \text{V}$,
so $v_{out}(\tau) \approx 3.16\ \text{V}$ and it reaches ~99 % after $5\tau = 5\ \text{ms}$.

### 3.2 Tasks
- [ ] MATLAB script: compute $\tau$, $f_c$ and plot the Bode plot (`tf`, `bode`)
- [ ] Simulink/Simscape: build the RC circuit, apply a 5 V step, measure $v_{out}(\tau)$
- [ ] LTspice: transient (step) and `.ac` sweep, measure $f_c$ at the −3 dB point
- [ ] *(Optional)* Real measurement on a breadboard with a function generator + oscilloscope

### 3.3 Results

| Quantity | Hand calc | Simulink | LTspice | Measured |
|---|---|---|---|---|
| $\tau$ | 1 ms | | | |
| $v_{out}(\tau)$ for 5 V step | 3.16 V | | | |
| $f_c$ (−3 dB) | 159 Hz | | | |
| Phase at $f_c$ | −45° | | | |

*Add screenshots to `phase-0/images/` and link them here.*

---

## 4. Summary
*(Write in your own words when the phase is finished.)*

## 5. What I learned
-
-

## 6. Problems I ran into and how I solved them
-

---

## 7. Safety note
Phase 0 is simulation only. For the optional breadboard test, use low voltages
(≤ 5 V from a function generator) and check probe ground clip placement before connecting.
Real power hardware starts in Phase 2 – from then on: current-limited bench supply, input fuse,
and no lithium battery until the circuit is proven on the bench supply.

---

<details>
<summary><b>📚 Full course map with deadlines (all phases)</b></summary>

**P1** = Farghly *DC-DC converters (Simulink)* · **P5** = Farghly *Power electronics course* · **P6** = Walid Issa *Power Electronics – SHU 2022*
*P1/P5 numbers = position in the playlist. P6 numbers = the number written in the video title (e.g. "29 Buck Converter Introductory Basics"); labs and problem sets are named.*

### Phase 1 – Converter theory (15 Nov – Sat 5 Dec)
- [ ] P6 #01–10 (what/why PE, linear vs switched, RMS & AVG, LTspice RMS) — 📅 Thu 19 Nov
- [ ] P6 Problem Sets 1a, 1b — 📅 Sat 21 Nov
- [ ] P5 #31–33 (chopper intro, CCM / critical / DCM) — 📅 Mon 23 Nov
- [ ] P6 #29–32 buck (intro, analysis, design, design considerations) — 📅 Thu 26 Nov
- [ ] P6 #33–34 boost, buck-boost + Problem Set 3 — 📅 Mon 30 Nov
- [ ] P5 #35–38 as a second explanation (only if needed) — 📅 Mon 30 Nov
- [ ] P1 #1, #4, #5, #9 Simulink buck, boost, fast config, non-inverting buck-boost — 📅 Thu 3 Dec
- [ ] Phase 1 README: hand calc vs Simulink for buck, boost, buck-boost — 📅 **Sat 5 Dec**

### Phase 2 (simulation part) – Losses & first buck design (6 – Sat 12 Dec)
- [ ] P6 #12–14 thermal, #15–18 switches & switching losses — 📅 Tue 8 Dec
- [ ] P6 #19–24 diodes, BJT, MOSFET, MOSFET considerations — 📅 Thu 10 Dec
- [ ] P6 Lab 3 + Lab 4 Tasks 1–3: 12 V → 5 V, 1 A buck in LTspice (efficiency, diode selection) — 📅 **Sat 12 Dec**
- ⏸ Hardware build (555 PWM buck board) → after the semester

### Phase 3 (simulation part) – Half-bridge & bidirectional (13 – Sat 19 Dec)
- [ ] P5 #34 Two-quadrant and four-quadrant choppers ⭐ — 📅 Sun 13 Dec
- [ ] P6 #25 Gate drivers + TI SLUA618 (skim), TI SLUA887 bootstrap (skim) — 📅 Tue 15 Dec
- [ ] P6 Lab 4 Task 4 Synchronous buck — 📅 Wed 16 Dec
- [ ] P6 Double pulse testing, Snubber design — 📅 Thu 17 Dec
- [ ] Open-loop half-bridge in Simulink: same circuit runs buck (24 → 12 V) and boost (12 → 24 V) by changing duty cycle and dead time — 📅 **Sat 19 Dec**

### Phase 4 – Control (20 Dec – Sat 2 Jan)
- [ ] Erickson & Maksimović Ch. 7 (averaged model) key sections — 📅 Wed 23 Dec
- [ ] Erickson Ch. 8 (control-to-output transfer function of buck & boost) — 📅 Sat 26 Dec
- [ ] P1 #2 PI closed loop, #6 Sisotool tuning — 📅 Mon 28 Dec
- [ ] P6 Closed-loop buck in LTspice — 📅 Tue 29 Dec
- [ ] Erickson Ch. 9 – Type II compensator design (phase margin, crossover) — 📅 Thu 31 Dec
- [ ] Closed-loop buck and boost in Simulink, compare PI vs Type II step response — 📅 **Sat 2 Jan**
- Optional (only if ahead of schedule): Voltuino #5, P1 #3/#19 hysteresis, P1 #8 sliding mode charging, Erickson Ch. 12 current mode

### Phase 5 (simulation part) – Full bidirectional converter (3 – Sat 9 Jan)
- [ ] Hand calculations: $D$, $L$, $C$, ripple for both directions — 📅 Mon 4 Jan
- [ ] Simulink system: half-bridge + battery model + 24 V bus + mode logic (charge / discharge) + closed loop — 📅 Wed 6 Jan
- [ ] LTspice power stage: real MOSFET models, dead time, losses, efficiency — 📅 Thu 7 Jan
- [ ] Tests: buck mode (charge battery), boost mode (supply bus at 75 W), load step, direction change — 📅 Fri 8 Jan
- [ ] Phase 5 README: expected vs Simulink vs LTspice table, plots, what I learned — 📅 **Sat 9 Jan**

### Buffer (10 – Thu 14 Jan)
Exams / catch-up. 🎯 **Semester milestone: tested bidirectional converter simulation.**

### After the semester
- Phase 2 hardware: 12 V → 5 V buck board
- Phase 3 hardware: half-bridge with gate driver
- Phase 5 hardware: PCB in EasyEDA, LM5170 or MCU control

### Gaps to fill from references
- Averaged & small-signal models – Erickson & Maksimović Ch. 7–8
- Type II/III compensation, loop gain – Ch. 9
- Current-mode control – Ch. 12
- Bootstrap: TI SLUA887 · Gate drivers: TI SLUA618
- Power stage: TI SLVA477 (buck), TI SLVA372 (boost)
- Magnetics, PCB layout (hot loop), battery protection (pre-charge, reverse polarity, fusing)
- LM5170 datasheet + EVM user guide

</details>
