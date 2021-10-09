function [x_min, iter, error] = newtonsMultiVarMethod(f_handle, x_0, eps, maxIter, method, plt)

x_min = 'Error';
iter = maxIter;
error = 'Error';
x = x_0;

for i = 1:maxIter
    H = hessian(f_handle, x);
    g = gradient(f_handle, x);
    deltaX = -inv(H)*g;
    q = transpose(deltaX)*H*deltaX;
    
    if q <= 2*eps
        x_min = x;
        iter = i;
        error = max(abs(deltaX));
        return;
    end
    
    s = calculateStep(f_handle, x, deltaX, g, method);
    
    x_previous = x;
    x = x + s*deltaX; % inkrementiraj x za s*deltaX
    
    % Plotanje puta gradijentnog spusta
    if plt == 1
        plotSteps(f_handle, x, x_previous, i, method, 'newtonsMultiVarMethod');
    end
    
end

display('Dostignut maksimalan broj iteracija. Newton-ov metod za funkcije vise varijabli.');

end

