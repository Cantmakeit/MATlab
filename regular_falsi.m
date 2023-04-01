clc
clearvars

%f = @(x) x * exp(x) - 1;
f = @(x) (4*exp(-x).*sin(x)-1);  
ezplot(f , [-.5 1])
grid on
a = input('Enter the LS interval: ');  
b = input('Enter the RS interval: '); 
Tol = input('Enter the tolerance: ');
c = 0;   

while f(a) * f(b) > 0 
    fprintf('There is no root within this interval\n')
    fprintf('Rewrite')
    a = input('Enter the LS interval: ');
    b = input('Enter the RS interval: '); 
end


for i=1:10000
    c = c + 1;
    xm = (a*f(b)- b*f(a))/(f(b)-f(a));
    fm = f(xm); 
    hold on
    pause(3)
    plot(double(xm),double(subs(f,xm)),'ko')

 fprintf('Iteration: %d\t',c);
 fprintf ('[a,b,xm] = [%.6f, %.6f, %.6f]\n', a,b,xm);
 if abs(b-xm)<=Tol || abs(a-xm)<=Tol
     break;
 elseif f(a)*fm < 0                 
        b = xm ;           
    elseif fm * f(b) < 0   
        a = xm ;
    end
end
fprintf ('The root is: %.6f \n', xm);
hold on
  plot(double(xm),double(subs(f,xm)),'r*')

xlabel('x');
ylabel('f(x)');
title('Regula Falsi Method');
legend('f(x)', 'Root');
