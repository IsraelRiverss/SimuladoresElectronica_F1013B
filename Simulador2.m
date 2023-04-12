clc
%Pedir al usuario el valor de carga en C
Q = input("\nIngresa el valor de la carga en Coulombs: ");
% Pedir al usuario el peso de la carga en kg
m = input("\nIngresa el peso de la carga: ");
% Pedir al usuario la longitud del hilo de las cargas
l = input("\nIngresa la longitud del hilo: ");

% Formulas de y, Calculo de angulo
%Formula del ángulo 
alpha = ((Q.^2)/(16*pi*((10.^-9)/(36*pi))*m*9.81*(l.^2))).^(1/3);
% Fromula de Y
y = (16*pi*(8.854*10^-12)*m*9.81*(l.^2)*((sin(alpha)).^2)*(tan(alpha)))-(Q.^2);

%Mostrar el ángulo
fprintf('El ángulo es igual a %6.6f°\n', alpha)

% Grafica
plot(a,y,LineStyle="-.",Color="m")
grid on

fun = @(a) (16.*pi.*(8.854*10^-12).*m.*9.81.*(l.^2).*((sin(a)).^2).*(tan(a)))-(Q.^2);
x0 = alpha;
x = fzero(fun,x0);

fprintf('El ángulo es igual a %6.6f°\n',x)