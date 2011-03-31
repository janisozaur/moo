function z = valueInPoint(fun, startPoint, direction, k)
	point = getStep(startPoint, direction, k);
	x = point(1);
	y = point(2);
	z = eval(fun);
end