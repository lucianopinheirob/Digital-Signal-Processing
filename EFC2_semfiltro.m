%Luciano Pinheiro 173096

%z é o sinal após a compressão

[y, Fs] = audioread('creed_overcome.wav');
y = y(:,1)+y(:,2);
z = 0;

for i = 1:length(y)
    if mod(i,6) == 0
        z = [z y(i)];
    end
end
z = z(1,2:length(z));
z = z';

espectro(y)
title('y (sinal original)')
espectro(z)
title('z (sinal após a compressão)')
%soundsc(y, Fs)
%soundsc(z, Fs/6)



