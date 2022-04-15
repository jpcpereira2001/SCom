function [H]=densidade(f,R,F)
% Theoretical PSD for time unlimited raised cosine pulses.
A=1;
Beta = (R/2)*F;
for kk = 1:length(f)
 if abs(f(kk)) < (R/2) - Beta
 H(kk) = A^2*(1/R)/4;
 elseif abs(f(kk)) < (R/2 + Beta) && abs(f(kk)) > (R/2 - Beta)
 H(kk) = A^2*((1/R)/4)*cos((abs(f(kk)) - (R/2) + Beta)*(pi/(4*Beta)))^4;
 else
 H(kk) = 0;
 end
end
end