% Define the function
f = @(x) 3*x^2 + 5*x + 10;

% Define a value of x where you want to calculate the derivative
x0 = 2; % Replace with the desired value

% Define a small value for h (step size)
h = 1e-6;

% Calculate the derivative using the numerical approximation
derivative = (f(x0 + h) - f(x0)) / h;

% Display the result
disp(['The approximate derivative dy/dx at x = ', num2str(x0), ' is: ', num2str(derivative)]);
