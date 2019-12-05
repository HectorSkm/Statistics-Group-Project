N = length(TiempoC);

X = [ones(N,1) TiempoC(:)]
a = (X.'*X)\(X.'*EmisionesdeCO2(:));

b = a(1);
m = a(2);

xa = min(TiempoC);
xb = max(TiempoC);
x = linspace(xa,xb,100);

f = b + m*x;



plot(TiempoC,EmisionesdeCO2,'.b');
hold on;
xlabel('Tiempo en años');
ylabel('Emisiones de CO2');
plot(x,f,'-r');
hold off;