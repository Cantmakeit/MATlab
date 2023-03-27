clc
clearvars

f = @(x) (4*exp(-x)*sin(x)-1);          % Function whose roots are desired
a = 0; b = 0.5;                         % Initial guesses
Tol = 0.001;                            % Tolerance 
c = 0;                                  % Counter for the no. of iterations
while abs(b-a)> Tol
    c = c + 1;
    xm = (a*f(b)- b*f(a))/(f(b)-f(a));
    fm = f(xm);                         % Evaluate the function at x = xm
    
 % Print the intermediate results
 fprintf('Iteration: %d\t',c);
 fprintf ('[a,b,xm] = [%.6f, %.6f, %.6f]\n', a,b,xm);
    if f(a)*fm < 0                      % If the root is on the left,
        b = xm ;                        % then set xm as the new b.
    elseif fm * f(b) < 0                % But if the root is on the right,
        a = xm ;                        % then set xm as the new a.
    else
        break;                          % Stop! xm is exactly the root
    end
end
plot(xm,f(xm),'r*', 'Markersize', 100);  % plot the xm points
fprintf ('The root is: %.6f \n', xm);