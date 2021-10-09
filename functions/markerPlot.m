function [] = markerPlot(x,y,z,i)
hold on;
text(x, y,z, num2str(i-1), 'FontSize',8,...
'HorizontalAlignment','center');
plot3(x, y, z, 'ro', 'MarkerEdgeColor','k',...
'MarkerFaceColor','g','MarkerSize',10);
end

