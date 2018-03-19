# Modeling the Light Field in Macroalgae Aquaculture

# Chapter 1: Introduction

- Colloquial Motivation
  - What's the problem
  - Why is it important
  - Why is the math useful
  - What kind of math do we use
  
First attempt at colloquial motivation (lots of citations will be added):
  
  Given the global rise in population, efficient and innovative resource utilization is increasingly important.
In particular, food and fuel are clearly in high demand.
Meanwhile, growing concern for the negative environmental impacts of petroleum-based fuel is generating a market for biofuel, especially corn-based ethanol.
However, corn-based ethanol has been heavily criticized for diverting land usage away from food production.
At the same time, a great deal of unutilized saltwater coastline is available for both food and fuel production through seaweed cultivation.
Specifically, the sugar kelp *Saccharina Latissima* is known to be a viable source of food, both for direct human consumption and for fish cultivation, as well as for biofuel production.
Industrial scale macroalgae cultivation has long existed in Eastern Asia due to the popularity of seaweed in Asian cuisine.

  More recently, kelp aquaculture has been developing in Scandanavia and in the Northeastern United States.
The MACROSEA project is a four year international research collaboration funded by the Research Council of Norway targeting "successful and predictable production of high quality biomass thereby making significant steps towards industrial macroalgae cultivation in Norway."
The project includes both cultivators and scientists, working to develop a precise understanding of the full lifecycle of kelp and its interaction with its environment.
A fundamental aspect of this understanding is the development of mathematical models to describe the growth of kelp.
Work is underway at SINTEF, a private Norwegian research institution, to develop such models.
One aspect of the model which is has yet to be fully developed is the availability of light, considering factors such as absorption and scattering by the aquatic medium, as well as by the kelp itself.

  In this thesis, the aquatic light field is investigated.
As a first step, a model for the spatial distribution of kelp is developed.
Radiative Transfer Theory is then applied to determine the effects of the kelp and water on the availability of light throughout the medium.
We pursue a numerical finite difference solution to the Radiative Transfer Equation, and subsequently discuss asymptotic approximations which prove to be sufficiently accurate and less computationally intensive.
  
- Kelp Literature Review
  - Discuss history of kelp modeling
  - Present day farming practices
    - Vertical vs. long lines
  - Ole Jacob's kelp model at SINTEF
  
- Radiative Transfer Literature Review
  - Foundational works and briefly discuss other use cases
    - Chandrasekhar (seminal book)
    - Fundamentals of Stellar Astrophysics
    - Curtis Mobley (Aquatic radiative transfer)
  - Discuss present and proposed light models in SINMOD (SL paper)
  - Discuss present shading model in Ole Jacob's model

- Outline rest of thesis chapter by chapter

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

# Chapter 3: Analysis of Governing Equations

- Not sure exactly how to split material into Chapters 2 and 3.

# Chapter 4: Experimental Determination of Parameters

- Angular Kelp Distribution
  - Horizontal (in-plane)
  - Lift (out-of-plane)

- Optical Properties
  - Absorption Coefficient
  - Scattering Coefficient
  - Volume Scattering Function


# Chapter 5: Mathematical Solution Procedure

- Radiative Transfer Solution
  - Finite Difference
  - GMRES
  - Asymptotics
  
- Grid Study

- Sensitivity Analysis

# Chapter 6: Results

- Run in SINMOD
  - Compare biomass to previous light model
  - CPU time vs previous light model

- Comparison to experimental light data (if available)


# Chapter 7: Conclusions

- Restate topic and motivation
- Approach
- Limitations
- Further work
- Happily ever after


# Appendix A: Fortran Code

- Link to github repo

- Lots of code


# Appendix B: Python Code

- Link to github repo

- Code to produce interactive widgets in Jupyter notebooks
