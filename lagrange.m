clc 
clearvars

n=input('Enter the total number of data : ');
xx=input('Enter the interpolating point : ');
disp('enter the data with corresoponding image')

for i = 1:n;
    x(i)= input('');
    fx(i)=input('');
    grid on 
    hold on
    plot(x(i),fx(i),'o')
end
finall=0;
  for i = 1:n
        ans = 1;

        for j = 1: n;
            if (j ~= i) 
                ans = ans*(xx - x(j))/(x(i) - x(j));
            end
        end 

        finall = finall + (ans*fx(i));
    end 
  disp('the result is ')
  finall
  plot(xx,finall,'*')
    
%   6
%   8
%   4
%   48
%   5
%   100
%   7
%   294
%   10
%   900
%   11
%   1210
%   13
%   2028