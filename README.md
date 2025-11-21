 

# **Altermagnetism — Complete Corrected & Structured Section (GitHub-Compatible)**

---

# 🔷 **1. Quantum Spin and Magnetic Moment**

The fundamental relation between an electron’s **spin magnetic moment**
$\vec{\mu}$ and its **spin angular momentum** $\vec{S}$ is:

$$
\vec{\mu} = - g , \mu_B , \vec{S}.
$$

### ✔️ Interpretation

* The **negative sign** means the magnetic moment is *antiparallel* to spin.
* Electrons have negative charge ⇒ moment points opposite to spin.

---

# 🔷 **2. Key Definitions**

## **2.1 g-factor**

Dirac prediction:

$$
g = 2
$$

Experimental value:

$$
g \approx 2.00232.
$$

---

## **2.2 Bohr Magneton**

$$
\mu_B = \frac{e\hbar}{2m_e}.
$$

Where:

* $e$ – elementary charge
* $\hbar$ – reduced Planck constant
* $m_e$ – electron mass

---

## **2.3 Spin Operator**

The spin operator may refer to:

* The vector operator:

  $$
  \vec{S} = (S_x, S_y, S_z)
  $$

* Individual components:

  $$
  S_x,\quad S_y,\quad S_z
  $$

* The magnitude:

  $$
  S = \hbar\sqrt{s(s+1)}
  $$

For an electron ($s=1/2$):

$$
S = \hbar\frac{\sqrt{3}}{2}.
$$

---

# 🔷 **3. Classical Types of Magnetism (Mathematical Form)**

## **3.1 Ferromagnetism**

All spins align:

$$
\sum_{i=1}^N S_i = NS.
$$

---

## **3.2 Antiferromagnetism**

Neighbouring spins alternate:

$$
\sum_i (-1)^i S_i = 0.
$$

Sublattice form:

$$
\sum_{i\in A} S_i - \sum_{i\in B} S_i = 0.
$$

---

## **3.3 Paramagnetism**

$$
M \propto \frac{B}{T}.
$$

---

## **3.4 Diamagnetism**

$$
\chi < 0.
$$

---

## **3.5 Ferrimagnetism**

$$
M = M_A - M_B \neq 0.
$$

---

## **3.6 Superparamagnetism**

Nanoparticles behave as giant paramagnetic spins.

---

# 🔷 **4. Examples of Spin Ordering**

### Ferromagnetic pattern:

```
↑ ↑ ↑ ↑ ↑ ↑
```

### Antiferromagnetic pattern:

```
↑ ↓ ↑ ↓ ↑ ↓
```

Mathematical cancellation:

$$
(+S_1) + (-S_2) + (+S_3) + \cdots = 0.
$$

---

# 🔷 **5. Altermagnetism (Core Theory)**

Altermagnets have:

* **Zero net magnetization** (like AFMs)
* **Alternating spin structure with rotational symmetry**
* **Internal spin currents & symmetry-driven spin splitting**
* **Directional anisotropy** despite $M = 0$

They are fundamentally defined by crystal symmetry + exchange interactions.

---

# 🔷 **6. Mathematical Components of Altermagnetism**

## **6.1 Spin and Magnetic Moment Operators (Your Code)**

Your MATLAB code uses:

* $S_x$, $S_y$, $S_z$

* Total spin:

  $$
  S^2 = S_x^2 + S_y^2 + S_z^2
  $$

* Magnetic moment:

  $$
  \mu_z = - g \mu_B S_z
  $$

These eigenvalues classify ferro/antiferro/altermagnetic phases.

---

## **6.2 Heisenberg Exchange**

The fundamental Hamiltonian:

$$
H = J \sum_{\langle i,j\rangle} \vec{S}_i \cdot \vec{S}_j.
$$

Where:

* $J > 0$ → ferromagnetic
* $J < 0$ → antiferromagnetic
* $J(\mathbf r)$ anisotropic → **altermagnetic behaviour**

---

## **6.3 Magnon (Spin Wave) Dispersion**

### Ferromagnet:

$$
\omega(k) = D k^2.
$$

### Antiferromagnet:

$$
\omega(k) = \sqrt{\Delta^2 + v^2 k^2}.
$$

### Altermagnet (anisotropic):

$$
\omega(k) = D, f(k)
$$

Example used in your model:

$$
f(k) = |\sin(k)| + 0.2\cos(2k).
$$

