function result = armijo( funct, startPoint, direction, c1, stepMultiplayer, precision) 
    result=0;
    
    while (abs(diffEstimation(funct, startPoint, direction, result, precision)) > precision)
        lambda = -sign(diffEstimation(funct, startPoint, direction, result, precision));
        
        while (~armijoTest(funct, startPoint, direction,c1, lambda, result, precision))
            lambda = stepMultiplayer * lambda;
        end
        
        result = result + lambda;
    end
    
end

function ret = armijoTest(funct, startPoint, direction, c1, lambda, result, precision)
    pointInResultAddLambda=startPoint+direction*(result+lambda);
    pointInResult=startPoint+direction*result;
    
    ret=funct(pointInResultAddLambda(1),pointInResultAddLambda(2))<=funct(pointInResult(1),pointInResult(2))+c1*lambda*diffEstimation(funct,startPoint,direction,result,precision);
end