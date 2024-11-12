# Importing necessary libraries
import math

# Constants
Vt = 26.38953e-3  # Thermal voltage in volts
dvbedt = -1.71313e-3  # Change in Vbe with temperature in volts per degree
dvtdt = 8.888286e-5  # Change in Vt with temperature in volts per degree
Vbe = 0.74029  # Base-emitter voltage in volts
ln8 = math.log(8)  # Natural log of 8

# Get user inputs for I_bias and Vref
Ibias = float(input("Enter the value of Ibias (in Amps): "))
Vref = float(input("Enter the desired Vref (in Volts): "))

# Calculations
R1 = Vt * ln8 / Ibias
R3 = -(R1 / ln8) * (dvbedt / dvtdt)
Vbe_R3 = Vbe / R3
Vbe_R3_uA = Vbe_R3 * 1e6  # Convert Vbe / R3 from A to µA
Ibias_plus_Vbe_R3 = Ibias + Vbe_R3  # Sum of Ibias and Vbe / R3 in Amps
Itotal_uA = Ibias_plus_Vbe_R3 * 1e6  # Convert Itotal from A to µA
R3_half = R3 / 2  # Calculate R3/2

# Calculate R10 required to achieve the desired Vref
R10 = Vref / Ibias_plus_Vbe_R3  # R10 in Ohms

# Display results
print(f"R1 = {R1:.12f} Ohms")
print(f"R3 = {R3:.12f} Ohms")
print(f"IR3 = {Vbe_R3_uA:.12f} µA")
print(f"Itotal = {Itotal_uA:.12f} µA")
print(f"R3 / 2 = {R3_half:.12f} Ohms")
print(f"R10 = {R10:.12f} Ohms to achieve Vref = {Vref} Volts")
