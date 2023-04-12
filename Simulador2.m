clc
% Pedir al usuario el valor de carga en C
Q = input("\nIngresa el valor de la carga en Coulombs: ");
% Pedir al usuario el peso de la carga en kg
m = input("\nIngresa el peso de la carga (kg): ");
% Pedir al usuario la longitud del hilo de las cargas
l = input("\nIngresa la longitud del hilo (m): ");

% Formulas de angulo
% Cálculo del angulo
alpha = ((Q.^2)/(16*pi*((10.^-9)/(36*pi))*m*9.81*(l.^2))).^(1/3);
alpha_x = 0:0.01:(pi/2);
hold on 
% Calculo del ángulo
y1 = (16*pi*(8.854*10^-12)*m*9.81*(l.^2)*((sin(alpha)).^2)*(tan(alpha)))-(Q.^2);
plot(alpha,y1,Color="k")
% Creación de la tabla a graficar
y2 = (16.*pi.*(8.854*10^-12).*m.*9.81.*(l.^2).*((sin(alpha_x)).^2).*(tan(alpha_x)))-(Q.^2);
% Graficación 
plot(alpha_x,y2,Color="r")
hold off
% Funcion para encontrar la interseccion en x
fun = @(alpha_x) (16.*pi.*(8.854*10^-12).*m.*9.81.*(l.^2).*((sin(alpha_x)).^2).*(tan(alpha_x)))-(Q.^2);
x0 = alpha;
x = fzero(fun,x0);

% Mostrar el ángulo
fprintf('El ángulo es igual a %6.6f°\n', alpha)
fprintf('El ángulo es igual a %6.6f°\n', x)