signal=[1,4,9,16,25];
impulse=[2,1,0.5];
y_conv=conv(signal, impulse);
y_filter=filter(impulse,1,signal);
y_convn=convn(signal,impulse);

% Plot comparisons
figure;
subplot(3,1,1);
stem(y_conv, 'filled');
title('conv Output');
xlabel('Samples'); ylabel('Amplitude');


subplot(3,1,2);
stem(y_filter, 'filled');
title('filter Output');
xlabel('Samples'); ylabel('Amplitude');


subplot(3,1,3);
stem(y_convn, 'filled');
title('convn Output');
xlabel('Samples'); ylabel('Amplitude');

figure;
plot(y_conv, 'b-o', 'LineWidth', 3, 'DisplayName', 'conv');
hold on;
plot(y_filter, 'k--s', 'LineWidth', 2, 'DisplayName', 'filter');
plot(y_convn, 'g-.', 'LineWidth', 1, 'DisplayName', 'convn');
hold off;
title('Edge Behavior Comparison');
xlabel('Samples'); ylabel('Amplitude');
legend('Location', 'best');
grid on;