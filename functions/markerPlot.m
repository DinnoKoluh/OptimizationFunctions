function [] = markerPlot(x,y,z,i)
    % [] = markerPlot(x,y,z,i)
    % A function which takes three point of a function of two variables and the number "i". 
    % Plots a marker on the plot, at the given coordinates, which has the number "i" inside it.
    hold on;
    text(x, y,z, num2str(i-1), 'FontSize',8,...
    'HorizontalAlignment','center');
    plot3(x, y, z, 'ro', 'MarkerEdgeColor','k',...
    'MarkerFaceColor','g','MarkerSize',10);
end

