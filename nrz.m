function [x,t] = nrz(inf,R,N)
%NRZ line coding
T = length(inf)/R;
Nt = N*length(inf);
dt = T/Nt;
t = 0:dt:T;
x = zeros(1,length(t));
for i=1:length(inf)
 if inf(i)==1
 x((i-1)*N+1:i*N) = 1;
 end
end
end