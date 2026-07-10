# Gas Sensor AFE ASIC — Team NanoArchitects

**IEEE SSCS Chipathon 2026, Track B** · GF180MCU 180nm CMOS PDK

Dual-modal analog front-end ASIC for simultaneous MOX (metal-oxide) and EC (electrochemical) gas sensing.

| | |
|---|---|
| **EC sensors** | Selective but slow — good for identifying gas type |
| **MOX sensors** | Fast response but lack selectivity — good for real-time detection |
| **Both in parallel** | Enables real-time cross-validation |
| **Target applications** | Industrial toxic-gas detection (CO, H₂S), VOC monitoring, process control |

## Block Diagram

![Block Diagram](docs/images/block_diagram.png)

## Status: All blocks complete ✅

| Block | Status |
|---|---|
| EC TIA | ✅ Complete |
| MOX Integrator + Reset Sw. | ✅ Complete |
| Output Buffers | ✅ Complete |
| Bias Generator | ✅ Complete |
| Comparators | ✅ Complete |

## Key Specifications

### Op-Amp (`opamp_poly`)

| Parameter | Value |
|---|---|
| Open-Loop Gain | 80.3 dB |
| Unity-Gain BW | 154.6 MHz |
| Phase Margin | 70.2° |
| CMRR | 102.8 dB |
| PSRR | 81.9 dB |
| Slew Rate (+/-) | 194.4 / 96.0 V/µs |
| Quiescent Current | 943 µA |

### EC Channel — TIA

| Parameter | Value |
|---|---|
| Open-Loop Gain | 74 dB |
| Phase Margin | 65° (unconditionally stable) |
| Bandwidth | 5 MHz |
| Rf ∥ Cf | 7 kΩ ∥ 9 pF |
| Input Range | 100 nA (2.7995 V) – 373 µA (0.935 V) |
| Full Swing | ≈ 1.865 V, single output, no range switching |

### MOX Channel — Integrator (Methane sensor)

| Parameter | Value |
|---|---|
| Clean-Air Resistance (R0) | 20–70 kΩ |
| Gas-Present Resistance (RS) | 2–20 kΩ @ 5000 ppm methane |
| Integrator Current Range | 14 µA – 500 µA |
| System Parameters | Vp = 1.3 V, ΔV = 0.5 V, Cint = 10 µF |
| Reset Pin | `RESET_INT`, active-high, MCU-controlled |

## Pin Assignment (~15 pads)

![Pin Assignment](docs/images/pin_assignment.png)

## Estimated Die Area

**Total: 0.5 – 0.6 mm²**

---

## Simulation Results

### Op-Amp

| Schematic | Open-Loop Gain (80 dB) | Phase Margin (70°) |
|---|---|---|
| ![Opamp Schematic](docs/images/opamp_schematic.png) | ![Gain](docs/images/opamp_gain.png) | ![PM](docs/images/opamp_phase_margin.png) |

| CMRR (102 dB) | PSRR (81.9 dB) |
|---|---|
| ![CMRR](docs/images/opamp_cmrr.png) | ![PSRR](docs/images/opamp_psrr.png) |

### EC TIA

![TIA Schematic](docs/images/tia_schematic.png)

Linear output verified over 100 nA – 380 µA input range:

![TIA Linearity](docs/images/tia_linearity.png)

Response mapped against gas concentration (Cl₂ sensor) and ADC codes:

| | |
|---|---|
| ![Gas Conc 1](docs/images/tia_gas_concentration_1.png) | ![Gas Conc 2](docs/images/tia_gas_concentration_2.png) |

---

## Repository Structure

```
├── docs/               Project brief (PDF) and images used in this README
├── xschem/             Schematic source files (.sch), one folder per block
├── simulations/         Testbenches, .raw sim data, and generated plots
└── layout/             (in progress) GDS/layout files, DRC/LVS reports
```

## Reproducing Simulations

```bash
# Requires xschem + ngspice installed
cd xschem/opamp
xschem opamp_tb.sch
```

## Team NanoArchitects

- Alaqmar
- Ankith B.
- Rishi Raghav S.
- Shaik Kareena