---

## **6.4 Berry Curvature & Spin Hall Currents**

Berry curvature:

$$
\Omega_n(k)=
i!\left[
\left\langle \frac{\partial u_n}{\partial k_x} \Bigg|
\frac{\partial u_n}{\partial k_y} \right\rangle
-----------------------------------------------

\left\langle \frac{\partial u_n}{\partial k_y} \Bigg|
\frac{\partial u_n}{\partial k_x} \right\rangle
\right].
$$

Altermagnets have:

* **Zero magnetization**
* **Non-zero spin Berry curvature**
* → intrinsic **spin Hall conductivity**

This is the key to their use in **spintronics**.

---

## **6.5 Skyrmions / Topological Textures**

Topological charge:

$$
Q=\frac{1}{4\pi}\int
\mathbf n\cdot\left(
\frac{\partial\mathbf n}{\partial x}\times
\frac{\partial\mathbf n}{\partial y}
\right),dx,dy.
$$

Used for memory and quantum devices.

---

# ⭐ **7. Summary**

Altermagnetism merges:

1. **Quantum spin physics**
2. **Heisenberg exchange anisotropy**
3. **Spin-wave directionality**
4. **Berry curvature & spin Hall effects**
5. **Topological stability (skyrmions)**

It behaves like **antiferromagnetism with ferromagnetic-like directionality**, making it ideal for next-generation **spintronic and quantum technologies**.

---

# 🧩 **8. ASCII Flowchart — How All Concepts Interrelate**

```
                          ┌─────────────────────────┐
                          │   QUANTUM SPIN (S)      │
                          │   g-factor, μ_B, μ = -gμ_B S  │
                          └─────────────┬───────────┘
                                        │
                                        ▼
                         ┌─────────────────────────────┐
                         │   SPIN OPERATORS (Sx Sy Sz) │
                         │   + Spin Magnitude          │
                         └─────────────┬───────────────┘
                                       │ feeds into
                                       ▼
                 ┌──────────────────────────────────────────┐
                 │      HEISENBERG EXCHANGE (J)             │
                 │  J>0 FM   J<0 AFM   J(r) anisotropic → AM │
                 └───────────────┬───────────────────────────┘
                                 │ controls spin order
                                 ▼
         ┌────────────────────────────────────────────────────────┐
         │   MAGNETIC PHASES: FM / AFM / Ferri / Para / Dia      │
         │   (Altermagnetism = AFM-like but directional)         │
         └───────────────┬────────────────────────────────────────┘
                         │ determines excitation spectrum
                         ▼
              ┌─────────────────────────────────────┐
              │      MAGNON DISPERSION ω(k)         │
              │   FM: D k²   AFM: sqrt(v²k²+Δ²)     │
              │   AM: anisotropic custom f(k)       │
              └───────────────┬──────────────────────┘
                              │ produces
                              ▼
                ┌───────────────────────────────────┐
                │     BERRY CURVATURE Ω(k)          │
                │ Non-zero in altermagnets          │
                │ → Spin Hall Conductivity          │
                └───────────────┬───────────────────┘
                                │
                                ▼
                ┌───────────────────────────────────┐
                │     TOPOLOGICAL SPIN TEXTURES     │
                │        (Skyrmions, Q)             │
                └───────────────────────────────────┘
```

Nice, we’re going full nerd 😄 – **Option A** it is.

Below is a **research-grade mini-toolkit** in **MATLAB + Python** matching your sections:

* Spin & magnetic moment
* Heisenberg exchange
* Magnon dispersion
* Berry curvature model
* Skyrmion topological charge

You can drop this straight into a GitHub repo.

---

## 1. Suggested Repo Layout

```text
altermagnetism-toolkit/
├── matlab/
│   ├── constants.m
│   ├── spin_operators.m
│   ├── magnetic_moment_operator.m
│   ├── heisenberg_chain.m
│   ├── magnon_dispersion_1d.m
│   ├── berry_curvature_2band.m
│   ├── skyrmion_charge.m
│   └── demo_all.m
└── python/
    ├── constants.py
    ├── spin_operators.py
    ├── magnetic_moment_operator.py
    ├── heisenberg_chain.py
    ├── magnon_dispersion_1d.py
    ├── berry_curvature_2band.py
    ├── skyrmion_charge.py
    └── demo_all.py
```

 

---

# 🧮 2. MATLAB IMPLEMENTATION

