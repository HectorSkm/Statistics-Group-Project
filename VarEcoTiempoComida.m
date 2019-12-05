N = length(TiempoE);

X = [ones(N,1) TiempoE(:)]
a = (X.'*X)\(X.'*ImportComida(:));

b = a(1);
m = a(2);

xa = min(TiempoE);
xb = max(TiempoE);
x = linspace(xa,xb,100);

f = b + m*x;



plot(TiempoE,ImportComida,'.b');
hold on;
xlabel('Tiempo en años');
ylabel('Importacion de productos alimenticios');
plot(x,f,'-r');
hold off;
