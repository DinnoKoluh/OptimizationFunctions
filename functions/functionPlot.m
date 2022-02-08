function [] = functionPlot(f, L1, L2, option, N)
    % [] = functionPlot(f, L1, L2, option, N)
    % A function for 3D plotting. The function takes a function handler "f", 
    % intervals "L1" and "L2", the string variable "option":
    %     op1 = 'mesh';
    %     op2 = 'surface';
    %     op3 = 'contour';
    % and a positive whole number "N" for the number of contours.
    [x,y] = meshgrid(L1:0.1:L2);
    z = f(x,y);

    if strcmp(option, 'mesh')
        figure;
        mesh(x,y,z);
    elseif strcmp(option, 'surface')
        figure;
        surf(x,y,z);
    elseif strcmp(option, 'contour')
        figure;
        contour(x,y,z, N);
    end
end

