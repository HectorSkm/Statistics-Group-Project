N = length(PoblacionUrbana);

X = [ones(N,1) PoblacionUrbana(:)]
a = (X.'*X)\(X.'*Poblacionrural(:));

b = a(1);
m = a(2);

xa = min(PoblacionUrbana);
xb = max(PoblacionUrbana);
x = linspace(xa,xb,100);

f = b + m*x;



plot(PoblacionUrbana,Poblacionrural,'.b');
hold on;
xlabel('Poblacion urbana');
ylabel('Poblacion rural');
plot(x,f,'-r');
hold off;