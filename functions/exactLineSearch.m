function [s] = exactLineSearch(f)
    % [s] = exactLineSearch(f)
    % A function which takes a function handler "f" and returns 
    % the optimal value of the step "s". Done using the Newton method.

    eps = 1e-9;
    maxIter = 100;
    x_0 = 0.5; % odabit pocentne vrijednost za 
    %s = newtonsMethod(f, x_0, eps, maxIter); % koristenje Newtonove Metode za trazenje koraka s
    s = quadraticInterpolMethod(f, -1, 1, eps, maxIter);
    %s = oneVarNR(f, x_0, eps, maxIter)
end

