clc
syms x
f= x*log10(x)-4.77;
g= diff(f)

x0=input('Enter the initial guess:');
e=input('Enter the tolerance:');
n=input('Enter the number of iterations:');
for i=1:n
    x1=x0 - vpa(subs(f,x,x0))/vpa(subs(g,x,x0))
    if abs(x1-x0)<e
        break
    end    
    x0=x1;
end    
x1