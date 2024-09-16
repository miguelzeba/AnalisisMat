% Definir la matriz A y el vector b
A = [0.52, 0.2, 0.25;
     0.3, 0.5, 0.2;
     0.18, 0.3, 0.55];

b = [4800; 5810; 5690];

% Valores iniciales de x (puedes ajustar según prefieras)
x = [0; 0; 0];

% Número de iteraciones
num_iter = 25;

% Método de Jacobi
for k = 1:num_iter
    x_new = zeros(3, 1);
    x_new(1) = (1 / A(1, 1)) * (b(1) - A(1, 2) * x(2) - A(1, 3) * x(3));
    x_new(2) = (1 / A(2, 2)) * (b(2) - A(2, 1) * x(1) - A(2, 3) * x(3));
    x_new(3) = (1 / A(3, 3)) * (b(3) - A(3, 1) * x(1) - A(3, 2) * x(2));
    
    x = x_new;  % Actualizar x
end

% Mostrar la solución
x
