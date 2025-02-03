# Altermagnetism-
 
The mathematics behind **Altermagnetism** involves quantum mechanics, solid-state physics, and spin wave theory. Here’s a breakdown of the key equations and principles:

---

### **1. Quantum Spin and Magnetic Moment**
Electrons possess a **spin angular momentum** **S**, which contributes to their **magnetic moment** ![image](https://github.com/user-attachments/assets/2eace863-7552-4335-9d6c-baf324d6308a)
:

![image](https://github.com/user-attachments/assets/a275f723-d807-4052-b719-c5f01d113579)

where:
- g is the **g-factor** (≈ 2 for free electrons),
- ![image](https://github.com/user-attachments/assets/a65005f3-acba-4c5b-a2d3-9db8920d5549)
 is the **Bohr magneton** ![image](https://github.com/user-attachments/assets/e6f51e62-b494-452d-9462-dff5253ba553)
,
- **S** is the electron spin operator.

For **ferromagnetism**, all spins align:  

![image](https://github.com/user-attachments/assets/45fed3aa-69fe-44f0-b8e9-2f53b3966082)


For **antiferromagnetism**, spins cancel out:

![image](https://github.com/user-attachments/assets/200a670d-36f2-48f7-a785-5894b1475151)


For **altermagnetism**, spins cancel but in a rotated pattern, meaning the overall magnetization **vanishes**, yet internal spin currents remain.

# code 
https://github.com/SteveJustin1963/Altermagnetism-/blob/main/QSMM1.m

Here is the **MATLAB code** to compute **Quantum Spin and Magnetic Moment** for a system of **N spin-1/2 electrons**:

---

### **📌 MATLAB Code: Quantum Spin and Magnetic Moment**
```matlab
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
```

---

### **🚀 What This Code Does**
✅ **Constructs total spin operators** \( S_x, S_y, S_z \).  
✅ **Computes total spin squared** \( S^2 = S_x^2 + S_y^2 + S_z^2 \).  
✅ **Computes magnetic moment operator** \( \boldsymbol{\mu} = -g \mu_B S_z \).  
✅ **Finds eigenvalues of \( S^2 \) and \( \mu_{\text{tot},z} \)** to classify spin states.  
✅ **Plots the magnetic moment spectrum**.

---

### **📝 Interpretation of Results**
- **For Ferromagnetism**: The eigenvalues of \( S^2 \) should be large (spins aligned).
- **For Antiferromagnetism**: Some eigenvalues should be near zero (spins cancel).
- **For Altermagnetism**: Expect vanishing net magnetization but internal spin currents.

---
```
Total Spin Operator S^2 Eigenvalues:
   -0.0000
   -0.0000
    2.0000
    2.0000
    2.0000
    2.0000
    2.0000
    2.0000
    2.0000
    2.0000
    2.0000
    6.0000
    6.0000
    6.0000
    6.0000
    6.0000

Total Magnetic Moment Operator (?_tot) Eigenvalues:
   1.0e-22 *

   -0.3710
   -0.1855
   -0.1855
   -0.1855
   -0.1855
         0
         0
         0
         0
         0
         0
    0.1855
    0.1855
    0.1855
    0.1855
    0.3710

>>
```
![image](https://github.com/user-attachments/assets/e3a376b4-0293-4a09-b2e5-0f4b50c8bcf6)



---

### **2. Heisenberg Exchange Interaction**
Magnetism is driven by **exchange interactions**, given by the Heisenberg Hamiltonian:

![image](https://github.com/user-attachments/assets/d9990634-b9a5-4092-a3b9-7118067d0052)


where:
- J is the **exchange coupling constant**,
- <i,j> represents summation over nearest-neighbor spins.

For:
- **Ferromagnets**: J > 0 (spins align).
- **Antiferromagnets**: J < 0 (spins alternate).
- **Altermagnets**: A spatially varying J(r), leading to an internal chiral spin structure.

---

#### coded 1D Heisenberg Hamiltonian for N spin-1/2 particles

https://github.com/SteveJustin1963/Altermagnetism-/blob/main/HH1.m

```
Heisenberg Hamiltonian for N = 4:
  Columns 1 through 14

   -0.7500         0         0         0         0         0         0         0         0         0         0         0         0         0
         0   -0.2500   -0.5000         0         0         0         0         0         0         0         0         0         0         0
         0   -0.5000    0.2500         0   -0.5000         0         0         0         0         0         0         0         0         0
         0         0         0   -0.2500         0   -0.5000         0         0         0         0         0         0         0         0
         0         0   -0.5000         0    0.2500         0         0         0   -0.5000         0         0         0         0         0
         0         0         0   -0.5000         0    0.7500   -0.5000         0         0   -0.5000         0         0         0         0
         0         0         0         0         0   -0.5000    0.2500         0         0         0   -0.5000         0         0         0
         0         0         0         0         0         0         0   -0.2500         0         0         0   -0.5000         0         0
         0         0         0         0   -0.5000         0         0         0   -0.2500         0         0         0         0         0
         0         0         0         0         0   -0.5000         0         0         0    0.2500   -0.5000         0         0         0
         0         0         0         0         0         0   -0.5000         0         0   -0.5000    0.7500         0   -0.5000         0
         0         0         0         0         0         0         0   -0.5000         0         0         0    0.2500         0   -0.5000
         0         0         0         0         0         0         0         0         0         0   -0.5000         0   -0.2500         0
         0         0         0         0         0         0         0         0         0         0         0   -0.5000         0    0.2500
         0         0         0         0         0         0         0         0         0         0         0         0         0   -0.5000
         0         0         0         0         0         0         0         0         0         0         0         0         0         0

  Columns 15 through 16

         0         0
         0         0
         0         0
         0         0
         0         0
         0         0
         0         0
         0         0
         0         0
         0         0
         0         0
         0         0
         0         0
   -0.5000         0
   -0.2500         0
         0   -0.7500

Eigenvalues (Energy levels):
   -0.7500
   -0.7500
   -0.7500
   -0.7500
   -0.7500
   -0.4571
   -0.4571
   -0.4571
   -0.1160
    0.2500
    0.2500
    0.2500
    0.9571
    0.9571
    0.9571
    1.6160

```

![image](https://github.com/user-attachments/assets/87ac5fbe-9bc7-4beb-a7b6-a0c0b6582971)






### **3. Spin Wave Dispersion (Magnons)**
In a classical ferromagnet, the **spin wave dispersion relation** is:

![image](https://github.com/user-attachments/assets/0190d36f-b5cb-4d4a-b907-1311718df202)


For **antiferromagnets**, the dispersion becomes:

![image](https://github.com/user-attachments/assets/6d178bda-00ee-4c29-8575-62b4cf4d2745)


where ![image](https://github.com/user-attachments/assets/acaea50a-32d1-46b1-a600-880f5d892c0f)
 is an energy gap.

In **altermagnets**, due to rotational symmetry breaking, the magnon dispersion **is anisotropic**, meaning that spin waves propagate differently depending on direction:

![image](https://github.com/user-attachments/assets/3a509f7d-5025-45bd-bc8e-2cc31739ae77)


where f(k) depends on the lattice symmetry.

---

#### code



### **4. Berry Curvature and Spin Current**
Altermagnetic materials exhibit **Berry curvature** effects, impacting spin transport:

![image](https://github.com/user-attachments/assets/8223c13e-2223-42fb-9825-900a780f6f14)


where:
- ![image](https://github.com/user-attachments/assets/af32bbc1-5cda-4e34-820c-5049ef2b8b7a)
 is the Berry curvature,
- ![image](https://github.com/user-attachments/assets/f2af9a31-34c2-4507-9052-1c070e6b1505)
 are Bloch states,
- H is the Hamiltonian.

This results in an **anomalous Hall effect for spin** without charge transport, leading to potential applications in **spintronics**.

---

### **5. Magnetic Whirlpools (Topological Spin Textures)**
Altermagnetic materials create **whirlpools** of spin, modeled by a **Skyrmion number**:

![image](https://github.com/user-attachments/assets/e6da89d7-ef9b-44fc-b4a0-4a2cb7473dce)


where:
- **n** is the local spin orientation.
- ![image](https://github.com/user-attachments/assets/259fa7f0-50d2-40b9-9a14-adf478d9a7dc)
 is a **topological invariant**, meaning these structures are **robust against perturbations**.

This allows **storing information in nanoscale spin textures**, useful for **next-gen memory devices**.

---

### **Conclusion**
The math of **Altermagnetism** merges:
1. **Quantum spin physics** via the Heisenberg model.
2. **Spin wave theory** modifying magnon dispersion.
3. **Berry curvature and Hall effects**, enabling spintronics.
4. **Topological physics**, allowing magnetic whirlpools.

This new form of magnetism combines **features of ferromagnets and antiferromagnets** but introduces a **directional spin texture** that could revolutionize **electronics and quantum computing**. 🚀

