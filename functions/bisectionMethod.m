function [x_min, iter, error] = bisectionMethod(f_handle, a, b, eps, maxIter, plt)
iter = maxIter;
error = 'Error';
x_min = 'Error';

if a > b
    display('Vrijednost "a" mora biti veca od vrijednsoti "b"')
    return;
end

% Plotanje
if plt == 1
    L = 0;
    if (abs(a) > abs(b))
        L = abs(a);
    else
        L = abs(b);
    end
    L = L + 1;
    x = -L:0.02:L;
    for i = 1:length(x)
        der = derivativeEq(f_handle);
        plot(x(1,i), der(x(1,i)),'r.', 'MarkerSize',5);
        hold on;
        grid on;
    end
end

% Algoritam
for i=1:maxIter
    c = (a+b)/2; % polovi interval
    der = derivativeEq(f_handle); % trazi izvod funckije f_handle
    
    if plt == 1
        plot(a, der(a), 'b.','MarkerSize',10);
        plot(b, der(b), 'g.', 'MarkerSize',10);
    end
    
    if abs(der(c)) < eps
        iter = i;
        error = abs(der(c));
        x_min = c;
        break;
    elseif der(c) < 0
        a = c;
    elseif der(c) > 0 
        b = c;
    end
end

if i == maxIter 
    display('Dostignut maksimalan broj iteracija. Bisekcioni metod.');
end


