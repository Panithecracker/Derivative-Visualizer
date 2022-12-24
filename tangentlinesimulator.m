% this program uses a function f and animates the derivative funtion as the
% slope of the tangent line of the graph of f throuhout the domain of f.
clear
x = linspace(0,6*pi,600);
h = x(2)-x(1); %distance between the equispaced set of points inside x
y = sin(x);
for i=1:length(x)
    dx = [x(1):h:x(length(x))];
    for l=1:length(dx)
        dy(l) = tline(x(i),dx(l));
    end
    plot(x,y);
    hold on
    axis([0 6*pi -1 1])
    plot(dx,dy);
    hold on
    plot(dx(i),dy(i),'o');
    pause(0.005);
    hold off
end

x = [];
y = [];
x = linspace(-3,3,150);
y = linspace(-3,3,150);
[X Y] = meshgrid(x,y);
%get the z coordinates for each of the pairs of points (x,y) ...
for i=1:length(x)
    for j=1:length(y)
        Z(i,j) = g(X(i,j),Y(i,j));
    end
end
figure

h = x(2)-x(1); %this is the constant space between points plotted...
%we want to animate the two tangent lines to the saddle in every point:
% one is the tangent line in the x direction(given by gx())
% another is the tangent line int the y direction (given by gy())
for i=30:length(x)
    %we will animate it by successively looking at the tangent lines on the
    %line x = x(i)...
    xcoord = x(i);
    for j=1:length(y)
        surf(X,Y,Z);
        axis([-3 3 -3 3 -20 20]);
        hold on
        shading interp
        grid
        xlabel("x");
        ylabel("y");
        zlabel("z");
        ycoord = y(j);
        %currently at the point (xcoord,ycoord)
        %now, we find the slopes (for tangent lines in x and y directions at point (xcoord,ycoord,f(xcoord,ycoord))
        %Plot the animated point at the current point...
        plot3(x(i),y(j),g(x(i),y(j)),'o');
        hold on
        %now, lets plot some points of the graph of the tangent in the x
        dx = [x(1):h:x(length(x))];
        dy = repelem(ycoord,length(dx));
        for l=1:length(dx)
            dz(l) = tlinex(xcoord,ycoord,dx(l),ycoord);
        end
        plot3(dx,dy,dz,'LineWidth',3);
        hold on
        %now lets plot some points of the graph of the tangent in the y dir
        dy = [y(1):h:y(length(y))];
        dx = repelem(xcoord,length(dy));
        for l=1:length(dy)
            dz(l) = tliney(xcoord,ycoord,xcoord,dy(l));
        end
        plot3(dx,dy,dz,'LineWidth',3);
        legend({'f(x,y)','point','∂f/∂x','∂f/∂y'})
        pause(0.01)
        hold off
    end
end


function y = tline(tangency,x) %tangent line intersecting the graph of sin(x) at the point (tangency,sin(tangency))
        y = cos(tangency)*(x-tangency) + sin(tangency);
end
function z = g(x,y)
    z = x^2-y^2;
end
function z = gx(x,y)
  %partial derivative of g with respect to x
  z = 2*x;
end
function z = gy(x,y)
%partial derivative of g with respect to y
 z = -2*y;
end
function z = tlinex(tangencyx,tangencyy,x,y)
   z = gx(tangencyx,tangencyy)*(x-tangencyx) + g(tangencyx,tangencyy);
end
function z = tliney(tangencyx,tangencyy,x,y)
   z = gy(tangencyx,tangencyy)*(y-tangencyy)+g(tangencyx,tangencyy);
end
