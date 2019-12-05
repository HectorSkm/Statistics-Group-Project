N = length(TiempoD);

X = [ones(N,1) TiempoD(:)]
a = (X.'*X)\(X.'*GDDebt(:));

b = a(1);
m = a(2);

xa = min(TiempoD);
xb = max(TiempoD);
x = linspace(xa,xb,100);

f = b + m*x;



plot(TiempoD,GDDebt,'.b');
hold on;
xlabel('Tiempo en años');
ylabel('Deuda del Gobierno');
plot(x,f,'-r');
hold off;