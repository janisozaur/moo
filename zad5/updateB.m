function result = updateB(Bv, pv, qv)
	n = size(Bv, 3);
	p = pv(:, n);
	q = qv(:, n);
	B = Bv(:, :, n);
	result = B + (p * p') / (p' * q) - ((B * q) * (B * q)') / (q' * B * q);
end