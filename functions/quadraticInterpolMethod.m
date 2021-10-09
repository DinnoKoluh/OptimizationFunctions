function [x_min, iter, error] = quadraticInterpolMethod(f_handle, x_L, x_r, eps, maxIter)
x_min = 'Error';
error = 'Error';
iter = maxIter;
x_c = (x_L + x_r)/2; 

for i = 1:maxIter
    M = [x_L^2 x_L 1;
         x_c^2 x_c 1;
         x_r^2 x_r 1];
    f = [f_handle(x_L); f_handle(x_c); f_handle(x_r)];
    abc = inv(M)*f; % trazenje parametara a,b i c kvadrante funkcije
    x_c_new = -abc(2,1)/(2*abc(1,1)); % minimum kvadratne funkcije -b/2a
    
    if x_c_new < x_c
        x_r = x_c;
    else
        x_L = x_c;
    end
    
    error = abs(f_handle(x_c)-f_handle(x_c_new));
    if error < eps
        iter = i;
        x_min = x_c_new;
        break;
    end
    
    x_c = x_c_new;
end

if i == maxIter
    display('Dostignut maksimalan broj iteracija. Metod kvadratne interpolacije.');
end

