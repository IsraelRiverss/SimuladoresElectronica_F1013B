clc % Clear comand window
% Pedir al usuario el valor de carga en C
Q = input("\nIngresa el valor de la carga en Coulombs: ");
% Pedir al usuario el peso de la carga en kg
m = input("\nIngresa el peso de la carga: ");
% Pedir al usuario la longitud del hilo de las cargas
l = input("\nIngresa la longitud del hilo: ");

% Cálculo del ángulo 
alpha = ((Q.^2)/(16*pi*((10.^-9)/(36*pi))m*9.81(l.^2))).^(1/3);

% Mostrar el ángulo
fprintf('El ángulo es igual a %6.6f°\n', alpha)

% Calculo de "Y" del ángulo
y1 = 16.*pi.*((10.^-9)/(36*pi)).*m.*9.81.*(l.^2).*((sind(alpha)).^2).*(tand(alpha))-(Q.^3);
% Graficación del punto del ángulo exacto
plot(alpha,y1,'r*',LineWidth=5)

hold on
% Creación de la tabla a graficar
a_grados = 0:0.01:90;
a_radianes = deg2rad(a_grados);
y2 = 16.*pi.*((10.^-9)/(36*pi)).*m.*9.81.*(l.^2).*((sind(a_radianes)).^2).*(tand(a_radianes))-(Q.^3);

% Graficación 
plot(a_grados,y2,LineStyle="-.",Color="m")

grid on

% Definir la función anónima para fzero
fun = @(a) 16*pi*(10^-9)/(36*pi)*m*9.81*(l^2)*(sind(a))^2*tand(a) - Q^3;
% Definir el rango inicial para buscar la solución en grados
x0_grados = [0, 90];
% Convertir el rango a radianes
x0_radianes = deg2rad(x0_grados);
% Encontrar la solución
x_radianes = fzero(fun,x0_radianes);
% Convertir la solución a grados
x_grados = rad2deg(x_radianes);

% Mostrar el ángulo encontrado por fzero
fprintf('El ángulo es igual a %6.6f°\n', x_grados)

% Graficar la solución encontrada por fzero
plot(x_grados,fun(x_radianes),'bo','MarkerSize',10,'LineWidth',2)

% Agregar leyenda
legend('Ángulo exacto','Tabla','Ángulo encontrado por fzero')

hold off