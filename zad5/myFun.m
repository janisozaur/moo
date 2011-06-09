function res = myFun(a)
	%res = sin(a(1)) + cos(a(2));
	%res = (1-a(1))^2+100*(a(2)-a(1)^2)^2;
	%res = a(1)^2 + a(2)^2;
	%res = 3 + (a(1) - 1.5*a(2))^2 + (a(2) - 2)^2;
	res = -a(1)*sin(sqrt(abs(a(1))))-a(2)*sin(sqrt(abs(a(2))));
end