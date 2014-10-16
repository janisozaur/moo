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
	res = 75;
	high = max(x, [], 2);
	low = min(x, [], 2);
	delta = (high - low) / res;
	plotx = linspace(low(1) - delta(1), high(1) + delta(1), res);
	ploty = linspace(low(2) - delta(2), high(2) + delta(2), res);
	%plotz = zeros(size(plotx));
	for px = 1:length(plotx)
		for py = 1:length(ploty)
			plotz(py, px) = feval(targetFun, [plotx(px); ploty(py)]) + 0.001;
		end
	end
	solx = result(1, :);
	soly = result(2, :);
	for sx = 1:length(solx)
			solz(sx) = feval(targetFun, [solx(sx); soly(sx)]);
	end
	
	hold on
	surf(plotx, ploty, plotz);
	for sx = 1:length(solx)
		plot3(solx(sx), soly(sx), solz(sx), '--rs','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',10);
	end
	hold off
end