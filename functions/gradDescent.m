function [x_min, iter, error, s] = gradDescent(f_handle, x_0, eps, maxIter, method, plt)
x_min = 'Error';
iter = maxIter;
error = 'Error';
x = x_0;

for i = 1:maxIter
    g = gradient(f_handle, x); % trazenje gradijenta funkcije f_handle
    deltaX = -g; % deltaX je jednak negativno gradijenut funkcije
    
    error = max(abs(deltaX));
    if (error < eps)
        iter = i;
        x_min = x;
        return;
    end
    
    s = calculateStep(f_handle, x, deltaX, g, method);
    
    x_previous = x;
    x = x + s*deltaX; % inkrementiraj x za s*deltaX
    
    % Plotanje puta gradijentnog spusta
    if plt == 1
        plotSteps(f_handle, x, x_previous, i, method, 'gradDescent');
    end
end

display('Dostignut maksimalan broj iteracija. Gradient Descent.');

end
