function [N2, B2, A2, b2, c2, v2] = pivot(N, B, A, b, c, v, l, e)
	A2 = zeros(size(A));
	b2(e) = b(l) / A(l, e);
	for j = 1:size(N, 2)
		if N(j) ~= e
			A2(e, j) = A(l, j) / A(l, e);
		end
	end
	A2(e, l) = 1 / A(l, e);
	for i = 1:size(B, 2)
		if B(i) ~= l
			b2(i) = b(i) - A(i, e) * b2(e);
			for j = 1:size(N, 2)
				if N(j) ~= e
					A2(i, j) = A(i, j) - A(i, e) * A2(e, j);
				end
			end
			A2(i, l) = A(i, j) - A(i, e) * A2(e, j);
		end
	end
	v2 = v + c(e) * b2(e);
	for j = 1:size(N, 2)
		if N(j) ~= e
			c2(j) = c(j) - c(e) * A2(e, j);
		end
	end
	c2(l) = -c(e) * A2(e, l);
	for i = 1:size(N, 2)
		if (N(i) ~= e && N(i) ~= l)
			N2 = [N2, N(i)];
		end
	end
	for i = 1:size(B, 2)
		if (B(i) ~= e && B(i) ~= l)
			B2 = [B2, B(i)];
		end
	end
end