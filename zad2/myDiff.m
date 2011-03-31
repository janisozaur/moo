% simple three-point estimation
% http://en.wikipedia.org/wiki/Numerical_differentiation

% this returns a scalar only since the function is differentiated along
% predefined direction
function result = myDiff(f, startPoint, direction, k, delta)
	forward = valueInPoint(f, startPoint, direction, k + delta);
	backward = valueInPoint(f, startPoint, direction, k - delta);
	result = (forward - backward) / (2 * delta);
end