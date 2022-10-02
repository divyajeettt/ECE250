t = -5:0.01:5;

r1 = t;
r1(t < 0) = 0;

subplot(3, 1, 1);
plot(t, r1);
title("Performing Time Shifting (advancement and delay) on Ramp Signal");
ylabel("r(t)");
xlim([min(t)-1, max(t)+1]);
ylim([-0.5, 4.5]);
grid();

r2 = t + 2.5;
r2(t+2.5 < 0) = 0;

subplot(3, 1, 2);
plot(t, r2);
ylabel("r(t+a)");
xlim([min(t)-1, max(t)+1]);
ylim([-0.5, 4.5]);
grid();

r3 = t - 2.5;
r3(t-2.5 < 0) = 0;

subplot(3, 1, 3);
plot(t, r3);
ylabel("r(t-a)");
xlabel("t");
xlim([min(t)-1, max(t)+1]);
ylim([-0.5, 4.5]);
grid();

subplot(2, 1, 1);
plot(t, r1);
title("Performing Time Reversal on Ramp Signal");
ylabel("r(t)");
xlim([min(t)-1, max(t)+1]);
ylim([-0.5, 4.5]);
grid();

r_inv = -t;
r_inv(-t < 0) = 0;

subplot(2, 1, 2);
plot(t, r_inv);
ylabel("r(-t)");
xlabel("t");
xlim([min(t)-1, max(t)+1]);
ylim([-0.5, 4.5]);
grid();