function result = simplex(A, b, c)
	[N, B, A, b, c, v] = init(A, b, c);
	[cmin, e] = min(c);
	while (cmin > 0)
		delta = zeros(size(B));
		for i = 1:size(B, 2)
			if A(B(i), e) > 0
				delta(B(i)) = b(B(i)) / A(B(i), e);
			else
				delta(B(i)) = infty;
			end
		end
		[dmin, l] = min(delta);
		if (delta(l) == infty)
			result = infty;
			return;
		else
			[N, B, A, b, c, v] = pivot(N, B, A, b, c, v, l, e);
		end
	end
	x = zeros(size(B));
	for i = 1:size(B, 2)
		x(B(i)) = b(i);
	end
	result = x;
end