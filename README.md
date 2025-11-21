Got it — here is the **entire section**, fully rewritten so that **GitHub renders the LaTeX correctly**.

**Rules followed:**

* **Block equations:** `$$ ... $$`
* **Inline math:** `$ ... $`
* No backslashes or parentheses around `$`.
* No mixing of `\(` `\)` and `$`.

Everything below is **GitHub-safe Markdown with LaTeX**.

---

# **Altermagnetism — Full Corrected Section (GitHub-Compatible)**

---

# 🔷 **Quantum Spin and Magnetic Moment**

The fundamental relation between an electron’s **spin magnetic moment** $\vec{\mu}$
and its **spin angular momentum** $\vec{S}$ is:

$$
\vec{\mu} = -,g,\mu_B,\vec{S}.
$$

### ✔️ Accuracy

This is the correct quantum-mechanical relation.

The **negative sign** indicates that the electron’s magnetic moment is
**antiparallel** to its spin angular momentum (because the electron is negatively charged).

---

# 🔷 **Definitions**

## **1. g-factor**

The electron spin $g$-factor is:

$$
g = 2 \quad \text{(Dirac electron)}
$$

Experimentally:

$$
g \approx 2.00232.
$$

---

## **2. Bohr Magneton**

The Bohr magneton $\mu_B$ is:

$$
\mu_B = \frac{e\hbar}{2m_e}.
$$

where:

* $e$ — elementary charge
* $\hbar$ — reduced Planck constant
* $m_e$ — electron mass

---

## **3. Spin Operator**

The spin operator can be:

* the vector operator
  $$
  \vec{S} = (S_x, S_y, S_z)
  $$

* one of its components:
  $$
  S_x, ; S_y, ; S_z
  $$

* or the magnitude:
  $$
  S = \hbar\sqrt{s(s+1)}.
  $$

For an electron ($s = \tfrac12$):

$$
S = \hbar \frac{\sqrt{3}}{2}.
$$

---

# **Types of Magnetism — Mathematical Characterisation**

---

## **1. Ferromagnetism**

* Spins align parallel
* Produces net magnetization

$$
\sum_{i=1}^N S_i = NS.
$$

---

## **2. Antiferromagnetism**

* Spins alternate
* Net magnetization is zero

$$
\sum_i (-1)^i S_i = 0.
$$

Sublattice form:

$$
\sum_{i\in A} S_i - \sum_{i\in B} S_i = 0.
$$

---

## **3. Paramagnetism**

$$
M \propto \frac{B}{T}.
$$

---

## **4. Diamagnetism**

$$
\chi < 0.
$$

---

## **5. Ferrimagnetism**

$$
M = M_A - M_B \neq 0.
$$

---

## **6. Superparamagnetism**

Nanoparticles behave like giant paramagnetic spins.

---

# 🔷 **Ferromagnetism Explained**

Spin configuration:

$$
\uparrow\uparrow\uparrow\uparrow\ldots
$$

Mathematically:

$$
\sum_{i=1}^N S_i = NS.
$$

---

# 🔷 **Antiferromagnetism Explained**

Spin configuration:

$$
\uparrow\downarrow\uparrow\downarrow\ldots
$$

Cancellation:

$$
(+S_1) + (-S_2) + (+S_3) + \cdots = 0.
$$

Macroscopic:

$$
\mathbf{M}_A + \mathbf{M}_B = 0.
$$

---

# **Mathematics of Altermagnetism**

Altermagnets have **zero net magnetization**, but **rotated spin patterns** and
**internal spin currents**.

---

# 🔷 **1. Spin and Magnetic Moment (Code Section)**

Your MATLAB code uses:

* Total spin operators $S_x, S_y, S_z$
* Total spin squared
  $$
  S^2 = S_x^2 + S_y^2 + S_z^2
  $$
* Magnetic moment operator
  $$
  \mu_z = -g\mu_B S_z
  $$

Eigenvalues classify ferro/antiferro/altermagnetic states.

---

# 🔷 **2. Heisenberg Exchange Interaction**

$$
H = J \sum_{\langle i,j\rangle} \vec{S}_i \cdot \vec{S}_j.
$$

* $J > 0$ → ferromagnet
* $J < 0$ → antiferromagnet
* $J(\mathbf{r})$ varies → **altermagnet**

---

# 🔷 **3. Spin Wave Dispersion (Magnons)**

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
\omega(k) = D f(k),
$$

with your model:

$$
f(k) = |\sin(k)| + 0.2\cos(2k).
$$

---

# 🔷 **4. Berry Curvature and Spin Currents**

$$
\Omega_n(k) =
i\left[
\left\langle \frac{\partial u_n}{\partial k_x}
\Bigg|
\frac{\partial u_n}{\partial k_y} \right\rangle
-----------------------------------------------

\left\langle \frac{\partial u_n}{\partial k_y}
\Bigg|
\frac{\partial u_n}{\partial k_x} \right\rangle
\right].
$$

Altermagnets:
➡ **Non-zero spin Hall conductivity** despite **zero magnetization**.

---

# 🔷 **5. Skyrmions and Topological Spin Textures**

$$
Q = \frac{1}{4\pi}
\int
n \cdot
\left(
\frac{\partial n}{\partial x}
\times
\frac{\partial n}{\partial y}
\right)
dx,dy.
$$

These structures are stable and useful for spintronics.

---

# ⭐ **Conclusion**

Altermagnetism combines:

1. **Quantum spin physics**
2. **Heisenberg exchange**
3. **Anisotropic magnons**
4. **Berry curvature effects**
5. **Topological protection**

It has zero magnetization like an AFM, but directionally structured spins like a FM —
making it a prime candidate for **spintronics and quantum devices**.

---

If you'd like, I can:

✅ Export this as a **.md file**
✅ Make a **LaTeX PDF**
✅ Add diagrams or GitHub-compatible SVGs

Just say the word.
