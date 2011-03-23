function [x, iterations] = dychotomia(fun, a, b, epsilon, inputIterations)
	iterations = inputIterations + 1;
	middle = (a + b) / 2;
	d = abs(b - middle) / 2;
	xl = middle - d;
	xp = middle + d;
	if ((b - a) < epsilon)
		if (valueInPoint(fun, xl) > valueInPoint(fun, xp))
			x = xp;
		else
			x = xl;
		end
	elseif (valueInPoint(fun, xl) > valueInPoint(fun, xp))
		x = dychotomia(fun, xl, b, epsilon);
	else
		x = dychotomia(fun, a, xp, epsilon);
	end
end

