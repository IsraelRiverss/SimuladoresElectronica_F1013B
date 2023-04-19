clc
N = input("Ingresa la cantidad de cargas (no consideres la carga de prueba): ");
Q_p = input("Ingresa la carga de prueba: ");

disp("Ingresa la posición de la carga de prueba");

x = input("x = ");
y = input("y = ");
z = input("z = ");

r_p = [x,y,z];

Qk = NaN(1,N);
rk = NaN(N,3);

for i = 1:N
    Qk(1,i) = input(['Ingresa Q', num2str(i), ': ']);
    disp('Ingresa la posición de dicha carga')
    rk(i,1) = input("x = ");
    rk(i,2) = input("y = ");
    rk(i,3) = input("z = ");
end

r = NaN(N,3);

for i = 1:N
    r(i,:) = r_p - rk(i,:);
end

Fk = NaN(N,3);

for i = 1:N
    Fk(i,:) = (Qk(1,i)*r(i,:))/((sum(((r(i,:)).^2),2)).^(3/2));
end

Fk_suma = sum(Fk);
e_cero = (10.^-9)/(36*pi);
F = (((Q_p)/(4*pi*e_cero))*Fk_suma)*1000;

disp(F)