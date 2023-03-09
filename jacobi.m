clc
clearvars
disp("jacobi method")
n = input("Enter the number of variables : ");
A = input("Enter the augmented matrix : ")

flag = 0;

for i=1:n;
        summ=0;
        for j=1:n;
            if i~=j ;
                summ=summ+abs(A(i,j));
            end
        end
        if abs(A(i,i))<summ ;
            flag = 1;
            break;
        end
end
tol=0.00001;
no_of_itr=1000;
x(1:n)=0;
old(1:n)=0;

for j=1:n;
      summ=0;
       for k=1:n;
           if k~=j;
              summ=summ+A(j,k)*x(k);
           end
       end
       old(j)=(A(j,n+1)-summ)/A(j,j);
end

if flag==0


       for i=1: no_of_itr;
        for j=1:n;
            summ=0;
            for k=1:n;
                if k~=j;
                    summ=summ+A(j,k)*old(k);
                end
            end

            x(j)=(A(j,n+1)-summ)/A(j,j);
            er=(abs(x(j)-old(j))/x(j));

            if er>tol;
                old(j)=x(j);
            end
        end
    end

end

if flag == 1;

  disp("method fails")
 else
  x
  end



