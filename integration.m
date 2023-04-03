clc
clearvars


f=input('Enter the function:');
a=input('Enter the lower limit:');
b=input('Enter the upper limit:');
n=input('Enter the number of interval:')

  h=(b-a)/(n*1.0)

    for i=0:n
        fprintf('the value of y%d is : %.4f \n', i,f(a+i*h))
     end 
result = 0;
  if mod(n,1)==0 

        for i=0:n
            if (i==0 || i==n) 
            result = result+f(a+i*h);
            else
                result = result + 2*f(a+i*h);
                end 
        end 
        result = result*h*0.5;
        disp("the result in trapezoidal is : ")
        result

  end 
  
  result = 0;
    
  if mod(n,2)==0 

        for i=0:n
            if (i==0 || i==n)
            result = result+f(a+i*h);
            elseif (mod(i,2)==0)
                result = result + 2*f(a+i*h);
                else
                    result = result + 4*f(a+i*h);
                end 
        end 
        result = result*h*(1.0/3.0)
       disp("the result in simpson 1/3 is : ")
        result

  end 
    
  
    result =0;
     if (mod(n,3)==0) 

        for i=0:n
            if (i==0 || i==n) 
             result = result+f(a+i*h);
            elseif (mod(i,3)==0) 
                result = result + 2*f(a+i*h);
                else
                    result = result + 3*f(a+i*h);
                end 
        end 
         result =  result*h*(3.0/8.0);
        disp('result in simpson 3/8 is ') 
        result

    end 

    result = 0;

     if(mod(n,6)==0) 

             result =  result + f(a)+f(a+ n*h);
             for i=1:6:n
                     result =  result + 5*f(a+i*h)+f(a+(i+1)*h)+6*f(a+(i+2)*h)+f(a+(i+3)*h)+5*f(a+(i+4)*h)+2*f(a+(i+5)*h);

             end 

              result =  result - 2*f(a+n*h);

             result =  result * h * (3.0/10.0);



        disp('result in weddle is ') 
        result

     end
    
     syms x
     
     disp("ultimate result")
     f=input('Enter the function without @:');
     vpa(int(f,a,b))
     