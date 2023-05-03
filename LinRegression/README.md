Linear Regression algorithm
This code takes a data set and calculates the linear regressions and removes outliers in order to create better trend lines. It then also calculates the R^2 value. 

The necessary inputs are a data set of x values and a data set of y values.

The outputs are the filtered x value dataset, the filtered y value dataset, the slope of the linear regression, the intercept of the linear regression, and the R^2 value.

Another thing the code does is it takes the datasets it is given and it checks if they are the same length. If they are not it will display an error and tell the user to use datasets of the same lengths. Then it is able to carry out the calculations to find a linear regression. 

The way you use the code:
define an array of x values
define an array of y values
type: [fX, fY, slope, intercept, Rsquared] = linearRegression(x,y)
it will then carry out the code and give you the outputs

