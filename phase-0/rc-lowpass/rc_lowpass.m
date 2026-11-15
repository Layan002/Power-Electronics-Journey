%% RC Low-Pass Filter: time constant, cutoff frequency, Bode plot, step response
% Phase 0 - Foundations | Task 3.2
% Power-Electronics-Journey
%
% Circuit: Vin --- R ---+--- Vout
%                       |
%                       C
%                       |
%                      GND
%
% H(s) = Vout/Vin = 1 / (1 + s*R*C)

clear; clc; close all;

%% 1) Component values (change these to match your circuit)
R   = 1e3;      % Resistance  [ohm]  -> 1 kOhm
C   = 1e-6;     % Capacitance [F]    -> 1 uF
Vin = 5;        % Step amplitude [V]

%% 2) Hand-calculation values
tau = R*C;                 % Time constant [s]
fc  = 1/(2*pi*tau);        % Cutoff frequency [Hz]
wc  = 2*pi*fc;             % Cutoff frequency [rad/s]

fprintf('===== RC Low-Pass Filter =====\n');
fprintf('R   = %.0f ohm\n', R);
fprintf('C   = %.2e F\n', C);
fprintf('tau = %.4f ms\n', tau*1e3);
fprintf('fc  = %.2f Hz  (wc = %.1f rad/s)\n', fc, wc);

%% 3) Transfer function
s = tf('s');
H = 1/(1 + s*tau);
disp('Transfer function H(s):');
H

%% 4) Check gain and phase exactly at fc
Hjw       = freqresp(H, wc);             % complex value of H(j*wc)
gain_dB   = 20*log10(abs(Hjw));
phase_deg = angle(Hjw)*180/pi;
fprintf('At fc: |H| = %.4f  (%.2f dB),  phase = %.2f deg\n', ...
        abs(Hjw), gain_dB, phase_deg);

%% 5) Bode plot (frequency axis in Hz)
fig1 = figure('Name','Bode Plot','Color','w');
opts = bodeoptions;
opts.FreqUnits  = 'Hz';
opts.Grid       = 'on';
opts.Title.String = sprintf('Bode Plot of RC Low-Pass (R = %g \\Omega, C = %g F, f_c = %.1f Hz)', R, C, fc);
bodeplot(H, {2*pi*1, 2*pi*1e5}, opts);   % 1 Hz to 100 kHz

% Mark fc on magnitude and phase axes
ax = findobj(fig1, 'Type', 'axes');      % ax(2) = magnitude, ax(1) = phase
hold(ax(2), 'on');
plot(ax(2), fc, gain_dB, 'ro', 'MarkerFaceColor', 'r');
text(ax(2), fc*1.3, gain_dB, sprintf('  f_c = %.1f Hz, %.2f dB', fc, gain_dB));
hold(ax(1), 'on');
plot(ax(1), fc, phase_deg, 'ro', 'MarkerFaceColor', 'r');
text(ax(1), fc*1.3, phase_deg, sprintf('  %.1f°', phase_deg));

%% 6) Step response with a 5 V step
t_end = 6*tau;
t = linspace(0, t_end, 1000);
vout = Vin * step(H, t);                 % scale unit step by 5 V

vout_tau = Vin*(1 - exp(-1));            % theoretical value at t = tau
vout_tau_sim = interp1(t, vout, tau);    % value read from the simulation
fprintf('vout(tau): theory = %.3f V,  MATLAB = %.3f V\n', vout_tau, vout_tau_sim);

fig2 = figure('Name','Step Response','Color','w');
plot(t*1e3, vout, 'b', 'LineWidth', 1.5); hold on; grid on;
yline(Vin, 'k--', sprintf('%g V', Vin));
yline(vout_tau, 'r:', '63.2 %');
xline(tau*1e3, 'r:', '\tau', 'LabelOrientation', 'horizontal', 'LabelVerticalAlignment', 'middle');
plot(tau*1e3, vout_tau_sim, 'ro', 'MarkerFaceColor', 'r');
text(tau*1e3*1.1, vout_tau_sim*0.92, sprintf('(%.2f ms, %.3f V)', tau*1e3, vout_tau_sim));
xlabel('Time [ms]'); ylabel('v_{out} [V]');
title(sprintf('Step Response of RC Low-Pass (5 V step, \\tau = %.2f ms)', tau*1e3));
ylim([0 Vin*1.1]);

%% 7) Save figures for the README (into phase-0/images/)
scriptDir = fileparts(mfilename('fullpath'));
imgDir    = fullfile(scriptDir, '..', 'images');
if ~exist(imgDir, 'dir'); mkdir(imgDir); end
exportgraphics(fig1, fullfile(imgDir, 'rc_bode_matlab.png'), 'Resolution', 200);
exportgraphics(fig2, fullfile(imgDir, 'rc_step_matlab.png'), 'Resolution', 200);
fprintf('Figures saved in phase-0/images/: rc_bode_matlab.png, rc_step_matlab.png\n');
