This MATLAB function is the general function to integrate data using the simpson's 1/3 rule. This code will check if ther is an odd number 
of intervals. If there is and odd number of intervals it'll use an application of trapazoidal rule for the last interval. It calculates the
integral using a vector of y values in respect to a vector of x values.
Inputs:
    x = vector of equally spaced independent variables
    y = vector of function values with respect to x
Outputs: 
    I = the numerical integration calculated
    
How to use: 
    create a vector assigned to x and vector assigned to y and make sure they are the same length or else it will give you an error. 
    then type [I] = Simpsons(x,y)
It'll then carry out the work for you and display I
