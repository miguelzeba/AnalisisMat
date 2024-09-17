public class GaussSeidel {
    public static void main(String[] args) {
        // Matriz A
        double[][] A = {
            {3, -0.1, -0.2},
            {0.1, 7, -0.3},
            {0.3, 0.2, 10}
        };

        // Vector b
        double[] b = {7.85, -19.3, 71.4};

        // Valores iniciales de x
        double[] x = {0, 0, 0};

        // Número de iteraciones
        int numIter = 5;

        // Gauss-Seidel
        for (int iter = 0; iter < numIter; iter++) {
            // Actualizar x1
            x[0] = (b[0] - A[0][1] * x[1] - A[0][2] * x[2]) / A[0][0];

            // Actualizar x2
            x[1] = (b[1] - A[1][0] * x[0] - A[1][2] * x[2]) / A[1][1];

            // Actualizar x3
            x[2] = (b[2] - A[2][0] * x[0] - A[2][1] * x[1]) / A[2][2];
        }

        // Mostrar la solución
        System.out.printf("x1: %.5f%n", x[0]);
        System.out.printf("x2: %.5f%n", x[1]);
        System.out.printf("x3: %.5f%n", x[2]);
    }
}
