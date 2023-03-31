function probleme_208_ADNLP()
    f(x) = 100 * (x[2] - x[1]^2)^2 + (1 - x[1])^2;
    x0 = [-1.2; 1.0];
    nlp = ADNLPModel(f, x0);
    return nlp
end