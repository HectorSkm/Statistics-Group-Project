N = length(TotalReserves1);

X = [ones(N,1) TotalReserves1(:)]
a = (X.'*X)\(X.'*GDDebt(:));

b = a(1);
m = a(2);

xa = min(TotalReserves1);
xb = max(TotalReserves1);
x = linspace(xa,xb,100);

f = b + m*x;



plot(TotalReserves1,GDDebt,'.b');
hold on;
xlabel('Reservas Totales');
ylabel('Deuda del Gobierno');
plot(x,f,'-r');
hold off;