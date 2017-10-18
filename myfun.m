function fcns=myfun(z) 
x=z(1); 
y=z(2); 
fcns(1)=sin(cos(2*x)) - y; 
fcns(2)=-2*x - y.^3 - y + 0.7*x.^2; 

ezplot('sin(cos(2*x)) - y')
hold on
ezplot('-2*x - y.^3 - y + 0.7*x.^2')
hold off
title 'functions'
grid on;
end 

