% SNR Performance Analysis in Communication Systems

% --- 1. Parameters ---
fs = 1000;            % Sampling frequency (1000 Hz)
t = 0:1/fs:1;         % Time vector (1 second duration)
f_c = 50;             % Carrier frequency (50 Hz)
SNR_values = [10, 5, 0, -5]; % SNR values in dB

% --- 2. Generate Binary Message Signal ---
% Creating a binary sequence (0s and 1s)
message_signal = randi([0 1], 1, length(t));

% --- 3. ASK Modulation ---
% Multiply message by a carrier wave
carrier = sin(2 * pi * f_c * t);
modulated_signal = message_signal .* carrier;

% --- 4. Add Noise and Demodulate ---
figure;
for i = 1:length(SNR_values)
    % Add White Gaussian Noise based on SNR
    received_signal = awgn(modulated_signal, SNR_values(i), 'measured');
    
    % Basic Demodulation (Envelope detection / Rectification)
    % We take the absolute value and compare to a threshold (0.5)
    demodulated_signal = abs(received_signal) > 0.5;
    
    % --- 5. Plotting ---
    subplot(4, 1, i);
    plot(t, received_signal, 'Color', [0.7 0.7 0.7]); % Noise signal in gray
    hold on;
    stem(t, demodulated_signal, 'r', 'Marker', 'none'); % Demodulated in red
    title(['Received & Demodulated Signal at SNR = ', num2 truncated_str(SNR_values(i)), ' dB']);
    xlabel('Time (s)');
    ylabel('Amplitude');
    legend('Received (Noisy)', 'Demodulated');
    grid on;
end

% Adjust layout
sgtitle('Impact of SNR on ASK Demodulation Performance');

function s = num2truncated_str(val)
    s = num2str(val);
end
