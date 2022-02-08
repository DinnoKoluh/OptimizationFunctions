function [functions] = vectorFunctions()
    fun1 = @(x) x(1,1)^2+4*x(1,1)+x(2,1)^2-5;
    fun2 = @(x) 4*x(1,1)^2+9*x(2,1)^2 - 36;
    functions = {fun1; fun2};
end