### `constants.m`

```matlab
function c = constants()
% CONSTANTS Physical constants (SI).
%   Returns struct with e, hbar, me, muB.

    c.e    = 1.602176634e-19;      % Coulomb
    c.hbar = 1.054571817e-34;      % J·s
    c.me   = 9.1093837015e-31;     % kg
    c.muB  = c.e * c.hbar / (2 * c.me);  % J/T
end
```

---

### `spin_operators.m`

```matlab
function [Sx, Sy, Sz] = spin_operators(s)
% SPIN_OPERATORS Spin matrices for spin-s.
%   [Sx, Sy, Sz] = SPIN_OPERATORS(s)
%   For s = 1/2 returns (ħ/2)*Pauli matrices.
%
%   Hilbert space dimension: 2s+1.

    c = constants();
    hbar = c.hbar;

    d = 2*s + 1;
    m_vals = s:-1:-s;
    Splus  = zeros(d);
    Sminus = zeros(d);

    % Ladder operators in |s,m> basis
    for i = 1:d
        m = m_vals(i);
        if i < d
            mp = m_vals(i+1);
            coeff = hbar * sqrt(s*(s+1) - m*mp);
            Splus(i, i+1) = coeff;
            Sminus(i+1, i) = coeff;
        end
    end

    Sx = 0.5 * (Splus + Sminus);
    Sy = (1/(2i)) * (Splus - Sminus);
    Sz = diag(hbar * m_vals);
end
```

---

### `magnetic_moment_operator.m`

```matlab
function [mux, muy, muz] = magnetic_moment_operator(g, s)
% MAGNETIC_MOMENT_OPERATOR Spin magnetic moment operators.
%   [mux, muy, muz] = MAGNETIC_MOMENT_OPERATOR(g, s)
%   Returns μ = -g μ_B S for spin-s.

    c = constants();
    muB = c.muB;

    [Sx, Sy, Sz] = spin_operators(s);
    factor = -g * muB;

    mux = factor * Sx;
    muy = factor * Sy;
    muz = factor * Sz;
end
```

---

### `heisenberg_chain.m`

```matlab
function H = heisenberg_chain(J, N)
% HEISENBERG_CHAIN Build 1D Heisenberg Hamiltonian for spin-1/2 chain.
%   H = HEISENBERG_CHAIN(J, N)
%   J can be scalar (uniform) or vector of length N-1.
%
%   H = sum_i J_i S_i · S_{i+1}

    if isscalar(J)
        J = J * ones(1, N-1);
    end

    if length(J) ~= N-1
        error('J must be scalar or length N-1');
    end

    s = 1/2;
    [Sx, Sy, Sz] = spin_operators(s);

    Id = eye(2);  % single-site identity
    H = zeros(2^N);

    for i = 1:N-1
        % Build Sx_i Sx_{i+1} etc. via kron
        Sxi = 1; Syi = 1; Szi = 1;
        Sxip1 = 1; Syip1 = 1; Szip1 = 1;

        for site = 1:N
            if site == i
                Sxi    = kron(Sxi, Sx);
                Syi    = kron(Syi, Sy);
                Szi    = kron(Szi, Sz);
            else
                Sxi    = kron(Sxi, Id);
                Syi    = kron(Syi, Id);
                Szi    = kron(Szi, Id);
            end
        end

        for site = 1:N
            if site == i+1
                Sxip1  = kron(Sxip1, Sx);
                Syip1  = kron(Syip1, Sy);
                Szip1  = kron(Szip1, Sz);
            else
                Sxip1  = kron(Sxip1, Id);
                Syip1  = kron(Syip1, Id);
                Szip1  = kron(Szip1, Id);
            end
        end

        H = H + J(i) * (Sxi*Sxip1 + Syi*Syip1 + Szi*Szip1);
    end
end
```

---

### `magnon_dispersion_1d.m`

```matlab
function [k, w_fm, w_afm, w_alt] = magnon_dispersion_1d(J, S, D, Delta, v)
% MAGNON_DISPERSION_1D 1D magnon spectra for FM, AFM, and model "altermagnet".
%
%   Inputs:
%     J     - exchange constant (for scaling only here)
%     S     - spin magnitude
%     D     - stiffness constant
%     Delta - AFM gap
%     v     - AFM spin-wave velocity
%
%   Outputs:
%     k      - 1D momentum array
%     w_fm   - FM ω(k) = D k^2
%     w_afm  - AFM ω(k) = sqrt(Δ^2 + v^2 k^2)
%     w_alt  - "altermagnet" ω(k) = D * f(k)
%              with f(k) = |sin k| + 0.2 cos(2k)

    Nk = 400;
    k = linspace(-pi, pi, Nk);

    w_fm  = D * k.^2;
    w_afm = sqrt(Delta^2 + v^2 .* k.^2);

    f_alt = abs(sin(k)) + 0.2 * cos(2*k);
    w_alt = D * f_alt;
end
```

