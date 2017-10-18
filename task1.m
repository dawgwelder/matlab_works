function task1
h = 0.01;
a = 0;
b = 1.5;

 T = a : h : b;
 y0 = 0;
 
 [x y] = ode23(@diffs, T, y0);
 plot (x, y(:,1))
 grid on,
 legend('y(x)');
 xlabel('x')
end

function dydx = diffs(x,y)
dydx = (y+x).^2;
end
 