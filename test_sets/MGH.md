# List of problems

## Moré - Garbow - Hillstrom test set

Moré, J. J., Garbow, B. S., & Hillstrom, K. E. (1981).
Testing Unconstrained Optimization Software. ACM Transactions on Mathematical Software, 7(1), 17–41. 
https://dl.acm.org/doi/10.1145/355934.355936

Suggested in https://github.com/JuliaSmoothOptimizers/OptimizationProblems.jl/issues/7

| Name in the report | Type of problems | Implemented in JSO? | name of the file in JSO |
| --- | --- | --- | --- |

- [ ] Rosenbrock function (1) (OP)
- [X] Freudenstein and Roth function (2) (NLS)  freuroth.jl
- [ ] Powell badly scaled function (3) (OP)
- [X] Brown badly scaled function (4) (OP) brownbs.jl
- [X] Beale function (5) (OP) beale.jl
- [ ] Jennrich and Sampson function (6) (NLS)
- [ ] Helical valley function (7) (OP)
- [ ] Bard function (8)  (NLS)
- [ ] Gaussian function (9)  (OP)
- [X] Meyer function (10)  (NLS) meyer3.jl
- [ ] Gulf research and development function (11) (OP)
- [ ] Box three-dimensional function (12)  (NLS)
- [X] Powell singular function (13) (OP) powellsg.jl
- [X] Wood function (14) (OP) woods.jl
- [ ] Kowalik and Osborne function (15) (NLS)
- [X] Brown and Dennis function (16)  (NLS) brownden.jl
- [ ] Osborne i function (17)  (NLS)
- [ ] Biggs EXP6 function (18)  (OP)
- [ ] Osborne 2 function (19) (NLS)
- [ ] Watson function (20) (OP)
- [X] Extended Rosenbrock function (21) (OP) srosenbr.jl
- [ ] Extended Powell singular function (22) (OP)
- [ ] Penalty function I (23)  (OP)
- [X] Penalty function II (24) (OP) penalty2.jl
- [X] Variably dimensioned function (25) (OP) vardim.jl
- [ ] Trigonometric function (26) (OP)
- [ ] Brown almost-linear function (27) (OP)
- [X] Discrete boundary value function (28) (OP) morebv.jl
- [ ] Discrete integral equation function (29) (OP)
- [ ] Broyden tridiagonal function (30) (OP)
- [X] Broyden banded function (31) (OP) brybnd. jl (sbrybnd.jl is an unscaled version)
- [X] Linear function - full rank (32) (NLS) arglina.jl
- [X] Linear function - rank 1 (33) (NLS) arglinb.jl
- [X] Linear function - rank 1 with zero columns and rows (34) (NLS) arglinc.jl
- [ ] Chebyquad function (35) (OP)
