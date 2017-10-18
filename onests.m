function dy = onests(t,y)

dy = zeros(3,1);
dy(1) = y(2);
dy(2) = y(3);
dy(3) = -29.731*y(1);
end
