using ADNLPModels, LinearAlgebra, NLPModels, Printf

f(x) = 10^6*(x[2] - x[1]^2)^2 + (1 - x[1])^2
x0 = ones(2) .+ .5

#création d'un modèle ADNLP
nlp = ADNLPModel(f,x0)