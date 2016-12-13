function [eigValues, eigVectors] = eigCalc(data)
%EIGCALC Summary of this function goes here
%   Extrai os AutoValores e AutoVetores dos arquivos coletados

covMatrix = cov(data);

[eigVectors, eigValues] = eig(covMatrix);

eigValues = eig(covMatrix);

end
