%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% M�todos Num�ricos
% Introducci�n a la programaci�n
% C�lculo de densidad de probabilidad mediante
% generaci�n deva gaussiana.
% Sintaxis:
% [y,n]=ejemplo1(N)
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function fxa=ejemplo6(n)

clc;
med=2;
sig=2;
bars=30;
va=randn(1,n)*sig+med;
h=(max(va)-min(va))/bars;
[fxa,x]=hist(va,bars);
bar(x,fxa/size(va,2));
hold on;
fx=(1/(sqrt(2*pi)*sig)*exp(-(x-med).^2/sig^2)).*h;
plot(x,fx,'r');
disp('Probabilidad de que la v.a. sea mayor que media');
prob=sum(va>med)/n
disp('Prob. de que la v.a. sea mayor que la med.+3sig');
prob=sum(va>(med+3*sig))/n
title('Densidades de probabilidad');
