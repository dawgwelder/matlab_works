
function[B] = createmat(n)
a = [1:1:n]
[X] = meshgrid(a)
[B, i] = sort (X)
b = i(2:end-1, 2:end-1)
A = triu(X) + triu(X,1)'

A(: , end) = sort(a, 'descend')

A(end, :) = sort(a, 'descend')


A(2:end-1, 2:end-1) = A(2:end-1, 2:end-1) - b + 1   
B = triu (A) + triu(A,1)' 
