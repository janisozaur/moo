function lambda = lambdaSelect(targetFun, x, d)
	y = inf;
	lambda = 0.5;
	for i = 1:100
		yTemp = feval(targetFun, x - 0.01 * i * d);
		if (yTemp < y)
			y = yTemp;
			lambda = i;
		end
	end
	lambda = lambda / 100;
end