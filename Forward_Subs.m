function X = Forward_Subs(A,B)

if nargin<2
    disp('Debe ingresar Martiz Tiangular Superior y Vector Independiente');
    return;
end

N=size(A,1);
X=zeros(N,1);     % Vector Resultado
X(1)=B(1)/A(1,1);   % Valor inicial del resultado
for k = 2:N:1
    X(k)=(B(k)-A(k,1:k-1)*X(1:k-1))/A(k,k); 
end
