N = length(TiempoC);

X = [ones(N,1) TiempoC(:)]
a = (X.'*X)\(X.'*Poblacionrural(:));

b = a(1);
m = a(2);

xa = min(TiempoC);
xb = max(TiempoC);
x = linspace(xa,xb,100);

f = b + m*x;



plot(TiempoC,Poblacionrural,'.b');
hold on;
xlabel('Tiempo en años');
ylabel('Poblacion Rural');
plot(x,f,'-r');
hold off;