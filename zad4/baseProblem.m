function result = baseProblem(X, baseRow, columns)
	rows = size(X, 1);
	result = zeros(rows, columns);

	% copy the input matrix parts
	result(2:rows, 1:(columns - 1)) = X(2:rows, 1:(columns - 1));
	result(2:rows, columns) = X(2:rows, columns + rows - 1);

	% eliminate the identities added by aux
	temporary = zeros(size(baseRow));
	count = 0;

	indices = [];
	positions = [];

	for i = 1:columns - 1
		[m, pos] = max(X(2:rows, i));
		s = sum(X(2:rows, i));

		if m == s && s == 1.0 && count < rows - 1
			temporary(i) = 0.0;
			count = count + 1;
			indices = [indices, i];
			positions = [positions, pos + 1];
		else
			temporary(i) = baseRow(i);
		end
	end

	% update goal function
	for i = 1:size(indices, 2)
		t = result(positions(i), 1:columns);
		t(columns) = 0.0;
		t(indices(i)) = 0.0;

		temporary = temporary - baseRow(indexes(i)) * t;
	end

	temporary(:, 1:(columns - 1)) = -temporary(:, 1:(columns - 1));

	free = 0.0;

	for i = 1:size(indices, 2)
		free = free + baseRow(indices(i)) * result(positions(i), columns);
	end

	temporary(columns) = free;

	result(1, 1:columns) = temporary;
end