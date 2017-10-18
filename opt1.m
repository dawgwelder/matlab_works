a = 1;
b = 2;
N = 10;

t = linspace(a,b,N);
n = ones(1, N)./t;
x = t + n;
x(1,1) = 2;
x(1,2) = 2.5;
f = t.*diff(x.^2) + x.^2./t;