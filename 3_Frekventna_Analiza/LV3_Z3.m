c = 7; 
f = 0.1*(c+1);
t = 0:0.01:30/f;
u = 0.4 + 0.25*sin(2*pi*f*t);
G = tf(0.0309, [2.22e-05, 0.0003009, 0.002407, 0.0127, 0.02708]);% Prenosna funkcija iz Zadatka 1.
theta = lsim(G, u, t);
theta = awgn(theta, 25, 'measured');
t0 = 5;
[A, delta_phi] = IzracunajPojacanjeIFazniPomak(u, theta, t, t0, f);
figure;
nyquist(G); % Provjera rezultata
%Da bi se ispisalo u command window
A
delta_phi
figure ;
nyquist (G); % Provjera rezultata

figure ;
plot (t, u, 'r', 'DisplayName', 'Pobuda'); hold on;
plot (t, theta , 'b', 'DisplayName', 'Odziv');
xlabel ('t');
ylabel ('u(t),theta (t)');
legend ('show ');