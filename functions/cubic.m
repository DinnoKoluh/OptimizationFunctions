function [out] = cubic(f_k, d_k, f_s, s, f_p, s_p)

A = [s_p^2, -s^2; -s_p^3, s^3];
b = [f_s-f_k-s*d_k; f_p-f_k-s*d_k];

ab = 1/(s^2*s_p^2*(s-s_p))*A*b;
a = ab(1,1);
b = ab(2,1);

if abs(a) < 0.00001
    out = -d_k/(2*b);
else
    out = (-b+sqrt(b^2-3*a*d_k))/(3*a);
end

end

