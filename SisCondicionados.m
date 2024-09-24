>> A=[1 2 3; 2 4.0001 6; 3 6 9.0001]
A =

   1.0000   2.0000   3.0000
   2.0000   4.0001   6.0000
   3.0000   6.0000   9.0001
>> b=[1; 2; 3]
b =

   1
   2
   3
   
%inversa de la Matriz
>> x=inv(A)*b
x =
   1
   0
   0
   
%Matriz Identidad
>> A*inv(A)
ans =

   1.0000        0        0
   0.0000   1.0000        0
   0.0000        0   1.0000
   
%Determinante
>> det(A)
ans = 1.0000e-08

%condicional
>> cond(A)
ans = 1.9600e+06

%Cambios que cambian la solucion 
>> A=[1 2 3; 2 4.0001 5.6; 3 6 9.0001]
A =
   1.0000   2.0000   3.0000
   2.0000   4.0001   5.6000
   3.0000   6.0000   9.0001
>> x=inv(A)*b
x =

   1.0000e+00
  -1.4901e-08
  -3.6380e-12
>> cond(A)
ans = 3.9140e+09

