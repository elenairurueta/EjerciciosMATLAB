function X = Back_Subs(A,B)

if nargin<2
    disp('Debe ingresar Martiz Tiangular Superior y Vector Independiente');
    return;
end

N=size(A,1);
X=zeros(N,1);     % Vector Resultado
X(N)=B(N)/A(N,N);   % Valor inicial del resultado
for k = N-1:-1:1
    X(k)=(B(k)-A(k,k+1:N)*X(k+1:N))/A(k,k); 
end









