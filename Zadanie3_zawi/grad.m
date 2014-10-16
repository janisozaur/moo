function ret = grad(funct, startPoint, precision)
    hold on;

    pointTab=startPoint;
    iteration=0;
    previousPoint=startPoint-2;
    currentPoint=startPoint;
    direction=-diffPartialEstimation(funct, startPoint, precision);
    
    fprintf('n: \t Xn-1:\t Xn: \t f(Xn-1): \t f(Xn): \t  WarunekStopu: \t alpha: \t kierunek: \t Krok: \n');
    
    while(norm(currentPoint-previousPoint)>precision)
        iteration=iteration+1;
        alpha=0;
        if(mod(iteration,2)==0)
            alpha=0;
            direction=-diffPartialEstimation(funct, currentPoint, precision);
        else
            alpha=(norm(diffPartialEstimation(funct, currentPoint, precision))^2)/(norm(diffPartialEstimation(funct, previousPoint, precision))^2);
            direction=-diffPartialEstimation(funct, currentPoint, precision)+alpha*direction;
        end

        step=armijo( funct, currentPoint, direction, 0.2, 0.5, 0.000001);
        
        previousPoint=currentPoint;
        currentPoint=getPoint(currentPoint, direction, step );
       
        pointTab=[pointTab,currentPoint];
        %text(previousPoint(1),previousPoint(2),strcat(' \leftarrow ',int2str(iteration)));
        plot([previousPoint(1),currentPoint(1)],[previousPoint(2),currentPoint(2)],'-r.','LineWidth',1);
        fprintf('%d\t[%f,%f]\t[%f,%f]\t%f\t%f\t%f\t%f\t[%f,%f]\t%f\n',iteration,previousPoint,currentPoint,funct(previousPoint(1),previousPoint(2)),funct(currentPoint(1),currentPoint(2)),norm(currentPoint-previousPoint),alpha,direction,step);
    end
   
    ezcontour(funct,[min(pointTab)-1,max(pointTab)+1],50);
    hold off;
end
