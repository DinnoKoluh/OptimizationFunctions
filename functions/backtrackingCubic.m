function [s] = backtrackingCubic(f, x_k, deltaX_k, g_k)
alpha = 1/3;
s_0 = 0.01;
f_k = f(x_k);
d_k = transpose(g_k)*deltaX_k;

s = 1;

while s > s_0
    f_s = f(x_k + s*deltaX_k);
    if f_s <= (f_k+s*alpha*d_k)
        return;
    end
    
    if s == 1
        s_tmp = d_k/(2*(f_k+d_k-f_s));
    else 
        s_tmp = cubic(f_k, d_k, f_s, s, f_p, s_p);
    end
    
    s_p = s;
    f_p = f_s;
    s = range(s_tmp, s/10, s/2);
end

s = s_0;

end

