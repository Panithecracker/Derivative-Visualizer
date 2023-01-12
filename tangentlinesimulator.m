clear
x = linspace(0,6*pi,600);
h = x(2)-x(1); %distance between the equispaced set of points inside x
for i=1:length(x)
    y(i) = f(x(i));
end
plot(x,y);
axis([0 6*pi min(y) max(y)]);
hold on
h1 = plot(x(1),y(1),'o');
hold on
for l=1:length(x) %tangent line y values obtention
        ly(l) = tline(x(1),x(l));
end
h2 = plot(x,ly);
legend(['f(x)'],['current point'],['df/dx'])
for i=2:length(x)
    %we will get enough points to plot the tangent line at each value of x
    for l=1:length(x) %tangent line y values obtention
        ly(l) = tline(x(i),x(l));
    end
    set(h1,'XData',x(i));
    set(h1,'YData',y(i));
    set(h2,'XData',x);
    set(h2,'YData',ly);
    drawnow
    pause(0.01);
end

x = [];
y = [];
x = linspace(-3,3,150);
y = linspace(-3,3,150);
[X Y] = meshgrid(x,y); %getting all the points of the cartesian set , x*y (points inside the square)
%get the z coordinates for each of the pairs of points (x,y) ...
for i=1:length(x)
    for j=1:length(y)
        Z(i,j) = g(X(i,j),Y(i,j)); %saddle function
    end
end
figure
h = x(2)-x(1); %this is the constant space between points plotted...
surf(X,Y,Z);
axis([-3 3 -3 3 min(min(Z)) max(max(Z))]);
alpha(0.6);
shading interp;
grid on
xlabel("x");
ylabel("y");
zlabel("z");
hold on;
xcoord = x(randi(length(x),1));
ycoord = y(1);
p1 = plot3(xcoord,ycoord,g(xcoord,ycoord),'o');
hold on;
dx = [x(1):h:x(length(x))];
dy = repelem(ycoord,length(dx));
for l=1:length(dx)
            dz(l) = tlinex(xcoord,ycoord,dx(l),ycoord);
end
p2 = plot3(dx,dy,dz,'LineWidth',3);
hold on;
dy = [y(1):h:y(length(y))];
dx = repelem(xcoord,length(dy));
for l=1:length(dy)
            dz(l) = tliney(xcoord,ycoord,xcoord,dy(l));
end
p3 = plot3(dx,dy,dz,'LineWidth',3);
p4 = quiver3(xcoord,ycoord,g(xcoord,ycoord),(gx(xcoord,ycoord))/(sqrt(gx(xcoord,ycoord)^2+gy(xcoord,ycoord)^2)),(gy(xcoord,ycoord))/(sqrt(gx(xcoord,ycoord)^2+gy(xcoord,ycoord)^2)),0,'linewidth',4);
legend(['f(x,y)'],['current point'],[' ∂f/ ∂x'],[' ∂f/ ∂y'],['∇f(current point)']);
for i=1:10 %just some iterations for random x values animating in each all the points at (xrandom,y) ,y ranging freely from smallest to biggest
    xcoord = x(randi(length(x),1));
    set(p1,'XData',xcoord);
    for j=2:length(y)
        ycoord = y(j);
        %update point in surface 
        set(p1,'YData',ycoord);
        set(p1,'ZData',g(xcoord,ycoord));
%         %now, find the slopes (for tangent lines in x and y directions at point (xcoord,ycoord,f(xcoord,ycoord))
%         %obtain points of the graph of the tangent in the x dir
        dx = [x(1):h:x(length(x))];
        dy = repelem(ycoord,length(dx));
        for l=1:length(dx)
            dz(l) = tlinex(xcoord,ycoord,dx(l),ycoord);
        end
        %update the tangent in the x dir now
        set(p2,'XData',dx);
        set(p2,'YData',dy);
        set(p2,'ZData',dz);
        %do the same but now for the y dir tangent line
        dy = [y(1):h:y(length(y))];
        dx = repelem(xcoord,length(dy));
        for l=1:length(dy)
            dz(l) = tliney(xcoord,ycoord,xcoord,dy(l));
        end
        %update the tangent in the y dir now
        set(p3,'XData',dx);
        set(p3,'YData',dy);
        set(p3,'ZData',dz);
       %update gradient plot too:
       set(p4,'XData',xcoord);
       set(p4,'YData',ycoord);
       set(p4,'ZData',g(xcoord,ycoord));
       set(p4,'UData',gx(xcoord,ycoord))/(sqrt(gx(xcoord,ycoord)^2+gy(xcoord,ycoord)^2));
       set(p4,'VData',(gy(xcoord,ycoord))/(sqrt(gx(xcoord,ycoord)^2+gy(xcoord,ycoord)^2)));
       set(p4,'WData',0);
       %show changes now on screen with new frame on plots
       drawnow;
       pause(0.001);
    end
end
%% ------------------------------------------------------------------------
%% DEFINE ARBITRARY FUNCTIONS OF 1 AND 2 VARIABLES YOU'D LIKE TO VISUALIZE DIFFERENTITATION WITH, BELOW:
function y = f(x) %user predefined function goes here:
   y = exp(cos(x));
end
function z = g(x,y) %user predefined function goes here:
    z = exp(-x^2-y^2)*(1/2*sqrt(6));
end
%% --------------------------------------------------------------------------


function y = tline(tangency,x) %tangent line intersecting the graph of f(x) at the point (tangency,f(tangency))
 y = (f(tangency+0.1)-f(tangency))/(0.1)*(x-tangency) + f(tangency); %we computed numerically by using a step of 0.1
end
function z = gx(x,y)
  %partial derivative of g with respect to x
 z = (g(x+0.1,y)-g(x,y))/(0.1); %we compute it numerically, truncating the limit 
end
function z = gy(x,y)
%partial derivative of g with respect to y
z = (g(x,y+0.1)-g(x,y))/(0.1); %we compute it numerically, truncating the limit 
end
function z = tlinex(tangencyx,tangencyy,x,y)
   z = gx(tangencyx,tangencyy)*(x-tangencyx) + g(tangencyx,tangencyy);
end
function z = tliney(tangencyx,tangencyy,x,y)
   z = gy(tangencyx,tangencyy)*(y-tangencyy)+g(tangencyx,tangencyy);
end
