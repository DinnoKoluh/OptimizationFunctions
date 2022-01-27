% DZ3
init;

maxIter = 500;
eps = 0.005;

%Plotanje nema smisla za 4D funkcije
% f_plot = @(x1, x2, x3) x1.^2 + 2*x2.^2 + 2*x3.^2 + 2*x1.*x2 + 2*x2.*x3;
% functionPlot(f_plot, -3, 3, op1, N);

% Gradijentni metod
fun1 = @(x) x(1,1)^2 + 2*x(2,1)^2 + 2*x(3,1)^2 + 2*x(1,1)*x(2,1) + 2*x(2,1)*x(3,1);
x_0 = [2; 4; 10];
[x_min1, iter1, error1] = gradDescent (fun1, x_0, eps, maxIter, method3, 1);
figure;
[x_min2, iter2, error2] = newtonsMultiVarMethod (fun1, x_0, eps, maxIter, method3, 1);
