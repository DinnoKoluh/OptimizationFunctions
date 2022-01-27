init;

%Plotanje
f_plot = @(x1, x2) 3*x1.^2 + x2.^2 + 4; 
functionPlot(f_plot, -2, 2, op2, N);

% Newtonov metod
fun = @(x) 3*x(1,1)^2+x(2,1)^2 + 4;
eps = 1e-5;
maxIter = 50;
x_0 = [2; 2];
[x_min, iter, error] = newtonsMultiVarMethod (fun, x_0, eps, maxIter, method1, 1);