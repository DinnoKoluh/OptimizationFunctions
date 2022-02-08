function [x_min, iter, error] = oneVarNR(f, x_0, maxIter, eps)
    % [x_min, iter, error] = oneVarNR(f, x_0, maxIter, eps)
    % Does the same thing as multiVarNR but just in one dimension i.e. for one function.

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
        display('Reached maximum number of iterations.');
    end
end