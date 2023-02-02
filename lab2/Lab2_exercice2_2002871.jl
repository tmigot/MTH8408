import Pkg; Pkg.add("NLPModels")
import Pkg; Pkg.add("LaTeXStrings")
import Pkg; Pkg.add("LDLFactorizations")
using JuMP
using Ipopt
using MathOptInterface
using ADNLPModels, LinearAlgebra, NLPModels, Printf
using LDLFactorizations

# JuMP model  
model = Model(Ipopt.Optimizer)
@variable(model,x1,start=2)
@variable(model,x2,start=0.2)
@NLobjective(model, Min,(1.5-x1*(1-x2))^2+(2.25-x1*(1-x2^2))^2+(2.625-x1*(1-x2^3))^2)
JuMP.optimize!(model)
@show JuMP.has_values(model)
@show JuMP.termination_status(model) == MathOptInterface.LOCALLY_SOLVED
@show JuMP.primal_status(model) == MathOptInterface.FEASIBLE_POINT
@show JuMP.dual_status(model) == MathOptInterface.FEASIBLE_POINT
@show JuMP.value(x1)
@show JuMP.value(x2)              
@show JuMP.objective_value(model)   



# ADNLPModels model 
x0 = [2,0.2]
c = [1.5,2.25,2.625]
f(x) = (c[1] - x[1]*(1-x[2]))^2 + (c[2] - x[1]*(1-x[2]^2))^2 + (c[3] - x[1]*(1-x[2]^3))^2
nlp = ADNLPModel(f, x0)
xk,xk_vector,k_vector = newton_ldlt_armijo(nlp, x0)
println("x1 = ",xk[1])
println("x2 = ",xk[2])