clc
clearvars
disp ("This program solves system of linear equations")
disp ("provided the number of unknown variables & matrix using gauss jordan")
disp ("It is programmed without pivoting")

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
  for j=1:n;
    if i~=j
      ratio=A(j,i)/A(i,i);
      for k=i:n+1;
        A(j,k)=A(j,k)-(ratio*A(i,k));
      end
    end
    A
  end
end

for i=n:-1:1;
  A(i,n+1)= (A(i,n+1))/A(i,i);
  A(i,i)=1;
end
% [1 -1 1 1; -3 2 -3 -6;2 -5 4 5]
% [27 6 -1 85;6 15 2 75; 1 1 54 110]
% [2 6 -1 -12;5 -1 1 11; 4 -1 3 10]
A
A(:,n+1)'
