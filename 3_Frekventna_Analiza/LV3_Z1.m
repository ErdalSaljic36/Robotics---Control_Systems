% Parametri sistema kako bi se mogli mijenjati
TM = 0.1984;               
KM = 1698;                 
Kprop = 7e-5;                 

I = 5.64e-4;              
xi = 19.6e-4;              
m = 0.0138;                
g = 9.81;                  
x = 0.2;                   
d = 0.26;                  

%G_M(s)
s = tf('s');  
Gm = KM / ( (TM*s + 1)^2 );

%G_K(s)
denGK = I*s^2 + xi*s + m*g*x;
Gk = d / denGK;
% Ukupna prenosna funkcija
G = Gm * Kprop * Gk;
