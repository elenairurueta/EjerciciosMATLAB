%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Métodos Numéricos
% Introducción a la programación
% Función ejemplo para el cálculo de
% convoluciones discretas
% Sintaxis:
% y=ejemplo2
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function y=ejemplo2

figure(1);
n=0:50;
x=zeros(size(n));
x(1,1:20)=ones(1,20);
h=exp(-0.15*n);
subplot(311)
stem(n,x);
ylabel('x[n]');
set(gca,'xtick',[],'ytick',[]);
title('Convolución entre pulso y exponencial')
subplot(312)
stem(n,h);
ylabel('h[n]');
set(gca,'xtick',[],'ytick',[]);
y=conv(x,h);
n=0:size(x,2)+size(h,2)-2;
subplot(313);
stem(n(1:50),y(1:50));
ylabel('y[n]');
