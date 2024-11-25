fs = 10000; % Sampling frequency
t = 0:1/fs:1; % Time vector (1 second duration)
f = [500, 1000, 1500, 2000]; % Frequencies
x_t = cos(2*pi*f(1)*t) + cos(2*pi*f(2)*t) + cos(2*pi*f(3)*t) + cos(2*pi*f(4)*t);

audiowrite('x_t.wav' , x_t , fs);

subplot(2 , 1 , 1);

% Plot signal
plot(t, x_t);
xlabel('Time (s)');
ylabel('Amplitude');
title('Signal x(t)');

energy_time = sum(x_t .^ 2);

fprintf('Energy in Time Domain is %.4f \n' , energy_time);