---

### `berry_curvature_2band.m`

```matlab
function [kx_grid, ky_grid, Omega] = berry_curvature_2band(mass, Nk)
% BERRY_CURVATURE_2BAND Berry curvature of a 2-band lattice model.
%
%   H(k) = d(k)·σ with
%     d_x = sin kx
%     d_y = sin ky
%     d_z = m + cos kx + cos ky
%
%   Ω(k) = 1/2 d · (∂kx d × ∂ky d) / |d|^3

    if nargin < 2, Nk = 101; end

    kx = linspace(-pi, pi, Nk);
    ky = linspace(-pi, pi, Nk);
    [kx_grid, ky_grid] = meshgrid(kx, ky);

    dx = sin(kx_grid);
    dy = sin(ky_grid);
    dz = mass + cos(kx_grid) + cos(ky_grid);

    dkx_dx = cos(kx_grid);
    dkx_dy = zeros(size(kx_grid));
    dkx_dz = -sin(kx_grid);

    dky_dx = zeros(size(ky_grid));
    dky_dy = cos(ky_grid);
    dky_dz = -sin(ky_grid);

    % ∂kx d × ∂ky d
    cx = dkx_dy .* dky_dz - dkx_dz .* dky_dy;
    cy = dkx_dz .* dky_dx - dkx_dx .* dky_dz;
    cz = dkx_dx .* dky_dy - dkx_dy .* dky_dx;

    % d · (∂kx d × ∂ky d)
    dot_d_c = dx .* cx + dy .* cy + dz .* cz;
    norm_d = sqrt(dx.^2 + dy.^2 + dz.^2);
    Omega = 0.5 * dot_d_c ./ (norm_d.^3 + 1e-12);
end
```

---

### `skyrmion_charge.m`

```matlab
function Q = skyrmion_charge(nx, ny, nz, dx, dy)
% SKYRMION_CHARGE Discrete topological charge of 2D spin texture.
%
%   Q = SKYRMION_CHARGE(nx, ny, nz, dx, dy)
%   n = (nx, ny, nz) is 2D arrays of unit vectors.
%
%   Uses plaquette sum:
%   Q ≈ (1 / 4π) Σ n_i · (n_j × n_k) over each elementary triangle.

    if nargin < 5
        dx = 1; dy = 1;
    end

    [Ny, Nx] = size(nx);
    Qsum = 0;

    for j = 1:Ny-1
        for i = 1:Nx-1
            n1 = [nx(j, i),   ny(j, i),   nz(j, i)];
            n2 = [nx(j, i+1), ny(j, i+1), nz(j, i+1)];
            n3 = [nx(j+1, i), ny(j+1, i), nz(j+1, i)];
            n4 = [nx(j+1, i+1), ny(j+1, i+1), nz(j+1, i+1)];

            % Two triangles per plaquette: (n1,n2,n3) and (n4,n3,n2)
            A1 = n1 * cross(n2, n3).';
            A2 = n4 * cross(n3, n2).';

            Qsum = Qsum + (A1 + A2);
        end
    end

    Q = Qsum * (dx * dy) / (4*pi);
end
```

---

### `demo_all.m` (ties everything together)

