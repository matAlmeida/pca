function [eVal, eVec] = eigCalc(data)
%EIGCALC Summary of this function goes here
%   Extrai os AutoValores e AutoVetores dos arquivos coletados

%disp(covMatrix)
data = data';
[nAtr, nSamp] = size(data);
eVec = [];
eVal = [];
    for i = 1:nAtr
        siz_i = data(i,:)' * data(i,:);
        [eVec_i, eVal_i] = eig(siz_i);
        eVal_i = eig(siz_i);
        eVec = [eVec; eVec_i(i,:)];
        eVal = [eVal; eVal_i(i)];
    end
    
    for i = 1:nAtr
        t = eVal(i) / sum(eVal);
        disp(sum(eVal))
        p = sprintf('Representatividade only %d: %f' , i, t);
        disp(p)
    end
    
end

