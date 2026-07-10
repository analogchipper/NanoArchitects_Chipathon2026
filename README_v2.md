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
| Bias Generator (BGR) | ✅ Complete |
| Comparators | ✅ Complete |

## Key Specifications

### Op-Amp (`opamp_poly`)

📄 [Full Datasheet (PDF)](docs/datasheets/OPAMP_Datasheet.pdf)

| Parameter | Value |
|---|---|
| Open-Loop Gain | 80.3 dB |
| Unity-Gain BW | 154.6 MHz |
| Phase Margin | 70.2° |
| CMRR | 102.8 dB |
| PSRR | 81.9 dB |
| Slew Rate (+/-) | 194.4 / 96.0 V/µs |
| Input Common-Mode Range | 38 mV – 3.06 V |
| Output Swing | 0 V – 3.23 V @ VDD = 3.3 V |
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

### Bias Generator (BGR)

| Parameter | Value |
|---|---|
| Reference Voltage | 1.2 V bandgap core, scaled to Vp = 2.8 V |
| Supply Voltage | 3.3 V |
| Temp. Coefficient | < 50 ppm/°C |
| Power Consumption | < 50 µA |

## Pin Assignment (~15 pads)

![Pin Assignment](docs/images/pin_assignment.png)

## Estimated Die Area

**Total: 0.5 – 0.6 mm²**

---

## Simulation Results

### Op-Amp

| Schematic | AC Bode (Gain 80 dB) | Phase Margin (70°) |
|---|---|---|
| ![Opamp Schematic](docs/images/opamp_schematic.png) | ![AC Bode](docs/images/OpAmp_ACBode.png) | ![Phase](docs/images/OpAmp_Phase.png) |

| CMRR (102 dB) | PSRR (81.9 dB) | ICMR |
|---|---|---|
| ![CMRR](docs/images/OpAmp_CMRR.png) | ![PSRR](docs/images/OpAmp_PSRR.png) | ![ICMR](docs/images/OpAmp_ICMR.png) |

**Slew Rate:** rising SR = 194.4 V/µs, falling SR = 96.0 V/µs — asymmetry expected due to sourcing/sinking drive imbalance in the output stage (confirmed against datasheet).

![Slew Rate](docs/images/OpAmp_slew.png)

### EC TIA

![TIA Schematic](docs/images/tia_schematic.png)

AC response and DC linearity:

| AC Bode | DC Sweep (Vout vs Iin) |
|---|---|
| ![TIA AC Bode](docs/images/TIA_acbode.png) | ![TIA DC Sweep](docs/images/TIA_DCsweep_OutVsCurrentInput.png) |

Input/output noise spectrum:

| Input-Referred Noise | Output Noise |
|---|---|
| ![Input Noise](docs/images/TIA_inputnoiseSpectrum.png) | ![Output Noise](docs/images/TIA_outputnoiseSpectrum.png) |

Gas response (CO sensor): current vs. ppm, and ppm vs. ADC code:

| Current vs. ppm | ppm vs. ADC code |
|---|---|
| ![Current vs ppm](docs/images/TIA_currentvsppm_COsensor.png) | ![ppm vs ADC](docs/images/TIA_ppmvsadccode_COsensor.png) |

### Bias Generator (BGR)

![BGR U-curve](docs/images/BGR_Ucurve.png)

---

## Repository Structure

```
├── docs/
│   ├── datasheets/      Component datasheets (PDF)
│   └── images/          Diagrams and simulation plots used in this README
├── xschem/              Schematic source files (.sch, .sym), one folder per block
│   ├── opamp/
│   ├── ec_tia/
│   ├── bgr/
│   ├── mox_integrator/
│   ├── output_buffer/
│   └── comparator/
├── simulations/          Testbenches and .raw sim data
└── layout/               (in progress) GDS/layout files, DRC/LVS reports
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
