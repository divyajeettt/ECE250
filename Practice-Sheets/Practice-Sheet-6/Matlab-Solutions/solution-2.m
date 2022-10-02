A = 4;
f = 10;
t = -0.1:0.0001:0.10001;
s1 = A * sin(2*pi*f*t);

plot(t, s1);
title("Sinusoid Signal with frequency 10 Hz and Magnitude 4 units");
xlabel("t");
ylabel("s1(t)");
grid();
xlim([-0.115, 0.115]);
ylim([-4.5, 4.5]);

A = 4;
f = 100;
t = -0.1:0.0001:0.10001;
s2 = A * sin(2*pi*f*t);

plot(t, s2);
title("Sinusoid Signal with frequency 100 Hz and Magnitude 4 units");
xlabel("t");
ylabel("s2(t)");
grid();
xlim([-0.115, 0.115]);
ylim([-4.5, 4.5]);

s3 = s1 + s2;
plot(t, s3);
title("s3(t) = s1(t) + s2(t)");
xlabel("t");
ylabel("s3(t)");
grid();
xlim([-0.115, 0.115]);
ylim([-8.5, 8.5]);

s4 = s1 - s2;
plot(t, s4);
title("s4(t) = s1(t) - s2(t)");
xlabel("t");
ylabel("s4(t)");
grid();
xlim([-0.115, 0.115]);
ylim([-8.5, 8.5]);

s5 = s1 .* s2;
plot(t, s5);
title("s5(t) = s1(t) s2(t)");
xlabel("t");
ylabel("s5(t)");
grid();
xlim([-0.115, 0.115]);
ylim([-16, 16]);

subplot(2, 1, 1);

plot(t, s3);
title("s6(t) = s3(t-0.05)");
xlabel("t");
ylabel("s3(t)");
grid();
xlim([-0.115, 0.115]);
ylim([-8.5, 8.5]);

t = -0.1:0.0001:0.10001;
s1 = 4 * sin(2*pi*10 * (t-0.05));
s2 = 4 * sin(2*pi*100 * (t-0.05));
s6 = s1 + s2;

subplot(2, 1, 2);
plot(t, s6);
xlabel("t");
ylabel("s6(t)");
grid();
xlim([-0.115, 0.115]);
ylim([-8.5, 8.5]);