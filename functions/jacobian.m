function [J] = jacobian(f_handle, x)
% f - vektor function handle-ra, tj. vektor funkcija
% x - vektor tacaka za koje trazimo izvod
n = length(x);
m = length(f_handle);
J = zeros(m,n);

for i=1:m
    for j=1:n
    first = partialDerivativeEq(f_handle{i,1}, n, j);
    J(i,j) = first(x);
    end
end