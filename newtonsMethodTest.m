addpath(strcat(cd,'\Functions'))
% Newtonov metod
fun = @(x) x.^3-2*x-5;
eps = 1e-5;
maxIter = 20;
x_0 = 1.5;
[x_min, iter, error] = newtonsMethod(fun, x_0, eps, maxIter);