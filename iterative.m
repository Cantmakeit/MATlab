clc
syms x
g =  1/(9-x^2)
x0=input('Enter the initial guess:');
e=input('Enter the tolerance:');
n=input('Enter the number of iterations:');
for i=1:n
    x1=vpa(subs(g,x,x0))
    if abs(x1-x0)<e
        break
    end    
    x0=x1;
end    
x1