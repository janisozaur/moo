function lambda = lambdaSelect(targetFun, x, d)
	y = inf;
	lambda = 0.5;
	for i = -100:100
		if (i == 0)
			continue;
		end
		yTemp = feval(targetFun, x + 0.01 * i * d);
		if (yTemp < y)
			y = yTemp;
			lambda = i;
		end
	end
	lambda = lambda / 100;
end