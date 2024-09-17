% Definir la matriz A y el vector b
A = [3, -0.1, -0.2;
     0.1, 7, -0.3;
     0.3, 0.2, 10];

b = [7.85; -19.3; 71.4];

% Valores iniciales de x (puedes ajustar según prefieras)
x = [0; 0; 0];

% Número de iteraciones
num_iter = 25;

% Método de Gauss-Seidel
for k = 1:num_iter
    x(1) = (1 / A(1, 1)) * (b(1) - A(1, 2) * x(2) - A(1, 3) * x(3));
    x(2) = (1 / A(2, 2)) * (b(2) - A(2, 1) * x(1) - A(2, 3) * x(3));
    x(3) = (1 / A(3, 3)) * (b(3) - A(3, 1) * x(1) - A(3, 2) * x(2));
end

% Mostrar la solución
x
