function [Arithmetic,Geometric] = AHP(A)
%% Arithmetic mean method
%Normalized processing
A_stand = A ./ sum(A);
%The sum of the rows gives me a column vector
A_v = sum(A_stand,2);
%get mean
n = size(A,1);
% disp("Arithmetic mean method's result：")
Arithmetic = A_v / n;

%% Geometric mean method
%The column vectors are multiplied by rows
A_g = prod(A,2);
A_g_n = A_g .^ (1/n);
% disp("Geometric mean method's result：")
Geometric = A_g_n/sum(A_g_n);

end