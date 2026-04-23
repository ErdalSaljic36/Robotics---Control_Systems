% Bodeov dijagram sa rezervama stabilnosti
figure;
margin(G);
title('Bodeov dijagram sa rezervama stabilnosti');

% Nyquistov dijagram
figure;
nyquist(G);
title('Nyquistov dijagram');

figure;
bode(G)
grid on;
title('Bodeov dijagram');