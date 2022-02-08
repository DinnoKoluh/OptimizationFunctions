function [y] = partialDerivativeEq(f, n, i)
    % [y] = partialDerivativeEq(f, n, i)
    % Takes in the function handler "f", the number of variables on which "f" depends and the number "i".
    % Returns a function handler "y" of the partial derivative of "f" with respect to the i-th variable. 
    % So, y(x) will return the partial derivative of f with respect to the i-th variable of f.

    dx = 1e-6; % change
    dX = zeros(n, 1);
    dX(i,1) = dx; % set the change of the i-th varaible for which we are computing the derivative
    y = @(x) (f(x+dX)-f(x))/dx;
end
