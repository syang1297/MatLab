function thetadot = pendulum (t, theta)

global M L b g

%define RHS of ODEs by manipulating the given differential equation
thetadot = [ -mg*sin(theta)/mL]; 
end
