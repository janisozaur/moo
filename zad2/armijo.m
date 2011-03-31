function [result, iterations] = armijo(f, startPoint, direction, c1, x, epsilon, iterationsInput)
	iterations = iterationsInput + 1;
	delta = -sign(myDiff(f, startPoint, direction, x, epsilon));
	while (armijoCondition(f, startPoint, direction, x, c1, delta, epsilon))
		delta = c1 * delta;
	end
	x = x + delta;
	result = x;
	if (abs(myDiff(f, startPoint, direction, x, epsilon)) > epsilon)
		[result, iterations] = armijo(f, startPoint, direction, c1, x, epsilon, iterations);
	end
end

function result = armijoCondition(f, startPoint, direction, x, c1, mystep, epsilon)
	result = valueInPoint(f, startPoint, direction, x + mystep) > valueInPoint(f, startPoint, direction, x) + c1 * mystep * myDiff(f, startPoint, direction, x, epsilon);
end