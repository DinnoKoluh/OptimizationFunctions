function [out] = range(s, a, b)
    % [out] = range(s, a, b)
    % Helper function for 'CubicBacktrackingLineSearch'. 
    % Lookup the definition of 'CubicBacktrackingLineSearch' for more info.

    if s < a
        out = a;
    elseif s > b
        out = b;
    else
        out = s;
    end

end