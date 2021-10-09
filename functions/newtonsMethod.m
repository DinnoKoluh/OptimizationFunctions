function [x_min, iter, error] = newtonsMethod(f_handle, x_0, eps, maxIter)
iter = maxIter;
error = 'Error';
x = x_0;

for i = 1:maxIter
  der1 = nthDerivativeEq(f_handle, 1); %prvi izvod
  der2 = nthDerivativeEq(f_handle, 2); % drugi izvod
  dx = -(1/der2(x)) * der1(x); % trazenje inkrementa dx
  x = x + dx;
  
  error = abs(der1(x));
  if (error < eps)
      iter = i+1;
      x_min = x;
      break;
  end
  
end

if (i == maxIter) 
    display('Prekoracen maksimalan broj iteracija. Newton-ov metod.');
end

end

