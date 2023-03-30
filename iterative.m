close all
clc 
clear vars

g=input('Enter the function:');
x0=input('Enter the initial guess:');
e=input('Enter the tolerance:');
n=input('Enter the number of iterations:');
for i=1:n
    x1=g(x0);
    fprintf('x%d = %.4f\n',i,x1)
    if abs(x1-x0)<e
        break
    end    
    x0=x1;
end    
%f=x^3+x^2-1;
%@(x) (1+x)^(-0.5);
