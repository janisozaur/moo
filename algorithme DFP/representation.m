load choix

xg=-0.5:0.1:1;
yg=xg;
[xxg yyg]=meshgrid(xg,yg);
load choix;
if choix==1

zg = 100*(yyg-xxg^2)^2-(1-xxg)^2;
%zg = (yyg-xxg^2)^2;

figure(1) 
surfc(xg,yg,zg) 
shading interp
xlabel('x'), ylabel('y'), zlabel('z')
title('Repr�sentation de la fonction 100(y-x^2)^2-(1-x)^2')
end


if choix==2

zg = xxg-yyg+2*xxg^2+2*xxg*yyg+yyg^2;
%zg = (yyg-xxg^2)^2;

figure(1) 
surfc(xg,yg,zg) 
shading interp
xlabel('x'), ylabel('y'), zlabel('z')
title('Repr�sentation de la fonction 100(y-x^2)^2-(1-x)^2')
end