X = -1 : 0.001 : 1;
Y = abs(X);
x = linspace(-1,1, 1000);
y = Lagrange(X,Y,x)

figure('Color', 'W')
fplot(@abs, [-1 1])
hold on
plot(x,y,'r')
plot(X,Y,'bo')
legend('abs\itx', '{\itL_n}({\itx})', 'nodes', -1)