function V = pointbary(P, T)
%točko P glede na trikotnik T
%pretvori v barocentrične korodinate V


A = [1 1 1 ; T(:,1)'; T(:,2)'];
P1 = [1 P]';
V = A\P1;
V = V';
end