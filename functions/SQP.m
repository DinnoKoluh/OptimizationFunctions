function [sol, iter, error] = SQP(f, e, x_0, eps, maxIter)
x = x_0;

for i = 1:maxIter
    g = gradient(f,x);
    Q = hessian(f,x);
    E = jacobian(e,x);
    N = zeros(length(e),1);
    if (abs(det([Q transpose(E); E N])) < eps)
        rez = WLMS(E,-g(1),1);
    else
        rez = -inv([Q transpose(E); E N])*[g; computeHandleFunctions(e,x)];
    end
    deltaX = rez(1:length(x),1);
    
    error = abs(max(computeHandleFunctions(e,x)));
    if error < eps
        iter = i;
        sol = x;
        return;
    end
    %s = backtrackingCubic(f, x, deltaX, g)
    s = 1;
    x = x + s*deltaX;
end
disp('Prekoracen maksimalan broj iteracija. SQP metoda');

end

