syms x(t) y(t) t
sol = dsolve(diff(x)== -1113*x -1112.99*y, diff(y)== 2*x + 1.99*y, x(0)==1, y(0)==-1)
s = simplify(sol.x-sol.y)
%ezplot('-2*exp(-t)')
sol1 = dsolve(diff(x)== -1113*x -1112.99*y, diff(y)== 2*x + 1.99*y, x(0)==1, y(0)==-2)
s1 = simplify(sol1.x - sol1.y)
limit(abs(s - s1), t , inf)