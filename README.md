# Derivatives-Visualizer
This project uncovers the beautiful geometric meaning of functions whose graph is 2D and 3D by using multivariable calculus and matlab programming and visualization tools.




![2022-12-24 (3)](https://user-images.githubusercontent.com/97905110/209450729-553cf8ce-ef01-4c0c-b1ba-202b0b5fd120.jpg)


## Introduction : The paradox of the derivative as an instant rate of change
Let *s(t)* be the function that describes the distance (denoted as *s* and measured in meters) travelled by a car after the pass of some time (denoted as *t* and measured in seconds). From the car's `distance function there is another important function that can be obtained, which is the velocity function, *v(t)* at each time. But, wait a moment, doesn`t this sound paradoxical? To find the velocity of something, one needs to compare 2 different points in time. Why is it then possible to define velocity at exact instants of time? This subtle idea raises up a clear paradox whose solution approach is better seen with a real life example. How does the car velocimeter work it out to somehow inform you instanteneously the velocity of your car? Well, what it does is not really based on instantaneous information about the distance travelled but on leaving out some margin of time to pass in order to calculate the desired difference. This margin is in any case really small, so much small that it is almost zero. And this is the actual derivative of a function. In this case, *v(t)* will be the derivative of the distance function ,*s(t)*. This solves the initial paradox, by defining the velocity to be the limit of that rate of change mentioned before, but as the little time nudge we take to obtain the second point of time approaches zero!

![alt text](https://im2.ezgif.com/tmp/ezgif-2-a250f3801b.gif)

## Geometric insight of the derivative
1. For the case of one variable functions, ie: functions of the form *y = f(x)*, the derivative of a function refers to the slope of the line tangent to the graph of *f*, at the point in which it is evaluated.
2. For the case of two variable functions, ie: functions of the form *z = f(x,y)*, there are two derivates, often called partial derivatives (with respect to x and y respectively). Similar to the one variable case, the partials define the slope of a line tangent to the 3d graph of *f(x,y)* at the specified point, in the x direction or y direction respectively.
## Functionality of the program:
Be able to make a clean and smooth animation that shows the derivative of a one variable function as well as the partials of another two variable function in action, by displaying inside the plots of each of the functions, the tangent line(s) that slide among the graphs, at succesive point of the graph.
