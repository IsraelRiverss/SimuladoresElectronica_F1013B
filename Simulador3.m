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

g = 9.80665;

x(1) = 0;
y(1) = 0;
vx(1) = 0;
vy(1) = 0;
ax(1) = (Q/m)*E; % Initial acceleration in x-direction
ay(1) = -g; % Gravity acts only in y-direction

for t = 2:n
    x(t) = x(t-1) + vx(t-1)*deltax + 0.5*ax(t-1)*deltax^2;
    y(t) = y(t-1) + vy(t-1)*deltax + 0.5*ay(t-1)*deltax^2;
    vx(t) = vx(t-1) + ax(t-1)*deltax;
    vy(t) = vy(t-1) + ay(t-1)*deltax;
    ax(t) = (Q/m)*E;    
    ay(t) = -g;
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
plot(t,vy,'k')`````````
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