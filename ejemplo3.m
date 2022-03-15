%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Métodos Numéricos
% Introducción a la programación
% Cálculo de la respuesta de un sistema discreto.
% se raliza por dos métodos. 1ro. mediante la
% resolución de la ecuación en diferencia y 2do.
% mediante convolución.
% Sintaxis:
% [y1,y2]=ejemplo3
% solución y[n]=1/2-2.^n+1/2*3.^n;
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [y1,y2]=ejemplo3

n=0:20;
x=ones(size(n));
B=[0 0 1];
A=[1 -5 6];
y1=filter(B,A,x);
subplot(211)
stem(n(1:10),y1(1:10));
set(gca,'xtick',[]);
title('Resolución de la Ec. en diferencias');
delta=zeros(size(n));
delta(1)=1;
h=filter(B,A,delta);
y2=conv(h,x);
subplot(212);
n=0:size(x,2)+size(h,2)-2;
stem(n(1:10),y2(1:10));
title('Convolución con la respuesta al impulso');
xlabel('n');
