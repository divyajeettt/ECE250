% Discrete-time cosine Signal
n = -25:26;
x = cos(n);
stem(n, x)
ylim([-1.1, 1.1]);
xlim([min(t)-1, max(t)+1])

% Discrete-time cosine Signal with time shift anf scaling
n = -25:26;
x = cos(0.25*n  - 5);
stem(n, x)
ylim([-1.1, 1.1]);
xlim([min(t)-1, max(t)+1])