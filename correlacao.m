function [z,atraso]=correlacao(inf,tx,Amost,Nmax,Mmax)
% function [z,atraso]=correlacao(inf,tx,Amost,Nmax,Mmax)
% onde inf e' a sequencia de informaçao (um elemento/simbolo),
% tx e' a sequencia amostrada, Amost e' o nº de amostras por simbolo,
% Nmax e' o nº de simbolos de informaçao a considerar na correlaçao
% e Mmax e' o nº de simbolos maximo de atraso calculado
% z e' a funçao de correlaçao entre inf e tx em amostras
% e atraso e' o atraso entre inf e tx tambem em amostras
a = zeros(1,Amost*Mmax); % Preallocate matrix
for j = 1:Amost*Mmax % Para cada atraso T=(j-1)*Ta
 for i = 1:Nmax % Para cada amostra de informaçao
 k = j+(i-1)*Amost; % Posiçao no sinal amostrado
 a(j) = a(j)+inf(i)*tx(k);
 end
end
z=a./Nmax;
% Determinaçao da posiçao do maximo
max =0;
pos = 0;
for k = 1:length(a)
 if a(k) > max
 max=a(k);
 pos = k;
 end
end
atraso = pos-1;