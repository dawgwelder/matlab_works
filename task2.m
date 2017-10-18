function task2
a = 0;
b = 10;
h = 0.01;
t = a:h:b;
t1 = a:h:b;
x0 = 1;
 [t x] = ode23t(@dx, t, x0); % метод трапеций

 [t1 x1] = ode23t(@dy, t1, x0);
  plot (t1, x1(:,1), t, x(:,1))
 grid on,
 legend ('lambda = 0', 'lambda = -5');
 xlabel('t')
 
end



function dxdt = dx(t, x)

lamb = -5;
dxdt = lamb*x + 1;
end

function f = dy (t1, x1)
lamb = 0;
f = lamb*x1 +1;
end

