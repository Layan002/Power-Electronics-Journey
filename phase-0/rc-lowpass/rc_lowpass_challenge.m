% RC low-pass solo challenge: R = 2.2 kOhm, C = 470 nF (written from memory)
R = 2.2e3;
C = 470e-9;
tau = R*C;
fc = 1/(2*pi*tau);

s = tf('s');
H = 1/(1+s*R*C);

figure; step(5*H); grid on;
figure; h = bodeplot(H); setoptions(h, 'FreqUnits', 'Hz'); grid on;
