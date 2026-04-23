function [K,tau] = identificirajAperiodskiBlok1(u, T)
N1=1;
%Ide while petljom dok se ne do?e do po?etka djelovanja pobude
while(u(N1)<=0)
    N1=N1+1;
end
Ta=mean(T(1:N1));
Tnovo=T(1:end)-Ta;
N2=round(length(Tnovo)*0.1);
Tfin=mean(Tnovo((end-N2):end));
K=Tfin / u(end);

idx=1;
while(Tnovo(idx)<0.63*Tfin)
    idx=idx+1;
end
tau=idx*0.1;
end 

