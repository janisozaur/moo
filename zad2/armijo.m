function [result, iterations] = armijo(f, startPoint, direction, c1, c2, ro, x, epsilon, iterationsInput)
	iterations = iterationsInput + 1;
	delta = -sign(myDiff(f, startPoint, direction, x, epsilon));
	while (~armijoCondition(f, startPoint, direction, x, c1, delta, epsilon))
		delta = ro * delta;
	end
	x = x + delta;
	result = x;
	if (abs(myDiff(f, startPoint, direction, x, epsilon)) > epsilon)
		[result, iterations] = armijo(f, startPoint, direction, c1, c2, ro, x, epsilon, iterations);
	end
end