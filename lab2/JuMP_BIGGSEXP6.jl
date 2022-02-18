using JuMP, Ipopt

function create_JuMP_BiggsEXP6()
	z = [i/10 for i in 1:13]
	y = [exp(-zi) - 5*exp(-10*zi) + 3*exp(-4*zi) for zi in z]
	model = Model()
	@variable(model, x[i=1:6]. start=ones(6))
	@NLobjective(model, Min, sum(x[3]*exp(-x[1]*z[i]) - x[4]*exp(-x[2]*z[i]) + x[6]*exp(-x[5]*z[i]) - y[i] for i in 1:13))
	return model
end