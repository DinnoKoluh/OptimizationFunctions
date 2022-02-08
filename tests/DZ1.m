% DZ1
init;

maxIter = 500;
eps = 0.005;

% Plotting
f_plot = @(x1, x2) x1.^2 + x2.^2-2*x1.*x2;

% Gradient Method
fun1 = @(x) x(1,1).^2 + x(2,1).^2-2*x(1,1)*x(2,1);
x_0 = [2;-2];

functionPlot(f_plot, -3, 3, op2, N);
[x_min1, iter1, error1] = gradDescent (fun1, x_0, eps, maxIter, method2, 1);

hold off;

functionPlot(f_plot, -3, 3, op2, N);
[x_min2, iter2, error2] = newtonsMultiVarMethod (fun1, x_0, eps, maxIter, method2, 1);
