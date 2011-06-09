function lambda = lambdaSelect(targetFun, constraints, stepNumber, x, d)
	y = inf;
	lambda = 0.5;
	for i = -100:100
		if (i == 0)
			continue;
		end
		arg = x + 0.01 * i * d;
		yTemp = targetWithPenalty(targetFun, constraints, stepNumber, arg);
		if (yTemp < y)
			y = yTemp;
			lambda = i;
		end
	end
	lambda = lambda / 100;
end