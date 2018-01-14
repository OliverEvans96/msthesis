# Asymptotics Outline

- Introduction
  - Radiative Transfer Equation
  - Boundary conditions
  - All angles are coupled by scattering

- Nondimensionalization
  - Assumptions
    - Scattering constant (same for kelp/water)
  - Table of variables
  - Rescale space, time

- Limitations of Discrete Ordinates
  - Memory
  - CPU
  - GMRES unreliable
  - Also, need an initial guess for GMRES
  
- Asymptotics
  - Solve each angular problem independently
  - Relatively computationally cheap 
  - Much lower memory cost
  - Known number of operations
  - Low and high accuracy available
  
- Mathematical Procedure
  - Substitute asymptotic series
  - Group like powers of b
  - Boundary conditions
  - Rewrite as ODE along ray path
  - Solve ODE as 1st order linear via I.F.
  
- Numerical Implementation
  - Discrete grid
  - Numerical integration
  - Storing pole values
  - Loop rolling
  - Scattering integral
  

