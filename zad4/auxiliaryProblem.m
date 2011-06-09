% return the helper problem in the form Ax + Iy = B
function A = auxiliaryProblem(X)
	rows = size(X, 1);
	columns = size(X, 2);
	
	% create the matrix with additional columns:
	A = zeros(rows, rows + columns - 1);

	% add identity matrix: [0|I|0]
	A(2:rows, columns:(rows + columns - 2)) = eye(rows - 1, rows - 1);

	% import matrix elements from input: [A|I|B]
	A(2:rows, 1:(columns - 1)) = X(2:rows, 1:(columns - 1));
	A(2:rows, columns + rows - 1) = X(2:rows, columns);
	
	% calculate a sum of all coefficients and corresponding results
	A(1, 1:(columns - 1)) = sum(X(2:rows, 1:(columns - 1)), 1);
	A(1, columns + rows - 1) = sum(X(2:rows, columns), 1);
end