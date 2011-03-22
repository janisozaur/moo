function x = zlotyPodzial(fun, a, b, epsilon)
	k = (sqrt(5) - 1) / 2;
	xl = b - k * (b - a);
	xp = a + k * (b - a);
	while ((xp - xl) > epsilon)
		if (valueInPoint(fun, xl) < valueInPoint(fun, xp))
			b = xp;
			xp = xl;
			xl = b - (k * (b - a));
		else
			a = xl;
			xl = xp;
			xp = a + (k * (b - a));
		end
	end
	x = (xl + xp) / 2;
end