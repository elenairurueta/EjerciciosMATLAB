%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Métodos Numéricos
% Introducción a la programación
% Cálculo de la respuesta de un sistemas Físico.
% Masa-Amortiguador ante una fuerza con
% excitación senoidal. Llama a la función ec_dif.m
% Sintaxis:
% y=ejemplo4
% solución y[n]=1/2-2.^n+1/2*3.^n;
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
