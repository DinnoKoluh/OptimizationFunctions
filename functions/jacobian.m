function [J] = jacobian(f_handle, x)
    % [J] = jacobian(f_handle, x)
    % A function which takes a vector of cells with function handlers "f_handle" and a vector of points "x".
    % Returns the Jacobian of the input variables.
    % The dimensions of the vector of functions and the vector of points must be the same - a quadratic Jacobian.

    n = length(x);
    m = length(f_handle);
    J = zeros(m,n);

    for i=1:m
        for j=1:n
        first = partialDerivativeEq(f_handle{i,1}, n, j);
        J(i,j) = first(x);
        end
    end
end