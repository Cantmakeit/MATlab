clc
disp ("This program solves system of linear equations")
disp ("provided the number of unknown variables & matrix")
disp ("It is programmed with pivoting")

n = input("Enter the number of variables : ");
A = input("Enter the augmented matrix : ")

   for i=1:n;
     maxx = abs(A(i,i));
   max_index=i;

for p=i:n;

       if abs(A(p,i))> maxx;
         maxx= abs(A(p,i));
         max_index=p;
       end
     end
     temp = A(i,:);
       A(i,:)=A(max_index,:);
       A(max_index,:)=temp;
       A
        for j=i+1:n;
                ratio=A(j,i)/A(i,i);
                for k=i:n+1;
                A(j,k)=A(j,k)-(ratio*A(i,k));
              end
              A
        end
    end


        x(n)=A(n,n+1)/A(n,n);
    for i=n-1:-1:1;
        summ=0.;
        for j=i+1:n;
            summ=summ+A(i,j)*x(j);
        end
        x(i)=(A(i,n+1)-summ)/A(i,i);
    end
% [1 -1 1 1; -3 2 -3 -6;2 -5 4 5]
% [27 6 -1 85;6 15 2 72; 1 1 54 110]
% [2 6 -1 -12;5 -1 1 11; 4 -1 3 10]
x
