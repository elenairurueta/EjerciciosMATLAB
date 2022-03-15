clear
clc

L = zeros(20,20);
B = zeros(20,1);
for i = 1:20
    B(i,1) = i;
    for j = 1:20
        if i >= j
            L(i,j) = i+j;
        else
            L(i,j) = 0;
        end
    end
end


X = Forward_Subs(L, B)
        