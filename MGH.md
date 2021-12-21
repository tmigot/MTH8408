# List of problems

## Moré - Garbow - Hillstrom test set

Moré, J. J., Garbow, B. S., & Hillstrom, K. E. (1981).
Testing Unconstrained Optimization Software. ACM Transactions on Mathematical Software, 7(1), 17–41. 
https://dl.acm.org/doi/10.1145/355934.355936

Suggested in https://github.com/JuliaSmoothOptimizers/OptimizationProblems.jl/issues/7

| Name in the report | Type of problems | Implemented in JSO? | name of the file in JSO |
| --- | --- | --- | --- |
| Rosenbrock function (1) | OP | [ ] |  |
| Freudenstein and Roth function (2) | NLS | [X] | freuroth.jl |
| Powell badly scaled function (3) | OP | [ ] |  |
| Brown badly scaled function (4) | OP | [X] | brownbs.jl |
| Beale function (5) | OP | [X] | beale.jl |
| Jennrich and Sampson function (6) | NLS | [ ] |  |
| Helical valley function (7) | OP | [ ] |  |
| Bard function (8)  | NLS | [ ] |  |
| Gaussian function (9)  | OP | [ ] |  |
| Meyer function (10)  | NLS | [X] | meyer3.jl |
| Gulf research and development function (11) | OP | [ ] |  |
| Box three-dimensional function (12)  | NLS | [ ] |  |
| Powell singular function (13) | OP | [X] | powellsg.jl |
| Wood function (14) | OP | [X] | woods.jl |
| Kowalik and Osborne function (15) | NLS | [ ] |  |
| Brown and Dennis function (16)  | NLS | [X] | brownden.jl |
| Osborne i function (17)  | NLS | [ ] |  |
| Biggs EXP6 function (18)  | OP | [ ] |  |
| Osborne 2 function (19) | NLS | [ ] |  |
| Watson function (20) | OP | [ ] |  |
| Extended Rosenbrock function (21) | OP | [X] | sroOPnbr.jl |
| Extended Powell singular function (22) | OP | [ ] |  |
| Penalty function I (23)  | OP | [ ] |  |
| Penalty function II (24) | OP | [X] | penalty2.jl |
| Variably dimensioned function (25) | OP| [X] | vardim.jl |
| Trigonometric function (26) | OP | [ ] |  |
| Brown almost-linear function (27) | OP | [ ] |  |
| Discrete boundary value function (28) | OP | [X] | morebv.jl |
| Discrete integral equation function (29) | OP | [ ] |  |
| Broyden tridiagonal function (30) | OP | [ ] |  |
| Broyden banded function (31) | OP | [X] | brybnd. jl (sbrybnd.jl is an unscaled version) |
| Linear function - full rank (32) | NLS | [X] | arglina.jl  |
| Linear function - rank 1 (33) | NLS | [X] | arglinb.jl |
| Linear function - rank 1 with zero columns and rows (34) | NLS | [X] | arglinc.jl |
| Chebyquad function (35) | OP | [ ] |  |
