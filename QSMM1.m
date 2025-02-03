% Quantum Spin and Magnetic Moment

clc; clear; close all;

% Constants
N = 4;  % Number of spins
g = 2;  % Electron g-factor (≈ 2 for free electrons)
mu_B = 9.274e-24; % Bohr magneton in J/T

% Define Pauli matrices (Spin-1/2 operators)
Sx = [0 1; 1 0] / 2;
Sy = [0 -1i; 1i 0] / 2;
Sz = [1 0; 0 -1] / 2;
I2 = eye(2); % 2x2 Identity matrix

% Initialize total spin operators
S_tot_x = zeros(2^N, 2^N);
S_tot_y = zeros(2^N, 2^N);
S_tot_z = zeros(2^N, 2^N);

% Construct the total spin operators by summing individual spin contributions
for i = 1:N
    I_left = eye(2^(i-1)); % Identity before spin i
    I_right = eye(2^(N-i)); % Identity after spin i

    % Summing spin operators over all sites
    S_tot_x = S_tot_x + kron(I_left, kron(Sx, I_right));
    S_tot_y = S_tot_y + kron(I_left, kron(Sy, I_right));
    S_tot_z = S_tot_z + kron(I_left, kron(Sz, I_right));
end

% Compute total spin squared
S_tot_sq = S_tot_x^2 + S_tot_y^2 + S_tot_z^2;

% Compute the magnetic moment operator
mu_tot = -g * mu_B * S_tot_z;  % Magnetic moment along z-axis

% Display Results
fprintf('Total Spin Operator S^2 Eigenvalues:\n');
disp(sort(eig(S_tot_sq)));

fprintf('Total Magnetic Moment Operator (μ_tot) Eigenvalues:\n');
disp(sort(eig(mu_tot)));

% Plot Magnetic Moment Spectrum
figure;
stem(sort(eig(mu_tot)), 'filled');
xlabel('State Index');
ylabel('Magnetic Moment (μ)');
title(sprintf('Magnetic Moment Spectrum for N = %d Spins', N));
grid on;
