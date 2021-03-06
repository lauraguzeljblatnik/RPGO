function rplotcircle (B , w, t)
% nariše RACIONALNO bezierjevo krivuljo

n = size (B,1);

f = zeros(n-1,2);
for i=1:(n-1)
   f(i,:) = w(i)/(w(i)+w(i+1))*B(i,:) + w(i+1)/(w(i)+w(i+1))*B(i+1,:);
end

b = rbezier(B,w,t);

plot(b(:,1),b(:,2))

end