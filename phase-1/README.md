# Phase 1 – Converter Theory

Part of **Power-Electronics-Journey** → goal: a bidirectional buck-boost converter
(12 V battery ⇄ 24 V bus, 50–100 W).

**Status:** 🟡 Started in parallel with Phase 0 (2 Nov 2026)
**Deadline:** 📅 **Sat 5 Dec 2026**
**Topics:** buck, boost, buck-boost, volt-second balance, charge balance, CCM / DCM

---

## How to run this phase in parallel with Phase 0

| Period | What | Load |
|---|---|---|
| 2 – 14 Nov | **Part A – the "why" and the maths behind switching** (one short video a day next to Phase 0) | ~20–30 min/day |
| 15 Nov – 5 Dec | **Part B – the three converters**, each one followed immediately by its Simulink video | full study time |

Rule: watch a theory video → write the key equation in your notebook → build it in Simulink the same week.

**Playlists**
- **W** = Walid Issa – *Power Electronics – SHU 2022* ([channel](https://www.youtube.com/@WalidIssaPlusE)). Numbers = the number in the video title.
- **F-PE** = Dr. Abdelrahman Farghly – *Power electronics course | كورس باور الكترونكس* ([channel](https://www.youtube.com/channel/UCpNugDAmUviEhVD-Zg05H9A)). Numbers = position in the playlist.
- **F-DC** = Dr. Abdelrahman Farghly – [DC-DC converters (Simulink)](https://www.youtube.com/playlist?list=PLUSE6w0Kh7fLtgNL8A1PfdxQ6B8mwwaNj).

> 🔎 = a YouTube search link (I couldn't confirm the exact video link). The right video is the one
> from the named channel with that exact title.

---

## Part A – Why switching, RMS & AVG, choppers (2 – 14 Nov, parallel with Phase 0)

- [ ] 📅 Mon 2 Nov – W01 [What is Power Electronics](https://www.youtube.com/watch?v=Bc2kupaGdMA) (15 min)
- [ ] 📅 Tue 3 Nov – W03 [Why Power Electronics 🔎](https://www.youtube.com/results?search_query=Walid+Issa+Plus+03+Why+Power+Electronics) (17 min)
- [ ] 📅 Wed 4 Nov – W04 [Linear operation in Power Electronics 🔎](https://www.youtube.com/results?search_query=Walid+Issa+Plus+04+Linear+operation+in+Power+Electronics) (16 min)
- [ ] 📅 Wed 4 Nov – W05 [Switched operation in Power Electronics 🔎](https://www.youtube.com/results?search_query=Walid+Issa+Plus+05+Switched+operation+in+Power+Electronics) (11 min)
- [ ] 📅 Thu 5 Nov – W07 [What is the Importance of RMS and AVG values](https://www.youtube.com/watch?v=DxlVovHcZng) (17 min)
- [ ] 📅 Fri 6 Nov – W08 [Waveform computations in Power Electronics 🔎](https://www.youtube.com/results?search_query=Walid+Issa+Plus+08+Waveform+computations+in+Power+Electronics) (12 min)
- [ ] 📅 Sat 7 Nov – W09 [RMS calculations for different Power Electronics waveforms](https://www.youtube.com/watch?v=EJODnbCdfvc) (31 min)
- [ ] 📅 Sun 8 Nov – F-PE #31 [Introduction to choppers 🔎](https://www.youtube.com/results?search_query=Abdelrahman+Farghly+Introduction+to+choppers) (26 min)
- [ ] 📅 Mon 9 Nov – F-PE #32 [Chopper continuous and critical conduction mode 🔎](https://www.youtube.com/results?search_query=Abdelrahman+Farghly+Chopper+continuous+and+critical+conduction+mode) (31 min)
- [ ] 📅 Tue 10 Nov – F-PE #33 [Chopper discontinuous conduction mode 🔎](https://www.youtube.com/results?search_query=Abdelrahman+Farghly+Chopper+discontinuous+conduction+mode) (25 min)
- [ ] 📅 Wed 11 Nov – W06 [LTSpice for Linear VS Switched operation 🔎](https://www.youtube.com/results?search_query=Walid+Issa+Plus+06+LTSpice+for+Linear+VS+Switched+operation) (20 min) *(after LTspice Lab 1 in Phase 0)*
- [ ] 📅 Thu 12 Nov – W10 [LTSpice for RMS and Power Dissipation calculation](https://www.youtube.com/watch?v=s387QIWsTI8) (16 min)

*Fri 13 – Sat 14 Nov: no Phase 1 work. Finish the Phase 0 mini-project.*

---

## Part B – Buck, boost, buck-boost (15 Nov – 5 Dec)

### Practice + volt-second balance
- [ ] 📅 Sun 15 Nov – [Power Electronics Problem Set 1a](https://www.youtube.com/watch?v=3LgtBrxj7qs) (28 min)
- [ ] 📅 Mon 16 Nov – [Power Electronics Problem Set 1b 🔎](https://www.youtube.com/results?search_query=Walid+Issa+Plus+Power+Electronics+Problem+Set+1b) (24 min)
- [ ] 📅 Tue 17 Nov – Read Erickson & Maksimović, *Fundamentals of Power Electronics*, **Ch. 2** (volt-second balance, charge balance, small-ripple approximation). Write section 3.1 below in your own words.

### Buck
- [ ] 📅 Thu 19 Nov – W29 [Buck Converter Introductory Basics](https://www.youtube.com/watch?v=0vFbq0YkEIY) (23 min)
- [ ] 📅 Thu 19 Nov – W30 [Buck Converter Analysis](https://www.youtube.com/watch?v=npknKZyTtuk) (19 min)
- [ ] 📅 Sat 21 Nov – W31 [Buck Converter Design](https://www.youtube.com/watch?v=BgMt1kJTQfE) (22 min)
- [ ] 📅 Sat 21 Nov – W32 [Buck DC/DC Converters Design Considerations](https://www.youtube.com/watch?v=ZmRbyrRqsgo) (34 min)
- [ ] 📅 Sun 22 Nov – F-DC #1 [Buck converter MATLAB Simulink](https://www.youtube.com/watch?v=fbHfXH_gVJ0) (24 min) → build it
- [ ] *(Optional second explanation)* F-PE #35 [Buck converter (Step-down chopper) 🔎](https://www.youtube.com/results?search_query=Abdelrahman+Farghly+Buck+converter+Step-down+chopper), F-PE #36 [Buck converter with LC filter 🔎](https://www.youtube.com/results?search_query=Abdelrahman+Farghly+Buck+converter+with+LC+filter)

### Boost
- [ ] 📅 Tue 24 Nov – W33 [Boost Converter Analysis and Design](https://www.youtube.com/watch?v=fm-gFfG1Xkw) (21 min)
- [ ] 📅 Tue 24 Nov – F-DC #4 [Boost converter MATLAB Simulink](https://www.youtube.com/watch?v=4YMI-utynPo) (14 min) → build it
- [ ] *(Optional)* F-PE #37 [Boost converter 🔎](https://www.youtube.com/results?search_query=Abdelrahman+Farghly+Boost+converter)

### Buck-boost
- [ ] 📅 Thu 26 Nov – W34 [Buck-Boost Converter Analysis and Design](https://www.youtube.com/watch?v=BYcNJOQUdkY) (25 min)
- [ ] 📅 Thu 26 Nov – F-DC #9 [Non-inverting buck-boost converter MATLAB Simulink](https://www.youtube.com/watch?v=38CD-u-VVH0) (12 min) → build it
- [ ] *(Optional)* F-PE #38 [Buck-boost converter 🔎](https://www.youtube.com/results?search_query=Abdelrahman+Farghly+Buck-boost+converter), F-DC #10 [Inverting buck-boost](https://www.youtube.com/watch?v=IjZtCPIK7hY)

### Wrap-up
- [ ] 📅 Sat 28 Nov – F-DC #5 [Buck and Boost converter fast configuration](https://www.youtube.com/watch?v=VxZaKi6zlS8) (17 min)
- [ ] 📅 Sat 28 Nov – [Power Electronics Problem Set 3 🔎](https://www.youtube.com/results?search_query=Walid+Issa+Plus+Power+Electronics+Problem+set+3) (30 min)
- [ ] 📅 Mon 30 Nov – Erickson **Ch. 5** (DCM): read the boundary condition and the buck DCM example
- [ ] 📅 Tue 1 – Thu 3 Dec – Mini-project (section 4)
- [ ] 📅 **Sat 5 Dec – DEADLINE:** results table, summary, what I learned; commit

---

## 3. Theory notes

### 3.1 Volt-second balance and charge balance

In **steady state**, everything repeats every switching period $T_s$, so the inductor current and
capacitor voltage end each period where they started.

Inductor: $v_L = L\,\dfrac{di_L}{dt}$. Over one period the net change in $i_L$ is zero, so

$$\langle v_L \rangle = \frac{1}{T_s}\int_0^{T_s} v_L(t)\,dt = 0 \qquad \text{(volt-second balance)}$$

Capacitor: $i_C = C\,\dfrac{dv_C}{dt}$, and by the same argument

$$\langle i_C \rangle = \frac{1}{T_s}\int_0^{T_s} i_C(t)\,dt = 0 \qquad \text{(charge balance)}$$

These two rules give you the conversion ratio of **every** converter.

**Example – buck:**
- Switch ON for $DT_s$: $v_L = V_{in} - V_{out}$
- Switch OFF for $(1-D)T_s$: $v_L = -V_{out}$

$$(V_{in} - V_{out})\,D + (-V_{out})(1-D) = 0 \;\Rightarrow\; V_{out} = D\,V_{in}$$

### 3.2 Summary of the three converters (ideal, CCM)

| | Buck | Boost | Buck-boost (inverting) |
|---|---|---|---|
| $M(D) = V_{out}/V_{in}$ | $D$ | $\dfrac{1}{1-D}$ | $-\dfrac{D}{1-D}$ |
| Inductor ripple $\Delta i_L$ (peak-to-peak) | $\dfrac{(V_{in}-V_{out})\,D}{L f_s}$ | $\dfrac{V_{in}\,D}{L f_s}$ | $\dfrac{V_{in}\,D}{L f_s}$ |
| Average inductor current | $I_{out}$ | $I_{in} = \dfrac{I_{out}}{1-D}$ | $\dfrac{I_{out}}{1-D}$ |
| Output ripple $\Delta v_{out}$ (peak-to-peak) | $\dfrac{\Delta i_L}{8 C f_s}$ | $\dfrac{I_{out}\,D}{C f_s}$ | $\dfrac{I_{out}\,D}{C f_s}$ |
| CCM if $L >$ | $\dfrac{(1-D)R}{2f_s}$ | $\dfrac{D(1-D)^2 R}{2f_s}$ | $\dfrac{(1-D)^2 R}{2f_s}$ |

### 3.3 CCM vs DCM
- **CCM (continuous conduction mode):** the inductor current never reaches zero. $M(D)$ depends only on $D$.
- **Boundary (critical):** the inductor current just touches zero at the end of each period, i.e. $I_L = \Delta i_L / 2$.
- **DCM (discontinuous):** the current stays at zero for part of the period. $M$ then also depends on the load, $L$ and $f_s$, so the formulas above no longer hold.
- For your bidirectional converter you'll design for **CCM at the rated power**. The inductor current is then allowed to go negative (reverse power flow), which you'll see in Phase 3.

---

## 4. Phase 1 mini-project: both directions of the final converter

Use the same numbers as your final project, so this phase already sizes your real inductor.
**Assumptions:** $P = 50\ \text{W}$, $f_s = 100\ \text{kHz}$, inductor ripple 30 %, output ripple 1 %.

### 4.1 Buck mode (24 V bus → 12 V battery side)

$$D = \frac{V_{out}}{V_{in}} = \frac{12\ \text{V}}{24\ \text{V}} = 0.5$$

$$I_{out} = \frac{P}{V_{out}} = \frac{50\ \text{W}}{12\ \text{V}} \approx 4.17\ \text{A}, \qquad R = \frac{V_{out}}{I_{out}} = 2.88\ \Omega$$

$$\Delta i_L = 0.3 \times 4.17\ \text{A} \approx 1.25\ \text{A}$$

$$L = \frac{(V_{in}-V_{out})\,D}{f_s\,\Delta i_L} = \frac{(12\ \text{V})(0.5)}{(100\ \text{kHz})(1.25\ \text{A})} = 48\ \mu\text{H}$$

$$C = \frac{\Delta i_L}{8 f_s \Delta v_{out}} = \frac{1.25\ \text{A}}{8\,(100\ \text{kHz})(0.12\ \text{V})} \approx 13\ \mu\text{F}$$

### 4.2 Boost mode (12 V battery → 24 V bus)

$$D = 1 - \frac{V_{in}}{V_{out}} = 1 - \frac{12\ \text{V}}{24\ \text{V}} = 0.5$$

$$I_{out} = \frac{50\ \text{W}}{24\ \text{V}} \approx 2.08\ \text{A}, \quad R = 11.52\ \Omega, \quad I_L = I_{in} = \frac{50\ \text{W}}{12\ \text{V}} \approx 4.17\ \text{A}$$

$$L = \frac{V_{in}\,D}{f_s\,\Delta i_L} = \frac{(12\ \text{V})(0.5)}{(100\ \text{kHz})(1.25\ \text{A})} = 48\ \mu\text{H}$$

$$C = \frac{I_{out}\,D}{f_s\,\Delta v_{out}} = \frac{(2.08\ \text{A})(0.5)}{(100\ \text{kHz})(0.24\ \text{V})} \approx 43\ \mu\text{F}$$

> 💡 **Key insight:** the **same 48 µH inductor** works in both directions. The inductor always
> sits on the 12 V side and carries the same ~4.17 A, whichever way power flows. That is exactly
> why one half-bridge + one inductor can be a buck one way and a boost the other way.

### 4.3 Tasks
- [ ] Check every number above by hand in your notebook
- [ ] MATLAB script `phase1_params.m`: compute $D$, $L$, $C$, $L_{crit}$ for both modes
- [ ] Simulink: buck 24 → 12 V with $L = 48\ \mu\text{H}$, $C = 13\ \mu\text{F}$ (use 22 µF, a standard value), $R = 2.88\ \Omega$
- [ ] Simulink: boost 12 → 24 V with $L = 48\ \mu\text{H}$, $C = 43\ \mu\text{F}$ (use 47 µF), $R = 11.52\ \Omega$
- [ ] Measure $V_{out}$, $\Delta i_L$, $\Delta v_{out}$ and fill in the table
- [ ] Increase $R$ until the inductor current touches zero, and compare with $L_{crit}$ (≈ 7.2 µH at rated load in both modes, so DCM starts at much lighter loads)

### 4.4 Results

| Quantity | Buck – hand calc | Buck – Simulink | Boost – hand calc | Boost – Simulink |
|---|---|---|---|---|
| $D$ | 0.5 | | 0.5 | |
| $V_{out}$ | 12 V | | 24 V | |
| $I_L$ (average) | 4.17 A | | 4.17 A | |
| $\Delta i_L$ | 1.25 A | | 1.25 A | |
| $\Delta v_{out}$ | 0.12 V | | 0.24 V | |

*Note: with the standard capacitor values (22 µF and 47 µF), the simulated ripple will be a bit smaller than the hand-calc value. Explain why in your summary.*

*Add screenshots to `phase-1/images/`.*

---

## 5. What the videos skip (fill from references)
- **Volt-second and charge balance as a general method.** The videos derive each converter separately. Erickson Ch. 2 shows the one method that works for all of them.
- **DCM conversion ratio.** Only touched briefly. Erickson Ch. 5.
- **Non-ideal effects:** inductor resistance and switch on-resistance limit the boost gain at high $D$. Erickson Ch. 3.
- **Synchronous (two-switch) operation** and negative inductor current come in Phase 3.

---

## 6. Summary
*(Write in your own words when the phase is finished.)*

## 7. What I learned
-

## 8. Problems I ran into and how I solved them
-

---

## 9. Safety note
Phase 1 is simulation only. Note already that the boost output can reach very high voltage if the
load is disconnected: with no load, the energy from the inductor has nowhere to go. In hardware
(Phase 2 onward) never run a boost converter open-loop without a load, and always use a
current-limited bench supply and a fuse.
