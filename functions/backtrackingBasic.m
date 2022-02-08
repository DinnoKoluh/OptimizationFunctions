function [s] = backtrackingBasic(f, x_k, deltaX_k, g_k)
    % [s] = backtrackingBasic(f, x_k, deltaX_k, g_k)
    % A function which takes a function handler "f", the k-th vector 
    % of points "x_k", the k-th value deltaX and the k-th value of the gradient "g_k".
    % Returns, with the basic backtracking method, the step value "s".
    alpha = 1/3;
    beta =  0.5;
    s_0 = 0.01; % biranje s0

    % provjeriti da li je f(xk + s0*dx) < f(xk), ako nije smanjiti s0 i
    % provjeriti opet
    while 1
        if (f(x_k+s_0*deltaX_k) <= f(x_k)) 
            break;
        end
        s_0 = s_0*0.9; % arbitrarly chosen decrease value 0.9
    end

    s = 1; % set s = 1

    % finding s
    while 1
        if f(x_k+s*deltaX_k) <= f(x_k)+alpha*s*transpose(g_k)*deltaX_k 
            return;
        end
        s = beta*s; % smanjiti s beta puta
        if s < s_0
            s = s_0;
            return;
        end
    end

end

