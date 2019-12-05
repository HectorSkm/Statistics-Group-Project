N = length(TotalReserves);

X = [ones(N,1) TotalReserves(:)]
a = (X.'*X)\(X.'*GDP(:));

b = a(1);
m = a(2);

xa = min(TotalReserves);
xb = max(TotalReserves);
x = linspace(xa,xb,100);

f = b + m*x;



plot(TotalReserves,GDP,'.b');
hold on;
xlabel('Reservas Totales');
ylabel('GDP');
plot(x,f,'-r');
hold off;