function y = sistema_desconhecido(x)

N = 400; n = 0:1:N-1;
hn = (1/2)*exp(-0.3*abs(n - 100)).*cos(pi/10*n);
y = conv(hn,x);