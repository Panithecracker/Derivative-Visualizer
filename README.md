# Visualizing derivatives. Description:
**This project allows anybody to define mathematical functions of one and two variables and then be able to interactively understand visually what derivatives are by the creation of special animations for each one of the functions defined**. A good understanding of these concepts is cruzial in order to **solve some of the biggest problems in science today**. **Derivatives are used everywhere in real life, used to desscribe phyisical phenomena such as velocity, acceleration,stock price volatility, a human´s heart rate ,population growth of a country and so much more. They are used to find the maximum or minimum of functions ,which is an inmense question that raises in any  optimization problems**.
Please, check some samples below:

![Dexponential_AdobeExpress](https://user-images.githubusercontent.com/97905110/212180205-8e778ab5-945c-4917-b033-43faef287e51.gif)      ![DSine_AdobeExpress](https://user-images.githubusercontent.com/97905110/212180435-c4f8686f-f0b2-4f19-bb46-a7a466a8a5dc.gif)

## The essence of the derivative of a function
* The derivative of a scalar function of one variable is defined as :
$$\frac{df}{dx}(x) = \lim_{h \to 0} \dfrac{f(x+h)-f(x)}{h}$$
Ignoring the limit, it would describe the slope of the secant line joining the points $(x,f(x))$ and $(x+h,f(x+h))$ ,but with the limit, it corresponds to the slope of the line tangent to the graph of $f$ at the point $(x,f(x))$.

* For the case of $n>1$ variables, there are $n$ derivatives known as the partial derivatives of $f$:
$$\dfrac{\partial f}{\partial x_i}(\overrightarrow{x}) = \lim_{h \to 0} \dfrac{f(\overrightarrow{x}+h\overrightarrow{e_i})-f(\overrightarrow{x})}{h}$$ where $e_i$ is the canonical basis vector with a $1$ in the i-th entry and $\overrightarrow{x} = (x_1, ... ,x_n)$.
Similar to the one variable case, the partials of an $n$ variable scalar function indicate the slope of the line tangent to the " $n$ dimensional graph of $f$ " ,however, this tangent line is the one traced with the specific direction in which $f$ is differentiated.

## The real leader : "MR GRADIENT"
When it comes to differentiating a multivariable function, focusing on how f changes with respect to a small change in just one of the variables (partial differentiation) might be interesting to know, however, the gradient of f will investigate all the rates of change for each variable, putting it together in a single vector living in n dimensional space. Although this vector can be of any dimension , the essence of the value it retains is captured for the n = 2 variable case. Intuitively and without going through much detail about it, the gradient is a vector that tells us from an specified point , the direction that should be taken in order to experiment the greatest increment in the value of f or ,in other words: it tells you what the direction of **steepest ascent** of f at a concrete point is. In addition, the direction opposite to the gradient of f will be the one of **steepest descent**. 
Actually, the key of machine learning algorithms is based around the idea of finding local extrema of a cost function that informs the AI model how good its been doing. Then, the AI mist tru to minimize this codt function which is done using algorithms such as Gradient Descent.
$$\nabla F(x,y) = [\dfrac{\partial f}{\partial x} , \dfrac{\partial f}{\partial y}]$$
The program made also animates the presence of the gradient of any user predefined function $f(x,y)$ at each point, denoted with a unitary vector coming out from the current point.
## Project´s aims and skills gained:
-Coding : Learned a lot from being able to animate and visualize abstract ideas of calculus
  
-Mathematically: The development of this project has helped a lot in grasping the geometrical mathematical meaning of derivatives

  
  
**Note**: In the pictures the functions used are $f(x) = sin(x)$ and $f(x,y) = exp(-x^2-y^2)$

**Now, you can define any function and see its derivatives and gradient functions in action:)**
