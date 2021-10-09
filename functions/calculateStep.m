function [s] = calculateStep(f_handle, x, deltaX, g, method)
    % racunanje s sa ExactLineSearch
    if strcmp(method,'ExactLineSearch')
        gamma_s = @(s) f_handle(x+s*deltaX); % pravljenje funkcije gamma(s)
        s = exactLineSearch(gamma_s);
        
    % racunanje s sa BacktrackingLineSearch
    elseif strcmp(method, 'BasicBacktrackingLineSearch')
        s = backtrackingBasic(f_handle, x, deltaX, g);
        
    elseif strcmp(method, 'CubicBacktrackingLineSearch')
        s = backtrackingCubic(f_handle, x, deltaX, g);

    % slucaj kada ime nije ispravno
    else
        display('Ukucano pogresno ime metode. Moguca imena su "ExactLineSearch" i "BacktrackingLineSearch"');
        return;
    end

end

