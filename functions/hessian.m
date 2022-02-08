function [H] = hessian(f, x)
    % [H] = hessian(f, x)
    % A function which takes a function handler "f" and a vector of points "x". 
    % Returns the Hessian matrix "H" in the points "x".
    n = length(x);
    H = zeros(n,n);
    for i = 1:n
        for j = 1:n
        first = partialDerivativeEq(f, length(x), j);
        second = partialDerivativeEq(first, length(x), i);
        H(i,j) = second(x);
        end
    end

end

