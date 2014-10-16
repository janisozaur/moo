%********************* M�thode de la section dor�e pour la minimisation unidimensionnelle ******************
clc;
disp('*************************************************************');
disp('************   Algorithme de la Section Dor�e   *************');
disp('************            OPTIMISATION            *************');
disp('*************************************************************');

%--------------------------------------------------------------------------
%--------------------------Initialisation des parametres-------------------
c1 = (3 - sqrt(5))/2;
c2 = 1 - c1;

load y;


disp([' Epsilon  =',num2str(epsilon)]);
disp([' Ro =',num2str(ro)]);
disp([' F(X) =',y]);
disp('*************************************************************');
disp('                                                             ');

%--------------------------------------------------------------------------
load rchma;
load rchaut;
if rchaut==1
%------------------Recherche d'un intervalle initial-----------------------
if subs(y,x,ro) < subs(y,x,0) 
    u0 = 0;
    u1 = u0 + ro;
   
    if subs(y,x,u1) < subs(y,x,u0)
        u2 = u1 + ro;   
    end
    while subs(y,x,u2) < subs(y,x,u1)
        u0 = u1;
        u1 = u2;
        u2 = u1 + ro;          
    end
    a = u0;
    b = u2;
else
a=0;
b=ro;
end
end

if rchma==1
    load intervallea;
    load intervalleb;
    a = intervallea;
    b = intervalleb;
end
 intervallea=a;
intervalleb=b;
K=0;
save K;
load vgraphe;
if vgraphe==1
binf = a;
bsup = b;
save binf;
save bsup;
fbinf=subs(y,binf);
fbsup=subs(y,bsup);
save fbinf;
save fbsup;
graphe;
tracef;

end
disp('*************************************************************');
disp('          Recherche d''un intervalle intitial                ');
disp('*************************************************************');
disp([' Intervalle initial  =[',num2str(a),'  ',num2str(b),']']);
disp('*************************************************************');
disp('                                                             ');
disp('                                                             ');
%--------------------------------------------------------------------------
% Etape 7 :
   K=0;
%--------------------------------------------------------------------------



%------------------Reduction de l'intervalle initial-----------------------
L = (b - a);%Etapes 8
 disp('----------   R�duction de l''intervalle initial  ------------');
while (L > epsilon) 
    load y;
    
    v = a + c1*L;
    w = a + c2*L;
    % Etape 11 :
    if subs(y,x,v) <= subs(y,x,w)
        b = w;
    else
        a = v;
    end
    if vgraphe==1
   binf = a;
bsup = b;
save binf;
save bsup;
fbinf=subs(y,binf);
fbsup=subs(y,bsup);
save fbinf;
save fbsup;
graphe;
tracef;
end
    L = (c2)*L;
    K=K+1;
    save K;
    disp(['It�ration N�:',num2str(K), '   ==> Le Nouveau Intervalle =[',num2str(a),'  ',num2str(b),']']);
end


 disp('----------   R�duction de l''intervalle Termin�e  ------------');
 disp('                                                             ');
if K>500
    errordlg('Algorithme divergeant!!!!!  Reparametrer l''Algorithme','Erreur');
     break;
 
end
%--------------------------------------------------------------------------
% Etape 12 : 

load y;
xmin = (a + b)/2;
FaupointXmin=subs(y,x,xmin);
disp('*************************************************************');
disp('                       Point minimum trouv�                  ');
disp('*************************************************************');
disp('                        R�sultats :                          ');
disp('*************************************************************');
disp([' Le nombre d''it�rations  =',num2str(K)]);
disp([' Le point minimum =',num2str(xmin)]);
disp([' F(Xmin) =',num2str(FaupointXmin)]);
disp('*************************************************************');
disp('  ');
disp('  ');
[xmatlab,fmatlab] =fminbnd (y, a, b);
disp('**************************************************************')
disp('  R�sultats Avec la fonction de Matlab :"fminbnd"          ')
disp('**************************************************************')
disp([' Le point minimum =',num2str(xmatlab)]);
disp([' F(Xmin) =',num2str(fmatlab)]);
disp('**************************************************************');


%**************************************************************************
%        Sauvgarde des r�sultats pour les afficher dans l'interface
%**************************************************************************
savefile = 'resultat.mat';
xmin;
FaupointXmin;
K;
save(savefile,'xmin','FaupointXmin','K')
%**************************************************************************

%**************************************************************************
savefile = 'resultatunidim.mat';
xmatlab;
save(savefile,'xmatlab','fmatlab')
%**************************************************************************