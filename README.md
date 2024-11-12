# Piecewise Compensated High-PSRR-Bandgap-Voltage-Reference

- Piecewise Compensated High PSRR Bandgap Voltage Reference using SKY130PDK. This is done as a course requirement for the Major Project of 7th Sem of my B.Tech<br>
- **Note: If Anyone is interested in doing the layout for this, Please put a pull request**

## Specification
## Specifications – Continued

(V<sub>DDA</sub> = 3.3V, T<sub>J</sub> = 27°C, C<sub>L</sub> = 5pF unless otherwise specified below)

| Parameter                              | Symbol      | Condition                          | Min  | Typ  | Max  | Units |
|----------------------------------------|-------------|------------------------------------|------|------|------|-------|
| Bias Current for Bandgap               | IDDA        | VDDA=3.3, TJ=27°C                 |      | 10   |      | µA    |
| Output Voltage Process Dependence      | VREF(P)     | Over Strong-Weak Corners           | 1.34 | 1.35 | 1.36 | V     |
| Output Voltage Temperature Dependence  | VREF(T)     | Over -40°C ≤ T ≤ 125°C            | 1.34 | 1.35 | 1.36 | V     |
| Output Voltage VDDA Dependence         | VREF(VDDA)  | 1.65 ≤ VDDA ≤ 3.3                 | 1.34 | 1.35 | 1.36 | V     |
| VREF dependence on VDDA                | PSRR        | vref/vdda at 1kHz                 |      | -60  |      | dB    |
| Phase Margin                           | PM          | PM of combined ±feedback loops    |      | 50   |      | Deg   |
| VREF from Start Up Test Bench          | VREF(SU)    | \|1.35 - VREF(SU)\| at 100µs      |      |      | 10   | mV    |

## Circuit
<p align="center">
  <img src="https://github.com/user-attachments/assets/ac01749c-df3c-40ae-bb4a-bb446873f781" alt="Centered Image">
</p>

## First Order BGR
<p align="center">
  <img src="https://github.com/user-attachments/assets/28f56c4c-c6ba-4de6-827e-1b2388376da9" alt="Centered Image">
</p>
