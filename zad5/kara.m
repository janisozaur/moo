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
	
	set(gcf, 'Renderer', 'opengl');
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
	s = surf(plotx, ploty, plotz);
	for sx = 1:length(solx)
		plot3(solx(sx), soly(sx), solz(sx), '--rs','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',10);
	end
	
	if (true)
		%rotate3d(handles.axes, 'off');
		%[X, Y, Z] = meshgrid(plotx, ploty);
		Z = zeros(size(plotx));
		colors = get(s, 'CData');
		for i = 1:size(constraints, 1)
			for px = 1:length(plotx)
				for py = 1:length(ploty)
					x(1) = plotx(px);
					x(2) = ploty(py);
					if (eval(constraints{i}) > 0)
						colors(py, px) = colors(py, px) * 0.7;
					end
				end
			end
		end
		set(s, 'CData', colors);
	end
	
	hold off
end