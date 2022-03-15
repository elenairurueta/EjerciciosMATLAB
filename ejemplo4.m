%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% M�todos Num�ricos
% Introducci�n a la programaci�n
% C�lculo de la respuesta de un sistemas F�sico.
% Masa-Amortiguador ante una fuerza con
% excitaci�n senoidal. Llama a la funci�n ec_dif.m
% Sintaxis:
% y=ejemplo4
% soluci�n y[n]=1/2-2.^n+1/2*3.^n;
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [t,v]=ejemplo4

to=0;
tf=10e-3;
vo=[0];
tf=tf*(1+eps);
figure(1);
[t,v]=ode23('ec_dif',[to tf],vo);
plot(t,v);
title('Respuesta del sistema Masa-Amortiguador');
ylabel('v(t)');
grid
