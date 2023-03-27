clc
clearvars

f = @(x) x * exp(x) - 1; % define function
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
    if f(mid) == 0
        root = mid;
        break;
    elseif f(mid) * f(a) < 0
        b = mid;
    else
        a = mid;
    end
end
root = (a + b) / 2;
% displaying root
fprintf('The root of the equation: ');
disp(root)