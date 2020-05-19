global k Ta %these variables are shared
k= 0.25;
Ta= 65;
T0 = 112; %initial condition for T

tspan = [0 50]; %time interval over which we want to find T(t)
ode23(@coffee_temp, tspan, T0)