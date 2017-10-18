clear, clc

syms x y
[x0, y0] = solve ( (sin(cos(2*x))-y ), ((-2*x)- y^3 - y + 0.7*x^2) );
x0 = vpa(x0, 10)
y0 = vpa(y0, 10)