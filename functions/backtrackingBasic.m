function [s] = backtrackingBasic(f, x_k, deltaX_k, g_k)
alpha = 1/3;
beta =  0.5;
s_0 = 0.01; % biranje s0

% provjeriti da li je f(xk + s0*dx) < f(xk), ako nije smanjiti s0 i
% provjeriti opet
while 1
    if (f(x_k+s_0*deltaX_k) <= f(x_k)) 
        break;
    end
    s_0 = s_0*0.9; % proizvoljno odabrana vrijednost smanjivanja 0.9
end

s = 1; % postaviti s = 1

% traziti s
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

