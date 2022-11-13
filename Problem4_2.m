clear all; close all;

function [L,U] = myLU(A,b)

[N,N]= size(A);
L=eye(N)
for j=0:N
    sum = 0;
    for k=0:j-1
        sum = sum + L(j,k) * L(j,k);
    end
    L(j,j) = sqrt(A(j,j)-sum);

    for i=j+1:N
        sum = 0;
        for k=0:j-1
            sum = sum + L(i,k) * L(j,k);
        end

        L(i,j) = (1/L(j,j) * (A(i,j) - sum));
    end
end

U = L.';