clc
clearvars

f = @(x) x .* exp(x) - 1; % define function
ezplot(f , [-.5 1])
grid on
a = input('Enter the LS interval: '); % input interval 
b = input('Enter the RS interval: '); % input interval
tol = input('Enter the tolerance: '); % tolerance

while f(a) * f(b) > 0 
    fprintf('There is no root within this interval\n')
    fprintf('Rewrite')
    a = input('Enter the LS interval: '); % input interval 
    b = input('Enter the RS interval: '); % input interval
end

% finding root using bisection method
while abs(b - a) > tol
    mid = (a + b) / 2;
       hold on
    pause(3)
    plot(double(mid),double(subs(f,mid)),'ko')
    if abs(b-mid)<=tol || abs(a-mid)<=tol
        root = mid
        break;
    elseif f(mid) * f(a) < 0
        b = mid;
    else
        a = mid;
    end
end
% displaying root
fprintf('The root of the equation: ');
root

hold on
  plot(double(root),double(subs(f,root)),'r*')

xlabel('x');
ylabel('f(x)');
title('bisection');
legend('f(x)', 'Root');
