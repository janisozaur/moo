graphe;
load y;
load K;
load epsilon;
load binf;
load fbinf;
load bsup;
load fbsup;
[x]=(-3:0.1:6);
grid on;
z=subs(y,x);

cla;
plot(x,z);
legend('f(x)', 'a','b')
%xlabel('X','fontsize',14);
%ylabel('Y','fontsize',14);
%title('Repr�sentation de la fonction ','fontsize',14);
hold on;
plot(binf,fbinf,'.-red', 'MarkerSize',20) ;
plot(bsup,fbsup,'.-g', 'MarkerSize',20) ;


legend(['f(x) =',num2str(subs(y,(bsup+binf)/2))],['a =',num2str(binf)],['b =',num2str(bsup)],2)

 text(6.1,250,' Intervalle Initial [a0 , b0]:', ...
         'FontSize',13,'Rotation',0, ...
        'Color','black');
    
   text(6.5,238,['[a0 , b0]= [',num2str(intervallea),' , ',num2str(intervalleb),']'], ...
         'FontSize',13,'Rotation',0, ...
        'Color','blue'); 

text(bsup,fbsup,[' \leftarrow b = ',num2str(bsup)], ...
         'FontSize',16,'Rotation',0, ...
         'Color','black');
     
      text(6.1,220,' R�duction de l''intervalle :', ...
         'FontSize',13,'Rotation',0, ...
        'Color','black');
    
   text(6.01,200,['  [a,b] = [',num2str(binf),' , ',num2str(bsup),']'], ...
         'FontSize',13,'Rotation',0, ...
        'Color','blue');
    
    
      text(6.5,150,['It�ration N�: ',num2str(K+1)], ...
         'FontSize',13,'Rotation',0, ...
        'Color','red');
    
     text(binf,fbinf,[' \leftarrow a = ',num2str(binf)], ...
         'FontSize',16,'Rotation',90, ...
         'Color','red');
     
     if (bsup-binf<epsilon)
      close(graphe) 
     graphe; 
  grid on; 
   [x]=(-3:0.1:6);

z=subs(y,x);
   plot(x,z);
legend('f(x)', 'a','b')

hold on;
grid on;
plot(binf,fbinf,'.-red', 'MarkerSize',20) ;
plot(bsup,fbsup,'.-g', 'MarkerSize',20) ;
legend(['f(x) =',num2str(subs(y,(bsup+binf)/2))],['a =',num2str(binf)],['b =',num2str(bsup)],2);

 text(binf,fbinf,[' \leftarrow point minimum =',num2str((bsup+binf)/2)], ...
         'FontSize',14,'Rotation',90, ...
         'Color','blue');
       
    
    
      text(6.5,150,['It�ration N�: ',num2str(K+1)], ...
         'FontSize',13,'Rotation',0, ...
        'Color','red');
    
     text(6.1,250,' Intervalle Initial [a0 , b0]:', ...
         'FontSize',13,'Rotation',0, ...
        'Color','black');
    
   text(6.5,238,['[a0 , b0]= [',num2str(intervallea),' , ',num2str(intervalleb),']'], ...
         'FontSize',13,'Rotation',0, ...
        'Color','blue'); 
    
    text(6.1,220,' R�duction de l''intervalle :', ...
         'FontSize',13,'Rotation',0, ...
        'Color','black');
    
   text(6.01,200,['  [a,b] = [',num2str(binf),' , ',num2str(bsup),']'], ...
         'FontSize',13,'Rotation',0, ...
        'Color','blue');

end
 

pause(0.01);