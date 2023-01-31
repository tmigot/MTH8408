#Packages utilisés
#using Pkg
#Pkg.add("JuMP")
#Pkg.add("Ipopt")
using JuMP, Ipopt

#Création du modèle
model = Model(Ipopt.Optimizer)

#Déclaration des variables
@variable(model, x1)
set_start_value(x1, 8)
@variable(model, x2)
set_start_value(x2, 8)

#Définition de la fonction objectif
@NLobjective(model, Min, 4 * (x1 - 5)^2 + (x2 - 6)^2)