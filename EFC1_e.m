clear all
clc

M = 800;
i = 1;

for w = 0:0.01*pi:pi
    for m = 0:1:M-1;
        senoide(m+1) = cos(w*(m));
    end
    y = sistema_desconhecido(senoide);
    resp_freq(i) = abs(y(500)/senoide(500));
    w_plot(i) = w;
    i = i+1;
end

plot(w_plot, resp_freq)