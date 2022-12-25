# Visualizing derivatives
This project uncovers the beautiful geometric meaning of functions whose graph is 2D and 3D thanks to the help of some of the concepts learned in multivariable calculus as well as the Matlab programming language. Below, one can enjoy the results:

| Example   | Example  |
| ------------- | ------------- |
| <video src="https://user-images.githubusercontent.com/97905110/209482552-227e6dd1-b7a0-4922-ae98-2d35f628baeb.mp4">  | <video src="https://user-images.githubusercontent.com/97905110/209482528-28b25840-1172-4306-8004-46e44991eee3.mp4">|


## The essence of the derivative of a function
* The derivative of a scalar function of one variable is defined as :
$$\frac{df}{dx}(x) = \lim_{h \to 0} \dfrac{f(x+h)-f(x)}{h}$$
Ignoring the limit, it would describe the slope of the secant line joining the points $(x,f(x))$ and $(x+h,f(x+h))$ ,but with the limit, it corresponds to the slope of the line tangent to the graph of $f$ at the point $(x,f(x))$.

* For the case of $n>1$ variables, there are $n$ derivatives known as the partial derivatives of $f$:
$$\dfrac{\partial f}{\partial x_i}(\overrightarrow{x}) = \lim_{h \to 0} \dfrac{f(\overrightarrow{x}+h\overrightarrow{e_i})-f(\overrightarrow{x})}{h}$$ where $e_i$ is the canonical basis vector with a $1$ in the i-th entry and $\overrightarrow{x} = (x_1, ... ,x_n)$.
Similar to the one variable case, the partials of an $n$ variable scalar function indicate the slope of the line tangent to the "$n$ dimensional graph of $f$" ,however this line is the one traced with the specific direction in which $f$ is differentiated.
## Project´s aims:
Gain absolute understanding on what functions derivatives truly mean together and learning the basics of object animations, by producing two clean and smooth animations that use the derivative of a one variable function as well as the partials of a two variable function to draw the different tangent lines sliding across the graphs of them succesively.
Note: In the code, the functions used are $f(x) = sin(x)$ and $f(x,y) = x^2-y^2$
