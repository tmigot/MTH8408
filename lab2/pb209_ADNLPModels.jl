using ADNLPModels

function pb209_ADNLPModel()
    f(x) = 10^4*(x[2]-x[1]^2)^2 + (1-x[1])^2
    x0 = [-1.2, 1]
    model = ADNLPModel(f, x0)
    return model
end