using JuMP

function pb209_JuMP(solver)
    model = Model(solver)
    x0 = [-1.2, 1]
    @variable(model, x[i=1:2], start = x0[i])
    @NLobjective(model, Min, 10^4*(x[2]-x[1]^2)^2 + (1-x[1])^2)

    return model
end
