clc; clear;

% Parameters
fs = 44100;          
t = 0:1/fs:5;        

% 1. Clean Signal (pure tone)
freq = 220;          %220 Hz
x_clean = sin(2*pi*freq*t);
% 2. Add noise
noise = 0.4 * randn(size(t));
x_noisy = x_clean + noise;

% 3. Define a Low-Pass Filter (simple moving average)
N = 10;                           % Filter length
h = ones(1, N) / N;               % Normalized box filter

% 4. Apply Convolution (Filtering)
y_filtered = conv(x_noisy, h, 'same');  % Filtered output

% 5. Plot signals (optional)
subplot(3,1,1);
plot(t, x_clean); 
title('Clean Signal'); 
xlim([0 0.02]);
subplot(3,1,2);
plot(t, x_noisy);
title('Noisy Signal');
xlim([0 0.02]);
subplot(3,1,3);
plot(t, y_filtered);
title('Filtered Signal');
xlim([0 0.02]);



