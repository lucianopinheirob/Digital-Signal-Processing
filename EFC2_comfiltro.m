%Luciano Pinheiro 173096

[y, Fs] = audioread('creed_overcome.wav');
y = y(:,1)+y(:,2);
h = filtro(pi/6-0.1, pi/6);
y_filtrado = conv(y,h);
z_filtrado = 0;

for i = 1:length(y_filtrado)
    if mod(i,6) == 0
        z_filtrado = [z_filtrado y_filtrado(i)];
    end
end

z_filtrado = z_filtrado(1,2:length(z_filtrado));
z_filtrado = z_filtrado';

espectro(h)
title('h')
espectro(y_filtrado)
title('y filtrado')
espectro(z_filtrado)
title('z filtrado')
%soundsc(y_filtrado, Fs)
%soundsc(z_filtrado, Fs/6)

