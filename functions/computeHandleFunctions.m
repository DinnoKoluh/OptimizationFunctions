function [y] = computeHandleFunctions(f_handle, x)
    % [y] = computeHandleFunctions(f_handle, x)
    % A function which takes a cell vector composed of function handlers
    % and a vector of points at which we are computing the values of the functions.
    % Returns a vector of values of the given functions at the points "x".    
    n = length(f_handle);
    y = zeros(n,1);
    for i = 1:n
        y(i,1) = f_handle{i,1}(x);
    end
end