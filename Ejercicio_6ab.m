clear
clc

% Inicialización de las matrices a
A = [2 0 0 0;-1 4 0 0;3 -2 -1 0;1 -2 6 3];
B = [6 5 4 2]';

disp('Solución del sistema del Ejercicio 6a):')
Xa = Forward_Subs(A,B)
        
% Inicialización de las matrices
A = [5 0 0 0;1 3 0 0;3 4 2 0;-1 3 -6 -4];
B = [-10 4 2 5]';

disp('Solución del sistema del Ejercicio 6b):')
Xb = Forward_Subs(A,B)
