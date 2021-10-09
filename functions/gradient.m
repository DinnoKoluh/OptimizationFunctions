function [grad] = gradient(f, x)
n = length(x);
grad = zeros(n,1);

for i=1:n
    parDer = partialDerivativeEq(f, n, i); % trazanje gradienta preko parcijalnih izvoda
    grad(i,1) = parDer(x);
end

end

