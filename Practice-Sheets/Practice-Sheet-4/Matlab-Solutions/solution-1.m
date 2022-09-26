% (a) Continuous-time Unit Step Signal
t = -10:0.01:10;
ut = zeros(length(t), 1);
ut(t >= 0) =1;
plot(t, ut)
ylim([-0.1, 1.1]);
xlim([min(t)-1, max(t)+1]);

% (b) Discrete-time Unit Step Signal
t = -10:10;
ut = zeros(length(t), 1);
ut(t >= 0) =1;
stem(t, ut)
ylim([-0.1, 1.1]);
xlim([min(t)-1, max(t)+1]);

% (c) Continuous-time Unit Step Signal with time shift
t = -10:0.01:10;
ut = zeros(length(t), 1);
ut(t >= 2) =1;
plot(t, ut)
ylim([-0.1, 1.1]);
xlim([min(t)-1, max(t)+1]);

% (d) Discrete-time Unit Step Signal with time shift
t = -10:10;
ut = zeros(length(t), 1);
ut(t >= 2) =1;
stem(t, ut)
ylim([-0.1, 1.1]);
xlim([min(t)-1, max(t)+1]);