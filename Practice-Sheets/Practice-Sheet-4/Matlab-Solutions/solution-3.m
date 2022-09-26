% (a) Signal will be periodic
n = -50:50;
x = cos(2*pi*n/5) .* cos(2*pi*n/7);
stem(n, x);
ylim([-1.1, 1.1]);
xlim([min(n)-1, max(n)+1]);

% (b) Signal will be aperiodic
n = -50:50;
x = sin(pi + 0.2*n);
stem(n, x);
ylim([-1.1, 1.1]);
xlim([min(n)-1, max(n)+1]);