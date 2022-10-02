A = 2;
t1 = -2;
t2 = +2;
T = -6:0.01:+6;

p1 = zeros(length(T), 1);
p1(t1 <= T & T <= t2) = A;
subplot(1, 1, 1);
plot(T, p1);
title("Rectangular Pulse Signal");
xlabel("t");
ylabel("p(t)");
grid();
ylim([-0.1, 2.1]);
xlim([min(T)-1, max(T)+1]);

p2 = zeros(length(T), 1);
p2(t1 <= 2*T & 2*T <= t2) = A;
subplot(1, 1, 1);
plot(T, p2);
title("Rectangular Pulse Signal");
xlabel("t");
ylabel("p(2t)");
grid();
ylim([-0.1, 2.1]);
xlim([min(T)-1, max(T)+1]);

p3 = zeros(length(T), 1);
p3(t1 <= T/2 & T/2 <= t2) = A;
subplot(1, 1, 1);
plot(T, p3);
title("Rectangular Pulse Signal");
xlabel("t");
ylabel("p(t/2)");
grid();
ylim([-0.1, 2.1]);
xlim([min(T)-1, max(T)+1]);

p4 = p1 + p2 + p3;
subplot(1, 1, 1);
plot(T, p4);
title("Signal p4(t)");
xlabel("t");
ylabel("p4(t)");
grid();
ylim([-0.1, 6.1]);
xlim([min(T)-1, max(T)+1]);

subplot(3, 1, 1);
plot(T, p1);
title("Convolution of p1(t) and p4(t)");
ylabel("p1(t)");
grid();
xlim([min(T)-1, max(T)+1]);
ylim([-0.1, 2.1]);

subplot(3, 1, 2);
plot(T, p4);
ylabel("p4(t)");
grid();
xlim([min(T)-1, max(T)+1]);
ylim([-0.1, 6.1]);

subplot(3, 1, 3);
plot(-12:0.01:12, conv(p1, p4));
ylabel("p1(t) * p4(t)");
xlabel("t")
grid();
xlim([min(T)-1, max(T)+1]);
ylim([-300, 4300]);