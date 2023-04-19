clc
% Pedir al usuario el valor de carga en C
Q = input("\nIngresa el valor de la carga en Coulombs(C): ");
% Pedir al usuario el peso de la carga en kg
m = input("\nIngresa el peso de la carga (kg): ");
% Pedir al usuario la longitud del hilo de las cargas
l = input("\nIngresa la longitud del hilo (m): ");
e0 = 8.854E-12;

% Cálculo del angulo
alphaGuess = ((Q.^2)/(16*pi*(e0)*m*9.81*(l^2))).^(1/3);
alpha_x = 0:0.01:(pi/2);
% Creación de la tabla a graficar
y = (16.*pi.*(8.854*10^-12).*m.*9.81.*(l^2).*((sin(alpha_x)).^2).*(tan(alpha_x)))-(Q^2);

% Funcion para encontrar la interseccion en x
fun = @(alphaGuess) (16.*pi.*(8.854*10^-12)*m.*9.81*(l.^2).*((sin(alphaGuess)).^2).*(tan(alphaGuess)))-(Q^2);
x0 = alphaGuess;
x = fzero(fun,x0);

% Graficar la función en un rango de valores
hold on
plot(alpha_x,y,'k',LineWidth=2);
plot(x,0,'r*');
grid on
hold off

% Mostrar el ángulo
fprintf('El ángulo es igual a %6.6f°\n', (alphaGuess))
fprintf('El ángulo con cuando intersecta en alpha es igual a %6.6f°\n', x)

% Case 1:
% Q = 2.5E-6 (C)
% m = 0.01 (kg)
% l = 0.5 (m)
% Case 2:
% Q = 1E-8 (C)
% m = 0.005 (kg)
% l = 0.2 (m)
% Case 2:
% Q = 1E-8 (C)
% m = 0.005 (kg)
% l = 0.2 (m)