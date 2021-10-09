function [x_min, iter, error] = oneVarNR(f, x_0, maxIter, eps)
% finalna greska eps
% n max broj iteracija
% x_0 pocetna tacka
x = x_0;
for i = 0:maxIter
  der = derivativeEq(f);
  dx = -(1/der(x)) * f(x);
  x = x + dx;
  
   if (abs(f(x)) < eps)
      error = abs(f(x));
      x_min = x;
      iter = i;
      break;
  end
end

if (i == maxIter) 
    display('Prekoracen maksimalan broj iteracija');
end