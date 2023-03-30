clc
clearvars

%f = @(x) x * exp(x) - 1;
f = @(x) (4*exp(-x)*sin(x)-1);          % Function whose roots are desired
a = input('Enter the LS interval: '); % input interval 
b = input('Enter the RS interval: '); % input interval
Tol = input('Enter the tolerance: '); % tolerance
c = 0;                                  % Counter for the no. of iterations
for i=1:100
    c = c + 1;
    xm = (a*f(b)- b*f(a))/(f(b)-f(a));
    fm = f(xm);                         % Evaluate the function at x = xm
    
 % Print the intermediate results
 fprintf('Iteration: %d\t',c);
 fprintf ('[a,b,xm] = [%.6f, %.6f, %.6f]\n', a,b,xm);
 if abs(b-xm)<=Tol || abs(a-xm)<=Tol
     break;
 elseif f(a)*fm < 0                      % If the root is on the left,
        b = xm ;                        % then set xm as the new b.
    elseif fm * f(b) < 0                % But if the root is on the right,
        a = xm ;
    end
end
fprintf ('The root is: %.6f \n', xm);
