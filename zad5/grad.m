function result = grad(targetFun, constraints, stepNumber, x)
    n = size(x, 1);
    delta = 0.001;
	f = targetWithPenalty(targetFun, constraints, stepNumber, x);
    for i = 1:n
        xs = x;
        xs(i) = x(i) + delta;
        y1 = targetWithPenalty(targetFun, constraints, stepNumber, xs);
        xs(i) = x(i) - delta;
        y2 = targetWithPenalty(targetFun, constraints, stepNumber, xs);
        result(i) = (y1 - y2) / (2 * delta);
	end
end