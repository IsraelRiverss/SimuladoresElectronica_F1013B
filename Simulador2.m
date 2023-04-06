clc
%Pedir al usuario el valor de carga en C
Q = input("\nIngresa el valor de la carga en Coulombs: ");
%Pedir al usuario el peso de la carga en kg
m = input("\nIngresa el peso de la carga: ");
%Pedir al usuario la longitud del hilo de las cargas
l = input("\nIngresa la longitud del hilo: ");

%Cálculo del ángulo 
alpha = ((Q.^2)/(16*pi*((10.^-9)/(36*pi))m*9.81(l.^2))).^(1/3);

%Mostrar el ángulo
fprintf('El ángulo es igual a %6.6f°\n', alpha)

%Calculo de "Y" del ángulo
y1 = 16.*pi.*((10.^-9)/(36*pi)).*m.*9.81.*(l.^2).*((sind(alpha)).^2).*(tand(alpha))-(Q.^2);
%Graficación del punto del ángulo exacto
plot(alpha,y1,'r*',LineWidth=5)


hold on
%Creación de la tabla a graficar
a = -20*alpha:0.01:20*alpha;
y2 = 16.*pi.*((10.^-9)/(36*pi)).*m.*9.81.*(l.^2).*((sind(a)).^2).*(tand(a))-(Q.^2);

%Graficación 
plot(a,y2,LineStyle="-.",Color="m")

grid on

fun = @(a) 16.*pi.*((10.^-9)/(36*pi)).*m.*9.81.*(l.^2).*((sind(a)).^2).*(tand(a))-(Q.^2);
x0 = [0, pi/2];
x = fzero(fun,x0);

fprintf('El ángulo es igual a %6.6f°\n', x)