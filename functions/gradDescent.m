function [x_min, iter, error, s] = gradDescent(f_handle, x_0, eps, maxIter, method, plt)
    % [x_min, iter, error] = gradDescent(f_handle, x_0, eps, maxIter, method, plt)
    % A function which takes a function handler, the initial (guess) vector of points "x_0",
    % the maximum allowed error "eps", the maximum allowed number of iterations "maxIter", 
    % the string variable "method" with which, depending on its value, we find the value of the step size "s".
    % Possible values for "method":
    % method1 = 'ExactLineSearch' 
    % method2 = 'BasicBacktrackingLineSearch'
    % And the last parameter is the boolean variable "plt" which plots the gradient descent steps.
    % Returns a vector of the points of the minimum "x_min", the number of executed iterations 
    % "iter" and the error "error".

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

        %s = 0.02;
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
