function [sol, iter, error] = ECWLSmethod(r, e, W, x_0, eps, maxIter )

    x = x_0;
    deltaX = zeros(length(x),1);
    for i = 1:maxIter
        E = jacobian(e,x);
        H = jacobian(r,x);
        G = transpose(H)*W*H;
        g = transpose(H)*W*computeHandleFunctions(r,x);

        N = zeros(length(e),length(e));

        if (abs(det([G transpose(E); E N])) < eps) 
            deltaX = -inv(G)*g;
        else
            rez = -inv([G transpose(E); E N])*[g; computeHandleFunctions(e,x)];
            deltaX = rez(1:length(x),1);
        end
        %lambda = rez(length(x)+1:end,1);

        error = max(abs([deltaX; computeHandleFunctions(e,x)]));
        if error<eps 
            sol = x;
            iter = i;
            return;
        end
        x = x + deltaX;
    end

    disp('Prekoracen maksimalan broj iteracija. ECWLS metoda');
end
