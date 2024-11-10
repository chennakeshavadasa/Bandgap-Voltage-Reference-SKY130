import matplotlib.pyplot as plt
import numpy as np

# Function to read data from a text file
def read_data(filepath):
    try:
        data = np.loadtxt(filepath)
        frequency = data[:, 0]
        gain = data[:, 1]
        phase = data[:, 3]
        
        # Debugging: Print the first few values
        print(f"Data from {filepath} loaded successfully.")
        print("Frequency (first 5):", frequency[:5], "...")
        print("Gain (first 5):", gain[:5], "...")
        print("Phase (first 5):", phase[:5], "...")
        
        return frequency, gain, phase
    except Exception as e:
        print(f"Error reading {filepath}: {e}")
        return None, None, None

# File paths with raw strings
file_tt = r"C:\Users\NITHIN P\OneDrive\Desktop\Projects\BGR\OTA-gain-tt.txt"
file_ss = r"C:\Users\NITHIN P\OneDrive\Desktop\Projects\BGR\OTA-gain-ss.txt"
file_ff = r"C:\Users\NITHIN P\OneDrive\Desktop\Projects\BGR\OTA-gain-ff.txt"

# Read data from each file
freq_tt, gain_tt, phase_tt = read_data(file_tt)
freq_ss, gain_ss, phase_ss = read_data(file_ss)
freq_ff, gain_ff, phase_ff = read_data(file_ff)

# Check if data was read successfully before plotting
if np.any([freq_tt is None, gain_tt is None, phase_tt is None,
           freq_ss is None, gain_ss is None, phase_ss is None,
           freq_ff is None, gain_ff is None, phase_ff is None]):
    print("Error reading data files. Check the file paths and format.")
else:
    # Set up the figure and subplots
    fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(10, 8))

    # Plot Gain for TT, SS, and FF in the first subplot with log scale for frequency
    ax1.plot(freq_tt, gain_tt, label='TT', color='blue')
    ax1.plot(freq_ss, gain_ss, label='SS', color='green')
    ax1.plot(freq_ff, gain_ff, label='FF', color='red')
    ax1.set_xscale('log')  # Set log scale for the x-axis (frequency)
    ax1.set_xlabel("Frequency (Hz)")
    ax1.set_ylabel("Gain (dB)")
    ax1.set_title("Gain vs Frequency")
    ax1.legend()
    ax1.grid(True, which="both", linestyle="--")  # Grid lines on both major and minor ticks

    # Plot Phase for TT, SS, and FF in the second subplot with log scale for frequency
    ax2.plot(freq_tt, phase_tt, label='TT', color='blue')
    ax2.plot(freq_ss, phase_ss, label='SS', color='green')
    ax2.plot(freq_ff, phase_ff, label='FF', color='red')
    ax2.set_xscale('log')  # Set log scale for the x-axis (frequency)
    ax2.set_xlabel("Frequency (Hz)")
    ax2.set_ylabel("Phase (degrees)")
    ax2.set_title("Phase vs Frequency")
    ax2.legend()
    ax2.grid(True, which="both", linestyle="--")  # Grid lines on both major and minor ticks

    # Adjust layout and show plot
    plt.tight_layout()
    plt.show()
