function [] = functionPlot(f, L1, L2, option, N)
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

