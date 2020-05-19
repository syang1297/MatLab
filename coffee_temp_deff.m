T0= 112; %intial condition for T
tspan= [0 50]; %time interval over which we want to find T(t)
ode23(@coffee_temp, tspan, T0)

axis([0 50 60 120])
xlabel ('time t')
ylabel ('temperature T')