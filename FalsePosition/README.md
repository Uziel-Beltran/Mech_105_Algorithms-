MATLAB algorithm for false position
This is an algorithm that finds a root for a given function by using the false position method. 

The inputs need to make the function work are a function to evaluate, a lower guess (xl), an upper guess (xu), es (desired relative error), maxit (maximum number of iterations desired, and the optional, varargin (additional parameters used by the function). if you don't include your own es or maxit they will default to 0.0001% and 200 iterations. 

The outputs are the root, fx (function evaluated at the root location), ea (approximate relative error), and iter (how many iterations it took).

You use the code by first defining a function, a lower guess, and an upper guess. Once you do this you can already use the function by filling it out in the order of the function's code.  You can be more specific to your needs by including the relative error you want or how many iterations you want. 

For example: 
func = @(x) x.^3
xl = -1
xu = 1
then type: [root, fx, ea, iter] = falsePosition(func, xl, xu, 0.0005, 100)

This would find the root of x^3 to a relative accuracy of 0.0005% or up to 100 iterations. It would stop at whichever it accomplishes first.

