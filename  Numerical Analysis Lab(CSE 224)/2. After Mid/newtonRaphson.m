f = @(x) x^2 - 2;
f_prime = @(x) 2 * x;

tolerance = 1e-6;
maxiter = 100;
x = 1.50;

for iteration = 1:maxiter
  x_prev = x;
  x = x - f(x) / f_prime(x);
  
  if abs(f(x)) < tolerance
    break
  endif
endfor

if abs(f(x)) > tolerance
  disp('Calculation not possible with max_iterations');
else
  fprintf('Root Found is: %d\n',x);
endif

