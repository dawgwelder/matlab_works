function J = fin(V, R, L)
n = 10;
h = 2 
VI = 40 : h : 44;
RI = 2 : h : 6;
LI = 1 : h/2 : 3;

t = 0 : 2;
VR = (VI./RI)
RL = (1 - exp((-RI./LI)).*t)
Ii = zeros(length(t-1), length(t))
Ii = [RL; RL; RL]
Ii = VR*Ii
%I = zeros (1, length(t)-1);
B = zeros(1, length(t)-1);
 
     I = (V./R)*(1 - exp((-R./L)*t));
     for i = 1 : length(t)
     Ii = VR(i).*RL(i)
    end
 %  Ii = VR .* RL
     f = (Ii - I).^2;
     
    for i = 2 : length(t)
     f(i) = sum (f(i))+ f(i-1) ;
     
     end
     
end