function [unimodalRanges] = unimodify(fun, startPoint, endPoint, delta)
	unimodalRanges = [];

	rangeStart = startPoint;
	rangeEnd = startPoint;
	
	while ((valueInPoint(fun, rangeEnd) < valueInPoint(fun, rangeEnd + delta)) && ((rangeEnd + delta) <= endPoint))
		rangeEnd = rangeEnd + delta;
	end
	
	if (rangeStart ~= rangeEnd)
		unimodalRanges = [unimodalRanges, [rangeStart; rangeEnd]];
	end
	
	rangeStart = rangeEnd;
	
	while ((rangeStart + delta) <= endPoint)
		% find decreasing values
		while ((rangeEnd + delta <= endPoint) && (valueInPoint(fun, rangeEnd) > valueInPoint(fun, rangeEnd + delta)))
			rangeEnd = rangeEnd + delta;
		end
		% find increasing values
		while ((rangeEnd + delta <= endPoint) && (valueInPoint(fun, rangeEnd) < valueInPoint(fun, rangeEnd + delta)))
			rangeEnd = rangeEnd + delta;
		end
		% add found unimodal range to array
		if (rangeStart ~= rangeEnd)
			unimodalRanges = [unimodalRanges, [rangeStart; rangeEnd]]; %#ok<AGROW>
		end
		% get rid of constant part
		while ((rangeEnd + delta <= endPoint) && (valueInPoint(fun, rangeEnd) == valueInPoint(fun, rangeEnd + delta)))
			rangeEnd = rangeEnd + delta;
		end
		%finally update boundaries
		rangeStart = rangeEnd;
	end
			
end