```matlab
function demo_all()
% DEMO_ALL Demonstrate all core features of the altermagnetism toolkit.

    fprintf('=== SPIN OPERATORS (s=1/2) ===\n');
    [Sx, Sy, Sz] = spin_operators(1/2);
    disp('Sx = '); disp(Sx);
    disp('Sy = '); disp(Sy);
    disp('Sz = '); disp(Sz);

    fprintf('\n=== MAGNETIC MOMENT (g ≈ 2.00232) ===\n');
    g = 2.00232;
    [mux, ~, muz] = magnetic_moment_operator(g, 1/2);
    disp('μx = '); disp(mux);
    disp('μz = '); disp(muz);

    fprintf('\n=== HEISENBERG CHAIN (N=4) ===\n');
    J = 1.0;
    N = 4;
    H = heisenberg_chain(J, N);
    e = eig(H);
    disp('Eigenvalues of H (N=4):'); disp(sort(e));

    fprintf('\n=== MAGNON DISPERSION (FM / AFM / AM-model) ===\n');
    J = 1; S = 1/2; D = 1; Delta = 0.5; v = 1;
    [k, w_fm, w_afm, w_alt] = magnon_dispersion_1d(J, S, D, Delta, v);
    figure; hold on;
    plot(k, w_fm, 'LineWidth',1.5);
    plot(k, w_afm, 'LineWidth',1.5);
    plot(k, w_alt, 'LineWidth',1.5);
    xlabel('k'); ylabel('\omega(k)');
    legend('FM', 'AFM', 'Altermagnet model');
    title('Magnon dispersion');

    fprintf('\n=== BERRY CURVATURE (2-band model) ===\n');
    mass = 0.5;
    [kxg, kyg, Omega] = berry_curvature_2band(mass, 101);
    figure;
    imagesc(kxg(1,:), kyg(:,1), Omega);
    set(gca,'YDir','normal');
    colorbar; xlabel('k_x'); ylabel('k_y');
    title('\Omega(k) for 2-band model');

    fprintf('\n=== SKYRMION CHARGE (model texture) ===\n');
    % Simple radial skyrmion-like texture
    Nx = 101; Ny = 101;
    [x, y] = meshgrid(linspace(-1,1,Nx), linspace(-1,1,Ny));
    r = sqrt(x.^2 + y.^2) + 1e-9;
    theta = pi * (1 - r);    % from +z at center to -z at edge
    phi = atan2(y, x);

    nx = sin(theta).*cos(phi);
    ny = sin(theta).*sin(phi);
    nz = cos(theta);

    Q = skyrmion_charge(nx, ny, nz, 2/Nx, 2/Ny);
    fprintf('Approximate skyrmion number Q ≈ %.4f\n', Q);
end
```

---

# 🐍 3. PYTHON IMPLEMENTATION

You’ll need: `numpy`, `scipy` (for diagonalization), `matplotlib` for plots.

---

### `constants.py`

```python
# constants.py
import numpy as np

class Constants:
    def __init__(self):
        self.e    = 1.602176634e-19       # Coulomb
        self.hbar = 1.054571817e-34       # J·s
        self.me   = 9.1093837015e-31      # kg
        self.muB  = self.e * self.hbar / (2 * self.me)

c = Constants()
```

---

### `spin_operators.py`

```python
# spin_operators.py
import numpy as np
from constants import c

def spin_operators(s: float):
    """
    Spin matrices for spin-s in |s,m> basis (m = s, s-1, ..., -s).

    Returns:
        Sx, Sy, Sz (numpy arrays of shape (d,d), d = 2s+1)
    """
    hbar = c.hbar
    d = int(2 * s + 1)
    m_vals = np.arange(s, -s-1, -1)

    Splus = np.zeros((d, d), dtype=complex)
    Sminus = np.zeros((d, d), dtype=complex)

    for i, m in enumerate(m_vals[:-1]):
        mp = m_vals[i+1]
        coeff = hbar * np.sqrt(s*(s+1) - m*mp)
        Splus[i, i+1] = coeff
        Sminus[i+1, i] = coeff

    Sx = 0.5 * (Splus + Sminus)
    Sy = (1/(2j)) * (Splus - Sminus)
    Sz = np.diag(hbar * m_vals)

    return Sx, Sy, Sz
```

---

### `magnetic_moment_operator.py`

```python
# magnetic_moment_operator.py
from constants import c
from spin_operators import spin_operators

def magnetic_moment_operator(g: float, s: float):
    """
    Magnetic moment operators μ = -g μ_B S for spin-s.
    """
    Sx, Sy, Sz = spin_operators(s)
    factor = -g * c.muB
    mux = factor * Sx
    muy = factor * Sy
    muz = factor * Sz
    return mux, muy, muz
```

---

### `heisenberg_chain.py`

