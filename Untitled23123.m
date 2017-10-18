[V] = meshgrid(x);
[V,i] = sort(V);
V = V.^i

V(: ,end) = 1

A = V'*V
