

function [T U]=s3(f,y0,a,b,M)

h = (b-a)/M;
U = zeros(M+1,length(y0));
T = (a:h:b)';
U(1,:) = y0;
for j=1:M
    k1=h*feval(f,T(j), U(j,:) )';
    k2=h*feval(f,T(j)+h/2, U(j,:)+k1/2)';
    k3=h*feval(f,T(j)+h/2, U(j,:)+k2/2)';
    k4=h*feval(f,T(j)+h, U(j,:)+k3)';
    U(j+1,:) = U(j,:) + (k1+2*k2+2*k3+k4)/6 ;
end
end




