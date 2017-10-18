function Untitled8
t=[0 5];
y0=[1 -1];
 
[T,Y]=ode15s(@myfun, t, y0);
plot(T, Y(:,1), 'o',T, Y(:,2))
grid on
legend('X','Y');
xlabel('t');
disp('Вывод значений функций')
[Y(:,1),Y(:,2)]
end

function dy = myfun(t,y)
dy = zeros(2,1);   
dy(1) = -1113*y(1)+1112.99*y(2);
dy(2) = 2*y(1)+1.99*y(2);
end