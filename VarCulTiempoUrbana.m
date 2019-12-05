N = length(TiempoC);

X = [ones(N,1) TiempoC(:)]
a = (X.'*X)\(X.'*PoblacionUrbana(:));

b = a(1);
m = a(2);

xa = min(TiempoC);
xb = max(TiempoC);
x = linspace(xa,xb,100);

f = b + m*x;



plot(TiempoC,PoblacionUrbana,'.b');
hold on;
xlabel('Tiempo en años');
ylabel('Poblacion Urbana');
plot(x,f,'-r');
hold off;