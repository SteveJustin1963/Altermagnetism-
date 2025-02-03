% 1D Heisenberg Hamiltonian for N spin-1/2 particles

clc; clear; close all;

% Set number of spins
N = 4;  % Change this value as needed (Be cautious: N > 10 may use too much memory)
J = 1;  % Exchange interaction strength

% Define Pauli matrices (Spin-1/2 operators)
Sx = [0 1; 1 0] / 2;
Sy = [0 -1i; 1i 0] / 2;
Sz = [1 0; 0 -1] / 2;
I2 = eye(2); % 2x2 Identity matrix

% Initialize the Hamiltonian
H = zeros(2^N, 2^N);

% Construct the Heisenberg Hamiltonian for a 1D spin chain
for i = 1:(N-1) % Nearest-neighbor interactions
    % Identity matrices for padding before and after spins
    I_left = eye(2^(i-1)); % Identity before spin i
    I_right = eye(2^(N-i-1)); % Identity after spin i+1
    
    % Nearest-neighbor interaction terms for Sx, Sy, and Sz
    H = H - J * (...
        kron(I_left, kron(Sx, kron(Sx, I_right))) + ...
        kron(I_left, kron(Sy, kron(Sy, I_right))) + ...
        kron(I_left, kron(Sz, kron(Sz, I_right))));
end

% Display the Hamiltonian matrix
fprintf('Heisenberg Hamiltonian for N = %d:\n', N);
disp(H);

% Compute eigenvalues (energy levels)
eigenvalues = eig(H);
fprintf('Eigenvalues (Energy levels):\n');
disp(sort(eigenvalues));

% Plot energy spectrum
figure;
stem(sort(eigenvalues), 'filled');
xlabel('State Index');
ylabel('Energy');
title(sprintf('Energy Spectrum of the Heisenberg Hamiltonian (N = %d)', N));
grid on;
