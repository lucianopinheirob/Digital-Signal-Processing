%Essa fun��o plota o espectro do sinal de entrada (y). S�o mostradas apenas as
%frequ�ncias positivas, j� que se assume que o sinal � real e, portanto,
%as frequ�ncias negativas s�o o conjugado das positivas. O eixo x mostra
%a frequ�ncia em rad/amostra.

function espectro(y)

Y = abs(fft(y));
w = linspace(0,pi,floor(length(Y)/2));
Y = Y(1:(length(w)));
figure; plot(w,Y/max(Y),'-');
xlabel('\omega (rad)')
ylabel('|Y(e^{j\omega})|')
axis([0 pi 0 1])
grid;