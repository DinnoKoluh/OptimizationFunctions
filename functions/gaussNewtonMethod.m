function [sol, iter, error] = gaussNewtonMethod(r, W, x_0, eps, maxIter)
    x = x_0;
    for i = 1:maxIter
        H = jacobian(r,x);
        deltaX = -inv(transpose(H)*W*H)*transpose(H)*W*computeHandleFunctions(r,x);

        error = max(abs(deltaX));
        if error<eps 
            sol = x;
            iter = i;
            return;
        end
        x = x + deltaX;
    end

    disp('Prekoracen maksimalan broj iteracija. Gauss Newton metod');
end

