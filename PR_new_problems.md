# Project 1: Modeling and contribution to Github

The goal of this 1st project is to model an optimization problem using JSO tools [`ADNLPModels`](https://github.com/JuliaSmoothOptimizers/ADNLPModels.jl) and [`JuMP`](https://jump.dev).

## Pick a problem in the list

- Griewank's function: 
  https://en.wikipedia.org/wiki/Griewank_function and https://www.sfu.ca/~ssurjano/griewank.html
- **FLT** problem: 
  Fletcher, R., Leyffer, S., & Toint, P. L. (2002). On the global convergence of a filter--SQP algorithm. SIAM Journal on Optimization, 13(1), 44-59.
  This is a CUTEst problem http://forge.scilab.org/index.php/p/cuter/source/tree/c6cf4d16c93363f3530f80966fa1d6bf3d42b3d2/sif/FLT.SIF
- Check the problems from this PR: [PR 41](https://github.com/JuliaSmoothOptimizers/OptimizationProblems.jl/pull/41). Those are (zangwil2, zecevic2, zecevic3, zecevic4, zy2), all from the CUTEr/st set.
- dpo suggested checking tech reports by Luksan & Vlcek
- More to come...

## Prepare the META, ADNLPModel, and JuMP

- We have seen in class how to make a ADNLPModel and a JuMP model
- Check the unit test [TODO]()
- Generate the META using [TODO]()
- Complete the META

## Branch and modify

- Fork this repository.
- Modify your fork with the three new files, see [CONTRIBUTING.md]().
- Create a Pull Request.

## Official PR

Okay, this time we go for the real one:
- Fork [`OptimizationProblems.jl`](https://github.com/JuliaSmoothOptimizers/OptimizationProblems.jl).
- Modify your fork with the three new files, see [CONTRIBUTING.md]().
- Create a Pull Request.
