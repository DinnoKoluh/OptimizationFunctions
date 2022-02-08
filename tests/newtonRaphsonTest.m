x_0 = [-2; -1];
eps = 1e-3;
n = 100;
% Function input 
fun1 = @(x) x(1,1)^2+4*x(1,1)+x(2,1)^2-5;
fun2 = @(x) 4*x(1,1)^2+9*x(2,1)^2 - 36;
fun3 = @(x) x(1,1)*sin(pi*x(1,1))-exp(-x(1,1));

functions = {fun1; fun2};
[sol1, iter1, error1] = multiVarNR(functions, x_0, n, eps);
[sol2, iter2, error2] = multiVarNR({fun3}, 0.1, n, eps);


fun4 = @(x) cos(x);
der = nthDerivativeEq(fun4, 2);
der(pi)