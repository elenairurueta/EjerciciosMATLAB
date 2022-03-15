%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Métodos Numéricos
% Introducción a la programación
% Función ejemplo para la demostración
% de graficación de Señales discretas
% unidimensionales. Sintaxis:
% [y,n]=ejemplo1(N)
% Generación de la variable discreta independiente
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [y,n]=ejemplo1(N)

n=0:N-1;
% delta de Dirac desplazada
y=zeros(size(n));
y(21)=1;
stem(n,y);
title('Impulso Unitario desplazado');
pause
% Escalón Unitario desplazado
y=zeros(size(n));
y(1,11:N)=ones(1,N-11+1);
stem(n,y);
title('Escalón Unitario desplazado');
pause;
% Exponencial Decreciente
y=3*exp(-0.2*n);
stem(n,y);
title('Exponencial Decreciente');
pause
% Senoidal
y=4*sin(2*pi*3*n/(N-1)-pi/3);
stem(n,y);
title('Senoidal');
pause
% Senoidal modulada por una Exponencial.
y=3*sin(2*pi*5.*n/(N-1)).*exp(-0.1*n);
stem(n,y);
title('Senoidal modulada por una Exponencial');
% Senoidal de 50 Hz muestreada con fs=1Khz
t=0:1/1000:.999;
y=3*sin(2*pi*100.*t-pi/4);
plot(t(1:100),y(1:100));
title('Senoidal muestreada con Ts=1ms');
pause;
% Onda de Ecg
load tp3ecg.txt;
plot(tp3ecg);
title('Onda de Ecg');
