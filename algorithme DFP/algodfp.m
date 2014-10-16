                 %*************************************************************************
                 %**************   Algorithme de Davidon Fletcher Powell ******************
                 %**************                  DFP                    ******************
                 %*************************************************************************
clc;

%**************************************************************************
%Etape 0: choisir un point de départ x0
%**************************************************************************
load x0;%on reccupere le point de départ à partir de l'interface
load parmetresmulti;%on reccupere ro epsilon aussi
load nf;
load nv;
x0=x0';
disp('*********************************************************************************');
disp('                         Initialisation des Parametres                           ');
disp('*********************************************************************************');
disp([' La fonction à minimiser est : ',nf]);
disp([' Le point de départ  =[',num2str(x0'),']']);
disp([' Epsilon = ',num2str(epsilon)]);
disp([' Ro =',num2str(ro)]);
disp([' Nombre de variable = ',num2str(nv)]);
disp('*********************************************************************************');
disp('  ');
disp('  ');


pt=x0;
fx=mafonction(pt);
load vgra;
if vgra==1
figure(1);
maximize(figure(1));
trace;
end
g=numgrad(x0,'mafonction');% on calcul le gradient au point x0
if all(abs(g) < epsilon) 
    disp([' Le point minimum = [',num2str(pt'),']']);
    disp([' F(Xmin) =',num2str(fx)]);
    break
    
else


%**************************************************************************
%Etape 1:            on pose K=0 D0=I et mu0=gradient f(x0)
%**************************************************************************
K=0;
xk=x0;
D=eye(length(x0));%Matrice unité
muk=numgrad(xk,'mafonction');%on calcul le gradient au point x0

%**************************************************************************




%**************************************************************************
%Etape 2: on pose hk=-Dk*muk
%**************************************************************************
h=-D*muk;
%**************************************************************************




%**************************************************************************
% Etape 3 : on calcul le pas  on minimisant f(xk+pas*hk)
%**************************************************************************
pas = trouvelepas('mafonction', xk, h, ro, epsilon);% recherche du pas 
%**************************************************************************

%**************************************************************************
%Etape 4: on calcul le gradient f(xk+pas*hk)
%Etape 5: si le gradient est nul on s'arrete sinon on continu 
%**************************************************************************
disp('*********************************************************************************');
disp('                         Recherche du point minimum                              ');
disp('*********************************************************************************');

while all(abs(numgrad(xk+pas*h,'mafonction'))>epsilon)

        xkplusun=xk+pas*h;
        


        mukplusun=numgrad(xkplusun,'mafonction');
        deltamu=mukplusun-muk;
        deltax=xkplusun-xk;
        xk=xkplusun;
        muk=mukplusun;
        
         hg=D*deltamu;
         dg=deltax'*deltamu;
         
         %------------------------------------------------------------------
         D=D+(deltax*deltax'/dg)-(hg*hg'/(deltamu'*hg)); % mise à jour de D.
         %-----------------------------------------------------------------
         h=-D*muk;%mise à jour de h

       
        pas = trouvelepas('mafonction', xk, h,ro, epsilon);%recherche du pas
        xkplusun=xk+pas*h;
        
       
        %------------------------------------------------------------------
        %Le tracé et suivie du point 
        %------------------------------------------------------------------
        pt=xkplusun';
        fx=mafonction(pt);
        disp(['Itération N°:',num2str(K+1),' ==> Le nouveau point =(',num2str(pt),')','  ==>F(X)=',num2str(fx)]);
        disp('---------------------------------------------------------------------------------')
        if vgra==1
        trace;
    end
        K=K+1;
%**************************************************************************
     if K>100

     errordlg('Algorithme divergeant!!!!!  Reparametrer l''Algorithme','Erreur');
     break;
 end
     end
     

 end 
disp('********************************** Fin  ******************************************');
disp('  ');
disp('  ');
 Xmin=xkplusun;
 FaupointXmin=mafonction(Xmin');
 
 %*************************************************************************
 % On affiche les resultats
 %*************************************************************************
disp('*********************************************************************************');
disp('                                  Recherche Terminée                             ');
disp('*********************************************************************************');
disp('                                     Résultats :                                 ');
disp('*********************************************************************************');
disp([' Le nombre d''iterations  =',num2str(K)]);
disp([' Le point minimum = [',num2str(Xmin'),']']);
disp([' F(Xmin) =',num2str(FaupointXmin)]);
disp('*********************************************************************************');
disp('  ');
disp('  ');

 Xmatlab= fminsearch('mafonction',x0);
 FaupointXminmatlab=mafonction(Xmatlab);

disp('*********************************************************************************');
disp('                Résultats Avec la fonction de Matlab :"fminsearch"               ')
disp('*********************************************************************************');
disp([' Le point minimum = [',num2str(Xmatlab'),']']);
disp([' F(Xmin) =',num2str(FaupointXminmatlab)]);
disp('*********************************************************************************');

   
% end
%**************************************************************************
savefile = 'resultatmulti.mat';
Xmin;
FaupointXmin;
K;
D;
save(savefile,'Xmin','FaupointXmin','K','D')
%**************************************************************************

savefile = 'resultatmultimatlab.mat';
Xmatlab;
FaupointXminmatlab;
save(savefile,'Xmatlab','FaupointXminmatlab')
%*************************************************************************
    resultatsmul; %Afficher le résultat
