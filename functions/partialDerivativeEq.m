function [y] = partialDerivativeEq(f, n, i)
% derivate with respect to the i-th variable
dx = 1e-6; % promjena
dX = zeros(n, 1);
dX(i,1) = dx; % postaviti promjenu n-te varijable po kojoj trazimo izvod
y = @(x) (f(x+dX)-f(x))/dx;
end
