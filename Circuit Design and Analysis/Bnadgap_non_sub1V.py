import math

# ---- Physical constants ----
k = 1.380649e-23      # Boltzmann constant
q = 1.602176634e-19   # Electron charge

# ---- User Inputs ----
R = float(input("Enter resistor value R (Ohms): "))
N = float(input("Enter emitter area ratio N: "))
T_celsius = float(input("Enter temperature (°C): "))

# ---- Convert temperature ----
T = T_celsius + 273.15   # Convert to Kelvin

# ---- Thermal voltage ----
Vt = (k * T) / q

# ---- Delta Vbe ----
deltaVbe = Vt * math.log(N)

# ---- PTAT current ----
Iptat = deltaVbe / R

# ---- Display results ----
print(f"Thermal Voltage Vt = {Vt:.6f} V")
print(f"Delta Vbe = {deltaVbe:.6f} V")
print(f"PTAT Current = {Iptat*1e6:.6f} µA")
