function res = targetWithPenalty(fun, inConstraints, stepNumber, x)
	res = myEval(fun, x) + calculateR(inConstraints, x) * stepNumber;
end