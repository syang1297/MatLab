function Tdot= coffee_tempp(t,T)
global k Ta %these variables are shared
Tdot=-k*(T-Ta); %the differential equation
end

