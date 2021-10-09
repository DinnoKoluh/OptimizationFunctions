function [y] = derivativeEq (f)
dx = 1e-6;
y = @(x) (f(x+dx)-f(x))/dx;
end