function result = dfp(targetFun, epsilon, startPoint)
	x(:, 1) = startPoint;
	y = feval(targetFun, startPoint);
	n = length(startPoint);
	B(:, :, 1) = eye(n, n);
	condition = true;
	iteration = 1;
	gradient(:, iteration) = grad(targetFun, x(:, iteration));
	lambda = 0.5;
	while (condition)
		iteration
		v = vecLength(gradient(:, iteration));
		%v = abs(norm(gradient(:, iteration)));
		if (v < epsilon || iteration > 100)
			condition = false;
			break;
		end
		d(:, iteration) = -B(:, :, iteration) * gradient(:, iteration);
		lambda = lambdaSelect(targetFun, x(:, iteration), d(:, iteration));
		x(:, iteration + 1) = x(:, iteration) + lambda * d(:, iteration);
		p(:, iteration) = x(:, iteration + 1) - x(:, iteration);
		gradient(:, iteration + 1) = grad(targetFun, x(:, iteration + 1));
		q(:, iteration) = gradient(:, iteration + 1) - gradient(:, iteration);
		%B(:, :, iteration + 1) = B(:, :, iteration) + updateB(B, p, q);
		B(:, :, iteration + 1) = updateB(B, p, q);
		iteration = iteration + 1;
	end
	result = x;
end