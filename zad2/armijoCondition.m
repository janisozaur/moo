function result = armijoCondition(f, startPoint, direction, x, c1, mystep, epsilon)
	result = valueInPoint(f, startPoint, direction, x + mystep) <= valueInPoint(f, startPoint, direction, x) + c1 * mystep * myDiff(f, startPoint, direction, x, epsilon);
end