```python
# heisenberg_chain.py
import numpy as np
from spin_operators import spin_operators

def heisenberg_chain(J, N: int):
    """
    1D Heisenberg chain Hamiltonian for spin-1/2.
    H = Σ_i J_i S_i · S_{i+1}

    J: scalar or array of length N-1
    N: number of sites
    """
    if np.isscalar(J):
        J = J * np.ones(N-1)
    J = np.asarray(J, dtype=float)
    if J.shape[0] != N-1:
        raise ValueError("J must be scalar or length N-1")

    s = 0.5
    Sx1, Sy1, Sz1 = spin_operators(s)
    Id = np.eye(2, dtype=complex)

    dim = 2**N
    H = np.zeros((dim, dim), dtype=complex)

    for i in range(N-1):
        # Build S_i and S_{i+1} operators
        ops_Sx_i = 1
        ops_Sy_i = 1
        ops_Sz_i = 1
        ops_Sx_ip1 = 1
        ops_Sy_ip1 = 1
        ops_Sz_ip1 = 1

        for site in range(N):
            if site == i:
                ops_Sx_i  = np.kron(ops_Sx_i,  Sx1)
                ops_Sy_i  = np.kron(ops_Sy_i,  Sy1)
                ops_Sz_i  = np.kron(ops_Sz_i,  Sz1)
            else:
                ops_Sx_i  = np.kron(ops_Sx_i,  Id)
                ops_Sy_i  = np.kron(ops_Sy_i,  Id)
                ops_Sz_i  = np.kron(ops_Sz_i,  Id)

        for site in range(N):
            if site == i+1:
                ops_Sx_ip1 = np.kron(ops_Sx_ip1, Sx1)
                ops_Sy_ip1 = np.kron(ops_Sy_ip1, Sy1)
                ops_Sz_ip1 = np.kron(ops_Sz_ip1, Sz1)
            else:
                ops_Sx_ip1 = np.kron(ops_Sx_ip1, Id)
                ops_Sy_ip1 = np.kron(ops_Sy_ip1, Id)
                ops_Sz_ip1 = np.kron(ops_Sz_ip1, Id)

        H += J[i] * (ops_Sx_i @ ops_Sx_ip1 +
                     ops_Sy_i @ ops_Sy_ip1 +
                     ops_Sz_i @ ops_Sz_ip1)
    return H
```

---

### `magnon_dispersion_1d.py`

```python
# magnon_dispersion_1d.py
import numpy as np

def magnon_dispersion_1d(J: float, S: float, D: float, Delta: float, v: float, Nk: int = 400):
    """
    1D magnon spectra:
    FM:  ω(k) = D k^2
    AFM: ω(k) = sqrt(Δ^2 + v^2 k^2)
    AM:  ω(k) = D f(k), f(k) = |sin k| + 0.2 cos(2k)
    """
    k = np.linspace(-np.pi, np.pi, Nk)
    w_fm  = D * k**2
    w_afm = np.sqrt(Delta**2 + v**2 * k**2)
    f_alt = np.abs(np.sin(k)) + 0.2 * np.cos(2*k)
    w_alt = D * f_alt
    return k, w_fm, w_afm, w_alt
```

---

### `berry_curvature_2band.py`

```python
# berry_curvature_2band.py
import numpy as np

def berry_curvature_2band(mass: float, Nk: int = 101):
    """
    Berry curvature for 2-band lattice model:
    d_x = sin kx
    d_y = sin ky
    d_z = m + cos kx + cos ky
    Ω(k) = 1/2 d · (∂kx d × ∂ky d) / |d|^3
    """
    kx = np.linspace(-np.pi, np.pi, Nk)
    ky = np.linspace(-np.pi, np.pi, Nk)
    kx_grid, ky_grid = np.meshgrid(kx, ky, indexing='xy')

    dx = np.sin(kx_grid)
    dy = np.sin(ky_grid)
    dz = mass + np.cos(kx_grid) + np.cos(ky_grid)

    dkx_dx = np.cos(kx_grid)
    dkx_dy = np.zeros_like(kx_grid)
    dkx_dz = -np.sin(kx_grid)

    dky_dx = np.zeros_like(ky_grid)
    dky_dy = np.cos(ky_grid)
    dky_dz = -np.sin(ky_grid)

    cx = dkx_dy * dky_dz - dkx_dz * dky_dy
    cy = dkx_dz * dky_dx - dkx_dx * dky_dz
    cz = dkx_dx * dky_dy - dkx_dy * dky_dx

    dot_d_c = dx*cx + dy*cy + dz*cz
    norm_d = np.sqrt(dx**2 + dy**2 + dz**2)
    Omega = 0.5 * dot_d_c / (norm_d**3 + 1e-12)

    return kx_grid, ky_grid, Omega
```

