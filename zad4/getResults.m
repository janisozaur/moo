function [x, xmax] = getResults(X)
	columns = size(X, 2) - 1;
	rows = size(X, 1);

	xmax = X(1, columns + 1);
	x = zeros(1, columns);

	indexes = [];
	positions = [];

	count = 0.0;

	for i = 1:columns
		[m, pos] = max(X(2:rows, i));
		s = sum(X(2:rows, i));

		if m == s && s == 1.0 && count < rows - 1
			count = count + 1;
			indexes = [indexes, i];
			positions = [positions, pos + 1];
		end
	end

	for i = 1:size(indexes, 2)
		x(indexes(i)) = X(positions(i), columns + 1);
	end
end