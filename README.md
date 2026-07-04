# NanoArchitects_Chipathon2026
# Gas Sensor AFE ASIC — Team NanoArchitects

**IEEE SSCS Chipathon 2026, Track B** · GF180MCU 180nm CMOS PDK · July 2026

## Overview

Dual-modal analog front-end ASIC for simultaneous MOX (metal-oxide) and EC (electrochemical) gas sensing on GF180MCU.

- **EC sensors** — selective but slow; good for identifying gas type
- **MOX sensors** — fast response but lack selectivity; good for real-time detection
- **Both in parallel** — enables real-time cross-validation

**Target applications:** industrial toxic-gas detection (CO, H₂S), VOC monitoring, process control.

## On-Chip Blocks

| Block | Function |
|---|---|
| EC TIA | Transimpedance amp, Rf = 5 kΩ ∥ 9 pF, Vp = 2.8 V, covers 100 nA – 373 µA in a single stage |
| MOX Integrator | Converts MOX resistance change to a voltage ramp measured by MCU timer; reset via `RESET_INT` before each measurement |
| Output Buffers | Unity-gain buffers for direct ADC drive |
| Bias Generator | On-chip bandgap: Vp = 2.8 V (virtual ground), Vbias = 1.0 V; external override via `VREF_IN` / `EC_VBIAS` |
| Comparators | Alarm output triggered against a user-programmed threshold |

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
| DC Biasing | Vp = 2.8 V, Vbias = 1.0 V |
| Input Range | 100 nA (clean air, 2.7995 V) – 373 µA (heavy load, 0.935 V) |
| Full Swing | ≈ 1.865 V, single output, no range switching |

Target sensor current ratings used for TIA evaluation:

| Gas | Range | Rating | Max Current |
|---|---|---|---|
| H₂S | 0–50 ppm | 2.0 µA/ppm | 100 µA |
| CO | 0–1000 ppm | 0.1 µA/ppm | 102 µA |
| Cl₂ | 0–20 ppm | 1.2 µA/ppm | 24 µA |

> Note: the 7HH H₂S sensor variant exceeds the TIA's 373 µA linear limit and is flagged as out of range.

### MOX Channel — Integrator (Methane sensor)
| Parameter | Value |
|---|---|
| Clean-Air Resistance (R0) | 20–70 kΩ |
| Gas-Present Resistance (RS) | 2–20 kΩ @ 5000 ppm methane |
| Integrator Current Range | 14 µA (clean air) – 500 µA (heavy leak) |
| System Parameters | Vp = 1.3 V, ΔV = 0.5 V, Cint = 10 µF |
| Reset Pin | `RESET_INT`, active-high, MCU-controlled |

### Bias Generator
| Parameter | Value |
|---|---|
| Reference Voltage | 1.2 V bandgap core, scaled to Vp = 2.8 V via resistor divider |
| Supply Voltage | 3.3 V |
| Temp. Coefficient | < 50 ppm/°C |
| Line Regulation | < 1 mV/V |
| Output Noise | < 100 µVRMS (10 Hz – 100 kHz) |
| Power Consumption | < 50 µA |

### Output Buffer Op-Amp
| Parameter | Value |
|---|---|
| GBW | > 5 MHz |
| Slew Rate | > 2 V/µs |
| Input Ibias | < 100 pA |
| Output Swing | Rail-to-rail |
| Settling Time | < 1 µs (0.1%) |

### Comparator
| Parameter | Value |
|---|---|
| Supply Voltage | 3.3 V |
| Reference Voltage | Externally programmed by user |
| Behavior | EC channel only; falling output = rising gas concentration |

## Pin Assignment (~15 pads)

| Pin | Dir | Description |
|---|---|---|
| VDD×2, GND×2 | PWR | 3.3 V supply & ground |
| WE, RE, CE | IN/OUT | EC electrodes |
| MOX_P, MOX_N | IN | MOX sensor terminals |
| VREF_IN | IN | External bias set-points |
| RESET_INT | IN | Integrator reset (active-high) |
| EC_OUT | OUT | EC TIA output (100 nA – 373 µA) |
| MOX_OUT | OUT | MOX integrator ramp output |
| COMP_OUT | OUT | Comparator alarm output |
| COMP_REF | IN | Comparator threshold |

## Estimated Die Area

| Block | Area (mm²) |
|---|---|
| EC TIA | 0.03 – 0.05 |
| MOX Integrator + Reset Sw. | 0.02 – 0.03 |
| Output Buffers | 0.02 – 0.04 |
| Bias Generator | 0.02 – 0.03 |
| Comparators | 0.015 – 0.025 |
| **Total** | **0.5 – 0.6 mm²** |

## Validation

- Op-amp characterized: 80 dB open-loop gain with proper roll-off to UGBW; phase margin 70° at UGBW; CMRR 102 dB; PSRR 81.9 dB.
- EC TIA hardware-tested: linear output over 100 nA – 380 µA; noise simulation completed; linear response verified against gas concentration (Cl₂ sensor) and mapped to ADC codes.

## Progress

| Block | Status |
|---|---|
| EC TIA | ✅ Complete |
| MOX Integrator + Reset Sw. | 🔄 In progress |
| Output Buffers | 🔄 In progress |
| Bias Generator | 🔄 In progress |
| Comparators | 🔄 In progress |

## Team

**NanoArchitects**
- Alaqmar — EC TIA & op-amp gain stage
- Ankith B. — MOX integrator
- Rishi Raghav S. — Output buffer
- Shaik Kareena — Bias generator / PTAT
