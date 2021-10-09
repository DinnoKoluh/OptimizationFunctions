function [y] = nthDerivativeEq(f, n)
dx = 1e-5;
y = @(x) 0;
for k = 0:1:n
 y = @(x) y(x) + (-1)^(n+k)*nchoosek(n,k)*f(x+k*dx);
end
y = @(x) y(x)/(dx)^n;