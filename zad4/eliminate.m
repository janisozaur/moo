function A = eliminate(X, i, j)
	A = X;
	A(i, :) = A(i, :) / A(i, j);

	for k = 1:size(A, 1)
		if k ~= i
			A(k, :) = A(k, :) - A(i, :) * A(k, j);
		end
	end
end