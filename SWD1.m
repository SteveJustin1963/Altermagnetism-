% Spin Wave Dispersion

clc; clear; close all;

% Parameters
J = 1;     % Exchange interaction strength
S = 1/2;   % Spin quantum number
Delta = 0.5; % Energy gap (only for antiferromagnets)
N_k = 100; % Number of k-points in the Brillouin Zone

% Define k-values in the first Brillouin Zone (-pi to pi)
k_vals = linspace(-pi, pi, N_k);

% Compute Spin Wave Dispersion for different magnetisms

% 1. Ferromagnetic Dispersion: w(k) = 2 * J * S * (1 - cos(k))
w_ferro = 2 * J * S * (1 - cos(k_vals));

% 2. Antiferromagnetic Dispersion: w(k) = sqrt(Delta^2 + 4 * J^2 * S^2 * sin^2(k))
w_antiferro = sqrt(Delta^2 + 4 * J^2 * S^2 * sin(k_vals).^2);

% 3. Altermagnetic Dispersion: w(k) = 2 * J * S * f(k), where f(k) is anisotropic
% Assume f(k) = |sin(k)| + 0.2 * cos(2k) to model anisotropic behavior
f_k = abs(sin(k_vals)) + 0.2 * cos(2 * k_vals);
w_alter = 2 * J * S * f_k;

% Plot Results
figure;
hold on;
plot(k_vals, w_ferro, 'r-', 'LineWidth', 2, 'DisplayName', 'Ferromagnetic');
plot(k_vals, w_antiferro, 'b-', 'LineWidth', 2, 'DisplayName', 'Antiferromagnetic');
plot(k_vals, w_alter, 'g-', 'LineWidth', 2, 'DisplayName', 'Altermagnetic');
hold off;

% Labels and Title
xlabel('Wavevector k');
ylabel('Energy \omega(k)');
title('Spin Wave Dispersion Relation (Magnons)');
legend('Location', 'Best');
grid on;
