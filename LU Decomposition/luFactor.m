function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix

%checks for valid matrix of A
[m,n] = size(A)
if m ~= n
    error('matrix must be a square matrix');
end

L = zeros(n);
U = A;
P = eye(n);

%pivot stuff here
%look at 1st row make pivot so largest coefficent is at the top
for iter = 1:(n-1)
    column = U(iter:n,iter);
    [~,maxL] = max(abs(column))
    if maxL ~= 1 
        maxL = maxL + iter-1;
        TRL = iter;
        
        U = rowSwap(U,maxL,TRL);
        P = rowSwap(P,maxL,TRL);
        L = rowSwap(L,maxL,TRL);
    end
    %gauss here
    for lowerRow = (iter+1):n
        mFactor = U(lowerRow,iter)./U(iter,iter)
        L(lowerRow,iter) = mFactor;
        U(lowerRow,:) = U(lowerRow,:)-mFactor.*U(iter,:);
    end
end
   
L = L + eye(n);
end

function Anew = rowSwap(A,row1, row2)
Anew = A;
Anew(row1,:) = A(row2,:);
Anew(row2,:) = A(row1,:);
end
    
% outputs:
%	L = lower triangular matrix

%	U = upper triangular matrix

%       P = the permutation matrix


