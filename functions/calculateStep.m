function [s] = calculateStep(f_handle, x, deltaX, g, method)
    % [s] = calculateStep(f_handle, x, deltaX, g, method)
    % A function which, depending on which method (type string) was given for finding the step size "s", calls functions for that
    % method and returns the step size "s".
    % Other input parameters are the same as the parameters of the functions which calculate the step size "s".
    % Possible methods are:
    % met1 = 'ExactLineSearch'
    % met2 = 'BasicBacktrackingLineSearch'
    % met3 = 'CubicBacktrackingLineSearch'
    
    % with ExactLineSearch
    if strcmp(method,'ExactLineSearch')
        gamma_s = @(s) f_handle(x+s*deltaX); % pravljenje funkcije gamma(s)
        s = exactLineSearch(gamma_s);
        
    % with BacktrackingLineSearch
    elseif strcmp(method, 'BasicBacktrackingLineSearch')
        s = backtrackingBasic(f_handle, x, deltaX, g);
        
    elseif strcmp(method, 'CubicBacktrackingLineSearch')
        s = backtrackingCubic(f_handle, x, deltaX, g);

    % case when the name is wrong
    else
        display('Entered wrong method name. Possible names are "ExactLineSearch" and "BacktrackingLineSearch"');
        return;
    end

end

