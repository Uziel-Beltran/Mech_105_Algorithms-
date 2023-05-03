function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
%errors and warnings
if length(x) ~= length(y)
    eror('inputs must be same length')
end
diff_x = diff(x);
if max(diff_x) ~= min(diff_x)
    error('x inputs must be equally spaced')
end
if mod(length(x),2) == 0
    warning('Will need an application of trap rule at the end')
    n = length(x)-1;
else 
    n = length(x)
end

h = diff_x(1);
I = 0;
if n ~= 1
    I = (h/3)*(y(1) + 4*(sum(y(2:2:end-1))) + 2*(sum(y(3:2:end-2))) + y(end)) 
    %just simpson's 1/3 rule
end

if n ~= length(x)
    I = I + (y(length(x))+y(length(x)-1))*(h/2) %trap rule
end
% Outputs:
%   I = the numerical integral calculated

end
