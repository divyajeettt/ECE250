t = -1:0.001:1;

s1 = 5 * sin(2*pi*1*t);
s2 = 10 * sin(2*pi*2*t);

subplot(3, 1, 1);
plot(t, s1);
title("Convolution of Sinusoidal Signals");
ylabel("5 sin(2πt)");
xlim([-1.1, 1.1]);
ylim([-5.1, 5.1]);

subplot(3, 1, 2);
plot(t, s2);
ylabel("10 sin(4πt)");
xlim([-1.1, 1.1]);
ylim([-10.1, 10.1]);

subplot(3, 1, 3);
plot(-2:0.001:2, conv(s1, s2));
ylabel("5sin(2πt) * 10sin(4πt)");
xlabel("t");
xlim([-2.1, 2.1]);
ylim([-6000, 6000]);