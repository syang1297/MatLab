%spring_main
global k m b

k = 3;
m = 1;
b = 0.5;

X0 = [1.5;0];
tspan = [0 10];
[tsoln,Xsoln] = ode23(@spring,tspan,X0);

%solns for variables 
KE= (1/2)*m*Xsoln(:,2).^2; %replace dx/dt with Xsoln since first column represents the position while the second column represents the velocity
PE= (1/2)*k*Xsoln(:,1).^2;
E= KE+PE;

%plot data
plot(tsoln, KE, 'b', tsoln, PE, 'r', tsoln, E, 'g')
legend ('KE', 'PE' , 'E')
xlabel('t')
title(' Kinetic, Potential, and Total Energy vs Time')



