% Bisection Method

fun = @(x) x.^3-2*x-5;
eps = 1e-5;
maxIter = 50;
a = 0;
b = 2;
plt = 1;
[x_min, iter, error] = bisectionMethod(fun, a, b, eps, maxIter, plt);