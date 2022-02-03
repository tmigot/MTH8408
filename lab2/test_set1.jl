using Logging, Test

@testset "Test set for newton_armijo" begin
	#Test problem:
	fH(x) = (x[2]+x[1].^2-11).^2+(x[1]+x[2].^2-7).^2
	x0H = [10., 20.]
	himmelblau = ADNLPModel(fH, x0H)

	problem2 = ADNLPModel(x->-x[1]^3 + x[2]^2 + x[3]^2, ones(3))

	roz(x) = 100 *  (x[2] - x[1]^2)^2 + (x[1] - 1.0)^2
	rosenbrock = ADNLPModel(roz, [-1.2, 1.0])

	f(x) = x[1]^2 * (2*x[1] - 3) - 6*x[1]*x[2] * (x[1] - x[2] - 1)
	pb_du_cours = ADNLPModel(f, [-1.001, -1.001]) #ou [1.5, .5] ou [.5, .5]


	######################################### newton_armijo ##################

    #=
    Vérifiez que vous pouvez mettre une limite de temps de 1s.
    Puis faites tournez votre algorithme sur un des probléme test.
    L'algorithme devrait s'arrêter en environ 1sec.

    Vérifiez que vous pouvez mettre une limite de 2 évaluations d'objectif.
    Puis faites tournez votre algorithme sur un des probléme test.
    L'algorithme devrait s'arrêter en environ 1 itération.
    =#

	#Unit/Validation Tests
    ep1 = 1e-6 + norm(grad(himmelblau, himmelblau.meta.x0)) * 1e-6
	sol = with_logger(NullLogger()) do 
	    newton_armijo(himmelblau, himmelblau.meta.x0) 
	end
	@test norm(grad(himmelblau, sol)) ≤ ep1
	@test sol ≈ [3, 2] atol = ep1
	@show sol

    ep2 = 1e-6 + norm(grad(problem2, problem2.meta.x0)) * 1e-6
	sol = with_logger(NullLogger()) do 
	    newton_armijo(problem2, problem2.meta.x0) 
	end
	# @test stats.status == :unbounded
    @test obj(problem2, sol) ≤ -1e15
	@show sol

    ep2 = 1e-6 + norm(grad(rosenbrock, rosenbrock.meta.x0)) * 1e-6
	sol = with_logger(NullLogger()) do 
	    newton_armijo(rosenbrock, rosenbrock.meta.x0) 
	end
	@test sol ≈ [1., 1.] atol = ep2
	@show sol

    ep3 = 1e-6 + norm(grad(pb_du_cours, [-1.001, -1.001])) * 1e-6
	sol = with_logger(NullLogger()) do 
	    newton_armijo(pb_du_cours, [-1.001, -1.001]) 
	end
	@test norm(grad(pb_du_cours, sol)) ≤ ep3
	@test sol ≈ [0, -1] atol = ep3
	@show sol

    ep4 = 1e-6 + norm(grad(pb_du_cours, [1.5, .5])) * 1e-6
	sol = with_logger(NullLogger()) do 
	    newton_armijo(pb_du_cours, [1.5, .5]) 
	end
	@test norm(grad(pb_du_cours, sol)) ≤ ep4
	@test sol ≈ [1, 0] atol = ep4
	@show sol

    ep5 = 1e-6 + norm(grad(pb_du_cours, [.5, .5])) * 1e-6
	sol = with_logger(NullLogger()) do 
	    newton_armijo(pb_du_cours, [.5, .5]) 
	end
	@test norm(grad(pb_du_cours, sol)) ≤ ep5
	@test sol ≈ [0, 0] atol = ep5
	@show sol
end
