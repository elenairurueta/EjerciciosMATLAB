%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Métodos Numéricos
% Introducción a la programación
% [Y]=Ejemplo5()
% Función que demuestra la salida de un filtro pasa
% bajos RC, implementado en forma digital
% mediante el método de Transformada Bilineal
% Se ingresan los vectores del filtro B y A. Se usa
% Una frecuencia de muestreo de 1KHz, una señal
% de entrada correspondiente a la suma de dos
% senoidales de 50 y 300 Hz. Se usó una
% frecuencia de polo en el filtro de fp=60 Hz.
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [Y]=ejemplo5()

% Definición de las constantes
Fs=1000;
Fp=60;
wp=2*pi*Fp;
Ts=1/Fs;
t=0:Ts:1-Ts; % 1000 puntos
h=figure(1);
set(h,'name','Filtro Digital. Transformada Bilineal');
% Intervalos de muestreo
% Señal de entrada
x=2*sin(2*pi*50*t)+sin(2*pi*300*t);
figure(1);
subplot(221);
plot(t(1:200),x(1:200));
title('Señal de Entrada');
ylabel('x(t)');
% Factores del filtro
B=[wp*Ts wp*Ts];
A=[wp*Ts+2 wp*Ts-2];
% Pasaje del filtro Z a exp(jw).
% Evaluado en el círculo de radio 1
[H,w]=freqz(B,A,256);
% Frecuencia real visualización de la respuesta
% en frecuencia del filtro
F=Fs*w./(2*pi);
subplot(222);
semilogy(F,abs(H));
title('Respuesta del Filtro');
ylabel('H(f)');
% Filtrado de la señal de entrada
Y=filter(B,A,x);
subplot(223);
plot(t(1:200),Y(1:200));
title('Señal de Salida');
ylabel('y(t)');
