function [x, iterations] = newton(fun, a, b, epsilon, inputIterations)
	iterations = inputIterations;
	% szukamy minimum, czyli miejsca zerowego pierwszej pochodnej
	fun = diff(sym(fun));
	x = (a + b) / 2;
	nx = x;
	y = valueInPoint(fun, nx); % wartość pochodnej w pkcie
	while ((abs(y) > epsilon) && (nx >= a) && (nx <= b))
		iterations = iterations + 1;
		x = nx;
		y = valueInPoint(fun, nx);
		da = valueInPoint(diff(sym(fun)), nx); % wsp kierunkowy
		db = y - (da * nx); % wyraz wolny
		nx = -db/da; % pierwiastek - nowy x
	end
end