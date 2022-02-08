% DZ2
init;

maxIter = 500;
eps = 0.005;

% Plotting
f_plot = @(x1, x2)  10*x1.^4-20*x1.^2.*x2+10*x2.^2+x1.^2-2*x1 + 5;

% Gradient Method
fun1 = @(x) 10*x(1,1)^4-20*x(1,1)^2*x(2,1)+10*x(2,1)^2+x(1,1)^2-2*x(1,1) + 5;
x_0 = [-1;3];

functionPlot(f_plot, -3, 3, op3, N);
[x_min1, iter1, error1] = gradDescent (fun1, x_0, eps, maxIter, method3, 1);

hold off;

functionPlot(f_plot, -3, 3, op3, N);
[x_min2, iter2, error2] = newtonsMultiVarMethod (fun1, x_0, eps, maxIter, method3, 1);
