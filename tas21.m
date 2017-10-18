h = 0.01;
b = 10;
t = 0:h:b;
y = zeros(1, b/h+1);
but = [1/4 3/4];
k = [0 0];
lamb = -1000;
y(1) = 1;

 for i = 2:[b/h+1] % метод хойна 
     k(1) = lamb*(y(i-1)) + 1;
     k(2) = lamb*y(i-1) + h*k(1) + 1;
     y(i) = y(i-1) + h*(but(1)*k(1) + but(2)*k(2));
 end
 plot (t, y)
 grid on,
 legend('x(t)');
 legend ('t');
 