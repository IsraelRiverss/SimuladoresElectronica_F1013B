clc
%Pedir al usuario el valor de carga en C
Q = input("\nIngresa el valor de la carga en Coulombs: ");
%Pedir al usuario el peso de la carga en kg
m = input("\nIngresa el peso de la carga: ");
%Pedir al usuario la longitud del hilo de las cargas
l = input("\nIngresa la longitud del hilo: ");

%Cálculo del ángulo en radianes
alpha = ((Q.^2)/(16*pi*((10.^-9)/(36*pi))*m*9.81*(l.^2))).^(1/3);

% Convertir a grados
alpha_degrees = rad2deg(alpha);

%Mostrar el ángulo
fprintf('El ángulo es igual a %6.6f°\n', alpha_degrees)

%Calculo de "Y" del ángulo
y1 = 16.*pi.*((10.^-9)/(36*pi)).*m.*9.81.*(l.^2).*((sind(alpha_degrees)).^2).*(tand(alpha_degrees))-(Q.^3);
%Graficación del punto del ángulo exacto
plot(alpha_degrees,y1,'r*',LineWidth=5)

hold on
%Creación de la tabla a graficar
a_degrees = -20*alpha_degrees:0.01:20*alpha_degrees;
a = deg2rad(a_degrees);
y2 = 16.*pi.*((10.^-9)/(36*pi)).*m.*9.81.*(l.^2).*((sind(a)).^2).*(tand(a))-(Q.^3);

%Graficación 
plot(a_degrees,y2,LineStyle="-.",Color="m")

grid on

fun = @(a) 16*pi*(10^-9)/(36*pi)*m*9.81*(l^2)*(sind(a))^2*tand(a) - Q^3;
x0 = [0, pi/2];
x = fzero(fun,x0);

x_degrees = rad2deg(x);

fprintf('El ángulo es igual a %6.6f°\n', x_degrees)
