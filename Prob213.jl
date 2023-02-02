using JuMP, Ipopt, MathOptInterface, NLPModels, NLPModelsJuMP, JuMP

function prob213JUMP()
    x0 = [3.0; 1.0]
    mod = Model() # No solver is required
    @variable(mod, x[i=1:2], start=x0[i])
    @NLobjective(mod, Min, (10*(x[1]-x[2])^2 + (x[1]-1)^2)^4)

    nlp_jump = MathOptNLPModel(mod)
end

using ADNLPModels #package ADNLPModels

function prob213ADNLPM()
    #Initialize the objective function, and an initial guess
    f(x) = (10*(x[1]-x[2])^2 + (x[1]-1)^2)^4
    x0 = [3.0; 1.0]

    #Create an ADNLPModel
    nlp = ADNLPModel(f, x0)
end