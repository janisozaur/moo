function result = grad(targetFun, x)
    n = size(x, 1);
    delta = 0.001;
	f = feval(targetFun, x);
    for i = 1:n
        xs = x;
        xs(i) = x(i) + delta;
        y1 = feval(targetFun, xs);
        xs(i) = x(i) - delta;
        y2 = feval(targetFun, xs);
        result(i) = (y1 - y2) / (2 * delta);
	end
end