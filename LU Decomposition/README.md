This is a MATLAB funtionc that calculates the LU Factorization of a square matrix. It'll first check if the matrix the user input is an actual square matrix and if its not then it'll display an error. It'll then go through the process of pivoting by swapping the highest coefficient to the top. After that it'll devide the coefficient in a(2,1) by the coefficent in a(1,1). Then it'll multiply the answer by the whole next row. The next step is the top row minus the new 2nd row. After this is repeats the cycle until you get a lower triangle of all zeros. 
Inputs: 
      A = coeffcient matrix that must be a square
output: 
      L = lower triangular matrix with 1's on the diagnol
      U = upper triangular matrix
      P = the pivot/identity matrix
How to use:
      Define a square matrix as "A"
      type [L, U, P] = luFactor(A)
