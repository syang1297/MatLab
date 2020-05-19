%pendulum_main

global L M b g

%given parameters
M=1;
L=2;
b= 0.5;
g=10;

%set initial conditions and time interval
X0_1= [0.5; 0];
X0_2= [3.14; 0];
X0_3= [ 0; 5];
tspan= [0 20];

%solve differential by calling on pendumlum.m, utilizing set time interval,
%and different inital values
[tsoln, Xsoln_1] = ode23(@pendulum,tspan,X0_1); 
[tsoln, Xsoln_2] = ode23(@pendulum,tspan,X0_2);
[tsoln,Xsoln_3] = ode23(@pendulum,tspan,X0_3);
