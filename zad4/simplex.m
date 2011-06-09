function [result, status] = simplex(X)
	result = X;
	status = 0;

	last = size(result, 2);
	rows = size(result, 1);

	iteration = 1;

	while true
		fprintf(1, 'Iteracja %d, tablica:\n', iteration);
		disp(result);
		iteration = iteration + 1;

		[minimum, index] = min(result(1, 1:(last - 1)));

		% solution found
		if minimum >= 0.0
			status = 0;
			return;
		end

		maximum = max(result(:, index));

		% unlimited
		if maximum <= 0.0
			status = -1;
			break;
		end

		j = 0;
		minimum = inf;

		for i = 2:rows
			if result(i, index) > 0.0
				temp = result(i, last) / result(i, index);
				if temp < minimum
					j = i;
					minimum = temp;
				end
			end
		end

		result = eliminate(result, j, index);
	end
end