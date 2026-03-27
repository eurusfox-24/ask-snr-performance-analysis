# SNR Performance Analysis in Communication Systems

This repository contains a MATLAB simulation that investigates how varying Signal-to-Noise Ratio (SNR) affects the demodulation performance of an Amplitude Shift Keying (ASK) communication system.

## Objective
To understand how different levels of noise influence received signals and the ability to recover digital data (demodulation).

## System Parameters
* **Sampling Frequency (fs):** 1000 Hz
* **Carrier Frequency (f_c):** 50 Hz
* **SNR Values Tested:** 10 dB, 5 dB, 0 dB, and -5 dB
* **Modulation Scheme:** Amplitude Shift Keying (ASK)

## Results and Visualizations
The following screenshot shows the original modulated signal compared against the noisy received and demodulated signals at different SNR levels.

![SNR Analysis Output](Screenshot_27-3-2026_143847_matlab.mathworks.com.jpeg)

## Experiment Steps
1. **Binary Generation:** A random sequence of 0s and 1s is created to represent digital data.
2. **Modulation:** The binary signal is multiplied by a 50 Hz carrier wave (ASK).
3. **Adding Noise:** White Gaussian noise is added to the signal at four specific SNR levels (10, 5, 0, and -5 dB).
4. **Demodulation:** The receiver attempts to recover the original binary bits by checking the amplitude of the noisy signal.

## How to Run
1. Open MATLAB.
2. Run the `snr_performance_analysis.m` script.
3. Observe the four subplots generated to see how the signal degrades as SNR decreases.

## Observations
* **High SNR (10 dB):** The signal is clear, and demodulation is highly accurate.
* **Low SNR (-5 dB):** The noise is stronger than the signal, making it very difficult to distinguish between a "0" and a "1".
