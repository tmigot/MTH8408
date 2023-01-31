#Packages utilisés
#using Pkg
#Pkg.add("ADNLPModels")
#Pkg.add("NLPModels")
using NLPModels, ADNLPModels

#Définition de la fonction contrainte
f(x) = 4 * (x[1] - 5) .^ 2 + (x[2] - 6) .^ 2

#Définition de la valeur initiale
x0 = [8.0, 9.0]

#Création du modèle
nlpmodel = ADNLPModel(f, x0)
