# List of problems

## Moré - Garbow - Hillstrom test set

Moré, J. J., Garbow, B. S., & Hillstrom, K. E. (1981).
Testing Unconstrained Optimization Software. ACM Transactions on Mathematical Software, 7(1), 17–41. 
https://dl.acm.org/doi/10.1145/355934.355936

Suggested in https://github.com/JuliaSmoothOptimizers/OptimizationProblems.jl/issues/7

They are all nonlinear least squares.

### System of equations (SE)

| Name in the report | Type of problems | Implemented in JSO? | name of the file in JSO |
| --- | --- | --- | --- |
| Reosenbrock function (1) | SE | [ ] |  |
| Powell singular function (13) | SE | [ ] |  |
| Powell badly scaled function (3) | SE | [ ] |  |
| Wood function (14) | SE | [ ] |  |
| Helical valley function (7) | SE | [ ] |  |
| Watson function (20) | SE | [ ] |  |
| Chebyquad function (35) | SE | [ ] |  |
| Brown almost-linear function (27) | SE | [ ] |  |
| Discrete boundary value function (28) | SE | [ ] |  |
| Discrete integral equation function (29) | SE | [ ] |  |
| Trigonometric function (26) | SE | [ ] |  |
| Variably dimensioned function (25) | SE| [ ] |  |
| Broyden tridiagonal function (30) | SE | [ ] |  |
| Broyden banded function (31) | SE | [ ] |  |

### NLS

| Name in the report | Type of problems | Implemented in JSO? | name of the file in JSO |
| --- | --- | --- | --- |
| Linear function - full rank (32) | NLS | [ ] |  |
| Linear function - rank 1 (33) | NLS | [ ] |  |
| Linear function - rank 1 with zero columns and rows (34) | NLS | [ ] |  |
| Rosenbrock function (1) | NLS | [ ] |  |
| Helical valley function (7) | NLS | [ ] |  |
| Powell singular function (13) | NLS | [ ] |  |
| Freudenstein and Roth function (2) | NLS | [ ] |  |
| Bard function (8)  | NLS | [ ] |  |
| Kowalik and Osborne function (15) | NLS | [ ] |  |
| Meyer function (10)  | NLS | [ ] |  |
| Watson function (20) | NLS | [ ] |  |
| Box three-dimensional function (12)  | NLS | [ ] |  |
| Jennrich and Sampson function (6) | NLS | [ ] |  |
| Brown and Dennis function (16)  | NLS | [ ] |  |
| Chebyquad function (35) | NLS | [ ] |  |
| Brown almost-linear function (27)  | NLS | [ ] |  |
| Osborne i function (17)  | NLS | [ ] |  |
| Osborne 2 function (19) | NLS | [ ] |  |

### Unconstrained minimization

| Name in the report | Type of problems | Implemented in JSO? | name of the file in JSO |
| --- | --- | --- | --- |
| Helical valley function (7)  | OP | [ ] |  |
| Biggs EXP6 function (18)  | OP | [ ] |  |
| Gaussian function (9)  | OP | [ ] |  |
| Powell badly scaled function (3) | OP | [ ] |  |
| Box three-dimensional function (12) | OP | [ ] |  |
| Variably dimensioned function (25) | OP | [ ] |  |
| Watson function (20) | OP | [ ] |  |
| Penalty function I (23)  | OP | [ ] |  |
| Penalty function II (24) | OP | [ ] |  |
| Brown badly scaled function (4) | OP | [ ] |  |
| Brown and Dennis function (16) | OP | [ ] |  |
| Gulf research and development function (11) | OP | [ ] |  |
| Trigonometric function (26)  | OP | [ ] |  |
| Extended Rosenbrock function (21) | OP | [ ] |  |
| Extended Powell singular function (22) | OP | [ ] |  |
| Beale function (5) | OP | [ ] |  |
| Wood function (14) | OP | [ ] |  |
| Chebyquad function (35)  | OP | [ ] |  |

## All together

| Name in the report | Type of problems | Implemented in JSO? | name of the file in JSO |
| --- | --- | --- | --- |
| Rosenbrock function (1) | SE | [ ] |  |
| Freudenstein and Roth function (2) | NLS | [X] | freuroth.jl |
| Powell badly scaled function (3) | SE | [ ] |  |
| Brown badly scaled function (4) | OP | [X] | brownbs.jl |
| Beale function (5) | OP | [X] | beale.jl |
| Jennrich and Sampson function (6) | NLS | [ ] |  |
| Helical valley function (7) | SE | [ ] |  |
| Bard function (8)  | NLS | [ ] |  |
| Gaussian function (9)  | OP | [ ] |  |
| Meyer function (10)  | NLS | [X] | meyer3.jl |
| Gulf research and development function (11) | OP | [ ] |  |
| Box three-dimensional function (12)  | NLS | [ ] |  |
| Powell singular function (13) | SE | [X] | powellsg.jl |
| Wood function (14) | SE | [X] | woods.jl |
| Kowalik and Osborne function (15) | NLS | [ ] |  |
| Brown and Dennis function (16)  | NLS | [X] | brownden.jl |
| Osborne i function (17)  | NLS | [ ] |  |
| Biggs EXP6 function (18)  | OP | [ ] |  |
| Osborne 2 function (19) | NLS | [ ] |  |
| Watson function (20) | SE | [ ] |  |
| Extended Rosenbrock function (21) | OP | [X] | srosenbr.jl |
| Extended Powell singular function (22) | OP | [ ] |  |
| Penalty function I (23)  | OP | [ ] |  |
| Penalty function II (24) | OP | [X] | penalty2.jl |
| Variably dimensioned function (25) | SE| [X] | vardim.jl |
| Trigonometric function (26) | SE | [ ] |  |
| Brown almost-linear function (27) | SE | [ ] |  |
| Discrete boundary value function (28) | SE | [X] | morebv.jl |
| Discrete integral equation function (29) | SE | [ ] |  |
| Broyden tridiagonal function (30) | SE | [ ] |  | (brybnd ??)
| Broyden banded function (31) | SE | [X] | sbrybnd.jl |
| Linear function - full rank (32) | NLS | [X] | arglina.jl  |
| Linear function - rank 1 (33) | NLS | [X] | arglinb.jl |
| Linear function - rank 1 with zero columns and rows (34) | NLS | [X] | arglinc.jl |
| Chebyquad function (35) | SE | [ ] |  |
