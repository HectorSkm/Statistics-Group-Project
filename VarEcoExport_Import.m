N = length(ImportComida);

X = [ones(N,1) ExportacionMercaderias(:)]
a = (X.'*X)\(X.'*ImportComida(:));

b = a(1);
m = a(2);

xa = min(ExportacionMercaderias);
xb = max(ExportacionMercaderias);
x = linspace(xa,xb,100);

f = b + m*x;



plot(ExportacionMercaderias,ImportComida,'.b');
hold on;
xlabel('Exportacion de Productos');
ylabel('Importacion de productos alimenticios');
plot(x,f,'-r');
hold off;