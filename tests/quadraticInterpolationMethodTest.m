addpath(strcat(cd,'\Functions'))
% Metod kvadratne interpolacije % 
fun = @(x) x.^3-2*x-5;
eps = 1e-5;
maxIter = 50;
x_L = 0;
x_r = 2;
[x_min, iter, error] = quadraticInterpolMethod(fun, x_L, x_r, eps, maxIter);
