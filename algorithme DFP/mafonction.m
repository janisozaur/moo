function fon=mafonction(x)
load choix;

if choix==1
fon=100*(x(2)-x(1)^2)^2+(1-x(1))^2;%Fonction de Rosenbrock's
end

if choix==2
fon=x(1)-x(2)+2*x(1)^2+2*x(1)*x(2)+x(2)^2;%Fonction Test
end

if choix==3
fon=exp(x(1)^2+5*x(2)^2)+x(1)^2+80*x(2)^2;
end

if choix==4
fon=(x(1)+ 10*x(2))^2 + 5*(x(3)-x(4))^2 +(x(2)-2*x(3))^4+ 10*(x(1)-x(4))^4;
end

if choix==5
fon=(x(1)-2)^2+(x(1)-2*x(2))^2;
end

if choix==6
fon=10*x(1)^2+x(2)^2;
end

if choix==7
fon=3*x(1)^2+4*x(2)^2-6*x(1)+16*x(2)+19;
end

if choix==8
fon=3*(x(1)-0.5)^2+7*(x(2)-0.75)^2;
end

if choix==9
fon=3*x(1)^2+3*x(2)^2+4*x(1)*x(2)+2;
end

if choix==10
    fon=3*x(1)^2 + 2*x(1)*x(2) + x(2)^2;
end

if choix==11
    fon=x(1)^4+x(2)^4-2*x(1)^2-4*x(1)*x(2)-2*x(2)^2;
end

if choix==12
    fon=2+((x(1)-1)^2+(x(2)-1)^2);
end

if choix==13
    fon=2*x(1)^2+4*x(1)*x(2)^3-10*x(1)*x(2)+x(2)^2;
end

if choix==14
    fon=8*x(1)^2+4*x(1)*x(2)+5*x(2)^2;
end

if choix==15
    fon=1.2+0.1*x(1)^2+((0.1+0.1*x(2)^2)/x(1)^2)+((0.1.*x(1)^2*x(2)^2+10)/(x(1)*x(2))^4);
end

if choix==16
    fon=sin(x(1))* sin(x(2))* exp(-x(1)^2 - x(2)^2);
end

if choix==17
    fon=x(1).*exp(-x(1).^2-x(2).^2);
end


