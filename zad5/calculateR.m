function r = calculateR(constraints, x)
	r = 0;
	for i = 1:size(constraints, 1);
		g = eval(constraints{i});
		if (g > 0)
			r = r + g^2;
		end
	end
end