% x(t): Signal given for Question 4

% Plot x(t)
T = -5:0.01:5.01;
x1 = zeros(length(T), 1);
x1(-1 <= T & T <= 0) = 1;
x1(0 <= T & T <= 1) = T(0 <= T & T <= 1);
x1(1 <= T & T <= 2) = 1;

% Plot x(1 - t/2)
t = 1 - T/2;
x2 = zeros(length(t), 1);
x2(-1 <= t & t <= 0) = 1;
x2(0 <= t & t <= 1) = t(0 <= t & t <= 1);
x2(1 <= t & t <= 2) = 1;

subplot(2, 1, 1);
plot(T, x1);
ylim([-0.1, 1.1]);
xlim([min(T)-1, max(T)+1]);

subplot(2, 1, 2);
plot(T, x2);
ylim([-0.1, 1.1]);
xlim([min(T)-1, max(T)+1]);