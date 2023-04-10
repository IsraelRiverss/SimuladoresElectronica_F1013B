clc %Clear console
a = 0;
b = 50;
deltax = 0.5;
n = (b-a)/deltax + 1; % Add 1 to include the initial value of x, y, vx, vy, ax, ay

% Initialize variables 
x = NaN(1,n);
y = NaN(1,n); 
vx = NaN(1,n); 
vy = NaN(1,n); 
ax = NaN(1,n); 
ay = NaN(1,n); 
v_mag = NaN(1,n);
a_mag = NaN(1,n);

% Prompt user to enter Q, E, m
Q = input('Enter charge: ');
E = input('Enter Electric field: ');
m = input('Enter mass: ');

%Charge over mass Q/m
Qm = Q/m
%Gravity
g = 9.80665;

x(1) = 0;
y(1) = 0;
vx(1) = 0;
vy(1) = 0;
ax(1) = (Q/m)*E; % Initial acceleration in x-direction
ay(1) = -g; % Gravity acts only in y-direction

for i = 2:n
    x(i) = x(i-1) + vx(i-1)deltax + 0.5*ax(i-1)*deltax^2;
    y(i) = y(i-1) + vy(i-1)deltax + 0.5*ay(i-1)*deltax^2;
    vx(i) = vx(i-1) + ax(i-1)*deltax;
    vy(i) = vy(i-1) + ay(i-1)*deltax;
    ax(i) = (Q/m)*E;
    ay(i) = -g;
end

for i = 1:n
    a_mag(i) = sqrt(ax(i).^2 + ay(i).^2);
    v_mag(i) = sqrt(vx(i).^2 + vy(i).^2);
end

% Plotting
t = linspace(a,b,n); % Time vector
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