---

### `skyrmion_charge.py`

```python
# skyrmion_charge.py
import numpy as np

def skyrmion_charge(nx, ny, nz, dx=1.0, dy=1.0):
    """
    Discrete topological charge of a 2D spin texture.
    nx, ny, nz: 2D arrays (Ny, Nx) of unit vectors.
    Q ≈ (1 / 4π) Σ n_i · (n_j × n_k) over plaquettes.
    """
    nx = np.asarray(nx)
    ny = np.asarray(ny)
    nz = np.asarray(nz)

    Ny, Nx = nx.shape
    Qsum = 0.0

    for j in range(Ny-1):
        for i in range(Nx-1):
            n1 = np.array([nx[j, i],     ny[j, i],     nz[j, i]])
            n2 = np.array([nx[j, i+1],   ny[j, i+1],   nz[j, i+1]])
            n3 = np.array([nx[j+1, i],   ny[j+1, i],   nz[j+1, i]])
            n4 = np.array([nx[j+1, i+1], ny[j+1, i+1], nz[j+1, i+1]])

            A1 = np.dot(n1, np.cross(n2, n3))
            A2 = np.dot(n4, np.cross(n3, n2))
            Qsum += (A1 + A2)

    Q = Qsum * (dx * dy) / (4 * np.pi)
    return Q
```

---

### `demo_all.py`

```python
# demo_all.py
import numpy as np
from spin_operators import spin_operators
from magnetic_moment_operator import magnetic_moment_operator
from heisenberg_chain import heisenberg_chain
from magnon_dispersion_1d import magnon_dispersion_1d
from berry_curvature_2band import berry_curvature_2band
from skyrmion_charge import skyrmion_charge

import matplotlib.pyplot as plt
from scipy.linalg import eigvals

def demo_all():
    print("=== SPIN OPERATORS (s=1/2) ===")
    Sx, Sy, Sz = spin_operators(0.5)
    print("Sx =\n", Sx)
    print("Sy =\n", Sy)
    print("Sz =\n", Sz)

    print("\n=== MAGNETIC MOMENT (g ≈ 2.00232) ===")
    mux, _, muz = magnetic_moment_operator(2.00232, 0.5)
    print("μx =\n", mux)
    print("μz =\n", muz)

    print("\n=== HEISENBERG CHAIN (N=4) ===")
    H = heisenberg_chain(1.0, 4)
    e = np.sort(eigvals(H).real)
    print("Eigenvalues of H (N=4):\n", e)

    print("\n=== MAGNON DISPERSION (FM / AFM / AM-model) ===")
    k, w_fm, w_afm, w_alt = magnon_dispersion_1d(J=1.0, S=0.5, D=1.0, Delta=0.5, v=1.0)
    plt.figure()
    plt.plot(k, w_fm, label="FM")
    plt.plot(k, w_afm, label="AFM")
    plt.plot(k, w_alt, label="Altermagnet model")
    plt.xlabel("k")
    plt.ylabel("ω(k)")
    plt.legend()
    plt.title("Magnon dispersion")

    print("\n=== BERRY CURVATURE (2-band model) ===")
    kxg, kyg, Omega = berry_curvature_2band(mass=0.5, Nk=101)
    plt.figure()
    plt.imshow(Omega, extent=[kxg.min(), kxg.max(), kyg.min(), kyg.max()],
               origin='lower', aspect='auto')
    plt.colorbar(label="Ω(k)")
    plt.xlabel("k_x")
    plt.ylabel("k_y")
    plt.title("Berry curvature Ω(k)")

    print("\n=== SKYRMION CHARGE (model texture) ===")
    Nx = Ny = 101
    x, y = np.meshgrid(np.linspace(-1, 1, Nx), np.linspace(-1, 1, Ny))
    r = np.sqrt(x**2 + y**2) + 1e-9
    theta = np.pi * (1 - r)
    phi = np.arctan2(y, x)

    nx = np.sin(theta) * np.cos(phi)
    ny = np.sin(theta) * np.sin(phi)
    nz = np.cos(theta)

    Q = skyrmion_charge(nx, ny, nz, dx=2/Nx, dy=2/Ny)
    print(f"Approximate skyrmion number Q ≈ {Q:.4f}")

    plt.show()

if __name__ == "__main__":
    demo_all()
```

---
 
