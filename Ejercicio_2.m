clear
clc

U = zeros(10,10);
B = zeros(10,1);
for i = 1:10
    B(i,1) = tan(i);
    for j = 1:10
        if i <= j
            U(i,j) = cos(i*j);
        else
            U(i,j) = 0;
        end
    end
end

X = Back_Subs(U, B)
        