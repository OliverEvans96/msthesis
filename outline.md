# Modeling the Light Field in Macroalgae Aquaculture

TODO: 
- Fill in introduction
- Move some of chapter 2 to chapter 4?

# Chapter 1: Introduction

- Colloquial Motivation
  - What's the problem
  - Why is it important
  - Why is the math useful
  - What kind of math do we use
  
- Kelp Literature Review
  - Discuss history of kelp modeling
  - Present day farming practices
    - Vertical vs. long lines
  - Ole Jacob's kelp model at SINTEF
  
- Radiative Transfer Literature Review
  - Chandrasekhar 
  - Fundamentals of Stellar Astrophysics
  - Curtis Mobley
  - Discuss present and proposed light models in SINMOD (SL paper)
  - Discuss present shading model in Ole Jacob's model

- Outline rest of thesis

- Explain my contribution


# Chapter 2: Problem Formulation 

- Overview
  - Given frond areas over depth and surface irradiance:
    1. Calculate expected number of fronds shading every point in space
    2. Calculate absorption and scattering coefficients over space
    3. Radiative transfer to calculate radiance over space and angle
    4. Integrate to calculate total light absorbed at each depth layer

- Basics
  - Coordinate system
  - Spatial/angular grid
  - Boundary conditions
  - Nondimensionalization

- Kelp Model
  - Frond shape model
  - Physical orientation
  - Superindividuals
  - Population distribution model
    - Length distribution
    - Angular distribution
    - Combine independent distributions
  - Occupation probability calculation
    - Frond coordinate system
    - Conditions for occupation
    - Minimum occupation length
    - Occupation region
    - Coordinate transform (?) and integration
  - Conversion to expected occupation

- Light Model
  - Define quantities
    - Radiance
    - Irradiance
    - Absorption, scattering coefficients
    - Volume scattering function
  - Calculate absorption, scattering coefficients
  - Introduce Radiative Transfer Equation
    - State equation and describe
    - Brief overview of solution techniques
    - Formal statement of boundary conditions
  - Calculating Absorbed light
    - Frond coordinate transform and Jacobian
    - Rotation matrix
    - Gaussian quadrature


# Chapter 3: Experimental Determination of Parameters

- Angular Kelp Distribution
  - Horizontal (in-plane)
  - Lift (out-of-plane)

- Optical Properties
  - Absorption Coefficient
  - Scattering Coefficient
  - Volume Scattering Function


# Chapter 4: Mathematical Solution Procedure

- Radiative Transfer Solution
  - Finite Difference
  - GMRES
  - Asymptotics
  
- Grid Study

- Sensitivity Analysis


# Chapter 5: Results

- Run in SINMOD
  - Compare biomass to previous light model
  - CPU time vs previous light model

- Comparison to experimental light data


# Chapter 6: Conclusions

- Restate contributions

- Happily ever after


# Appendix A: Fortran Code

- Link to github repo

- Lots of code
