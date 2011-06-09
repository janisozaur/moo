function maximize(X)
	columns = size(X, 2);
	firstRow = X(1, :);

	aux = auxiliaryProblem(X);

	fprintf(1, '\nFaza pierwsza, problem pomocniczy:\n');
	disp(aux);

	[aux, status] = simplex(aux);

	if aux(1, size(aux, 2)) < 0.0
		fprintf(1, 'Problem nie posiada rozwiązania\n');
		return;
	end

	if status < 0.0
		fprintf(1, 'Brak rozwiązań\n');
		return;
	end

	fprintf(1, '\nFaza druga, problem:\n');

	base = baseProblem(aux, firstRow, columns);

	disp(base);

	[result, status] = simplex(base);


	if status < 0.0
		fprintf(1, 'Rozwiązanie problemu jest nieograniczone\n');
		return;
	end

	[x, xmax] = getResults(result);

	fprintf(1, '\n\n\n');

	for i = 1:size(x, 2)
		fprintf(1, 'x%d = %f\n', i, x(i));
	end

	fprintf(1, 'maksimum = %f\n', xmax);

end