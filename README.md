# Piecewise Compensated High-PSRR-Bandgap-Voltage-Reference

- Piecewise Compensated High PSRR Bandgap Voltage Reference using SKY130PDK. This is done as a course requirement for the Major Project of 7th Sem of my B.Tech<br>
- **Note: If Anyone is interested in doing the layout for this, Please put a pull request**

## Specification
(V<sub>DDA</sub> = 3.3V, T<sub>J</sub> = 27°C, C<sub>L</sub> = 5pF unless otherwise specified below)

| Parameter                              | Symbol      | Condition                          | Min  | Typ  | Max  | Units |
|----------------------------------------|-------------|------------------------------------|------|------|------|-------|
| Bias Current for Bandgap               | IDDA        | VDDA=3.3, TJ=27°C                 |      | 10   |      | µA    |
| Output Voltage Process Dependence      | VREF(P)     | Over Strong-Weak Corners          | 0.665| 0.675| 0.685| V     |
| Output Voltage Temperature Dependence  | VREF(T)     | Over -40°C ≤ T ≤ 125°C            | 0.665| 0.675| 0.685| V     |
| Output Voltage VDDA Dependence         | VREF(VDDA)  | 1.65 ≤ VDDA ≤ 3.3                 | 0.665| 0.675| 0.685| V     |
| VREF dependence on VDDA                | PSRR        | vref/vdda at 1kHz                 |      | -60  |      | dB    |
| Phase Margin                           | PM          | PM of combined ±feedback loops    |      |  50  |      | Deg   |
<!--| VREF from Start Up Test Bench          | VREF(SU)    | \|1.35 - VREF(SU)\| at 100µs      |      |      | 10   | mV    | -->

## Circuit
<p align="center">
  <img src="https://github.com/user-attachments/assets/ac01749c-df3c-40ae-bb4a-bb446873f781" alt="Centered Image">
</p>

##  BGR
- First Order Curvature Corrected Bandgap Reference Schematic
<p align="center">
  <img src="https://github.com/user-attachments/assets/28f56c4c-c6ba-4de6-827e-1b2388376da9" alt="Centered Image">
</p>

## OTA  
- Schematic of the OTA used in the BGR
<p align="center">
  <img src="https://github.com/user-attachments/assets/36fe670e-0ca6-461a-afab-647a8153d8c8" alt="Centered Image">
</p>
### Stability Analysis across different Process corners
   #### Typical (tt)
    <p align="center">
      <img src="https://github.com/user-attachments/assets/e32bb8fe-b826-46df-8414-90f43c41c672" alt="Centered Image">
    </p>
    <p align="center">
      <img src="https://github.com/user-attachments/assets/432ec8d8-2ebc-4f98-853f-0a7bccb4009e" alt="Centered Image">
    </p>


