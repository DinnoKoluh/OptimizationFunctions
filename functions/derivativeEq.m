function [y] = derivativeEq (f)
    % [y] = derivativeEq (f)
    % A function which takes a function handler "f" and returns a 
    % function handler of the derivative of the function f for any point
    % x. So, y(x) will return the derivative of f at point x.
    dx = 1e-6;
    y = @(x) (f(x+dx)-f(x))/dx;
end