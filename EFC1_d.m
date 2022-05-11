clear all
clc

M = 800;

for m = 0:1:M-1;
    senoide_1(m+1) = cos(0.3*pi*(m));    
end

for m = 0:1:M-1;
    senoide_2(m+1) = cos(0.8*pi*(m));    
end

y_1 = sistema_desconhecido(senoide_1);
y_2 = sistema_desconhecido(senoide_2);

y_1(500)/senoide_1(500)
y_2(500)/senoide_2(500)

stem(y_1)
title ('w = 0.3*pi')
figure
stem(y_2)
title ('w = 0.8*pi')

