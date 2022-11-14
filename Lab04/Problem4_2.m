clear all; close all;

matrix = [ 
    1,2,3;
    2,8,10;
    3,10,22;
];

[L,U] = myLu(matrix),

[U] = chol(matrix),

function [L,U] = myLu(A)
[N,N] = size(A);

L=eye(N);
for j=1:N
    sum = 0;
    for k=1:j-1
        sum = sum + L(j,k) * L(j,k);
    end
    L(j,j) = sqrt(A(j,j)-sum);
    
    for i=j+1:N
        sum = 0;
        for k=1:j-1
            sum = sum + L(i,k) * L(j,k);
        end
    
        L(i,j) = (1/L(j,j) * (A(i,j) - sum));
    end
end

U = L.';

end