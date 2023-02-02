function probleme_208_JuMP()
    model = Model(Ipopt.Optimizer)
    @variable(model, x[i=1:2])
    @NLobjective(model, Min, 100 * (x[2] - x[1]^2)^2 + (1 - x[1])^2)
    return model
end