%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Resolución ejercicio Nro. 8b) TP#1
%%% Métodos Numéricos
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

% Inicialización de las matrices
A = [1 0 0 0;1 1 1 1;1 2 4 8;1 3 9 27];
B = [0 1 2 2]';

disp('Coeficientes del polinomio del Ejercicio 8b):')
Coef_Poli = Triang_Gauss(A,B)

X=[0 1 2 3]; % Coordenadas por donde pasa el polinomio
Y=[0 1 2 2];

x=-1:0.01:4; % Eje x
y=Coef_Poli(4)*x.^3+Coef_Poli(3)*x.^2+Coef_Poli(2)*x+Coef_Poli(1)*1;

plot(X,Y,'r*',x,y,'b');
grid
xlabel('x')
ylabel('y(x)')
title('Ejercicio 8b')


