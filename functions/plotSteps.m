function [ ] = plotSteps(f_handle, x, x_dummy, i, s_method, solve_method)
    % [ ] = plotSteps(f_handle, x, x_dummy, i, s_method, solve_method)	
    % Takes in the function handler "f_handle" and two pints "x" and "x_dummy" and plots a line between those two points with markers on their
    % ends with the function "markerPlot". The string variable "s_method" defines the method of searching for the step size "s" 
    % which is going to be displayed on the plot and the the string variable "solve_method" which is going to be displayed on the plot
    % as the possible way on how the problem was solved with values: "gradDescent" and "newtonsMultiVarMethod".

    if strcmp(s_method,'ExactLineSearch') 
        if strcmp(solve_method, 'gradDescent')
            title('Exact line search of gradient descent');
        elseif strcmp(solve_method, 'newtonsMultiVarMethod')
            title('Exact line search of Newtons method');
        end
    elseif strcmp(s_method, 'BasicBacktrackingLineSearch')
        if strcmp(solve_method, 'gradDescent')
            title('Basic backtracking line search of gradient descent');
        elseif strcmp(solve_method, 'newtonsMultiVarMethod')
            title('Basic backtracking line search of Newtons method');
        end
    elseif strcmp(s_method, 'CubicBacktrackingLineSearch')
        if strcmp(solve_method, 'gradDescent')
            title('Cubic backtracking line serach of gradient descent');
        elseif strcmp(solve_method, 'newtonsMultiVarMethod')
            title('Cubic backtracking line serach of Newtons method');
        end
    end
    hold on;
    plot3([x(1,1) x_dummy(1,1)], [x(2,1) x_dummy(2,1)], [f_handle(x) f_handle(x_dummy)],'r');
    hold on;
    markerPlot(x_dummy(1,1), x_dummy(2,1), f_handle(x_dummy), i);
    markerPlot(x(1,1), x(2,1), f_handle(x), i+1);
end

