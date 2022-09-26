% x(t): Signal given for Question 6
theta = pi / 2;
C = 2;
a = 0.2;
b = 3;
t = -1:0.1:26.6;
x = C * exp(1j*theta) * exp((a + 1j*b) * t);

subplot(2, 1, 1);
plot(t, real(x));
xlim([min(t)-1, max(t)+1]);

subplot(2, 1, 2);
plot(t, imag(x));
xlim([min(t)-1, max(t)+1]);