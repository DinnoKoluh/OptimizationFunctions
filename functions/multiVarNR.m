function [x_min, iter, error] = multiVarNR(f_handle, x_0, maxIter, eps)
% max. dozvoljena greska eps
% maxIter max broj iteracija
% x_0 pocetni vektor tacaka
iter = maxIter;
error = 'Error';
x_min = 'Error';
x = x_0;

for i = 1:maxIter 
    if (max(abs(computeHandleFunctions(f_handle, x))) < eps)
        error = max(abs(computeHandleFunctions(f_handle, x)));
        iter = i-1;
        x_min = x;
        break;
    end
% Racunaj Newton-ov korak
dx = -inv(jacobian(f_handle, x))*computeHandleFunctions(f_handle, x); 
% Iteriraj x
x = x + dx;
end

if (i == maxIter) 
    display('Prekoracen maksimalan broj iteracija. Mulitvarijabilni NR metod.');
end