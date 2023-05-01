function [fX, fY, slope, intercept, Rsquared] = linearRegression(x,y)
%inputs: data set of x-values
%        data set of y-values
%outputs: filtered x-values
%         filtered y-values
%         slope of the lineare regression
%         intercept of the linear regression
%         rsquared value
[sortedY, sortOrder] = sort(y);
sortedX = x(sortOrder)

[m,n] = size(x)
%check if the arrays are the same size
if (size(x) ~= size(y))
    error('Arrays need to be the same size')
end

Q1 = floor((n+1)/4);
Q3 = floor((3*n+3)/4);
Q1v = sortedY(Q1);
Q3v = sortedY(Q3);

IQR = Q3v-Q1v;

LT = Q1v-IQR*1.5;
UT = Q3v+IQR*1.5;



fX = [];
fY = [];
for I=1:n
    if (sortedY(I) <= UT && sortedY(I) >= LT)
        fX= [fX sortedX(I)];
        fY= [fY sortedY(I)];
    end
end
[~,nnew] = size(fX);

xbar = mean(fX);
ybar = mean(fY);
slope = (nnew*sum(fX.*fY)-sum(fX).*sum(fY))./(nnew*sum(fX.^2)-(sum(fX).^2));
intercept = ybar-slope*xbar;
linreg = slope*fX + intercept;
Sr = sum((fY-linreg).^2);
St = sum((fY-ybar).^2);
Rsquared= 1.-(Sr/St);

end