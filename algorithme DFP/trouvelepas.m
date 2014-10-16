%**************************************************************************
%                 Méthode de la section dorée pour la minimisation unidimensionnelle
%                Elle permet de determiner le pas de recherche pour ensuite l'utiliser
%                              pour l'algorithme Davidon Fletcher Powell DFP
%*************************************************************************
function pt = trouvelepas(f, x, h, ro, epsilon)

%--------------------------------------------------------------------------
c1 = (3 - sqrt(5))/2;
c2 = 1 - c1;
iteration=0;
it=0;
%--------------------------------------------------------------------------
if feval(f, x + ro.*h) < feval(f, x) %Etape 2
    uk = 0;
    ukplusun = uk + ro;
    % Etapes 4 6
    %pour calculer u
    if feval(f, x + ukplusun.*h) < feval(f, x + uk.*h)
        u = ukplusun + ro;   
    end
    while feval(f, x + u.*h) < feval(f, x + ukplusun.*h)
        uk = ukplusun;
        ukplusun = u;
        u = ukplusun + ro; 
        it=it+1;
    if it >100
 
     break
 end
    end
    a = uk;
    b = u;
else 
    a = 0;
    b = ro;
end

L = b - a;
while L > epsilon 
    iteration=iteration+1;
    v = a + c1*L;
    w = a + c2*L;

    if feval(f, x + v.*h) <= feval(f, x + w.*h)
        b = w;
    else
        a = v;
    end

    L = (c2)*L;
end
 if iteration>100
     disp('Cet algorithme est divergeant!!!!!!!');
 else

%---------------------------------------------------
pt = (a + b)/2;% le point minimum trouvé
%--------------------------------------------------
 end