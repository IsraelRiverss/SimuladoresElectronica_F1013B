clc %Clear console
a = 0;
b = 50;
deltax = 0.5;
n = (b-a)/deltax + 1; % Add 1 to include the initial value of x, y, vx, vy, ax, ay

% Prompt user to enter Q, E, m
Q = input('Enter charge(C): ');
E = input('Enter Electric field(N/C): ');
m = input('Enter mass(kg): ');

% Charge over mass Q/m
Qm = Q/m;
%Gravity
g = 9.80665;
% Time 
t = a:deltax:b;

% Formulas of postition, velocity and aceleration
x = (Q/(2*m))*E.*(t.^2);
y = -g.*((t.^2)/2);
vx = (Q/m)*E.*t;
vy = -g.*t;
v_mag = sqrt((vx.^2)+(vy.^2));
ax = vx./t;
ay = vy./t;
a_mag = sqrt((ax.^2)+(ay.^2));
r = 2.*((Q/(2*m))*E.*(t.^2));

% Plotting
figure
subplot(3,3,1)
plot(t,x,'k')
title('Position in x')
xlabel('Time (s)')
ylabel('Position (m)')
subplot(3,3,2)
plot(t,y,'k')
title('Position in y')
xlabel('Time (s)')
ylabel('Position (m)')
subplot(3,3,3)
plot(t,vx,'k')
title('Velocity in x')
xlabel('Time (s)')
ylabel('Velocity (m/s)')
subplot(3,3,4)
plot(t,vy,'k')
title('Velocity in y')
xlabel('Time (s)')
ylabel('Velocity (m/s)')
subplot(3,3,5)
plot(t,v_mag,'k')
title('Magnitude of velocity')
xlabel('Time (s)')
ylabel('Velocity (m/s)')
subplot(3,3,6)
plot(t,ax,'k')
title('Acceleration in x')
xlabel('Time (s)')
ylabel('Acceleration (m/s^2)')
subplot(3,3,7)
plot(t,ay,'k')
title('Acceleration in y')
xlabel('Time (s)')
ylabel('Acceleration (m/s^2)')
subplot(3,3,8)
plot(t,a_mag,'k')
title('Magnitude of acceleration')
xlabel('Time (s)')
ylabel('Acceleration (m/s^2)')
subplot(3,3,9)
plot(t,r,'k')
title('Separacion')
xlabel('Time (s)')
ylabel('Distance between charges')