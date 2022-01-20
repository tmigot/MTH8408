# List of problems

## Luksan - Matonoha - Vlček test set

Modified CUTE Problems for Sparse Unconstrained Optimization
Ladislav Luksan, Ctirad Matonoha, Jan Vlček
https://www.researchgate.net/publication/325314531_Modified_CUTE_Problems_for_Sparse_Unconstrained_Optimization
http://www.cs.cas.cz/matonoha/download/V1081.pdf (October 2010)

These problems were chosen from the CUTE testing environment [2] (we have selected only problems
for large-scale sparse unconstrained optimization with an arbitrary number of variables). Most of these problems were implemented using the AMPL sources contained in [1]. Several CUTE problems were modified

The type of problems is either: OP (for OptimizationProblems.jl), OP-PDE (for OptimizationProblems.jl and PDEOptimizationProblems.jl), or NLS (for NLSProblems.jl).

There are 22 NLS problems, 36 OP, and 0 OP-PDE.

| Name in the report | Type of problems | Implemented in JSO? | name of the file in JSO |
| --- | --- | --- | --- |
| Problem 1. ARWHEAD | OP | [X] | arwhead.jl |
| Problem 2. BDQRTIC  | NLS | [X] | bdqrtic.jl |
| Problem 3. BROYDN7D | OP | [X] | broydn7d.jl |
| Problem 4. BRYBND | NLS | [X] | brybnd.jl |
| Problem 5. CHAINWOO | NLS | [X] | chainwoo.jl | define also woods
| Problem 6. COSINE | OP | [X] | cosine.jl |
| Problem 7. CRAGGLVY | NLS | [X] | cragglvy.jl |
| Problem 8. CURLY10 | OP | [X] | curly.jl |
| Problem 9. CURLY20 | OP | [X] | curly.jl |
| Problem 10. CURLY30 | OP | [X] | curly.jl |
| Problem 11. DIXMAANE | OP | [X] | dixmaan_efgh.jl |
| Problem 12. DIXMAANF | OP | [X] | dixmaan_efgh.jl |
| Problem 13. DIXMAANG | OP | [X] | dixmaan_efgh.jl |
| Problem 14. DIXMAANH | OP | [X] | dixmaan_efgh.jl |
| Problem 15. DIXMAANI | OP | [X] | dixmaan_ijkl.jl |
| Problem 16. DIXMAANJ | OP | [X] | dixmaan_ijkl.jl |
| Problem 17. DIXMAANK | OP | [X] | dixmaan_ijkl.jl |
| Problem 18. DIXMAANL | OP | [X] | dixmaan_ijkl.jl |
| Problem 19. DIXMAANM | OP | [X] | dixmaan_mnop.jl |
| Problem 20. DIXMAANN | OP | [X] | dixmaan_mnop.jl |
| Problem 21. DIXMAANO | OP | [X] | dixmaan_mnop.jl |
| Problem 22. DIXMAANP | OP | [X] | dixmaan_mnop.jl |
| Problem 23. DQRTIC | NLS | [X] | dqrtic.jl |
| Problem 24. EDENSCH | NLS | [X] | edensch.jl |
| Problem 25. EG2 | OP | [X] | eg2.jl |
| Problem 26. ENGVAL1 | OP | [X] | engval1.jl |
| Problem 27. CHNROSNB – modified | NLS | [X] | chnrosnb_mod.jl |
| Problem 28. ERRINROS – modified | OP | [X] | errinros_mod.jl |
| Problem 29. EXTROSNB | NLS | [X] | extrosnb.jl |
| Problem 30. FLETCBV3 – modified | OP | [X] | fletcbv3_mod.jl |
| Problem 31. FLETCBV2 | OP | [X] | fletcbv2.jl |
| Problem 32. FLETCHCR | NLS | [X] | fletchcr.jl |
| Problem 33. FMINSRF2 | OP | [X] | fminsrf2.jl |
| Problem 34. FREUROTH | NLS | [X] | freuroth.jl |
| Problem 35. GENHUMPS | OP | [X] | genhumps.jl |
| Problem 36. GENROSE | NLS | [X] | genrose.jl |
| Problem 37. INDEF – modified | OP | [X] | indef_mod.jl |
| Problem 38. LIARWHD | NLS | [X] | liarwhd.jl |
| Problem 39. MOREBV – different start point | NLS | [X] | morebv.jl |
| Problem 40. NCB20 – corrected | OP | [X] | ncb20.jl |
| Problem 41. NCB20B – corrected | OP | [X] | ncb20b.jl |
| Problem 42. NONCVXUN | OP | [X] | noncvxun.jl |
| Problem 43. NONCVXU2 | OP | [X] | noncvxu2.jl |
| Problem 44. NONDIA | NLS | [X] | nondia.jl |
| Problem 45. NONDQUAR | NLS | [X] | nondquar.jl |
| Problem 46. PENALTY3 | OP | [X] | penalty3.jl |
| Problem 47. POWELLSG | NLS | [X] | powellsg.jl |
| Problem 48. SBRYBND – different scaling | OP | [X] | sbrybnd.jl |
| Problem 49. SCHMVETT | OP | [X] | schmvett.jl |
| Problem 50. SCOSINE – different scaling | OP | [X] | scosine.jl |
| Problem 51. SINQUAD | NLS | [X] | sinquad.jl |
| Problem 52. SPARSINE | NLS | [X] | sparsine.jl |
| Problem 53. SPARSQUR | NLS | [X] | sparsqur.jl |
| Problem 54. SPMSRTLS | OP | [ ] |  |
| Problem 55. SROSENBR | NLS | [X] | srosenbr.jl |
| Problem 56. TOINTGSS | OP | [X] | tointgss.jl |
| Problem 57. TQUARTIC | NLS | [X] | tquartic.jl |
| Problem 58. WOODS | NLS | [X] | woods.jl |

Thanks to @dpo and @vepiteski.
