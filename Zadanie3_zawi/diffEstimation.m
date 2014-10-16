%estymacja warto�ci pochodnej metod� trzech punkt�w
function result = diffEstimation(funct, startPoint, direction, lambda, h)

    previousPoint=startPoint+direction*(lambda-h);
    nextPoint=startPoint+direction*(lambda+h);
    
    previousValue=funct(previousPoint(1),previousPoint(2));
    nextValue=funct(nextPoint(1),nextPoint(2));
    
    result=(nextValue-previousValue)/(2*h);

end