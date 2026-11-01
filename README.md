# Power-Electronics-Journey

My path to designing and building a **bidirectional buck-boost DC-DC converter**
(12 V battery ⇄ 24 V bus, 50–100 W): modelled in MATLAB/Simulink, verified in LTspice, then built on a PCB.

Runs in parallel with my Electricity Diploma: [Layan002/Electricity-Diploma](https://github.com/Layan002/Electricity-Diploma).

## Workflow for every circuit
Hand calculation → Simulink → LTspice → real measurement, then compare expected vs. simulated vs. measured.

## Roadmap

| Phase | Topic | Folder | Status | Deadline |
|---|---|---|---|---|
| 0 | Foundations: MATLAB/Simulink/Simscape Onramps, LTspice, Laplace & Bode | [phase-0](phase-0/) | 🟡 In progress | 14 Nov 2026 |
| 1 | Converter theory: buck, boost, buck-boost, volt-second balance, CCM/DCM | [phase-1](phase-1/) | 🟡 Started (parallel with Phase 0) | 5 Dec 2026 |
| 2 | First buck converter (12 V → 5 V, ~1 A), losses, MOSFETs | — | ⚪ Not started | 19 Dec 2026 (sim) |
| 3 | Half-bridge: sync rectification, reverse power flow, dead time, gate drivers | — | ⚪ Not started | **12 Dec 2026** (open-loop sim, done before Phase 2) |
| 4 | Control: averaged models, PI & Type II compensation, current mode | — | ⚪ Not started | 2 Jan 2027 |
| 5 | Full bidirectional converter (Simulink, LTspice, PCB, LM5170 / MCU control) | — | ⚪ Not started | 9 Jan 2027 (sim) |

⚡ **12 Dec 2026:** open-loop bidirectional converter working in Simulink.
🎯 **Semester milestone (14 Jan 2027):** tested simulation of the bidirectional converter. Hardware follows after the semester.

## Main resources
- **Main course:** Walid Issa – *Power Electronics – SHU 2022* (YouTube)
- **Simulink companion:** Dr. Abdelrahman Farghly – [DC-DC converters](https://www.youtube.com/playlist?list=PLUSE6w0Kh7fLtgNL8A1PfdxQ6B8mwwaNj)
- **References:** Erickson & Maksimović, *Fundamentals of Power Electronics*; TI and Analog Devices application notes

The full course map with deadlines is in [phase-0/README.md](phase-0/README.md).

## Tools
MATLAB/Simulink + Simscape Electrical · LTspice · Circuit Wizard · EasyEDA (PCB)
