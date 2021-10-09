function [y] = computeHandleFunctions(f_handle, x)
n = length(f_handle);
y = zeros(n,1);
for i = 1:n
    y(i,1) = f_handle{i,1}(x);
end