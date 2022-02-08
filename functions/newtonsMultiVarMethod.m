function [x_min, iter, error] = newtonsMultiVarMethod(f_handle, x_0, eps, maxIter, method, plt)
    % [x_min, iter, error] = newtonsMultiVarMethod(f_handle, x_0, eps, maxIter, method, plt)
    % A function which computes the multidimensional version of the Newton method.
    % Takes a function handler "f_handle", the initial point "x_0", the maximum allowed 
    % error "eps" and the maximum number of iterations "maxIter".
    % the string variable "method" with which, depending on its value, we find the value of the step size "s".
    % Possible values for "method":
    % method1 = 'ExactLineSearch' 
    % method2 = 'BasicBacktrackingLineSearch'
    % And the last parameter is the boolean variable "plt" which plots the gradient descent steps.
    % Returns a vector of the points of the minimum "x_min", 
    % the number of executed iterations "iter" and the error "error".

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
        x = x + s*deltaX; % increment x by s*deltaX

        % Plotting the paths of the gradient descent
        if plt == 1
            plotSteps(f_handle, x, x_previous, i, method, 'newtonsMultiVarMethod');
        end

    end

    display('Maximum number of interation reached. Newtons method for multivariable functions.');

end

