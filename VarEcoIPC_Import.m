N = length(IPC);

X = [ones(N,1) IPC(:)]
a = (X.'*X)\(X.'*ImportComida(:));

b = a(1);
m = a(2);

xa = min(IPC);
xb = max(IPC);
x = linspace(xa,xb,100);

f = b + m*x;



plot(IPC,ImportComida,'.b');
hold on;
xlabel('IPC');
ylabel('Importacion de productos alimenticios');
plot(x,f,'-r');
hold off;