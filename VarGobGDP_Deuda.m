N = length(GDDebt);

X = [ones(N,1) GDDebt(:)]
a = (X.'*X)\(X.'*GDP1(:));

b = a(1);
m = a(2);

xa = min(GDDebt);
xb = max(GDDebt);
x = linspace(xa,xb,100);

f = b + m*x;



plot(GDDebt,GDP1,'.b');
hold on;
xlabel('Deuda del Gobierno');
ylabel('GDP');
plot(x,f,'-r');
hold off;