close all
clc 
clear vars
syms x
f=input('Enter the main function:');
g=input('Enter the index function:');
x0=input('Enter the initial guess:');
e=input('Enter the tolerance:');
n=input('Enter the number of iterations:');
ezplot(f);
hold on
grid on
ezplot(g);
h =@(x) x;
ezplot(h);

for i=1:n
    x1=g(x0);
    fprintf('x%d = %.4f\n',i,x1)
    if abs(x1-x0)<e
        break
    end    
    x0=x1;
end    
  plot(double(x1),double(subs(f,x1)),'r*')
  legend('main function','index function','y=x','root')
  % @(x) x^3+x^2-1
%@(x) (1+x)^(-0.5);
