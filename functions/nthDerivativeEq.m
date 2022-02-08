function [y] = nthDerivativeEq(f, n)
    % [y] = nthDerivativeEq(f, n)
    % Takes a function handler "f" and the number "n" which represents the n-th derivative of "f".
    % Returns a function handler "y" of the n-th derivative of the 
    % function "f". So, y(x) gives the n-th derivative of "f" at point "x".

    dx = 1e-5;
    y = @(x) 0;
    for k = 0:1:n
     y = @(x) y(x) + (-1)^(n+k)*nchoosek(n,k)*f(x+k*dx);
    end
    y = @(x) y(x)/(dx)^n;
end