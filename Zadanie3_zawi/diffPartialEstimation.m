%estymacja wartoœci pochodnych cz¹stowych metod¹ trzech punktów
function result = diffPartialEstimation(funct, point, h)

    nextXValue=funct(point(1)+h,point(2));
    previousXValue=funct(point(1)-h,point(2));
    
    nextYValue=funct(point(1),point(2)+h);
    previousYValue=funct(point(1),point(2)-h);
    
    diffX=(nextXValue-previousXValue)/(2*h);
    diffY=(nextYValue-previousYValue)/(2*h);
    
    result=[diffX, diffY];

end