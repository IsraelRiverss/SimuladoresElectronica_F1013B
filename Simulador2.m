clc % Clear comand window
m = input('Eneter the mass: ');
q = input('Enter the charge: ');
l = input('Enter the large of the rope: ');
e_0 = (10.^-9)/(36*pi);
g = 9.81;

alpha = (q^2/16*pi*e_0*m*g*l^2)^1/3;



disp(alpha)