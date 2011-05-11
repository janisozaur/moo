function result = updateB(B, p, q)
	n = size(B, 3);
	result(:, :) = B(:, :, n) + (p(:, n) * p(:, n)') / (p(:, n)' * q(:, n)) - (B(:, :, n) * q(:, n) * q(:, n)' * B(:, :, n)) / (q(:, n)' * B(:, :, n) * q(:, n));
end