t = -10:0.01:10;
sinc = sin(pi*t) ./ (pi*t);

plot(t, sinc);
title("Normalized Sinc Signal");
ylabel("sinc(t)");
xlabel("t");
xlim([-10.1, 10.1]);
ylim([-0.3, 1.1]);
grid();
