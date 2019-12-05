N = length(TiempoG);

X = [ones(N,1) TiempoG(:)]
a = (X.'*X)\(X.'*GDP(:));

b = a(1);
m = a(2);

xa = min(TiempoG);
xb = max(TiempoG);
x = linspace(xa,xb,100);

f = b + m*x;



plot(TiempoG,GDP,'.b');
hold on;
xlabel('Tiempo en años');
ylabel('GDP');
plot(x,f,'-r');
hold off;