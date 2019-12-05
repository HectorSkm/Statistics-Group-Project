N = length(TiempoG);

X = [ones(N,1) TiempoG(:)]
a = (X.'*X)\(X.'*TotalReserves(:));

b = a(1);
m = a(2);

xa = min(TiempoG);
xb = max(TiempoG);
x = linspace(xa,xb,100);

f = b + m*x;



plot(TiempoG,TotalReserves,'.b');
hold on;
xlabel('Tiempo en años');
ylabel('Reservas Totales');
plot(x,f,'-r');
hold off;