function h = drawPoint(point, name, h)

if ~isempty(h)
    axes(h);
    hold on
else
    figure
    %Draw ref frame
    plot3([0,0.1],[0,0],[0,0],'Color','r','LineWidth',5)
    hold on
    plot3([0,0],[0,0.1],[0,0],'Color','g','LineWidth',5)
    plot3([0,0],[0,0],[0,0.1],'Color','b','LineWidth',5)
    h = gca;
end

plot3(point(1),point(2),point(3),'Marker','.','MarkerSize',10);
set(h,'Units','Normalized')
text(point(1)+0.02,point(2)+0.02,point(3)+0.02,name);

hold off