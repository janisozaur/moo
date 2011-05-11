function result = grad(targetFun, x)
    n = size(x, 1);
    delta = 0.001;
	f = feval(targetFun, x);
    for i = 1:n
        xs = x;
        xs(i) = xs(i) + delta;
        y = feval(targetFun, xs);
        result(i) = y - f;
	end
end