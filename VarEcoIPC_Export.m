N = length(IPC);

X = [ones(N,1) IPC(:)]
a = (X.'*X)\(X.'*ExportacionMercaderias(:));

b = a(1);
m = a(2);

xa = min(IPC);
xb = max(IPC);
x = linspace(xa,xb,100);

f = b + m*x;



plot(IPC,ExportacionMercaderias,'.b');
hold on;
xlabel('IPC');
ylabel('Exportacion de Productos');
plot(x,f,'-r');
hold off;