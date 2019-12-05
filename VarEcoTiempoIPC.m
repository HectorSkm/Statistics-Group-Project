%Determinar el tamaño de la muestra
N = length(TiempoE);

%Adecuar a la forma f(x)= b + m*x
X = [ones(N,1) TiempoE(:)]
a = (X.'*X)\(X.'*IPC(:));

b = a(1);
m = a(2);

%Calcular recta para la grafica 
xa = min(TiempoE);
xb = max(TiempoE);
x = linspace(xa,xb,100);

f = b + m*x;

%Impresion por pantalla de los resultados obtenidos
plot(TiempoE,IPC,'.b');

%Conserva propiedades del trazado y los ejes para que los comandos graficos siguientes se agreguen al grafico creado.
hold on;

%Damos el nombre a los ejes
xlabel('Tiempo en años');
ylabel('IPC');

%Imprimimos el resto de componentes para formar la recta
plot(x,f,'-r');

%Establece las propiedades de los ejes a sus valores predeterminados antes de dibujar nuevos gráficos
hold off;
