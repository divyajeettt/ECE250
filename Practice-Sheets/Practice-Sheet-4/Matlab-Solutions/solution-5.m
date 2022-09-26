% x[n]: Signal given for Question 5
n = (-10:26)';
u = zeros(length(n), 1);
u(n >= 0) = 1;
expn = exp(-n/4);
x = u .* expn;
stem(n, x);
ylim([-0.1, 1.1]);
xlim([min(n)-1, max(n)+1]);

N = (-20:20)';
u = zeros(length(N), 1);
u (N >= 0) = 1;
expn = exp(-N/4);
u_in = zeros(length(N), 1);
u_in(-N >= 0) = 1;
expn_in = exp(N/4);
x = u .* expn;
x_in = u_in .* expn_in;

% Plot Odd{x[n]} and Even{x[n]}
oddX = (x - x_in) / 2;
evenX = (x + x_in) / 2;

subplot(2, 1, 1);
stem(N, oddX);
ylim([-0.425, 0.425]);
xlim([min(N)-1, max(N)+1]);

subplot(2, 1, 2);
stem(N, evenX);
ylim([-0.1, 1.1]);
xlim([min(N)-1, max(N)+1]);