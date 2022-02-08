function [grad] = gradient(f, x)
    % [grad] = gradient(f, x)
    % A function which takes a function handler "f" and a vector of points "x" and 
    % returns the gradient of the function in the points "x".

    n = length(x);
    grad = zeros(n,1);

    for i=1:n
        parDer = partialDerivativeEq(f, n, i); % trazanje gradienta preko parcijalnih izvoda
        grad(i,1) = parDer(x);
    end

end

