function [ ] = plotSteps(f_handle, x, x_dummy, i, s_method, solve_method)

if strcmp(s_method,'ExactLineSearch') 
    if strcmp(solve_method, 'gradDescent')
        title('Exact line search nacin gradijentnog spusta');
    elseif strcmp(solve_method, 'newtonsMultiVarMethod')
        title('Exact line search nacin Newton-ove metode');
    end
elseif strcmp(s_method, 'BasicBacktrackingLineSearch')
    if strcmp(solve_method, 'gradDescent')
        title('Basic backtracking line search nacin gradijentnog spusta');
    elseif strcmp(solve_method, 'newtonsMultiVarMethod')
        title('Basic backtracking line search nacin Newton-ove metode');
    end
elseif strcmp(s_method, 'CubicBacktrackingLineSearch')
    if strcmp(solve_method, 'gradDescent')
        title('Cubic backtracking line serach nacin gradijentnog spusta');
    elseif strcmp(solve_method, 'newtonsMultiVarMethod')
        title('Cubic backtracking line serach nacin Newton-ove metode');
    end
end
hold on;
plot3([x(1,1) x_dummy(1,1)], [x(2,1) x_dummy(2,1)], [f_handle(x) f_handle(x_dummy)],'r');
hold on;
markerPlot(x_dummy(1,1), x_dummy(2,1), f_handle(x_dummy), i);
markerPlot(x(1,1), x(2,1), f_handle(x), i+1);


end

