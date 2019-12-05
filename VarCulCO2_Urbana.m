N = length(PoblacionUrbana);

X = [ones(N,1) PoblacionUrbana(:)]
a = (X.'*X)\(X.'*EmisionesdeCO2(:));

b = a(1);
m = a(2);

xa = min(PoblacionUrbana);
xb = max(PoblacionUrbana);
x = linspace(xa,xb,100);

f = b + m*x;



plot(PoblacionUrbana,EmisionesdeCO2,'.b');
hold on;
xlabel('Poblacion urbana');
ylabel('Emisiones de CO2');
plot(x,f,'-r');
hold off;