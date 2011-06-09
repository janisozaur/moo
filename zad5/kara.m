function result = kara(targetFun, epsilon, startPoint, constraints)
	if (calculateR(constraints, startPoint) > 0)
		result = startPoint;
		disp('the start point is outside the constraints');
		return;
	else
		disp('start ok');
	end
	done = false;
	x(:, 1) = startPoint;
	iteration = 1;
	
	while (~done)
		iteration = iteration + 1;
		disp('tutaj');
		x(:, iteration) = dfp(targetFun, epsilon, x(:, iteration - 1), constraints, iteration);
		disp(x(:, iteration));
		if (abs(x(:, iteration) - x(:, iteration - 1)) < 0.01)
			done = true;
		end
	end
	result = x;
end