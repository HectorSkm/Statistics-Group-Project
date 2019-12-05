N = length(Poblacionrural);

X = [ones(N,1) Poblacionrural(:)]
a = (X.'*X)\(X.'*EmisionesdeCO2(:));

b = a(1);
m = a(2);

xa = min(Poblacionrural);
xb = max(Poblacionrural);
x = linspace(xa,xb,100);

f = b + m*x;



plot(Poblacionrural,EmisionesdeCO2,'.b');
hold on;
xlabel('Poblacion rural');
ylabel('Emisiones de CO2');
plot(x,f,'-r');
hold off;