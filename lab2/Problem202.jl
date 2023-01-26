function ADNLP_Problem202(; type::Val{T} = Val(Float64), kwargs...) where {T}
  function f(x)
    return ((-13 + x[1] - 2x[2] + 5x[2]^2 - x[2]^3)^2 + (-29 + x[1] - 14x[2] + x[2]^2 + x[2]^3)^2)
  end
  x0 = T[15, -2]
  return ADNLPModels.ADNLPModel(f, x0, name = "AMPGO02"; kwargs...)
end

function JuMP_Problem202(optimizer; type::Val{T} = Val(Float64), kwargs...) where {T}
    function f(x1, x2)
      return ((-13 + x1 - 2x2 + 5x2^2 - x2^3)^2 + (-29 + x1 - 14x2 + x2^2 + x2^3)^2)
    end

    model = Model(optimizer.Optimizer)
    @variable(model, x1, start = 15)
    @variable(model, x2, start = -2)
    @NLobjective(model, Min, f(x1, x2))

    return model
end