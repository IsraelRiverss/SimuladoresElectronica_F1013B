clc
Q = input("\nIngresa el valor de la carga en Coulombs: ");
m = input("\nIngresa el peso de la carga: ");
E = input("\nIngresa la intensidad del campo eléctrico: ");
g = 9.80665;
t = 0:0.5:50;

x = (Q/(2*m))*E.*(t.^2);
subplot(3,3,1)
plot(t,x,'r',LineWidth=2);
title('Posición en X')
xlabel('Tiempo (s)')
ylabel('Posición (m)')
grid on

y = -g.*((t.^2)/2);
subplot(3,3,2)
plot(t,y,'m',LineWidth=2);
title('Posición en Y')
xlabel('Tiempo (s)')
ylabel('Posición (m)')
grid on

vx = (Q/m)*E.*t;
subplot(3,3,3)
plot(t,vx,'g',LineWidth=2);
title('Velocidad en X')
xlabel('Tiempo (s)')
ylabel('Velocidad (m/s)')
grid on

vy = -g.*t;
subplot(3,3,4)
plot(t,vy,Color="#0072BD",LineWidth=2);
title('Velocidad en Y')
xlabel('Tiempo (s)')
ylabel('Velocidad (m/s)')
grid on

v = sqrt((vx.^2)+(vy.^2));
subplot(3,3,5)
plot(t,v,'y',LineWidth=2);
title('Magnitud de la velocidad')
xlabel('Tiempo (s)')
ylabel('Velocidad (m/s)')
grid on

ax = vx./t;
subplot(3,3,6)
plot(t,ax,'c',LineWidth=2);
title('Aceleración en X')
xlabel('Tiempo (s)')
ylabel('Aceleración (m^2/s)')
grid on

ay = vy./t;
subplot(3,3,7)
plot(t,ay,'k',Color="#D95319",LineWidth=2);
title('Aceleración en Y')
xlabel('Tiempo (s)')
ylabel('Aceleración (m^2/s)')
set(gca,'ytick',[])
grid on

a = sqrt((ax.^2)+(ay.^2));
subplot(3,3,8)
plot(t,a,Color="#7E2F8E",LineWidth=2);
title('Magnitud de la velocidad')
xlabel('Tiempo (s)')
ylabel('Aceleración (m^2/s)')
set(gca,'ytick',[])
grid on

s = 2.*((Q/(2*m))*E.*(t.^2));
subplot(3,3,9)
plot(t,x,Color="#77AC30",LineWidth=2);
title('Separación')
xlabel('Tiempo (s)')
ylabel('Posición (m)')
grid on