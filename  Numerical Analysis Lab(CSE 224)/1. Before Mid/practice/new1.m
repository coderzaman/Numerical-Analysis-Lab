pkg load symbolic  % Load the symbolic package (if not already loaded)

% Define the symbolic variable
syms x;

% Define the quadratic equation

equation = 3*x^2 + 5*x + 10;

% Find the derivative
derivative = diff(equation,x)



% Display the result
%disp(['The derivative dy/dx of the quadratic equation is: ', char(derivative)]);
