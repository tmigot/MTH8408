using JuMP, Ipopt

model3 = Model(Ipopt.Optimizer)

#définition des variables
@variable(model3, x[1:2]) #définition de nos variables 2D

#définition de l'objectif
@NLobjective(model3, Min, (10^6)*(x[2] - x[1]^2)^2 + (1-x[1])^2)