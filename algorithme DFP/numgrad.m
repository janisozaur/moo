function g=numgrad(x,fun)
% calculer le gradient d'une fonction f en x
h=sqrt(eps);
n=length(x);
for i=1:n
   xf=x;
   xa=x;
   xf(i)=x(i)+h;
   xa(i)=x(i)-h;
   g(i,1)=(feval(fun,xf)-feval(fun,xa))/(2*h);
end
