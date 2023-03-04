clc
clearvars

disp ("Tri Diagonal Solution")

n = input("Enter the number of variables : ");

disp ("enter the values of a,b,c,d")

disp ("for a(1) and c(n) enter 0")

for i = 1:n;
  a(i)=input("");
  b(i)=input("");
  c(i)=input("");
  d(i)=input("");
end

    alf(1)=b(1);
     s(1)=d(1);

     for i=2:n;
        alf(i) = b(i)- ((a(i)*c(i-1))/alf(i-1));
        s(i) = d(i)- ((a(i)*s(i-1))/alf(i-1));
     end

     x(n)=s(n)/alf(n);

     for i=n-1:-1:1;
        x(i)=(s(i)-c(i)*x(i+1))/alf(i);
     end
x
##0
##21/20
##-1
##0.9
##-1
##4
##-1
##2.0
##-1
##4
##-1
##2.0
##-1
##4
##-1
##2.0
##-1
##4
##-1
##2.0
##-1
##2
##0
##1.0

