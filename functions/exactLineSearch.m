function [s] = exactLineSearch(f)
    eps = 1e-9;
    maxIter = 100;
    x_0 = 0.5; % odabit pocentne vrijednost za 
    %s = newtonsMethod(f, x_0, eps, maxIter); % koristenje Newtonove Metode za trazenje koraka s
    s = quadraticInterpolMethod(f, -1, 1, eps, maxIter);
    %s = oneVarNR(f, x_0, eps, maxIter)
end

