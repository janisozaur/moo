function [result, iterations] = goldstein(f, startPoint, direction, c1, c2, ro, x, epsilon, omega, iterationsInput)
	iterations = iterationsInput + 1;
	delta = -sign(myDiff(f, startPoint, direction, x, epsilon));
	while (~goldsteinCondition(f, startPoint, direction, x, c1, delta, epsilon))
		if (~armijoCondition(f, startPoint, direction, x, c1, delta, epsilon))
			delta = ro * delta;
		else
			delta = delta * omega;
		end
	end
	x = x + delta;
	result = x;
	if (abs(myDiff(f, startPoint, direction, x, epsilon)) > epsilon)
		[result, iterations] = goldstein(f, startPoint, direction, c1, c2, ro, x, epsilon, omega, iterations);
	end
end

function result = goldsteinCondition(f, startPoint, direction, x, c, mystep, epsilon)
	result = valueInPoint(f, startPoint, direction, x) + (1 - c) * mystep * myDiff(f, startPoint, direction, x, epsilon) <= valueInPoint(f, startPoint, direction, x + mystep);
	result = result & (valueInPoint(f, startPoint, direction, x + mystep) <= c * mystep * myDiff(f, startPoint, direction, x, epsilon) + valueInPoint(f, startPoint, direction, x));
end