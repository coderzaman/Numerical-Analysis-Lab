A = [25, 5, 1; 64, 8, 1; 144, 12, 1];  % Coefficient matrix
b = [106.8; 177.2; 279.2];  % Right-hand side vector
n = length(b);

% Forward elimination
for k = 1:n-1
    for i = k+1:n
        factor = A(i,k) / A(k,k);
        A(i,k:n) = A(i,k:n) - factor * A(k,k:n);
        b(i) = b(i) - factor * b(k);
    end
end

% Back substitution
x = zeros(n, 1);
for i = n:-1:1
    x(i) = (b(i) - A(i,i+1:n) * x(i+1:n)) / A(i,i);
end

x  % Solution vector

for i = 1 : n
  fprintf('x%d : %.2f\n', i, x(i));
endfor